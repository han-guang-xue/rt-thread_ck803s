#include <rthw.h>
#include <rtdevice.h>

#ifdef RT_USING_CRYPTO
#include <drv_crypto.h>

/* crypto device module type */
#define CRYPTO_MODULE_CIPHER     0
#define CRYPTO_MODULE_PK         1
#define CRYPTO_MODULE_HASH       2
#define CRYPTO_MODULE_RNG        3

rt_crypto_device_t crypto_dev;

static rt_err_t drv_crypto_reset(rt_crypto_device_t *dev)
{
    /* crypto hw module init */
    crypto_hw_init();
    crypto_reset();

    /* pke hw module init */
    pke_init();

    return RT_EOK;
}

static rt_err_t drv_crypto_ioctl(rt_crypto_device_t *dev, int cmd, void *args)
{
    switch (cmd) {
        case RT_DEVICE_CTRL_RESUME:
            crypto_hw_init();
            crypto_reset();
            break;
        case RT_DEVICE_CTRL_SUSPEND:

            break;
        case RT_DEVICE_CTRL_CONFIG:

            break;
        default:
            break;
    }

    return RT_EOK;
}

static const struct rt_crypto_ops rt_crypto_ops =
{
    drv_crypto_reset,
    drv_crypto_ioctl
};

static void __fast drv_crypto_lock(rt_uint32_t ctype)
{
    if (ctype == CRYPTO_MODULE_CIPHER) {
        rt_mutex_take(&crypto_dev.lock_cipher, RT_WAITING_FOREVER);
    } else if (ctype == CRYPTO_MODULE_PK) {
        rt_mutex_take(&crypto_dev.lock_pk, RT_WAITING_FOREVER);
    } else if (ctype == CRYPTO_MODULE_HASH) {
        rt_mutex_take(&crypto_dev.lock_hash, RT_WAITING_FOREVER);
    } else if (ctype == CRYPTO_MODULE_RNG) {
        rt_mutex_take(&crypto_dev.lock_rng, RT_WAITING_FOREVER);
    }
}

static void __fast drv_crypto_unlock(rt_uint32_t ctype)
{
    if (ctype == CRYPTO_MODULE_CIPHER) {
        rt_mutex_release(&crypto_dev.lock_cipher);
    } else if (ctype == CRYPTO_MODULE_PK) {
        rt_mutex_release(&crypto_dev.lock_pk);
    } else if (ctype == CRYPTO_MODULE_HASH) {
        rt_mutex_release(&crypto_dev.lock_hash);
    } else if (ctype == CRYPTO_MODULE_RNG) {
        rt_mutex_release(&crypto_dev.lock_rng);
    }
}

static int drv_crypto_init(void)
{
    crypto_dev.ops = &rt_crypto_ops;

    rt_crypto_register(&crypto_dev, "crypto", RT_DEVICE_FLAG_RDWR, NULL);

    /* default init crypto */
#ifdef RT_USING_DEVICE_OPS
    crypto_dev.parent.ops->init(&(crypto_dev.parent));
#else
    crypto_dev.parent.init(&(crypto_dev.parent));
#endif

    return RT_EOK;
}
INIT_BOARD_EXPORT(drv_crypto_init);

/**
 * Crypto lib porting as follows:
 */
