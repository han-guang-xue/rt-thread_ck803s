#include <rtthread.h>
#include <rtdevice.h>

#define IWDG_DEVICE_NAME    "wdt"    

static rt_device_t wdg_dev;         

static void feed_dog(void)
{
    rt_device_control(wdg_dev, RT_DEVICE_CTRL_WDT_KEEPALIVE, NULL);
    rt_kprintf("feed the dog!\n ");
}

static int iwdg_sample(int argc, char *argv[])
{
    rt_err_t ret = RT_EOK;
    rt_uint32_t timeout = 5;    
    char device_name[RT_NAME_MAX];

    if (argc == 2)
    {
        rt_strncpy(device_name, argv[1], RT_NAME_MAX);
    }
    else
    {
        rt_strncpy(device_name, IWDG_DEVICE_NAME, RT_NAME_MAX);
    }

    wdg_dev = rt_device_find(device_name);
    if (!wdg_dev)
    {
        rt_kprintf("find %s failed!\n", device_name);
        return RT_ERROR;
    }

    ret = rt_device_init(wdg_dev);
    if (ret != RT_EOK)
    {
        rt_kprintf("initialize %s failed!\n", device_name);
        return RT_ERROR;
    }

    ret = rt_device_control(wdg_dev, RT_DEVICE_CTRL_WDT_SET_TIMEOUT, &timeout);
    if (ret != RT_EOK)
    {
        rt_kprintf("set %s timeout failed!\n", device_name);
        return RT_ERROR;
    }
    
    ret = rt_device_control(wdg_dev, RT_DEVICE_CTRL_WDT_START,0);
    if (ret != RT_EOK)
    {
        rt_kprintf("start wdt failed!\n", device_name);
        return RT_ERROR;
    }
    for (int j = 0; j < 20; j++)
    {
        rt_thread_delay(50);
        feed_dog();
    }
    
    rt_kprintf("stop feed watchdog!\n", device_name);
    return ret;
}

MSH_CMD_EXPORT(iwdg_sample, iwdg sample);
