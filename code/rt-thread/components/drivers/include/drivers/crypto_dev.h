#ifndef __CRYPTO_DEV_H__
#define __CRYPTO_DEV_H__
#include <rtthread.h>

struct rt_crypto_device
{
    struct rt_device parent;

    struct rt_mutex lock_cipher;
    struct rt_mutex lock_pk;
    struct rt_mutex lock_hash;
    struct rt_mutex lock_rng;

    const struct rt_crypto_ops *ops;
};

typedef struct rt_crypto_device rt_crypto_device_t;

struct rt_crypto_ops
{
    rt_err_t (*reset)(rt_crypto_device_t *dev);
    rt_err_t (*ioctl)(rt_crypto_device_t *dev, int cmd, void *args);
};

rt_err_t rt_crypto_register(rt_crypto_device_t *crypto,
                               const char     *name,
                               rt_uint32_t     flag,
                               void           *data);


#endif /*__CRYPTO_DEV_H__ */