crypto_errno_t __fast tih_aes_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                                    uint8 *key,uint32 keybytes, uint32 func,
                                    uint32 mode, uint8 *iv)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = aes_crypt(in, out, nbytes, key, keybytes, func, mode, iv);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_aes_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes,
                                        uint8 *key, uint32 keybytes, uint32 func,
                                        uint32 mode, uint8 *count,uint32 ctr_step)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = aes_crypt_ctr(in, out, nbytes, key, keybytes, func, mode, count, ctr_step);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_aes_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes,
                                        uint8 *key, uint32 keybytes, uint32 func,
                                        uint32 mode, uint8 *tw, uint8 *xtskey)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = aes_crypt_xts(in, out, nbytes, key, keybytes, func, mode, tw, xtskey);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_sm4_crypt(uint8 *in, uint8 *out, uint32 nbytes,
                                    uint8 *key, uint32 func, uint32 mode, uint8 *iv)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = sm4_crypt(in, out, nbytes, key, func, mode, iv);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_sm4_crypt_ctr(uint8 *in, uint8 *out, uint32 nbytes,
                                        uint8 *key, uint32 func, uint32 mode,
                                        uint8 *count, uint32 ctr_step)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = sm4_crypt_ctr(in, out, nbytes, key, func, mode, count, ctr_step);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_sm4_crypt_xts(uint8 *in, uint8 *out, uint32 nbytes,
                                        uint8 *key, uint32 func, uint32 mode,
                                        uint8 *tw, uint8 *xtskey)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = sm4_crypt_xts(in, out, nbytes, key, func, mode, tw, xtskey);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_rsa_keypair_gen(uint8 *p, uint8 *q,
                               uint8 *dp, uint8 *dq,
                               uint8 *u, uint8 *e,
                               uint8 *n, uint32 nbits)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_RNG);
    err = rsa_crt_keypair_gen(p, q, dp, dq, u, e, n, nbits);
    drv_crypto_unlock(CRYPTO_MODULE_RNG);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_rsa_encrypt(uint8 *plain,
                           uint8 *e, uint8 *n,
                           uint8 *cipher,
                           uint32 nbits)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    err = rsa_encrypt(plain, e, n, cipher, nbits);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_rsa_decrypt(uint8 *cipher,
                           uint8 *p, uint8 *q,
                           uint8 *dp, uint8 *dq,
                           uint8 *u,
                           uint8 *plain,
                           uint32 nbits)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    err = rsa_crt_decrypt(cipher, p, q, dp, dq, u, plain, nbits);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_keypair_gen(uint8 *prikey, uint8 *pubkey)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_RNG);
    err = sm2_keypair_gen(prikey, pubkey);
    drv_crypto_unlock(CRYPTO_MODULE_RNG);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_e_get(uint8 *m, uint32 m_nbytes, uint8 *z, uint8 *e)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm2_e_get(m, m_nbytes, z, e);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sm2_z_get(uint8 *id, uint32 idbytes, uint8 *pubkey, uint8 *z)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm2_z_get(id, idbytes, pubkey, z);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sm2_sign(uint8 e[32], uint8 prikey[32], uint8 signature[64])
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_RNG);
    err = sm2_sign(e, prikey, signature);
    drv_crypto_unlock(CRYPTO_MODULE_RNG);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_verify(uint8 e[32], uint8 pubkey[64], uint8 signature[64])
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    err = sm2_verify(e, pubkey, signature);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_encrypt(uint8 *m, uint32 m_nbytes,
                           uint8 pubkey[64],
                           uint8 *c, uint32 *c_nbytes)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_HASH);
    drv_crypto_lock(CRYPTO_MODULE_RNG);
    err = sm2_encrypt(m, m_nbytes, pubkey, c, c_nbytes);
    drv_crypto_unlock(CRYPTO_MODULE_RNG);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_decrypt(uint8 *c, uint32 c_nbytes,
                           uint8 prikey[32],
                           uint8 *m, uint32 *m_nbytes)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm2_decrypt(c, c_nbytes, prikey, m, m_nbytes);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sm2_key_exchange(sm2_exchange_role_e role,
                                uint8 *da, uint8 *pb,
                                uint8 *ra, uint8 *rpa,
                                uint8 *rb,
                                uint8 *za, uint8 *zb,
                                uint32 k_nbytes,
                                uint8 *ka, uint8 *sl, uint8 *sa)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_PK);
    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm2_key_exchange(role, da, pb, ra, rpa, rb, za, zb, k_nbytes, ka, sl, sa);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return err;
}

crypto_errno_t __fast tih_sha1_init(void)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha1_init();
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha1_update(uint8 *in, uint32 nbytes)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha1_update(in, nbytes);
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha1_final(uint8 *out)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha1_final(out);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha224_init(void)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha224_init();
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha224_update(uint8 *in, uint32 nbytes)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha224_update(in, nbytes);
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha224_final(uint8 *out)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha224_final(out);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha256_init(void)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha256_init();
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha256_update(uint8 *in, uint32 nbytes)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha256_update(in, nbytes);
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sha256_final(uint8 *out)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sha256_final(out);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sm3_init(void)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm3_init();
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sm3_update(uint8 *in, uint32 nbytes)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm3_update(in, nbytes);
//    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_sm3_final(uint8 *out)
{
    crypto_errno_t err = TIH_OK;

//    drv_crypto_lock(CRYPTO_MODULE_HASH);
    err = sm3_final(out);
    drv_crypto_unlock(CRYPTO_MODULE_HASH);

    return err;
}

crypto_errno_t __fast tih_cmac_init(cmac_ctx_t *ctx, uint8 *key, int32 keylen, uint8 *iv, int32 ivlen, uint32 alg)
{
    crypto_errno_t err = TIH_OK;
    err = cmac_init(ctx, key, keylen, iv, ivlen, alg);

    return err;
}

crypto_errno_t __fast tih_cmac_update(cmac_ctx_t *ctx, uint8 *data, uint32 len)
{
    crypto_errno_t err = TIH_OK;
    drv_crypto_lock(CRYPTO_MODULE_CIPHER);
    err = cmac_update(ctx, data, len);
    drv_crypto_unlock(CRYPTO_MODULE_CIPHER);

    return err;
}

