#include <rthw.h>
#include <rtdevice.h>

#ifdef PKG_USING_MBEDTLS
#include <mbedtls/threading.h>
#endif

#define DEBUG_LEVEL         DBG_LOG
#define DBG_SECTION_NAME    "[crypto]"
#define DEBUG_COLOR
#include <rtdbg.h>

#ifdef RT_USING_CRYPTO

static rt_device_t crypto_dev = RT_NULL;

static void rt_tls_env_init(void)
{
#ifdef PKG_USING_MBEDTLS
#if defined(MBEDTLS_THREADING_C)
#if defined(MBEDTLS_THREADING_ALT)
    /* mbedtls thread support setting */
    mbedtls_threading_set_alt(threading_mutex_init_rtt,
                              threading_mutex_free_rtt,
                              threading_mutex_lock_rtt,
                              threading_mutex_unlock_rtt);
#endif /* MBEDTLS_THREADING_ALT */
#endif /* MBEDTLS_THREADING_C */
#endif /* PKG_USING_MBEDTLS */
}

static rt_err_t rt_crypto_init(rt_device_t dev)
{
    rt_err_t result = RT_EOK;
    rt_crypto_device_t *crypto;

    RT_ASSERT(dev != RT_NULL);

    crypto = (rt_crypto_device_t *)dev;

    /* init mutex */
    rt_mutex_init(&(crypto->lock_cipher), "lock_cipher", RT_IPC_FLAG_FIFO);
    rt_mutex_init(&(crypto->lock_pk),     "lock_pk",     RT_IPC_FLAG_FIFO);
    rt_mutex_init(&(crypto->lock_hash),   "lock_hash",   RT_IPC_FLAG_FIFO);
    rt_mutex_init(&(crypto->lock_rng),    "lock_rng",    RT_IPC_FLAG_FIFO);

    if (crypto->ops->reset) {
        result = crypto->ops->reset(crypto);
    }

    return result;
}

static rt_err_t rt_crypto_open(rt_device_t dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t rt_crypto_close(rt_device_t dev)
{
    return RT_EOK;
}

static rt_size_t rt_crypto_read(rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size)
{
    return 0;
}

static rt_size_t rt_crypto_write(rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size)
{
    return 0;
}

static rt_err_t rt_crypto_ioctl(rt_device_t dev, int cmd, void *args)
{
    rt_err_t result = RT_EOK;
    rt_crypto_device_t *crypto;

    RT_ASSERT(dev != RT_NULL);

    crypto = (rt_crypto_device_t *)dev;

    if (crypto->ops->ioctl) {
       result = crypto->ops->ioctl(crypto, cmd, args);
    }

    return result;
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops crypto_ops =
{
    rt_crypto_init,
    rt_crypto_open,
    rt_crypto_close,
    rt_crypto_read,
    rt_crypto_write,
    rt_crypto_ioctl
};
#endif

rt_err_t rt_crypto_register(rt_crypto_device_t *crypto,
                               const char      *name,
                               rt_uint32_t      flag,
                               void            *data)
{
    rt_err_t ret;
    struct rt_device *device;

    RT_ASSERT(crypto != RT_NULL);

    device = &(crypto->parent);
    device->type        = RT_Device_Class_Miscellaneous;
    device->rx_indicate = RT_NULL;
    device->tx_complete = RT_NULL;

#ifdef RT_USING_DEVICE_OPS
    device->ops         = &crypto_ops;
#else
    device->init        = rt_crypto_init;
    device->open        = rt_crypto_open;
    device->close       = rt_crypto_close;
    device->read        = rt_crypto_read;
    device->write       = rt_crypto_write;
    device->control     = rt_crypto_ioctl;
#endif
    device->user_data   = data;

    crypto_dev = (rt_device_t)crypto;

    /* register a character stand alone device */
    ret = rt_device_register(device, name, flag);

    /* init tls env */
    rt_tls_env_init();

    return ret;
}
#endif
