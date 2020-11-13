/*
 * File      : showmem.c
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
#include <stdlib.h>

void rt_hw_show_memory(rt_uint32_t addr, rt_uint32_t size)
{
    int i = 0, j = 0;

    addr = addr & ~0xF;
    size = 4 * ((size + 3) / 4);

    while (i < size) {
        rt_kprintf("0x%08x: ", addr);

        for (j = 0; j < 4; j++) {
            rt_kprintf("0x%08x  ", *(rt_uint32_t *)addr);

            addr += 4;
            i++;
        }

        rt_kprintf("\n");
    }

    return;
}

void rt_show_memory(int argc, char **argv)
{
    rt_uint32_t addr;
    rt_uint32_t size;
    if (argc < 3) {
        rt_kprintf("Usage: rt_show_memory addr size \n");
        rt_kprintf("Like: rt_show_memory 0x0 100 \n");
        return;
    }

    addr = strtoul(argv[1], 0, 0);
    size = strtoul(argv[2], 0, 0);
    rt_hw_show_memory(addr, size);
}

MSH_CMD_EXPORT(rt_show_memory, show_memory usage:rt_show_memory addr size);