crypto_errno_t __fast tih_cmac_final(cmac_ctx_t *ctx, uint8 *out, uint32 *len)
{
    crypto_errno_t err = TIH_OK;
    err = cmac_final(ctx, out, len);

    return err;
}

crypto_errno_t __fast tih_rand_get(uint8 *rand, uint32 byteLen)
{
    crypto_errno_t err = TIH_OK;

    drv_crypto_lock(CRYPTO_MODULE_RNG);
    err = rand_get(rand, byteLen);
    drv_crypto_unlock(CRYPTO_MODULE_RNG);

    return err;
}

/* ECC GF(p) point multiplication, Q = [k]P ->(affine point) */
int32 __fast tih_ecp_mul(ecc_curve_t *curve, ecc_point_t *Q, uint32 *k, ecc_point_t *P)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = ecc_point_mul(curve, k, P->x, P->y, Q->x, Q->y);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* ECC GF(p) multiple point multiplication, Q = [k1]P1 + [k2]P ->(affine point) */
int32 __fast tih_ecp_muladd(ecc_curve_t *curve, ecc_point_t *Q, uint32 *k1, ecc_point_t *P1,uint32 *k2,
                     ecc_point_t *P2)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = ecc_point_shamir(curve, k1, P1->x, P1->y, k2, P2->x, P2->y, Q->x, Q->y);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* ECC GF(p) point addition, Q = P1 + P2 ->(affine point) */
int32 __fast tih_ecp_add(ecc_curve_t *curve, ecc_point_t *P1, ecc_point_t *P2, ecc_point_t *Q)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = ecc_point_add(curve, P1->x, P1->y, P2->x, P2->y, Q->x, Q->y);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* ECC GF(p) double point, Q = [2]P ->(affine point) */
int32 __fast tih_ecp_double(ecc_curve_t *curve, ecc_point_t *P, ecc_point_t *Q)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = ecc_point_double(curve, P->x, P->y, Q->x, Q->y);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* ECC GF(p) test point P on or not on the curve ->(affine point) */
int32 __fast tih_ecp_check(ecc_curve_t *curve, ecc_point_t *P)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = ecc_point_verify(curve, P->x, P->y);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

int32 __fast tih_mpi_add(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);

    ret = bn_add(a, b, out, ab_nword);

    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

int32 __fast tih_mpi_sub(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);

    ret = bn_sub(a, b, out, ab_nword);

    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

int32 __fast tih_mpi_mul(const uint32 *a, const uint32 *b, uint32 *out, uint32 ab_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);

    ret = bn_mul(a, b, out, ab_nword);

    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* function: compare big integer a and b
 * return:
 *     0:a=b,   1:a>b,   -1: a<b
 */
int32 __fast tih_mpi_cmp(uint32 *a, uint32 *b, uint32 a_nword, uint32 b_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);

    ret = bn_cmp(a, b, a_nword, b_nword);

    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* c = a mod b(b must be odd num) */
int32 __fast tih_mpi_mod_mpi(uint32 *a, uint32 a_nword, uint32 *b, uint32 b_nword, uint32 *c)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);

    ret = bn_mod(a, b, c, a_nword, b_nword);

    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* out = (a+b) mod modulus */
int32 __fast tih_mpi_add_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = bn_modadd(modulus, a, b, out, nword);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* out = (a-b) mod modulus */
int32 __fast tih_mpi_sub_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = bn_modsub(modulus, a, b, out, nword);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* out = (a*b) mod modulus(odd) */
int32 __fast tih_mpi_mul_mod(const uint32 *modulus, const uint32 *a, const uint32 *b,
                      uint32 *out, uint32 nwords)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = bn_modmul(modulus, a, b, out, nwords);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* ainv = a^(-1) mod modulus */
int32 __fast tih_mpi_inv_mod(const uint32 *modulus, const uint32 *a, uint32 *ainv,
                      uint32 mod_nword, uint32 a_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = bn_modinv(modulus, a, ainv, mod_nword, a_nword);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

/* out = (base^exp) mod modulus(odd) */
int32 __fast tih_mpi_exp_mod(const uint32 *modulus, const uint32 *exp, const uint32 *base,
                      uint32 *out, uint32 mod_nword, uint32 exp_nword)
{
    int32 ret;
    drv_crypto_lock(CRYPTO_MODULE_PK);
    ret = bn_modexp(modulus, exp, base, out, mod_nword, exp_nword);
    drv_crypto_unlock(CRYPTO_MODULE_PK);

    return -ret;
}

#endif

