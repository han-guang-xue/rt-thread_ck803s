#ifndef __EMCC_H__
#define __EMCC_H__

#include <sysdep.h>
#include <config.h>

#define EMCC0   0
#define EMCC1   1

/* EMCC IRQ num */
#define EMCC0_ISR_NUM                4 
#define EMCC1_ISR_NUM                5

#define EMCC_ID_GET(rca)             ((rca & 0x10) >> 4)
/* EMMC driver feature definition */
#define EMCC_QCMD_FIFO_DEPTH         9
#define EMMC_MAX_CARD_NUM            4
#ifdef CONFIG_SINGLE_EMCC
#define EMMC_MAX_EMCC_NUM            1
#else
#define EMMC_MAX_EMCC_NUM            2
#endif
#define EMMC_PAR_GRAINSIZE_LEN       4     // 2^4 *512 = 8KB = emcc data fifo depth
#define EMMC_PAR_GRAINSIZE_MASK      0xF
#define EMMC_PAR_GRAINSIZE           16

#define EMMC_MAX_LLI_LEN             256
#define EMMC_MAX_LLI_ITEM            127    
#define EMMC_MAX_OPEN_NSEC           0x3C000000 

/* EMCC interrupt ID */
#define EMCC_INTR_WR_NO_CRC          (0x1 << 9)
#define EMCC_INTR_START_BIT_ERR      (0x1 << 8)
#define EMCC_INTR_DATA_FIFO_ERR      (0x1 << 7)
#define EMCC_INTR_RD_TOUT            (0x1 << 6)
#define EMCC_INTR_RES_TOUT           (0x1 << 5)
#define EMCC_INTR_DATA_CRC_ERR       (0x1 << 4)
#define EMCC_INTR_RES_CRC_ERR        (0x1 << 3)
#define EMCC_INTR_DATA_CMPLT         (0x1 << 2)
#define EMCC_INTR_CMD_DONE           (0x1 << 1)
#define EMCC_INTR_RES_ERR            (0x1 << 0) 
  
#define EMCC_EXCEPT_INTR             (EMCC_INTR_WR_NO_CRC |\
                                      EMCC_INTR_START_BIT_ERR |\
                                      EMCC_INTR_DATA_FIFO_ERR |\
                                      EMCC_INTR_RD_TOUT |\
                                      EMCC_INTR_RES_TOUT |\
                                      EMCC_INTR_DATA_CRC_ERR |\
                                      EMCC_INTR_RES_CRC_ERR |\
                                      EMCC_INTR_RES_ERR)

#define EMCC_BUS_MODE_HS400          5
#define EMCC_BUS_MODE_HS200          4
#define EMCC_BUS_MODE_HDDR           3
#define EMCC_BUS_MODE_HSDR           2
#define EMCC_BUS_MODE_BACKWARDS      1

/* EMCC bus timing paramater */
typedef struct emcc_bus_timing {
    uint32 ncc;
    uint32 mwr;
    uint32 tph;
    uint32 io_str;
    uint32 cmos_in;
    uint32 rc_tout;
    uint32 rd_tout;
    uint32 ds_dll;
    uint32 clk_270_dll;
    uint32 hs400_div;
    uint32 hs200_div;
    uint32 hddr_div;
    uint32 hsdr52_div;
    uint32 hsdr26_div;
    uint32 legacy_div;
} emcc_timing_t;

/* EMCC command paramater */
typedef struct emcc_command {
    uint32 emcc_id;  // emcc id 
    uint32 cmd_chn;  // command channel select,EMCC_Q_CMD or EMCC_D_CMD
    uint32 cmd;      // emmc command macro defination
    uint32 arg;      // emmc command argument 
    uint32 cnt;      // data count, nbytes for dcmd and nsectors for qcmd
    uint32 res;      // emmc response contrast value
    uint32 res_mask; // emmc response contrast value mask
} emcc_cmd_t;

