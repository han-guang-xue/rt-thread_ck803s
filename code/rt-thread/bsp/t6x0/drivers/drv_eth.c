/*
 * File      : drv_eth.c
 * This file is part of RT-Thread RTOS
 * (C) Copyright 2018 TIH Microelectronic
 * Rison Wung <zhongxiao.wang@tihchip.com>
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-10-18     RisonWung    Port to Ftgmac030
 */

/**
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICui32AR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */
#include <stdio.h>
#include "lwipopts.h"
#include "lwip/opt.h"
#include "lwip/pbuf.h"
#include "lwip/sys.h"
#include "lwip/stats.h"
#include "lwip/if_ether.h"
#include <tih/timer.h>
#include <tih/sram.h>
#include <tih/rng.h>
#include "drv_eth.h"

#define RT_DEBUG_ETH           0

#define GMAC_INT_DEFAULT       (GMAC_INT_RPKT2B)
/* ===================================================================== */
#ifdef RT_USING_ETH0
#define ETH0_TX_QUEUE_ENTRIES   4       
#define ETH0_RX_QUEUE_ENTRIES   4   

uint32 eth0_tx_pbuf_record[ETH0_TX_QUEUE_ENTRIES];///< TX pbuf recorder 
uint32 eth0_rx_pbuf_record[ETH0_RX_QUEUE_ENTRIES];///< RX pbuf recorder 

net_device eth0_dev_entry;
static net_device_t eth0_dev = &eth0_dev_entry;
#endif
/* ===================================================================== */
#ifdef RT_USING_ETH1
#define ETH1_TX_QUEUE_ENTRIES   4
#define ETH1_RX_QUEUE_ENTRIES   4      

uint32 eth1_tx_pbuf_record[ETH1_TX_QUEUE_ENTRIES];///< TX pbuf recorder 
uint32 eth1_rx_pbuf_record[ETH1_RX_QUEUE_ENTRIES];///< RX pbuf recorder 

net_device eth1_dev_entry;
static net_device_t eth1_dev = &eth1_dev_entry;
#endif
/* ===================================================================== */
extern const phy_ops_t m88e1512_phy_ops;
extern const phy_ops_t rtl8211_phy_ops;

/**
 * monitor link stataus through reading PHY link status registors.
 */
static void __fast eth_link_update(void *arg)
{
    char state[50];
    link_status_t new_state;
    link_status_t *pre_state;
    net_device_t net_dev = (net_device_t)arg;
    struct netif *Netif = net_dev->parent.netif;

    /* 1.get PHY current status by reading related registers */
    new_state = net_dev->phy->phy_link_status_get(net_dev->gmac_id);

    pre_state = &net_dev->link_status;

    /* 2.if link state changed */
    if (new_state.linked != pre_state->linked) {
        *pre_state = new_state;

        /* link established */
        if (new_state.linked) {
            /* set gmac speed and duplex mode according to this new state of phy */
            gmac_speed_duplex_set(net_dev->gmac_id, new_state.speed,new_state.duplex);

            /* notify lwip this change: dhcp re-work */
            eth_device_linkchange(&net_dev->parent, RT_TRUE);

            sprintf(state, "Linked");

            switch (new_state.speed) {
                case SPEED_1000:
                    strcat(state, "-1000Mbps");
                    break;
                case SPEED_100:
                    strcat(state, "-100Mbps");
                    break;
                case SPEED_10:
                    strcat(state, "-10Mbps");
                    break;
                default:
                    break;
            }

            /* show this new state on console*/
            if (new_state.duplex == DUPLEX_FULL) {
                strcat(state, "-Full\n");
            } else {
                strcat(state, "-Half\n");
            }
        } else {
            sprintf(state, "Un-linked");
            eth_device_linkchange(&net_dev->parent, RT_FALSE);
        }
       
        rt_kprintf("\nnetif[%c%c] state changed: %s\n", Netif->name[0], Netif->name[1], state);
    }
}

static rt_err_t eth_dev_init(rt_device_t device)
{
    net_device_t net_dev = (net_device_t)device;
    struct netif *Netif = net_dev->parent.netif;
    
    LWIP_ASSERT("Netif != NULL", (Netif != NULL));

    #if LWIP_NETIF_HOSTNAME
    /* Initialize interface hostname */
    Netif->hostname = "T610";
    #endif /* LWIP_NETIF_HOSTNAME */

    Netif->mtu = RT_LWIP_ETH_MTU;

    return RT_EOK;
}

