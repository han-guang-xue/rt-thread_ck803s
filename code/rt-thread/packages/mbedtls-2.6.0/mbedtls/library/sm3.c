/*
 *  FIPS-180-2 compliant SM3 implementation
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
/*
 *  The SM3 Secure Hash Standard was published by NIST in 2002.
 *
 *  http://csrc.nist.gov/publications/fips/fips180-2/fips180-2.pdf
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_SM3_C)

#include "mbedtls/sm3.h"

#include <string.h>

#if defined(MBEDTLS_SELF_TEST)
#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#include <stdlib.h>
#define mbedtls_printf printf
#define mbedtls_calloc    calloc
#define mbedtls_free       free
#endif /* MBEDTLS_PLATFORM_C */
#endif /* MBEDTLS_SELF_TEST */

#if !defined(MBEDTLS_SM3_ALT)

#include <drv_crypto.h>

/* Implementation that should never be optimized out by the compiler */
static void mbedtls_zeroize( void *v, size_t n ) {
    volatile unsigned char *p = v; while( n-- ) *p++ = 0;
}

/*
 * 32-bit integer manipulation macros (big endian)
 */
#ifndef GET_UINT32_BE
#define GET_UINT32_BE(n,b,i)                            \
do {                                                    \
    (n) = ( (uint32_t) (b)[(i)    ] << 24 )             \
        | ( (uint32_t) (b)[(i) + 1] << 16 )             \
        | ( (uint32_t) (b)[(i) + 2] <<  8 )             \
        | ( (uint32_t) (b)[(i) + 3]       );            \
} while( 0 )
#endif

#ifndef PUT_UINT32_BE
#define PUT_UINT32_BE(n,b,i)                            \
do {                                                    \
    (b)[(i)    ] = (unsigned char) ( (n) >> 24 );       \
    (b)[(i) + 1] = (unsigned char) ( (n) >> 16 );       \
    (b)[(i) + 2] = (unsigned char) ( (n) >>  8 );       \
    (b)[(i) + 3] = (unsigned char) ( (n)       );       \
} while( 0 )
#endif

void mbedtls_sm3_init( mbedtls_sm3_context *ctx )
{
    if( NULL == ctx )
        return;

    memset( ctx, 0, sizeof( mbedtls_sm3_context ) );
}

void mbedtls_sm3_set( mbedtls_sm3_context *ctx, bool is_offload )
{
    ctx->is_offload = is_offload;
}

void mbedtls_sm3_free( mbedtls_sm3_context *ctx )
{
    if( ctx == NULL )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_sm3_context ) );
}

void mbedtls_sm3_clone( mbedtls_sm3_context *dst, const mbedtls_sm3_context *src )
{
    *dst = *src;
}

/*
 * SM3 context setup
 */
void mbedtls_sm3_starts( mbedtls_sm3_context *ctx )
{
    if( ctx->is_offload == 0 )
    {
        ctx->total[0] = 0;
        ctx->total[1] = 0;

        ctx->state[0] = 0x7380166F;
        ctx->state[1] = 0x4914B2B9;
        ctx->state[2] = 0x172442D7;
        ctx->state[3] = 0xDA8A0600;
        ctx->state[4] = 0xA96F30BC;
        ctx->state[5] = 0x163138AA;
        ctx->state[6] = 0xE38DEE4D;
        ctx->state[7] = 0xB0FB0E4E;
    }
    else
    {
        tih_sm3_init();
    }
}

#define ROTATELEFT(X,n)  (((X)<<(n)) | ((X)>>(32-(n))))

#define P0(x) ((x) ^  ROTATELEFT((x),9)  ^ ROTATELEFT((x),17))
#define P1(x) ((x) ^  ROTATELEFT((x),15) ^ ROTATELEFT((x),23))

#define FF0(x,y,z) ( (x) ^ (y) ^ (z))
#define FF1(x,y,z) (((x) & (y)) | ( (x) & (z)) | ( (y) & (z)))

#define GG0(x,y,z) ( (x) ^ (y) ^ (z))
#define GG1(x,y,z) (((x) & (y)) | ( (~(x)) & (z)) )
#define cpu_to_be32(v) (((v)>>24) | (((v)>>8)&0xff00) | (((v)<<8)&0xff0000) | ((v)<<24))

