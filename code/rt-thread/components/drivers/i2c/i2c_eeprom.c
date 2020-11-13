#include <stdint.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <tih/scu.h>

#define EEP_ADDR             0x50

struct i2c_eeprom_device
{
    struct rt_device                eeprom_device;
    struct rt_i2c_bus_device *      rt_i2c_bus_device;
    struct rt_mutex                 lock;
    void *                          user_data;
};

static struct i2c_eeprom_device i2c_eeprom_device;
static struct rt_i2c_bus_device *eep_i2c_bus = RT_NULL;

/* RT-Thread device interface */
static rt_err_t i2c_eeprom_init(rt_device_t dev)
{
    return RT_EOK;
}

static rt_err_t i2c_eeprom_open(rt_device_t dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t i2c_eeprom_close(rt_device_t dev)
{
    return RT_EOK;
}

static rt_err_t i2c_eeprom_control(rt_device_t dev, int cmd, void *args)
{
    return RT_EOK;
}

static rt_size_t i2c_eeprom_read(rt_device_t dev,
                                   rt_off_t pos,
                                   void* buffer,
                                   rt_size_t size)
{
    rt_uint8_t addr[2];
    struct rt_i2c_msg msg[2];
    rt_size_t ret = 0;
    RT_ASSERT(dev != 0);

    if(pos > 0x3fff)
    {
        return 0;
    }

    if(pos + size > 0x4000)
    {
        size = 0x4000 - pos;
    }

    msg[0].addr     = EEP_ADDR;
    msg[0].flags    = RT_I2C_WR & RT_I2C_ADDR_10BIT;
    addr[0] = (pos >> 8) & 0xff;
    addr[1] = pos & 0xff;
    msg[0].buf      = (rt_uint8_t *) addr;
    msg[0].len      =  2;

    msg[1].addr     = EEP_ADDR;
    msg[1].flags    = RT_I2C_RD | RT_I2C_ADDR_10BIT;
    msg[1].buf      = (rt_uint8_t *) buffer;
    msg[1].len      = size;

    rt_mutex_take(&i2c_eeprom_device.lock, RT_WAITING_FOREVER);
    rt_i2c_transfer(i2c_eeprom_device.rt_i2c_bus_device, &msg[0], 1);
    ret = rt_i2c_transfer(i2c_eeprom_device.rt_i2c_bus_device, &msg[1], 1);
    rt_mutex_release(&i2c_eeprom_device.lock);
    
    return (ret == size) ? size : -RT_ERROR;
}

static rt_size_t i2c_eeprom_write(rt_device_t dev,
                                    rt_off_t pos,
                                    const void* buffer,
                                    rt_size_t size)
{
    rt_uint8_t addr[2];
    struct rt_i2c_msg msg;
    rt_uint8_t buf[66];
    rt_size_t ret = 0;
    rt_uint8_t len = 0;
    rt_size_t total_len = size;
    
    RT_ASSERT(dev != 0);

    if (pos > 0x3fff)
    {
         return 0;
    }
        
    if (pos + size > 0x4000)
    {
        size = 0x4000 - pos;
    }

    msg.addr     = EEP_ADDR;
    msg.flags    = RT_I2C_WR;
    
    len = 64 - (pos%64);
    
    if (size > len)
    {
        addr[0] = (pos >> 8) & 0xff;
        addr[1] = pos & 0xff;
    
        buf[0] = addr[0];
        buf[1] = addr[1];
    
        for (int i = 0; i < len; i++)
        {
            buf[i+2] = ((rt_uint8_t *)buffer)[i];
        }
        msg.buf      =  buf;
        msg.len      =  2 + len;

        rt_mutex_take(&i2c_eeprom_device.lock, RT_WAITING_FOREVER);
        ret = rt_i2c_transfer(i2c_eeprom_device.rt_i2c_bus_device, &msg, 1) -2;
        rt_mutex_release(&i2c_eeprom_device.lock);
        rt_thread_mdelay(50);  
    
        pos = pos + len;
        buffer = (rt_uint8_t *)buffer + len;
        size = size - len;
    }
    
    while (size > 64)
    {
        addr[0] = (pos >> 8) & 0xff;
        addr[1] = pos & 0xff;
    
        buf[0] = addr[0];
        buf[1] = addr[1];
    
        for (int i = 0; i < 64; i++)
        {
            buf[i+2] = ((rt_uint8_t *)buffer)[i];
        }
        msg.addr     = EEP_ADDR;
        msg.flags    = RT_I2C_WR;
        msg.buf      =  buf;
        msg.len      =  66;

        rt_mutex_take(&i2c_eeprom_device.lock, RT_WAITING_FOREVER);
        ret = ret + rt_i2c_transfer(i2c_eeprom_device.rt_i2c_bus_device, &msg, 1) - 2;
        rt_mutex_release(&i2c_eeprom_device.lock);
        rt_thread_mdelay(50);  
    
        pos = pos + 64;
        buffer = (rt_uint8_t *)buffer + 64;
        size = size - 64;
    }
    
    addr[0] = (pos >> 8) & 0xff;
    addr[1] = pos & 0xff;
    
    buf[0] = addr[0];
    buf[1] = addr[1];
    

    for(int i = 0; i < size; i++)
    {
        buf[i+2] = ((rt_uint8_t *)buffer)[i];
    }
    msg.addr     = EEP_ADDR;
    msg.flags    = RT_I2C_WR;
    msg.buf      =  buf;
    msg.len      =  2 + size;

    rt_mutex_take(&i2c_eeprom_device.lock, RT_WAITING_FOREVER);
    ret = ret + rt_i2c_transfer(i2c_eeprom_device.rt_i2c_bus_device, &msg, 1) - 2;
    rt_mutex_release(&i2c_eeprom_device.lock);
    rt_thread_mdelay(50);  
    
    if (ret == total_len)
    {
        rt_kprintf("EEP write ok \n");
        return ret;       
    }
    else
    {
        rt_kprintf("EEP write failed ,ERR is: %d \n",ret);
        return -RT_ERROR;       
    }
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops i2c_eeprom_ops =
{
    i2c_eeprom_init,
    i2c_eeprom_open,
    i2c_eeprom_close,
    i2c_eeprom_read,
    i2c_eeprom_write,
    i2c_eeprom_control
};
#endif

int eeprom_24aa128_init(void)
{
    const char * eeprom_device_name = "24aa128";
    const char * i2c_bus_name = "i2c0";
    
    /* initialize mutex */
    if (rt_mutex_init(&i2c_eeprom_device.lock, i2c_bus_name, RT_IPC_FLAG_FIFO) != RT_EOK)
    {
        rt_kprintf("init i2c lock mutex failed\n");
        return -RT_ENOSYS;
    }

    eep_i2c_bus = rt_i2c_bus_device_find(i2c_bus_name);
    
    if(eep_i2c_bus == RT_NULL)
    {
        rt_kprintf("i2c bus %s not found!\r\n", i2c_bus_name);
        return -RT_ENOSYS;
    }
    i2c_eeprom_device.rt_i2c_bus_device = eep_i2c_bus;



    /* register device */
    i2c_eeprom_device.eeprom_device.type    = RT_Device_Class_MTD;
#ifdef RT_USING_DEVICE_OPS
    i2c_eeprom_device.eeprom_device.ops     = &i2c_eeprom_ops;
#else
    i2c_eeprom_device.eeprom_device.init    = i2c_eeprom_init;
    i2c_eeprom_device.eeprom_device.open    = i2c_eeprom_open;
    i2c_eeprom_device.eeprom_device.close   = i2c_eeprom_close;
    i2c_eeprom_device.eeprom_device.read    = i2c_eeprom_read;
    i2c_eeprom_device.eeprom_device.write   = i2c_eeprom_write;
    i2c_eeprom_device.eeprom_device.control = i2c_eeprom_control;
#endif
    /* no private */
    i2c_eeprom_device.eeprom_device.user_data = RT_NULL;

    rt_device_register(&i2c_eeprom_device.eeprom_device, eeprom_device_name,
                      RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_STANDALONE);

    return RT_EOK;
}

INIT_DEVICE_EXPORT(eeprom_24aa128_init);