static rt_err_t eth_dev_control(rt_device_t dev, int cmd, void *args)
{
    uint32 i;
    int32 ret;
    uint32 wol_state;
    struct pbuf *p;
    net_device_t net_dev = (net_device_t)dev;
    wake_up_control *wake_up_ctrl = NULL;
    speed_duplex *speed_ctrl = NULL;

    switch (cmd) {
        case NIOCTL_GADDR:
            /* get mac address */
            if (args) {
                gmac_mac_addr_get(net_dev->gmac_id, args);
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SADDR:
            /* set mac address */
            if (args) {
                gmac_mac_addr_set(net_dev->gmac_id, args);
                rt_device_control(dev, NIOCTL_GADDR, net_dev->parent.netif->hwaddr);
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SWKUP:
            /* set wake up event */
            if (args) {
                wake_up_ctrl = (wake_up_control *)args;
                gmac_wol_wakeup_frame_filter_set(net_dev->gmac_id,
                                                 wake_up_ctrl->wakeup_frame_filter, 
                                                 wake_up_ctrl->wakeup_frame_mask,
                                                 wake_up_ctrl->wakeup_frame, 
                                                 wake_up_ctrl->frame_len);
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SLEEP:
            /* enter sleep mode */
            if (args) {
                gmac_wol_wakeup_event_set(net_dev->gmac_id, *((uint32 *)args));
                gmac_wol_mode_enter(net_dev->gmac_id);
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_WAKEUP:
            wol_state = gmac_wol_state_poll(net_dev->gmac_id);
            rt_kprintf("wol_state = 0x%x\n", wol_state);
            *((uint32 *)args) = wol_state;
            if (wol_state != 0) {
                /* wake up from sleep mode */
                gmac_wol_mode_exit(net_dev->gmac_id);
   
                /* release user buffer */
                for (i = 0; i < net_dev->tx_desc_num; i++) {
                    p = (struct pbuf *)(net_dev->tx_pbuf_record[i]);
                    if (net_dev->tx_pbuf_record[i] != NULL) {
                        RT_DEBUG_LOG(RT_DEBUG_ETH, ("F:tx %d-0x%x\n", i, net_dev->tx_pbuf_record[i]));
                        pbuf_free(p);
                        net_dev->tx_pbuf_record[i] = NULL;
                    }
                }
   
                for (i = 0; i < net_dev->rx_desc_num; i++) {
                    p = (struct pbuf *)(net_dev->rx_pbuf_record[i]);
                    if (net_dev->rx_pbuf_record[i] != NULL) {
                        RT_DEBUG_LOG(RT_DEBUG_ETH, ("F:rx %d-0x%x\n", i, net_dev->rx_pbuf_record[i]));
                        pbuf_free(p);
                        net_dev->tx_pbuf_record[i] = NULL;
                    }
                }
   
                /* re-config gmac */
                ret = gmac_hw_deinit(net_dev->gmac_id);
                RT_ASSERT((ret == 0));
                ret = gmac_hw_init(net_dev->gmac_id);
                RT_ASSERT((ret == 0));
                
                gmac_tx_queue_init(net_dev->gmac_id, net_dev->tx_desc_num);
                gmac_rx_queue_init(net_dev->gmac_id, net_dev->rx_desc_num, PBUF_POOL_BUFSIZE);
                
                for (i = 0; i < net_dev->rx_desc_num; i++) {
                    p = pbuf_alloc(PBUF_RAW, PBUF_POOL_BUFSIZE, PBUF_POOL);
                    if (p != NULL) {
                        net_dev->rx_pbuf_record[i] = (uint32)p;
                        
                        gmac_rx_buf_attach(net_dev->gmac_id, (uint8 *)p->payload);
                        RT_DEBUG_LOG(RT_DEBUG_ETH, ("eth_dev_init RX Alloc %d 0x%x 0x%x\n", PBUF_POOL_BUFSIZE, (uint32)p->payload, AXI_ADDR((uint32)p->payload)));
                    }
                    LWIP_ASSERT("eth_dev_init error!", (p != NULL));
                }
                
                #if RT_LWIP_HW_OFFLOAD
                gmac_chksum_offload_set(net_dev->gmac_id, CHKSUM_OFFLOAD_UDP_TX | CHKSUM_OFFLOAD_UDP_RX |
                                                          CHKSUM_OFFLOAD_TCP_TX | CHKSUM_OFFLOAD_TCP_RX |
                                                          CHKSUM_OFFLOAD_IP4_TX | CHKSUM_OFFLOAD_IP4_RX |
                                                          CHKSUM_OFFLOAD_IP6_TX | CHKSUM_OFFLOAD_IP6_RX);
                #endif

                #if RT_LWIP_ETH_MTU > 1500
                gmac_jumbo_frame_enable(net_dev->gmac_id);
                #endif 

                gmac_flow_ctrl_enable(net_dev->gmac_id, 0x1000, 10);
                gmac_mac_addr_set(net_dev->gmac_id, net_dev->mac_addr);
                gmac_intr_enable(net_dev->gmac_id, GMAC_INT_DEFAULT);
                gmac_addr_filter_set(net_dev->gmac_id, FILTER_ADDR_MCAST | FILTER_ADDR_BCAST);
                gmac_tx_enable(net_dev->gmac_id);
                gmac_rx_enable(net_dev->gmac_id);
   
                gmac_phy_addr_set(net_dev->gmac_id, net_dev->phy_addr);
                gmac_phy_mmd_clk_set(net_dev->gmac_id, net_dev->phy->phy_mmd_max_fre_get(net_dev->gmac_id));
   
                net_dev->link_status.linked = FALSE;
                net_dev->phy->phy_speed_duplex_change(net_dev->gmac_id, DUPLEX_FULL, SPEED_AUTO);
            }
            break;
        case NIOCTL_SSPED:
            /* set speed and mode */
            if (args) {
                speed_ctrl = (speed_duplex *)args;
                net_dev->phy->phy_speed_duplex_change(net_dev->gmac_id, speed_ctrl->duplex, speed_ctrl->speed);
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SFLOW:
            /* set flow control */
            if (args) {
                if (*((uint32 *)args) == 0) {
                    gmac_flow_ctrl_disable(net_dev->gmac_id);
                } else {
                    gmac_flow_ctrl_enable(net_dev->gmac_id, 8000, 10);
                }
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_GCUNT:
            /* get tx and rx packets statistic values */
            gmac_statistics_get(net_dev->gmac_id, (gmac_stats_t *)args);
            break;
        case NIOCTL_SHASHTB:
            rt_kprintf("NIOCTL_GHASHTB\n");
            gmac_hash_filter_set(net_dev->gmac_id, (uint8 *)args);
            break;
        case NIOCTL_GHASHTB:
            gmac_hash_filter_get(net_dev->gmac_id, (uint32 *)args, (uint32 *)((uint8 *)args + 4));
            break;
        case NIOCTL_SFILTER:
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("NIOCTL_SFILTER\n"));
            gmac_addr_filter_set(net_dev->gmac_id, (uint32)args);
            break;
        case NIOCTL_GFILTER:
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("NIOCTL_GFILTER\n"));
            *((uint32 *)args) = gmac_addr_filter_get(net_dev->gmac_id);
            break;
        case NIOCTL_STX:   
            if (args) {
                if (*((uint32 *)args) == 0) {
                    gmac_tx_disable(net_dev->gmac_id);
                } else {
                    gmac_tx_enable(net_dev->gmac_id);
                }
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SRX:
            if (args) {
                if (*((uint32 *)args) == 0) {
                    gmac_rx_disable(net_dev->gmac_id);
                } else {
                    gmac_rx_enable(net_dev->gmac_id);
                }
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SJUMBO:
            if (args) {
                if (*((uint32 *)args) == 0) {
                    gmac_jumbo_frame_disable(net_dev->gmac_id);
                } else {
                    rt_kprintf("To enable jumbo long frame, rx quenue entity size must >= (MTU + ETH_HEAD + CRC_LEN)!\n");
                    gmac_jumbo_frame_enable(net_dev->gmac_id);
                }
            } else {
                return -RT_ERROR;
            }
            break;
        case NIOCTL_SCHKSUM:
            gmac_addr_filter_set(net_dev->gmac_id, FILTER_ADDR_MCAST_HASH);
            break;
        default :
            break;
    }
    
    return RT_EOK;
}

static rt_err_t eth_dev_open(rt_device_t dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t eth_dev_close(rt_device_t dev)
{
    return RT_EOK;
}

static rt_size_t eth_dev_read(rt_device_t dev, rt_off_t pos, void* buffer, rt_size_t size)
{
    rt_set_errno(-RT_ENOSYS);
    return 0;
}

static rt_size_t eth_dev_write(rt_device_t dev, rt_off_t pos, const void* buffer, rt_size_t size)
{
    rt_set_errno(-RT_ENOSYS);
    return 0;
}

/**
 * This function does the actual transmission of ethernet packet. The packet is
 * contained in the pbuf that is passed to the function. This pbuf might be chained.
 */
static rt_err_t __fast eth_dev_tx(rt_device_t dev, struct pbuf *p)
{
    uint32 i;
    uint8 *buf;
    uint32 padded_frame = 0;
    struct pbuf *q;
    struct pbuf *pbuf_final;
    net_device_t net_dev = (net_device_t)dev;

    SYS_ARCH_DECL_PROTECT(lev);
    
    LWIP_DEBUGF(NETIF_DEBUG, ("gmac_transmit 0x%08x, len %d\n", p, p->tot_len));
    
    /**
    * This entire function must run within a "critical section" to preserve
    * the integrity of the transmit pbuf queue.
    */
    SYS_ARCH_PROTECT(lev);

    /* check if there is transmitted buffer */
    buf = gmac_frame_transmitted_buf_poll(net_dev->gmac_id);
    if (buf != NULL) {
        /* find transmitted buffer accorded pbuf */
        for (i = 0; i < net_dev->tx_desc_num; i++) {
            q = (struct pbuf *)(net_dev->tx_pbuf_record[i]);
            if ((q  != NULL) && ((uint8 *)q->payload == buf)) {
                RT_DEBUG_LOG(RT_DEBUG_ETH, ("F:%d-0x%x\n", i, net_dev->tx_pbuf_record[i]));
                pbuf_free(q);
                net_dev->tx_pbuf_record[i] = NULL;
                break;
            }
        }
    }

    /* Make sure we still have a valid buffer (it may have been copied) */
    if (!p) {
        LINK_STATS_INC(link.memerr);
        SYS_ARCH_UNPROTECT(lev);
        return (-RT_ENOMEM);
    }

    pbuf_final = p;

    /* do padding for frame whose len less than 60 */
    if (p->tot_len < ETH_ZLEN) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("RUNT frame\n"));
        pbuf_final = pbuf_alloc(PBUF_RAW, ETH_ZLEN, PBUF_RAM);
        if (pbuf_final == NULL) {
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("Alloc padded frame fail\n"));
            LINK_STATS_INC(link.memerr);
            SYS_ARCH_UNPROTECT(lev);
            return (-RT_ENOMEM);
        }

        memset(pbuf_final->payload, 0, pbuf_final->tot_len);

        pbuf_copy(pbuf_final, p);

        padded_frame = 1;
    }

    #if RT_DEBUG_ETH
    if (((uint32)pbuf_final->payload < 0x20000) || ((uint32)pbuf_final->payload > 0x40000)) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("eth_dev_tx err:0x%x\n", (uint32)pbuf_final->payload));
    }
    #endif

    for (i = 0; i < net_dev->tx_desc_num; i++) {
        /* Does this descriptor have a buffer attached to it? */
        if (net_dev->tx_pbuf_record[i] == NULL) {
            /* record this pbuf address */
            pbuf_ref(pbuf_final);
            net_dev->tx_pbuf_record[i] = (uint32)pbuf_final;
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("A:%d-0x%x\n", i, net_dev->tx_pbuf_record[i]));
            break;
        }
    }

    if (i == net_dev->tx_desc_num) {
        /* free new alloced padded pbuf */
        if (padded_frame == 1) {
            pbuf_free(pbuf_final);
        }
        LINK_STATS_INC(link.memerr);
        SYS_ARCH_UNPROTECT(lev);
        return (-RT_ENOMEM);
    }

    if (gmac_frame_transmit(net_dev->gmac_id, pbuf_final->payload, pbuf_final->tot_len) == -1) {
        /* free for pbuf_ref() */
        pbuf_free(pbuf_final);
        net_dev->tx_pbuf_record[i] = NULL;

        /* free new alloced padded pbuf */
        if (padded_frame == 1) {
            pbuf_free(pbuf_final);
        }
        LINK_STATS_INC(link.memerr);
        SYS_ARCH_UNPROTECT(lev);
        return (-RT_ENOMEM);
    } 

    /* free new alloced padded pbuf */
    if (padded_frame == 1) {
        pbuf_free(pbuf_final);
    }

    /* Update lwIP statistics */
    LINK_STATS_INC(link.xmit);
    
    SYS_ARCH_UNPROTECT(lev);
    
    return RT_EOK;
}

static struct pbuf* __fast eth_dev_rx(rt_device_t dev)
{
    uint32 i;
    uint32 frame_len;
    uint8 *buf;
    net_device_t net_dev = (net_device_t)dev;
    struct pbuf *new_p = NULL;
    struct pbuf *p = NULL;

    frame_len = gmac_frame_recv_poll(net_dev->gmac_id);
    if (frame_len == 0) {
        gmac_intr_enable(net_dev->gmac_id, GMAC_INT_DEFAULT);
        return RT_NULL;
    }

    buf = gmac_rx_valid_buf(net_dev->gmac_id);
    if (buf == NULL) {
        gmac_intr_enable(net_dev->gmac_id, GMAC_INT_DEFAULT);
        return RT_NULL;        
    }

    /* asssign new pbuf->payload to ring buffer */
    new_p = pbuf_alloc(PBUF_RAW, PBUF_POOL_BUFSIZE, PBUF_POOL);
    if (new_p == NULL) {
        /** has no new pbuf and we reuse previous pbuf then drop packet, so the data here 
         *  would not be delivered to upper layer.
         */
        LINK_STATS_INC(link.memerr);
        LINK_STATS_INC(link.drop);
        
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("Rx alloc pbuf fial\n"));
        gmac_rx_buf_processed(net_dev->gmac_id);
        gmac_intr_enable(net_dev->gmac_id, GMAC_INT_DEFAULT);
        return RT_NULL;
    } else {
        LINK_STATS_INC(link.recv);
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("R:0x%x len=%d\n", (uint32)buf, frame_len));

        gmac_rx_buf_attach(net_dev->gmac_id, (uint8 *)new_p->payload);
        gmac_rx_buf_processed(net_dev->gmac_id);

        for (i = 0; i < net_dev->rx_desc_num; i++) {
            p = (struct pbuf  *)(net_dev->rx_pbuf_record[i]);
            if ((p != NULL) && ((uint32)p->payload == (uint32)buf)) {
                net_dev->rx_pbuf_record[i] = NULL;
                p->tot_len = p->len = frame_len;
                break;
            }
        }

        for (i = 0; i < net_dev->rx_desc_num; i++) {
            if (net_dev->rx_pbuf_record[i] == NULL) {
                net_dev->rx_pbuf_record[i] = (uint32)new_p;
                break;
            }
        }

        return p;
    } 
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops eth_ops = 
{
    eth_dev_init,
    eth_dev_open,
    eth_dev_close,
    eth_dev_read,
    eth_dev_write,
    eth_dev_control
};
#endif

