#ifndef __AES_H__
#define __AES_H__

#include <sysdep.h>
#include <crypto_errno.h>

/* mode */
#define AES_ECB         0x0
#define AES_CBC         0x1
#define AES_CFB         0x2
#define AES_OFB         0x3
#define AES_CTR         0x4
#define AES_XTS         0x5

/* func */
#define AES_ENC         0x0
#define AES_DEC         0x1

/* key bits */
#define AES_KEY_128_BITS    0x10
#define AES_KEY_256_BITS    0x20

crypto_errno_t aes_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                         uint8 *key, uint32 key_nbytes, uint32 func, uint32 mode, uint8 *iv);
crypto_errno_t aes_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes, uint8 *key, uint32 key_nbytes,
                             uint32 func, uint32 mode, uint8 *count, uint32 ctr_step);
crypto_errno_t aes_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes, uint8 *key, uint32 key_nbytes,
                             uint32 func, uint32 mode, uint8 *tw, uint8 *xtskey);

#endif
