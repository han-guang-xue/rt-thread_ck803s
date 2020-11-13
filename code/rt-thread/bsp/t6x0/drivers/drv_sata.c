#include <rthw.h>
#include <rtdevice.h>

#ifdef RT_USING_ATA
#include <tih/scu.h>
#include <tih/ata.h>
#include <tih/ahci.h>
#include <drv_crypto.h>
#include <drv_sata.h>

#define RT_PRINT_AHCI     0
static struct rt_ata_device ata;
volatile static uint32 gtag = 0;

static uint8 key[32] = {
    0x11, 0x11, 0x11, 0x11,
    0x22, 0x22, 0x22, 0x22,
    0x33, 0x33, 0x33, 0x33,
    0x44, 0x44, 0x44, 0x44,
    0x11, 0x11, 0x11, 0x11,
    0x22, 0x22, 0x22, 0x22,
    0x33, 0x33, 0x33, 0x33,
    0x44, 0x44, 0x44, 0x44
};

symm_info_t symm_info = {
    .alg = AES,
    .mode = ECB,
    .func = ENC,
    .endian = BIG_ENDI,
    .keybits = KEY_128_BITS,
    .key = key,
    .xtskey = NULL,
    .param = NULL,
    .ctr_step = 0,
};
#if defined(RT_USING_POSIX)
static uint32 ahci_intr_mask =
                AHCI_INTR_CPD | AHCI_INTR_TFE | AHCI_INTR_HBF | AHCI_INTR_HBD |
                AHCI_INTR_IFE | AHCI_INTR_INFE | AHCI_INTR_OFE | AHCI_INTR_PRCE |
                AHCI_INTR_PCC | AHCI_INTR_UFI | AHCI_INTR_DPE  | AHCI_INTR_SDB | AHCI_INTR_D2H/*|
                AHCI_INTR_PSE | AHCI_INTR_DSE | AHCI_INTR_D2H*/;
static rt_err_t drv_ata_data_ready(struct rt_ata_device *ata, rt_uint32_t key);
static rt_err_t drv_ata_data_wait(struct rt_ata_device *ata, rt_uint32_t key);
#else
static uint32 ahci_intr_mask =
                AHCI_INTR_CPD | AHCI_INTR_TFE | AHCI_INTR_HBF | AHCI_INTR_HBD |
                AHCI_INTR_IFE | AHCI_INTR_INFE | AHCI_INTR_OFE | AHCI_INTR_PRCE |
                AHCI_INTR_PCC | AHCI_INTR_UFI /*| AHCI_INTR_DPE  | AHCI_INTR_SDB |
                AHCI_INTR_PSE | AHCI_INTR_DSE | AHCI_INTR_D2H*/;
#endif

static void ahci_ctx_init(void)
{
    /* task context init */
    btask_ctx.errors = 0;
    btask_ctx.is_queue_cmd = FALSE;
    btask_ctx.task_ctx_valid = FALSE;
    btask_ctx.is_hw_reset    = FALSE;

    ahci_clock_set(clock_freq_get(MODULE_AXI));
}

