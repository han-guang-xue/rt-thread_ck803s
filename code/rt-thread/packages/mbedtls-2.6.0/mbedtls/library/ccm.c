/*
 *  NIST SP800-38C compliant CCM implementation
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
 * Definition of CCM:
 * http://csrc.nist.gov/publications/nistpubs/800-38C/SP800-38C_updated-July20_2007.pdf
 * RFC 3610 "Counter with CBC-MAC (CCM)"
 *
 * Related:
 * RFC 5116 "An Interface and Algorithms for Authenticated Encryption"
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if (defined(MBEDTLS_CCM_C) && defined(MBEDTLS_CIPHER_MODE_CTR))

#if defined(MBEDTLS_AES_C)
#include "mbedtls/aes.h"
#endif

#if defined(MBEDTLS_SM4_C)
#include "mbedtls/sm4.h"
#endif

#include "mbedtls/ccm.h"

#include <string.h>
#include <drv_crypto.h>

#if defined(MBEDTLS_SELF_TEST) && defined(MBEDTLS_AES_C)
#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf printf
#endif /* MBEDTLS_PLATFORM_C */
#endif /* MBEDTLS_SELF_TEST && MBEDTLS_AES_C */

/* Implementation that should never be optimized out by the compiler */
static void mbedtls_zeroize( void *v, size_t n ) {
//    volatile unsigned char *p = (unsigned char*)v; while( n-- ) *p++ = 0;
    memset( v, 0, n);
}

#define CCM_ENCRYPT 0
#define CCM_DECRYPT 1

/*
 * Initialize context
 */
void mbedtls_ccm_init( mbedtls_ccm_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ccm_context ) );
}

