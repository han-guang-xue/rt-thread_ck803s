#ifndef __AHCI_H__
#define __AHCI_H__

#include <sysdep.h>
#include <ata.h>

/* ahci speed */
#define SATA_HOST_SPEED      SPEED_GEN3

#define AHCI_RAM_SIZE_4K     0
#define AHCI_RAM_SIZE_6K     1

/* ahci IRQ num */
#define AHCI_IRQ_NUM         2

/* ahci intr event list */
#define AHCI_INTR_D2H        0x00000001
#define AHCI_INTR_PSE        0x00000002
#define AHCI_INTR_DSE        0x00000004
#define AHCI_INTR_SDB        0x00000008
#define AHCI_INTR_UFI        0x00000010
#define AHCI_INTR_DPE        0x00000020
#define AHCI_INTR_PCC        0x00000040
#define AHCI_INTR_PRCE       0x00400000
#define AHCI_INTR_IPME       0x00800000
#define AHCI_INTR_OFE        0x01000000
#define AHCI_INTR_INFE       0x04000000
#define AHCI_INTR_IFE        0x08000000
#define AHCI_INTR_HBD        0x10000000
#define AHCI_INTR_HBF        0x20000000
#define AHCI_INTR_TFE        0x40000000
#define AHCI_INTR_CPD        0x80000000
/* ahci err  list */
#define AHCI_ERR_P           0x00000400
#define AHCI_ERR_E           0x00000800
#define AHCI_ERR_C           0x00200000
#define AHCI_ERR_H           0x00400000
#define AHCI_ERR_S           0x00800000

#define AHCI_SECTOR_SHIFT    9                           // 2^9 = 512
#define AHCI_SECTOR_SIZE     (1 << AHCI_SECTOR_SHIFT)    // sector size = 512Bytes
#define AHCI_8K_SHIFT        13
#define AHCI_8K_NBYTES       (1 << AHCI_8K_SHIFT)
#define AHCI_128K_SHIFT      17
#define AHCI_128K_NBYTES     (1 << AHCI_128K_SHIFT)

/* Portx Serial ATA Error Register field */
#define AHCI_EVENT_SERR_X    (1 << 26)   // Diagnostics.Exchanged
#define AHCI_EVENT_SERR_F    (1 << 25)   // Diagnostics.Unknown FIS Type (F)
#define AHCI_EVENT_SERR_S    (1 << 23)
#define AHCI_EVENT_SERR_N    (1 << 16)   // Diagnostics.PHY Ready Change
#define AHCI_EVENT_SERR_W    (1 << 18)   // Diagnostics.COMWAKE
/* struct/enum */
typedef enum ATA_OP {
    ATA_READ = 3,
    ATA_WRITE,
    ATA_IOCTL  //todo
} ata_op_t;

/* for sata 3.0 */
typedef enum ncq_prio {
    NCQ_PRIO_NORM,          // Normal priority
    NCQ_PRIO_ISO,           // Isochronous deadline-dependent priority
    NCQ_PRIO_HIGH,          // High priority
    NCQ_PRIO_RESERVE        // Reserved
} ncq_prio_t;

typedef enum ncq_abort {
    NCQ_ABORT_ALL,
    NCQ_ABORT_STREAM,
    NCQ_ABORT_NON_STREAM,
    NCQ_ABORT_SELECTED
} ncq_abort_t;

typedef enum ncq_deadline {
    NCQ_DEADLINE_WRNC_NONE = 0,
    NCQ_DEADLINE_WNC = 1,    // Write Data Not Continue
    NCQ_DEADLINE_RNC = 2     // Read Data Not Continue
} ncq_deadline_t;

typedef enum rw_type {
    AHCI_RW_TYPE_SECTOR = 0,
    AHCI_RW_TYPE_MULTI,
    AHCI_RW_TYPE_NCQ
} ahci_rw_type_t;

typedef enum sata_addr_mode {
    SATA_ADDR_MODE_CHS = 0,
    SATA_ADDR_MODE_LBA28,
    SATA_ADDR_MODE_LBA48,
    SATA_ADDR_MODE_ALL
} sata_addr_mode_t;

typedef enum ahci_xfer_mode {
    SATA_PIO_MODE_SET,       // mode =  0x08
    SATA_MDMA_MODE_SET,      // mode =  0x20
    SATA_UDMA_MODE_SET       // mode =  0x40
} ahci_xfer_mode_t;

typedef enum ahci_device_type {
    DEVICE_TYPE_ATA = 0,
    DEVICE_TYPE_ATAPI,
    DEVICE_TYPE_UNKNOWN = 0xEE
} ahci_device_type_t;

