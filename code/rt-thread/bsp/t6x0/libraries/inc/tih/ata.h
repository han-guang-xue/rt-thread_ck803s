#ifndef __ATA_H__
#define __ATA_H__

#include <sysdep.h>

/*   */
#define NCQ_TAG_MAX                               0x20
/* speed */
#define SPEED_GEN1                                0x1
#define SPEED_GEN2                                0x2
#define SPEED_GEN3                                0x3

/* FIS type id */
#define FIS_TYPE_H2D                              0x27    // Host to Device
#define FIS_TYPE_D2H                              0x34    // Device to Host
#define FIS_TYPE_SDB                              0xA1    // Device to Host
#define FIS_TYPE_D2H_DMA_ACT                      0x39    // Device to Host
#define FIS_TYPE_DMA_SETUP                        0x41    // Bidirectional
#define FIS_TYPE_BIST_ACT                         0x58    // Bidirectional
#define FIS_TYPE_PIO_SETUP                        0x5F    // Device to Host
#define FIS_TYPE_DATA                             0x46    // Bidirectional

/* ata command code */
#define ATA_NOP                                   0x00
#define ATA_DATA_SET_MANAGEMENT                   0x06
#define ATA_READ_SECTORS                          0x20
#define ATA_READ_SECTORS_EXT                      0x24
#define ATA_READ_DMA_EXT                          0x25
#define ATA_READ_NATIVE_MAX_ADDRESS_EXT           0x27
#define ATA_READ_MULTIPLE_EXT                     0x29
#define ATA_READ_LOG_EXT                          0x2F
#define ATA_WRITE_SECTORS                         0x30
#define ATA_WRITE_SECTORS_EXT                     0x34
#define ATA_WRITE_DMA_EXT                         0x35
#define ATA_SET_MAX_ADDRESS_EXT                   0x37
#define ATA_WRITE_MULTIPLE_EXT                    0x39
#define ATA_WRITE_LOG_EXT                         0x3F
#define ATA_READ_VERIFY_SECTORS                   0x40
#define ATA_READ_VERIFY_SECTORS_EXT               0x42
#define ATA_READ_LOG_DMA_EXT                      0x47
#define ATA_WRITE_LOG_DMA_EXT                     0x57
#define ATA_READ_FPDMA_QUEUED                     0x60
#define ATA_WRITE_FPDMA_QUEUED                    0x61
#define ATA_NCQ_QUEUE_MANAGEMENT                  0x63
#define ATA_EXECUTE_DEVICE_DIAGNOSTIC             0x90
#define ATA_INITIALIZE_DEVICE_PARAMETERS          0x91
#define ATA_DOWNLOAD_MICROCODE                    0x92
#define ATA_DOWNLOAD_MICROCODE_DMA                0x93
#define ATA_SMART                                 0xB0
#define ATA_READ_MULTIPLE                         0xC4
#define ATA_WRITE_MULTIPLE                        0xC5
#define ATA_SET_MULTIPLE_MODE                     0xC6
#define ATA_READ_DMA                              0xC8
#define ATA_WRITE_DMA                             0xCA
#define ATA_STANDBY_IMMEDIATE                     0xE0
#define ATA_IDLE_IMMEDIATE                        0xE1
#define ATA_STANDBY                               0xE2
#define ATA_IDLE                                  0xE3
#define ATA_READ_BUFFER                           0xE4
#define ATA_CHECK_POWER_MODE                      0xE5
#define ATA_SLEEP                                 0xE6
#define ATA_FLUSH_CACHE                           0xE7
#define ATA_WRITE_BUFFER                          0xE8
#define ATA_READ_BUFFER_DMA                       0xE9
#define ATA_FLUSH_CACHE_EXT                       0xEA
#define ATA_WRITE_BUFFER_DMA                      0xEB
#define ATA_IDENTIFY_DEVICE                       0xEC
#define ATA_SET_FEATURES                          0xEF
#define ATA_READ_NATIVE_MAX_ADDRESS               0xF8
#define ATA_SET_MAX_ADDRESS                       0xF9
#define ATA_SECURITY_SET_PASSWORD                 0xF1
#define ATA_SECURITY_UNLOCK                       0xF2
#define ATA_SECURITY_ERASE_PREPARE                0xF3
#define ATA_SECURITY_ERASE_UNIT                   0xF4
#define ATA_SECURITY_FREEZE_LOCK                  0xF5
#define ATA_SECURITY_DISABLE_PASSWORD             0xF6
#define ATA_DEVICE_CONFIGURATION_OVERLAY          0xB1