static int mbedtls_internal_ccm_setkey( mbedtls_ccm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits,
                        const mbedtls_cipher_mode_t mode )
{
    int ret;
    const mbedtls_cipher_info_t *cipher_info;

    cipher_info = mbedtls_cipher_info_from_values( cipher, keybits, mode );
    if( cipher_info == NULL )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );

    if( cipher_info->block_size != 16 )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );

    mbedtls_cipher_free( &ctx->cipher_ctx );

    if( ( ret = mbedtls_cipher_setup( &ctx->cipher_ctx, cipher_info ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_cipher_setkey( &ctx->cipher_ctx, key, keybits,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        return( ret );
    }
    return 0;
}

int mbedtls_ccm_setkey( mbedtls_ccm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits )
{
    ctx->keybits = keybits;
    memcpy( ctx->key, key, keybits >> 3 );
    ctx->id = cipher;
    return mbedtls_internal_ccm_setkey( ctx, cipher, key, keybits, MBEDTLS_MODE_CTR);
}

/*
 * Free context
 */
void mbedtls_ccm_free( mbedtls_ccm_context *ctx )
{
    mbedtls_cipher_free( &ctx->cipher_ctx );
    mbedtls_zeroize( ctx, sizeof( mbedtls_ccm_context ) );
}

static void ccm_update_mac(mbedtls_ccm_context *ctx, const unsigned char *input,
                           size_t length, unsigned char *output,
                           unsigned char *iv, size_t iv_len)
{
#if defined(MBEDTLS_AES_C)
    if (ctx->id == MBEDTLS_CIPHER_ID_AES)
    {
        mbedtls_aes_crypt_ctr( ctx->cipher_ctx.cipher_ctx, length,
                               &ctx->cipher_ctx.unprocessed_len, iv,
                               ctx->cipher_ctx.unprocessed_data, input, output );
        ctx->cipher_ctx.unprocessed_len = 0;
        return;
    }
#endif

#if defined(MBEDTLS_SM4_C)
    if (ctx->id == MBEDTLS_CIPHER_ID_SM4)
    {
        mbedtls_sm4_crypt_ctr( ctx->cipher_ctx.cipher_ctx, length,
                               &ctx->cipher_ctx.unprocessed_len, iv,
                               ctx->cipher_ctx.unprocessed_data, input, output );
        ctx->cipher_ctx.unprocessed_len = 0;
        return;
    }
#endif
}

/*
 * Authenticated encryption or decryption
 */
static int ccm_auth_crypt( mbedtls_ccm_context *ctx, int mode, size_t length,
                           const unsigned char *iv, size_t iv_len,
                           const unsigned char *add, size_t add_len,
                           const unsigned char *input, unsigned char *output,
                           unsigned char *tag, size_t tag_len )
{
    unsigned char i;
        
    unsigned char q;
    size_t len_left;
    unsigned char b[16];
    unsigned char y[16];
    unsigned char ctr[16];
    unsigned char *src;
    unsigned char *dst;

    unsigned int  alg;
    unsigned char cmac_iv[16] = {0};
    cmac_ctx_t      cmac_ctx;

    /*
     * Check length requirements: SP800-38C A.1
     * Additional requirement: a < 2^16 - 2^8 to simplify the code.
     * 'length' checked later (when writing it to the first block)
     */
    if( tag_len < 4 || tag_len > 16 || tag_len % 2 != 0 )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );
    
    /* Also implies q is within bounds */
    if( iv_len < 7 || iv_len > 13 )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );
    
    if( add_len > 0xFF00 )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );
    
    q = 16 - 1 - (unsigned char) iv_len;
    
    /*
     * First block B_0:
     * 0        .. 0        flags
     * 1        .. iv_len   nonce (aka iv)
     * iv_len+1 .. 15       length
     *
     * With flags as (bits):
     * 7        0
     * 6        add present?
     * 5 .. 3   (t - 2) / 2
     * 2 .. 0   q - 1
     */
    b[0] = 0;
    b[0] |= ( add_len > 0 ) << 6;
    b[0] |= ( ( tag_len - 2 ) / 2 ) << 3;
    b[0] |= q - 1;
    
    memcpy( b + 1, iv, iv_len );
    
    for( i = 0, len_left = length; i < q; i++, len_left >>= 8 )
        b[15-i] = (unsigned char)( len_left & 0xFF );
    
    if( len_left > 0 )
        return( MBEDTLS_ERR_CCM_BAD_INPUT );
    
    /* init cmac */
    if (ctx->id == MBEDTLS_CIPHER_ID_AES)
    {
        alg = CMAC_AES;
    }
    else// SM4
    {
        alg = CMAC_SM4;
    }
    tih_cmac_init(&cmac_ctx, ctx->key, ctx->keybits >> 3, cmac_iv, 16, alg);
    
    /* Start CBC-MAC with first block */
    memset( y, 0, 16 );
    tih_cmac_update(&cmac_ctx, b, 16);
    
    /*
     * If there is additional data, update CBC-MAC with
     * add_len, add, 0 (padding to a block boundary)
     */
    if( add_len > 0 )
    {
        size_t use_len;
        len_left = add_len;
        src = (unsigned char *)add;
    
        memset( b, 0, 16 );
        b[0] = (unsigned char)( ( add_len >> 8 ) & 0xFF );
        b[1] = (unsigned char)( ( add_len      ) & 0xFF );
    
        use_len = len_left < 16 - 2 ? len_left : 16 - 2;
        memcpy( b + 2, src, use_len );
        len_left -= use_len;
        src += use_len;
    
        tih_cmac_update(&cmac_ctx, b, 16);
        while( len_left > 0 )
        {
            use_len = len_left > 16 ? 16 : len_left;
    
            memset( b, 0, 16 );
            memcpy( b, src, use_len );
            tih_cmac_update(&cmac_ctx, b, 16);
    
            len_left -= use_len;
            src += use_len;
        }
    }

    /*
     * Prepare counter block for encryption:
     * 0        .. 0        flags
     * 1        .. iv_len   nonce (aka iv)
     * iv_len+1 .. 15       counter (initially 1)
     *
     * With flags as (bits):
     * 7 .. 3   0
     * 2 .. 0   q - 1
     */
    ctr[0] = q - 1;
    memcpy( ctr + 1, iv, iv_len );
    memset( ctr + 1 + iv_len, 0, q );
    ctr[15] = 1;

    /*
     * Authenticate and {en,de}crypt the message.
     *
     * The only difference between encryption and decryption is
     * the respective order of authentication and {en,de}cryption.
     */
    src = (unsigned char *)input;
    dst = output;

    if( mode == CCM_ENCRYPT )
    {
        unsigned int size;
        if ( ( (uint32)src & 0x3 ) || (rt_hw_dtcm_addr_check( (uint32)src )) )
        {
            int l = length;
            unsigned char *p = src;

            l = length + (16 - (length % 16)) % 16;
            p = malloc(l);
            if(p)
            {
                memset(p, 0, l);
                memcpy(p, src, length);
            }
            else
            {
                return -1;
            }
            tih_cmac_update(&cmac_ctx, p, l);

            free(p);

        }
        else
        {
            int l = length;
            unsigned char *p = src;
            if((length % 16) != 0)
            {
                l = length + (16 - (length % 16));
                p = malloc(l);
                if(p)
                {
                    memset(p, 0, l);
                    memcpy(p, src, length);
                }
                else
                {
                    return -1;
                }
            }
            tih_cmac_update(&cmac_ctx, p, l);
            if(l != length)
            {
                free(p);
            }
        }
        tih_cmac_final(&cmac_ctx, y, &size);
    }

    ccm_update_mac( ctx, src, length, dst, ctr, 16 );

    if( mode == CCM_DECRYPT )
    {
        unsigned int size;
        if ( ( (uint32)dst & 0x3 ) || (rt_hw_dtcm_addr_check( (uint32)dst )) )
        {
            int l = length;
            unsigned char *p = dst;

            l = length + (16 - (length % 16)) % 16;
            p = malloc(l);
            if(p)
            {
                memset(p, 0, l);
                memcpy(p, dst, length);
            }
            else
            {
                return -1;
            }

            tih_cmac_update(&cmac_ctx, p, l);

            free(p);
        }
        else
        {
            int l = length;
            unsigned char *p = dst;
            if((length % 16) != 0)
            {
                l = length + (16 - (length % 16));
                p = malloc(l);
                if(p)
                {
                    memset(p,0,l);
                    memcpy(p,dst,length);
                }
                else
                {
                    return -1;
                }
            }
            tih_cmac_update(&cmac_ctx, p, l);
            if(l != length)
            {
                free(p);
            }
        }
        tih_cmac_final(&cmac_ctx, y, &size);
    }
    
    /*
     * Authentication: reset counter and crypt/mask internal tag
     */
    for( i = 0; i < q; i++ )
        ctr[15-i] = 0;

    ccm_update_mac( ctx, y, 16, y, ctr, 16 );
    memcpy( tag, y, tag_len );

    return( 0 );
}

