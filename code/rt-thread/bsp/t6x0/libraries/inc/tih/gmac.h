/**
 * (C) Copyright 2018 TIH Microelectronic
 * Rison Wung <zhongxiao.wang@tihchip.com>
 */
#ifndef __GMAC_H__
#define __GMAC_H__

#include <sysdep.h>
#include <phy.h>

#define GMAC0   0
#define GMAC1   1

/**
 * Interrupt number of each gmac
 */
#define GMAC0_IRQ_NUM                6
#define GMAC1_IRQ_NUM                7

/**
 * Interrupt events list
 */
#define GMAC_INT_AHB_ERR            (1 << 8)
#define GMAC_INT_TPKT_LOST          (1 << 7)
#define GMAC_INT_TXBUF_UNAVA        (1 << 6)
#define GMAC_INT_TPKT2F             (1 << 5)
#define GMAC_INT_TPKT2E             (1 << 4)
#define GMAC_INT_RPKT_LOST          (1 << 3)
#define GMAC_INT_RXBUF_UNAVA        (1 << 2)
#define GMAC_INT_RPKT2F             (1 << 1)
#define GMAC_INT_RPKT2B             (1 << 0)

/**
 * Wakeup event types
 */
#define WAKEUP_FRAME4               (1 << 6)
#define WAKEUP_FRAME3               (1 << 5)
#define WAKEUP_FRAME2               (1 << 4)
#define WAKEUP_FRAME1               (1 << 3)
#define WAKEUP_MAGICPKT             (1 << 2)
#define WAKEUP_LINKUP               (1 << 1)
#define WAKEUP_LINKDOWN             (1 << 0)

/**
 * Fiter types 
 */
#define FILTER_ADDR_BCAST           (1 << 11)///< Accept Broadcast Frames Enable 
#define FILTER_ADDR_MCAST           (1 << 10)///< Accept Multicast Frames Enable    
#define FILTER_ADDR_MCAST_HASH      (1 << 9) ///< Accept Multicast Hash Filter Fram.   
#define FILTER_ADDR_ALL             (1 << 8) ///< Accept Any Frames Enable 

/**
 * Checksum offlad types
 */
#define CHKSUM_OFFLOAD_UDP_TX       (1 << 0)
#define CHKSUM_OFFLOAD_UDP_RX       (1 << 1)
#define CHKSUM_OFFLOAD_TCP_TX       (1 << 2)
#define CHKSUM_OFFLOAD_TCP_RX       (1 << 3)
#define CHKSUM_OFFLOAD_IP4_TX       (1 << 4)
#define CHKSUM_OFFLOAD_IP4_RX       (1 << 5)
#define CHKSUM_OFFLOAD_IP6_TX       (1 << 6)
#define CHKSUM_OFFLOAD_IP6_RX       (1 << 7)

typedef enum wol_filter {
    WAKEUP_FRAME_FILTER_1 = 0,
    WAKEUP_FRAME_FILTER_2 = 1,
    WAKEUP_FRAME_FILTER_3 = 2,
    WAKEUP_FRAME_FILTER_4 = 3,
}wol_filter_t;

typedef struct gmac_stats {
    uint32 rx_packets;      ///< total packets received
    uint32 tx_packets;      ///< total packets transmitted
    uint32 rx_errors;       ///< bad packets received
    uint32 tx_errors;       ///< packet transmit problems
    uint32 rx_multicast;    ///< multicast packets received
    uint32 rx_broadcast;    ///< multicast packets received
    uint32 rx_runt;         ///< runt packets received
    uint32 rx_pause;        ///< pause frame received
    
    /* detailed rx_errors: */
    uint32 rx_length_errors;///< recved frame too long
    uint32 rx_crc_errors;   ///< recved pkt with crc error
    uint32 rx_align_errors; ///< recv'd frame alignment error 
    uint32 rx_missed_errors;///< receiver missed packet
    uint32 rx_collisions_errors;   ///< receive collision counter

    /* detailed tx_errors */
    uint32 tx_collisions_errors;     ///< transmit fail for collison count >=16
    uint32 tx_late_collisions_errors;///< transmit fail for late collison
    uint32 tx_underun_errors;        ///< transmit fail for under-run
}gmac_stats_t;

