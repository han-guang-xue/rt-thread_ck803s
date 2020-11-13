#include <rthw.h>
#include <rtdevice.h>
#include <tih/uart.h>

#ifdef RT_USING_SERIAL

#ifdef RT_USING_UART1
static struct rt_serial_device  serial[UART_NUMS];
static uint32 serial_index[UART_NUMS] = {0, 1};
#else
#undef UART_NUMS
#define UART_NUMS       1
static struct rt_serial_device  serial[UART_NUMS];
static uint32 serial_index[UART_NUMS] = {0};
#endif

void __fast uart0_irq_handler(void)
{
    uint32 status;

    status = uart_intr_status(UART0);
    uart_intr_clear(UART0, status);
    rt_hw_interrupt_clear(UART0_IRQ_NUM);

    rt_hw_serial_isr(&serial[0],RT_SERIAL_EVENT_RX_IND);
}

#ifdef RT_USING_UART1
void __fast uart1_irq_handler(void)
{
    uint32 status;

    status = uart_intr_status(UART1);
    uart_intr_clear(UART1, status);
    rt_hw_interrupt_clear(UART1_IRQ_NUM);

    rt_hw_serial_isr(&serial[1],RT_SERIAL_EVENT_RX_IND);
}
#endif

static rt_err_t __fast drv_uart_configure(struct rt_serial_device *serial, struct serial_configure *cfg)
{
    uint32 uart;
    uint32 parity;
    uart_config_t config;

    RT_ASSERT(serial != RT_NULL);
    uart = *(uint32 *)serial->parent.user_data;
    RT_ASSERT((uart == UART0) || (uart == UART1));

    if (cfg->parity == PARITY_EVEN)
        parity = UART_PARITY_EVEN;
    else if (cfg->parity == PARITY_ODD)
        parity = UART_PARITY_ODD;
    else
        parity = UART_PARITY_NO;

    config.baudrate  = cfg->baud_rate;
    config.parity    = parity;
    config.stop_bits = UART_STOP_BIT_EQ_1;
    config.word_size = UART_WORD_SIZE_8BIT;

    /* default uart PIO mode */
    uart_hw_init(uart, &config);

    return RT_EOK;
}

static rt_err_t __fast drv_uart_control(struct rt_serial_device *serial, int cmd, void *arg)
{
    uint32 uart;

    RT_ASSERT(serial != RT_NULL);
    uart = *(uint32 *)serial->parent.user_data;
    RT_ASSERT((uart == UART0) || (uart == UART1));

    switch (cmd)
    {
    case RT_DEVICE_CTRL_CLR_INT:
        /* Disable the UART Interrupt */
        uart_intr_disable(uart, UART_INTR_RX_READY);
        break;

    case RT_DEVICE_CTRL_SET_INT:
        /* Enable the UART Interrupt */
        if (uart == UART0) {
            uart_intr_enable(uart, UART_INTR_RX_READY);
            rt_hw_interrupt_install(UART0_IRQ_NUM, (rt_isr_handler_t)uart0_irq_handler, (void *)UART0, "UART0");
            rt_hw_interrupt_umask(UART0_IRQ_NUM);
        }
#ifdef RT_USING_UART1
        else{
            uart_intr_enable(uart, UART_INTR_RX_READY);
            rt_hw_interrupt_install(UART1_IRQ_NUM, (rt_isr_handler_t)uart1_irq_handler, (void *)UART1, "UART1");
            rt_hw_interrupt_umask(UART1_IRQ_NUM);
        }
#endif
        break;
    }

    return (RT_EOK);
}

static int __fast drv_uart_putc(struct rt_serial_device *serial, char c)
{
    uint32 uart;

    RT_ASSERT(serial != RT_NULL);
    uart = *(uint32 *)serial->parent.user_data;
    RT_ASSERT((uart == UART0) || (uart == UART1));

    uart_putc(uart, c);

    return (1);
}

static int __fast uart_getc_no_poll(uint32 uart, uint8 *ch)
{
    if (uart_rx_ready(uart)) {
        *ch = uart_ndelay_getc(uart);
        return RT_EOK;
    }
    *ch = 0;

    return -RT_ERROR;
}

static int __fast drv_uart_getc(struct rt_serial_device *serial)
{
    uint8_t ch;
    uint32 uart;

    RT_ASSERT(serial != RT_NULL);
    uart = *(uint32 *)serial->parent.user_data;
    RT_ASSERT((uart == UART0) || (uart == UART1));

    if (!uart_getc_no_poll(uart, &ch))
    {
        return (int)(ch);
    }
    else
    {
        return -1;
    }
}

const struct rt_uart_ops uart_ops =
{
    drv_uart_configure,
    drv_uart_control,
    drv_uart_putc,
    drv_uart_getc,
};

static int drv_uart_init(void)
{
    struct serial_configure config = RT_SERIAL_CONFIG_DEFAULT;

    serial[0].ops = &uart_ops;
    serial[0].config = config;
    rt_hw_serial_register(&serial[0],"uart0", RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_INT_RX, &serial_index[UART0]);

#ifdef RT_USING_UART1
    serial[1].ops = &uart_ops;
    serial[1].config = config;
    rt_hw_serial_register(&serial[1],"uart1", RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_INT_RX, &serial_index[UART1]);
#endif

    return 0;
}
INIT_BOARD_EXPORT(drv_uart_init);
#endif
