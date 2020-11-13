/**
 * \file sm3.h
 *
 * \brief SM3 cryptographic hash function
 *
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
#ifndef MBEDTLS_SM3_H
#define MBEDTLS_SM3_H

#if !defined(MBEDTLS_CONFIG_FILE)
#include "config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#include <stddef.h>
#include <stdint.h>

#if !defined(MBEDTLS_SM3_ALT)

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \brief          SM3 context structure
 */
typedef struct
{
    uint32_t total[2];            /*!< number of bytes processed  */
    uint32_t state[8];            /*!< intermediate digest state  */
    unsigned char buffer[64];   /*!< data block being processed */
    int is_offload;              /* hardware offload support? */
}
mbedtls_sm3_context;

/**
 * \brief          Initialize SM3 context
 *
 * \param ctx      SM3 context to be initialized
 */
void mbedtls_sm3_init( mbedtls_sm3_context *ctx );

/**
 * \brief          Set is_offload(0:Software implementation 1:Hardware implementation)
 *
 * \param ctx      SM3 context to be initialized
 */
void mbedtls_sm3_set( mbedtls_sm3_context *ctx, bool is_offload );

/**
 * \brief          Clear SM3 context
 *
 * \param ctx      SM3 context to be cleared
 */
void mbedtls_sm3_free( mbedtls_sm3_context *ctx );

/**
 * \brief          Clone (the state of) a SM3 context
 *
 * \param dst      The destination context
 * \param src      The context to be cloned
 */
void mbedtls_sm3_clone( mbedtls_sm3_context *dst,
                           const mbedtls_sm3_context *src );

/**
 * \brief          SM3 context setup
 *
 * \param ctx      context to be initialized
 */
void mbedtls_sm3_starts( mbedtls_sm3_context *ctx);

/**
 * \brief          SM3 process buffer
 *
 * \param ctx      SM3 context
 * \param input    buffer holding the  data
 * \param ilen     length of the input data
 */
void mbedtls_sm3_update( mbedtls_sm3_context *ctx, const unsigned char *input,
                    size_t ilen );

/**
 * \brief          SM3 final digest
 *
 * \param ctx      SM3 context
 * \param output   SM3 checksum result
 */
void mbedtls_sm3_finish( mbedtls_sm3_context *ctx, unsigned char output[32] );

/* Internal use */
void mbedtls_sm3_process( mbedtls_sm3_context *ctx, const unsigned char data[64] );

#ifdef __cplusplus
}
#endif

#endif /* MBEDTLS_SM3_ALT */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \brief          Output = SM3( input buffer )
 *
 * \param input    buffer holding the  data
 * \param ilen     length of the input data
 * \param output   SM3 checksum result
 */
void mbedtls_sm3( const unsigned char *input, size_t ilen,
           unsigned char output[32]);

/**
 * \brief          Checkup routine
 *
 * \return         0 if successful, or 1 if the test failed
 */
int mbedtls_sm3_self_test( int verbose );

#ifdef __cplusplus
}
#endif

#endif /* mbedtls_sm3.h */