static void __fast ahci_intr_handler(uint32 status)
{
    uint32 is;
    uint32 port_id;
    ahci_port_t *port;

    is      = ahci.is;
    port_id = ahci.port.port_id;
    port    = &ahci.port;

    if (is & (1 << ahci.cctl_used_intr)) {   // whether ccc intr hanppens
        RT_DEBUG_LOG(RT_PRINT_AHCI, ("AHCI ccc intr hanppens.\n"));
    }

    if (is & 0x1) { // Only check whether port0 intr happens
        /* PxIS.PCS Port Connect status change, rx COMINIT */
        if (status & AHCI_INTR_PCC) {
            /* clear PxSERR.X, this bit reflects to PxIS.PCS */
            ahci_port_serr_clear(AHCI_EVENT_SERR_X);

            RT_DEBUG_LOG(RT_PRINT_AHCI, (" P%dIS.PCS is ON, receive COMINIT\n", port_id));
        }

        /* PxIs.PRCS PhyRdy Change */
        if (status & AHCI_INTR_PRCE) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("[intr phy change]ci = 0x%x, sact = 0x%x\n", ahci_reg_ci_get(port), ahci_reg_sact_get(port)));
            /* clear PxSERR.N, this bit reflects to PxIS.PRCS */
            ahci_port_serr_clear(AHCI_EVENT_SERR_N);
            /* Also clear PxSERR.W, COMWAKE signal detect */
            ahci_port_serr_clear(AHCI_EVENT_SERR_W);
            ahci_link_change_handler(port);
        }

        /* Device to Host Register FIS Interrupt (DHRS) */
        if (status & AHCI_INTR_D2H) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("Rx D2H FIS interrupt\n"));
        }

        /* PIO Setup FIS Interrupt */
        if (status & AHCI_INTR_PSE) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("Rx PIO setup interrupt\n"));
        }

        /* DMA Setup FIS Interrupt -- data stage start */
        if (status & AHCI_INTR_DSE) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("Rx PIO or DMA setup interrupt\n"));
        }

        /* Descriptor Processed (DPS) -- data stage end */
        if (status & AHCI_INTR_DPE) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("PRDT transfer complete\n"));
        }

        /* Unknown FIS Interrupt (UFS) */
        if (status & AHCI_INTR_UFI) {
            RT_DEBUG_LOG(1, ("Rx Unkown FIS interrupt\n"));
            /* clear PxSERR.F, this bit reflects to PxIS.UFI */
            ahci_port_serr_clear(AHCI_EVENT_SERR_F);
        }

        /* Set Device Bits Interrupt (SDBS) */
        if (status & AHCI_INTR_SDB) {
            RT_DEBUG_LOG(RT_PRINT_AHCI, ("Set Device Bits FIS interrupt\n"));
        }

        if (status & (AHCI_INTR_TFE | AHCI_INTR_HBF | AHCI_INTR_HBD | AHCI_INTR_IFE)) {

            RT_DEBUG_LOG(1, ("[intr Error happen]ci = 0x%x, sact = 0x%x\n", ahci_reg_ci_get(port), ahci_reg_sact_get(port)));
            RT_DEBUG_LOG(1, ("ccs = 0x%x, cmd = 0x%x\n", ahci_ccs_get(port), (port->cmd_slot[ahci_ccs_get(port)].h2d_fis->fea_cmd_cpm_fis >> 16) & 0xff));

            if (status & (~AHCI_INTR_TFE)) {
                RT_DEBUG_LOG(1, (" Fatal Error happen ... P%d: sts 0x%08x. \n", port->port_id, status));
            } else {
                RT_DEBUG_LOG(1, (" Task File Error happen ... P%d: sts 0x%08x. \n", port->port_id, status));
            }
            RT_DEBUG_LOG(1, ("REG SSTS=0x%08x. \n", port->ssts));
            RT_DEBUG_LOG(1, ("REG SERR=0x%08x. \n", port->serr));
            RT_DEBUG_LOG(1, ("REG STFD=0x%08x. \n", port->stfd));

        } else if (status & (AHCI_INTR_INFE | AHCI_INTR_OFE)) {
            RT_DEBUG_LOG(1, (" NON fatal error happen ... P%d: sts 0x%08x. \n", port->port_id, status));
            RT_DEBUG_LOG(1, ("REG SSTS=0x%08x. \n", port->ssts));
            RT_DEBUG_LOG(1, ("REG SERR=0x%08x. \n", port->serr));
        }
    }

#if defined(RT_USING_POSIX)
if (status & (AHCI_INTR_SDB | AHCI_INTR_D2H | AHCI_INTR_DPE)) {
        uint32 ci, sact, slot_finished, slot_count;

        ci = ahci_reg_ci_get(port);
        sact = ahci_reg_sact_get(port);
        ci |= sact;
        while((gtag >= 1) && (gtag != ci)) {
            slot_count = 0;
            slot_finished = gtag & (~ci);

            gtag = gtag & ci;
            while (slot_finished > 0) {
                slot_count = slot_count + (slot_finished & 0x1);
                slot_finished = slot_finished >> 1;
            }

            if (slot_count > 1) {
                RT_DEBUG_LOG(1, ("[sata intr]slot_count = %d \n", slot_count));
            }

            while ((slot_count--) > 0) {
                drv_ata_data_ready(&ata, ci);
            }
        }
    }
