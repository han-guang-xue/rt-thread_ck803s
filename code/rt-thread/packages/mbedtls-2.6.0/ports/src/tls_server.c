/*
 *  Copyright (C) 2006-2015, ARM Limited, All Rights Reserved
 *  SPDX-License-Identifier: Apache-2.0
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may
 *  not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 *  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  This file is part of mbed TLS (https://tls.mbed.org)
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <rtthread.h>

#include <tls_server.h>
#include <tls_certificate.h>

#if !defined(MBEDTLS_CONFIG_FILE)
#include <mbedtls/config.h>
#else
#include MBEDTLS_CONFIG_FILE
#endif
#include <mbedtls/error.h>
#include <mbedtls/debug.h>

#define DEBUG_LEVEL 10

static void my_debug(void *ctx, int level, const char *file, int line, const char *str)
{
    ((void)level);

    //rt_kprintf("%s:%04d: %s", file, line, str);
    //fflush( stdout );
}

tls_srv_context* tls_srv_create(int8 *bind_host, int8 *bind_port, int suite_preset)
{
    int ret = 0;
    tls_srv_context *ctx;

    if (!bind_port) {
        return NULL;
    }

    ctx = (tls_srv_context*)malloc(sizeof(tls_srv_context));
    if (!ctx) {
        rt_kprintf("no memory for tls_srv_context struct\n");
        return NULL;
    }

    if (!bind_host)
        ctx->host = NULL;
    else
        ctx->host = strdup((const char *)bind_host);
    ctx->port = strdup((const char *)bind_port);
    ctx->suite_preset = suite_preset;

#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold(DEBUG_LEVEL);
#endif

#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_init(&ctx->cache);
#endif
    mbedtls_x509_crt_init(&ctx->crt);
    mbedtls_pk_init(&ctx->pkey);
#if defined(MBEDTLS_GMSSL)
    mbedtls_x509_crt_init(&ctx->gm_crt);
    mbedtls_pk_init(&ctx->gm_pkey_enc);
    mbedtls_pk_init(&ctx->gm_pkey_dsa);
#endif
    mbedtls_net_init(&ctx->listen_fd);

    /*
     * 1. Load the certificates and private RSA key
     */
    rt_kprintf("Loading the server cert. and key...\n");
    fflush(stdout);

#if defined(MBEDTLS_GMSSL)
    if (suite_preset == SSL_PRESET_SUITE_GM) {
        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_srv_crt_1,
                                     mbedtls_gmtest_srv_crt_len1);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_srv_crt_2,
                                     mbedtls_gmtest_srv_crt_len2);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_cas_pem,
                                     mbedtls_gmtest_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_gm_pk_parse_key(&ctx->gm_pkey_dsa,
                                      (const unsigned char*)mbedtls_gmtest_srv_dsa_key,
                                      mbedtls_gmtest_srv_dsa_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_gm_pk_parse_key(&ctx->gm_pkey_enc,
                                      (const unsigned char*)mbedtls_gmtest_srv_enc_key,
                                      mbedtls_gmtest_srv_enc_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }
    } else
