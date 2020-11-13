#include <rthw.h>
#include <rtdevice.h>
#include <tih/scu.h>
#include <tih/timer.h>

#ifdef RT_USING_HWTIMER
#define TIMER_NUMS          6
static rt_hwtimer_t hwtimers[TIMER_NUMS];// timer index starts from 0.
static uint32 timer_index[TIMER_NUMS] = {0, 1, 2, 3, 4, 5};
static struct rt_hwtimer_info timer_info;

void __fast hwtimer_isr(void)
{
    uint32 status = 0;
    status = timer_intr_status();
    timer_intr_clear(status);
    rt_hw_interrupt_clear(TIMER_IRQ_NUM);

    if (TIMER_EXPIRED(TIMER0, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER0]);
    }
    if (TIMER_EXPIRED(TIMER1, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER1]);
    }
    if (TIMER_EXPIRED(TIMER2, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER2]);
    }
    if (TIMER_EXPIRED(TIMER3, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER3]);
    }
    if (TIMER_EXPIRED(TIMER4, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER4]);
    }
    if (TIMER_EXPIRED(TIMER5, status)) {
        rt_device_hwtimer_isr(&hwtimers[TIMER5]);
    }
}

static rt_err_t __fast drv_hwtimer_start(struct rt_hwtimer_device *timer, rt_uint32_t cnt, rt_hwtimer_mode_t mode)
{
    uint32 timer_no;
    timer_config_t config;

    RT_ASSERT(timer != RT_NULL);
    timer_no = *(uint32 *)timer->parent.user_data;
    RT_ASSERT(timer_no < TIMER_NUMS);

    config.work_mode = TIMER_MODE_TIMER;
    config.pwm_ratio = 0;
    config.us = tic_us_get(cnt);

    if (mode == HWTIMER_MODE_ONESHOT) {
        config.reload_mode = TIMER_LOAD_ONE_SHOT;
    } else {
        config.reload_mode = TIMER_LOAD_AUTO;
    }

    timer_hw_init(timer_no, &config);
    rt_hw_interrupt_install(TIMER_IRQ_NUM, (rt_isr_handler_t)hwtimer_isr, (void *)timer_no, "timer");
    rt_hw_interrupt_umask(TIMER_IRQ_NUM);

    timer_start(timer_no);

    return RT_EOK;
}

static void __fast drv_hwtimer_stop(struct rt_hwtimer_device *timer)
{
    uint32 timer_no;

    RT_ASSERT(timer != RT_NULL);
    timer_no = *(uint32 *)timer->parent.user_data;
    RT_ASSERT(timer_no < TIMER_NUMS);

    timer_stop(timer_no);
}

static rt_uint32_t __fast drv_hwtimer_count_get(struct rt_hwtimer_device *timer)
{
    uint32 timer_no;
    uint32 count;

    RT_ASSERT(timer != RT_NULL);
    timer_no = *(uint32 *)timer->parent.user_data;
    RT_ASSERT(timer_no < TIMER_NUMS);

    count = timer_count_get(timer_no);

    return count;
}

static rt_err_t __fast drv_hwtimer_control(struct rt_hwtimer_device *timer, rt_uint32_t cmd, void *args)
{
    uint32 timer_no;
    uint32 freq;

    RT_ASSERT(timer != RT_NULL);
    timer_no = *(uint32 *)timer->parent.user_data;
    RT_ASSERT(timer_no < TIMER_NUMS);

    if (cmd == HWTIMER_CTRL_FREQ_SET) {
        freq = *(uint32 *)args;

        if (freq == clock_freq_get(MODULE_APB)) {
            return RT_EOK;
        }
    }
    return -RT_ERROR;
}

void drv_hwtimer_init(struct rt_hwtimer_device *timer, rt_uint32_t state)
{
    uint32 timer_no;
    timer_config_t config;

    RT_ASSERT(timer != RT_NULL);
    timer_no = *(uint32 *)timer->parent.user_data;
    RT_ASSERT(timer_no < TIMER_NUMS);

    config.work_mode = TIMER_MODE_TIMER;
    config.pwm_ratio = 0;
    config.us = 100000;// default 100ms
    config.reload_mode = HWTIMER_MODE_ONESHOT;

    timer_hw_init(timer_no, &config);
    rt_hw_interrupt_install(TIMER_IRQ_NUM, (rt_isr_handler_t)hwtimer_isr, (void *)timer_no, "timer");
}

const struct rt_hwtimer_ops timer_ops =
{
    drv_hwtimer_init,
    drv_hwtimer_start,
    drv_hwtimer_stop,
    drv_hwtimer_count_get,
    drv_hwtimer_control
};

static int drv_timers_init()
{
    timer_info.maxfreq = clock_freq_get(MODULE_APB);
    timer_info.minfreq = clock_freq_get(MODULE_APB);
    timer_info.maxcnt  = 0xFFFFFFFF;
    timer_info.cntmode = HWTIMER_CNTMODE_DW;

    for (int i = 0; i < TIMER_NUMS; ++i) {
        hwtimers[i].ops  = &timer_ops;
        hwtimers[i].info = &timer_info;
    }

    rt_device_hwtimer_register(&hwtimers[0], "timer0", &timer_index[0]);
    rt_device_hwtimer_register(&hwtimers[1], "timer1", &timer_index[1]);
    rt_device_hwtimer_register(&hwtimers[2], "timer2", &timer_index[2]);
    rt_device_hwtimer_register(&hwtimers[3], "timer3", &timer_index[3]);
    rt_device_hwtimer_register(&hwtimers[4], "timer4", &timer_index[4]);
    rt_device_hwtimer_register(&hwtimers[5], "timer5", &timer_index[5]);

    return 0;
}
INIT_BOARD_EXPORT(drv_timers_init);
#endif