#endif
}

static void __fast ahci_isr(void)
{
    uint32 status;

    status = ahci_intr_status();
    ahci_intr_handler(status);
    ahci_intr_clear(status); // clear intr status

    /* flush write data to reg */
    ahci_reg_is_flush();

    rt_hw_interrupt_clear(AHCI_IRQ_NUM);
}

static void drv_disk_crypto_init(struct rt_ata_device *device)
{
    /* Find and check whether disk support encryption */
    // TODO

    /* init crypto structure */
    if (device->disk_encrypt == TRUE) {
        device->crypto = &symm_info;
    }
}

static void __fast drv_disk_crypto_lock()
{
#ifdef RT_USING_CRYPTO
    extern rt_crypto_device_t crypto_dev;
    rt_mutex_take(&crypto_dev.lock_cipher, RT_WAITING_FOREVER);
#endif

}

static void __fast drv_disk_crypto_unlock()
{
#ifdef RT_USING_CRYPTO
    extern rt_crypto_device_t crypto_dev;
    rt_mutex_release(&crypto_dev.lock_cipher);
#endif
}

#if defined(RT_USING_POSIX)
static rt_err_t __fast drv_ata_data_ready(struct rt_ata_device *ata, rt_uint32_t key)
{
    register rt_ubase_t temp;

    /* disable interrupt */
    temp = rt_hw_interrupt_disable();
    ata->pending_cmds--;
    /* enable interrupt */
    rt_hw_interrupt_enable(temp);

    rt_wqueue_wakeup(&(ata->parent.wait_queue), (void*)key);

    return RT_EOK;
}

static rt_err_t __fast drv_ata_data_wait(struct rt_ata_device *ata, rt_uint32_t key)
{
    rt_wqueue_wait(&(ata->parent.wait_queue), 0, 1000);

    return RT_EOK;
}

static int __fast drv_ata_cmd_pending_check(struct rt_ata_device *device, rt_uint32_t tag)
{
    int rc;
    ahci_port_t *port;
    uint32 loop_count;
    register rt_ubase_t temp;

    rc = AHCI_OK;
    loop_count = 0;
    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    /* disable interrupt */
    temp = rt_hw_interrupt_disable();
    gtag = gtag | (1 << tag);
    device->pending_cmds++;
    /* enable interrupt */
    rt_hw_interrupt_enable(temp);

loop:
    drv_ata_data_wait(device, 0);
    if (device->pending_cmds > 0) {
        uint32 ci, sact;

        ci = ahci_reg_ci_get(port);
        sact = ahci_reg_sact_get(port);
        ci |= sact;
        if ((ci & (1 << tag)) > 0) {
            if (loop_count++ < 10) {
                goto loop;
            } else {
                rc = AHCI_ERR_FATAL_ERROR;
                device->pending_cmds = 0;
            }
        } else {
            /* sata intr is lost. */
            /* disable interrupt */
            temp = rt_hw_interrupt_disable();
            device->pending_cmds--;
            /* enable interrupt */
            rt_hw_interrupt_enable(temp);
        }
    }
    return rc;
}
#endif

static rt_err_t drv_ata_init(struct rt_ata_device *device)
{
    uint32 host_gen;
    if (device == RT_NULL) {
        return -RT_ERROR;
    }

    ahci_ctx_init();
    ahci_wait_timeout_set(60000000);//minimum 2000000 (1s), 60000000 is 30s

    host_gen = SATA_HOST_SPEED;
    ahci_speed_set(host_gen);

    if (ahci_hw_init(1, AHCI_RAM_SIZE_4K)) {
        RT_DEBUG_LOG(1, ("AHCI hw init fail.\n"));
        return -RT_ERROR;
    }

    rt_hw_interrupt_mask(AHCI_IRQ_NUM);
    ahci_intr_enable(ahci_intr_mask);
    rt_hw_interrupt_install(AHCI_IRQ_NUM, (rt_isr_handler_t)ahci_isr, 0, "ata");
    rt_hw_interrupt_umask(AHCI_IRQ_NUM);

    drv_disk_crypto_init(device);

    return RT_EOK;
}

