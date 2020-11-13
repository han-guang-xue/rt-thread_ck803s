#include <stdint.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <tih/scu.h>

static char mcp3202_input_mode = 0xa0;

struct spi_adc_device
{
    struct rt_device                adc_device;
    struct rt_spi_device *          rt_spi_device;
    struct rt_mutex                 lock;
    void *                          user_data;
};

static struct spi_adc_device spi_adc_device;

/* RT-Thread device interface */
static rt_err_t mcp3202_adc_init(rt_device_t dev)
{
    return RT_EOK;
}

static rt_err_t mcp3202_adc_open(rt_device_t dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t mcp3202_adc_close(rt_device_t dev)
{
    return RT_EOK;
}

static rt_err_t mcp3202_adc_control(rt_device_t dev, int cmd, void *args)
{
    RT_ASSERT(dev != RT_NULL);

    if (cmd == RT_DEVICE_CTRL_CONFIG)
    {
        mcp3202_input_mode = (*(char *)args) & 0xe0;
        return RT_EOK;
    }

    return RT_EINVAL;
}

static rt_size_t mcp3202_adc_read(rt_device_t dev,
                                   rt_off_t pos,
                                   void* buffer,
                                   rt_size_t size)
{
    uint8 send_buff[3], recv_buff[3];
    uint16 ad_value;
    struct rt_spi_message msg; 
    rt_size_t count = 0;
    
    /* send msg */
    send_buff[0] = 0x01; // 1--start up bit
    send_buff[1] = mcp3202_input_mode; // single | Channel 0 | MSB
    send_buff[2] = 0x00;
  //  send_buff[3] = 0x00;
    msg.send_buf   = send_buff;
    msg.recv_buf   = recv_buff;
    msg.length     = 3;
    msg.cs_take    = 1;
    msg.cs_release = 1;
    msg.next = NULL;
        
    while ((size > 0) && (size > 1))
    {
        rt_mutex_take(&spi_adc_device.lock, RT_WAITING_NO);
        rt_spi_transfer_message(spi_adc_device.rt_spi_device, &msg);
        rt_mutex_release(&spi_adc_device.lock);
        
        ad_value = ((recv_buff[1] << 8) | recv_buff[2]) & 0x0fff;// 12bit
        *(uint16 *)buffer = ad_value;
        buffer = buffer + 2;
        size = size -2;
        count++;
        rt_thread_mdelay(10);
    }
    

    return count;
}

static rt_size_t mcp3202_adc_write(rt_device_t dev,
                                    rt_off_t pos,
                                    const void* buffer,
                                    rt_size_t size)
{
    return RT_EOK;
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops mcp3202_device_ops =
{
    mcp3202_adc_init,
    mcp3202_adc_open,
    mcp3202_adc_close,
    mcp3202_adc_read,
    mcp3202_adc_write,
    mcp3202_adc_control
};
#endif

int mcp3202_init(void)
{
   static struct rt_spi_device *rt_spi_device;
    static struct rt_spi_device spi_device;
    rt_spi_device = &spi_device;
    const char * adc_device_name = "mcp3202";
    const char * spi_device_name = "spi11";
    
    /* initialize mutex */
    if (rt_mutex_init(&spi_adc_device.lock, spi_device_name, RT_IPC_FLAG_FIFO) != RT_EOK)
    {
        rt_kprintf("init sd lock mutex failed\n");
        return -RT_ENOSYS;
    }

#ifndef CONFIG_MPW
    scu_pin_mux_set(SCU_PIN_MUX_MODE1_1, SCU_PIN_MUX_MODE2_S_U1);
#endif

    rt_spi_bus_attach_device(rt_spi_device, spi_device_name, "spi1", (void *)NULL);
    
    rt_spi_device = (struct rt_spi_device *)rt_device_find(spi_device_name);
    
    if(rt_spi_device == RT_NULL)
    {
        rt_kprintf("spi device %s not found!\r\n", spi_device_name);
        return -RT_ENOSYS;
    }
    spi_adc_device.rt_spi_device = rt_spi_device;

    /* config spi */
    {
        struct rt_spi_configuration cfg;
        cfg.data_width = 8;
        cfg.mode = RT_SPI_MASTER | RT_SPI_MODE_0 | RT_SPI_MSB;
        cfg.max_hz = 1 * 1000 *1000;
        rt_spi_configure(spi_adc_device.rt_spi_device, &cfg);
    }


    /* register device */
    spi_adc_device.adc_device.type    = RT_Device_Class_SPIDevice;
#ifdef RT_USING_DEVICE_OPS
    spi_adc_device.adc_device.ops     = &mcp3202_device_ops;
#else
    spi_adc_device.adc_device.init    = mcp3202_adc_init;
    spi_adc_device.adc_device.open    = mcp3202_adc_open;
    spi_adc_device.adc_device.close   = mcp3202_adc_close;
    spi_adc_device.adc_device.read    = mcp3202_adc_read;
    spi_adc_device.adc_device.write   = mcp3202_adc_write;
    spi_adc_device.adc_device.control = mcp3202_adc_control;
#endif
    /* no private */
    spi_adc_device.adc_device.user_data = RT_NULL;

    rt_device_register(&spi_adc_device.adc_device, adc_device_name,
                      RT_DEVICE_FLAG_RDONLY | RT_DEVICE_FLAG_STANDALONE);

    return RT_EOK;
}

INIT_DEVICE_EXPORT(mcp3202_init);