typedef enum ahci_phy_mode {
    PHY_MODE_LISTEN = 0,
    PHY_MODE_SPINUP,
    PHY_MODE_OFFLINE,
    PHY_MODE_NORMAL
} ahci_phy_mode_t;

typedef enum ahci_port_state {
    AHCI_PORT_ACTIVE = 1,
    AHCI_PORT_PARTIAL = 2,
    AHCI_PORT_SLUMBER = 6
} ahci_port_state_t;

typedef enum ahci_xfer_prot {
    SATA_PROT_UNKNOWN,       // unknown/invalid
    SATA_PROT_NIEN,          // device intr enable = 0 when set h2d[device[1] = 0, c=0],
    SATA_PROT_SWRESET,       // Software Reset protocol
    SATA_PROT_NONDATA,
    SATA_PROT_PIO_IN,
    SATA_PROT_PIO_OUT,
    SATA_PROT_DMA_IN,        // there is only DMA protocol in Spec.
    SATA_PROT_DMA_OUT,       // for convinience coding, separate it into IN/OUT
    SATA_PROT_PACKET_ATAPI,  // packet command, for ATAPI
    SATA_PROT_NCQ,           // READ/WRITE FPDMA QUEUED command
    SATA_PROT_NCQ_NONDATA    // NO DATA  FPDMA QUEUED command
} ahci_xfer_prot_t;

typedef enum ahci_err_code {
    AHCI_OK = 0,
    AHCI_FAIL = -1,
    AHCI_CMD_QUEUED = -2,
    AHCI_CMD_NOT_DONE_YET = -3,
    AHCI_ERR_PORT_NOT_FOUND = -4,
    AHCI_ERR_NO_CMD_SLOT = -5,
    AHCI_ERR_NO_RX_FIS_INTR = -6,
    AHCI_ERR_CMD_BIT_NOT_CLEAR = -7,
    AHCI_ERR_NOT_NCQ_CMD = -8,
    AHCI_ERR_TFD_STS = -9,
    AHCI_ERR_CFG_VALUE_NOT_CHANGE = -10,
    AHCI_ERR_CURR_XFER_MODE = -11,
    AHCI_ERR_XFER_MODE_NOT_SUPPORT = -12,
    AHCI_ERR_ADDR_MODE_NOT_SUPPORT = -13,
    AHCI_ERR_DRQ_BLOCK_NOT_CORRECT = -14,
    AHCI_ERR_STATE_NOT_SUPPORT = -15,
    AHCI_ERR_DEVICE_TYPE_UNKNOWN = -16,
    AHCI_ERR_TEST_UNIT_NOT_READY = -17,
    AHCI_ERR_FATAL_ERROR = -18,
    AHCI_ERR_TAG_OUT_OF_RANGE = -19,
    AHCI_ERR_BYTE_COUNT_TOO_LARGE = -20,
    AHCI_ERR_MEDIUM_ERROR = -21,
    AHCI_ERR_DEVICE_NO_NCQ = -22,
    AHCI_ERR_DEVICE_NO_DMA = -23,
    AHCI_ERR_MAX = -24
} ahci_err_code_t;

typedef struct ahci_cmd_header {
    uint32 cfl :5;           // command FIS length, 4 means 4 DW
    uint32 atapi :1;         // indicate ATAPI command
    uint32 write :1;         // when set, is write (data from system memory to device)
    uint32 prefetch :1;
    uint32 reset :1;         // indicate command is a part of a software reset sequence
    uint32 bist :1;
    uint32 clear :1;         // when set, HBA clear PxTFD.STS.BSY and PxCI.CI after transmit FIS and rx R_OK
    uint32 reserved :1;
    uint32 pmp :4;           // port multiplier
    uint32 prdtl :16;        // Physical Region Descriptor length
    uint32 prdbc;            // PRD Byte Count: current byte count that has transferred on device(read or write)
    uint32 ctba;             // Command Table base address
    uint32 ctbaup;           // Command Table base address Upper 32 bits
    uint32 rsrv1;            // reserved
    uint32 rsrv2;            // reserved
    uint32 rsrv3;            // reserved
    uint32 rsrv4;            // reserved
} ahci_cmd_header_t;

