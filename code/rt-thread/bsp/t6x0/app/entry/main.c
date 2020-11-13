
#include <rtthread.h>
#include <stdio.h>
#include <stdlib.h>
#include "linklayer.c"

/* 事件控制块 */

ALIGN(RT_ALIGN_SIZE)
static char thread1_stack[1024];
static struct rt_thread thread1;

/* 线程1入口函数 */
static void thread1_entry(void *param)
{
	entry_main();
}


int main(void) {	

	
	
	rt_thread_init(&thread1,
                   "thread1",
                   thread1_entry,
                   RT_NULL,
                   &thread1_stack[0],
                   sizeof(thread1_stack), 8, 50);
    rt_thread_startup(&thread1);
	
	
	return 0;
}