/*
 * Authenticated encryption
 */
int mbedtls_ccm_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len )
{
    return( ccm_auth_crypt( ctx, CCM_ENCRYPT, length, iv, iv_len,
                            add, add_len, input, output, tag, tag_len ) );
}

/*
 * Authenticated decryption
 */
int mbedtls_ccm_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len )
{
    int ret;
    unsigned char check_tag[16];
    unsigned char i;
    int diff;

    if( ( ret = ccm_auth_crypt( ctx, CCM_DECRYPT, length,
                                iv, iv_len, add, add_len,
                                input, output, check_tag, tag_len ) ) != 0 )
    {
        return( ret );
    }

    /* Check tag in "constant-time" */
    for( diff = 0, i = 0; i < tag_len; i++ )
        diff |= tag[i] ^ check_tag[i];

    if( diff != 0 )
    {
        mbedtls_zeroize( output, length );
        return( MBEDTLS_ERR_CCM_AUTH_FAILED );
    }

    return( 0 );
}


#if defined(MBEDTLS_SELF_TEST) && defined(MBEDTLS_AES_C)
/*
 * Examples 1 to 3 from SP800-38C Appendix C
 */

#define NB_TESTS 3

/*
 * The data is the same for all tests, only the used length changes
 */
static const unsigned char key[] = {
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f
};

