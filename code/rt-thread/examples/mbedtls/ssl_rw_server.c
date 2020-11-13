/*
 * File      : tls_app_test.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006 - 2018, RT-Thread Development Team
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
 * Date          Author          Notes
 * 2018-01-22    chenyong     first version
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <rtthread.h>

#include <tls_certificate.h>
#include <tls_server.h>

#if !defined(MBEDTLS_CONFIG_FILE)
#include <mbedtls/config.h>
#else
#include MBEDTLS_CONFIG_FILE
#endif

#define FUNC_TEST_SSL_LISTEN_ADDR  "192.168.100.128"
#define FUNC_TEST_SSL_LISTEN_PORT  "4433"

#define MBEDTLS_READ_BUFFER 128
static int8 bind_ip[32];
static int8 bind_port[16];


static void ssl_rw_server_entry(void *parament)
{
    int8 ret = 0;
    size_t len = 0;
    uint8 buf[128];
    tls_srv_context *srv_ctx;
    tls_srv_session *session;
    int suite_preset = SSL_PRESET_SUITE_GE;
    
#if defined(MBEDTLS_GMSSL)
    suite_preset = SSL_PRESET_SUITE_GE_AND_GM;
#endif

    if (!(srv_ctx = tls_srv_create(bind_ip, bind_port, suite_preset ))) {
        rt_kprintf("SSL server ctx create err\n");
        return;
    }

    if ((ret = tls_srv_listen(srv_ctx)) < 0) {
        rt_kprintf("SSL server listen err return : -0x%x\n", -ret);
        goto __exit;
    }

    session = tls_srv_session_create(srv_ctx);
    if (!session) {
        rt_kprintf("SSL server session create fail\n");
        goto __exit;
    }

    if ((ret = tls_srv_session_init(srv_ctx, session)) != 0) {
        rt_kprintf("SSL server session init err return : -0x%x\n", -ret);
        goto __exit;
    }

    if ((ret = tls_srv_session_config(session)) != 0) {
        rt_kprintf("SSL server session config err return : -0x%x\n", -ret);
        goto __exit;
    }
    
    do {
        /*  read */
        len = sizeof(buf) - 1;
        memset(buf, 0, sizeof(buf));
        ret = tls_srv_session_read(session, buf, len);

        if (ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
            continue;

        if (ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
            break;

        if (ret < 0) {
            rt_kprintf("SSL server read err return : -0x%x\n", -ret);
            break;
        }

        if (ret == 0) {
            rt_kprintf("\nEOF\n");
            break;
        }

        len = ret;
        rt_kprintf(" %d bytes read\n%s\n", len, (char *)buf);

        /*  write */
        if (strncmp((char *)buf, "quit", 4) == 0)
            break;
        
        while ((ret = tls_srv_session_write(session, buf, len)) <= 0) {
            if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
                rt_kprintf("SSL server write err return : -0x%x\n", -ret);
                goto __exit;
            }
        }
        
        len = ret;
        rt_kprintf(" %d bytes written\n%s\n", len, (char *)buf);

    } while (1);

__exit:
    tls_srv_session_close(session);
    tls_srv_session_destroy(session);
    tls_srv_destroy(srv_ctx);
}

int ssl_rw_server(int argc,char *argv[])
{
    rt_thread_t tid;

    memset(bind_ip, 0, sizeof(bind_ip));
    memset(bind_port, 0, sizeof(bind_port));

    strcpy( bind_ip, argv[1] );
    strcpy( bind_port, argv[2] );

    tid = rt_thread_create("func_s", ssl_rw_server_entry, RT_NULL, 8 * 1024,
                           RT_THREAD_PRIORITY_MAX / 3 - 1, 5);
    if (tid != RT_NULL)
        rt_thread_startup(tid);

    return RT_EOK;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
FINSH_FUNCTION_EXPORT_ALIAS(ssl_rw_server, ssl_rw_server, ssl read write server test);
#ifdef FINSH_USING_MSH
MSH_CMD_EXPORT_ALIAS(ssl_rw_server, ssl_rw_server, ssl read write server test);
#endif 
#endif

