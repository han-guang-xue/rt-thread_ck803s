/*
 * File      : contex_ck803_gcc.S
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
 * 2018-06-05     tanek     clean code
 */

.file     "contex_ck803_gcc.S"

#define RT_INTR_NEST_SUPPORT

#undef  VIC_TSPDR
#define VIC_TSPDR 0XE000EC08
#define VIC_TSPR  0xE000EC10
#define VIC_IABR0 0xE000E300
#define VIC_ICER  0xE000E180

.global  rt_thread_switch_interrupt_flag
.global  rt_interrupt_from_thread
.global  rt_interrupt_to_thread
.global  rt_hw_hard_fault_exception
.global  rt_hw_interrupt_dispatch

.text
.align 2

/*
 * rt_base_t rt_hw_interrupt_disable(void);
 */
.global rt_hw_interrupt_disable
.type   rt_hw_interrupt_disable, %function
rt_hw_interrupt_disable:
mfcr    r0, psr
psrclr  ie
rts

/*
 * void rt_hw_interrupt_enable(rt_base_t psr);
 */
.global rt_hw_interrupt_enable
.type   rt_hw_interrupt_enable, %function
rt_hw_interrupt_enable:
mtcr    r0, psr
rts

/*
 * rt_int32_t rt_hw_ffs(rt_int32_t value);
 */
.global rt_hw_ffs
.type   rt_hw_ffs, %function
rt_hw_ffs:
brev    r0, r0
ff1     r1, r0
mov     r0, r1
rts

/*
 * void rt_hw_context_switch_to(rt_uint32 to);
 * R0 --> to
 */
.global rt_hw_context_switch_to
.type rt_hw_context_switch_to, %function
rt_hw_context_switch_to:
/* set form thread = 0 */
lrw     r2, rt_interrupt_from_thread
movi    r1, 0
stw     r1, (r2)

psrclr  ie
ldw     sp, (r0)

ldw     r0, (sp, 64)
mtcr    r0, epc                      /* set EPC from stack frame */
ldw     r0, (sp, 60)
bseti   r0, 6
mtcr    r0, epsr                     /* set EPSR to enable intr from stack frame */
ldw     r15, (sp, 56)                /* set LR from stack frame */
ldm     r0-r13, (sp)
addi    sp, 68
rte

/*
 * void rt_hw_context_switch_interrupt(rt_uint32 from, rt_uint32 to);
 * r0 --> from
 * r1 --> to
 */
.global rt_hw_context_switch_interrupt
.type   rt_hw_context_switch_interrupt, %function
rt_hw_context_switch_interrupt:
/* set rt_thread_switch_interrupt_flag to 1 */
ipush
lrw    r2, rt_thread_switch_interrupt_flag
ldw    r3, (r2)
cmpnei r3, 1
bf     __reswitch_1
movi   r3, 1
stw    r3, (r2)

lrw    r2, rt_interrupt_from_thread     /* set rt_interrupt_from_thread */
stw    r0, (r2)

__reswitch_1:
lrw    r2, rt_interrupt_to_thread       /* set rt_interrupt_to_thread   */
stw    r1, (r2)

ipop
rts

/*
 * void rt_hw_context_switch(rt_uint32 from, rt_uint32 to)
 * r0 --> from
 * r1 --> to
 */
.global rt_hw_context_switch
.type   rt_hw_context_switch, %function
rt_hw_context_switch:
/* save stack frame to current thread stack */
subi    sp, 68
stm     r0-r13, (sp)
stw     r15, (sp, 56)
mfcr    r0, psr
stw     r0, (sp, 60)
lrw     r0, __context_exit               /* r0 = pc */
stw     r0, (sp, 64)

ldw     r0, (sp)                         /* from_thread sp */
stw     sp, (r0)

ldw     r0, (sp, 4)                      /* to_thread sp   */
ldw     sp, (r0)

ldw     r0, (sp, 64)
mtcr    r0, epc                          /* set EPC from stack frame */
ldw     r0, (sp, 60)
mtcr    r0, epsr                         /* set EPSR to enable intr from stack frame */
ldw     r15, (sp, 56)                    /* set LR from stack frame */
ldm     r0-r13, (sp)
addi    sp, 68
rte
__context_exit:
mov     r0, r0                           /* add nop instruction */
mov     r0, r0
mov     r0, r0
mov     r0, r0
rts