static const unsigned char iv[] = {
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
    0x18, 0x19, 0x1a, 0x1b
};

static const unsigned char ad[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
    0x10, 0x11, 0x12, 0x13
};

static const unsigned char msg[] = {
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
    0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
};

static const size_t iv_len [NB_TESTS] = { 7, 8,  12 };
static const size_t add_len[NB_TESTS] = { 8, 16, 20 };
static const size_t msg_len[NB_TESTS] = { 4, 16, 24 };
static const size_t tag_len[NB_TESTS] = { 4, 6,  8  };

static const unsigned char res[NB_TESTS][32] = {
    {   0x71, 0x62, 0x01, 0x5b, 0x4d, 0xac, 0x25, 0x5d },
    {   0xd2, 0xa1, 0xf0, 0xe0, 0x51, 0xea, 0x5f, 0x62,
        0x08, 0x1a, 0x77, 0x92, 0x07, 0x3d, 0x59, 0x3d,
        0x1f, 0xc6, 0x4f, 0xbf, 0xac, 0xcd },
    {   0xe3, 0xb2, 0x01, 0xa9, 0xf5, 0xb7, 0x1a, 0x7a,
        0x9b, 0x1c, 0xea, 0xec, 0xcd, 0x97, 0xe7, 0x0b,
        0x61, 0x76, 0xaa, 0xd9, 0xa4, 0x42, 0x8a, 0xa5,
        0x48, 0x43, 0x92, 0xfb, 0xc1, 0xb0, 0x99, 0x51 }
};

int mbedtls_ccm_self_test( int verbose )
{
    mbedtls_ccm_context ctx;
    unsigned char out[32];
    size_t i;
    int ret;

    mbedtls_ccm_init( &ctx );

    if( mbedtls_ccm_setkey( &ctx, MBEDTLS_CIPHER_ID_AES, key, 8 * sizeof key ) != 0 )
    {
        if( verbose != 0 )
            mbedtls_printf( "  CCM: setup failed" );

        return( 1 );
    }

    for( i = 0; i < NB_TESTS; i++ )
    {
        if( verbose != 0 )
            mbedtls_printf( "  CCM-AES #%u: ", (unsigned int) i + 1 );

        ret = mbedtls_ccm_encrypt_and_tag( &ctx, msg_len[i],
                                   iv, iv_len[i], ad, add_len[i],
                                   msg, out,
                                   out + msg_len[i], tag_len[i] );

        if( ret != 0 ||
            memcmp( out, res[i], msg_len[i] + tag_len[i] ) != 0 )
        {
            if( verbose != 0 )
                mbedtls_printf( "failed\n" );

            return( 1 );
        }

        ret = mbedtls_ccm_auth_decrypt( &ctx, msg_len[i],
                                iv, iv_len[i], ad, add_len[i],
                                res[i], out,
                                res[i] + msg_len[i], tag_len[i] );

        if( ret != 0 ||
            memcmp( out, msg, msg_len[i] ) != 0 )
        {
            if( verbose != 0 )
                mbedtls_printf( "failed\n" );

            return( 1 );
        }

        if( verbose != 0 )
            mbedtls_printf( "passed\n" );
    }

    mbedtls_ccm_free( &ctx );

    if( verbose != 0 )
        mbedtls_printf( "\n" );

    return( 0 );
}
//MSH_CMD_EXPORT(mbedtls_ccm_self_test,mbedtls_ccm_self_test);
#endif /* MBEDTLS_SELF_TEST && MBEDTLS_AES_C */

#endif /* MBEDTLS_CCM_C */
