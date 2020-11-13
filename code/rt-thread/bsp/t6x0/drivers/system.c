/*
 * Copyright (C) 2017 C-SKY Microsystems Co., Ltd. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/******************************************************************************
 * @file     system_PHOBOS.c
 * @brief    CSI Device System Source File for PHOBOS
 * @version  V1.0
 * @date     02. June 2017
 ******************************************************************************/
#include <rthw.h>
#include <rtthread.h>
#include <string.h>
#include <tih/interrupt.h>
#include <tih/scu.h>
#include <tih/h2x.h>
#include <tih/uart.h>
#include <tih/norflash.h>
#include <tih/core_ck803.h>
#include <drv_ctimer.h>

/*----------------------------------------------------------------------------
  Define clocks
 *----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------
  System Core Clock Variable
 *----------------------------------------------------------------------------*/
int system_clock   = RT_SYSTEM_CLOCK;  /* System Core Clock Frequency      */

void rtos_init(void)
{
    system_clock = clock_freq_get(MODULE_AHB);

    /* init SCU_SW_CNT */
    scu_sw_cnt_enable();
}

void console_init(void)
{
    uart_config_t config;
    config.baudrate  = UART_BAUDRATE_115200;
    config.parity    = UART_PARITY_NO;
    config.stop_bits = UART_STOP_BIT_EQ_1;
    config.word_size = UART_WORD_SIZE_8BIT;

    uart_hw_init(UART_CONSOLE, &config);
}

void __fast norflash_init(void)
{
    norflash_hw_init();
}

void sys_hw_init(void)
{
    clock_reset();

    clock_source_set(CLOCK_PLL, 600000000);       // 600M
    clock_freq_set(MODULE_AHB,  RT_SYSTEM_CLOCK); // 200M
    clock_freq_set(MODULE_AXI,  RT_SYSTEM_CLOCK); // 200M
#ifdef RT_USING_USB_HOST
    clock_freq_set(MODULE_USB_60M,  60000000); // 60M
#endif

    clock_enable(MODULE_AXI);
    clock_enable(MODULE_APB);
    clock_enable(MODULE_DMA);
    module_enable(MODULE_DMA);

#ifdef RT_USING_SERIAL
    clock_freq_set(MODULE_UART_IO, 50000000);     // 50M
    clock_enable(MODULE_UART_IO);
#endif

#ifdef RT_USING_SPI
    clock_freq_set(MODULE_SPI_IO,  50000000);     // 50M
    clock_enable(MODULE_SPI_IO);
#endif

#ifdef RT_USING_CRYPTO
    clock_freq_set(MODULE_CRYPTO,  RT_SYSTEM_CLOCK); // 200M
    clock_enable(MODULE_CRYPTO);
    clock_enable(MODULE_PKE);
    clock_enable(MODULE_TRNG);
    module_enable(MODULE_CRYPTO);
    module_enable(MODULE_PKE);
    module_enable(MODULE_TRNG);
#endif

#ifdef RT_USING_ATA
    clock_enable(MODULE_SATA_HOST);
    module_enable(MODULE_SATA_HOST);
#endif

#ifdef RT_USING_USB_HOST
    clock_enable(MODULE_USB);
    clock_enable(MODULE_USB_60M);
    module_enable(MODULE_USB);
    module_enable(MODULE_USB3_PHY);
#endif

#ifdef RT_USING_ETH0
    clock_freq_set(MODULE_GMAC0_25M,   25000000);
    clock_freq_set(MODULE_GMAC0_125M, 125000000);
    clock_enable(MODULE_GMAC0);
    clock_enable(MODULE_GMAC0_25M);
    clock_enable(MODULE_GMAC0_125M);
    module_enable(MODULE_GMAC0);
#endif

#ifdef RT_USING_ETH1
    clock_freq_set(MODULE_GMAC1_25M,   25000000);
    clock_freq_set(MODULE_GMAC1_125M, 125000000);
    clock_enable(MODULE_GMAC1);
    clock_enable(MODULE_GMAC1_25M);
    clock_enable(MODULE_GMAC1_125M);
    module_enable(MODULE_GMAC1);
#endif

    rt_hw_interrupt_init();
    h2x_hw_init();
    xmem_init();       /* Hardware's memcpy/memset API init */

#ifdef __CSKY__
    csi_cache_set_range(0, 0, CACHE_CRCR_128K, 1);
    csi_cache_set_range(1, 0x01000000, CACHE_CRCR_512K, 1);
    csi_icache_enable();
#endif
}

/**
  * @brief  initialize the system
  *         Initialize the psr and vbr.
  * @param  None
  * @return None
  */
void __fast system_init(void)
{
    /* norflash init */
    norflash_init();

    /* base sys init */
    sys_hw_init();

    /* console default init */
    console_init();

    /* core timer-sys clk init */
    core_timer_init(1000000 / RT_TICK_PER_SECOND);

    /* system clk update from scu */
    rtos_init();

    /* enable irq */
    irq_enable();
}

/* delay maximum time is about 21s at AHB_CLK=200MHz */
void __fast rt_hw_us_delay(rt_uint32_t us)
{
    uint32 s;
    uint32 ncycles;

    /* Make sure that system_clock keep the same with AHB_CLK */
    ncycles = (system_clock / 1000000) * us;
    s = scu_sw_cnt_get();

    while ((scu_sw_cnt_get() - s) < ncycles) ;
}

uint32_t __fast rt_hw_hardclock_get(void)
{
    return scu_sw_cnt_get();
}

rt_bool_t __fast rt_hw_dtcm_addr_check(rt_uint32_t addr)
{
    if (((rt_uint32_t)(addr) >= 0x400000) && ((rt_uint32_t)(addr) < 0x408000)) {
        return RT_TRUE;
    }

    /* For crypto, XIP addr also need be checked */
    if (((rt_uint32_t)(addr) >= 0x1000000) && ((rt_uint32_t)(addr) < 0x2000000)) {
        return RT_TRUE;
    }

    return RT_FALSE;
}

/**
 * This function will initialize components.
 */
void rt_hw_board_init(void)
{

#ifdef RT_USING_COMPONENTS_INIT
    rt_components_board_init();
#endif

#ifdef RT_USING_CONSOLE
    rt_console_set_device(RT_CONSOLE_DEVICE_NAME);
#endif

#ifdef RT_USING_HEAP
extern uint32 __heap_start;
extern uint32 __heap_end;
    rt_system_heap_init((void *)&__heap_start, (void *)&__heap_end);
#endif
}