static void drv_ata_reset(uint32 op)
{
    ahci_port_t *port = &ahci_hba_get()->port;

    /* Make sure that crypto data phase finished by pad or discard mode */
    uint32 busy = crypto_is_busy();
    if (busy) {
        if (op == DRV_SATA_OP_READ) { // read command
            crypto_data_pad();
        } else if (op == DRV_SATA_OP_WRITE) { // write command
            crypto_data_discard();
        }
        while (busy) {
            busy = crypto_is_busy();
        }
    }

    /**
     * if write cmd sent, host receive dma-setup and dma-active, but data not come in, if need ahci reset,
     * the following modules is need reset
     * ahci(sata host) reset, axi reset, h2x reset, crypto reset, ahb2axi
     */
    uint32 reset_mask[6] = {MODULE_SATA_HOST, MODULE_AXI, MODULE_H2X,
                           MODULE_CRYPTO, MODULE_H2X_RSD};

    multi_module_reset(reset_mask, 5);
    crypto_reset();

    drv_ata_init(&ata);

    for (uint32 i = 0; i < port->use_max_cmd_slots; i++) {
        port->cmd_slot[i].occupied = FALSE;
        port->cmd_slot[i].private  = NULL;
    }
}

static rt_err_t drv_ata_probe(struct rt_ata_device *device, struct rt_device_blk_geometry *dev_info)
{
    uint16 tag;
    ahci_err_code_t rc;
    ahci_port_t *port;

    if (device == RT_NULL) {
        return -RT_ERROR;
    }

    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    if (ahci_hba_reset(port->ahci, 1)) {
        return -RT_ERROR;
    }

    /* get identify info */
    rc = ahci_identify_read(port, &tag); /* TODO SRAM addr problem???  */
    if (rc != AHCI_OK) {
        ahci_error_handler(rc);
        return -RT_ERROR;
    }

    /* NCQ support check */
    if (port->ncq_support) {
        btask_ctx.is_queue_cmd = TRUE;
    }

    /* Set device block info */
    dev_info->block_size = AHCI_SECTOR_SIZE;
    dev_info->bytes_per_sector = AHCI_SECTOR_SIZE;
    dev_info->sector_count = port->total_sectors;

    /* set transfer mode */
    rc = ahci_xfer_mode_set(port, SATA_PIO_MODE_SET, port->best_xfer_mode[SATA_PIO_MODE_SET], &tag);
    if (rc != AHCI_OK) {
        ahci_error_handler(rc);
    }

    rc = ahci_xfer_mode_set(port, SATA_UDMA_MODE_SET, port->best_xfer_mode[SATA_UDMA_MODE_SET],
                            &tag);
    if (rc != AHCI_OK) {
        ahci_error_handler(rc);
    }

    return rc;
}