typedef struct fis_h2d_2 {
    /**
     * feature:8,
     * cmd:8,
     * cpm:8(bit[7]update command/control register, bit[3:0]:PM port)
     * fis_type:8
     */
    uint32 fea_cmd_cpm_fis;
    /**
     * device:8(head or lba[24:27] when LBA28/ 0x4x indicate use LBA address mode)
     * lba high:8,
     * lba mid:8,
     * lba_low:8
     */
    uint32 dev_lba_28;
    /**
     * feature_exp:8
     * lba_high_exp:8,
     * lba_mid_exp:8,
     * lba_low_exp:8
     */
    uint32 fea_lba_exp;
    /**
     * ctrl:8
     * icc:8(Isochronous Command Completion or resvd)
     * sector_count:16(sector count[0:7] : sector count exp[8:15])
     */
    uint32 ctrl_icc_scnt;
    uint32 rsrvd2;
} fis_h2d_t2;

typedef struct ahci_cmd_header2 {
#define CMD_HEADER_MISC_VALUE   (5)
    /**
     * cfl :5;       command FIS length, 4 means 4 DW
     * atapi :1;     indicate ATAPI command
     * write :1;     when set, is write (data from system memory to device)
     * prefetch :1;
     * reset :1;     indicate command is a part of a software reset sequence
     * bist :1;
     * clear :1;     when set, HBA clear PxTFD.STS.BSY and PxCI.CI after transmit FIS and rx R_OK
     * reserved :1;
     * pmp :4;       port multiplier
     * prdtl :16;    Physical Region Descriptor length
     */
    uint32 misc;
    uint32 prdbc;            // PRD Byte Count: current byte count that has transferred on device(read or write)
    uint32 ctba;             // Command Table base address
    uint32 ctbaup;           // Command Table base address Upper 32 bits
    uint32 rsrv1;            // reserved
    uint32 rsrv2;            // reserved
    uint32 rsrv3;            // reserved
    uint32 rsrv4;            // reserved
} ahci_cmd_header_t2;

typedef struct ahci_prdt_entry {
    uint32 data_base_addr;
    uint32 data_base_upper_addr;
    uint32 reserved;
    uint32 intr_dbc;         // bit[00:21]Data Byte Count(dbc)--bit[31] Interrupt(I) on data transferred Completion
} ahci_prdt_entry_t;

typedef struct ahci_cmd {
    /* fis referring to field */
    uint8 device;
    uint8 rw_type;           // RW type
    uint16 tag;              // slot index for issue cmd
    uint16 cmd;              // command type id(fis)
    uint16 feature;          // refer to fis feature
    uint16 sector_cnt;       // refer to fis sector_cnt
    uint32 cmd_op;           // command type op
    uint32 buf_size;         // buffer size
    uint64 lba;              // refer to fis lba
    uint16 icc;              // Isochronous Command Completion, refer to fis
    uint16 clear;            // clear Busy upon R_OK, refer to fis

    /* other used */
    ahci_xfer_prot_t protocol; // protocol type
    uint32 cmd_slot_addr;      // command slot address
    uint32 cmd_tbl_addr;       // command table address
    uint32 buf_addr;           // buffer address of read/write data
    uint16 prdt_num;           // number of PRDT entries used
    uint16 occupied;           // wait for completing flag
    uint32 prdt_mux;           // 0: not-mux  >0: mux
    uint32 addr_mode;          // FIX, INC

    fis_h2d_t2 *h2d_fis;
    ahci_cmd_header_t2 *hdr;
    /* task use */
    uint32 start_time;       // 0:init/1:DSS(DMA_SETUP_FIS)/2:DPS(Descriptor Processed)/3: ERROR/4:OK
    void  *private;          // pointer to user task
} ahci_cmd_t;

typedef struct ahci_port {
    uint32 port_id;
    struct ahci_hba *ahci;
    /* Identify Device data backup */
    idty_dev_t sata_id;
    bool       sata_id_is_ok;      // save id whether can be read

    /* walk and manage command slot */
    ahci_cmd_t cmd_slot[32];
    uint32     device_queue_depth; // queue depth from device

    /* ahci address related for fis and prdt */
    ahci_cmd_header_t *cmd_list_addr;
    uint32 fis_addr;
    uint32 cmd_table_addr;
    fis_dma_setup_t *dsu;

    /* port status related for port apm and phy */
    ahci_port_state_t state;
    ahci_phy_mode_t phy_mode;

    /* transfer mode status */
    ahci_xfer_mode_t curr_xfer_mode;
    uint16 curr_xfer_sub_mode;
    uint16 curr_drq_block;   // DRQ (Data Request) number of logical sectors with status when PIO-IN/OUT

    /* status from register */
    uint32 cmd_status;       // Portx Command and Status
    uint32 ccs;              // Current Command Slot, for error handle non-queued marking cmd slot
    volatile uint32 ssts;             // Portx Serial ATA Status status
    volatile uint32 sctl;             // Portx Serial ATA Control status
    volatile uint32 serr;             // Portx Serial ATA Error status
    volatile uint32 stfd;             // Portx Serial Task File status
    volatile uint32 sact;             // Portx Serial ATA Active status
    volatile uint32 ci;               // Portx Command Issue status

    /* status for isr handler use */
    volatile uint32 p0is;             // Port0 Interrupt Status Register

    /* info feature from Identify Device */
    ahci_device_type_t device_type;
    sata_addr_mode_t addr_mode;
    uint16 max_multi;
    uint16 lba_support;
    uint16 dma_support;
    uint16 ncq_support;
    uint16 lba48_support;
    uint64 total_sectors;
    uint32 sector_size;
    uint32 max_rw_sector;
    uint32 use_max_cmd_slots;
    uint16 best_xfer_mode[SATA_UDMA_MODE_SET + 1]; // three type
    uint16 rw_type;
} ahci_port_t;

