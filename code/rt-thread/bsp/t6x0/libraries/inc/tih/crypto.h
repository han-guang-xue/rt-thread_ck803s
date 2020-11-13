#ifndef __CRYPTO_H__
#define __CRYPTO_H__

#include <sysdep.h>

/* alg */
#define SM4             0x1
#define AES             0x2

/* mode */
#define ECB             0x0
#define CBC             0x1
#define CFB             0x2
#define OFB             0x3
#define CTR             0x4
#define XTS             0x5

/* func */
#define ENC             0x0
#define DEC             0x1

/* endian */
#define LITTLE_ENDI     0x0
#define BIG_ENDI        0x1

/* keybits */
#define KEY_128_BITS    0x0
#define KEY_256_BITS    0x1

typedef struct symm_info {
    uint8 alg;      //SM4/AES
    uint8 mode;     //ECB/CBC/CFB/OFB/CTR/XTS
    uint8 func;     //ENC/DEC
    uint8 endian;   //bige/little
    uint32 keybits; //128/256
    uint8 *key;
    uint8 *xtskey;
    /**
     * for CBC/CFB/OFB mode, is iv
     * for XTS mode, is tw
     * for CTR mode, is count
     */
    uint8 *param;
    uint32 ctr_step;
} symm_info_t;

void crypto_hw_init(void);
bool crypto_is_busy(void);
void crypto_reset(void);

uint32 crypto_frontend_port_addr(void);
uint32 crypto_backend_port_addr(void);

bool crypto_bridge_is_required(uint32 addr, symm_info_t *info);
int32 crypto_bridge_enable(symm_info_t *info, uint32 addr, uint32 addr_mode, uint32 nbytes, uint32 dir);
int32 crypto_bridge_prd_enable(symm_info_t *info, uint32 *prd, uint32 prd_nwords, uint32 data_nbytes, bool ass_mode);

int32 crypto_fifo_enable(symm_info_t *info, uint32 nbytes, uint32 dir);

int32 crypto_dma_start(symm_info_t *info, uint32 src_addr, uint32 src_addr_mode, uint32 dst_addr, uint32 dst_addr_mode, uint32 nbytes);

void crypto_data_pad(void);
void crypto_data_discard(void);
void crypto_master_reset(void);
void crypto_slave_reset(void);

uint32 crypto_reg_symc_lsr_get(void);
uint32 crypto_symc_data_cnt(void);
#endif
