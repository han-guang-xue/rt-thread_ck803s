#ifndef __NETIF_ETHERNETIF_H__
#define __NETIF_ETHERNETIF_H__

#include "lwip/netif.h"
#include <rtthread.h>
#include <gmac.h>
#include <phy.h>

#define NIOCTL_GADDR        0x01
#define NIOCTL_SADDR        0x02
#define NIOCTL_SWKUP        0x03
#define NIOCTL_SLEEP        0x04
#define NIOCTL_WAKEUP       0x05
#define NIOCTL_SSPED        0x06
#define NIOCTL_SFLOW        0x07
#define NIOCTL_GCUNT        0x08
#define NIOCTL_SHASHTB      0x09
#define NIOCTL_GHASHTB      0x0A
#define NIOCTL_STX          0x0B
#define NIOCTL_SRX          0x0C
#define NIOCTL_SJUMBO       0x0D
#define NIOCTL_SCHKSUM      0x0E
#define NIOCTL_SFILTER      0x0F
#define NIOCTL_GFILTER      0x10

#ifndef RT_LWIP_ETH_MTU
#define ETHERNET_MTU		1500
#else
#define ETHERNET_MTU		RT_LWIP_ETH_MTU
#endif

/* eth flag with auto_linkup or phy_linkup */
#define ETHIF_LINK_AUTOUP	0x0000
#define ETHIF_LINK_PHYUP	0x0100

struct eth_device
{
	/* inherit from rt_device */
	struct rt_device parent;

	/* network interface for lwip */
	struct netif *netif;
	struct rt_semaphore tx_ack;

	rt_uint16_t flags;
	rt_uint8_t  link_changed;
	rt_uint8_t  link_status;

	/* eth device interface */
	struct pbuf* (*eth_rx)(rt_device_t dev);
	rt_err_t (*eth_tx)(rt_device_t dev, struct pbuf* p);
};
struct ip_addr_storage
{
    ip4_addr_t       ipaddr;
    ip4_addr_t       netmask;
    ip4_addr_t       gw;
    #if LWIP_IPV6
    ip6_addr_t        ipaddr6;
    #endif
} __packed;
typedef struct ip_addr_storage* ip_storage_t; 

typedef struct
{
    wol_filter_t wakeup_frame_filter; 
    uint32      *wakeup_frame_mask;
    uint8       *wakeup_frame;
    uint32       frame_len;
}wake_up_control;

typedef struct
{
    speed_t  speed;
    duplex_t duplex;
}speed_duplex;

rt_err_t eth_device_ready(struct eth_device* dev);
rt_err_t eth_device_init(struct eth_device * dev, char *name);
rt_err_t eth_device_init_with_flag(struct eth_device *dev, char *name, rt_uint16_t flag);
rt_err_t eth_device_linkchange(struct eth_device* dev, rt_bool_t up);

int eth_system_device_init(void);

#endif /* __NETIF_ETHERNETIF_H__ */
