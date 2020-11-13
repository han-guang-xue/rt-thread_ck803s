#include <rthw.h>
#include <rtthread.h>
#include <rtdevice.h>

#define DEBUG_LEVEL         DBG_LOG
#define DBG_SECTION_NAME    "[ATA]"
#define DEBUG_COLOR
#include <rtdbg.h>

#ifdef RT_USING_ATA
static rt_err_t rt_ata_init(rt_device_t dev)
{
    rt_err_t result = RT_EOK;
    rt_ata_device_t *ata;

    RT_ASSERT(dev != RT_NULL);

    ata = (rt_ata_device_t *)dev;
    ata->dev_info.block_size = 0;
    ata->dev_info.sector_count = 0;
    ata->dev_info.bytes_per_sector = 0;

    ata->dev_cap.sector_begin = 0;
    ata->dev_cap.sector_end   = 0;
    ata->crypto = NULL;
    ata->disk_encrypt = FALSE;
#if defined(RT_USING_POSIX)
    /* wait queue pending command */
    ata->pending_cmds = 0;
#endif

    /* init device mutex lock */
    rt_mutex_init(&ata->dlock, "ata_lock", RT_IPC_FLAG_FIFO);

    /* init ata device */
    if (ata->ops->init)
    {
        result = ata->ops->init(ata);
    }

    return result;
}

static rt_err_t __fast rt_ata_open(rt_device_t dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t __fast rt_ata_close(rt_device_t dev)
{
    return RT_EOK;
}

static rt_size_t __fast rt_ata_read(rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size)
{
    rt_size_t nsector;
    rt_ata_device_t *ata;

    RT_ASSERT(dev != RT_NULL);

    ata = (rt_ata_device_t *)dev;

    rt_mutex_take(&ata->dlock, RT_WAITING_FOREVER);

    nsector = 0;
    if (ata->ops->read)
    {
        nsector = ata->ops->read(ata, pos, buffer, size);
    }

    rt_mutex_release(&ata->dlock);

    return nsector;
}

static rt_size_t __fast rt_ata_write(rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size)
{
    rt_size_t nsector;
    rt_ata_device_t *ata;

    RT_ASSERT(dev != RT_NULL);

    ata = (rt_ata_device_t *)dev;

    rt_mutex_take(&ata->dlock, RT_WAITING_FOREVER);

    nsector = 0;
    if (ata->ops->write)
    {
        nsector = ata->ops->write(ata, pos, buffer, size);
    }

    rt_mutex_release(&ata->dlock);

    return nsector;
}

static rt_err_t  __fast rt_ata_ioctl(rt_device_t dev, int cmd, void *args)
{
    rt_err_t result = RT_EOK;
    rt_ata_device_t *ata;

    rt_uint32_t *ptbl;
    rt_size_t   size;
    static __exdata rt_uint32_t table[2];

    RT_ASSERT(dev != RT_NULL);

    ata = (rt_ata_device_t *)dev;

    rt_mutex_take(&ata->dlock, RT_WAITING_FOREVER);

    switch (cmd) {
        case RT_DEVICE_CTRL_BLK_GETGEOME:
            if (ata->ops->probe)
            {
                result = ata->ops->probe(ata, (struct rt_device_blk_geometry *)args);
            }
            break;
        case RT_DEVICE_CTRL_BLK_SYNC:
            if (ata->ops->sync)
            {
                result = ata->ops->sync(ata);
            }
            break;
        case RT_DEVICE_CTRL_BLK_ERASE:
            if (ata->ops->trim)
            {
                ptbl = (rt_uint32_t *)args;
                size = ptbl[1] + 1 - ptbl[0];

                /* adjust table data to trim style:[63:48]->length, [47:0]->lba */
                table[0] = ptbl[0];
                table[1] = (size << 16);
                result   = ata->ops->trim(ata, table, sizeof(table));
            }
            break;
        default:
            result = -RT_EINVAL;
            break;
    }

    rt_mutex_release(&ata->dlock);

    return result;
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops ata_ops =
{
    rt_ata_init,
    rt_ata_open,
    rt_ata_close,
    rt_ata_read,
    rt_ata_write,
    rt_ata_ioctl
};
#endif

rt_err_t rt_ata_register(struct rt_ata_device *ata,
                               const char     *name,
                               rt_uint32_t     flag,
                               void           *data)
{
    rt_err_t ret;
    struct rt_device *device;

    RT_ASSERT(ata != RT_NULL);

    device = &(ata->parent);
    device->type        = RT_Device_Class_Block;
    device->rx_indicate = RT_NULL;
    device->tx_complete = RT_NULL;

#ifdef RT_USING_DEVICE_OPS
    device->ops         = &ata_ops;
#else
    device->init        = rt_ata_init;
    device->open        = rt_ata_open;
    device->close       = rt_ata_close;
    device->read        = rt_ata_read;
    device->write       = rt_ata_write;
    device->control     = rt_ata_ioctl;
#endif
    device->user_data   = data;

    /* register a block device */
    ret = rt_device_register(device, name, flag);

    return ret;
}

#endif
