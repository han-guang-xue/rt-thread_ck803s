#include <stdio.h>         
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"
#include "netif/ethernetif.h"

static uint32_t wakeup_frame_mask[4] = {0xfff3fcff, 0xffffffff, 0xffffffff, 0xffffffff};

static uint8_t wakeup_frame[212] = { 
                            0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
   ,0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09
};

uint32 data_transmit = 0;

static void header_print(void)
{
    printf("netctrl eth_name getaddr                - get NIC's current mac address\n");
    printf("                 setaddr mac_addr       - set mac address\n");
    printf("                 sleep                  - enter sleep mode\n");
    printf("                 wakeup                 - exit  sleep mode\n");
    printf("                 flowctrl [1/0]         - enable/disable flow control\n");
    printf("                 counter                - get tx and rx packets statistic values\n");
    printf("                 gethashtb              - check if the multicast mac address is setted to hash table\n");
    printf("                 sethashtb mac_addr     - set the multicast mac address to hash table\n");
    printf("                 setfilter filter_type  - set mac address filter types\n");
    printf("                 getfilter              - get mac address filter types\n");
    printf("                 speed [1000/100/10]    - set speed\n");


}

static int getvalue(char c)
{
    if(( c >= '0' ) && ( c <= '9'))
        return c - '0';
    else if(( c >= 'a' ) && ( c <= 'f'))
        return c - 'a' + 10;
    else if(( c >= 'A') && ( c <= 'F'))
        return c - 'A' + 10;
    else 
        return 0;
}

static void get_addr_from_str(char *str, char mac_addr[])
{
    uint32_t i;
    uint8_t low;
    uint8_t high;

    printf("User inputted MAC address form must be xx:xx:xx:xx:xx:xx and here got:\n");
    for(i = 0; i < 6; i++)
    {
        high = getvalue(str[i*3]);
        low = getvalue(str[i*3 + 1]);
        mac_addr[i] = (high << 4) + low;

        if (i == 5)
            printf("%02x", mac_addr[i]);
        else 
            printf("%02x:", mac_addr[i]);
    }
    printf("\n");
}