void mbedtls_sm3_process( mbedtls_sm3_context *ctx, const unsigned char data[64] )
{
    int j;
    uint32_t W[68], W1[64];

    uint32_t A = ctx->state[0];
    uint32_t B = ctx->state[1];
    uint32_t C = ctx->state[2];
    uint32_t D = ctx->state[3];
    uint32_t E = ctx->state[4];
    uint32_t F = ctx->state[5];
    uint32_t G = ctx->state[6];
    uint32_t H = ctx->state[7];
    uint32_t SS1,SS2,TT1,TT2,T[64];

    for (j = 0; j < 16; j++)
    {
        GET_UINT32_BE( W[j], data, 4 * j );
    }
    for (j = 16; j < 68; j++)
    {
        W[j] = P1( W[j-16] ^ W[j-9] ^ ROTATELEFT(W[j-3],15)) ^ ROTATELEFT(W[j - 13],7 ) ^ W[j-6];;
    }
    for( j = 0; j < 64; j++) {
        W1[j] = W[j] ^ W[j+4];
    }

    for(j =0; j < 16; j++)
    {

        T[j] = 0x79CC4519;
        SS1 = ROTATELEFT((ROTATELEFT(A,12) + E + ROTATELEFT(T[j],j)), 7);
        SS2 = SS1 ^ ROTATELEFT(A,12);
        TT1 = FF0(A,B,C) + D + SS2 + W1[j];
        TT2 = GG0(E,F,G) + H + SS1 + W[j];
        D = C;
        C = ROTATELEFT(B,9);
        B = A;
        A = TT1;
        H = G;
        G = ROTATELEFT(F,19);
        F = E;
        E = P0(TT2);
    }

    for(j =16; j < 64; j++)
    {

        T[j] = 0x7A879D8A;
        SS1 = ROTATELEFT((ROTATELEFT(A,12) + E + ROTATELEFT(T[j],j%32)), 7);
        SS2 = SS1 ^ ROTATELEFT(A,12);
        TT1 = FF1(A,B,C) + D + SS2 + W1[j];
        TT2 = GG1(E,F,G) + H + SS1 + W[j];
        D = C;
        C = ROTATELEFT(B,9);
        B = A;
        A = TT1;
        H = G;
        G = ROTATELEFT(F,19);
        F = E;
        E = P0(TT2);
    }

    ctx->state[0] ^= A;
    ctx->state[1] ^= B;
    ctx->state[2] ^= C;
    ctx->state[3] ^= D;
    ctx->state[4] ^= E;
    ctx->state[5] ^= F;
    ctx->state[6] ^= G;
    ctx->state[7] ^= H;

}

/*
 * SM3 process buffer
 */
void mbedtls_sm3_update( mbedtls_sm3_context *ctx, const unsigned char *input,
                    size_t ilen )
{
    if ( ctx->is_offload == 0 )
    {
        size_t fill;
        uint32_t left;

        if( ilen == 0 )
            return;

        left = ctx->total[0] & 0x3F;
        fill = 64 - left;

        ctx->total[0] += (uint32_t) ilen;
        ctx->total[0] &= 0xFFFFFFFF;

        if( ctx->total[0] < (uint32_t) ilen )
            ctx->total[1]++;

        if( left && ilen >= fill )
        {
            memcpy( (void *) (ctx->buffer + left), input, fill );
            mbedtls_sm3_process( ctx, ctx->buffer );
            input += fill;
            ilen  -= fill;
            left = 0;
        }

        while( ilen >= 64 )
        {
            mbedtls_sm3_process( ctx, input );
            input += 64;
            ilen  -= 64;
        }

        if( ilen > 0 )
            memcpy( (void *) (ctx->buffer + left), input, ilen );
    }
    else
    {
        tih_sm3_update( (uint8 *)input, ilen );
    }
}

