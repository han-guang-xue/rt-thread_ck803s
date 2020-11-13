# 1 "../libraries/src/tih_phy_m88e1512.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../libraries/src/tih_phy_m88e1512.c"





# 1 "../libraries/inc/tih/phy.h" 1



# 1 "../libraries/inc/tih/sysdep.h" 1
# 5 "../libraries/inc/tih/phy.h" 2

typedef enum {
    SPEED_1000 = 0,
    SPEED_100 = 1,
    SPEED_10 = 2,
    SPEED_AUTO = 3
}speed_t;

typedef enum {
    DUPLEX_FULL = 0,
    DUPLEX_HALF = 1
}duplex_t;

typedef struct {
    int linked;
    duplex_t duplex;
    speed_t speed;
}link_status_t;

typedef struct {

    int (*phy_init)(unsigned int gmac_id);
    unsigned int (*phy_mmd_max_fre_get)(unsigned int gmac_id);
    void (*phy_intr_enable)(unsigned int gmac_id, unsigned int intr_src);
    void (*phy_intr_disable)(unsigned int gmac_id, unsigned int intr_src);
    unsigned int (*phy_intr_status)(unsigned int gmac_id);
    void (*phy_intr_clear)(unsigned int gmac_id, unsigned int intr_src);
    int (*phy_speed_duplex_change)(unsigned int gmac_id, duplex_t duplex, speed_t speed);
    link_status_t (*phy_link_status_get)(unsigned int gmac_id);
} phy_ops_t;

extern const phy_ops_t rtl8211_phy_ops;
extern const phy_ops_t m88e1512_phy_ops;
# 7 "../libraries/src/tih_phy_m88e1512.c" 2
# 1 "../libraries/src/phy_m88e1512_hw.h" 1
# 8 "../libraries/src/tih_phy_m88e1512.c" 2
# 1 "../libraries/inc/tih/gmac.h" 1
# 64 "../libraries/inc/tih/gmac.h"
typedef enum wol_filter {
    WAKEUP_FRAME_FILTER_1 = 0,
    WAKEUP_FRAME_FILTER_2 = 1,
    WAKEUP_FRAME_FILTER_3 = 2,
    WAKEUP_FRAME_FILTER_4 = 3,
}wol_filter_t;

typedef struct gmac_stats {
    unsigned int rx_packets;
    unsigned int tx_packets;
    unsigned int rx_errors;
    unsigned int tx_errors;
    unsigned int rx_multicast;
    unsigned int rx_broadcast;
    unsigned int rx_runt;
    unsigned int rx_pause;


    unsigned int rx_length_errors;
    unsigned int rx_crc_errors;
    unsigned int rx_align_errors;
    unsigned int rx_missed_errors;
    unsigned int rx_collisions_errors;


    unsigned int tx_collisions_errors;
    unsigned int tx_late_collisions_errors;
    unsigned int tx_underun_errors;
}gmac_stats_t;

unsigned short gmac_phy_mmd_read16(unsigned int gmac_id, unsigned short reg_addr);
void gmac_phy_mmd_write16(unsigned int gmac_id, unsigned short value, unsigned short reg_addr);
void gmac_phy_addr_set(unsigned int gmac_id, unsigned int phy_addr);
int gmac_phy_mmd_clk_set(unsigned int gmac_id, unsigned int phy_mmd_clk);
void gmac_addr_filter_set(unsigned int gmac_id, unsigned int filter_bits);
unsigned int gmac_addr_filter_get(unsigned int gmac_id);
unsigned char gmac_hash_filter_set(unsigned int gmac_id, const unsigned char *mac_addr);
void gmac_hash_filter_get(unsigned int gmac_id, unsigned int *mathH, unsigned int *mathL);
void gmac_intr_enable(unsigned int gmac_id, unsigned int intr_src);
void gmac_intr_disable(unsigned int gmac_id, unsigned int intr_src);
unsigned int gmac_intr_status(unsigned int gmac_id);
void gmac_intr_clear(unsigned int gmac_id, unsigned int intr_src);
void gmac_mac_addr_set(unsigned int gmac_id, const unsigned char *mac_addr);
void gmac_mac_addr_get(unsigned int gmac_id, unsigned char *mac_addr);
void gmac_flow_ctrl_enable(unsigned int gmac_id, unsigned short pause_time, unsigned char jam_len);
void gmac_flow_ctrl_disable(unsigned int gmac_id);
void gmac_tx_enable(unsigned int gmac_id);
void gmac_tx_disable(unsigned int gmac_id);
void gmac_rx_enable(unsigned int gmac_id);
void gmac_rx_disable(unsigned int gmac_id);
void gmac_jumbo_frame_enable(unsigned int gmac_id);
void gmac_jumbo_frame_disable(unsigned int gmac_id);
void gmac_chksum_offload_set(unsigned int gmac_id, unsigned int chksum_offload_bits);
unsigned int gmac_checksum_offload_get(unsigned int gmac_id);
void gmac_wol_wakeup_frame_filter_set(unsigned int gmac_id,
                                      wol_filter_t filter_id,
                                      unsigned int *wakeup_frame_mask,
                                      unsigned char *wakeup_frame,
                                      unsigned int frame_len);
