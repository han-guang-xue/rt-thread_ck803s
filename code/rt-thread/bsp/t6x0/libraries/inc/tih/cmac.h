#ifndef __CMAC_H__
#define __CMAC_H__

#include <sysdep.h>
#include <crypto_errno.h>

#define CMAC_SM4            0x1
#define CMAC_AES            0x2

#define MAX_DATA_SIZE       1536
#define DATA_BLOCK_SIZE     16

typedef struct cmac_ctx {
    uint8 *key;
    int32 keylen;
    uint8 *iv;
    uint32 alg_mode;
} cmac_ctx_t;

crypto_errno_t cmac_init(cmac_ctx_t *ctx, uint8 *key, int32 keylen, uint8 *iv, int32 ivlen, uint32 alg);

crypto_errno_t cmac_update(cmac_ctx_t *ctx, uint8 *data, uint32 len);

crypto_errno_t cmac_final(cmac_ctx_t *ctx, uint8 *out, uint32 *len);

#endif
