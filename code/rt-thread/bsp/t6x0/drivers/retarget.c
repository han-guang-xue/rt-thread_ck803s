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
 * @file     retarget.c
 * @brief    retarget interface
 * @version  V1.0
 * @date     26. Dec 2017
 ******************************************************************************/
#include <rtthread.h>
#include <rthw.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <rtdef.h>
#include <string.h>

#include <minilibc_os.h>
#include <tih/uart.h>

int __fast os_critical_enter(unsigned int *lock)
{
    rt_enter_critical();
    return 0;
}

int __fast os_critical_exit(unsigned int *lock)
{
    rt_exit_critical();
    return 0;
}

int fputc(int ch, FILE *stream)
{
#ifdef RT_USING_CONSOLE
    rt_device_t dev;
    dev = rt_console_get_device();
    if (dev == NULL) {
        console_putc(ch);
        return 0;
    }

    rt_uint16_t old_flag = dev->open_flag;
    dev->open_flag |= RT_DEVICE_FLAG_STREAM;
    if (rt_device_write(dev, 0, &ch, 1) != 1) {
        dev->open_flag = old_flag;
        return -1;
    }
    dev->open_flag = old_flag;
    return 0;
#else
    console_putc(ch);
    return 0;
#endif

}

int fgetc(FILE *stream)
{
    uint8_t ch;
#ifdef RT_USING_CONSOLE
    rt_device_t dev;
    dev = rt_console_get_device();
    if (dev == NULL) {
        return console_getc();
    }

    rt_uint16_t old_flag = dev->open_flag;
    dev->open_flag |= RT_DEVICE_FLAG_STREAM;
    if (rt_device_read(dev, 0, &ch, 1) != 1) {
        dev->open_flag = old_flag;
        return -1;
    }
    dev->open_flag = old_flag;
    return ch;
#else
    return console_getc();
#endif
}

void rt_hw_console_output(const char *str)
{
    while((*str) != '\0') {
        console_putc(*(str++));
    }
}

void __stack_chk_fail(void)
{
    rt_thread_t task;

    task = rt_thread_self();
    rt_kprintf("[stack_fail] current task = %s \n", task->name);

#ifdef RT_DEBUG_BACKTRACE
    extern void rt_backtrace_current(void);
    rt_backtrace_current();
#endif

    rt_hw_interrupt_disable();
    while(1) ;
}

uint32 __stack_chk_guard(void)
{
    return rand() + rt_hw_hardclock_get();
}


#ifdef TIH_TRACE_STUB

static rt_uint32_t trace_count = 0;
struct tih_trace_point* tih_trace_record;

struct tih_trace_point
{
    rt_bool_t flag;
    rt_uint32_t this_func;
    rt_uint32_t call_site;
    rt_uint32_t hard_clock;
};

void tih_trace_stub_init(void)
{
    tih_trace_record = (struct tih_trace_point *)rt_malloc(sizeof(struct tih_trace_point) * 1024);
}
INIT_APP_EXPORT(tih_trace_stub_init);

void __attribute__((__no_instrument_function__))
__fast __cyg_profile_func_enter(void *this_func, void *call_site)
{
    tih_trace_record[trace_count].flag = 0;
    tih_trace_record[trace_count].this_func = this_func;
    tih_trace_record[trace_count].call_site = call_site;
    tih_trace_record[trace_count].hard_clock = rt_hw_hardclock_get();
    trace_count++;
}
void __attribute__((__no_instrument_function__))
__fast __cyg_profile_func_exit(void *this_func, void *call_site)
{
    rt_base_t trace_int;
    
    tih_trace_record[trace_count].flag = 1;
    tih_trace_record[trace_count].this_func = this_func;
    tih_trace_record[trace_count].call_site = call_site;
    tih_trace_record[trace_count].hard_clock = rt_hw_hardclock_get();
    trace_count++;

    if (trace_count > 1000)
    {
        trace_int = rt_hw_interrupt_disable();
        rt_kprintf("\nDUMP TRACE RECORD\n");
        for (int i=0; i<trace_count; i++)
        {
            if (tih_trace_record[i].flag == 0)
            {
                rt_kprintf("\nENTER\n%x\n%x\n%u\n",tih_trace_record[i].this_func,tih_trace_record[i].call_site,tih_trace_record[i].hard_clock);
            }
            else
            {
                rt_kprintf("\nEXIT\n%x\n%x\n%u\n",tih_trace_record[i].this_func,tih_trace_record[i].call_site,tih_trace_record[i].hard_clock);
            }
        }
        trace_count = 0;
        rt_hw_interrupt_enable(trace_int);
    }
}

void tih_trace_flush(void)
{
    rt_kprintf("DUMP TRACE RECORD\n");
    
    for (int i=0; i<trace_count; i++)
    {
        if (tih_trace_record[i].flag == 0)
        {
            rt_kprintf("\nENTER\n%x\n%x\n%u\n",tih_trace_record[i].this_func,tih_trace_record[i].call_site,tih_trace_record[i].hard_clock);
        }
        else
        {
            rt_kprintf("\nEXIT\n%x\n%x\n%u\n",tih_trace_record[i].this_func,tih_trace_record[i].call_site,tih_trace_record[i].hard_clock);
        }
    }
    
    trace_count = 0;
}
MSH_CMD_EXPORT(tih_trace_flush, flush the trace record);
#endif
