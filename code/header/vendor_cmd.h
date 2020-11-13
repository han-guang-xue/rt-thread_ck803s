#ifndef __VENDOR_CMD_H__
#define __VENDOR_CMD_H__

#ifdef __cplusplus 
extern "C" { 
#endif

/* Top Layer op code */
#define VCMD_CTRL               0x86
#define VCMD_OUT                0x88
#define VCMD_IN                 0x8A

/* Top Layer log addr as vendor command */
#define VCMD_CTRL_LOG_ADDR      0xA0
#define VCMD_DATA_LOG_ADDR      0xA1


/* Top Layer LBA as verdor command */
#define VCMD_CTRL_LBA           0xFFFF8000
#define VCMD_DATA_LBA           0xFFFF8100

/* Vendor cmd signature (vcmd.rsvd) */
#define VCMD_SIGNATURE          0xFC

/* tih default cmd: 0xC0 - 0xFF */
#define TIH_CMD_BASE            0xC0        

/* tih vendor cmds */
#define TIH_HANDSHAKE           (TIH_CMD_BASE + 0)  // not support in fw
#define TIH_REBOOT              (TIH_CMD_BASE + 1)
#define TIH_DOWNLOAD_DEBUG      (TIH_CMD_BASE + 2)  // not support in fw
#define TIH_ERASE_NORFLASH      (TIH_CMD_BASE + 3)
#define TIH_READ_NORFLASH       (TIH_CMD_BASE + 4)
#define TIH_WRITE_NORFLASH      (TIH_CMD_BASE + 5)
#define TIH_PROBE_NORFLASH      (TIH_CMD_BASE + 6)
#define TIH_IDENTIFY            (TIH_CMD_BASE + 7)
#define TIH_READ_BLKDEV         (TIH_CMD_BASE + 8)
#define TIH_WRITE_BLKDEV        (TIH_CMD_BASE + 9)
#define TIH_PROBE_BLKDEV        (TIH_CMD_BASE + 10)

/* default max buf size for vendor cmds */
#define MAX_VBUF_SIZE           0x8000

/* detailed definitions for TIH_IDENFITY cmd */
#define IDENTIFY_STR            "T610"

/* detailed definitions for TIH_REBOOT cmd, target field */
#define TARGET_FIRMWARE         0
#define TARGET_BOOTROM          1

/* detailed definitions for TIH_ERASE_NORFLASH cmd, type field */
#define SECTOR_ERASE            0   // 4KB erase
#define BLOCK_ERASE             1   // 32KB erase
#define CHIP_ERASE              2   // whole chip erase

#ifdef _WINDOWS_
#define PACKED
#pragma pack(push,1)
#else
#define PACKED __attribute__((packed))
#endif

/* cmd structure definations */
typedef struct tih_handshake {      // not support in fw
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  handshake_str[12];  
} PACKED tih_handshake_t;

typedef struct tih_reboot {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint16 target;
    uint8  rsvd2[10];
} PACKED tih_reboot_t;

typedef struct tih_download_debug { // not support in fw
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  rsvd2[12];     
} PACKED tih_download_debug_t;

typedef struct tih_erase_norflash {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint32 offset;      // will be aligned automatically according to 'type';
    uint16 type;
    uint8  rsvd2[6]; 
} PACKED tih_erase_norflash_t;

typedef struct tih_read_norflash {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint32 offset;
    uint8  rsvd2[8];  
} PACKED tih_read_norflash_t;

typedef struct tih_write_norflash {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint32 offset;
    uint8  rsvd2[8];  
} PACKED tih_write_norflash_t;

typedef struct tih_probe_norflash {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  rsvd2[12]; 
} PACKED tih_probe_norflash_t;

typedef struct tih_identify {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  rsvd2[12]; 
} PACKED tih_identify_t;

typedef struct tih_read_blkdev {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint32 lba;
    uint8  rsvd2[8];  
} PACKED tih_read_blkdev_t;

typedef struct tih_write_blkdev {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint32 lba;
    uint8  rsvd2[8];  
} PACKED tih_write_blkdev_t;

typedef struct tih_probe_blkdev {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  rsvd2[12]; 
} PACKED tih_probe_blkdev_t;

/* common definitions of vendor cmds*/
typedef struct vcmd {
    uint8  rsvd;
    uint8  op;
    uint16 datacnt;
    uint8  detail[12];
} PACKED vcmd_t;

/* response data structure for TIH_IDENTIFY cmd */
typedef struct tih_identify_data {
    uint8  t610_id[4];  // valid value: IDENTIFY_STR
    uint8  fw_ver[8];   // firmware version
    uint32 vbuf_size;   // max buf size for vendor cmd
    // other info can be added in future
} tih_identify_data_t;

#ifdef _WINDOWS_
#pragma pack(pop)
#endif

#ifdef __cplusplus 
}
#endif

#endif