#endif
    if ((suite_preset == SSL_PRESET_SUITE_GE) || (suite_preset == SSL_PRESET_SUITE_GE_V12)) {
        ret = mbedtls_x509_crt_parse(&ctx->crt, (const unsigned char*)mbedtls_test_srv_crt,
                                     mbedtls_test_srv_crt_len);
        if (ret != 0) {
            rt_kprintf("[fail] mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->crt, (const unsigned char*)mbedtls_test_cas_pem,
                                     mbedtls_test_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_pk_parse_key(&ctx->pkey, (const unsigned char*)mbedtls_test_srv_key,
                                   mbedtls_test_srv_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }
    } else {
        //ge tls
        ret = mbedtls_x509_crt_parse(&ctx->crt, (const unsigned char*)mbedtls_test_srv_crt,
                                     mbedtls_test_srv_crt_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->crt, (const unsigned char*)mbedtls_test_cas_pem,
                                     mbedtls_test_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_pk_parse_key(&ctx->pkey, (const unsigned char*)mbedtls_test_srv_key,
                                   mbedtls_test_srv_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }
#if defined(MBEDTLS_GMSSL)
        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_srv_crt_1,
                                     mbedtls_gmtest_srv_crt_len1);
        if (ret != 0) {
            rt_kprintf("[fail] mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_srv_crt_2,
                                     mbedtls_gmtest_srv_crt_len2);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_x509_crt_parse(&ctx->gm_crt, (const unsigned char*)mbedtls_gmtest_cas_pem,
                                     mbedtls_gmtest_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_gm_pk_parse_key(&ctx->gm_pkey_dsa,
                                      (const unsigned char*)mbedtls_gmtest_srv_dsa_key,
                                      mbedtls_gmtest_srv_dsa_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }

        ret = mbedtls_gm_pk_parse_key(&ctx->gm_pkey_enc,
                                      (const unsigned char*)mbedtls_gmtest_srv_enc_key,
                                      mbedtls_gmtest_srv_enc_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            goto exit;
        }
#endif
    }

#ifdef MBEDTLS_ERROR_C
    if (ret != 0) {
        char error_buf[100];
        mbedtls_strerror(ret, error_buf, 100);
        rt_kprintf("Last error was: %d - %s\n", ret, error_buf);
    }
#endif

    return ctx;

exit:
    tls_srv_destroy(ctx);

    return NULL;
}

int tls_srv_destroy(tls_srv_context *ctx)
{
    if (!ctx) {
        return RT_EOK;
    }
    mbedtls_net_free(&ctx->listen_fd);
    mbedtls_x509_crt_free(&ctx->crt);
    mbedtls_pk_free(&ctx->pkey);

#if defined(MBEDTLS_GMSSL)
    mbedtls_x509_crt_free(&ctx->gm_crt);
    mbedtls_pk_free(&ctx->gm_pkey_dsa);
    mbedtls_pk_free(&ctx->gm_pkey_enc);
#endif

#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_free(&ctx->cache);
#endif

    if (ctx->host)
        free(ctx->host);

    if (ctx->port)
        free(ctx->port);

    free(ctx);

    return RT_EOK;
}

int tls_srv_listen(tls_srv_context *ctx)
{
    int ret;

    /*
     * Setup the listening TCP socket
     */
    rt_kprintf("Bind on https://%s:%s/ ...\n", ctx->host, ctx->port);
    fflush(stdout);
    
    if ((ret = mbedtls_net_bind(&ctx->listen_fd, ctx->host, ctx->port, MBEDTLS_NET_PROTO_TCP)) != 0) {
        rt_kprintf("[fail]mbedtls_net_bind returned %d\n", ret);
        goto exit;
    }
    return ctx->listen_fd.fd;

exit:
    mbedtls_net_free(&ctx->listen_fd);

    return -RT_ERROR;
}

tls_srv_session* tls_srv_session_create(tls_srv_context *ctx)
{
    int ret;
    size_t ip_len;
    uint8 client_ip[16];
    tls_srv_session *session;

    if (!ctx) {
        return NULL;
    }

    session = (tls_srv_session*)malloc(sizeof(tls_srv_session));
    if (!session) {
        rt_kprintf("[fail]no memory for cli_session struct\n");
        return NULL;
    }

    rt_kprintf("Waiting for a remote connection ...\n");
    fflush(stdout);

    mbedtls_net_init(&session->cli_fd);
    if ((ret = mbedtls_net_accept(&ctx->listen_fd, &session->cli_fd, client_ip, sizeof(client_ip), &ip_len)) != 0) {
        rt_kprintf("[fail]mbedtls_net_accept returned %x\n", ret);
        goto exit;
    }

    session->host = (char*)malloc(ip_len);
    if (!session->host) {
        rt_kprintf("[fail]no memory for tls_cli_session->host struct\n");
        goto exit;
    }

    memcpy(session->host, client_ip, ip_len);
    session->port = NULL;

    return session;

exit:
    mbedtls_net_free(&session->cli_fd);
    tls_srv_session_destroy(session);
    return NULL;
}

int tls_srv_session_destroy(tls_srv_session *session)
{
    if (!session) {
        return RT_EOK;
    }

    mbedtls_net_free(&session->cli_fd);

    if (session->host)
        free(session->host);

    if (session->port)
        free(session->port);

    if (session) {
        free(session);
        session = RT_NULL;
    }

    return RT_EOK;
}

int tls_srv_session_init(tls_srv_context *ctx, tls_srv_session *session)
{
    if (!ctx || !session) {
        return -RT_ERROR;
    }

    session->suite_preset = ctx->suite_preset;
    session->srv_crt = &ctx->crt;
    session->pkey = &ctx->pkey;
#if defined(MBEDTLS_GMSSL)
    session->gm_srv_crt = &ctx->gm_crt;
    session->gm_pkey_dsa = &ctx->gm_pkey_dsa;
    session->gm_pkey_enc = &ctx->gm_pkey_enc;
#endif
#if defined(MBEDTLS_SSL_CACHE_C)
    session->cache = &ctx->cache;
#endif
    return RT_EOK;
}

int tls_srv_session_close(tls_srv_session *session)
{
    int ret;

    rt_kprintf("Closing the connection...\n");
    if (!session)
        return RT_EOK;

    if ((ret = mbedtls_ssl_close_notify(&session->ssl)) < 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
            rt_kprintf("[fail]mbedtls_ssl_close_notify returned %d\n", ret);
        }
    }
    mbedtls_ssl_session_reset(&session->ssl);
    mbedtls_ssl_free(&session->ssl);
    mbedtls_ssl_config_free(&session->conf);

    return RT_EOK;
}

int tls_srv_session_config(tls_srv_session *session)
{
    int ret;

    /*
     * Setup stuff
     */
    rt_kprintf("Setting up the SSL data....\n");
    fflush(stdout);
    
    mbedtls_ssl_config_init(&session->conf);

    if ((ret = mbedtls_ssl_config_defaults(&session->conf, MBEDTLS_SSL_IS_SERVER,
                                           MBEDTLS_SSL_TRANSPORT_STREAM,
                                           session->suite_preset)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_config_defaults returned %d\n", ret);
        return -RT_ERROR;
    }
    
    mbedtls_ssl_conf_rng(&session->conf, mbedtls_hardware_random, NULL);
    mbedtls_ssl_conf_dbg(&session->conf, my_debug, stdout);
    
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_conf_session_cache(&session->conf, session->cache, mbedtls_ssl_cache_get,
                                   mbedtls_ssl_cache_set);
#endif
    //Check the client certificate
    //mbedtls_ssl_conf_authmode(&session->conf, MBEDTLS_SSL_VERIFY_OPTIONAL);

#if defined(MBEDTLS_GMSSL)
    mbedtls_gmssl_conf_ca_chain(&session->conf, session->gm_srv_crt->next->next, NULL);
    if ((ret = mbedtls_gmssl_conf_own_cert(&session->conf, session->gm_srv_crt, session->gm_pkey_dsa)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
        return -RT_ERROR;
    }
   
    if ((ret = mbedtls_gmssl_conf_own_cert(&session->conf, session->gm_srv_crt->next,
                                           session->gm_pkey_enc))
        != 0) {
        rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
        return -RT_ERROR;
    }
#endif    
    mbedtls_ssl_conf_ca_chain(&session->conf, session->srv_crt->next, NULL);
    if ((ret = mbedtls_ssl_conf_own_cert(&session->conf, session->srv_crt, session->pkey)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
        return -RT_ERROR;
    }
    
    mbedtls_ssl_init(&session->ssl);
    
    if ((ret = mbedtls_ssl_setup(&session->ssl, &session->conf)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_setup returned %d\n", ret);
    }

    mbedtls_ssl_session_reset(&session->ssl);
    mbedtls_ssl_set_bio(&session->ssl, &session->cli_fd, mbedtls_net_send, mbedtls_net_recv, NULL);
    
    rt_kprintf("Performing the SSL/TLS handshake...\n");
    fflush(stdout);
    
    if ((ret = mbedtls_ssl_handshake(&session->ssl)) != 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
            rt_kprintf("[fail]mbedtls_ssl_handshake returned %d\n", ret);
            
            return -RT_ERROR;
        }
    }

    return RT_EOK;
}

int tls_srv_session_read(tls_srv_session *session, unsigned char *buf, size_t len)
{
    int read_count;

    if (!session || !buf)
        return -RT_ERROR;

    rt_kprintf("  < Read from client:\n");
    fflush(stdout);

    do {
        read_count = mbedtls_ssl_read(&session->ssl, buf, len);
        
        if (read_count == MBEDTLS_ERR_SSL_WANT_READ || read_count == MBEDTLS_ERR_SSL_WANT_WRITE)
            continue;
        
        if (read_count <= 0) {
            switch (read_count){
                case MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY:
                    rt_kprintf("The connection was closed gracefully\n");
                    break;

                case MBEDTLS_ERR_NET_CONN_RESET:
                    rt_kprintf("The connection was reset by peer\n");
                    break;

                default:
                    rt_kprintf("[ERROR] mbedtls_ssl_read returned -0x%x\n", -read_count);
                    break;
            }
            
            break;
        }
        
        rt_kprintf(" %d bytes read\n%s\n", read_count, (char*)buf);
        
        if (read_count > 0)
            break;
    } while (1);

    return read_count;
}

int tls_srv_session_write(tls_srv_session *session, const unsigned char *buf, size_t len)
{
    int ret;

    if (!session || !buf)
        return -RT_ERROR;

    rt_kprintf("  > Write to client:\n");
    fflush(stdout);

    ret = mbedtls_ssl_write(&session->ssl, buf, len);
    if (ret == MBEDTLS_ERR_NET_CONN_RESET) {
        rt_kprintf("[fail]peer closed the connection\n");
    }
    
    if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
        //rt_kprintf(" failed\n  ! mbedtls_ssl_write returned %d\n", ret);
    }

    rt_kprintf(" %ld bytes written\n%s\n", (long int)len, (char*)buf);

    return ret;
}
