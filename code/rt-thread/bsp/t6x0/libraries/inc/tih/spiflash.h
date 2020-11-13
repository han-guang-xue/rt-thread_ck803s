#ifndef __SPIFLASH_H__
#define __SPIFLASH_H__

#include <sysdep.h>

#define SNFC_CMD_PORT                        0x0
#define SNFC_XIP_PORT                        0x1
#define SNFC_CLK_MODE_0                      0x0
#define SNFC_CLK_MODE_3                      0x1
#define SNFC_CLK_DIV_2                       0x0  
#define SNFC_CLK_DIV_4                       0x1  
#define SNFC_CLK_DIV_6                       0x2  
#define SNFC_CLK_DIV_8                       0x3  
#define SNFC_RXFIFO_THOD_1_4TH               0x0 
#define SNFC_RXFIFO_THOD_2_4TH               0x1 
#define SNFC_RXFIFO_THOD_3_4TH               0x2 
#define SNFC_TXFIFO_THOD_1_4TH               0x0 
#define SNFC_TXFIFO_THOD_2_4TH               0x1 
#define SNFC_TXFIFO_THOD_3_4TH               0x2 
#define SNCF_CMD_CMPLT_INTR_DISABLE          0x0
#define SNFC_CMD_CMPLT_INTR_ENABLE           0x1
#define SNFC_DMA_DISABLE                     0x0
#define SNFC_DMA_ENABLE                      0x1
#define SNFC_XIP_CS_0                        0x0
#define SNFC_XIP_CS_1                        0x1
#define SNFC_XIP_CS_2                        0x2
#define SNFC_XIP_CS_3                        0x3
#define SNFC_XIP_IO_MODE_DISABLE             0x0
#define SNFC_XIP_IO_MODE_ENABLE              0x1
#define SNFC_XIP_ADDR_LEN_3_BYTE             0x0
#define SNFC_XIP_ADDR_LEN_4_BYTE             0x1
#define SNFC_XIP_OP_MODE_SERIAL              0x0
#define SNFC_XIP_OP_MODE_DUAL                0x1
#define SNFC_XIP_OP_MODE_QUAD                0x2
#define SNFC_XIP_OP_MODE_DUAL_IO             0x3
#define SNFC_XIP_OP_MODE_QUAD_IO             0x4

#define SPIFLASH_XIP_ADR_BASE               0x2000000
#define SPIFLASH_CAPCITY_BIT(x)             (x & 0xFF)
#define SPIFLASH_ERASE_4K_ALIGN             0xfffff000
#define SPIFLASH_ERASE_32K_ALIGN            0xffff8000

typedef struct spiflash_config {
    /* Spiflash controller port selsect: 
     * 0x1: Command slave port(SNFC_CMD_PORT)) 
     * 0x0: XIP port(SNFC_XIP_PORT)
     */ 
    uint32 port_sel;

    /* Spiflash ready/busy bit location in chip status register: 
     * 0x0 ~ 0x7 : BIT0 ~ BIT7
     */
    uint32 rdy_bit_loc;  

    /* SPI clock mode at the IDLE state
     * 0x0: Mode0 (SNFC_CLK_MODE_0)
     * 0x1: Mode3 (SNFC_CLK_MODE_3)
     */
    uint32 clk_mode;

    /* SPI clock divider 
     * 0x0: divider by 2(SNFC_CLK_DIV_2)
     * 0x1: divider by 4(SNFC_CLK_DIV_4)
     * 0x2: divider by 6(SNFC_CLK_DIV_6)
     * 0x3: divider by 8(SNFC_CLK_DIV_8)
     */
    uint32 clk_div;

    /* The time from inactive cs to active cs, the unit is sck_out period
     * 0x0 ~ 0xF: 1 cycle ~ 16 cycle*/
    uint32 cs_del;

    /* This value is used to set the trigger level for the rx/tx fifo threshold
     * itnerrupt for the DMA handshake mode.
     * 0x0: 1/4 fifo depth (SNFC_RX/TXFIFO_THOD_1_4TH)
     * 0x1: 2/4 fifo depth (SNFC_RX/TXFIFO_THOD_2_4TH)
     * 0x2: 3/4 fifo depth (SNFC_RX/TXFIFO_THOD_3_4TH)
     */
    uint32 rxfifo_thod;
    uint32 txfifo_thod;

    /* Command complete interrupt enable 
     * 0x0: disable (SNCF_CMD_CMPLT_INTR_DISABLE) 
     * 0x1: enable  (SNCF_CMD_CMPLT_INTR_ENABLE)
     */
    uint32 cmd_cmplt_intr_en;

    /* Enable/Disable the DMA handshake
     * 0x0: diable(SNFC_DMA_DISABLE)
     * 0x1: enable(SNFC_DMA_ENABLE)
     */
    uint32 dma_en;

    /* The SPI flash size */
    uint32 flash_size;

    /* The XIP port chip select
     * 0x0: cs0(SNFC_XIP_CS_0)
     * 0x1: cs1(SNFC_XIP_CS_1)
     * 0x2: cs2(SNFC_XIP_CS_2)
     * 0x3: cs3(SNFC_XIP_CS_3)
     * */
    uint32 xip_cs;

    /* Quad/Dual I/O mode enable for XIP port
     * 0x0: disable the Quad/Dual I/O mode(SNFC_XIP_IO_MODE_DISABLE)
     * 0x1: enable the Qual/Dual I/O mode(SNFC_XIP_IO_MODE_ENABLE)
     */
    uint32 xip_io_mode_en;

    /* Quad/Dual I/O mode code for XIP port */
    uint32 xip_io_mode_code;

    /* Instruction code for XIP port */
    uint32 xip_instr;

    /* Address length for XIP port 
     * 0x0: 3-bytes address(SNFC_XIP_ADDR_LEN_3_BYTE)
     * 0x1: 4-bytes address(SNFC_XIP_ADDR_LEN_4_BYTE)
     */
    uint32 xip_addr_len;

    /* Operation code for XIP port 
     * 0x0: seiral mode(SNFC_XIP_OP_MODE_SERIAL)
     * 0x1: dual mode(SNFC_XIP_OP_MODE_DUAL)
     * 0x2: quad mode(SNFC_XIP_OP_MODE_QUAD)
     * 0x3: dual_io mode(SNFC_XIP_OP_MODE_DUAL_IO)
     * 0x4: quad_io mode(SNFC_XIP_OP_MODE_QUAD_IO)
     */
    uint32 xip_op_mode;

    /* Second dummy state cycle for XIP port(the second dummy state is located between 
     * the address and the data state that excludes the continuous read mode state)
     * 0x0: No second dummy state
     * 0x1 ~ 0x20: 1 dummy second cycle ~ 32 dummy second cycles
     */
    uint32 xip_dum_2_cyc;

    //TODO
    /* Sram read latency setting, the unit is cycle number */
    uint32 sram_rd_late;

    //TODO
    /* Bypass cache function */
    uint32 bypass_cache;
}spiflash_conf_t;

