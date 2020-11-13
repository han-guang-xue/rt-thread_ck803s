#include <rtthread.h>
#include <rtdevice.h>
 
#ifndef EEP_I2CBUS_NAME
#define EEP_I2CBUS_NAME          "i2c0"  
#endif
 
#define EEP_ADDR             0x50  
 
rt_uint8_t wr_data = 0x00;
#define SIZE sizeof(wr_data)	
static rt_mutex_t dynamic_mutex_i2c = RT_NULL;
static struct rt_i2c_bus_device *eep_i2c_bus = RT_NULL;
 

rt_err_t eeprom_iic_write(rt_uint8_t *write_addr, rt_uint8_t data, rt_uint32_t number)
{
    rt_uint8_t buf[3];
    buf[0] = write_addr[0];
    buf[1] = write_addr[1];
    buf[2] = data;
    rt_size_t result;
  
    result = rt_i2c_master_send(eep_i2c_bus, EEP_ADDR, RT_I2C_WR, buf, 3);
    rt_thread_mdelay(50);  
    
    if (result == 3)
    {
        rt_kprintf("EEP write ok \n");
        return RT_EOK;       
    }
    else
    {
        rt_kprintf("EEP write failed ,ERR is: %d \n",result);
        return -RT_ERROR;       
    }
}

rt_err_t eeprom_iic_read(rt_uint8_t *read_addr, rt_uint32_t len, rt_uint8_t *buf)
{   

    struct rt_i2c_msg msg[2];
    rt_size_t ret = 0;


    msg[0].addr     = EEP_ADDR;
    msg[0].flags    = RT_I2C_WR & RT_I2C_ADDR_10BIT;
    msg[0].buf      = (rt_uint8_t *) read_addr;
    msg[0].len      =  2;

    msg[1].addr     = EEP_ADDR;
    msg[1].flags    = RT_I2C_RD | RT_I2C_ADDR_10BIT;
    msg[1].buf      = buf;
    msg[1].len      = len;

    
    rt_i2c_transfer(eep_i2c_bus, &(msg[0]), 1);

    ret = rt_i2c_transfer(eep_i2c_bus, &(msg[1]), 1);
    
    return (ret == 1) ? len : -RT_ERROR;
}
 
 
void i2c_test_thread1(void)
{
    rt_uint8_t buf;
    rt_uint8_t addr[2];
    addr[0] = 0x00;
    addr[1] = 0x10;
    rt_uint8_t i = 1;
    uint16 count=300;
 
    eep_i2c_bus = rt_i2c_bus_device_find(EEP_I2CBUS_NAME);
    rt_kprintf("EEP set i2c bus to %s\n", EEP_I2CBUS_NAME);
    
    while (count--)
    {
         rt_mutex_take(dynamic_mutex_i2c, RT_WAITING_FOREVER);
         eeprom_iic_write(addr,wr_data+i,SIZE);
         rt_mutex_release(dynamic_mutex_i2c);
         
         eeprom_iic_read(addr, 1, &buf);
         if(buf == (wr_data + i))
         {
            rt_kprintf("EEP 0x10 read ok ,data is: 0x%02x \n",buf);
         }
         else
         {
            rt_kprintf("EEP 0x10 read fail ,data is: 0x%02x \n wr_data + i is: 0x%02x \n",buf,(wr_data + i));
         }
         i++;
    }
 }
 
 void i2c_test_thread2(void)
 {
    rt_uint8_t buf;
    rt_uint8_t addr[2];
    addr[0] = 0x00;
    addr[1] = 0xe0;
    rt_uint8_t i = 1;
    uint16 count=300;
 
    eep_i2c_bus = rt_i2c_bus_device_find(EEP_I2CBUS_NAME);
    rt_kprintf("EEP set i2c bus to %s\n", EEP_I2CBUS_NAME);
    
    while (count--)
    {
         rt_mutex_take(dynamic_mutex_i2c, RT_WAITING_FOREVER);
         eeprom_iic_write(addr,wr_data+i,SIZE);
         rt_mutex_release(dynamic_mutex_i2c);
         
         eeprom_iic_read(addr, 1, &buf);
         if(buf == (wr_data + i))
         {
            rt_kprintf("EEP 0xe0 read ok ,data is: 0x%02x \n",buf);
         }
         else
         {
            rt_kprintf("EEP 0xe0 read fail ,data is: 0x%02x \n wr_data + i is: 0x%02x \n",buf,(wr_data + i));
         }             
        i++;
    }
 }
  
int i2c_eeprom_sample(void)
{
    /* 创建一个动态互斥量 */
    dynamic_mutex_i2c = rt_mutex_create("dmutex", RT_IPC_FLAG_FIFO);
    if (dynamic_mutex_i2c == RT_NULL)
    {
        rt_kprintf("create dynamic mutex failed.\n");
        return -1;
    }
    rt_thread_t tid1, tid2;
       
    /* 创建线程 */
    tid1 = rt_thread_create("i2c1",
                    i2c_test_thread1, 
                    NULL,
                    1024, 
                    20, 
                    10);
    /* 创建成功则启动线程 */
    if (tid1 != RT_NULL)
        rt_thread_startup(tid1);
        
     tid2 = rt_thread_create("i2c2",
                    i2c_test_thread2, 
                    NULL,
                    1024, 
                    20, 
                    10);
    /* 创建成功则启动线程 */
    if (tid2 != RT_NULL)
        rt_thread_startup(tid2);
    
          
    return 0;
}
 
MSH_CMD_EXPORT(i2c_eeprom_sample, i2c_eeprom sample);