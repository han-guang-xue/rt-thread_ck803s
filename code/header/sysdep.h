#ifndef __SYSDEP_H__
#define __SYSDEP_H__

#ifndef uint64
#define uint64          unsigned long long
#endif

#ifndef uint32
#define uint32          unsigned int
#endif

#ifndef int32
#define int32           int
#endif

#ifndef uint16
#define uint16          unsigned short
#endif

#ifndef int16
#define int16           short
#endif

#ifndef uint8
#define uint8           unsigned char
#endif

#ifndef int8
#define int8            char
#endif

#ifndef NULL
#define NULL            ((void *)0)
#endif

#ifndef __cplusplus
#define bool            int
#endif

#ifndef FALSE
#define FALSE           0
#endif

#ifndef TRUE
#define TRUE            1
#endif

#ifndef read32
#define read32(addr)         (*(volatile uint32 *)(addr))
#endif

#ifndef write32
#define write32(addr, val)   (*(volatile uint32 *)(addr) = (val))
#endif

#ifndef DIR_IN
#define DIR_IN          0
#endif

#ifndef DIR_OUT
#define DIR_OUT         1
#endif

#ifndef ADDR_INC
#define ADDR_INC        0
#endif

#ifndef ADDR_FIX
#define ADDR_FIX        1
#endif

#ifdef __CSKY__
#define __isr           __attribute__((isr))
#else
#define __isr
#endif

#define __packed        __attribute__((packed))
#define __align4        __attribute__((aligned(4)))

#define __fast          __attribute__((section(".fast")))
#define __exdata        __attribute__((section(".exdata"),zero_init))
#define __overlay       __attribute__((section(".overlay")))

#define __weak          __attribute__((weak))

#endif