/* set feature sub command code */
#define ATA_FEA_ENABLE_WRITE_CACHE                     0x02
#define ATA_FEA_SET_TRANSFER_MODE                      0x03
#define ATA_FEA_DISABLE_REVERT_TO_POWERON_DEFAULT      0x66
#define ATA_FEA_ENABLE_REVERT_TO_POWERON_DEFAULT       0xCC
#define ATA_FEA_DISABLE_WRITE_CACHE                    0x82
#define ATA_FEA_ENABLE_SATA_FEATURE                    0x10
#define ATA_FEA_DISABLE_SATA_FEATURE                   0x90
#define ATA_FEA_ENABLE_APM_FEATURE                     0x05
#define ATA_FEA_DISABLE_APM_FEATURE                    0x85
#define ATA_FEA_ENABLE_LKAH_FEATURE                    0xAA
#define ATA_FEA_DISABLE_LKAH_FEATURE                   0x55
#define ATA_FEA_ENABLE_PUIS                            0x06
#define ATA_FEA_PUIS_SET_DEVICE_SPIN_UP                0x07
#define ATA_FEA_DISABLE_PUIS                           0x86

/* smart sub command code */
#define ATA_SMART_DATA_READ                            0xD0
#define ATA_SMART_OBSOLETE_D1                          0xD1
#define ATA_SMART_AUTOSAVE_ED                          0xD2
#define ATA_SMART_OFFLINE_EXE                          0xD4
#define ATA_SMART_LOG_READ                             0xD5
#define ATA_SMART_LOG_WRITE                            0xD6
#define ATA_SMART_OPR_ENABLE                           0xD8
#define ATA_SMART_OPR_DISABLE                          0xD9
#define ATA_SMART_STS_RETURN                           0xDA

/* struct/enum */
typedef struct idty_dev {
    uint16 w0_config;
    uint16 w1_cylinder_num;
    uint16 w2_spcconfig;
    uint16 w3_head_num;
    uint16 w4_w5_retired[2];
    uint16 w6_sector_num;
    uint16 w7_w8_reserved[2];
    uint16 w9_retired;
    uint8  w10_w19_serial_num[20];
    uint16 w20_w21_retired[2];
    uint16 w22_obsolete;
    uint8  w23_w26_fw_revision[8];
    uint8  w27_w46_model_num[40];
    uint16 w47_multi_max_sec_num;
    uint16 w48_trust;
    uint16 w49_cap;
    uint16 w50_cap;
    uint16 w51_w52_obsolete[2];
    uint16 w53_valid_info;
    uint16 w54_curr_cylinder_num;
    uint16 w55_curr_head_num;
    uint16 w56_curr_sector_num;
    uint16 w57_w58_curr_cap[2];
    uint16 w59_multi_curr_sec_num;
    uint16 w60_w61_total_sec_cnt[2];
    uint16 w62_obsolete;
    uint16 w63_mw_dmamode;
    uint16 w64_piomode;
    uint16 w65_minmwdma;
    uint16 w66_recmwdma;
    uint16 w67_minpio;
    uint16 w68_minpio_flow;
    uint16 w69_cap;
    uint16 w70_reserved;
    uint16 w71_w74_reserved[4];
    uint16 w75_qdepth;
    uint16 w76_cap;
    uint16 w77_cap;
    uint16 w78_sup;
    uint16 w79_enbl;
    uint16 w80_major_version;
    uint16 w81_minor_wersion;
    uint16 w82_cmd_fea_sup;
    uint16 w83_cmd_fea_sup;
    uint16 w84_cmd_fea_sup;
    uint16 w85_cmd_fea_enbl;
    uint16 w86_cmd_fea_enbl;
    uint16 w87_cmd_fea_enbl;
    uint16 w88_udma_mode;
    uint16 w89_normal_erasetime;
    uint16 w90_enhanced_erasetime;
    uint16 w91_curr_apm_level;
    uint16 w92_master_pwd;
    uint16 w93_hw_reset_val;
    uint16 w94_obsolete;
    uint16 w95_stream_min_sz;
    uint16 w96_stream_xfert_dma;
    uint16 w97_stream_lat;
    uint16 w98_w99_stream_perf[2];
    uint16 w100_w103_sec_cnt[4];
    uint16 w104_steam_xfert_pio;
    uint16 w105_trim_max_sec;
    uint16 w106_phy_logic_sec;
    uint16 w107_seek_delay;
    uint16 w108_naa_ieee_oui;
    uint16 w109_ieee_oui_uid;
    uint16 w110_uid_mid;
    uint16 w111_uid_low;
    uint16 w112_w115_reserved[4];
    uint16 w116_obsolete;
    uint16 w117_w118_lsec_size[2];
    uint16 w119_cmd_fea_sup;
    uint16 w120_cmd_fea_enbl;
    uint16 w121_w126_reserved[6];
    uint16 w127_obsolete;
    uint16 w128_secu_sts;
    uint16 w129_w159_vendor[31];
    uint16 w160_w167_reserved[8];
    uint16 w168_reserved;
    uint16 w169_trim_sup;
    uint16 w170_w173_reserved[4];
    uint16 w174_w175_reserved[2];
    uint16 w176_w205_curr_media_sernum[30];
    uint16 w206_sct_sup;
    uint16 w207_w208_reserved[2];
    uint16 w209_align_sec;
    uint16 w210_w216_reserved[7];
    uint16 w217_media_rotation;
    uint16 w218_w221_reserved[4];
    uint16 w222_trans_majrev;
    uint16 w223_trans_minorrev;
    uint16 w224_w229_reserved[6];
    uint16 w230_w233_extnum_sec[4];
    uint16 w234_dm_min_sec;
    uint16 w235_dm_max_sec;
    uint16 w236_w254_reserved[19];
    uint16 w255_integrity;
} idty_dev_t;

