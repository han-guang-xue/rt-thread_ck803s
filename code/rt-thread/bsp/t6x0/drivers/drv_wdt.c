#include <rthw.h>
#include <rtdevice.h>
#include <tih/scu.h>
#include <tih/wdt.h>

#ifdef RT_USING_WDT
#define default_wdt_time 20

static uint8_t wdt_data;
static uint32_t wdt_timeout_value = default_wdt_time;
static rt_watchdog_t wdt;

static rt_err_t __fast drv_wdt_config(rt_watchdog_t *wdt)
{
    wdt_config_t wdt_config_init;
    wdt_config_init.seconds = default_wdt_time;
    wdt_config_init.signals = WDT_SIGNAL_RESET;
    wdt_hw_init(&wdt_config_init);
    return RT_EOK;
}
static rt_err_t __fast drv_wdt_control(rt_watchdog_t *wdt, int cmd, void *arg)
{
    wdt_config_t wdt_config_init;

    switch(cmd)
    {
    case(RT_DEVICE_CTRL_WDT_GET_TIMEOUT):
        *(uint32_t *)arg = wdt_timeout_value;
        break;
    case(RT_DEVICE_CTRL_WDT_SET_TIMEOUT):
        wdt_timeout_value = *(uint32_t *)arg;
        wdt_config_init.seconds = wdt_timeout_value;
        wdt_config_init.signals = WDT_SIGNAL_RESET;
        wdt_hw_init(&wdt_config_init);
        break;
    case(RT_DEVICE_CTRL_WDT_GET_TIMELEFT):
        return RT_EINVAL;
        break;
    case(RT_DEVICE_CTRL_WDT_KEEPALIVE):
        wdt_feed();
        break;
    case (RT_DEVICE_CTRL_WDT_START):
        wdt_start();
        break;
    case(RT_DEVICE_CTRL_WDT_STOP):
        wdt_stop();
        break;

    }
    return RT_EOK;
}
const struct rt_watchdog_ops rt_wdt_ops ={
        drv_wdt_config,
        drv_wdt_control
    };
static int drv_wdt_init(void)
{
    wdt.ops = &rt_wdt_ops;

    rt_hw_watchdog_register(&wdt, "wdt", 0, &wdt_data);

    return RT_EOK;
}
INIT_BOARD_EXPORT(drv_wdt_init);
#endif
