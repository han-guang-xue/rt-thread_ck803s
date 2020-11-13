#ifndef __GPIO_H__
#define __GPIO_H__

#include <sysdep.h>

#define GPIO_NUMS                     16

/* GPIO IRQ num */
#define GPIO_IRQ_NUM                  19

/* gpio_config_t params */
/* io mode */
#define GPIO_IOMODE_OUT               0   // out mode
#define GPIO_IOMODE_INPU              1   // pull up input
#define GPIO_IOMODE_INPD              2   // pull down input
#define GPIO_IOMODE_INFT              3   // floating input

/* trig mode */
#define GPIO_TRIGMODE_NONE            0
#define GPIO_TRIGMODE_EDGE_RISING     1
#define GPIO_TRIGMODE_EDGE_FALLING    2
#define GPIO_TRIGMODE_EDGE_BOTH       3
#define GPIO_TRIGMODE_LEVEL_HIGH      4
#define GPIO_TRIGMODE_LEVEL_LOW       5
#define GPIO_TRIGMODE_LEVEL_BOTH      6

#define GPIO_MODE_PULL_UP             0
#define GPIO_MODE_PULL_DOWN           1

typedef struct gpio_config {
    uint32 pin;
    uint32 io_mode;
    uint32 trig_mode;
} gpio_config_t;

int32 gpio_hw_init(gpio_config_t *config);
void gpio_intr_enable(uint32 pin);
void gpio_intr_disable(uint32 pin);
uint32 gpio_intr_status(void);
void gpio_intr_clear(uint32 intr_src);
void gpio_set(uint32 pin, uint32 val);
uint32 gpio_get(uint32 pin);
void gpio_pull_mode_set(uint32 pin, uint32 mode);

#endif
