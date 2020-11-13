/*
 * File      : board_coretimer.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006 - 2017, RT-Thread Development Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Change Logs:
 * Date           Author       Notes
 * 2017-01-01     Urey      first version
 */

#include <stdint.h>
#include <rthw.h>
#include <rtthread.h>

#include <tih/sysdep.h>
#include <tih/core_timer.h>
#include <drv_ctimer.h>

static void __fast sys_tick_isr(void)
{
    /* clear core timer */
    core_timer_intr_clear(0);

    /* clear intr status */
    rt_hw_interrupt_clear(CORE_TIMER_IRQ_NUM);

    rt_tick_increase();
}

static int32 drv_ctimer_connect(void *isr)
{
    if (isr == NULL) {
        return -1;
    }

    if (rt_hw_interrupt_install(CORE_TIMER_IRQ_NUM, isr, NULL, "core timer") == NULL) {
        return -1;
    }

    return 0;
}

static void drv_ctimer_intr_enable(void)
{
    core_timer_intr_enable();
    rt_hw_interrupt_umask(CORE_TIMER_IRQ_NUM);
}

static void drv_ctimer_intr_disable(void)
{
    rt_hw_interrupt_mask(CORE_TIMER_IRQ_NUM);
    core_timer_intr_disable();
}

static void drv_ctimer_intr_init(void)
{
    drv_ctimer_intr_disable();
    drv_ctimer_connect(sys_tick_isr);
    drv_ctimer_intr_enable();
}

void core_timer_init(uint32 us)
{
    /* ctimer init */
    core_timer_hw_init(us);

    /* intr init */
    drv_ctimer_intr_init();

    /* start timer */
    core_timer_start();
}
