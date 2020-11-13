# 1 "../../../libcpu/c-sky/ck803/startup_gcc.S"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../libcpu/c-sky/ck803/startup_gcc.S"
# 35 "../../../libcpu/c-sky/ck803/startup_gcc.S"
.import PendSV_Handler
.import exception_handler

.section .vectors
    .align 10
    .globl __Vectors
    .type __Vectors, @object
__Vectors:
    .long reset_handler

    .rept 21
    .long exception_handler
    .endr

    .long PendSV_Handler

    .rept 9
    .long exception_handler
    .endr


     .rept 32
    .long default_handler
    .endr


    .long 0x00484954
    .long 0x01010000
    .long __boot_ebase
    .long __boot_size

    .size __Vectors, . - __Vectors

.text
    .align 1
_start:
.text
    .align 1
    .globl reset_handler
    .type reset_handler, %function
reset_handler:

    lrw r0, 0x80000000
    mtcr r0, psr


    mfcr r0, cr<31, 0>
    bclri r0, 3
    mtcr r0, cr<31, 0>


    lrw r1, svc_stack_offset
    mov sp, r1
# 100 "../../../libcpu/c-sky/ck803/startup_gcc.S"
    .weak __boot_tcm_lbase
    .weak __boot_tcm_ebase
    .weak __boot_tcm_size

    lrw r1, __boot_tcm_lbase
    lrw r2, __boot_tcm_ebase
    lrw r3, __boot_tcm_size

    cmpnei r3, 0
    bf .L_tcm_done

.L_loop_tcm:
    ldw r0, (r1, 0)
    stw r0, (r2, 0)
    addi r1, 4
    addi r2, 4
    subi r3, 4
    cmpnei r3, 0
    bt .L_loop_tcm

.L_tcm_done:
# 130 "../../../libcpu/c-sky/ck803/startup_gcc.S"
    lrw r1, __data_lbase
    lrw r2, __data_ebase
    lrw r3, __data_size

    cmpnei r3, 0
    bf .L_loop0_done

.L_loop0:
    ldw r0, (r1, 0)
    stw r0, (r2, 0)
    addi r1, 4
    addi r2, 4
    subi r3, 4
    cmpnei r3, 0
    bt .L_loop0

.L_loop0_done:
# 155 "../../../libcpu/c-sky/ck803/startup_gcc.S"
    lrw r1, __bss_base
    lrw r2, __bss_size

    movi r0, 0

    cmpnei r2, 0
    bf .L_loop1_done

.L_loop1:
    stw r0, (r1, 0)
    addi r1, 4
    subi r2, 4
    cmpnei r2, 0
    bt .L_loop1
.L_loop1_done:
# 178 "../../../libcpu/c-sky/ck803/startup_gcc.S"
    lrw r1, __exdata_base
    lrw r2, __exdata_size

    movi r0, 0

    cmpnei r2, 0
    bf .L_loop2_done

.L_loop2:
    stw r0, (r1, 0)
    addi r1, 4
    subi r2, 4
    cmpnei r2, 0
    bt .L_loop2
.L_loop2_done:


    lrw r0, irq_stack_offset
    mtcr r0, cr<15, 1>

    mfcr r0, cr<31, 0>
    bseti r0, 14
    mtcr r0, cr<31, 0>



    bsr system_init



    lrw r0, 0xE000EC10
    movi r1, 0xC0
    stw r1, (r0)

    bsr entry

__exit:
    bkpt

    .size reset_handler, . - reset_handler

    .align 1
    .weak default_handler
    .type default_handler, %function
default_handler:
    br default_handler
    .size default_handler, . - default_handler


.section .bss






    .macro def_irq_handler handler_name
    .weak \handler_name
    .set \handler_name, default_handler
    .endm

    def_irq_handler timer_irq_handler

    .end
