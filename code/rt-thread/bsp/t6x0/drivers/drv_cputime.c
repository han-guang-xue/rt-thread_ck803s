#include <rthw.h>
#include <rtdevice.h>
#include <rtthread.h>

#include <tih/scu.h>

/* Use Cycle counter of Data Watchpoint and Trace Register for CPU time */

static float drv_cputime_getres(void)
{
    uint32_t ahb_freq;
    float ret = 1000 * 1000 * 1000;

    ahb_freq = clock_freq_get(MODULE_AHB);

    RT_ASSERT(ahb_freq != 0);

    ret = ret / ahb_freq;
    return ret;
}

static uint32_t drv_cputime_gettime(void)
{
    return scu_sw_cnt_get();
}

const static struct rt_clock_cputime_ops cputime_ops =
{
    drv_cputime_getres,
    drv_cputime_gettime
};

int drv_cputime_init(void)
{
    /* init SCU_SW_CNT */
    scu_sw_cnt_enable();

    clock_cpu_setops(&cputime_ops);

    return 0;
}
INIT_BOARD_EXPORT(drv_cputime_init);
