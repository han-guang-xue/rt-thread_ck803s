#ifndef __SRAM_H__
#define __SRAM_H__

#define SRAM_EXT_BASE       0x20000000  // equals AXI_BASE
#define SRAM_EXT_SIZE       0           // External SRAM: max 32MB

#define SRAM_TAB_BASE       0x11100000
#define SRAM_TAB_SIZE       0x2000      // SRAM for table: 8KB
#ifdef __CSKY__
    #define SRAM_BUF_BASE   0x10000     // TODO
    #define SRAM_BUF_SIZE   (0x40000 - 0x10000)
    #define OFFSET          0x10000
#else
    #define SRAM_BUF_BASE   0x11200000
    #define SRAM_BUF_SIZE   0x40000     // SRAM for data buffer: 256KB
    #define OFFSET          0
#endif

/* the following macros are used for AHB/AXI addr converting */
#define AXI_TAB_ADDR        0x22200000
#define AXI_BUF_ADDR        0x22300000

#define AXI_ADDR(addr)     (((addr) >= SRAM_BUF_BASE && (addr) < (SRAM_BUF_BASE + SRAM_BUF_SIZE)) ? \
        ((addr) + AXI_BUF_ADDR - (SRAM_BUF_BASE & 0xFFF00000)) : \
        ((addr) >= SRAM_TAB_BASE && (addr) < (SRAM_TAB_BASE + SRAM_TAB_SIZE)) ? \
        ((addr) + AXI_TAB_ADDR - (SRAM_TAB_BASE & 0xFFF00000)) : \
        (addr))
#define AHB_ADDR(addr)     (((addr) >= AXI_BUF_ADDR && (addr) < (AXI_BUF_ADDR + SRAM_BUF_SIZE + OFFSET)) ? \
        ((addr) - AXI_BUF_ADDR + (SRAM_BUF_BASE & 0xFFF00000)) : \
        ((addr) >= AXI_TAB_ADDR && (addr) < (AXI_TAB_ADDR + SRAM_TAB_SIZE)) ? \
        ((addr) - AXI_TAB_ADDR + (SRAM_TAB_BASE & 0xFFF00000)) : \
        (addr))

#endif /* __SRAM_H__ */

