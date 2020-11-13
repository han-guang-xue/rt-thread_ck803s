#ifndef __USB_H__
#define __USB_H__

#include <sysdep.h>

#define USB_IRQ_NUM                     0

// Interrupt
#define USB_INTR_LINK_IN_TEST_MODE_INT (1 << 18)
#define USB_INTR_VBUS_CHG              (1 << 17)
#define USB_INTR_WARM_RST              (1 << 16)
#define USB_INTR_HOT_RST               (1 << 15)
#define USB_INTR_USBRST                (1 << 14)
#define USB_INTR_DEV_MODE_CHG          (1 << 13)
#define USB_INTR_SUSP                  (1 << 12)
#define USB_INTR_U3_ENTRY              (1 << 11)
#define USB_INTR_RESM                  (1 << 10)
#define USB_INTR_CX_SETUP              (1 << 9)
#define USB_INTR_EPn_FIFO(n)           (1 << (n))

#define MAX_EP_NUM                     (8 + 1)    // We support max 9 eps

#define SS_CTL_MAX_PACKET_SIZE          0x200
#define SS_BULK_MAX_PACKET_SIZE         0x400
#define SS_INT_MAX_PACKET_SIZE          0x400
#define SS_ISO_MAX_PACKET_SIZE          0x400

#define HS_CTL_MAX_PACKET_SIZE          0x40
#define HS_BULK_MAX_PACKET_SIZE         0x200
#define HS_INT_MAX_PACKET_SIZE          0x400
#define HS_ISO_MAX_PACKET_SIZE          0x400

#define FS_CTL_MAX_PACKET_SIZE          0x8
#define FS_BULK_MAX_PACKET_SIZE         0x40
#define FS_INT_MAX_PACKET_SIZE          0x40
#define FS_ISO_MAX_PACKET_SIZE          0x3FF

#define LS_CTL_MAX_PACKET_SIZE          0x8

#define NOT_ENABLE                      0
#define SS_MODE                         1
#define HS_MODE                         2
#define FS_MODE                         3

#define IS_TCM_REGION(x)      ((x) >= 0x400000 && (x) < 0x408000)

void   usb_sw_reset(void);
void   usb_connect(void);
void   usb_disconnect(void);
void   usb_spd_set(uint32 spd_mode);
uint32 usb_spd_get(void);
void   usb_suspend(void);
void   usb_addr_set(uint32 addr);
void   usb_config_set(void);
bool   usb_config_is_set(void);
void   usb_config_clear(void);
void   usb_remote_wakeup_set(void);
void   usb_remote_wakeup_clear(void);
void   usb_test_mode_set(uint32 mode);
void   usb_ltm_enable(void);
void   usb_ltm_disable(void);
void   usb_set_belt(uint32 min_value, uint32 min_scale, uint32 max_value, uint32 max_scale);
void   usb_u1_enable(void);
void   usb_u2_enable(void);
void   usb_u1_disable(void);
void   usb_u2_disable(void);
void   usb_u3_enter(void);
void   usb_u1_timeout_set(uint32 time);
void   usb_u2_timeout_set(uint32 time);
void   usb_ep0_recv(uint8 *buf, uint32 nbytes);
void   usb_ep0_send(uint8 *buf, uint32 nbytes);
void   usb_ep0_ack(void);
void   usb_ep0_stall(void);
uint32 usb_total_entry_get(void);
void   usb_ep_type_set(uint32 ep, uint32 type);
void   usb_ep_dir_set(uint32 ep, uint32 dir);
void   usb_ep_start_entry_set(uint32 ep, uint32 start_entry);
void   usb_ep_entry_set(uint32 ep, uint32 entry);
void   usb_ep_mps_set(uint32 ep, uint32 mps);
void   usb_ep_stall(uint32 ep);
void   usb_ep_stall_clear(uint32 ep);
bool   usb_ep_is_stalled(uint32 ep);
void   usb_ep_seqnum_reset(uint32 ep);
void   usb_ep_active(uint32 ep);
bool   usb_ep_is_active(uint32 ep);
void   usb_ep_reset(uint32 ep);
uint32 usb_ep_bycnt_get(uint32 ep);
void   usb_ep_0byte_send(uint32 ep);
bool   usb_ep_is_empty(uint32 ep);
bool   usb_ep_is_full(uint32 ep);
void   usb_pio_recv(uint32 ep, uint8 *buf, uint32 nbytes);
void   usb_pio_send(uint32 ep, uint8 *buf, uint32 nbytes);
void   usb_pio_trash(uint32 ep, uint32 nbytes);
int32  usb_stream_check(uint32 ep);
void   usb_stream_start(uint32 ep, uint16 sid);
int32  usb_stream_accepted(uint32 ep);
void   usb_stream_resume(uint32 ep, uint16 sid);
void   usb_stream_disable(uint32 ep);
void   usb_dma_start(uint32 ep, uint32 data_addr, uint32 addr_mode, uint32 nbytes);
bool   usb_dma_is_busy(uint32 ep);
void   usb_intr_enable(uint32 intr_src);
void   usb_intr_disable(uint32 intr_src);
uint32 usb_intr_status(void);
void   usb_intr_clear(uint32 intr_sts);
void   usb_hw_init(void);
void   usb_phy_cfg(void);

#endif
