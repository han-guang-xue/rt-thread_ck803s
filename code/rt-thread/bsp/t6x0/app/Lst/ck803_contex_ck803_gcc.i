# 1 "../../../libcpu/c-sky/ck803/contex_ck803_gcc.S"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../libcpu/c-sky/ck803/contex_ck803_gcc.S"
# 26 "../../../libcpu/c-sky/ck803/contex_ck803_gcc.S"
.file "contex_ck803_gcc.S"
# 36 "../../../libcpu/c-sky/ck803/contex_ck803_gcc.S"
.global rt_thread_switch_interrupt_flag
.global rt_interrupt_from_thread
.global rt_interrupt_to_thread
.global rt_hw_hard_fault_exception
.global rt_hw_interrupt_dispatch

.text
.align 2




.global rt_hw_interrupt_disable
.type rt_hw_interrupt_disable, %function
rt_hw_interrupt_disable:
mfcr r0, psr
psrclr ie
rts




.global rt_hw_interrupt_enable
.type rt_hw_interrupt_enable, %function
rt_hw_interrupt_enable:
mtcr r0, psr
rts




.global rt_hw_ffs
.type rt_hw_ffs, %function
rt_hw_ffs:
brev r0, r0
ff1 r1, r0
mov r0, r1
rts





.global rt_hw_context_switch_to
.type rt_hw_context_switch_to, %function
rt_hw_context_switch_to:

lrw r2, rt_interrupt_from_thread
movi r1, 0
stw r1, (r2)

psrclr ie
ldw sp, (r0)

ldw r0, (sp, 64)
mtcr r0, epc
ldw r0, (sp, 60)
bseti r0, 6
mtcr r0, epsr
ldw r15, (sp, 56)
ldm r0-r13, (sp)
addi sp, 68
rte






.global rt_hw_context_switch_interrupt
.type rt_hw_context_switch_interrupt, %function
rt_hw_context_switch_interrupt:

ipush
lrw r2, rt_thread_switch_interrupt_flag
ldw r3, (r2)
cmpnei r3, 1
bf __reswitch_1
movi r3, 1
stw r3, (r2)

lrw r2, rt_interrupt_from_thread
stw r0, (r2)

__reswitch_1:
lrw r2, rt_interrupt_to_thread
stw r1, (r2)

ipop
rts






.global rt_hw_context_switch
.type rt_hw_context_switch, %function
rt_hw_context_switch:

subi sp, 68
stm r0-r13, (sp)
stw r15, (sp, 56)
mfcr r0, psr
stw r0, (sp, 60)
lrw r0, __context_exit
stw r0, (sp, 64)

ldw r0, (sp)
stw sp, (r0)

ldw r0, (sp, 4)
ldw sp, (r0)

ldw r0, (sp, 64)
mtcr r0, epc
ldw r0, (sp, 60)
mtcr r0, epsr
ldw r15, (sp, 56)
ldm r0-r13, (sp)
addi sp, 68
rte
__context_exit:
mov r0, r0
mov r0, r0
mov r0, r0
mov r0, r0
rts

.global PendSV_Handler
.type PendSV_Handler, %function
PendSV_Handler:

ipush
lrw r0, rt_thread_switch_interrupt_flag
ldw r1, (r0)
cmpnei r1, 0
bf __pexit

movi r1, 0
stw r1, (r0)


lrw r0, 0xE000EC10
movi r1, 0xC0
stw r1, (r0)
ipop


subi sp, 68
stm r0-r13, (sp)
stw r15, (sp, 56)
mfcr r0, epsr
stw r0, (sp, 60)
mfcr r0, epc
stw r0, (sp, 64)

movi r2, 0
lrw r0, rt_interrupt_from_thread
ldw r1, (r0)
stw sp, (r1)
stw r2, (r0)


lrw r6, rt_interrupt_to_thread
ldw r8, (r6)
ldw sp, (r8)
stw r2, (r6)

ldw r0, (sp, 64)
mtcr r0, epc
ldw r0, (sp, 60)
mtcr r0, epsr
ldw r15, (sp, 56)
ldm r0-r13, (sp)
addi sp, 68
rte
__pexit:
ipop
rte

.global exception_handler
.type exception_handler, %function
exception_handler:

subi sp, 68
stm r0-r13, (sp)
stw r15, (sp, 56)
mfcr r0, epsr
stw r0, (sp, 60)
mfcr r0, epc
stw r0, (sp, 64)

mov r0, sp
bsr rt_hw_hard_fault_exception

ldw r0, (sp, 64)
mtcr r0, epc
ldw r0, (sp, 60)
bseti r0, 6
mtcr r0, epsr
ldw r15, (sp, 56)
ldm r0-r13, (sp)
addi sp, 68

rte

.global interrupt_handler
.type interrupt_handler, %function
interrupt_handler:

subi sp, 68
stm r0-r13, (sp)
stw r15, (sp, 56)
mfcr r0, epsr
stw r0, (sp, 60)
mfcr r0, epc
stw r0, (sp, 64)


bsr rt_interrupt_enter


mfcr r0, psr
lsri r0, 16
zextb r0
subi r0, 32



psrset ee,ie



bsr rt_hw_interrupt_dispatch



psrclr ee,ie



bsr rt_interrupt_leave


bsr rt_interrupt_get_nest
cmpnei r0, 0
bt __intr_exit2


lrw r0, rt_thread_switch_interrupt_flag
ldw r1, (r0)
cmpnei r1, 0
bf __intr_exit2

lrw r0, 0XE000EC08
bgeni r1, 0
stw r1, (r0)
movi r0, 0x0
lrw r2, 0xE000EC10
stw r0, (r2)
lrw r2, 0xE000E300
stw r0, (r2)

__intr_exit2:

ldw r0, (sp, 64)
mtcr r0, epc
ldw r0, (sp, 60)
mtcr r0, epsr
ldw r15, (sp, 56)
ldm r0-r13, (sp)
addi sp, 68

rte
