/*
 * File      : startup.S
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

#define IMAGE_HEADER                0x00484954    /* TIH */
#define IMAGE_VERSION               0x01010000

#undef  VIC_TSPR
#define VIC_TSPR                    0xE000EC10

#ifndef CONFIG_SEPARATE_IRQ_SP
#define CONFIG_SEPARATE_IRQ_SP      1
#endif

.import PendSV_Handler
.import exception_handler

.section .vectors
    .align 10
    .globl    __Vectors
    .type    __Vectors, @object
__Vectors:
    .long    reset_handler         /* 0: Reset Handler */

    .rept   21
    .long   exception_handler
    .endr

    .long   PendSV_Handler         /* 22: 0x58         */

    .rept    9
    .long    exception_handler
    .endr

    /* External 32 interrupts */
     .rept   32
    .long    default_handler
    .endr

    /* RTT header info for boot */
    .long    IMAGE_HEADER
    .long    IMAGE_VERSION
    .long    __boot_ebase          /* fw_ebase */
    .long    __boot_size           /* fw_lsize */

    .size    __Vectors, . - __Vectors

.text
    .align    1
_start:
.text
    .align    1
    .globl    reset_handler
    .type    reset_handler, %function
reset_handler:
/* under normal circumstances,  it should not be opened */
    lrw       r0, 0x80000000
    mtcr      r0, psr

/* disable ck803 random prefetch instruction action */
    mfcr      r0, cr<31, 0>
    bclri     r0, 3            /* set CR<31, 0>[3]:RPE = 0 */
    mtcr      r0, cr<31, 0>

/* Initialize the normal stack pointer from the linker definition. */
    lrw       r1, svc_stack_offset
    mov       sp, r1

/*
 *  The TCM section is specified by following symbols
 *    __boot_tcm_lbase: load addr of the TCM text section.
 *    __boot_tcm_ebase: exe addr of the TCM text section.
 *    __boot_tcm_size:  the length of TCM text section.
 *
 *  Both addresses must be aligned to 4 bytes boundary.
 */
 /*  The lised weak variabls may not defined by outer .ld or .c files
 *   because of the usage without TCM text.
 */
    .weak __boot_tcm_lbase
    .weak __boot_tcm_ebase
    .weak __boot_tcm_size

    lrw        r1, __boot_tcm_lbase
    lrw        r2, __boot_tcm_ebase
    lrw        r3, __boot_tcm_size

    cmpnei     r3, 0
    bf        .L_tcm_done

.L_loop_tcm:
    ldw        r0, (r1, 0)
    stw        r0, (r2, 0)
    addi       r1, 4
    addi       r2, 4
    subi       r3, 4
    cmpnei     r3, 0
    bt        .L_loop_tcm

.L_tcm_done:

/*
 *  The ranges of copy from/to are specified by following symbols
 *    __etext: LMA of start of the section to copy from. Usually end of text
 *    __data_start__: VMA of start of the section to copy to
 *    __data_end__: VMA of end of the section to copy to
 *
 *  All addresses must be aligned to 4 bytes boundary.
 */
    lrw        r1, __data_lbase
    lrw        r2, __data_ebase
    lrw        r3, __data_size

    cmpnei     r3, 0
    bf        .L_loop0_done

.L_loop0:
    ldw        r0, (r1, 0)
    stw        r0, (r2, 0)
    addi       r1, 4
    addi       r2, 4
    subi       r3, 4
    cmpnei     r3, 0
    bt        .L_loop0

.L_loop0_done:

/*
 *  The BSS section is specified by following symbols
 *    __bss_start__: start of the BSS section.
 *    __bss_end__: end of the BSS section.
 *
 *  Both addresses must be aligned to 4 bytes boundary.
 */
    lrw        r1, __bss_base
    lrw        r2, __bss_size

    movi       r0, 0

    cmpnei     r2, 0
    bf        .L_loop1_done

.L_loop1:
    stw        r0, (r1, 0)
    addi       r1, 4
    subi       r2, 4
    cmpnei     r2, 0
    bt        .L_loop1
.L_loop1_done:

/*
 * Clear the EXDATA ram zone
 * The exdata section is defined here:
 * __exdata_start: start of the EXDATA section
 * __exdata_end:   end of the EXDATA section
 * Both the two address must be aligned by 4 bytes.
 */
    lrw        r1, __exdata_base
    lrw        r2, __exdata_size

    movi       r0, 0

    cmpnei     r2, 0
    bf        .L_loop2_done

.L_loop2:
    stw        r0, (r1, 0)
    addi       r1, 4
    subi       r2, 4
    cmpnei     r2, 0
    bt        .L_loop2
.L_loop2_done:

#ifdef CONFIG_SEPARATE_IRQ_SP
    lrw        r0, irq_stack_offset
    mtcr       r0, cr<15, 1>

    mfcr       r0, cr<31, 0>
    bseti      r0, 14
    mtcr       r0, cr<31, 0>
#endif

#ifndef __NO_SYSTEM_INIT
    bsr        system_init
#endif

/* VIC tspend intr init */
    lrw        r0, VIC_TSPR
    movi       r1, 0xC0                      /* prio = lowest */
    stw        r1, (r0)

    bsr        entry

__exit:
    bkpt

    .size    reset_handler, . - reset_handler

    .align    1
    .weak    default_handler
    .type    default_handler, %function
default_handler:
    br        default_handler
    .size    default_handler, . - default_handler


.section .bss

/**
 * Macro to define default handlers.
 * Default handler will be weak symbol and just dead loops.
 * They can be overwritten by other handlers
 */
    .macro    def_irq_handler    handler_name
    .weak    \handler_name
    .set    \handler_name, default_handler
    .endm

    def_irq_handler timer_irq_handler

    .end

