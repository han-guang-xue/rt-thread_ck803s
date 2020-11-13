#ifndef __AHCI_CMD_H__
#define __HCI_CMD_H__

#include <ahci.h>

/* Most mandatory and optional ATA commands (from ATA-3) */
/* ATA set features 0xEF sub-command */
#define SATA_CMD_ENABLE_WRITE_CACHE                 0x02
#define SATA_CMD_SET_TRANSFER_MODE                  0x03
#define SATA_CMD_DISABLE_REVERT_TO_POWERON_DEFAULT  0x66
#define SATA_CMD_ENABLE_REVERT_TO_POWERON_DEFAULT   0xCC
#define SATA_CMD_DISABLE_WRITE_CACHE                0x82
#define SATA_CMD_ENABLE_SATA_FEATURE                0x10
#define SATA_CMD_DISABLE_SATA_FEATURE               0x90
#define SATA_CMD_ENABLE_PUIS                        0x06
#define SATA_CMD_PUIS_SET_DEVICE_SPIN_UP            0x07
#define SATA_CMD_DISABLE_PUIS                       0x86
/* ATA ncq queue management 0x63 sub-command */
#define SATA_SUBCMD_ABORT_QUEUE                     0x00
#define SATA_SUBCMD_DEADLINE_HANDLING               0x01

/* fake command code for AHCI Soft Reset */
#define SATA_CMD_SRST                               256

/* signature for ATA/ATAPI */
#define SATA_ATA_SIG            0x00000101 // for ATA devices
#define SATA_ATAPI_SIG          0xEB140101 // for ATAPI devicess

/* Identify Device: general config bits  - word 0 */
#define SATA_ATA_TYPE_MASK      0x8001  // ATA Device type mask
#define SATA_ATA_TYPE           0x0000  // ATA device

#define SATA_ID_SERIAL_OFFSET   10      // Serial number
#define SATA_ID_SERIAL_SIZE     20      // Serial number use 20 bytes
#define SATA_ID_MODEL_OFFSET    27      // Model number
#define SATA_ID_MODEL_SIZE      40      // Model number use 40 bytes

/* Identify Device: common capability bits - word 47 */
#define SATA_MAX_MULTI          0x00FF

/* Identify Device: common capability bits - word 49 */
#define SATA_DMA_SUPPORT        0x0100
#define SATA_LBA_SUPPORT        0x0200
#define SATA_IORDY_DISABLE      0x0400
#define SATA_IORDY_SUPPORT      0x0800
#define SATA_STANDBY_TIMER      0x2000

/* Identify Device: validinfo (word 53) */
#define SATA_VALIDINFO_70_64    0x0002  // word 64-70 supported fields valid
#define SATA_VALIDINFO_88       0x0004  // word 88 supported fields valid

/* Identify Device: Multiword DMA mode - word 63 */
#define SATA_MDMA_SEL_MASK      0x0700  // Multiword DMA selected
#define SATA_MDMA_2_SEL         0x0400  // Multiword DMA mode 2 selected
#define SATA_MDMA_1_SEL         0x0200  // Multiword DMA mode 1 selected
#define SATA_MDMA_0_SEL         0x0100  // Multiword DMA mode 0 selected
#define SATA_MDMA_2_SUP         0x0004  // Multiword DMA mode 2 supported
#define SATA_MDMA_1_SUP         0x0002  // Multiword DMA mode 1 supported
#define SATA_MDMA_0_SUP         0x0001  // Multiword DMA mode 0 supported

/* Identify Device: PIO modes supported - word 64 */
#define SATA_SUPPORT_PIO_MODE   0x00FF

/* Identify Device: Additional Supported - word 69, see word53 */
#define SATA_TRIM_LBA_RANGE_SUP 0x4000  // trimmed LBA range(s) supported
#define SATA_TRIM_LBA_RET_ZERO  0x0020  // trimmed LBA returning zero data supported

/* Identify Device: Queue depth */
#define SATA_QUEUE_DEPTH_MASK   0x001F  // =Maximum queue depth