/* EMCC execution status */
typedef enum emcc_status {
    EMCC_ERR = -1,
    EMCC_OK  = 0,
    EMCC_READY = 1,
    EMCC_BUSY = 2,
    EMCC_FULL = 3,
    EMCC_AVAILABLE = 4, 
    EMCC_EMPTY = 5,
    EMCC_NON_EMPTY = 6,
    EMCC_INTR_HAPPEN = 7,
    EMCC_INTR_UNHAPPEN = 8
} emcc_sts_t;

/* EMCC hardware driver API */
emcc_sts_t emcc_tuning_ds_set(uint32 emcc_id, uint32 ds);
emcc_sts_t emcc_tuning_clk_set(uint32 emcc_id, uint32 clk);
emcc_sts_t emcc_cmd_send(emcc_cmd_t *cmd);
emcc_sts_t emcc_direct_res_short_get(uint32 emcc_id, uint32 *buf, uint32 nwords);
emcc_sts_t emcc_direct_res_long_get(uint32 emcc_id, uint32 *buf, uint32 nwords);
emcc_sts_t emcc_queue_res_get(uint32 emcc_id, uint32 *buf, uint32 nwords);
emcc_sts_t emcc_qcmd_fifo_status_check(uint32 emcc_id);
emcc_sts_t emcc_dcmd_reg_status_check(uint32 emcc_id);
emcc_sts_t emcc_ecsd_byte_get(uint32 emcc_id, uint8 *buf, uint32 nbytes, uint32 offset);
emcc_sts_t emcc_device_busy_check(uint32 emcc_id);
emcc_sts_t emcc_fifo_reset(uint32 emcc_id); 
emcc_sts_t emcc_reset(uint32 emcc_id);
emcc_sts_t emcc_junk_enable(uint32 emcc_id);
emcc_sts_t emcc_junk_disable(uint32 emcc_id);
emcc_sts_t emcc_wr_fifo_state_get(uint32 emcc_id);
emcc_sts_t emcc_bus_timing_set(uint32 emcc_id, emcc_timing_t *timing);
emcc_sts_t emcc_bus_mode_set(uint32 emcc_id, uint32 mode, uint32 width);
emcc_sts_t emcc_bus_mode_reset(uint32 emcc_id);
emcc_sts_t emcc_force_clk_enable(uint32 emcc_id);
emcc_sts_t emcc_force_clk_disable(uint32 emcc_id);
emcc_sts_t emcc_clk_div_set(uint32 emcc_id, uint32 div);
emcc_sts_t emcc_phy_div_set(uint32 emcc_id, uint32 div1, uint32 div2);
emcc_sts_t emcc_phy_div_enable(uint32 emcc_id);
emcc_sts_t emcc_phy_div_disable(uint32 emcc_id);
emcc_sts_t emcc_intr_check(uint32 emcc_id, uint32 intr_src);
emcc_sts_t emmc_intr_wait(uint32 emcc_id, uint32 intr_id, uint32 timeout_s);
emcc_sts_t emcc_idle_wait(uint32 emcc_id, uint32 timeout_s);
void emcc_intr_mask(uint32 emcc_id, uint32 intr_src);
void emcc_intr_unmask(uint32 emcc_id, uint32 intr_src);
void emcc_intr_enable(uint32 emcc_id, uint32 intr_src);
void emcc_intr_disable(uint32 emcc_id, uint32 intr_src);
uint32 emcc_intr_status(uint32 emcc_id);
void emcc_intr_clear(uint32 emcc_id, uint32 intr_src);
uint32 emcc_data_port_get(uint32 emcc_id);
uint32 emcc_data_port_belong(uint32 port);
uint32 emcc_ctrl_get(uint32 emcc_id);
void emcc_ctrl_set(uint32 emcc_id, uint32 val);
uint32 emcc_intmask_get(uint32 emcc_id);
void emcc_intmask_set(uint32 emcc_id, uint32 val);
uint32 emcc_intsien_get(uint32 emcc_id);
void emcc_intsien_set(uint32 emcc_id, uint32 val);

#endif
