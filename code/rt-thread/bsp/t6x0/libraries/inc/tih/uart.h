#ifndef __UART_H__
#define __UART_H__

#include <sysdep.h>

/* UART console */
#define UART_CONSOLE                  UART0

#define UART0                         0
#define UART1                         1
#define UART_NUMS                     2

/* UART IRQ num */
#define UART0_IRQ_NUM                 14
#define UART1_IRQ_NUM                 15

/* UART interrupt event list */
#define UART_INTR_RX_ERROR            (1 << 0)     // Receiver Line Status error
#define UART_INTR_TX_EMPTY            (1 << 1)     // Transmitter Holding Register Empty
#define UART_INTR_RX_READY            (1 << 2)     // Received Data Ready

#define UART_ERR_OVERRUN              (1 << 4)
#define UART_ERR_FRAMING              (1 << 5)
#define UART_ERR_PARITY               (1 << 6)

/* UART uart_config_t options */

/* baudrate */
#define UART_BAUDRATE_9600             9600
#define UART_BAUDRATE_19200            19200
#define UART_BAUDRATE_38400            38400
#define UART_BAUDRATE_57600            57600
#define UART_BAUDRATE_115200           115200

/* word_size */
#define UART_WORD_SIZE_5BIT            0            // set UART character length=5bit
#define UART_WORD_SIZE_6BIT            1            // set UART character length=6bit
#define UART_WORD_SIZE_7BIT            2            // set UART character length=7bit
#define UART_WORD_SIZE_8BIT            3            // set UART character length=8bit

/* stop_bits */
#define UART_STOP_BIT_EQ_1             0            // set UART 1 stop bit
#define UART_STOP_BIT_GT_1             1            // set UART 1.5bit/2bit refering to word size

/* parity */
#define UART_PARITY_NO                 0            // set no parity
#define UART_PARITY_EVEN               1            // set even parity
#define UART_PARITY_ODD                2            // set odd  parity

/* struct/enum */
typedef struct uart_config {
    int32 baudrate;    // UART_BAUDRATE_9600/19200/38400/57600/115200
    int32 word_size;   // UART_WORD_SIZE_5BIT/6BIT/7BIT/8BIT
    int32 stop_bits;   // UART_STOP_SET/UNSET
    int32 parity;      // UART_PARITY_NO/EVEN/ODD
} uart_config_t;

/* functions */
int32 uart_hw_init(uint32 uart, uart_config_t *config);
void uart_fifo_init(uint32 uart);
void uart_intr_enable(uint32 uart, uint32 intr_src);
void uart_intr_disable(uint32 uart, uint32 intr_src);
uint32 uart_intr_status(uint32 uart);
void uart_intr_clear(uint32 uart, uint32 intr_src);

/* blocking function group */
void uart_putc(uint32 uart, uint8 data);
uint8 uart_getc(uint32 uart);
void uart_send(uint32 uart, uint8 *buf, uint32 nbytes);
void uart_recv(uint32 uart, uint8 *buf, uint32 nbytes);
void console_putc(uint8 data);
uint8 console_getc(void);

/* non-blocking function group */
bool uart_tx_ready(uint32 uart);
void uart_ndelay_putc(uint32 uart, uint8 data);
bool uart_rx_ready(uint32 uart);
uint8 uart_ndelay_getc(uint32 uart);

#endif // __UART_H__