.global PendSV_Handler
.type   PendSV_Handler, %function
PendSV_Handler:
/* get rt_thread_switch_interrupt_flag */
ipush
lrw     r0, rt_thread_switch_interrupt_flag
ldw     r1, (r0)
cmpnei  r1, 0
bf      __pexit
/* clear rt_thread_switch_interrupt_flag to 0 */
movi    r1, 0
stw     r1, (r0)

/* VIC tspend intr init */
lrw     r0, VIC_TSPR
movi    r1, 0xC0                         /* restore prio = lowest */
stw     r1, (r0)
ipop

/* save stack frame to current thread stack */
subi    sp, 68
stm     r0-r13, (sp)
stw     r15, (sp, 56)
mfcr    r0, epsr
stw     r0, (sp, 60)
mfcr    r0, epc
stw     r0, (sp, 64)

movi    r2, 0
lrw     r0, rt_interrupt_from_thread
ldw     r1, (r0)
stw     sp, (r1)
stw     r2, (r0)                     /* clear from_thread = NULL */

/* restore stack frame from to_thread */
lrw     r6, rt_interrupt_to_thread
ldw     r8, (r6)
ldw     sp, (r8)
stw     r2, (r6)                     /* clear to_thread = NULL */

ldw     r0, (sp, 64)
mtcr    r0, epc                      /* set EPC from stack frame */
ldw     r0, (sp, 60)
mtcr    r0, epsr                     /* set EPSR from stack frame */
ldw     r15, (sp, 56)                /* set LR from stack frame */
ldm     r0-r13, (sp)
addi    sp, 68
rte
__pexit:
ipop
rte

.global exception_handler
.type exception_handler, %function
exception_handler:
/* save stack frame to current thread stack */
subi    sp, 68
stm     r0-r13, (sp)
stw     r15, (sp, 56)
mfcr    r0, epsr
stw     r0, (sp, 60)
mfcr    r0, epc
stw     r0, (sp, 64)

mov     r0, sp
bsr     rt_hw_hard_fault_exception

ldw     r0, (sp, 64)
mtcr    r0, epc                      /* set EPC from stack frame */
ldw     r0, (sp, 60)
bseti   r0, 6
mtcr    r0, epsr                     /* set EPSR to enable intr from stack frame */
ldw     r15, (sp, 56)                /* set LR from stack frame */
ldm     r0-r13, (sp)
addi    sp, 68

rte

.global interrupt_handler
.type   interrupt_handler, %function
interrupt_handler:
/* save task contex or intr contex stack frame */
subi    sp, 68
stm     r0-r13, (sp)
stw     r15, (sp, 56)
mfcr    r0, epsr
stw     r0, (sp, 60)
mfcr    r0, epc
stw     r0, (sp, 64)

/* nest++ when intr disabled*/
bsr     rt_interrupt_enter

/* read vector from PSR */
mfcr    r0, psr
lsri    r0, 16
zextb   r0
subi    r0, 32

/* enable intr */
#ifdef RT_INTR_NEST_SUPPORT
psrset  ee,ie
#endif

/* handle intr */
bsr     rt_hw_interrupt_dispatch

/* disable intr */
#ifdef RT_INTR_NEST_SUPPORT
psrclr  ee,ie
#endif

/* nest-- when intr disabled*/
bsr     rt_interrupt_leave

/* check nest == 0 ? */
bsr     rt_interrupt_get_nest
cmpnei  r0, 0
bt      __intr_exit2

/* conetxt switch for schedule ? */
lrw     r0, rt_thread_switch_interrupt_flag
ldw     r1, (r0)
cmpnei  r1, 0
bf      __intr_exit2

lrw     r0, VIC_TSPDR
bgeni   r1, 0
stw     r1, (r0)                     /* enable tspend intr           */
movi    r0, 0x0
lrw     r2, VIC_TSPR
stw     r0, (r2)                     /* set tspend prio = highest to schedule */
lrw     r2, VIC_IABR0
stw     r0, (r2)                     /* clear current intr active bit */

__intr_exit2:
/* restore task contex or intr contex stack frame */
ldw     r0, (sp, 64)
mtcr    r0, epc                      /* set EPC from stack frame */
ldw     r0, (sp, 60)
mtcr    r0, epsr                     /* set EPSR to enable intr from stack frame */
ldw     r15, (sp, 56)                /* set LR from stack frame */
ldm     r0-r13, (sp)
addi    sp, 68

rte
