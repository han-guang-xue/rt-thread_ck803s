#ifndef __SM4_H__
#define __SM4_H__

#include <sysdep.h>
#include <crypto_errno.h>

/* mode */
#define SM4_ECB         0x0
#define SM4_CBC         0x1
#define SM4_CFB         0x2
#define SM4_OFB         0x3
#define SM4_CTR         0x4
#define SM4_XTS         0x5

/* func */
#define SM4_ENC         0x0
#define SM4_DEC         0x1

crypto_errno_t sm4_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                         uint8 *key, uint32 func, uint32 mode, uint8 *iv);
crypto_errno_t sm4_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes, uint8 *key,
                             uint32 func, uint32 mode, uint8 *count, uint32 ctr_step);
crypto_errno_t sm4_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes, uint8 *key,
                             uint32 func, uint32 mode, uint8 *tw, uint8 *xtskey);

#endif