/* Identify Device: SATA additonal capabilites - word 76 */
#define SATA_RD_LOG_DMA_EXT     0x8000  // READ LOG DMA EXT supported
#define SATA_DEV_P_2_S          0x4000  // Device Automatic Partial to Slumber supported
#define SATA_HOST_P_2_S         0x2000  // Host Automatic Partial to Slumber supported
#define SATA_NCQ_Q_PRIO_INFO    0x1000  // NCQ priority information supported
#define SATA_UNLOAD_NCQ         0x0800  // Unload while NCQ commands are outstanding supported
#define SATA_RX_HOST_PM         0x0200  // receipt of host init power management supported
#define SATA_SUPPORT_NCQ        0x0100  // NCQ feature set supported
#define SATA_SUPPORT_GEN3       0x0008  // SATA Gen3 Signaling Speed (6.0Gb/s) supported
#define SATA_SUPPORT_GEN2       0x0004  // SATA Gen2 Signaling Speed (3.0Gb/s) supported
#define SATA_SUPPORT_GEN1       0x0002  // SATA Gen1 Signaling Speed (1.5Gb/s) supported

/* Identify Device: SATA additonal capabilites - word 77 */
#define SATA_NCQ_QUEUE_MGMT     0x0020
#define SATA_NCQ_STREAMING      0x0010

/* Identify Device: SATA additonal capabilites - word 78 */
#define SATA_SUP_SW_PRESERVE    0x0040  // Software Settings Preservation supported
#define SATA_DEV_INITIATE_PM    0x0008  // initiating power management supported
#define SATA_DMA_AUTO_ACTIVATE  0x0004  // DMA Setup auto-activation supported

/* Identify Device: majorversion (word 80) */
#define SATA_MAJVER_8           0x0100  // ATA8-ACS version supported
#define SATA_MAJVER_7           0x0080  // ATA/ATAPI-7 version supported
#define SATA_MAJVER_6           0x0040  // ATA/ATAPI-6 version supported
#define SATA_MAJVER_5           0x0020  // ATA/ATAPI-5 version supported
#define SATA_MAJVER_4           0x0010  // ATA/ATAPI-4 version supported

/* Identify Device: command set supported/enabled bits - words 83 and 86 */
#define SATA_LBA48_ADDR_EXT_SUP 0x0400  // 48 bit address feature support
#define SATA_APM_FEAT_SET       0x0008  // APM feature set support/enable
#define SATA_PUIS_FEAT_SET      0x0020  // PUIS feature set support/enable
#define SATA_SET_FEAT_SPINUP    0x0040  // SET FEATURES subcmd need spin-up after power-up
#define SATA_RW_DMA_QUEUED_CMD  0x0002  // R/W DMA Queued supported
#define SATA_DWNLOAD_MCODE_CMD  0x0001  // Download Microcode CMD supp/enbld

/* Identify Device: command set supported/enabled bits - words 82 and 85 */
#define SATA_SMART_SUPPORTED    0x0001  // SMART feature set is supported
#define SATA_SECUR_FEAT_SET_SUP 0x0002  // Security feature set supported
#define SATA_WRITE_CACHE        0x0020  // Write Cache supported/enabled
#define SATA_LOOK_AHEAD         0x0040  // Look Ahead supported/enabled
#define SATA_DEVICE_RESET_CMD   0x0200  // Device Reset CMD supported/enbld
#define SATA_READ_BUFFER_CMD    0x2000  // Read Buffer CMD supported/enbld
#define SATA_WRITE_BUFFER_CMD   0x1000  // Write Buffer CMD supported/enbld
#define SATA_SMART_ENABLED      0x0001  // SMART feature set is enabled
#define SATA_SECUR_ENABLED      0x0002  // Security feature set is enabled

/* Identify Device: command set supported/enabled bits - words 84 & 87 */
#define SATA_SMART_SELF_TEST_SUPPORTED          0x0002  // SMART self-test supported */

/* Identify Device:Logical sector size - word 117-118 */
#define SATA_SECTOR_SIZE_OFFSET                 117

/* Identify Device: command set supported/enabled bits - word 206 */
/* All are SCT Command Transport support */
#define SATA_SCT_SATA_CMD_TRANS_SUP             0x0001  // anything
#define SATA_SCT_SATA_CMD_TRANS_LNG_SECT_SUP    0x0002  // Long Sector Access
#define SATA_SCT_SATA_CMD_TRANS_WR_SAME_SUP     0x0004  // Write Same
#define SATA_SCT_SATA_CMD_TRANS_ERR_RCOV_SUP    0x0008  // Error Recovery Control
#define SATA_SCT_SATA_CMD_TRANS_FEAT_CTL_SUP    0x0010  // Features Control
#define SATA_SCT_SATA_CMD_TRANS_DATA_TBL_SUP    0x0020  // Data Tables supported

