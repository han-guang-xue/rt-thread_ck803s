#ifndef __SCU_H__
#define __SCU_H__

#include <sysdep.h>

#define SCU_OSC_HZ               30000000  // OSC frequency = 30MHZ

/* div constant setting */
#define PLL_DIV_PRE              2

/* mode1-func0 : GPIO0[0:31], GPIO[6:15], GPIO1[0:5]/(SSP[2:5],UART1[0:1]) */
#define SCU_PIN_MUX_MODE1_0      0
/* mode1-func1 : GPIO0[0:31], SPI1, PWM, GPIO1[0:5]/(SSP[2:5],UART1[0:1]) */
#define SCU_PIN_MUX_MODE1_1      1
/* mode1-func2 : FIFO/SRAM/ADMUX, GPIO1[0:5]/(SSP[2:5],UART1[0:1]) */
#define SCU_PIN_MUX_MODE1_2      2

/* mode2 GPIO1[0:5]   select */
#define SCU_PIN_MUX_MODE2_GPIO1  0
/* mode2 SSP[2:5] and UART[0:1] select */
#define SCU_PIN_MUX_MODE2_S_U1   4

typedef enum {
    /**
     * Note:
     *  All modules managed by SCU are listed as follows:
     *  The function modes have three ways, and listed at right comment:
     *  1. clock_enable/disable(module)    : clock_gate
     *  2. module_reset(module)            : reset
     *  3. clock_freq_set/get(module, ...) : clock_freq
     *
     *  When selecting module, you should take careful of
     *  the function mode for the module whether the mode
     *  supported by the module.
     */
    MODULE_OSC = 0,         // clock_freq_get
    MODULE_PLL,             // clock_freq
    MODULE_AHB,             // clock_freq
    MODULE_AXI,             // clock_freq/reset/clock_gate
    MODULE_APB,             // clock_freq_get/reset/clock_gate
    MODULE_SATA_HOST,       // reset/clock_gate
    MODULE_SATA_DEVICE,     // reset/clock_gate
    MODULE_USB,             // reset/clock_gate
    MODULE_USB_60M,         // clock_freq/clock_gate
    MODULE_DMA,             // reset/clock_gate
    MODULE_SPIFLASH,        // reset/clock_gate
    MODULE_SPIFLASH_IO,     // clock_freq/clock_gate
    MODULE_PKE,             // reset/clock_gate
    MODULE_TRNG,            // reset/clock_gate
    MODULE_CRYPTO,          // clock_freq/reset/clock_gate
    MODULE_GMAC0,           // reset/clock_gate
    MODULE_GMAC1,           // reset/clock_gate
    MODULE_GMAC0_25M,       // clock_freq
    MODULE_GMAC1_25M,       // clock_freq
    MODULE_EMMC0,           // clock_freq/reset/clock_gate
    MODULE_EMMC1,           // clock_freq/reset/clock_gate
    MODULE_EMMC0_PHY,       // clock_freq/clock_gate
    MODULE_EMMC1_PHY,       // clock_freq/clock_gate
    MODULE_MUXIO,           // clock_freq/reset/clock_gate
    MODULE_MUXIO_INV,       // clock_freq
    MODULE_UART_IO,         // clock_freq/clock_gate
    MODULE_SPI,             // clock_freq/clock_gate
    MODULE_SPI_IO,          // clock_freq/clock_gate
    MODULE_I2C,             // clock_freq/clock_gate
    MODULE_TDC,             // reset
    MODULE_H2P,             // reset
    MODULE_H2X,             // reset
    MODULE_H2X_RSD,         // reset
    MODULE_USB3_PHY,        // reset
    MODULE_ALIEN,           // reset/clock_gate
    MODULE_GMAC0_125M,      // clock_freq/clock_gate
    MODULE_GMAC1_125M,      // clock_freq/clock_gate
    MODULE_ALL
} scu_module_t;

typedef enum clock_src {
    CLOCK_OSC,
    CLOCK_PLL
} clock_src_t;

/* functions */
uint32 clock_freq_get(uint32 module);
int32 clock_freq_set(uint32 module, uint32 freq);
clock_src_t clock_source_get(void);
void clock_source_set(clock_src_t src, uint32 freq);
void clock_enable(uint32 module);
void clock_disable(uint32 module);
void clock_reset(void);
void clock_normal(void);
void clock_standby(void);
void module_reset(uint32 module);
void multi_module_reset(uint32 *module, uint32 number);
void module_enable(uint32 module);
void module_disable(uint32 module);
float scu_tdc_temp_get(void);
uint64 scu_chipid_get(void);

void scu_ice_enable(void);
void scu_ice_disable(void);

void scu_pin_mux_set(uint32 mode1, uint32 mode2);
void scu_alien_enable(void);
void scu_alien_disable(void);
void scu_sw_cnt_enable(void);
uint32 scu_sw_cnt_get(void);

uint32 scu_reset_record_get(void);

#endif /* __SCU_H__ */
