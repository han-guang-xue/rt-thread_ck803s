#ifndef __I2C_H__
#define __I2C_H__

#include <sysdep.h>

/* i2c IRQ num */
#define I2C_IRQ_NUM             16

/* interrupt event list */
#define I2C_INTR_STOPI          (1 << 0)
#define I2C_INTR_STARTI         (1 << 1)
#define I2C_INTR_NACKI          (1 << 2)
#define I2C_INTR_TDIEN          (1 << 3)

#define I2C_STOP_STS            (1 << 0)
#define I2C_START_STS           (1 << 1)
#define I2C_NACK_STS            (1 << 2)
#define I2C_TDI_STS             (1 << 3)

/* max speed 3.4MHZ */
#define I2C_MAX_SPEED           3400000

typedef struct i2c_config {
    uint32 speed;
} i2c_config_t;

void i2c_intr_enable(uint32 intr_src);
void i2c_intr_disable(uint32 intr_src);
uint32 i2c_intr_status(void);
void i2c_intr_clear(uint32 intr_src);
uint32 i2c_status_get(void);
int32 i2c_hw_init(i2c_config_t *config);
bool i2c_is_busy(void);
int32 i2c_send(uint8 data, uint8 start, uint8 stop);
int32 i2c_recv(uint8 *data, uint32 stop);
void i2c_scl_val_set(uint32 val);
void i2c_sda_val_set(uint32 val);

#endif /* end of  __I2C_H__ */