void gmac_wol_wakeup_event_set(unsigned int gmac_id, unsigned int wakeup_event_bits);
unsigned int gmac_wol_wakeup_event_get(unsigned int gmac_id);
void gmac_wol_mode_enter(unsigned int gmac_id);
void gmac_wol_mode_exit(unsigned int gmac_id);
unsigned int gmac_wol_state_poll(unsigned int gmac_id);
void gmac_speed_duplex_set(unsigned int gmac_id, speed_t speed, duplex_t duplex);
void gmac_statistics_get(unsigned int gmac_id, gmac_stats_t *gmac_stats);
int gmac_tx_queue_init(unsigned int gmac_id, unsigned char num);
int gmac_rx_queue_init(unsigned int gmac_id, unsigned char num, unsigned int size);
int gmac_frame_transmit(unsigned int gmac_id, unsigned char *frame_data, unsigned int frame_len);
unsigned char *gmac_frame_transmitted_buf_poll(unsigned int gmac_id);
unsigned int gmac_frame_recv_poll(unsigned int gmac_id);
void gmac_rx_buf_attach(unsigned int gmac_id, unsigned char *buf);
unsigned char * gmac_rx_valid_buf(unsigned int gmac_id);
void gmac_rx_buf_processed(unsigned int gmac_id);
int gmac_hw_init(unsigned int gmac_id);
int gmac_hw_deinit(unsigned int gmac_id);
# 9 "../libraries/src/tih_phy_m88e1512.c" 2

int marvell_phy_init(unsigned int gmac_id)
{
    unsigned short value = 0x0;
    unsigned int times;


    gmac_phy_mmd_write16(gmac_id, 20, 22);
    value = gmac_phy_mmd_read16(gmac_id, 18);
    value |= (1<<4);
    gmac_phy_mmd_write16(gmac_id, value, 18);


    gmac_phy_mmd_write16(gmac_id, 0, 22);
    value = gmac_phy_mmd_read16(gmac_id, 4);
    value &= ~(1<<11);
    value |= (1<<10);
    gmac_phy_mmd_write16(gmac_id, value, 4);


    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    value = gmac_phy_mmd_read16(gmac_id, 0);
    value |= (1 << 15);
    gmac_phy_mmd_write16(gmac_id, value, 0);


    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        value = gmac_phy_mmd_read16(gmac_id, 0);
        if (!(value & (1 << 15))) {
            break;
        }
    } while (1);


    gmac_phy_mmd_write16(gmac_id, 0x01, 22);
    value = gmac_phy_mmd_read16(gmac_id, 0);
    value |= (1 << 15);
    gmac_phy_mmd_write16(gmac_id, value, 0);


    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        value = gmac_phy_mmd_read16(gmac_id, 0);
        if (!(value & (1 << 15))) {
            break;
        }
    } while (1);

    gmac_phy_mmd_write16(gmac_id, 0x03, 22);


    value = gmac_phy_mmd_read16(gmac_id, 18);
    value |= ((1<<7) | (1<<11));
    gmac_phy_mmd_write16(gmac_id, value, 18);


    gmac_phy_mmd_write16(gmac_id, 0x0040, 16);


    gmac_phy_mmd_write16(gmac_id, 0x02, 22);
    value = gmac_phy_mmd_read16(gmac_id, 25);
    value = 0x00;
    gmac_phy_mmd_write16(gmac_id, value, 25);

    value = gmac_phy_mmd_read16(gmac_id, 24);
    value &= ~0xf0f;
    value |= 0xf0f;
    gmac_phy_mmd_write16(gmac_id, value, 24);

    return 0;
}

unsigned int marvell_phy_mmd_fre_get(unsigned int gmac_id)
{

    return 10 * 1000 * 1000;
}

void marvell_phy_intr_enable(unsigned int gmac_id, unsigned int intr_src)
{

    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    gmac_phy_mmd_write16(gmac_id, (1 << 10), 18);


    gmac_phy_mmd_write16(gmac_id, 0x01, 22);
    gmac_phy_mmd_write16(gmac_id, (1 << 10), 18);
 }

