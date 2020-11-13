#include <rthw.h>
#include <rtdevice.h>
#include <tih/scu.h>
#include <tih/gpio.h>

#ifdef RT_USING_PIN

#define T610_PIN_NUMBERS 144
#define __T610_PIN(index, pin) {index, pin}
#define __T610_PIN_DEFAULT {-1, 0}

#define ITEM_NUM(items) sizeof(items)/sizeof(items[0])

struct pin_index
{
    uint32_t index;
    uint32_t pin;
};

static void __fast gpio_isr(void)
{
    uint32 status;

    status = gpio_intr_status();
    gpio_intr_clear(status);
    rt_hw_interrupt_clear(GPIO_IRQ_NUM); // clear intr irq status

    for (uint32 i = 0; i < GPIO_NUMS; ++i) {
        if (status & (1 << i )) {        // gpio n status happens.

        }
    }
}

static const struct pin_index pins[] =
{
#if (T610_PIN_NUMBERS == 144)
    __T610_PIN_DEFAULT,
    __T610_PIN(1, 1),
    __T610_PIN(2, 2),
    __T610_PIN(3, 3),
    __T610_PIN(4, 4),
    __T610_PIN(5, 5),
    __T610_PIN(6, 6),
    __T610_PIN(7, 7),
    __T610_PIN(8, 8),
    __T610_PIN(9, 9),
    __T610_PIN(10, 10),
    __T610_PIN(11, 11),
    __T610_PIN(12, 12),
    __T610_PIN(13, 13),
    __T610_PIN(14, 14),
    __T610_PIN(15, 15),
    __T610_PIN(16, 16),
    __T610_PIN(17, 17),
    __T610_PIN(18, 18),
    __T610_PIN(19, 19),
    __T610_PIN(20, 20),
    __T610_PIN(21, 21),
    __T610_PIN(21, 22),
    __T610_PIN(22, 23),
    __T610_PIN(24, 24),
    __T610_PIN(25, 25),
    __T610_PIN(26, 26),
    __T610_PIN(27, 27),
    __T610_PIN(28, 28),
    __T610_PIN(29, 29),
    __T610_PIN(30, 30),
    __T610_PIN(31, 31),
#endif
};

const struct pin_index *get_pin(uint8_t pin)
{
    const struct pin_index *index;

    if (pin < ITEM_NUM(pins))
    {
        index = &pins[pin];
        if (index->index == -1)
            index = RT_NULL;
    }
    else
    {
        index = RT_NULL;
    }

    return index;
};

void drv_pin_write(rt_device_t dev, rt_base_t pin, rt_base_t value)
{
    const struct pin_index *index;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return;
    }

    gpio_set(index->pin, value);
}

int drv_pin_read(rt_device_t dev, rt_base_t pin)
{
    int value;
    const struct pin_index *index;

    value = PIN_LOW;

    index = get_pin(pin);
    if (index == RT_NULL) {
        return value;
    }

    if (gpio_get(index->pin) != 0) {
        value = PIN_HIGH;
    }
    else {
        value = PIN_LOW;
    }

    return value;
}

void drv_pin_mode(rt_device_t dev, rt_base_t pin, rt_base_t mode)
{
    const struct pin_index *index;
    gpio_config_t config;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return;
    }

    config.trig_mode = GPIO_TRIGMODE_NONE;

    if (mode == PIN_MODE_OUTPUT) {
        /* output setting */
        config.pin = index->pin;
        config.io_mode = GPIO_IOMODE_OUT;
    }
    else if (mode == PIN_MODE_INPUT) {
        /* input setting: not pull. */
        config.pin = index->pin;
        config.io_mode = GPIO_IOMODE_INFT;
    }
    else if (mode == PIN_MODE_INPUT_PULLUP) {
        /* input setting: pull up. */
        config.pin = index->pin;
        config.io_mode = GPIO_IOMODE_INPU;
    }
    else if (mode == PIN_MODE_INPUT_PULLDOWN) {
        /* input setting: pull down. */
        config.pin = index->pin;
        config.io_mode = GPIO_IOMODE_INPD;
    }
    else {
        /* error mode */
        RT_ASSERT(0);
    }
    gpio_hw_init(&config);
    scu_pin_mux_set(SCU_PIN_MUX_MODE1_1, SCU_PIN_MUX_MODE2_GPIO1);
}

rt_err_t drv_pin_attach_irq(struct rt_device *device, rt_int32_t pin,
                  rt_uint32_t mode, void (*hdr)(void *args), void *args)
{
    const struct pin_index *index;
    gpio_config_t config;

    index = get_pin(pin);
    if (index == RT_NULL) {
        return -RT_ENOSYS;
    }

    if (mode == PIN_IRQ_MODE_RISING) {
        config.trig_mode = GPIO_TRIGMODE_EDGE_RISING;
    }
    else if (mode == PIN_IRQ_MODE_FALLING) {
        config.trig_mode = GPIO_TRIGMODE_EDGE_FALLING;
    }
    else if (mode == PIN_IRQ_MODE_RISING_FALLING) {
        config.trig_mode = GPIO_TRIGMODE_EDGE_BOTH;
    }
    else if (mode == PIN_IRQ_MODE_HIGH_LEVEL) {
        config.trig_mode = GPIO_TRIGMODE_LEVEL_HIGH;
    }
    else if (mode == PIN_IRQ_MODE_LOW_LEVEL) {
        config.trig_mode = GPIO_TRIGMODE_LEVEL_LOW;
    }
    else {
        /* error mode */
        RT_ASSERT(0);
    }

    config.pin = index->pin;
    config.io_mode = GPIO_IOMODE_INPU;
    gpio_hw_init(&config);
    scu_pin_mux_set(SCU_PIN_MUX_MODE1_1, SCU_PIN_MUX_MODE2_GPIO1);

    gpio_intr_enable(pin);
    rt_hw_interrupt_install(GPIO_IRQ_NUM, (rt_isr_handler_t)hdr, args, "GPIO");
    rt_hw_interrupt_umask(GPIO_IRQ_NUM);

    return 0;
}

rt_err_t drv_pin_detach_irq(struct rt_device *device, rt_int32_t pin)
{
    const struct pin_index *index;

    index = get_pin(pin);
    if (index == RT_NULL) {
        return -RT_ENOSYS;
    }

    gpio_intr_disable(index->pin);
    return 0;
}

rt_err_t drv_pin_irq_enable(struct rt_device *device, rt_base_t pin, rt_uint32_t enabled)
{
    const struct pin_index *index;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return -RT_ENOSYS;
    }

    gpio_intr_enable(index->pin);
    return 0;
}
const static struct rt_pin_ops _drv_pin_ops =
{
    drv_pin_mode,
    drv_pin_write,
    drv_pin_read,
    drv_pin_attach_irq,
    drv_pin_detach_irq,
    drv_pin_irq_enable,
};

static int drv_pin_init(void)
{
    int result;

    result = rt_device_pin_register("pin", &_drv_pin_ops, RT_NULL);
    return result;
}
INIT_BOARD_EXPORT(drv_pin_init);

#endif
