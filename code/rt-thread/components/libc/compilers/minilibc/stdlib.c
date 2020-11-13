/*
 * File      : stdlib.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2008, RT-Thread Development Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://www.rt-thread.org/license/LICENSE
 *
 * Change Logs:
 * Date           Author       Notes
 * 2008-08-14     Bernard      the first version
 */

#include <rtthread.h>

#if !defined (RT_USING_NEWLIB) && defined (RT_USING_MINILIBC)
#include <stdlib.h>

#ifdef RT_USING_HEAP
void __fast *malloc(size_t size)
{
	return rt_malloc(size);
}

void __fast free(void *ptr)
{
	rt_free(ptr);
}

void __fast *realloc(void *ptr, size_t size)
{
	return rt_realloc(ptr, size);
}

void __fast *calloc(size_t nelem, size_t elsize)
{
	return rt_calloc(nelem, elsize);
}
#endif

#endif
