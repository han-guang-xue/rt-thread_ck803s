#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <rtthread.h>

#include <tls_certificate.h>
#include <tls_client.h>

#if !defined(MBEDTLS_CONFIG_FILE)
#include <mbedtls/config.h>
#else
#include MBEDTLS_CONFIG_FILE
#endif

#define FUNC_TEST_SSL_CONNECT_ADDR  "192.168.100.208"
#define FUNC_TEST_SSL_CONNECT_PORT  "4433"

#define MBEDTLS_READ_BUFFER 128

static tls_cli_session *tls_session = RT_NULL;

static void ssl_rw_client_entry(void *parament)
{
    int ret = 0, len = 0;
    int suite_preset = SSL_PRESET_SUITE_GE;
    tls_cli_session *session = (tls_cli_session*)parament;

#if defined(MBEDTLS_GMSSL)
    suite_preset = SSL_PRESET_SUITE_GM;
#endif
    if ((ret = tls_cli_session_init(session, suite_preset)) != 0) {
        rt_kprintf("MbedTLSClientInit err return : -0x%x\n", -ret);
        goto __exit;
    }

    if ((ret = tls_cli_session_config(session)) < 0) {
        rt_kprintf("MbedTLSCLlientContext err return : -0x%x\n", -ret);
        goto __exit;
    }

    if ((ret = tls_cli_session_connect(session)) != 0) {
        rt_kprintf("MbedTLSCLlientConnect err return : -0x%x\n", -ret);
        goto __exit;
    }

    do {
        len = session->buf_size - 1;
        memset(session->buffer, 0, session->buf_size);
        ret = tls_cli_session_read(session, session->buffer, session->buf_size);

        if (ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
            continue;

        if (ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
            break;

        if (ret < 0) {
            rt_kprintf("MbedTLSClientRead err returned : -%x\n", -ret);
            break;
        }

        if (ret == 0) {
            rt_kprintf("\n\nEOF\n\n");
            break;
        }

        len = ret;
        rt_kprintf(" %d bytes read\n\n%s\n\n", len, (char*)session->buffer);

        if (strncmp((const char *)session->buffer, "quit", 4) == 0)
            break;

        while ((ret = tls_cli_session_write(session, session->buffer, len)) <= 0) {
            if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
                rt_kprintf("MbedTLSClientWrite err returned : -%x\n\n", -ret);
                goto __exit;
            }
        }

        len = ret;
        rt_kprintf(" %d bytes written\n\n%s", len, (char*)session->buffer);

    } while (1);

__exit:
    tls_cli_session_close(session);
    tls_cli_session_destroy(session);

    rt_kprintf("func_test_ssl_client close!\n");
}

int ssl_rw_client(int argc,char *argv[])
{
    rt_thread_t tid;
    int8 ip[32];
    int8 port[16];

    memset(ip, 0, sizeof(ip));
    memset(port, 0, sizeof(port));

    strcpy( ip, argv[1] );
    strcpy( port, argv[2] );

    tls_session = tls_cli_session_create(ip, port, MBEDTLS_READ_BUFFER);
    if (!tls_session) {
        rt_kprintf("no memory for tls_session struct\n");
        return RT_ERROR;
    }

    tid = rt_thread_create("tls_c", ssl_rw_client_entry, (void*)tls_session, 6 * 1024,
                           RT_THREAD_PRIORITY_MAX / 3 - 1, 5);
    if (tid != RT_NULL)
        rt_thread_startup(tid);

    return ( RT_EOK);
}

#ifdef RT_USING_FINSH
#include <finsh.h>
FINSH_FUNCTION_EXPORT_ALIAS(ssl_rw_client, ssl_rw_client, ssl api read write client test);
#ifdef FINSH_USING_MSH
MSH_CMD_EXPORT_ALIAS(ssl_rw_client, ssl_rw_client, ssl api read write client test);
#endif 
#endif