static const unsigned char sm3_padding[64] =
{
 0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
/*
 * SM3 final digest
 */
void mbedtls_sm3_finish( mbedtls_sm3_context *ctx, unsigned char output[32] )
{
    if( ctx->is_offload == 0 )
    {
        uint32_t last, padn;
        uint32_t high, low;
        unsigned char msglen[8];

        high = ( ctx->total[0] >> 29 )
             | ( ctx->total[1] <<  3 );
        low  = ( ctx->total[0] <<  3 );

        PUT_UINT32_BE( high, msglen, 0 );
        PUT_UINT32_BE( low,  msglen, 4 );

        last = ctx->total[0] & 0x3F;
        padn = ( last < 56 ) ? ( 56 - last ) : ( 120 - last );

        mbedtls_sm3_update( ctx, sm3_padding, padn );
        mbedtls_sm3_update( ctx, msglen, 8 );

        PUT_UINT32_BE( ctx->state[0], output,  0 );
        PUT_UINT32_BE( ctx->state[1], output,  4 );
        PUT_UINT32_BE( ctx->state[2], output,  8 );
        PUT_UINT32_BE( ctx->state[3], output, 12 );
        PUT_UINT32_BE( ctx->state[4], output, 16 );
        PUT_UINT32_BE( ctx->state[5], output, 20 );
        PUT_UINT32_BE( ctx->state[6], output, 24 );
        PUT_UINT32_BE( ctx->state[7], output, 28 );
    }
    else
    {
        tih_sm3_final( output );
    }
}

#endif /* !MBEDTLS_SM3_ALT */

/*
 * output = SM3( input buffer )
 */
void mbedtls_sm3( const unsigned char *input, size_t ilen,
             unsigned char output[32])
{
    mbedtls_sm3_context ctx;

    mbedtls_sm3_init( &ctx );
    mbedtls_sm3_set( &ctx, 1 );
    mbedtls_sm3_starts( &ctx );
    mbedtls_sm3_update( &ctx, input, ilen );
    mbedtls_sm3_finish( &ctx, output );
    mbedtls_sm3_free( &ctx );
}

#if defined(MBEDTLS_SELF_TEST)
/*
 * FIPS-180-1 test vectors
 */
static const unsigned char sm3_test_buf[3][57] =
{
    { "abc" },
    { "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" },
    { "" }
};

static const int sm3_test_buflen[3] =
{
    3, 56, 1000
};

static const unsigned char sm3_test_sum[3][20] =
{
    { 0x66, 0xc7, 0xf0, 0xf4,  0x62, 0xee, 0xed, 0xd9,  0xd1, 0xf2,
      0xd4, 0x6b,  0xdc, 0x10, 0xe4, 0xe2,  0x41, 0x67, 0xc4, 0x87 },
      
    { 0X63, 0X9b, 0X6c, 0Xc5,  0Xe6, 0X4d, 0X9e, 0X37,  0Xa3, 0X90,
      0Xb1, 0X92,  0Xdf, 0X4f, 0Xa1, 0Xea,  0X07, 0X20, 0Xab, 0X74 },
      
    { 0xc8, 0xaa, 0xf8, 0x94,  0x29, 0x55, 0x40, 0x29,  0xe2, 0x31,
      0x94, 0x1a,  0x2a, 0xcc, 0x0a, 0xd6,  0x1f, 0xf2, 0xa5, 0xac }
};

/*
 * Checkup routine
 */
int mbedtls_sm3_self_test( int verbose )
{
    int i, j, buflen, ret = 0;
    unsigned char buf[1024];
    unsigned char sm3sum[32];
    mbedtls_sm3_context ctx;

    mbedtls_sm3_init( &ctx );
    mbedtls_sm3_set(&ctx, 1);
    /*
     * SM3
     */
    for( i = 0; i < 3; i++ )
    {
        if( verbose != 0 )
            mbedtls_printf( "  SM3 test #%d: ", i + 1 );

        mbedtls_sm3_starts( &ctx );

        if( i == 2 )
        {
            memset( buf, 'a', buflen = 1000 );

            for( j = 0; j < 1000; j++ )
            {
                mbedtls_sm3_update( &ctx, buf, buflen );
            }
        }
        else
        {
            mbedtls_sm3_update( &ctx, sm3_test_buf[i],
                               sm3_test_buflen[i] );
        }

        mbedtls_sm3_finish( &ctx, sm3sum );

        if( memcmp( sm3sum, sm3_test_sum[i], 20 ) != 0 )
        {
            if( verbose != 0 )
                mbedtls_printf( "failed\n" );

            ret = 1;
            goto exit;
        }

        if( verbose != 0 )
            mbedtls_printf( "passed\n" );
    }

    if( verbose != 0 )
        mbedtls_printf( "\n" );

exit:
    mbedtls_sm3_free( &ctx );

    return( ret );
}
//MSH_CMD_EXPORT(mbedtls_sm3_self_test,mbedtls_sm3_self_test);
#endif /* MBEDTLS_SELF_TEST */


#endif /* MBEDTLS_SM3_C */
