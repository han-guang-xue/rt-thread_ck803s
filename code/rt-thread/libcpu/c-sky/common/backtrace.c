/*
 * File      : backtrace.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006, 2008 RT-Thread Development Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://openlab.rt-thread.com/license/LICENSE
 *
 * Change Logs:
 * Date           Author       Notes
 * 2008-07-29     Bernard      first version from QiuYi implementation
 */

#include <rtthread.h>
#include <rthw.h>
#include <sram.h>

#ifdef __CSKY__
#ifdef RT_DEBUG_BACKTRACE
void rt_hw_backtrace(rt_uint32_t *sp, rt_uint32_t thread_entry)
{
    uint32 *r8;

    rt_kprintf("stack info is as follows: \n");
    r8 = (uint32 *)((uint32)sp + 32); // R8
    rt_kprintf("[0x%08x]\n", *(uint32 *)((uint32)sp + 56)); // R15:LR

    while (*r8 != 0x08080808) {
	   r8 = (uint32 *)(*r8);
       rt_kprintf("[0x%08x]\n", *(r8 + 1)); // R15:LR
    }
}

void rt_backtrace_current(void)
{
    uint32 *r8;
    rt_base_t level;
    
    rt_kprintf("Note: rt_backtrace usage needs add -mbacktrace compiler option support! \n");
    rt_kprintf("stack info is as follows: \n");
    
    level = rt_hw_interrupt_disable();
    
    __asm volatile("mov32 %0, r8":"=r"(r8));

    while (*r8 != 0x08080808) {
       rt_kprintf("[0x%08x]\n", *(r8 + 1)); // R15:LR
       r8 = (uint32 *)(*r8);
    }
    
    rt_hw_interrupt_enable(level);
}

void rt_backtrace(int argc, char **argv)
{
    rt_thread_t task;
    char *name;
    rt_base_t level;
    
	rt_kprintf("Note: rt_backtrace usage needs add -mbacktrace compiler option support! \n");
    if (argc < 2) {
        rt_kprintf("Usage: rt_backtrace thread_name \n");
        rt_kprintf("Like: rt_backtrace idle \n");
        return;
    }
    
    name = argv[1];
    task = rt_thread_find(name);
    
    if (task && (task != rt_thread_self())) {        
        level = rt_hw_interrupt_disable();
        rt_hw_backtrace((rt_uint32_t *)task->sp, (rt_uint32_t)task->entry);
        rt_hw_interrupt_enable(level);
    } else if (task && (task == rt_thread_self())) {
		rt_backtrace_current();
	}
}

MSH_CMD_EXPORT(rt_backtrace, backtrace usage: rt_backtrace task_name);
#endif
#else
void rt_hw_backtrace(rt_uint32_t *fp, rt_uint32_t thread_entry)
{
    
}
#endif
