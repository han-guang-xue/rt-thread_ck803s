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

#include <tls_client.h>
#include <tls_certificate.h>

#if !defined(MBEDTLS_CONFIG_FILE)
#include <mbedtls/config.h>
#else
#include MBEDTLS_CONFIG_FILE
#endif

#define rt_kprintf rt_kprintf("[tls]");rt_kprintf

#if defined(MBEDTLS_DEBUG_C)
#define DEBUG_LEVEL (10)
#endif

tls_cli_session* tls_cli_session_create(int8 *host, int8 *port, int32 buf_size)
{
    tls_cli_session *cli_session;

    if (!host || !port || (buf_size <= 0)) {
        return NULL;
    }

    cli_session = (tls_cli_session*)malloc(sizeof(tls_cli_session));
    if (!cli_session) {
        rt_kprintf("[fail]no memory for cli_session struct\n");
        return NULL;
    }

    cli_session->host = strdup((const char *)host);
    cli_session->port = strdup((const char *)port);

    cli_session->buf_size = buf_size;
    cli_session->buffer = malloc(buf_size);
    if (!cli_session->buffer) {
        rt_kprintf("[fail]no memory for tls_session->buffer malloc\n");
        tls_cli_session_destroy(cli_session);
        return NULL;
    }

    return cli_session;
}