typedef struct ahci_hba {
    ahci_port_t port;        // only use port0
    uint8 stag_spin_up;
    uint8 mech_pre_switch;
    uint8 port_multiplier;
    uint8 ahci_en;           // AHCI Enable
    uint8 ncs;               // number of command slots
    uint8 cccs;              // Command Completion Coalescing Supported
    uint8 np;                // number of ports
    uint8 auto_p2s_cap;      // Automatic Partial to Slumber Transitions cap
    uint8 slumber_cap;       // Slumber State Capable
    uint8 partial_cap;       // Partial State Capable
    uint8 cctl_used_intr;
    uint32 port_list;        // Ports Implemented Register
    uint32 rev_id;           // AHCI Version
    /* status for isr handler use */
    uint32 is;               // HBA Interrupt Status Register
} ahci_hba_t;

/* struct/enum */
typedef struct sata_ps {
    uint16 ps_control;       // 0 control word
    uint8 pass[32];          // 1-16 password
    uint16 revision_code;    // 17 master password revision code
    uint16 revd[238];
} sata_password;

typedef struct btask_context {
    uint32   errors;         // save error number in btask list
    bool     task_ctx_valid; // true(in task field)/false(not in task field)
    bool     is_queue_cmd;
    bool     is_hw_reset;    // TRUE/FALSE
} btask_ctx_t;

typedef struct set_feature_param {
    uint8 is_valid;
    uint8 lba_high;
    uint8 lba_mid;
    uint8 lba_low;
    uint32 feature;
    uint32 count;
} set_feature_t;

/* variable define */
extern btask_ctx_t btask_ctx;
extern ahci_hba_t ahci;
extern uint32 id_buf_addr;
/* ahci hw init api */
ahci_err_code_t ahci_hw_init(int32 cont_en, uint32 ram_size_limit);
ahci_hba_t *ahci_hba_get(void);
void ahci_clock_set(uint32 clk);
uint32 ahci_clock_get(void);
void ahci_wait_timeout_set(uint32 value);
void ahci_speed_set(uint32 speed);

/* ahci hw low-level api */
void ahci_port_serr_clear(uint32 status);
uint32 ahci_reg_is_flush(void);
void ahci_reg_sact_set(ahci_port_t *port, uint32 tag);
uint32 ahci_reg_sact_get(ahci_port_t *port);
void ahci_reg_ci_set(ahci_port_t *port, uint32 slot);
uint32 ahci_reg_ci_get(ahci_port_t *port);
uint32 ahci_reg_cmd_get(ahci_port_t *port);
uint32 ahci_reg_is_get(ahci_port_t *port);
uint32 ahci_reg_tfd_get(ahci_port_t *port);
uint32 ahci_reg_sts_get(ahci_port_t *port);
uint32 ahci_reg_err_get(ahci_port_t *port);
uint32 ahci_ccs_get(ahci_port_t *port);
fis_d2h_t *ahci_rfis_base_get(ahci_port_t *port);
fis_dma_setup_t *ahci_dsfis_base_get(ahci_port_t *port);
fis_set_dev_bit_t *ahci_sdbfis_base_get(ahci_port_t *port);

/* ahci intr usage api */
void ahci_intr_enable(uint32 intr_src);
void ahci_intr_disable(uint32 intr_src);
uint32 ahci_intr_status(void);
void ahci_intr_clear(uint32 intr_src);
void ahci_link_change_handler(ahci_port_t *port);

/* ahci cmd slot usage api */
ahci_err_code_t ahci_cmd_issue(ahci_port_t *port, uint32 *ci_bits, uint32 is_wait);
void ahci_cmd_slot_free(ahci_cmd_t *cmd);
bool ahci_cmd_slot_is_empty(ahci_port_t *port);
ahci_cmd_t *ahci_cmd_slot_get(uint16 slot);
ahci_cmd_t *ahci_usable_cmd_slot_get(ahci_port_t *port);
ahci_err_code_t ahci_quick_rw(ahci_port_t *port, uint64 start, uint32 nbytes, ahci_cmd_t *cmd);

