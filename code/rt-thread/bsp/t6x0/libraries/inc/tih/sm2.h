#ifndef __SM2_H__
#define __SM2_H__

#include <sysdep.h>
#include <crypto_errno.h>

#define    SM2_ROLE_SPONSOR     0
#define    SM2_ROLE_RESPONSOR   1

typedef enum {
    SM2_Role_Sponsor = 0,
    SM2_Role_Responsor
} sm2_exchange_role_e;

crypto_errno_t sm2_keypair_gen(uint8 *prikey, uint8 *pubkey);
crypto_errno_t sm2_e_get(uint8 *m, uint32 m_nbytes, uint8 *z, uint8 *e);
crypto_errno_t sm2_z_get(uint8 *id, uint32 idbytes, uint8 *pubkey, uint8 *z);
crypto_errno_t sm2_sign(uint8 e[32], uint8 prikey[32], uint8 signature[64]);
crypto_errno_t sm2_verify(uint8 e[32], uint8 pubkey[64], uint8 signature[64]);
crypto_errno_t sm2_encrypt(uint8 *m, uint32 m_nbytes,
                           uint8 pubkey[64],
                           uint8 *c, uint32 *c_nbytes);
crypto_errno_t sm2_decrypt(uint8 *c, uint32 c_nbytes,
                           uint8 prikey[32],
                           uint8 *m, uint32 *m_nbytes);
crypto_errno_t sm2_key_exchange(sm2_exchange_role_e role,
                                uint8 *da, uint8 *pb,
                                uint8 *ra, uint8 *rpa,
                                uint8 *rb,
                                uint8 *za, uint8 *zb,
                                uint32 k_nbytes,
                                uint8 *ka, uint8 *sl, uint8 *sa);

#endif