typedef struct fis_h2d {
    uint8 fis_type;
    uint8 c_pm;         // bit[7]update command/control register, bit[3:0]:PM port
    uint8 cmd;
    uint8 feature;
    uint8 lba_low;      // or sector number
    uint8 lba_mid;      // or cyl low
    uint8 lba_high;     // or cyl high
    uint8 device;       // or head or lba[24:27] when LBA28/ 0x4x indicate use LBA address mode
    uint8 lba_low_exp;  // or sector number exp
    uint8 lba_mid_exp;  // or cyl low exp
    uint8 lba_high_exp; // or cyl high exp
    uint8 feature_exp;
    uint16 sec_count;   // sector count[0:7] : sector count exp[8:15]
    uint8 icc;          // Isochronous Command Completion or resvd
    uint8 ctrl;         // put it at bit 15-8, 7-0 is reserved: nIEN:1(intr enable = 0) SRST:2
    uint32 rsrvd1;
} fis_h2d_t;

/**
 * Note:
 *  pio setup fis, use the same format as d2h reg fis
 *            only different in some fields
 */
typedef struct fis_d2h {
    uint8 fis_type;
    uint8 i_pm;                 // bit[3:0]:pm port,bit[6]:intr bit and other resvd
    uint8 status;
    uint8 error;
    uint8 lba_low;
    uint8 lba_mid;
    uint8 lba_high;
    uint8 device;
    uint32 lba_exp;
    uint8 sec_count;
    uint8 sec_count_exp;
    uint8 rsrvd1;
    uint8 e_status;             // reserved for d2h reg fis
    uint16 transfer_cnt;        // reserved for d2h reg fis
    uint16 rsrvd2;
} fis_d2h_t;

typedef struct fis_set_dev_bit {
    uint32 fis_type:8;
    uint32 pm:4;
    uint32 reserved_0:2;
    uint32 intr:1;
    uint32 notify:1;
    uint32 status_lo:4;
    uint32 status_hi:4;
    uint32 error:8;
    uint32 prot_specific;
} fis_set_dev_bit_t;

typedef struct fis_dma_act_d2h {  // DMA Activate - Device to Host
    uint8 fis_type;
    uint8 rsrvd[3];
} fis_dma_act_d2h_t;

typedef struct fis_dma_setup {    // bidirectional
    uint8 fis_type;
    uint8 a_i_d_pm;               // bit[7]:Auto-Activate,bit[6]:intr,bit[5]:Direction,bit[3:0]:pm port
    uint16 rsrvd1;
    volatile uint32 dma_buffid_low;
    uint32 dma_buffid_hi;
    uint32 rsrvd2;
    uint32 dma_buff_offset;
    uint32 dma_trans_cnt;
    uint32 rsrvd3;
} fis_dma_setup_t;

typedef struct fis_bist_act {     // bidirectional
    uint8 fis_type;
    uint8 pm;                     // bit[3:0]:pm port, others rsrvd
    uint8 pattern;
    uint8 rsrvd1;
    uint32 data1;
    uint32 data2;
} fis_bist_act_t;

#endif  // end of __ATA_H__