typedef struct spiflash_command {
    /* Flash address */
    uint32 addr;

    /**
    * Continuous read mode enable 
     * 0x0: disable the continuous read mode(SNFC_CONT_RD_MODE_DISABLE)
     * 0x1: enable the 1-byte continuous read mode(SNFC_CONT_RD_MODE_ENABLE)
     */
    uint32 cont_rd_mode;

    /**
    * Instruction code length
     * 0x0: no instruction code(SNFC_INSTR_LEN_0_BYTE)
     * 0x1: 1-byte instruction code(SNFC_INSTR_LEN_1_BYTE)
     * 0x2: 2-byte insturction code(repeat the instuction code)(SNFC_INSTR_LEN_2_BYTE)
     */
    uint32 instr_len;

    /* Second dummy state cycle.(the second dummy state is located between 
     * the address and the data state that excludes the continuous read mode state)
     */
    uint32 dum_2_cyc;

    /**
     * Address byte number
     * 0x0: no address state(SNFC_ADDR_LEN_0_BYTE)
     * 0x1: 1-byte address(SNFC_ADDR_LEN_1_BYTE)
     * 0x2: 2-byte address(SNFC_ADDR_LEN_2_BYTE)
     * 0x3: 3-byte address(SNFC_ADDR_LEN_3_BYTE)
     * 0x4: 4-byte address(SNFC_ADDR_LEN_4_BYTE)
     */
    uint32 addr_len;

    /* Read/Write data counter */
    uint32 data_cnt;

    /* Instruction code */
    uint32 instr_code;

    /* Continuous read mode operate code */
    uint32 cont_rd_code;

    /**
     * Chip select for command slave port
     * 0x0: cs0(SNFC_CMD_CS_0) 
     * 0x1: cs1(SNFC_CMD_CS_1) 
     * 0x2: cs2(SNFC_CMD_CS_2) 
     * 0x3: cs3(SNFC_CMD_CS_3)
     */
   uint32 cs;

    /**
     * Operation mode for command slave port
     * 0x0: serial mode(SNFC_CMD_OP_MODE_SERIAL)
     * 0x1: dual mode(SNFC_CMD_OP_MODE_DUAL)
     * 0x2: quad mode(SNFC_CMD_OP_MODE_QUAD)
     * 0x3: dual_io mode(SNFC_CMD_OP_MODE_DUAL_IO)
     * 0x4: quad_io mode(SNFC_CMD_OP_MODE_QUAD_IO)
     */
    uint32 op_mode;

    /**
     * DTR(Double Transfer Rate) mode *
     * 0x0: disable(SNFC_DTR_MODE_DISABLE)
     * 0x1: enable(SNFC_DTR_MODE_ENABLE)
     */
    uint32 dtr_en;

    /**
     * Read the spi flash status by using software or hardware 
     * 0x0: read status by hardware, the controller will poll the status until 
     *      it is ready and report the status register(SNFC_RD_STS_BY_HW)
     * 0x1: read status by software, read once and report the status register 
     *      until users can read it(SNFC_RD_STS_BY_SW)
     */
    uint32 rd_sts;

    /**
     * Read status enable/disable 
     * 0x0: disable(SNFC_RD_STS_DISABLE)
     * 0x1: enable(SNFC_RD_STS_ENABLE)
     */
    uint32 rd_sts_en;

    /**
     * Enable the SPI write data
     * 0x0: disable(SNFC_WR_DISABLE)
     * 0x1: enable(SNFC_WR_ENABLE)
     */
    uint32 wr_en;
}spiflash_cmd_t; 

void snfc_port_switch(uint32 port_type);
int32 spiflash_hw_init(spiflash_conf_t conf);
void spiflash_hw_conf_get(spiflash_conf_t *conf);
uint8 spiflash_byte_read(uint32 addr);
int32 spiflash_byte_write(uint32 addr,uint8 data);
int32 spiflash_read(uint32 addr, uint8 *buf, uint32 nbytes);
int32 spiflash_write(uint32 addr, uint8 *buf, uint32 nbytes);
int32 spiflash_sector_erase(uint32 addr);
int32 spiflash_block_erase(uint32 addr);
int32 spiflash_chip_erase(void);
uint32 spiflash_capacity_get(void);

#endif