static void netctrl(int argc, char **argv)
{
    bool enable;
    char mac_addr[6];
    uint32_t hash[2];
    uint32_t wakeup_event;
    rt_err_t res;
    speed_duplex speed_ctrl;
    wake_up_control wakeup_ctrl;
    rt_device_t net_dev = RT_NULL;
    uint32_t filter_bits;

    if (argc < 3) 
    {
        goto arg_err;
    }

    /* find then open device */
    net_dev = rt_device_find(argv[1]);
    if (net_dev != RT_NULL) 
    {
        printf("finded %s device.\n", argv[1]);
        res = rt_device_open(net_dev, RT_DEVICE_OFLAG_OPEN);
        if (res != RT_EOK)
        {
            printf("open %s device error.%ld\n", argv[1], res);
            return;
        }
    } 
    else 
    {
        printf("can't find %s device.\n", argv[1]);
        return;
    }

    /* cmd operations */
    if (strcmp(argv[2], "getaddr") == 0) 
    { 
        res = rt_device_control(net_dev, NIOCTL_GADDR, (void *)mac_addr);
        if (res == RT_EOK) 
        {
            printf("%x:%x:%x:%x:%x:%x\n", mac_addr[0], mac_addr[1], mac_addr[2],
                                              mac_addr[3], mac_addr[4], mac_addr[5]);
        } 
        else 
        {
            printf("NIOCTL_GADDR error\n");
        }
    } 
    else if (strcmp(argv[2], "setaddr") == 0) 
    { 
        if (argc < 4) 
        {
            goto arg_err;
        }

        get_addr_from_str(argv[3], mac_addr);
        res = rt_device_control(net_dev, NIOCTL_SADDR, (void *)mac_addr);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SADDR error\n");
        }
    } 
    else if (strcmp(argv[2], "sleep") == 0) 
    { 
        /** If you want to make you device can be waked up by customerized frame, configue it
         *  here. We can config four frames in summary.
         */
        wakeup_ctrl.wakeup_frame_filter = WAKEUP_FRAME_FILTER_1;
        wakeup_ctrl.wakeup_frame_mask   = (unsigned int *)wakeup_frame_mask;
        wakeup_ctrl.wakeup_frame        = wakeup_frame;
        wakeup_ctrl.frame_len           = sizeof(wakeup_frame);
        res = rt_device_control(net_dev, NIOCTL_SWKUP, (void *)(&wakeup_ctrl));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SWKUP error\n");
        }

        /** Assume our NIC can be waked up by customerrized frame defined in WAKEUP_EVN_FRAME1
         *  as well as magic frame. 
         */
        wakeup_event = WAKEUP_FRAME1 | WAKEUP_MAGICPKT;
        res = rt_device_control(net_dev, NIOCTL_SLEEP, (void *)(&wakeup_event));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SWKUP error\n");
        }
    } 
    else if (strcmp(argv[2], "wakeup") == 0) 
    { 
        res = rt_device_control(net_dev, NIOCTL_WAKEUP, &wakeup_event);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_WAKEUP error\n");
        } 
    } 
    else if (strcmp(argv[2], "speed") == 0) 
    { 
        if (strcmp(argv[3], "auto") == 0)
        {
            speed_ctrl.speed = SPEED_AUTO;
        }
        else if (strtoul(argv[3], 0, 10) > 100) 
        {
            speed_ctrl.speed = SPEED_1000;
        } 
        else if (strtoul(argv[3], 0, 10) > 10) 
        {
            speed_ctrl.speed = SPEED_100;
        } 
        else 
        {
            speed_ctrl.speed = SPEED_10;
        }

        if (strtoul(argv[4], 0, 10) == 0) 
        {
           speed_ctrl.duplex = DUPLEX_HALF;
        } 
        else
        {
           speed_ctrl.duplex = DUPLEX_FULL;
        } 
        
        res = rt_device_control(net_dev, NIOCTL_SSPED, (void *)(&speed_ctrl));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SSPED error\n");
        }
    } 
    else if (strcmp(argv[2], "flowctrl") == 0) 
    { 
        if (argc < 4) 
            goto arg_err;
        else 
            enable = strtoul(argv[3], 0, 10);

        res = rt_device_control(net_dev, NIOCTL_SFLOW, (void *)(&enable));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SFLOW error\n");
        }
    }
    else if (strcmp(argv[2], "jumbo") == 0) 
    { 
        if (argc < 4) 
            goto arg_err;
        else 
            enable = strtoul(argv[3], 0, 10);

        res = rt_device_control(net_dev, NIOCTL_SJUMBO, (void *)(&enable));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SFLOW error\n");
        }
    } 
    else if (strcmp(argv[2], "counter") == 0) 
    { 
        gmac_stats_t gmac_stats;
        res = rt_device_control(net_dev, NIOCTL_GCUNT, (void *)(&gmac_stats));
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SFLOW error\n");
        } 
        else
        {
            printf("rx_packets = %d\ntx_packets = %d\nrx_errors = %d\ntx_errors = %d\nrx_multicast = %d\nrx_broadcast = %d\nrx_runt = %d\nrx_pause = %d\n\n",
                    gmac_stats.rx_packets,
                    gmac_stats.tx_packets,
                    gmac_stats.rx_errors,
                    gmac_stats.tx_errors,
                    gmac_stats.rx_multicast,
                    gmac_stats.rx_broadcast,
                    gmac_stats.rx_runt,
                    gmac_stats.rx_pause);
    
            printf("rx_length_errors = %d\nrx_crc_errors = %d\nrx_align_errors = %d\rx_missed_errors = %d\nrx_collisions = %d\n\n",
                    gmac_stats.rx_length_errors,
                    gmac_stats.rx_crc_errors,
                    gmac_stats.rx_align_errors,
                    gmac_stats.rx_missed_errors,
                    gmac_stats.rx_collisions_errors);
    
            printf("tx_collisions_errors = %d\ntx_late_collisions_errors = %d\ntx_underun_errors = %d\n",
                    gmac_stats.tx_collisions_errors,
                    gmac_stats.tx_late_collisions_errors,
                    gmac_stats.tx_underun_errors);
        }

        #ifdef RT_LWIP_STATS
        stats_display();
        #endif
    } 
    else if (strcmp(argv[2], "sethashtb") == 0) 
    { 
        if (argc < 4) 
        {
            goto arg_err;
        }

        get_addr_from_str(argv[3], mac_addr);
        res = rt_device_control(net_dev, NIOCTL_SHASHTB, (void *)mac_addr);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SHASHTB error\n");
        }
    } 
    else if (strcmp(argv[2], "gethashtb") == 0) 
    { 
        res = rt_device_control(net_dev, NIOCTL_GHASHTB, (void *)&hash);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_GHASHTB error\n");
        } 
        else 
        {
            printf("0x%x  0x%x\n", hash[0], hash[1]);
        }
    } 
    else if (strcmp(argv[2], "setfilter") == 0) 
    { 
        if (argc < 4) 
        {
            goto arg_err;
        }
        filter_bits = strtoul(argv[3], 0, 10);
        res = rt_device_control(net_dev, NIOCTL_SFILTER, (void *)filter_bits);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_SFILTER error\n");
        }
    } 
    else if (strcmp(argv[2], "getfilter") == 0) 
    { 
        res = rt_device_control(net_dev, NIOCTL_GFILTER, (void *)&filter_bits);
        if (res != RT_EOK) 
        {
            printf("NIOCTL_GFILTER error\n");
        } 
        else 
        {
            printf("0x%x\n", filter_bits);
        }
    } 
    else if (strcmp(argv[2], "testkpalive") == 0) 
    { 
        data_transmit = strtoul(argv[3], 0, 10);
    } 
    else  
    {
        goto arg_err;
    }

    if (net_dev != RT_NULL) 
    {
        rt_device_close(net_dev);
    }

    /* return for success */
    return;

    arg_err:
    if (net_dev != RT_NULL) 
    {
        rt_device_close(net_dev);
    }
    header_print();
    return ;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(netctrl, config ethernet interface);
#endif
