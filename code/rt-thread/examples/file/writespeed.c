/*
 * File      : writespeed.c
 * This file is part of RT-TestCase in RT-Thread RTOS
 * COPYRIGHT (C) 2010, RT-Thread Development Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://www.rt-thread.org/license/LICENSE
 *
 * Change Logs:
 * Date           Author       Notes
 * 2010-02-10     Bernard      first version
 */
#include <rtthread.h>
#include <dfs_posix.h>

void writespeed(const char* filename, int total_length, int block_size)
{
    int fd, index, length;
    char *buff_ptr;
    rt_tick_t tick;
    rt_uint32_t level;
//level = rt_hw_interrupt_disable();
    fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0);
    if (fd < 0)
    {
        rt_kprintf("open file:%s failed\n", filename);
        return;
    }

    buff_ptr = rt_malloc(block_size);
    if (buff_ptr == RT_NULL)
    {
        rt_kprintf("no memory\n");
        close(fd);

        return;
    }

	/* prepare write data */
	for (index = 0; index < block_size; index++)
	{
		buff_ptr[index] = index;
	}
	index = 0;

	/* get the beginning tick */
    tick = rt_tick_get();
	while (index < total_length / block_size)
	{
		length = write(fd, buff_ptr, block_size);
		if (length != block_size)
		{
			rt_kprintf("write failed\n");
			break;
		}

		index ++;
	}
    tick = rt_tick_get() - tick;

	/* close file and release memory */
    close(fd);
	rt_free(buff_ptr);
//rt_hw_interrupt_enable(level);
    /* calculate write speed */
    rt_kprintf("File write speed: %d byte/s\n", total_length / tick * RT_TICK_PER_SECOND);
}
long mk_mount_elm(void)
{
//    dfs_mkfs("elm","ata");
    if (dfs_mount("ata", "/", "elm", 0, 0)== 0)
    {
        rt_kprintf("Mount elm-fat done!\n");
    }
    else
    {
        rt_kprintf("Mount elm-fat failed.\n");
    }

    return 0;
}
MSH_CMD_EXPORT(mk_mount_elm,mkfs and mount elm);

long mk_mount_ext(void)
{
//    dfs_mkfs("ext","ata");
    if (dfs_mount("ata", "/", "ext", 0, 0)== 0)
    {
        rt_kprintf("Mount ext done!\n");
    }
    else
    {
        rt_kprintf("Mount ext failed.\n");
    }

    return 0;
}
MSH_CMD_EXPORT(mk_mount_ext,mkfs and mount ext);

#ifdef RT_USING_FINSH
#include <finsh.h>
FINSH_FUNCTION_EXPORT(writespeed, perform file write test);
#endif
