/*
 * File      : drv_eth.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2009-2013 RT-Thread Develop Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://www.rt-thread.org/license/LICENSE
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-10-18     RisonWung    Port to Ftgmac030
 */
 
#ifndef __DRV_ETH_H__
#define __DRV_ETH_H__

#include <tih/phy.h>
#include <tih/gmac.h>
#include <netif/ethernetif.h>

typedef struct 
{
    struct eth_device parent;          ///< inherit from ethernet device 
    uint32            gmac_id;
    struct rt_timer   timer;           ///< link state monitor timer 
    uint8             tx_desc_num;
    uint32           *tx_pbuf_record;  ///< TX pbuf recorder */
    uint8             rx_desc_num;
    uint32           *rx_pbuf_record;  ///< RX pbuf recorder */
    uint8             mac_addr[6];
    uint32            phy_addr;
    const phy_ops_t  *phy;             ///< phy control functions */
    link_status_t      link_status;
} net_device;
typedef net_device* net_device_t; 

#endif