#ifdef RT_USING_ETH0
static void __fast eth0_isr()
{
    uint32 status;

    rt_hw_interrupt_clear(GMAC0_IRQ_NUM);  
    status = gmac_intr_status(eth0_dev->gmac_id); 
    RT_DEBUG_LOG(RT_DEBUG_ETH, ("[eth0 isr] status=0x%x\n", status));
    gmac_intr_clear(eth0_dev->gmac_id, status);

    if (status & GMAC_INT_AHB_ERR) {
        rt_kprintf("GMAC_INT_AHB_ERR in isr0\n");
    }
    
    if (status & GMAC_INT_TPKT_LOST) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TPKT_LOST in isr0\n"));
    }
    
    if (status & GMAC_INT_TXBUF_UNAVA) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TXBUF_UNAVA in isr0\n"));
    }

    if (status & GMAC_INT_TPKT2E) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TPKT2E in isr0\n"));
    }

    /* do receiving routin */
    if (status & (GMAC_INT_RPKT2B | GMAC_INT_RXBUF_UNAVA | GMAC_INT_RPKT_LOST)) {
        if (eth_device_ready(&(eth0_dev->parent)) != RT_EOK) {
            LWIP_DEBUGF(NETIF_DEBUG, ("t610_input0: notify rx error\n"));
        } else {
            gmac_intr_disable(eth0_dev->gmac_id, GMAC_INT_DEFAULT);
        }
    }
}

