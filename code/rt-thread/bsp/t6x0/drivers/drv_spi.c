#include <rthw.h>
#include <rtdevice.h>
#include <tih/scu.h>
#include <tih/spi.h>

#ifdef RT_USING_SPI

extern uint8 wsize_in_bytes;// default = 1


static rt_err_t drv_spi_configure(struct rt_spi_device* device, struct rt_spi_configuration* configuration)
{
    uint32_t SPI_APB_CLOCK;
    spi_config_t config;

    /* data_width */
    if(configuration->data_width <= 8) {
       config.word_size = SPI_WORD_SIZE_8BIT;
    }
    else if(configuration->data_width <= 16) {
       config.word_size = SPI_WORD_SIZE_16BIT;
    }
    else
    {
       return RT_EIO;
    }

    /* baudrate */
    SPI_APB_CLOCK = clock_freq_get(MODULE_SPI_IO); //TODO
    if(configuration->max_hz >= SPI_APB_CLOCK/2) {
        config.sck_div = 0;
    }
    else if(configuration->max_hz >= SPI_APB_CLOCK/4) {
        config.sck_div = 1;
    }
    else if(configuration->max_hz >= SPI_APB_CLOCK/8) {
        config.sck_div = 2;
    }
    else {
        config.sck_div = 49;// min prescaler hz = SPI_APB_CLOCK
    }

    /* CPOL */
    if(configuration->mode & RT_SPI_CPOL) {
       config.cpol = SPI_CPOL_HIGH;
    }
    else {
       config.cpol = SPI_CPOL_LOW;
    }
    /* CPHA */
    if(configuration->mode & RT_SPI_CPHA) {
       config.cpha = SPI_CPHA_2EDGE;
    }
    else {
       config.cpha = SPI_CPHA_1EDGE;
    }
    /* MSB or LSB */
    if(configuration->mode & RT_SPI_MSB) {
       config.endian = SPI_ENDIAN_MSB;
    }
    else {
       config.endian = SPI_ENDIAN_LSB;
    }

    /* init SPI */
    spi_hw_init(&config);

    return RT_EOK;

}

static rt_uint32_t __fast drv_spi_xfer(struct rt_spi_device *device, struct rt_spi_message *message)
{
    RT_ASSERT(device != RT_NULL);
    RT_ASSERT(device->bus != RT_NULL);

    if(message->cs_take) {
        spi_frame_output_low();
    }
    spi_send_recv((uint8 *)message->send_buf, (uint8 *)message->recv_buf, message->length);
    if(message->cs_release) {
        spi_frame_output_high();
    }
    return message->length;
}

const struct rt_spi_ops t610_spi_ops =
{
    drv_spi_configure,
    drv_spi_xfer
};

static int drv_spi_init(void)
{
    int result1 = RT_EOK;

    spi_frame_output_port_set(0); // frame/sync output select  0--fs_out_r

    static struct rt_spi_bus t610_spi_bus;
    result1 = rt_spi_bus_register(&t610_spi_bus, "spi1", &t610_spi_ops);

    return result1;
}
INIT_BOARD_EXPORT(drv_spi_init);

#endif /*RT_USING_SPI*/
