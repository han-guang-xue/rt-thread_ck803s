#ifndef __RSA_H__
#define __RSA_H__

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t rsa_crt_keypair_gen(uint8 *p, uint8 *q,
                                  uint8 *dp, uint8 *dq,
                                  uint8 *u, uint8 *e,
                                  uint8 *n, uint32 nbits);

crypto_errno_t rsa_encrypt(uint8 *plain,
                           uint8 *e, uint8 *n,
                           uint8 *cipher,
                           uint32 nbits);

crypto_errno_t rsa_crt_decrypt(uint8 *cipher,
                              uint8 *p, uint8 *q,
                              uint8 *dp, uint8 *dq,
                              uint8 *u,
                              uint8 *plain,
                              uint32 nbits);

crypto_errno_t rsa_keypair_gen(uint8 *e, uint8 *d, uint8 *n, uint32 nbits);

crypto_errno_t rsa_decrypt(uint8 *cipher,
                           uint8 *d, uint8 *n,
                           uint8 *plain,
                           uint32 nbits);

crypto_errno_t rsa_pq_keypair_gen(uint8 *p, uint8 *q, 
                                  uint8 *e, uint8 *d, uint8 *n,
                                  uint32 nbits);

#endif