void marvell_phy_intr_disable(unsigned int gmac_id, unsigned int intr_src)
{
    unsigned short value;


    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    value = gmac_phy_mmd_read16(gmac_id, 18);
    value &= ~(1 << 10);
    gmac_phy_mmd_write16(gmac_id, value, 18);


    gmac_phy_mmd_write16(gmac_id, 0x01, 22);
    value = gmac_phy_mmd_read16(gmac_id, 18);
    value &= ~(1 << 10);
    gmac_phy_mmd_write16(gmac_id, value, 18);
}

unsigned int marvell_phy_intr_status(unsigned int gmac_id)
{
    unsigned short isr0;
    unsigned short isr1;


    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    isr0 = gmac_phy_mmd_read16(gmac_id, 19);


    gmac_phy_mmd_write16(gmac_id, 0x01, 22);
    isr1 = gmac_phy_mmd_read16(gmac_id, 19);

    return (isr1 << 16 | isr0);
}

void marvell_phy_intr_clear(unsigned int gmac_id, unsigned int intr_src)
{

    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    gmac_phy_mmd_read16(gmac_id, 19);


    gmac_phy_mmd_write16(gmac_id, 0x01, 22);
    gmac_phy_mmd_read16(gmac_id, 19);
}

link_status_t __attribute__((section(".fast"))) marvell_phy_link_status_get(unsigned int gmac_id)
{
    unsigned short value;
    link_status_t status;

    status.linked = 0;

    gmac_phy_mmd_write16(gmac_id, 0x00, 22);
    value = gmac_phy_mmd_read16(gmac_id, 17);
    if (value != 0xFFFF) {
        if (value & (1 << 10)) {
            status.linked = 1;

            if (0 == ((value >> 13) & 1)) {
                status.duplex = DUPLEX_HALF;
            } else {
                status.duplex = DUPLEX_FULL;
            }

            switch (((value >> 14) & 3)) {
                 case 0x2:
                     status.speed = SPEED_1000;
                     break;

                 case 0x1:
                     status.speed = SPEED_100;
                     break;

                 case 0x0:
                     status.speed = SPEED_10;
                     break;

                 default:
                     break;
            }

            return status;
        }
    }

    return status;
}





int marvell_phy_speed_duplex_change(unsigned int gmac_id, duplex_t duplex, speed_t speed)
{
    unsigned short value = 0;

    if (speed == SPEED_AUTO) {

        gmac_phy_mmd_write16(gmac_id, 0x00, 22);
        value = gmac_phy_mmd_read16(gmac_id, 4);
        value |= ((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8));
        gmac_phy_mmd_write16(gmac_id, value, 4);


        gmac_phy_mmd_write16(gmac_id, 0x00, 22);
        value = gmac_phy_mmd_read16(gmac_id, 9);
        value |= ((1 << 8) | (1 << 9));
        gmac_phy_mmd_write16(gmac_id, value, 9);
    } else {

        gmac_phy_mmd_write16(gmac_id, 0x00, 22);
        value = gmac_phy_mmd_read16(gmac_id, 4);
        value &= ~((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8));
        gmac_phy_mmd_write16(gmac_id, value, 4);


        gmac_phy_mmd_write16(gmac_id, 0x00, 22);
        value = gmac_phy_mmd_read16(gmac_id, 9);
        value &= ~((1 << 8) | (1 << 9));
        gmac_phy_mmd_write16(gmac_id, value, 9);

        if (duplex == DUPLEX_FULL) {
            if (speed == SPEED_1000) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 9);
                value |= (1 << 9);
                gmac_phy_mmd_write16(gmac_id, value, 9);
            } else if (speed == SPEED_100) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 4);
                value |= (1 << 8);
                gmac_phy_mmd_write16(gmac_id, value, 4);
            } else if (speed == SPEED_10) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 4);
                value |= (1 << 6);
                gmac_phy_mmd_write16(gmac_id, value, 4);
            }
        } else {
            if (speed == SPEED_1000) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 9);
                value |= (1 << 8);
                gmac_phy_mmd_write16(gmac_id, value, 9);
            } else if (speed == SPEED_100) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 4);
                value |= (1 << 7);
                gmac_phy_mmd_write16(gmac_id, value, 4);
            } else if (speed == SPEED_10) {
                gmac_phy_mmd_write16(gmac_id, 0x00, 22);
                value = gmac_phy_mmd_read16(gmac_id, 4);
                value |= (1 << 5);
                gmac_phy_mmd_write16(gmac_id, value, 4);
            }
        }
    }

    marvell_phy_init(gmac_id);

    return 0;
}


const phy_ops_t m88e1512_phy_ops =
{
    marvell_phy_init,
    marvell_phy_mmd_fre_get,
    marvell_phy_intr_enable,
    marvell_phy_intr_disable,
    marvell_phy_intr_status,
    marvell_phy_intr_clear,
    marvell_phy_speed_duplex_change,
    marvell_phy_link_status_get,
};