int tls_cli_session_destroy(tls_cli_session *session)
{
    if (session->buffer)
        free(session->buffer);

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

int tls_cli_session_init(tls_cli_session *session, int suite_preset)
{
#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold((int)DEBUG_LEVEL);
#endif

    mbedtls_net_init(&session->srv_fd);
    mbedtls_ssl_init(&session->ssl);
    mbedtls_ssl_config_init(&session->conf);
    mbedtls_x509_crt_init(&session->crt);
    mbedtls_pk_init(&session->pkey);
#ifdef MBEDTLS_GMSSL
    mbedtls_x509_crt_init(&session->gm_crt);
    mbedtls_pk_init(&session->gm_pkey_enc);
    mbedtls_pk_init(&session->gm_pkey_dsa);
#endif
    session->suite_preset = suite_preset;
    rt_kprintf("mbedtls client struct init success...\n");
    return RT_EOK;
}

int tls_cli_session_close(tls_cli_session *session)
{
    mbedtls_ssl_close_notify(&session->ssl);
    mbedtls_net_free(&session->srv_fd);
    mbedtls_x509_crt_free(&session->crt);
    mbedtls_pk_free(&session->pkey);
#ifdef MBEDTLS_GMSSL
    mbedtls_x509_crt_free(&session->gm_crt);
    mbedtls_pk_free(&session->gm_pkey_enc);
    mbedtls_pk_free(&session->gm_pkey_dsa);
#endif
    mbedtls_ssl_config_free(&session->conf);
    mbedtls_ssl_free(&session->ssl);

    return RT_EOK;
}

int tls_cli_session_config(tls_cli_session *session)
{
    int ret = 0;

    if (!session) {
        return -RT_ERROR;
    }
    rt_kprintf("Loading the CA root certificate success...\n");
    if ((session->suite_preset == SSL_PRESET_SUITE_GE) || 
	    (session->suite_preset == SSL_PRESET_SUITE_GE_V12)) { // load TLS crt
        
        ret = mbedtls_x509_crt_parse(&session->crt, (const unsigned char*)mbedtls_test_srv_crt,
                                     mbedtls_test_srv_crt_len);
        if (ret != 0) {
            rt_kprintf("[fail] mbedtls_x509_crt_parse returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_x509_crt_parse(&session->crt, (const unsigned char*)mbedtls_test_cas_pem,
                                     mbedtls_test_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_pk_parse_key(&session->pkey, (const unsigned char*)mbedtls_test_srv_key,
                                   mbedtls_test_srv_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            return -RT_ERROR;
        }
    
    } else { // load GMSSL crt
#if defined(MBEDTLS_GMSSL)
        ret = mbedtls_x509_crt_parse(&session->gm_crt, (const unsigned char*)mbedtls_gmtest_cli_crt_dsa,
                                     mbedtls_gmtest_cli_crt_dsa_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_x509_crt_parse(&session->gm_crt, (const unsigned char*)mbedtls_gmtest_cli_crt_enc,
                                     mbedtls_gmtest_cli_crt_enc_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_x509_crt_parse(&session->gm_crt, (const unsigned char*)mbedtls_gmtest_cas_pem,
                                     mbedtls_gmtest_cas_pem_len);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_x509_crt_parse returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_gm_pk_parse_key(&session->gm_pkey_dsa,
                                      (const unsigned char*)mbedtls_gmtest_cli_dsa_key,
                                      mbedtls_gmtest_cli_dsa_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            return -RT_ERROR;
        }

        ret = mbedtls_gm_pk_parse_key(&session->gm_pkey_enc,
                                      (const unsigned char*)mbedtls_gmtest_cli_enc_key,
                                      mbedtls_gmtest_cli_enc_key_len, NULL, 0);
        if (ret != 0) {
            rt_kprintf("[fail]mbedtls_pk_parse_key returned %d\n", ret);
            return -RT_ERROR;
        }
#endif
    }

    /* Hostname set here should match CN in server certificate */
    if ((ret = mbedtls_ssl_set_hostname(&session->ssl, session->host)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_set_hostname err returned -0x%x\n", -ret);
        return ret;
    }

    if ((ret = mbedtls_ssl_config_defaults(&session->conf,
                                           MBEDTLS_SSL_IS_CLIENT,
                                           MBEDTLS_SSL_TRANSPORT_STREAM, session->suite_preset)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_config_defaults returned -0x%x\n", -ret);
        return ret;
    }

    mbedtls_ssl_conf_authmode(&session->conf, MBEDTLS_SSL_VERIFY_OPTIONAL);

    if ((session->suite_preset == SSL_PRESET_SUITE_GE) || 
	    (session->suite_preset == SSL_PRESET_SUITE_GE_V12)) { // load TLS crt
        mbedtls_ssl_conf_ca_chain(&session->conf, session->crt.next, NULL);
        if ((ret = mbedtls_ssl_conf_own_cert(&session->conf, &session->crt, &session->pkey)) != 0) {
            rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
            return -RT_ERROR;
        }
    } else {
#if defined(MBEDTLS_GMSSL)
        mbedtls_gmssl_conf_ca_chain(&session->conf, session->gm_crt.next->next, NULL);
        if ((ret = mbedtls_gmssl_conf_own_cert(&session->conf, &session->gm_crt, &session->gm_pkey_dsa)) != 0) {
            rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
            return -RT_ERROR;
        }
       
        if ((ret = mbedtls_gmssl_conf_own_cert(&session->conf, session->gm_crt.next,
                                               &session->gm_pkey_enc))
            != 0) {
            rt_kprintf("[fail]mbedtls_ssl_conf_own_cert returned %d\n", ret);
            return -RT_ERROR;
        }
#endif
    }

    /* load hardware random generator */
    mbedtls_ssl_conf_rng(&session->conf, mbedtls_hardware_random, NULL);

    if ((ret = mbedtls_ssl_setup(&session->ssl, &session->conf)) != 0) {
        rt_kprintf("[fail]mbedtls_ssl_setup returned -0x%x\n", -ret);
        return ret;
    }

    rt_kprintf("mbedtls client context init success...\n");
    return RT_EOK;
}

int tls_cli_session_connect(tls_cli_session *session)
{
    int ret = 0;

    if ((ret = mbedtls_net_connect(&session->srv_fd, session->host, session->port,
                                   MBEDTLS_NET_PROTO_TCP)) != 0) {
        rt_kprintf("[fail]mbedtls_net_connect err returned -0x%x\n", -ret);
        return ret;
    }

    rt_kprintf("Connected %s:%s success...\n", session->host, session->port);
    mbedtls_ssl_set_bio(&session->ssl, &session->srv_fd, mbedtls_net_send, mbedtls_net_recv, NULL);

    while ((ret = mbedtls_ssl_handshake(&session->ssl)) != 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
            rt_kprintf("[fail]mbedtls_ssl_handshake returned -0x%x\n", -ret);
            return ret;
        }
    }

    if ((ret = mbedtls_ssl_get_verify_result(&session->ssl)) != 0) {
        rt_kprintf("verify peer certificate fail....\n");
        memset(session->buffer, 0x00, session->buf_size);
        mbedtls_x509_crt_verify_info((char*)session->buffer, session->buf_size, "  ! ", ret);
        rt_kprintf("verification info: %s\n", session->buffer);
    } else {
        rt_kprintf("Certificate verified success...\n");
    }

    return RT_EOK;
}

int tls_cli_session_read(tls_cli_session *session, unsigned char *buf, size_t len)
{
    if (!session || !buf)
        return -RT_ERROR;

    return mbedtls_ssl_read(&session->ssl, buf, len);
}

int tls_cli_session_write(tls_cli_session *session, const unsigned char *buf, size_t len)
{
    if (!session || !buf)
        return -RT_ERROR;

    return mbedtls_ssl_write(&session->ssl, buf, len);
}
