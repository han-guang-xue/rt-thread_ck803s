#ifndef __WDT_H__
#define __WDT_H__

#include <sysdep.h>

/* WDT dma_config_t options */
/* signals */
#define WDT_SIGNAL_RESET        0x1
#define WDT_SIGNAL_INTR         0x2
#define WDT_SIGNAL_NONE         0x0

/* WDT IRQ num */
#define WDT_IRQ_NUM             17

/* chip reset target type */
#define RESET_TARGET_FIRMWARE   0
#define RESET_TARGET_XBOOTROM   1
#define RESET_TARGET_UNLOCK     2

/* struct/enum */
typedef struct wdt_config {
    uint32 seconds;     // Time unit is second
    uint32 signals;     // WDT signal class: multi-signal use sig1 | sig2 | sig3
} wdt_config_t;

/* functions */
int32 wdt_hw_init(wdt_config_t *config);
void wdt_intr_enable(void);
void wdt_intr_disable(void);
uint32 wdt_intr_status(void);
void wdt_intr_clear(uint32 intr_status);
void wdt_start(void);
void wdt_stop(void);
void wdt_feed(void);

/* chip reset function */
void chip_reset(uint32 target);

#endif /* __WDT_H__ */
