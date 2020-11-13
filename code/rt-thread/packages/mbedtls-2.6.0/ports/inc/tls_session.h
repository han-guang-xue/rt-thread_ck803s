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

#ifndef MBEDTLS_SESSION_H
#define MBEDTLS_SESSION_H

#include <mbedtls/entropy_poll.h>
#include <mbedtls/entropy.h>
#include <mbedtls/ctr_drbg.h>
#include <mbedtls/certs.h>
#include <mbedtls/x509.h>
#include <mbedtls/ssl.h>
#include <mbedtls/ssl_cache.h>

#define SSL_PRESET_SUITE_GE             0  /* ALL TLS -> client/server preset */
#define SSL_PRESET_SUITE_GE_V12         2  /* TLS1.2  -> client/server preset */
#if defined(MBEDTLS_GMSSL)
#define SSL_PRESET_SUITE_GM             3  /* GMSSL   -> client/server preset */
#define SSL_PRESET_SUITE_GE_AND_GM      4  /* GMSSL + TLS    -> server preset */
#endif

typedef struct tls_cli_session {
    char *host;
    char *port;

    unsigned char *buffer;
    size_t buf_size;
    
    int suite_preset;     // Generic TLS, Specific TLS version, GMSSL
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_net_context srv_fd;
//    mbedtls_x509_crt ca_crt;
    mbedtls_x509_crt crt;
    mbedtls_pk_context pkey;
#if defined(MBEDTLS_GMSSL)
    mbedtls_x509_crt gm_crt;
    mbedtls_pk_context gm_pkey_enc;
    mbedtls_pk_context gm_pkey_dsa;
#endif
} tls_cli_session;

typedef struct tls_srv_session {
    char *host;
    char *port;

    int suite_preset;     // Generic TLS, Specific TLS version, GMSSL
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_net_context cli_fd;
    mbedtls_x509_crt *srv_crt;
    mbedtls_pk_context *pkey;

#if defined(MBEDTLS_GMSSL)
    mbedtls_x509_crt *gm_srv_crt;
    mbedtls_pk_context *gm_pkey_enc;
    mbedtls_pk_context *gm_pkey_dsa;
#endif

#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_context *cache;
#endif
} tls_srv_session;

typedef struct tls_srv_context {
    char *host;
    char *port;

    int suite_preset;     // Generic TLS, Specific TLS version, GMSSL
    mbedtls_net_context listen_fd;
    mbedtls_x509_crt crt;
    mbedtls_pk_context pkey;
#if defined(MBEDTLS_GMSSL)
    mbedtls_x509_crt gm_crt;
    mbedtls_pk_context gm_pkey_enc;
    mbedtls_pk_context gm_pkey_dsa;
#endif

#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_context cache;
#endif
} tls_srv_context;

#endif