static rt_size_t __fast drv_ata_read(struct rt_ata_device *device, rt_off_t pos, void *buffer, rt_size_t size)
{
    uint16 tag;
    uint32 ci;
    uint64 nbytes;
    uint8 *ahci_addr;
    ahci_cmd_t *cmd;
    ahci_err_code_t rc;
    ahci_port_t *port;

    if (device == RT_NULL) {
        return 0;
    }

    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    /* For not queue cmd, must send cmd after cmd slot empty */
    if (!ahci_cmd_slot_is_empty(port)) {
        RT_DEBUG_LOG(1, ("drv_ata_read, cmd_slot is not empty!!!\n"));
        return 0;
    }

    ahci_addr = (uint8 *)buffer;
    nbytes = size << AHCI_SECTOR_SHIFT;

    /* init disk encryption */
    if (device->disk_encrypt == TRUE) {
        /* buffer address is not 4-byte alignment, warn it */
        if ((uint32)buffer & 0x3) {
            RT_DEBUG_LOG(1, ("[ERROR]:read buffer address for crypto is not 4-byte alignment.\n"));
            return 0;
        }

        drv_disk_crypto_lock();
        /* decrypt data */
        if (device->crypto) {
            ((symm_info_t *)device->crypto)->func = DEC;
        }

        /* only addr belonged to AXI and cyrpto is not null need to cfg data path */
        if (crypto_bridge_is_required((uint32)buffer, device->crypto)) {
            /* bridge norm mode */
            crypto_bridge_enable(device->crypto, (uint32)buffer, ADDR_INC, nbytes, DIR_OUT);
            ahci_addr = (uint8 *)crypto_frontend_port_addr();
        }
    }

    /* fis fill */
    rc = ahci_sector_read(port, (uint64)pos, ahci_addr, nbytes, AHCI_RW_TYPE_SECTOR, &tag);
    if (rc) {
        cmd = &(port->cmd_slot[tag]);
        ahci_cmd_slot_free(cmd);

        if (device->disk_encrypt == TRUE) {
            drv_disk_crypto_unlock();
        }
        return 0;
    }

    /* command send and wait finishing or not */
    ci = (1 << tag);

#if defined(RT_USING_POSIX)
    ahci_cmd_issue(port, &ci, 0); // not wait
    rc = drv_ata_cmd_pending_check(device, tag);
#else
    rc = ahci_cmd_issue(port, &ci, 1);
#endif

    cmd = &(port->cmd_slot[tag]);
    ahci_cmd_slot_free(cmd);

    if (device->disk_encrypt == TRUE) {
        drv_disk_crypto_unlock();
    }

    if (rc) {
        if (device->disk_encrypt == TRUE) {
            /* handle crypto error */
            drv_ata_reset(DRV_SATA_OP_READ);
        } else {
            ahci_error_handler(rc);
        }

        return 0;
    }

    return size;
}

static rt_size_t __fast drv_ata_write(struct rt_ata_device *device, rt_off_t pos, const void *buffer, rt_size_t size)
{
    uint16 tag;
    uint32 ci;
    uint64 nbytes;
    uint8 *ahci_addr;
    ahci_cmd_t *cmd;
    ahci_err_code_t rc;
    ahci_port_t *port;

    if (device == RT_NULL) {
        return 0;
    }

    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    if (!ahci_cmd_slot_is_empty(port)) {
        RT_DEBUG_LOG(1, ("drv_ata_write, cmd_slot is not empty!!!\n"));
        return 0;
    }

    ahci_addr = (uint8 *)buffer;
    nbytes = size << AHCI_SECTOR_SHIFT;

    /* init disk encryption */
    if (device->disk_encrypt == TRUE) {
        /* buffer address is not 4-byte alignment, warn it */
        if ((uint32)buffer & 0x3) {
            RT_DEBUG_LOG(1, ("[ERROR]:write buffer address for crypto is not 4-byte alignment.\n"));
            return 0;
        }

        drv_disk_crypto_lock();
        /* encrypt data */
        if (device->crypto) {
            ((symm_info_t *)device->crypto)->func = ENC;
        }

        /* only addr belonged to AXI and cyrpto is not null need to cfg data path */
        if (crypto_bridge_is_required((uint32)buffer, device->crypto)) {
            /* bridge norm mode */
            crypto_bridge_enable(device->crypto, (uint32)buffer, ADDR_INC, nbytes, DIR_IN);
            ahci_addr = (uint8 *)crypto_frontend_port_addr();
        }
    }

    /* fis fill */
    rc = ahci_sector_write(port, (uint64)pos, ahci_addr, nbytes, AHCI_RW_TYPE_SECTOR, &tag);
    if (rc) {
        cmd = &(port->cmd_slot[tag]);
        ahci_cmd_slot_free(cmd);
        if (device->disk_encrypt == TRUE) {
            drv_disk_crypto_unlock();
        }
        return 0;
    }

    /* command send and wait finishing */
    ci = (1 << tag);

#if defined(RT_USING_POSIX)
    ahci_cmd_issue(port, &ci, 0); // not wait
    rc = drv_ata_cmd_pending_check(device, tag);
#else
    rc = ahci_cmd_issue(port, &ci, 1); // wait
#endif

    cmd = &(port->cmd_slot[tag]);
    ahci_cmd_slot_free(cmd);

    if (device->disk_encrypt == TRUE) {
        drv_disk_crypto_unlock();
    }

    if (rc) {
        if (device->disk_encrypt == TRUE) {
            /* handle crypto error */
            drv_ata_reset(DRV_SATA_OP_WRITE);
        } else {
            ahci_error_handler(rc);
        }

        return 0;
    }

    return size;
}