static int rt_hw_t610_eth0_init(void)
{
    uint32 i;
    int32 ret;
    uint32 phy_mmd_clk;
    rt_err_t result;
    struct pbuf *p;

    memset(eth0_dev, 0, sizeof(net_device));

    eth0_dev->gmac_id = GMAC0;
    eth0_dev->tx_desc_num = ETH0_TX_QUEUE_ENTRIES;
    eth0_dev->rx_desc_num = ETH0_RX_QUEUE_ENTRIES;
    eth0_dev->link_status.linked = FALSE;
    eth0_dev->tx_pbuf_record = eth0_tx_pbuf_record;
    eth0_dev->rx_pbuf_record = eth0_rx_pbuf_record;
    eth0_dev->phy = &rtl8211_phy_ops;
    eth0_dev->phy_addr = 0;
    eth0_dev->mac_addr[0] = 0x00;
    eth0_dev->mac_addr[1] = 0x84;//T
    eth0_dev->mac_addr[2] = 0x73;//I
    eth0_dev->mac_addr[3] = 0x72;//H
    rand_get(&eth0_dev->mac_addr[4], 1);
    rand_get(&eth0_dev->mac_addr[5], 1);

    ret = gmac_hw_init(eth0_dev->gmac_id);
    if (ret != 0) {
        return -1;
    }

    ret = gmac_tx_queue_init(eth0_dev->gmac_id, eth0_dev->tx_desc_num);
    if (ret != 0) {
        return -1;
    }

    ret = gmac_rx_queue_init(eth0_dev->gmac_id, eth0_dev->rx_desc_num, PBUF_POOL_BUFSIZE);
    if (ret != 0) {
        return -1;
    }

    for (i = 0; i < eth0_dev->rx_desc_num; i++) {
        p = pbuf_alloc(PBUF_RAW, PBUF_POOL_BUFSIZE, PBUF_POOL);
        if (p != NULL) {
            eth0_dev->rx_pbuf_record[i] = (uint32)p;

            gmac_rx_buf_attach(eth0_dev->gmac_id, (uint8 *)p->payload);
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("RX queue %d 0x%x 0x%x\n", PBUF_POOL_BUFSIZE, (uint32)p->payload, AXI_ADDR((uint32)p->payload)));
        } else {
            return -1;
        }
    }

    #if RT_LWIP_HW_OFFLOAD
    gmac_chksum_offload_set(eth0_dev->gmac_id, CHKSUM_OFFLOAD_UDP_TX | CHKSUM_OFFLOAD_UDP_RX |
                                               CHKSUM_OFFLOAD_TCP_TX | CHKSUM_OFFLOAD_TCP_RX |
                                               CHKSUM_OFFLOAD_IP4_TX | CHKSUM_OFFLOAD_IP4_RX |
                                               CHKSUM_OFFLOAD_IP6_TX | CHKSUM_OFFLOAD_IP6_RX);
    #endif

    #if RT_LWIP_ETH_MTU > 1500
    gmac_jumbo_frame_enable(eth0_dev->gmac_id);
    #endif 

    gmac_flow_ctrl_enable(eth0_dev->gmac_id, 0x1000, 10);
    gmac_mac_addr_set(eth0_dev->gmac_id, eth0_dev->mac_addr);
    gmac_intr_enable(eth0_dev->gmac_id, GMAC_INT_DEFAULT);
    gmac_addr_filter_set(eth0_dev->gmac_id, FILTER_ADDR_MCAST | FILTER_ADDR_BCAST);
    gmac_tx_enable(eth0_dev->gmac_id);
    gmac_rx_enable(eth0_dev->gmac_id);

    /* init phy */
    phy_mmd_clk = eth0_dev->phy->phy_mmd_max_fre_get(eth0_dev->gmac_id);
    gmac_phy_addr_set(eth0_dev->gmac_id, eth0_dev->phy_addr);
    gmac_phy_mmd_clk_set(eth0_dev->gmac_id, phy_mmd_clk);
    ret = eth0_dev->phy->phy_init(eth0_dev->gmac_id);
    if (ret != 0) {
        rt_kprintf("ERR##: PHY0 initialize fail!\n");
    }

    /* creat a timer for link status monitor */
    rt_timer_init(&eth0_dev->timer, "eth0_timer", eth_link_update, (void *)eth0_dev, RT_TICK_PER_SECOND, RT_TIMER_FLAG_PERIODIC);
    rt_timer_start(&eth0_dev->timer);

    /* set MAC interrupt number and accorded interrupting handler */
    if (rt_hw_interrupt_install(GMAC0_IRQ_NUM, eth0_isr, NULL, "ETH0") != NULL) {
        rt_hw_interrupt_umask(GMAC0_IRQ_NUM);  
    }

    /* init rt-thread device interface */
    #ifdef RT_USING_DEVICE_OPS
    eth0_dev->parent.parent.ops     = &eth_ops;
    #else
    eth0_dev->parent.parent.init    = eth_dev_init;
    eth0_dev->parent.parent.open    = eth_dev_open;
    eth0_dev->parent.parent.close   = eth_dev_close;
    eth0_dev->parent.parent.read    = eth_dev_read;
    eth0_dev->parent.parent.write   = eth_dev_write;
    eth0_dev->parent.parent.control = eth_dev_control;
    #endif
    eth0_dev->parent.eth_rx         = eth_dev_rx;
    eth0_dev->parent.eth_tx         = eth_dev_tx;

    #if defined(RT_USING_POSIX)
    /* set fops */
    eth0_dev->parent.parent.fops = NULL;//Not support posix operation
    #endif

    result = eth_device_init(&(eth0_dev->parent), "e0");
    return result;
}

