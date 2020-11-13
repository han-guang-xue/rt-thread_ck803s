/*
 * File      : board_coretimer.h
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
#ifndef _BOARD_CORETIMER_H_
#define _BOARD_CORETIMER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#define CORE_TIMER_BASE     (0xE000E000)
#define CORE_TIMER_IRQ_NUM  26
#define CORE_TIMER_CLOCK    (clock_freq_get(MODULE_AHB))

#define CORET_CSR         (volatile unsigned int *)(CORE_TIMER_BASE + 0x10)
#define CORET_RVR         (volatile unsigned int *)(CORE_TIMER_BASE + 0x14)
#define CORET_CVR         (volatile unsigned int *)(CORE_TIMER_BASE + 0x18)
#define CORET_CALIB       (volatile unsigned int *)(CORE_TIMER_BASE + 0x1c)

/* define the bits for TxControl */
#define CORETIM_TXCONTROL_ENABLE      (1UL << 0)
#define CORETIM_TXCONTROL_INTMASK     (1UL << 1)
#define CORETIM_TXCONTROL_CLK_CPU     (1UL << 2)
#define CORETIM_TXCONTROL_MODE        (1UL << 16)

/* function define here */
void core_timer_hw_init(uint32 us);
void core_timer_intr_enable(void);
void core_timer_intr_disable(void);
uint32 core_timer_intr_status(void);
void core_timer_intr_clear(uint32 intr_src);
void core_timer_start(void);
void core_timer_stop(void);
uint32 core_timer_current_value_get(void);

#ifdef __cplusplus
}
#endif

#endif /* _BOARD_CORETIMER_H_ */