/* ahci ata cmd API */
ahci_err_code_t ahci_sector_per_block_set(ahci_port_t *port, uint8 nsector, uint16 *tag);
ahci_err_code_t ahci_puis_device_spinup_set(ahci_port_t *port, uint16 * tag);
ahci_err_code_t ahci_puis_feature_set(ahci_port_t *port, uint8 enable, uint16 *tag);
ahci_err_code_t ahci_sata_feature_set(ahci_port_t *port, uint8 enable, uint8 feature_code, uint16 *tag);
ahci_err_code_t ahci_cache_feature_set(ahci_port_t *port, uint8 enable, uint16 *tag);
ahci_err_code_t ahci_apm_feature_set(ahci_port_t *port, uint8 enable, uint8 level, uint16 *tag);
ahci_err_code_t ahci_lkah_feature_set(ahci_port_t *port, uint8 enable, uint16 *tag);
ahci_err_code_t ahci_revert_to_default_feature_set(ahci_port_t *port, uint8 enable, uint16 *tag);
ahci_err_code_t ahci_feature_set_exception(ahci_port_t *port, uint8 feature, uint16 sector_cnt, uint16 *tag);
ahci_err_code_t ahci_cache_flush(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_data_set_trim(ahci_port_t *port, uint8 *buf, uint32 nbytes, uint16 *tag);
ahci_err_code_t ahci_sleep_standby_handle(ahci_port_t *port, uint32 sleep, uint32 period, uint16 *tag);
ahci_err_code_t ahci_device_intr_enable(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_xfer_mode_set(ahci_port_t *port, ahci_xfer_mode_t mode, uint8 submode, uint16 *tag);
ahci_err_code_t ahci_raw_rw(ahci_port_t *port, uint64 start, uint32 buf, uint32 nbytes, uint32 op, ahci_cmd_t *cmd);
ahci_err_code_t ahci_sector_read(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes,
                                 ahci_rw_type_t type, uint16 *tag);
ahci_err_code_t ahci_sector_write(ahci_port_t *port, uint64 start, uint8 *buf, uint32 nbytes,
                                  ahci_rw_type_t type, uint16 *tag);
ahci_err_code_t ahci_log_ext_read(ahci_port_t *port, uint8 *log_buf, uint32 sector_cnt, uint32 page, uint16 *tag);
ahci_err_code_t ahci_ncq_queue_abort(ahci_port_t *port, ncq_abort_t type, uint8 ttag, uint16 *tag);
ahci_err_code_t ahci_ncq_deadline_handle(ahci_port_t * port, ncq_deadline_t wdnc, ncq_deadline_t rdnc, uint16 *tag);
void identify_revise(void);
ahci_err_code_t ahci_identify_read(ahci_port_t *port, uint16 *tag);
ahci_err_code_t ahci_smart(ahci_port_t *port, fis_h2d_t *h2d, uint8 *smart_buf, uint16 *tag);
ahci_err_code_t ahci_read_max_address_ext(ahci_port_t *port, fis_h2d_t *h2d, uint16 *tag);
ahci_err_code_t ahci_read_max_address(ahci_port_t *port, fis_h2d_t *h2d, uint16 *tag);
ahci_err_code_t ahci_read_verify_sectors(ahci_port_t *port, uint16 sector_cnt, uint32 lba, uint16 *tag);
ahci_err_code_t ahci_read_verify_sectors_ext(ahci_port_t *port, uint16 sector_cnt, uint64 lba, uint16 *tag);
ahci_err_code_t ahci_security(ahci_port_t *port, fis_h2d_t *h2d, uint8 *buf, uint16 *tag);
ahci_err_code_t ahci_port_state_set(ahci_port_t *port, uint32 aggressive, ahci_port_state_t state);
ahci_err_code_t ahci_passthru(fis_h2d_t *h2d, uint8 *buf, uint32 nbytes, uint32 protocol);

/* ahci reset and error usage api */
ahci_err_code_t ahci_hba_reset(ahci_hba_t *ahci, int32 cont_en);
ahci_err_code_t ahci_port_reset(ahci_port_t *port);
ahci_err_code_t ahci_sw_reset(ahci_port_t *port, uint16 *tag);
void ahci_error_handler(ahci_err_code_t error);

/* ahci arch porting api */
void ahci_init(void);
void ahci_sleep(void);
void ahci_awake(void);

#endif /* __AHCI_H__ */