INIT_COMPONENT_EXPORT(rt_hw_t610_eth0_init);
#endif

#ifdef RT_USING_ETH1
static void __fast eth1_isr()
{
    uint32 status;
    
    rt_hw_interrupt_clear(GMAC1_IRQ_NUM);  
    status = gmac_intr_status(eth1_dev->gmac_id); 
    RT_DEBUG_LOG(RT_DEBUG_ETH, ("[eth1 isr] status=0x%x\n",status));
    gmac_intr_clear(eth1_dev->gmac_id, status);

    if (status & GMAC_INT_AHB_ERR) {
        rt_kprintf("GMAC_INT_AHB_ERR in isr1\n");
    }
    
    if (status & GMAC_INT_TPKT_LOST) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TPKT_LOST in isr1\n"));
    }
    
    if (status & GMAC_INT_TXBUF_UNAVA) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TXBUF_UNAVA in isr1\n"));
    }

    if (status & GMAC_INT_TPKT2E) {
        RT_DEBUG_LOG(RT_DEBUG_ETH, ("GMAC_INT_TPKT2E in isr1\n"));
    }

    /* do receiving routin */
    if (status & (GMAC_INT_RPKT2B | GMAC_INT_RXBUF_UNAVA | GMAC_INT_RPKT_LOST)) {
        if (eth_device_ready(&(eth1_dev->parent)) != RT_EOK) {
            LWIP_DEBUGF(NETIF_DEBUG, ("t610_input1: notify rx error\n"));
        } else {
            gmac_intr_disable(eth1_dev->gmac_id, GMAC_INT_DEFAULT);
        }
    }
}

