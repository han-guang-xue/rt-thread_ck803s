#ifndef __SPI_H__
#define __SPI_H__

#include <sysdep.h>

/* SPI IRQ num */
#define SPI_IRQ_NUM            11

/* interrupt event list */
#define SPI_INTR_TFTH          (1 << 0)
#define SPI_INTR_RFTH          (1 << 1)
#define SPI_INTR_TFUR          (1 << 2)
#define SPI_INTR_RFOR          (1 << 3)

#define SPI_TFTH_STS           (1 << 0)
#define SPI_RFTH_STS           (1 << 1)
#define SPI_TFUR_STS           (1 << 2)
#define SPI_RFOR_STS           (1 << 3)

/* spi_config_t params */
/* word_size */
#define SPI_WORD_SIZE_8BIT      0
#define SPI_WORD_SIZE_16BIT     1

/* endian */
#define SPI_ENDIAN_MSB          0
#define SPI_ENDIAN_LSB          1

/* cpol */
#define SPI_CPOL_LOW            0
#define SPI_CPOL_HIGH           1

/* cpha */
#define SPI_CPHA_1EDGE          0
#define SPI_CPHA_2EDGE          1

/* sck_div */
#define SPI_SCK_DIV_2           2
#define SPI_SCK_DIV_4           4
#define SPI_SCK_DIV_8           8

typedef struct spi_config {

    uint32 word_size;
    uint32 endian;
    uint32 cpol;
    uint32 cpha;
    uint32 sck_div;
} spi_config_t;

void spi_intr_enable(uint32 intr_src);
void spi_intr_disable(uint32 intr_src);
uint32 spi_intr_status(void);
void spi_intr_clear(uint32 intr_src);
void spi_frame_output_port_set(uint32 port_num);
void spi_frame_output_low(void);
void spi_frame_output_high(void);
uint32 spi_recv(uint8 *buf, uint32 nbytes);
uint32 spi_send(uint8 *buf, uint32 nbytes);
int32 spi_hw_init(spi_config_t *config);
void spi_send_recv(uint8 *send_buff,uint8 *recv_buff,uint8 nbytes);

#endif