uint16 gmac_phy_mmd_read16(uint32 gmac_id, uint16 reg_addr);
void gmac_phy_mmd_write16(uint32 gmac_id, uint16 value, uint16 reg_addr);
void gmac_phy_addr_set(uint32 gmac_id, uint32 phy_addr);
int32 gmac_phy_mmd_clk_set(uint32 gmac_id, uint32 phy_mmd_clk);
void gmac_addr_filter_set(uint32 gmac_id, uint32 filter_bits);
uint32 gmac_addr_filter_get(uint32 gmac_id);
uint8 gmac_hash_filter_set(uint32 gmac_id, const uint8 *mac_addr);
void gmac_hash_filter_get(uint32 gmac_id, uint32 *mathH, uint32 *mathL);
void gmac_intr_enable(uint32 gmac_id, uint32 intr_src);
void gmac_intr_disable(uint32 gmac_id, uint32 intr_src);
uint32 gmac_intr_status(uint32 gmac_id);
void gmac_intr_clear(uint32 gmac_id, uint32 intr_src);
void gmac_mac_addr_set(uint32 gmac_id, const uint8 *mac_addr);
void gmac_mac_addr_get(uint32 gmac_id, uint8 *mac_addr);
void gmac_flow_ctrl_enable(uint32 gmac_id, uint16 pause_time, uint8 jam_len);
void gmac_flow_ctrl_disable(uint32 gmac_id);
void gmac_tx_enable(uint32 gmac_id);
void gmac_tx_disable(uint32 gmac_id);
void gmac_rx_enable(uint32 gmac_id);
void gmac_rx_disable(uint32 gmac_id);
void gmac_jumbo_frame_enable(uint32 gmac_id);
void gmac_jumbo_frame_disable(uint32 gmac_id);
void gmac_chksum_offload_set(uint32 gmac_id, uint32 chksum_offload_bits);
uint32 gmac_checksum_offload_get(uint32 gmac_id);
void gmac_wol_wakeup_frame_filter_set(uint32 gmac_id, 
                                      wol_filter_t filter_id, 
                                      uint32 *wakeup_frame_mask,
                                      uint8 *wakeup_frame, 
                                      uint32 frame_len);
void gmac_wol_wakeup_event_set(uint32 gmac_id, uint32 wakeup_event_bits);
uint32 gmac_wol_wakeup_event_get(uint32 gmac_id);
void gmac_wol_mode_enter(uint32 gmac_id);
void gmac_wol_mode_exit(uint32 gmac_id);
uint32  gmac_wol_state_poll(uint32 gmac_id);
void gmac_speed_duplex_set(uint32 gmac_id, speed_t speed, duplex_t duplex);
void gmac_statistics_get(uint32 gmac_id, gmac_stats_t *gmac_stats);
int32 gmac_tx_queue_init(uint32 gmac_id, uint8 num);
int32 gmac_rx_queue_init(uint32 gmac_id, uint8 num, uint32 size);
int32 gmac_frame_transmit(uint32 gmac_id, uint8 *frame_data, uint32 frame_len);
uint8 *gmac_frame_transmitted_buf_poll(uint32 gmac_id);
uint32 gmac_frame_recv_poll(uint32 gmac_id);
void gmac_rx_buf_attach(uint32 gmac_id, uint8 *buf);
uint8 * gmac_rx_valid_buf(uint32 gmac_id);
void gmac_rx_buf_processed(uint32 gmac_id);
int32 gmac_hw_init(uint32 gmac_id);
int32 gmac_hw_deinit(uint32 gmac_id); 
#endif

