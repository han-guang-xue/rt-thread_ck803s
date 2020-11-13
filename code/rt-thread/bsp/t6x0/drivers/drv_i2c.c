#include <rthw.h>
#include <rtdevice.h>
#include <tih/scu.h>
#include <tih/i2c.h>

#ifdef RT_USING_I2C

struct t610_i2c_bus
{
    struct rt_i2c_bus_device parent;
};

static rt_size_t __fast drv_i2c_xfer(struct rt_i2c_bus_device *bus,
                              struct rt_i2c_msg msgs[], rt_uint32_t num)
{
    struct rt_i2c_msg *msg;
    rt_uint32_t i;
    rt_err_t ret = RT_ERROR;

    for (i = 0; i < num; i++) {
        msg = &msgs[i];

        if (msg->flags & RT_I2C_RD) {
            if (i2c_is_busy()) {
                return 0;
            }

            /* 1. write address */
            msg->addr = (msg->addr << 1) | 0x01;// read
            ret = i2c_send((char)msg->addr, 1, 0); // set start signal and address data + read
            if (ret) {
                return 0;
            }
            /* 2. read the first (nbytes-1) bytes */
            for (i = 0; i < (msg->len - 1); i++) {
                ret = i2c_recv(&msg->buf[i], 0);
                if (ret) {
                    return 0;
                }
            }
            /* 3. read the last byte */
            ret = i2c_recv(&msg->buf[i], 1);
            if (ret) {
                return 0;
            }
        } else {
            if (i2c_is_busy()) {
                return 0;
            }

            /* 1. write address */
            msg->addr = (msg->addr << 1) & 0xFE;//write
            ret = i2c_send((char)msg->addr, 1, 0); // set start signal and address data + write
            if (ret) {
                return 0;
            }
            /* 2. write the first (nbytes-1) bytes */
            for (i = 0; i< (msg->len - 1); i++) {
                ret = i2c_send((char)msg->buf[i], 0, 0);
                if (ret) {
                    return 0;
                }
            }
            /* 3. write the last byte */
            ret = i2c_send((char)msg->buf[i], 0, 1);
            if (ret) {
                return 0;
            }
        }
    }
    ret = i;

    return ret;
}

static const struct rt_i2c_bus_device_ops i2c_ops =
{
    drv_i2c_xfer,
    RT_NULL,
    RT_NULL
};

static int drv_i2c_init(void)
{
    static struct t610_i2c_bus t610_i2c0;
    i2c_config_t config;

    config.speed = 100000;
    i2c_hw_init(&config);

    rt_memset((void *)&t610_i2c0, 0, sizeof(struct t610_i2c_bus));
    t610_i2c0.parent.ops = &i2c_ops;
    rt_i2c_bus_device_register(&t610_i2c0.parent, "i2c0");

    return 0;
}
INIT_DEVICE_EXPORT(drv_i2c_init);

#endif /* RT_USING_I2C */
