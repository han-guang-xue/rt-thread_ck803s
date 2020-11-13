/*
 * File      : cpuport.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006 - 2014, RT-Thread Development Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://www.rt-thread.org/license/LICENSE
 *
 * Change Logs:
 * Date           Author       Notes
 * 2019-01-07     dortain      the first version.
 */
#include <rthw.h>
#include <rtthread.h>
#include <tih/wdt.h>
#include <tih/core_ck803.h>

/* flag in interrupt handling */
rt_uint32_t rt_thread_switch_interrupt_flag;
rt_uint32_t rt_interrupt_from_thread;
rt_uint32_t rt_interrupt_to_thread;

/* exception hook */
static rt_err_t (*rt_exception_hook)(void *context) = RT_NULL;

struct exception_stack_frame
{
    rt_uint32_t r0;
    rt_uint32_t r1;
    rt_uint32_t r2;
    rt_uint32_t r3;
    rt_uint32_t r4;
    rt_uint32_t r5;
    rt_uint32_t r6;
    rt_uint32_t r7;
    rt_uint32_t r8;
    rt_uint32_t r9;
    rt_uint32_t r10;
    rt_uint32_t r11;
    rt_uint32_t r12;
    rt_uint32_t r13;
    rt_uint32_t lr;
    rt_uint32_t psr;
    rt_uint32_t pc;
};

struct stack_frame
{
    struct exception_stack_frame exception_stack_frame;
};


/**
 * This function set the hook, which is invoked on fault exception handling.
 *
 * @param exception_handle the exception handling hook function.
 */
void rt_hw_exception_install(rt_err_t (*exception_handle)(void* context))
{
    rt_exception_hook = exception_handle;
}

void rt_hw_hard_fault_exception(struct exception_stack_frame *exception_stack)
{
    rt_thread_t task;

    if (rt_exception_hook != RT_NULL)
    {
        rt_err_t result;

        result = rt_exception_hook(exception_stack);
        if (result == RT_EOK) {
            return;
        }
    }

    rt_kprintf(" epc: 0x%08x\n", exception_stack->pc);
    rt_kprintf("epsr: 0x%08x\n", exception_stack->psr);
    rt_kprintf("  lr: 0x%08x\n", exception_stack->lr);
    rt_kprintf(" r13: 0x%08x\n", exception_stack->r13);
    rt_kprintf(" r12: 0x%08x\n", exception_stack->r12);
    rt_kprintf(" r11: 0x%08x\n", exception_stack->r11);
    rt_kprintf(" r10: 0x%08x\n", exception_stack->r10);
    rt_kprintf("  r9: 0x%08x\n", exception_stack->r9);
    rt_kprintf("  r8: 0x%08x\n", exception_stack->r8);
    rt_kprintf("  r7: 0x%08x\n", exception_stack->r7);
    rt_kprintf("  r6: 0x%08x\n", exception_stack->r6);
    rt_kprintf("  r5: 0x%08x\n", exception_stack->r5);
    rt_kprintf("  r4: 0x%08x\n", exception_stack->r4);
    rt_kprintf("  r3: 0x%08x\n", exception_stack->r3);
    rt_kprintf("  r2: 0x%08x\n", exception_stack->r2);
    rt_kprintf("  r1: 0x%08x\n", exception_stack->r1);
    rt_kprintf("  r0: 0x%08x\n", exception_stack->r0);

    rt_uint32_t type = (__get_PSR() >> 16) & 0xFF;
    rt_kprintf("Hard fault exception type is %d\n", type);

    task = rt_thread_self();
    if(task) {
        rt_kprintf("Current thread = %s\n", task->name);
#ifdef RT_DEBUG_BACKTRACE
        extern void rt_hw_backtrace(rt_uint32_t *sp, rt_uint32_t thread_entry);
        rt_hw_backtrace((rt_uint32_t *)task->sp, (rt_uint32_t)task->entry);

#ifdef RT_USING_FINSH
        extern long list_thread(void);
        list_thread();
#endif

#endif
    }
    chip_reset(RESET_TARGET_FIRMWARE);
    while (1);
}

/**
 * shutdown CPU
 */
void rt_hw_cpu_shutdown(void)
{
    rt_kprintf("shutdown...\n");

    RT_ASSERT(0);
}

void rt_hw_interrupt_leave_hook(void)
{

}

void rt_hw_interrupt_enter_hook(void)
{
}

#ifdef RT_USING_CPU_FFS
/**
 * This function finds the first bit set (beginning with the least significant bit)
 * in value and return the index of that bit.
 *
 * Bits are numbered starting at 1 (the least significant bit).  A return value of
 * zero from any of these functions means that the argument was zero.
 *
 * @return return the index of the first bit set. If value is 0, then this function
 * shall return 0.
 */
#if defined(__GNUC__) && defined(__CSKY__)
extern rt_int32_t rt_hw_ffs(rt_int32_t value);
int __fast __rt_ffs(int value)
{
    rt_int32_t ret = 0;

    ret = rt_hw_ffs(value);

    ret +=1;

    if (ret > 32) {
        return 0;
    }
    return ret;
}
#endif

#endif
