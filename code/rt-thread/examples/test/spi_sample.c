#include <rtthread.h>
#include <rtdevice.h>
#include <tih/scu.h>

#define SPI_DEVICE_NAME_SAMPLE     "spi11"



void spi_thread_entry1(void* parameter)
{   
    uint8 send_buff[3], recv_buff[3];
    uint16 ad_value;
    struct rt_spi_message msg; 
    struct rt_spi_device *spi_device1;
    uint16 count=100;
    
    spi_device1 = (struct rt_spi_device *)rt_device_find(parameter);
    if (!spi_device1)
    {
        rt_kprintf("spi sample run failed! can't find %s device!\n", parameter);
    }
    else
    {
        /* send msg */
        send_buff[0] = 0x01; // 1--start up bit
        send_buff[1] = 0x80 | 0x20; // single | Channel 0 | MSB
        send_buff[2] = 0x00;
        msg.send_buf   = send_buff;
        msg.recv_buf   = recv_buff;
        msg.length     = 3;
        msg.cs_take    = 1;
        msg.cs_release = 1;
        msg.next = NULL;
        
        while (count--)
        {
            rt_spi_transfer_message(spi_device1, &msg);
            
            ad_value = ((recv_buff[1] << 8) | recv_buff[2]) & 0x0fff;// 12bit
            
            if(ad_value < 2060 | ad_value > 2070)
                printf("fail \n");

           printf("ad_value = %d.\n", ad_value);
            
            rt_thread_mdelay(100);
        }

    }
}

void spi_thread_entry2(void* parameter)
{   
    uint8 send_buff[3], recv_buff[3];
    uint16 ad_value;
    struct rt_spi_message msg; 
    struct rt_spi_device *spi_device2;
    uint16 count=100;
    
    spi_device2 = (struct rt_spi_device *)rt_device_find(parameter);
    if (!spi_device2)
    {
        rt_kprintf("spi sample run failed! can't find %s device!\n", parameter);
    }
    else
    {
        /* send msg */
        send_buff[0] = 0x01; // 1--start up bit
        send_buff[1] = 0xc0 | 0x20; // single | Channel 0 | MSB
        send_buff[2] = 0x00;
        msg.send_buf   = send_buff;
        msg.recv_buf   = recv_buff;
        msg.length     = 3;
        msg.cs_take    = 1;
        msg.cs_release = 1;
        msg.next = NULL;
        
        while (count--)
        {
            rt_spi_transfer_message(spi_device2, &msg);
            
            ad_value = ((recv_buff[1] << 8) | recv_buff[2]) & 0x0fff;// 12bit
            
            if(ad_value < 4086 | ad_value > 4096)
                printf("fail \n");

            printf("ad_value = %d.\n", ad_value);
            
            rt_thread_mdelay(100);
        }

    }
}

static void spi_sample(int argc, char *argv[])
{
    struct rt_spi_configuration cfg;
    char name[RT_NAME_MAX];
    static struct rt_spi_device spi_device;
    
    if (argc == 2)
    {
        rt_strncpy(name, argv[1], RT_NAME_MAX);
    }
    else
    {
        rt_strncpy(name, SPI_DEVICE_NAME_SAMPLE, RT_NAME_MAX);
    }
    
#ifndef CONFIG_MPW
    scu_pin_mux_set(SCU_PIN_MUX_MODE1_1, SCU_PIN_MUX_MODE2_S_U1);
#endif

    rt_spi_bus_attach_device(&spi_device, name, "spi1", (void *)NULL);
    
    /* config spi */
    cfg.data_width = 8;
    cfg.mode = RT_SPI_MASTER | RT_SPI_MODE_0 | RT_SPI_MSB;
    cfg.max_hz = 1 * 1000 *1000;

    rt_spi_configure(&spi_device, &cfg);
    rt_thread_t tid1, tid2;
       
    /* 创建线程 */
    tid1 = rt_thread_create("spi1",
                    spi_thread_entry1, 
                    name,
                    1024, 
                    2, 
                    10);
    /* 创建成功则启动线程 */
    if (tid1 != RT_NULL)
        rt_thread_startup(tid1);
        
     tid2 = rt_thread_create("spi2",
                    spi_thread_entry2, 
                    name,
                    1024, 
                    2, 
                    10);
    /* 创建成功则启动线程 */
    if (tid2 != RT_NULL)
        rt_thread_startup(tid2);
              
    return 0;
}

MSH_CMD_EXPORT(spi_sample, spi sample);