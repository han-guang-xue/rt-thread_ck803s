#ifndef __HASH_H__
#define __HASH_H__

#include <sysdep.h>
#include <crypto_errno.h>

#define ALG_SM3         1
#define ALG_SHA1        2
#define ALG_SHA224      3
#define ALG_SHA256      4

typedef struct hash_context {
    uint32 total[2];
    uint8 buffer[64];
} hash_context_t;

crypto_errno_t hash_init(hash_context_t *ctx, uint32 alg);
crypto_errno_t hash_update(hash_context_t *ctx, uint8 *in, uint32 nbytes, uint32 alg);
crypto_errno_t hash_final(hash_context_t *ctx, uint8 *out, uint32 alg);

#endif
