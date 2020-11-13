/*
 * File      : dfs_net.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2015-2016, RT-Thread Development Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Change Logs:
 * Date           Author       Notes
 * 2015-02-17     Bernard      First version
 * 2016-05-07     Bernard      Rename dfs_lwip to dfs_net
 * 2018-03-09     Bernard      Fix the last data issue in poll.
 */

#include <rtthread.h>
#include <dfs.h>
#include <dfs_fs.h>
#include <dfs_file.h>
#include <dfs_posix.h>

#include <rtdevice.h>
#include <sys/socket.h>

#include <dfs_poll.h>
#include "dfs_net.h"
#include "net/if.h"
#include "ethernetif.h"

int __fast dfs_net_getsocket(int fd)
{
    int sock;
    struct dfs_fd *_dfs_fd; 

    _dfs_fd = fd_get(fd);
    if (_dfs_fd == NULL) return -1;

    if (_dfs_fd->type != FT_SOCKET) sock = -1;
    else sock = (int)_dfs_fd->data;

    fd_put(_dfs_fd); /* put this dfs fd */
    return sock;
}

static int dfs_net_ioctl(struct dfs_fd* file, int cmd, void* args)
{
    #if LWIP_RAWLL
    if (cmd == SIOCGIFHWADDR) {
        rt_err_t res;
        rt_device_t net_dev;
        struct ifreq *ifr = (struct ifreq *)args;
    
        net_dev = rt_device_find(ifr->ifr_name);
        if (net_dev != RT_NULL) {
            rt_kprintf("finded %s device.\n", ifr->ifr_name);
            
            res = rt_device_open(net_dev, RT_DEVICE_OFLAG_OPEN);
            if (res != RT_EOK)
            {
                rt_kprintf("open %s device error.%d\n", ifr->ifr_name, res);
                return -1;
            }
        } else {
            rt_kprintf("can't find %s device.\n", ifr->ifr_name);
            return -1;
        }
        
        //cmd operations
        res = rt_device_control(net_dev, NIOCTL_GADDR, (void *)ifr->ifr_hwaddr.sa_data);
        if (res != RT_EOK) {
            rt_kprintf("NIOCTL_GADDR error\n");
        }

        rt_device_close(net_dev);

        return 0;
    }
    else
    #endif
    {
        int sock = (int)file->data;
        
        return lwip_ioctl(sock, cmd, args);;
    }

    return -EIO;
}

static int __fast dfs_net_read(struct dfs_fd* file, void *buf, size_t count)
{
    int sock;

    sock = (int)file->data;
    count = lwip_read(sock, buf, count);

    return count;
}

static int __fast dfs_net_write(struct dfs_fd *file, const void *buf, size_t count)
{
    int sock;
    
    sock = (int)file->data;
    count = lwip_write(sock, buf, count);

    return count;
}

static int dfs_net_close(struct dfs_fd* file)
{
    int sock;
    int result;
    
    sock = (int)file->data;
    result = lwip_close(sock);
    
    if (result == 0) return RT_EOK;
    
    return -result;
}

static int dfs_net_poll(struct dfs_fd *file, struct rt_pollreq *req)
{
    int sfd;
    int mask = 0;
    struct lwip_sock *sock;

    sfd = (int)file->data;

    sock =  lwip_tryget_socket(sfd);
    if (sock != NULL)
    {
        rt_base_t level;

        rt_poll_add(&sock->wait_head, req);

        level = rt_hw_interrupt_disable();
        if (sock->lastdata || sock->rcvevent)
        {
            mask |= POLLIN;
        }
        if (sock->sendevent)
        {
            mask |= POLLOUT;
        }
        if (sock->errevent)
        {
            mask |= POLLERR;
        }
        rt_hw_interrupt_enable(level);
    }

    return mask;
}

const struct dfs_file_ops _net_fops = 
{
    NULL,    /* open     */
    dfs_net_close,
    dfs_net_ioctl,
    dfs_net_read,
    dfs_net_write,
    NULL,
    NULL,    /* lseek    */
    NULL,    /* getdents */
    dfs_net_poll,
};

const struct dfs_file_ops *dfs_net_get_fops(void)
{
    return &_net_fops;
}