static rt_err_t __fast drv_ata_ioctl(struct rt_ata_device *device, int cmd, void *args)
{
    rt_err_t result = RT_EOK;

    if (device == RT_NULL) {
        result = -RT_ERROR;
        return result;
    }

    switch (cmd) {
        case RT_DEVICE_CTRL_SET_INT:
            ahci_intr_enable(ahci_intr_mask);
            rt_hw_interrupt_umask(AHCI_IRQ_NUM);
            break;
        case RT_DEVICE_CTRL_CLR_INT:
            ahci_intr_disable(ahci_intr_mask);
            rt_hw_interrupt_mask(AHCI_IRQ_NUM);
            break;
        default:
            RT_DEBUG_LOG(1, ("[ata_ioctl] not support cmd type.\n"));
            result = -RT_EINVAL;
            break;
    }

    return result;
}

static rt_err_t __fast drv_ata_sync(struct rt_ata_device* device)
{
    uint16 tag;
    ahci_err_code_t rc;
    ahci_port_t *port;

    if (device == RT_NULL) {
        return -RT_ERROR;
    }

    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    /* For not queue cmd, must send cmd after cmd slot empty */
    if (!ahci_cmd_slot_is_empty(port)) {
        RT_DEBUG_LOG(1, ("drv_ata_sync, cmd_slot is not empty!!!\n"));
        return -RT_ERROR;
    }

    /* NON-DATA cmd */
    rc = ahci_cache_flush(port, &tag);

    if (rc) {
        ahci_error_handler(rc);
        return -RT_ERROR;
    }
    return RT_EOK;
}

static rt_err_t __fast drv_ata_trim(struct rt_ata_device* device, void *buffer, rt_size_t size)
{
    uint16 tag;
    ahci_err_code_t rc;
    ahci_port_t *port;

    if (device == RT_NULL) {
        return -RT_ERROR;
    }

    ahci_hba_t *hba = (ahci_hba_t *)device->parent.user_data;
    port = &hba->port;

    /* For not queue cmd, must send cmd after cmd slot empty */
    if (!ahci_cmd_slot_is_empty(port)) {
        RT_DEBUG_LOG(1, ("drv_ata_trim, cmd_slot is not empty!!!\n"));
        return -RT_ERROR;
    }

    /* fis fill and wait finishing */
    rc = ahci_data_set_trim(port, buffer, size, &tag);

    if (rc != AHCI_OK) {
        ahci_error_handler(rc);
        return -RT_ERROR;
    }
    return RT_EOK;
}

const static struct rt_ata_ops drv_ata_ops =
{
    drv_ata_init,
    drv_ata_probe,
    drv_ata_read,
    drv_ata_write,
    drv_ata_ioctl,
    drv_ata_sync,
    drv_ata_trim
};

static int drv_ata_register()
{
    ahci_hba_t *hba;

    hba = ahci_hba_get();
    ata.ops = &drv_ata_ops;

    rt_ata_register(&ata, "ata", RT_DEVICE_FLAG_RDWR, hba);

    return RT_EOK;
}

INIT_BOARD_EXPORT(drv_ata_register);
#endif


