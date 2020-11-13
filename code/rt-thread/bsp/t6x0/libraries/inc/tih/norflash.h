#ifndef __NORFLASH_H__
#define __NORFLASH_H__

#include <sysdep.h>

int32  norflash_hw_init(void);
uint8  norflash_byte_read(uint32 offset);
int32  norflash_byte_write(uint32 offset,uint8 data);
int32  norflash_read(uint32 offset, uint8 *buf, uint32 nbytes);
int32  norflash_write(uint32 offset, uint8 *buf, uint32 nbytes);
int32  norflash_sector_erase(uint32 offset);
int32  norflash_block_erase(uint32 offset);
int32  norflash_chip_erase(void);
uint32 norflash_capacity_get(void);

#endif

