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
 
#ifndef MBEDTLS_SERVER_H
#define MBEDTLS_SERVER_H

#include <mbedtls/platform.h>
#include <mbedtls/net.h>
#include <mbedtls/debug.h>
#include <tls_session.h>
 
tls_srv_context* tls_srv_create(int8 *bind_host, int8 *bind_port, int suite_preset);
int tls_srv_destroy(tls_srv_context *ctx);
int tls_srv_listen(tls_srv_context *ctx);
tls_srv_session* tls_srv_session_create(tls_srv_context *ctx);
int tls_srv_session_destroy(tls_srv_session *session);
int tls_srv_session_init(tls_srv_context *ctx, tls_srv_session *session);
int tls_srv_session_close(tls_srv_session *session);
int tls_srv_session_config(tls_srv_session *session);
int tls_srv_session_read(tls_srv_session *session, unsigned char *buf, size_t len);
int tls_srv_session_write(tls_srv_session *session, const unsigned char *buf, size_t len);

 #endif
