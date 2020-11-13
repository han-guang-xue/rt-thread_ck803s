#include <rtthread.h>
#include <rtdevice.h>
#include <tih/gpio.h>

#ifndef GPIO_TEST_SWITCH_NUM
#define GPIO_TEST_SWITCH_NUM            7  
#endif

#ifndef GPIO_TEST_ENABLE_NUM
#define GPIO_TEST_ENABLE_NUM            8  
#endif

void gpio_test_switch_on(void *args)
{
    uint32 status;

    status = gpio_intr_status();
    gpio_intr_clear(status);
    rt_hw_interrupt_clear(GPIO_IRQ_NUM); // clear intr irq status

    rt_kprintf("GPIO INT!\n");
}


static void gpio_irq_test(void)
{
    rt_pin_mode(GPIO_TEST_SWITCH_NUM, PIN_MODE_INPUT);//PULLUP ????

    rt_pin_attach_irq(GPIO_TEST_SWITCH_NUM, PIN_IRQ_MODE_RISING, gpio_test_switch_on, RT_NULL);

    rt_pin_irq_enable(GPIO_TEST_SWITCH_NUM, PIN_IRQ_ENABLE);
}

MSH_CMD_EXPORT(gpio_irq_test, gpio irq test);