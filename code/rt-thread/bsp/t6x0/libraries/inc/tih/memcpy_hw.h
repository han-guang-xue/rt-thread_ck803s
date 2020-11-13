#ifndef __MEMCPY_HW_H__
#define __MEMCPY_HW_H__

#include <sysdep.h>

int32 mem_hw_init(void);
void memcpy_hw(void *dst_addr, void *src_addr, uint32 nbytes);
void memset_hw(void *dst_addr, int32 c, uint32 nbytes);

#endif /* __MEMCPY_HW_H__ */
