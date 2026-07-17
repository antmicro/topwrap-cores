/*
 Copyright 2019-2026 Western Digital Corporation or its affiliates.
 Copyright 2022-2026 Antmicro <www.antmicro.com>

 SPDX-License-Identifier: Apache-2.0
 Licensed under the Apache License, Version 2.0, see LICENSE for details.

 This is an automatically generated file by wojciech on Wed Oct 14 09:40:06 CEST 2026

 cmd:    veer -fpga_optimize=1 -unset=assert_on -set=reset_vec=0x80000000 -set=ret_stack_size=2 -set=btb_enable=0 -set=btb_size=8 -set=bht_size=32 -set=dccm_size=16 -set=dccm_num_banks=2 -set=iccm_enable=0 -set=icache_enable=0 -set=dccm_enable=0 -set=dma_buf_depth=2 -set=div_bit=1 -set=pic_total_int=8 

*/
OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x80000000;
  .text.init .  : { *(.text.init) }
  
  .text . : { *(.text) }
  _end = .;
  . = 0xd0580000;
  .data.io .  : { *(.data.io) }
    . = 0xc0580000 ;
  .data  :  ALIGN(0x800) { *(.*data) *(.rodata*)}
  .bss :  {BSS_START = .; *(.*bss)}
  BSS_END = .;
  STACK = ALIGN(16) + 0x1000;
  
  
}

