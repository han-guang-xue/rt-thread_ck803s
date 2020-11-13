#ifndef __DRV_CRYPTO_H__
#define __DRV_CRYPTO_H__
#include <tih/crypto.h>
#include <tih/crypto_errno.h>

#include <tih/aes.h>
#include <tih/pke.h>
#include <tih/sm4.h>

#include <tih/ecc.h>
#include <tih/rsa.h>
#include <tih/sm2.h>

#include <tih/hash.h>
#include <tih/sha1.h>
#include <tih/sha224.h>
#include <tih/sha256.h>
#include <tih/sm3.h>
#include <tih/cmac.h>

#include <tih/bignum.h>
#include <tih/rng.h>

typedef struct ecc_point {
    uint32 *x;
    uint32 *y;
} ecc_point_t;

/* function define */
crypto_errno_t tih_aes_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                             uint8 *key, uint32 keybytes, uint32 func,
                             uint32 mode, uint8 *iv);

crypto_errno_t tih_aes_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes,
                                 uint8 *key, uint32 keybytes, uint32 func,
                                 uint32 mode, uint8 *count, uint32 ctr_step);

crypto_errno_t tih_aes_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes,
                                 uint8 *key, uint32 keybytes, uint32 func,
                                 uint32 mode, uint8 *tw, uint8 *xtskey);

crypto_errno_t tih_sm4_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                             uint8 *key, uint32 func, uint32 mode, uint8 *iv);

crypto_errno_t tih_sm4_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes,
                                 uint8 *key, uint32 func, uint32 mode,
                                 uint8 *count, uint32 ctr_step);

crypto_errno_t tih_sm4_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes,
                                 uint8 *key, uint32 func, uint32 mode,
                                 uint8 *tw, uint8 *xtskey);

crypto_errno_t tih_rsa_keypair_gen(uint8 *p, uint8 *q,
                               uint8 *dp, uint8 *dq,
                               uint8 *u, uint8 *e,
                               uint8 *n, uint32 nbits);
crypto_errno_t tih_rsa_encrypt(uint8 *plain,
                           uint8 *e, uint8 *n,
                           uint8 *cipher,
                           uint32 nbits);
crypto_errno_t tih_rsa_decrypt(uint8 *cipher,
                           uint8 *p, uint8 *q,
                           uint8 *dp, uint8 *dq,
                           uint8 *u,
                           uint8 *plain,
                           uint32 nbits);

crypto_errno_t tih_sm2_keypair_gen(uint8 *prikey, uint8 *pubkey);
crypto_errno_t tih_sm2_e_get(uint8 *m, uint32 m_nbytes, uint8 *z, uint8 *e);
crypto_errno_t tih_sm2_z_get(uint8 *id, uint32 idbytes, uint8 *pubkey, uint8 *z);
crypto_errno_t tih_sm2_sign(uint8 e[32], uint8 prikey[32], uint8 signature[64]);
crypto_errno_t tih_sm2_verify(uint8 e[32], uint8 pubkey[64], uint8 signature[64]);
crypto_errno_t tih_sm2_encrypt(uint8 *m, uint32 m_nbytes,
                           uint8 pubkey[64],
                           uint8 *c, uint32 *c_nbytes);
crypto_errno_t tih_sm2_decrypt(uint8 *c, uint32 c_nbytes,
                           uint8 prikey[32],
                           uint8 *m, uint32 *m_nbytes);
crypto_errno_t tih_sm2_key_exchange(sm2_exchange_role_e role,
                                uint8 *da, uint8 *pb,
                                uint8 *ra, uint8 *rpa,
                                uint8 *rb,
                                uint8 *za, uint8 *zb,
                                uint32 k_nbytes,
                                uint8 *ka, uint8 *sl, uint8 *sa);

/* tih_sha1_init and tih_sha1_final must be used in pair  */
crypto_errno_t tih_sha1_init(void);
crypto_errno_t tih_sha1_update(uint8 *in, uint32 nbytes);
crypto_errno_t tih_sha1_final(uint8 *out);

/* tih_sha224_init and tih_sha224_final must be used in pair  */
crypto_errno_t tih_sha224_init(void);
crypto_errno_t tih_sha224_update(uint8 *in, uint32 nbytes);
crypto_errno_t tih_sha224_final(uint8 *out);

/* tih_sha256_init and tih_sha256_final must be used in pair  */
crypto_errno_t tih_sha256_init(void);
crypto_errno_t tih_sha256_update(uint8 *in, uint32 nbytes);
crypto_errno_t tih_sha256_final(uint8 *out);

/* tih_cmac_init and tih_cmac_final must be used in pair  */
crypto_errno_t tih_cmac_init(cmac_ctx_t *ctx, uint8 *key, int32 keylen,
                             uint8 *iv, int32 ivlen, uint32 alg);
crypto_errno_t tih_cmac_update(cmac_ctx_t *ctx, uint8 *data, uint32 len);
crypto_errno_t tih_cmac_final(cmac_ctx_t *ctx, uint8 *out, uint32 *len);

/* tih_sm3_init and tih_sm3_final must be used in pair  */
crypto_errno_t tih_sm3_init(void);
crypto_errno_t tih_sm3_update(uint8 *in, uint32 nbytes);
crypto_errno_t tih_sm3_final(uint8 *out);

crypto_errno_t tih_rand_get(uint8 *rand, uint32 byteLen);

int32 tih_ecp_mul(ecc_curve_t *curve, ecc_point_t *Q, uint32 *k, ecc_point_t *P);
int32 tih_ecp_muladd(ecc_curve_t *curve, ecc_point_t *Q, uint32 *k1, ecc_point_t *P1,
                     uint32 *k2, ecc_point_t *P2);
int32 tih_ecp_add(ecc_curve_t *curve, ecc_point_t *P1, ecc_point_t *P2, ecc_point_t *Q);
int32 tih_ecp_double(ecc_curve_t *curve, ecc_point_t *P, ecc_point_t *Q);
int32 tih_ecp_check(ecc_curve_t *curve, ecc_point_t *P);

/*
 * Note:
 *      MPI operations are based on unsigned big num.
 */
int32 tih_mpi_add(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword);
int32 tih_mpi_sub(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword);
int32 tih_mpi_mul(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword);
int32 tih_mpi_cmp(uint32 *a, uint32 *b, uint32 a_nword, uint32 b_nword);
int32 tih_mpi_mod_mpi(uint32 *a, uint32 a_nword, uint32 *b, uint32 b_nword, uint32 *c);
int32 tih_mpi_add_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nword);
int32 tih_mpi_sub_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nword);
int32 tih_mpi_inv_mod(const uint32 *modulus, const uint32 *a, uint32 *ainv,
                      uint32 mod_nword, uint32 a_nword);
int32 tih_mpi_mul_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nwords);
int32 tih_mpi_inv_mod(const uint32 *modulus, const uint32 *a, uint32 *ainv,
                      uint32 mod_nword, uint32 a_nword);

#endif /* __DRV_CRYPTO_H__ */
