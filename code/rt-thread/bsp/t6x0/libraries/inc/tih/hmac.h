#ifndef __HMAC_H__
#define __HMAC_H__

#include <sysdep.h>
#include <hash.h>
#include <crypto_errno.h>

#define SM3_HMAC                0x1
#define SHA1_HMAC               0x2
#define SHA224_HMAC             0x3
#define SHA256_HMAC             0x4

#define HMAC_MAX_MD_CBLOCK      128

typedef struct hmac_ctx {
    uint32 alg_mode;
    hash_context_t hash_ctx;
    uint8 i_ctx[HMAC_MAX_MD_CBLOCK];
    uint32 i_ctxlen;
    uint8 o_ctx[HMAC_MAX_MD_CBLOCK];
    uint32 o_ctxlen;
    uint8 key[HMAC_MAX_MD_CBLOCK];
} hmac_ctx_t;

crypto_errno_t hmac_init(hmac_ctx_t *ctx, uint8 *key, int32 keylen, int32 alg);
crypto_errno_t hmac_update(hmac_ctx_t *ctx, uint8 *data, uint32 len);
crypto_errno_t hmac_final(hmac_ctx_t *ctx, uint8 *out,  uint32 *len);
crypto_errno_t hmac(uint8 *key, int32 keylen, uint32 alg, uint8 *data, uint32 datalen, uint8 *out, uint32 *outlen);

#endif
