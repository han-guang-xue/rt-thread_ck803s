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
 * @file     gcc_csky.h
 * @brief    csky linker file for TIH
 * @version  V1.0
 * @date     29. OCT 2018
 ******************************************************************************/

MEMORY
{
    SRAM1   : ORIGIN = 0x0,         LENGTH = 0x20000   /* on-chip SRAM1 128KB */
    SRAM2   : ORIGIN = 0x20000,     LENGTH = 0x20000   /* on-chip SRAM2 128KB */
    D-TCM   : ORIGIN = 0x400000,    LENGTH = 0x8000    /* D-TCM  32KB         */
    SRAM3   : ORIGIN = 0x11100000 , LENGTH = 0x2000    /* on-chip SRAM2 8KB   */
    
    IFLASH  : ORIGIN = 0x01000000 , LENGTH = 0x80000   /* NOR FLASH 512KB     */
}

PROVIDE (__stack_top = 0x407800);                 /* left 2KB used by share mem          */
PROVIDE (stack_size = 0x1000);                    /* svc_stack + irq_stack =4KB          */
PROVIDE (irq_stack_offset = __stack_top);         /* irq_stack=1KB, hold top stack       */
PROVIDE (svc_stack_offset = __stack_top - 0x400); /* svc_stack=3KB, hold after irq_stack */

PROVIDE (__heap_start = __exdata_end);
PROVIDE (__heap_end = 0x40000);
PROVIDE (heap_size = __heap_end - __heap_start);

PROVIDE (__boot_lbase = LOADADDR(.text_1));
PROVIDE (__boot_ebase = ADDR(.text_1));
PROVIDE (__boot_size =  SIZEOF(.text_1));

PROVIDE (__boot2_lbase = LOADADDR(.text_2));
PROVIDE (__boot2_ebase = ADDR(.text_2));
PROVIDE (__boot2_size =  SIZEOF(.text_2));

PROVIDE (__data_lbase =  LOADADDR(.data));
PROVIDE (__data_ebase =  ADDR(.data));
PROVIDE (__data_size =  SIZEOF(.data));

PROVIDE (__bss_base =  ADDR(.bss));
PROVIDE (__bss_size =  SIZEOF(.bss));

PROVIDE (__exdata_base =  ADDR(.exdata));
PROVIDE (__exdata_size =  SIZEOF(.exdata));

REGION_ALIAS("REGION_TEXT1",   SRAM1);
REGION_ALIAS("REGION_TEXT2",   IFLASH);
REGION_ALIAS("REGION_RODATA",  IFLASH);
REGION_ALIAS("REGION_EXDATA",  SRAM2);
REGION_ALIAS("REGION_DATA",    D-TCM);
REGION_ALIAS("REGION_BSS",     D-TCM);

ENTRY(reset_handler)
SECTIONS
{
 .text_1 : {
  . = ALIGN(0x4) ;
  KEEP(*(.vectors))
  *startup_gcc.o(.text*)
  *contex_ck803_gcc.o(.text*)
  *flash.o(.text*)
  *mm_*.o(.text*)
  *lib_*.o(.text*)
  *dq_*.o(.text*)
  *malloc*.o(.text*)
  _add*.o(.text*)
  _mul*.o(.text*)
  _div*.o(.text*)
  mem*.o(.text*)
  str*.o(.text*)
  *pack*.o(.text*)
  _float*.o(.text*)
  *(.fast)
  . = ALIGN(0x4) ;
 } > REGION_TEXT1

 .text_2 (0x01000000 + SIZEOF(.text_1)): AT(0x01000000 + SIZEOF(.text_1)){
  . = ALIGN(0x4) ;
  *(.text)
  *(.text*)
  *(.text.*)
  . = ALIGN (4) ;
  
  /* section information for finsh shell */
  . = ALIGN(4);
  __fsymtab_start = .;
  KEEP(*(FSymTab))
  __fsymtab_end = .;
  . = ALIGN(4);
  __vsymtab_start = .;
  KEEP(*(VSymTab))
  __vsymtab_end = .;
  . = ALIGN(4);
  
  /* section information for initial. */
  . = ALIGN(4);
  __rt_init_start = .;
  KEEP(*(SORT(.rti_fn*)))
  __rt_init_end = .;
  . = ALIGN(4);
  
  /* section information for utest */
  __rt_utest_tc_tab_start = .;
  KEEP(*(UtestTcTab))
  __rt_utest_tc_tab_end = .;
  . = ALIGN(0x10) ;
  __etext = . ;
 } > REGION_TEXT2
 
 .rodata : AT(LOADADDR(.text_2) + SIZEOF(.text_2)){
  . = ALIGN(0x4) ;
  __rodata = .;
  *(.rodata)
  *(.rodata*)
  *(.rodata.*)
  . = ALIGN(0x4) ;
  __erodata = .;
 } > REGION_RODATA
 
 .data : AT(LOADADDR(.rodata) + SIZEOF(.rodata)){
  . = ALIGN(0x4) ;
  *(.data)
  *(.data*)
  *(.data.*)
  . = ALIGN(0x4) ;
 } > REGION_DATA
 
 .bss : {
  . = ALIGN(0x4) ;
  __sbss = ALIGN(0x4) ;
  *(.bss)
  *(.bss.*)
  *(COMMON)
  . = ALIGN(0x4) ;
  __bss_end__ = .;
 } > REGION_BSS
 
  /* EXDATA section */
 .exdata(NOLOAD) : {
    . = ALIGN(0x4) ;
    __exdata_start = .;
    *(.exdata)
    . = ALIGN(0x4) ;
    __exdata_end = .;
 } > REGION_EXDATA
 
}