#define SATA_DISK_SECTOR_SIZE                   512     // HD physical sector size

/* Status bits from AT_STATUS register */
#define SATA_STATUS_BSY                         0x80    // controller busy
#define SATA_STATUS_DRDY                        0x40    // drive ready
#define SATA_STATUS_DF                          0x20    // device fault
#define SATA_STATUS_DSC                         0x10    // seek operation complete
#define SATA_STATUS_DRQ                         0x08    // data request
#define SATA_STATUS_CORR                        0x04    // obsolete
#define SATA_STATUS_IDX                         0x02    // obsolete
#define SATA_STATUS_ERR                         0x01    // error flag

#define SATA_DEV_BSY_SET(x)     (read32(AHCI_REG_PORT_TFD(x)) & SATA_STATUS_BSY)
#define SATA_DEV_DRY_SET(x)     (read32(AHCI_REG_PORT_TFD(x)) & SATA_STATUS_DRDY)
#define SATA_DEV_DRQ_SET(x)     (read32(AHCI_REG_PORT_TFD(x)) & SATA_STATUS_DRQ)

/* normal output OK */
#define SATA_DEV_STS_OK(x)      (read32(AHCI_REG_PORT_TFD(x)) & (SATA_STATUS_DRDY | SATA_STATUS_DSC))
/* error happen ERROR */
#define SATA_DEV_STS_ERR(x)     (read32(AHCI_REG_PORT_TFD(x)) & SATA_STATUS_ERR)

/* variables declearation */
extern uint32 free_slot_test;

/* functions */
ahci_err_code_t ahci_fis_rx(ahci_port_t *port);

ahci_err_code_t ahci_non_data_lba(ahci_port_t *port, ahci_cmd_t *cmd);
ahci_err_code_t ahci_inout_data_lba(ahci_port_t *port, ahci_cmd_t *cmd);
ahci_err_code_t ahci_cmd_intr_enable(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_issue(ahci_port_t *port, uint32 *ci_bits, uint32 is_wait);
ahci_err_code_t ahci_cmd_identify(ahci_port_t *port, uint8 *id_buf, uint16 *tag);
ahci_err_code_t ahci_cmd_sw_reset(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_exec_diag(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_set_features(ahci_port_t *port, uint8 feature, uint32 sector_cnt, uint16 *tag);
ahci_err_code_t ahci_cmd_flush_cache(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_flush_cache_ext(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_read_log_ext(ahci_port_t *port, uint8 *log_buf, uint32 sector_cnt, uint32 page, uint16 *tag);
ahci_err_code_t ahci_cmd_read_sector_lba28(ahci_port_t *port, uint32 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_read_sector_lba48(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_write_sector_lba28(ahci_port_t *port, uint32 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_write_sector_lba48(ahci_port_t * port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_ncq_queue_mgmt(ahci_port_t * port, uint8 sub_cmd, uint8 sub_cmd_spec, uint8 ttag, uint16 *tag);
ahci_err_code_t ahci_cmd_read_ncq(ahci_port_t * port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_write_ncq(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_set_multiple_mode(ahci_port_t * port, uint32 sector_cnt, uint16 *tag);
ahci_err_code_t ahci_cmd_sleep_standby(ahci_port_t *port, uint32 sleep, uint32 period, uint16 *tag);
ahci_err_code_t ahci_cmd_read_multi_lba28(ahci_port_t *port, uint32 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_read_multi_lba48(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_write_multi_lba28(ahci_port_t *port, uint32 start, uint8 *buf, uint32 nbytes, uint16 *tag, ahci_rw_type_t type);
ahci_err_code_t ahci_cmd_write_multi_lba48(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_data_set_management_trim(ahci_port_t *port, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_cmd_smart(ahci_port_t *port, fis_h2d_t *h2d, uint8 *smart_buf, uint16 *tag);
ahci_err_code_t ahci_cmd_read_max_address_ext(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_read_max_address(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_cmd_read_verify_sectors(ahci_port_t *port, uint16 sector_cnt, uint32 lba, uint16 *tag);
ahci_err_code_t ahci_cmd_read_verify_sectors_ext(ahci_port_t *port, uint16 sector_cnt, uint64 lba, uint16 *tag);
ahci_err_code_t ahci_cmd_security(ahci_port_t *port, fis_h2d_t *h2d, uint8 *buf, uint16 *tag);

#endif /* __AHCI_CMD_H__ */