static int rt_hw_t610_eth1_init(void)
{
    uint32 i;
    int32 ret;
    uint32 phy_mmd_clk;
    rt_err_t result;
    struct pbuf *p;

    memset(eth1_dev, 0, sizeof(net_device));

    eth1_dev->gmac_id = GMAC1;
    eth1_dev->tx_desc_num = ETH1_TX_QUEUE_ENTRIES;
    eth1_dev->rx_desc_num = ETH1_RX_QUEUE_ENTRIES;
    eth1_dev->link_status.linked = FALSE;
    eth1_dev->tx_pbuf_record = eth1_tx_pbuf_record;
    eth1_dev->rx_pbuf_record = eth1_rx_pbuf_record;
    eth1_dev->phy = &m88e1512_phy_ops;
    eth1_dev->phy_addr = 0;
    eth1_dev->mac_addr[0] = 0x00;
    eth1_dev->mac_addr[1] = 0x84;//T
    eth1_dev->mac_addr[2] = 0x73;//I
    eth1_dev->mac_addr[3] = 0x72;//H
    rand_get(&eth1_dev->mac_addr[4], 1);
    rand_get(&eth1_dev->mac_addr[5], 1);

    ret = gmac_hw_init(eth1_dev->gmac_id);
    if (ret != 0 ) {
        return -1;
    }

    ret = gmac_tx_queue_init(eth1_dev->gmac_id, eth1_dev->tx_desc_num);
    if (ret != 0) {
        return -1;
    }

    ret = gmac_rx_queue_init(eth1_dev->gmac_id, eth1_dev->rx_desc_num, PBUF_POOL_BUFSIZE);
    if (ret != 0) {
        return -1;
    }

    for (i = 0; i < eth1_dev->rx_desc_num; i++) {
        p = pbuf_alloc(PBUF_RAW, PBUF_POOL_BUFSIZE, PBUF_POOL);
        if (p != NULL) {
            eth1_dev->rx_pbuf_record[i] = (uint32)p;

            gmac_rx_buf_attach(eth1_dev->gmac_id, (uint8 *)p->payload);
            RT_DEBUG_LOG(RT_DEBUG_ETH, ("RX queue %d 0x%x 0x%x\n", PBUF_POOL_BUFSIZE, (uint32)p->payload, AXI_ADDR((uint32)p->payload)));
        } else {
            return -1;
        }
    }

    #if RT_LWIP_HW_OFFLOAD
    gmac_chksum_offload_set(eth1_dev->gmac_id, CHKSUM_OFFLOAD_UDP_TX | CHKSUM_OFFLOAD_UDP_RX |
                                               CHKSUM_OFFLOAD_TCP_TX | CHKSUM_OFFLOAD_TCP_RX |
                                               CHKSUM_OFFLOAD_IP4_TX | CHKSUM_OFFLOAD_IP4_RX |
                                               CHKSUM_OFFLOAD_IP6_TX | CHKSUM_OFFLOAD_IP6_RX);
    #endif

    #if RT_LWIP_ETH_MTU > 1500
    gmac_jumbo_frame_enable(eth1_dev->gmac_id);
    #endif 

    gmac_flow_ctrl_enable(eth1_dev->gmac_id, 0xf000, 10);
    gmac_mac_addr_set(eth1_dev->gmac_id, eth1_dev->mac_addr);
    gmac_intr_enable(eth1_dev->gmac_id, GMAC_INT_DEFAULT);
    gmac_addr_filter_set(eth1_dev->gmac_id, FILTER_ADDR_MCAST | FILTER_ADDR_BCAST);
    gmac_tx_enable(eth1_dev->gmac_id);
    gmac_rx_enable(eth1_dev->gmac_id);

    /* init phy */
    phy_mmd_clk = eth1_dev->phy->phy_mmd_max_fre_get(eth1_dev->gmac_id);
    gmac_phy_addr_set(eth1_dev->gmac_id, eth1_dev->phy_addr);
    gmac_phy_mmd_clk_set(eth1_dev->gmac_id, phy_mmd_clk);
    ret = eth1_dev->phy->phy_init(eth1_dev->gmac_id);
    if (ret != 0) {
        rt_kprintf("ERR##: PHY1 initialize fail!\n");
    }

    /* creat a timer for link status monitor */
    rt_timer_init(&eth1_dev->timer, "eth1_timer", eth_link_update, (void *)eth1_dev, RT_TICK_PER_SECOND, RT_TIMER_FLAG_PERIODIC);
    rt_timer_start(&eth1_dev->timer);

    /* set MAC interrupt number and accorded interrupting handler */
    if (rt_hw_interrupt_install(GMAC1_IRQ_NUM, eth1_isr, NULL, "ETH1") != NULL) {
        rt_hw_interrupt_umask(GMAC1_IRQ_NUM);  
    }
    
    /* init rt-thread device interface */
    #ifdef RT_USING_DEVICE_OPS
    eth1_dev->parent.parent.ops     = &eth_ops;
    #else
    eth1_dev->parent.parent.init    = eth_dev_init;
    eth1_dev->parent.parent.open    = eth_dev_open;
    eth1_dev->parent.parent.close   = eth_dev_close;
    eth1_dev->parent.parent.read    = eth_dev_read;
    eth1_dev->parent.parent.write   = eth_dev_write;
    eth1_dev->parent.parent.control = eth_dev_control;
    eth1_dev->parent.eth_rx         = eth_dev_rx;
    eth1_dev->parent.eth_tx         = eth_dev_tx;
    #endif
    
    #if defined(RT_USING_POSIX)
    /* set fops */
    eth1_dev->parent.parent.fops = NULL;//Not support posix operation
    #endif

    result = eth_device_init(&(eth1_dev->parent), "e1");
    return result;
}

INIT_COMPONENT_EXPORT(rt_hw_t610_eth1_init);
#endif


