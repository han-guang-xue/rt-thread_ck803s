/*
 *  FIPS-197 compliant SM4 implementation
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
 *  The SM4 block cipher was designed by Vincent Rijmen and Joan Daemen.
 *
 *  http://csrc.nist.gov/encryption/sm4/rijndael/Rijndael.pdf
 *  http://csrc.nist.gov/publications/fips/fips197/fips-197.pdf
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_SM4_C)

#include <string.h>

#include "mbedtls/sm4.h"
#include <drv_crypto.h>

#if defined(MBEDTLS_SELF_TEST)
#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf printf
#endif /* MBEDTLS_PLATFORM_C */
#endif /* MBEDTLS_SELF_TEST */

#if !defined(MBEDTLS_SM4_ALT)

#define BUFFER_SIZE 16

/* Implementation that should never be optimized out by the compiler */
static void mbedtls_zeroize( void *v, size_t n ) {
    volatile unsigned char *p = (unsigned char*)v; while( n-- ) *p++ = 0;
}

void mbedtls_sm4_init( mbedtls_sm4_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_sm4_context ) );
}

void mbedtls_sm4_free( mbedtls_sm4_context *ctx )
{
    if( ctx == NULL )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_sm4_context ) );
}

/*
 * SM4 key schedule (encryption)
 */

int mbedtls_sm4_setkey_enc( mbedtls_sm4_context *ctx, const unsigned char *key,
                    unsigned int keybits )
{
    if( NULL == ctx )
        return -1;
    if( keybits == 128||keybits == 256 )
    {
        ctx->keybytes = keybits >> 3;
        memcpy( ctx->key, key, ctx->keybytes );
    }
    else
    {
        return (MBEDTLS_ERR_SM4_INVALID_INPUT_LENGTH);
    }
    return 0;
}

/*
 * SM4 key schedule (decryption)
 */
int mbedtls_sm4_setkey_dec( mbedtls_sm4_context *ctx, const unsigned char *key,
                    unsigned int keybits )
{
    return mbedtls_sm4_setkey_enc( ctx, key, keybits );
}

/*
 * SM4-ECB block encryption/decryption
 */
int mbedtls_sm4_crypt_ecb( mbedtls_sm4_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int ret;
    if( ( (uint32)output & 0x03 ) || ( (uint32)input & 0x03 ) ||
                    ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                    ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {
        unsigned char in[16];
        unsigned char out[16];

        memcpy( in, input, 16 );
        ret = tih_sm4_crypt( in, out, 16, ctx->key, !mode, 0x00, NULL );
        memcpy( output, out, 16 );
    }
    else
    {
        ret = tih_sm4_crypt( (uint8 *)input, output, 16, ctx->key, !mode, 0x00, NULL );
    }
    return ret;
}

#if defined(MBEDTLS_CIPHER_MODE_CBC)
/*
 * SM4-CBC buffer encryption/decryption
 */
int mbedtls_sm4_crypt_cbc( mbedtls_sm4_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output )
{
    int ret = 0;
    unsigned char iv_t[16];
    
    int out_offset = 4 - ((uint32)output & 0x3);
    if( mode == MBEDTLS_SM4_DECRYPT )
        memcpy( iv_t, input + length - 16, 16 );
    
    if( ( (uint32)input & 0x3 ) || ( (uint32)output & 0x3 ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {

        unsigned char in_t[BUFFER_SIZE];
        unsigned char out_t[BUFFER_SIZE];

        int len = (length <= BUFFER_SIZE) ? length : BUFFER_SIZE;

        memcpy( in_t, input, len );

        ret = tih_sm4_crypt(in_t, out_t, len, ctx->key, !mode, 0x01, iv);
        
        len = length - len;

        if( len > 0 )
        {
            memcpy( output + out_offset, input + BUFFER_SIZE, len );
            if( mode == MBEDTLS_SM4_DECRYPT )
                ret = tih_sm4_crypt( output + out_offset, output + out_offset, len, ctx->key, !mode, 0x01, in_t );
            else
                ret = tih_sm4_crypt( output + out_offset, output + out_offset, len, ctx->key, !mode, 0x01, out_t );
            memmove(output + BUFFER_SIZE, output + out_offset,len );
            memcpy( output, out_t, BUFFER_SIZE );
        }
        else
        {
            memcpy( output, out_t, length );
        }

    }
    else
    {
        ret = tih_sm4_crypt( (uint8 *)input, output, length, ctx->key,  !mode, 0x01, iv );
    }
    if( mode == MBEDTLS_SM4_DECRYPT )
        memcpy( iv, iv_t, 16 );
    else
        memcpy( iv, output + length - 16, 16 );

    return( ret );
}
#endif /* MBEDTLS_CIPHER_MODE_CBC */

#if defined(MBEDTLS_CIPHER_MODE_CFB)
static int _mbedtls_sm4_crypt_cfb128( mbedtls_sm4_context *ctx,
                       int mode,
                       size_t length,
                       /*size_t *iv_off,*/
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int ret = 0;
    unsigned char iv_t[16];

    int out_offset = 4 - ((uint32)output & 0x3);
    if( mode == MBEDTLS_SM4_DECRYPT )
        memcpy( iv_t, input + length - 16, 16 );

    if( ( (uint32)input & 0x3 ) || ( (uint32)output & 0x3 ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {

        unsigned char in_t[BUFFER_SIZE];
        unsigned char out_t[BUFFER_SIZE];

        int len = (length <= BUFFER_SIZE) ? length : BUFFER_SIZE;

        memcpy( in_t, input, len );

        ret = tih_sm4_crypt(in_t, out_t, len, ctx->key, !mode, 0x02, iv);
        
        len = length - len;

        if( len > 0 )
        {
            memcpy( output + out_offset, input + BUFFER_SIZE, len );
            if( mode == MBEDTLS_SM4_DECRYPT )
                ret = tih_sm4_crypt( output + out_offset, output + out_offset, len, ctx->key, !mode, 0x02, in_t + BUFFER_SIZE - 16 );
            else
                ret = tih_sm4_crypt( output + out_offset, output + out_offset, len, ctx->key,  !mode, 0x02, out_t + BUFFER_SIZE - 16 );
            memmove(output + BUFFER_SIZE, output + out_offset,len );
            memcpy( output, out_t, BUFFER_SIZE );
        }
        else
        {
            memcpy( output, out_t, len );
        }

    }
    else
    {
        ret = tih_sm4_crypt( (uint8 *)input, output, length, ctx->key, !mode, 0x02, iv );
    }

    if( mode == MBEDTLS_SM4_DECRYPT )
        memcpy( iv, iv_t, 16 );
    else
        memcpy( iv, output + length - 16, 16 );

    return (ret);
}


/*
 * SM4-CFB128 buffer encryption/decryption
 */

int mbedtls_sm4_crypt_cfb128( mbedtls_sm4_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int ret = 0;
    unsigned char c;
    size_t n = *iv_off;

    if( mode == MBEDTLS_SM4_DECRYPT )
    {
        while( length-- )
        {
            if( n == 0 )
            {
                int len = (length + 1) % 16;
                len = length + 1 - len;

                ret = _mbedtls_sm4_crypt_cfb128( ctx, mode, len, iv, input, output );
                length = length +1 - len;
                input += len;
                output += len;
                
                if( length > 0 )
                {
                    mbedtls_sm4_crypt_ecb( ctx, MBEDTLS_SM4_ENCRYPT, iv, iv );
                    length--;
                }
                else
                    break;
            }

            c = *input++;
            *output++ = (unsigned char)( c ^ iv[n] );
            iv[n] = (unsigned char) c;
            n = ( n + 1 ) & 0x0F;
        }
    }
    else
    {
        while( length-- )
        {
            if( n == 0 )
            {
                int len = ( length + 1 ) % 16;
                len = length + 1 - len;

                ret = _mbedtls_sm4_crypt_cfb128( ctx, mode, len, iv, input, output );
                length = length + 1 - len;
                input += len;
                output += len;
                if( length > 0 )
                {
                    mbedtls_sm4_crypt_ecb( ctx, MBEDTLS_SM4_ENCRYPT, iv, iv );
                    length--;
                }
                else
                    break;
            }

            iv[n] = *output++ = (unsigned char)( iv[n] ^ *input++ );

            n = ( n + 1 ) & 0x0F;
        }
    }

    *iv_off = n;

    return( ret );

}


    
/*
 * SM4-CFB8 buffer encryption/decryption
 */
int mbedtls_sm4_crypt_cfb8( mbedtls_sm4_context *ctx,
                           int mode,
                           size_t length,
                           unsigned char iv[16],
                           const unsigned char *input,
                           unsigned char *output )
    {
        unsigned char c;
        unsigned char ov[17];
    
        while( length-- )
        {
            memcpy( ov, iv, 16 );
            mbedtls_sm4_crypt_ecb( ctx, MBEDTLS_SM4_ENCRYPT, iv, iv );
    
            if( mode == MBEDTLS_SM4_DECRYPT )
                ov[16] = *input;
    
            c = *output++ = (unsigned char)( iv[0] ^ *input++ );
    
            if( mode == MBEDTLS_SM4_ENCRYPT )
                ov[16] = c;
    
            memcpy( iv, ov + 1, 16 );
        }
    
        return( 0 );
    }


#endif /*MBEDTLS_CIPHER_MODE_CFB */

#if defined(MBEDTLS_CIPHER_MODE_OFB)
/*
 * SM4-OFB buffer encryption/decryption
 * not support by low-level crypto lib
 */
 
int mbedtls_sm4_crypt_ofb( mbedtls_sm4_context *ctx,
                       int mode,
                       size_t length,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    unsigned char iiv[16];

    memcpy( iiv, iv, 16 );
    int flag = ( (uint32)input & 0x03 ) || ( (uint32)output & 0x03 ) ||
                          ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                          ( rt_hw_dtcm_addr_check( (uint32)output ) );

    if( flag )
    {

        int  i;
        
        while( length )
        {
            mbedtls_sm4_crypt_ecb( ctx, MBEDTLS_SM4_ENCRYPT, iiv, iiv );
        
            for( i = 0; i < 16; i++ )
            {
                *output++ = (unsigned char)( (*input++) ^ iiv[i] );
            }
            length -= 16;
        }
        
        return( 0 );

    }
    else
    {
        return (int)tih_sm4_crypt( (uint8 *)input, output, length, ctx->key, !mode, 0x03, iiv );
    }
}

#endif /*MBEDTLS_CIPHER_MODE_OFB */


#if defined(MBEDTLS_CIPHER_MODE_CTR)
/*
 * SM4-CTR buffer encryption/decryption
 */
int _mbedtls_sm4_crypt_ctr( mbedtls_sm4_context *ctx,
                       size_t length,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int ret = 0;
    int i = 0;
    unsigned int step = 1;

    int out_offset = 4 - ( (uint32)output & 0x3 );
    out_offset = out_offset % 4;

    if( ( (uint32)input & 0x3 ) || ( (uint32)output & 0x3 ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {

        unsigned char in_t[16];
        unsigned char out_t[16];

        int len = (length <= 16) ? length : 16;

        memcpy( in_t, input, len );

        ret = tih_sm4_crypt_ctr(in_t, out_t, len, ctx->key, 0x00, 0x04, nonce_counter, step );
        for( i = 16; i > 0; i-- )
            if( ++nonce_counter[i - 1] != 0 )
                break;

        if( length - len > 0 )
        {
            len = length - len;
            memcpy( output + out_offset, input + 16, len );

            ret = tih_sm4_crypt_ctr( output + out_offset, output + out_offset, len, ctx->key, 0x00, 0x04, nonce_counter, step );

            memmove(output + 16, output + out_offset,len );
            memcpy( output, out_t, 16 );

            int cnt = len>>4;
            int k = 0;
            for ( k = 0; k < cnt;k++ )
            {
                for( i = 16; i > 0; i-- )
                    if( ++nonce_counter[i - 1] != 0 )
                        break;
            }
        }
        else
        {
            memcpy( output, out_t, len );
        }

    }
    else
    {
        ret = tih_sm4_crypt_ctr( (uint8 *)input, output, length, ctx->key, 0x00, 0x04, nonce_counter, step );

        int cnt = length>>4;
        int k = 0;
        for ( k = 0; k < cnt;k++ )
        {
            for( i = 16; i > 0; i-- )
                if( ++nonce_counter[i - 1] != 0 )
                    break;
        }
    }

    return (ret);

}

/*
 * AES-CTR buffer encryption/decryption
 */
int mbedtls_sm4_crypt_ctr( mbedtls_sm4_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int ret, c, i;
    size_t n = *nc_off;

    ret = 0;
    if( n == 0 )
    {
        
        int len = length % 16;
        len = length - len;

        if (len > 0)
        {
            ret = _mbedtls_sm4_crypt_ctr( ctx, len, nonce_counter, stream_block, input, output );
            length = length - len;
            input += len;
            output += len;
        }
    }

    while( length-- )
    {
        if( n == 0 )
        {

            ret = mbedtls_sm4_crypt_ecb( ctx, MBEDTLS_SM4_ENCRYPT, nonce_counter, stream_block );

            for( i = 16; i > 0; i-- )
                if( ++nonce_counter[i - 1] != 0 )
                    break;
        }

        c = *input++;
        *output++ = (unsigned char)( c ^ stream_block[n] );

        n = ( n + 1 ) & 0x0F;
    }

    *nc_off = n;

    return( ret );
}
#endif /* MBEDTLS_CIPHER_MODE_CTR */

#endif /* !MBEDTLS_SM4_ALT */

#if defined(MBEDTLS_SELF_TEST)
/*
 * SM4 test vectors from:
 *
 * http://csrc.nist.gov/archive/sm4/rijndael/rijndael-vals.zip
 */
static const unsigned char sm4_test_ecb_dec[3][16] =
{
    { 0xe1, 0x17, 0xfe, 0x4c, 0x7b, 0x27, 0x34, 0xc3,
      0x73, 0x81, 0xcc, 0xa9, 0xc0, 0x37, 0x2c, 0x68 },
    { 0x48, 0xE3, 0x1E, 0x9E, 0x25, 0x67, 0x18, 0xF2,
      0x92, 0x29, 0x31, 0x9C, 0x19, 0xF1, 0x5B, 0xA4 },
    { 0xe1, 0x17, 0xfe, 0x4c, 0x7b, 0x27, 0x34, 0xc3,
      0x73, 0x81, 0xcc, 0xa9, 0xc0, 0x37, 0x2c, 0x68 }
};

static const unsigned char sm4_test_ecb_enc[3][16] =
{
    { 0x9f, 0x1f, 0x7b, 0xff, 0x6f, 0x55, 0x11, 0x38,
      0x4d, 0x94, 0x30, 0x53, 0x1e, 0x53, 0x8f, 0xd3 },
    { 0xF3, 0xF6, 0x75, 0x2A, 0xE8, 0xD7, 0x83, 0x11,
      0x38, 0xF0, 0x41, 0x56, 0x06, 0x31, 0xB1, 0x14 },
    { 0x9f, 0x1f, 0x7b, 0xff, 0x6f, 0x55, 0x11, 0x38,
      0x4d, 0x94, 0x30, 0x53, 0x1e, 0x53, 0x8f, 0xd3 }
};

#if defined(MBEDTLS_CIPHER_MODE_CBC)
static const unsigned char sm4_test_cbc_dec[3][16] =
{
    { 0x27, 0x17, 0x0e, 0x86, 0x9a, 0x04, 0xcc, 0xc5,
      0x78, 0x29, 0xa1, 0x28, 0xf1, 0x27, 0x8c, 0x23 },
    { 0x5D, 0xF6, 0x78, 0xDD, 0x17, 0xBA, 0x4E, 0x75,
      0xB6, 0x17, 0x68, 0xC6, 0xAD, 0xEF, 0x7C, 0x7B },
    { 0x27, 0x17, 0x0e, 0x86, 0x9a, 0x04, 0xcc, 0xc5,
      0x78, 0x29, 0xa1, 0x28, 0xf1, 0x27, 0x8c, 0x23 }
};

static const unsigned char sm4_test_cbc_enc[3][16] =
{
    { 0xee, 0xd7, 0xc3, 0x05, 0x7b, 0x17, 0x2a, 0xf7,
      0xcf, 0x9a, 0xd8, 0x06, 0x32, 0x36, 0xf4, 0x78 },
    { 0x7B, 0xD9, 0x66, 0xD5, 0x3A, 0xD8, 0xC1, 0xBB,
      0x85, 0xD2, 0xAD, 0xFA, 0xE8, 0x7B, 0xB1, 0x04 },
    { 0xee, 0xd7, 0xc3, 0x05, 0x7b, 0x17, 0x2a, 0xf7,
      0xcf, 0x9a, 0xd8, 0x06, 0x32, 0x36, 0xf4, 0x78 }
};
#endif /* MBEDTLS_CIPHER_MODE_CBC */

#if defined(MBEDTLS_CIPHER_MODE_CFB)
/*
 * SM4-CFB128 test vectors from:
 *
 * http://csrc.nist.gov/publications/nistpubs/800-38a/sp800-38a.pdf
 */
static const unsigned char sm4_test_cfb128_key[3][32] =
{
    { 0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
      0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C },
    { 0x8E, 0x73, 0xB0, 0xF7, 0xDA, 0x0E, 0x64, 0x52,
      0xC8, 0x10, 0xF3, 0x2B, 0x80, 0x90, 0x79, 0xE5,
      0x62, 0xF8, 0xEA, 0xD2, 0x52, 0x2C, 0x6B, 0x7B },
    { 0x60, 0x3D, 0xEB, 0x10, 0x15, 0xCA, 0x71, 0xBE,
      0x2B, 0x73, 0xAE, 0xF0, 0x85, 0x7D, 0x77, 0x81,
      0x1F, 0x35, 0x2C, 0x07, 0x3B, 0x61, 0x08, 0xD7,
      0x2D, 0x98, 0x10, 0xA3, 0x09, 0x14, 0xDF, 0xF4 }
};

static const unsigned char sm4_test_cfb128_iv[16] =
{
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
};

static const unsigned char sm4_test_cfb128_pt[64] =
{
    0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
    0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a, 
    0xae, 0x2d, 0x8a, 0x57, 0x1e, 0x03, 0xac, 0x9c, 
    0x9e, 0xb7, 0x6f, 0xac, 0x45, 0xaf, 0x8e, 0x51, 
    0x30, 0xc8, 0x1c, 0x46, 0xa3, 0x5c, 0xe4, 0x11, 
    0xe5, 0xfb, 0xc1, 0x19, 0x1a, 0x0a, 0x52, 0xef, 
    0xf6, 0x9f, 0x24, 0x45, 0xdf, 0x4f, 0x9b, 0x17, 
    0xad, 0x2b, 0x41, 0x7b, 0xe6, 0x6c, 0x37, 0x10
};

static const unsigned char sm4_test_cfb128_ct[3][64] =
{
    { 0xbc, 0x71, 0x0d, 0x76, 0x2d, 0x07, 0x0b, 0x26,
      0x36, 0x1d, 0xa8, 0x2b, 0x54, 0x56, 0x5e, 0x46,
      0xa4, 0xcd, 0x42, 0x78, 0x6a, 0x3a, 0x52, 0x93,
      0xa3, 0xc6, 0xcb, 0xc1, 0x23, 0xf0, 0xb3, 0x54,
      0x40, 0x70, 0x55, 0xb1, 0xc1, 0xa5, 0xd9, 0x98,
      0x2c, 0x18, 0x7d, 0x5c, 0x3e, 0xe0, 0xce, 0xd8,
      0x4b, 0x82, 0xc4, 0x0f, 0x2f, 0x0a, 0x4e, 0x03,
      0x41, 0x79, 0x7f, 0x1f, 0x30, 0x7b, 0x80, 0x47, },
    { 0xCD, 0xC8, 0x0D, 0x6F, 0xDD, 0xF1, 0x8C, 0xAB,
      0x34, 0xC2, 0x59, 0x09, 0xC9, 0x9A, 0x41, 0x74,
      0x67, 0xCE, 0x7F, 0x7F, 0x81, 0x17, 0x36, 0x21,
      0x96, 0x1A, 0x2B, 0x70, 0x17, 0x1D, 0x3D, 0x7A,
      0x2E, 0x1E, 0x8A, 0x1D, 0xD5, 0x9B, 0x88, 0xB1,
      0xC8, 0xE6, 0x0F, 0xED, 0x1E, 0xFA, 0xC4, 0xC9,
      0xC0, 0x5F, 0x9F, 0x9C, 0xA9, 0x83, 0x4F, 0xA0,
      0x42, 0xAE, 0x8F, 0xBA, 0x58, 0x4B, 0x09, 0xFF },
    { 0xf0, 0x90, 0x48, 0x2e, 0xa1, 0x46, 0xbf, 0x8a,
      0xcb, 0x6b, 0x12, 0x31, 0x2c, 0xa0, 0x06, 0x71,
      0x7e, 0xcd, 0x83, 0x2e, 0xe3, 0xab, 0xd4, 0x08,
      0x85, 0x62, 0x53, 0x34, 0xd4, 0xeb, 0x20, 0x67,
      0x7c, 0xdc, 0x4c, 0xc4, 0x75, 0x24, 0x1e, 0xee,
      0x11, 0x85, 0xb4, 0x68, 0x4c, 0x75, 0xd6, 0xd7,
      0x80, 0x02, 0xe1, 0xf1, 0x7a, 0x69, 0x19, 0xb2, 
      0x62, 0x43, 0x9d, 0xec, 0x75, 0xdf, 0xa7, 0x41 }
};
#endif /* MBEDTLS_CIPHER_MODE_CFB */

#if defined(MBEDTLS_CIPHER_MODE_OFB)

const unsigned char ofb_iv[16] =
{  0x11, 0x11, 0x22, 0x22, 0x33, 0x33, 0x44, 0x44,
  0x55, 0x55, 0x66, 0x66, 0xAA, 0xAA, 0xBB, 0xBB};
  
const unsigned char ofb_enc[64] =
{
   0x11, 0x11, 0x22, 0x22, 0x33, 0x33, 0x44, 0x44, 
   0x55, 0x55, 0x66, 0x66, 0x77, 0x77, 0x88, 0x88, 
   0x99, 0x99, 0x00, 0x00, 0xAA, 0xAA, 0xBB, 0xBB, 
   0xCC, 0xCC, 0xDD, 0xDD, 0xEE, 0xEE, 0xFF, 0xFF, 
   0xFF, 0xFF, 0xEE, 0xEE, 0xDD, 0xDD, 0xCC, 0xCC,
   0xBB, 0xBB, 0xAA, 0xAA, 0x00, 0x00, 0x99, 0x99,
   0x88, 0x88, 0x77, 0x77, 0x66, 0x66, 0x55, 0x55,
   0x44, 0x44, 0x33, 0x33, 0x22, 0x22, 0x11, 0x11 
};

const unsigned char ofb_dec[64] = 
{
    0xBA, 0x19, 0x5A, 0x88, 0xAD, 0x87, 0xCF, 0x59, 
    0x8D, 0x88, 0x3F, 0xD7, 0xE7, 0xA1, 0xB3, 0x07,
    0xA8, 0xBE, 0x81, 0xA4, 0x91, 0x84, 0x82, 0x80,
    0x65, 0xA2, 0x30, 0xF2, 0x07, 0x82, 0xE3, 0xF0,
    0x37, 0x81, 0x9E, 0x90, 0x58, 0x66, 0x4E, 0xEE, 
    0x44, 0x33, 0x6A, 0x5E, 0x08, 0x9A, 0x21, 0xA5, 
    0xE2, 0x0B, 0xE9, 0x22, 0xA9, 0x5A, 0x7E, 0xC1,
    0x0A, 0x9E, 0x8B, 0xDD, 0x75, 0xB1, 0xB4, 0x65
};

#endif /* MBEDTLS_CIPHER_MODE_OFB */


#if defined(MBEDTLS_CIPHER_MODE_CTR)
/*
 * SM4-CTR test vectors from:
 *
 * http://www.faqs.org/rfcs/rfc3686.html
 */

static const unsigned char sm4_test_ctr_key[3][16] =
{
    { 0xAE, 0x68, 0x52, 0xF8, 0x12, 0x10, 0x67, 0xCC,
      0x4B, 0xF7, 0xA5, 0x76, 0x55, 0x77, 0xF3, 0x9E },
    { 0x7E, 0x24, 0x06, 0x78, 0x17, 0xFA, 0xE0, 0xD7,
      0x43, 0xD6, 0xCE, 0x1F, 0x32, 0x53, 0x91, 0x63 },
    { 0x76, 0x91, 0xBE, 0x03, 0x5E, 0x50, 0x20, 0xA8,
      0xAC, 0x6E, 0x61, 0x85, 0x29, 0xF9, 0xA0, 0xDC }
};

static const unsigned char sm4_test_ctr_nonce_counter[3][16] =
{
    { 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
    { 0x00, 0x6C, 0xB6, 0xDB, 0xC0, 0x54, 0x3B, 0x59,
      0xDA, 0x48, 0xD9, 0x0B, 0x00, 0x00, 0x00, 0x01 },
    { 0x00, 0xE0, 0x01, 0x7B, 0x27, 0x77, 0x7F, 0x3F,
      0x4A, 0x17, 0x86, 0xF0, 0x00, 0x00, 0x00, 0x01 }
};

static const unsigned char sm4_test_ctr_pt[3][48] =
{
    { 0x97, 0xfb, 0x44, 0x19, 0x08, 0xa7, 0x48, 0xb0,
      0xdf, 0x46, 0x62, 0xb6, 0xbb, 0x6d, 0xe1, 0x34 },

    { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
      0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
      0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
      0x20, 0x21, 0x22, 0x23 },

    { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
      0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
      0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
      0x20, 0x21, 0x22, 0x23 }
};

static const unsigned char sm4_test_ctr_ct[3][48] =
{
    { 0xe4, 0x09, 0x5d, 0x4f, 0xb7, 0xa7, 0xb3, 0x79,
      0x2d, 0x61, 0x75, 0xa3, 0x26, 0x13, 0x11, 0xb8 },
    { 0xc1, 0xcf, 0x48, 0xa8, 0x9f, 0x2f, 0xfd, 0xd9,
      0xcf, 0x46, 0x52, 0xe9, 0xef, 0xdb, 0x72, 0xd7,
      0x45, 0x40, 0xa4, 0x2b, 0xde, 0x6d, 0x78, 0x36,
      0xd5, 0x9a, 0x5c, 0xea, 0xae, 0xf3, 0x10, 0x53,
      0x25, 0xb2, 0x07, 0x2f },
    { 0xe9, 0xbf, 0xca, 0x67, 0xae, 0xe9, 0x74, 0x96,
      0x76, 0x06, 0x55, 0xe1, 0xbe, 0x30, 0x58, 0x37,
      0x0b, 0xd5, 0xaa, 0x0b, 0xe1, 0x1d, 0x25, 0x9f,
      0x74, 0xa8, 0xc1, 0xa3, 0x4e, 0x08, 0x05, 0x6a,
      0x83, 0xfd, 0x06, 0x2b }
};

static const int sm4_test_ctr_len[3] =
    { 16, 32, 36 };
#endif /* MBEDTLS_CIPHER_MODE_CTR */

/*
 * Checkup routine
 */
int mbedtls_sm4_self_test( int verbose )
{
        int ret = 0, i, j, u, v;
        unsigned char key[32];
        unsigned char buf[64];
#if defined(MBEDTLS_CIPHER_MODE_CBC) || defined(MBEDTLS_CIPHER_MODE_CFB)
        unsigned char iv[16];
#endif
#if defined(MBEDTLS_CIPHER_MODE_CBC)
        unsigned char prv[16];
#endif
#if defined(MBEDTLS_CIPHER_MODE_CTR) || defined(MBEDTLS_CIPHER_MODE_CFB)
        size_t offset;
#endif
#if defined(MBEDTLS_CIPHER_MODE_CTR)
        int len;
        unsigned char nonce_counter[16];
        unsigned char stream_block[16];
#endif
        mbedtls_sm4_context ctx;
    
        memset( key, 0, 32 );
        mbedtls_sm4_init( &ctx );
    
        /*
         * ECB mode
         */
        for( i = 0; i < 6; i++ )
        {
            u = i >> 1;
            v = i  & 1;
    
            if( 1 == u )
                continue;
    
            if( verbose != 0 )
                mbedtls_printf( "  SM4-ECB-%3d (%s): ", 128 + u * 64,
                                 ( v == MBEDTLS_SM4_DECRYPT ) ? "dec" : "enc" );
    
            memset( buf, 0, 16 );
    
            if( v == MBEDTLS_SM4_DECRYPT )
            {
                mbedtls_sm4_setkey_dec( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 10000; j++ )
                    mbedtls_sm4_crypt_ecb( &ctx, v, buf, buf );
    
                if( memcmp( buf, sm4_test_ecb_dec[u], 16 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
            else
            {
                mbedtls_sm4_setkey_enc( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 1; j++ )
                    mbedtls_sm4_crypt_ecb( &ctx, v, buf, buf );
    
                if( memcmp( buf, sm4_test_ecb_enc[u], 16 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );
                    ret = 1;
                    goto exit;
                }
            }
    
            if( verbose != 0 )
                mbedtls_printf( "passed\n" );
        }
    
        if( verbose != 0 )
            mbedtls_printf( "\n" );
    
#if defined(MBEDTLS_CIPHER_MODE_CBC)
        /*
         * CBC mode
         */
        for( i = 0; i < 6; i++ )
        {
            u = i >> 1;
            v = i  & 1;
    
            if( 1 == u )
                continue;
    
            if( verbose != 0 )
                mbedtls_printf( "  SM4-CBC-%3d (%s): ", 128 + u * 64,
                                 ( v == MBEDTLS_SM4_DECRYPT ) ? "dec" : "enc" );
    
            memset( iv , 0, 16 );
            memset( prv, 0, 16 );
            memset( buf, 0, 16 );
    
            if( v == MBEDTLS_SM4_DECRYPT )
            {
                mbedtls_sm4_setkey_dec( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 10000; j++ )
                    mbedtls_sm4_crypt_cbc( &ctx, v, 16, iv, buf, buf );
    
                if( memcmp( buf, sm4_test_cbc_dec[u], 16 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
            else
            {
                mbedtls_sm4_setkey_enc( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 10000; j++ )
                {
                    unsigned char tmp[16];
    
                    mbedtls_sm4_crypt_cbc( &ctx, v, 16, iv, buf, buf );
    
                    memcpy( tmp, prv, 16 );
                    memcpy( prv, buf, 16 );
                    memcpy( buf, tmp, 16 );
                }
    
                if( memcmp( prv, sm4_test_cbc_enc[u], 16 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );
                    ret = 1;
                    goto exit;
                }
            }
    
            if( verbose != 0 )
                mbedtls_printf( "passed\n" );
        }
    
        if( verbose != 0 )
            mbedtls_printf( "\n" );
#endif /* MBEDTLS_CIPHER_MODE_CBC */
    
#if defined(MBEDTLS_CIPHER_MODE_CFB)
        /*
         * CFB128 mode
         */
        for( i = 0; i < 6; i++ )
        {
            u = i >> 1;
            v = i  & 1;
            
            if( 1 == u )
                continue;
            
            if( verbose != 0 )
                mbedtls_printf( "  SM4-CFB128-%3d (%s): ", 128 + u * 64,
                                 ( v == MBEDTLS_SM4_DECRYPT ) ? "dec" : "enc" );
    
            memcpy( iv,  sm4_test_cfb128_iv, 16 );
            memcpy( key, sm4_test_cfb128_key[u], 16 + u * 8 );
    
            offset = 0;
            mbedtls_sm4_setkey_enc( &ctx, key, 128 + u * 64 );
    
            if( v == MBEDTLS_SM4_DECRYPT )
            {
                memcpy( buf, sm4_test_cfb128_ct[u], 64 );
                mbedtls_sm4_crypt_cfb128( &ctx, v, 64, &offset, iv, buf, buf );
    
                if( memcmp( buf, sm4_test_cfb128_pt, 64 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
            else
            {
                memcpy( buf, sm4_test_cfb128_pt, 64 );
                mbedtls_sm4_crypt_cfb128( &ctx, v, 64, &offset, iv, buf, buf );
    
                if( memcmp( buf, sm4_test_cfb128_ct[u], 64 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );
                    ret = 1;
                    goto exit;
                }
            }
    
            if( verbose != 0 )
                mbedtls_printf( "passed\n" );
        }
    
        if( verbose != 0 )
            mbedtls_printf( "\n" );
#endif /* MBEDTLS_CIPHER_MODE_CFB */
    
#if defined(MBEDTLS_CIPHER_MODE_CTR)
        /*
         * CTR mode
         */
        for( i = 0; i < 6; i++ )
        {
            u = i >> 1;
            v = i  & 1;
    
            if( 1 == u )
                continue;
    
            if( verbose != 0 )
                mbedtls_printf( "  SM4-CTR-128 (%s): ",
                                 ( v == MBEDTLS_SM4_DECRYPT ) ? "dec" : "enc" );
    
            memcpy( nonce_counter, sm4_test_ctr_nonce_counter[u], 16 );
            memcpy( key, sm4_test_ctr_key[u], 16 );
    
            offset = 0;
            mbedtls_sm4_setkey_enc( &ctx, key, 128 );
    
            if( v == MBEDTLS_SM4_DECRYPT )
            {
                len = sm4_test_ctr_len[u];
                memcpy( buf, sm4_test_ctr_ct[u], len );
    
                mbedtls_sm4_crypt_ctr( &ctx, len, &offset, nonce_counter, stream_block,
                               buf, buf );
    
                if( memcmp( buf, sm4_test_ctr_pt[u], len ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
            else
            {
                len = sm4_test_ctr_len[u];
                memcpy( buf, sm4_test_ctr_pt[u], len );
    
                mbedtls_sm4_crypt_ctr( &ctx, len, &offset, nonce_counter, stream_block,
                               buf, buf );
    
                if( memcmp( buf, sm4_test_ctr_ct[u], len ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );
                    ret = 1;
                    goto exit;
                }
            }
    
            if( verbose != 0 )
                mbedtls_printf( "passed\n" );
        }
    
        if( verbose != 0 )
            mbedtls_printf( "\n" );
#endif /* MBEDTLS_CIPHER_MODE_CTR */

#if defined(MBEDTLS_CIPHER_MODE_OFB)
        /*
         * OFB mode
         */
        for( i = 0; i < 2; i++ )
        {
            u = i >> 1;
            v = i  & 1;
    
            if( 1 == u )
                continue;
    
            if( verbose != 0 )
                mbedtls_printf( "  SM4-OFB-%3d (%s): ", 128 + u * 64,
                                 ( v == MBEDTLS_SM4_DECRYPT ) ? "dec" : "enc" );
    
 
    
            if( v == MBEDTLS_SM4_DECRYPT )
            {   
                memcpy( iv , ofb_iv, 16 );
                memcpy( key, ofb_iv, 16 );
                memcpy( buf, ofb_dec, 64 );
                
                mbedtls_sm4_setkey_dec( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 1; j++ )
                    mbedtls_sm4_crypt_ofb( &ctx, v, 64, iv, buf, buf );
    
                if( memcmp( buf, ofb_enc, 64 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
            else
            {
                memcpy( iv , ofb_iv, 16 );
                memcpy( key, ofb_iv, 16 );
                memcpy( buf, ofb_enc, 64 );
                mbedtls_sm4_setkey_enc( &ctx, key, 128 + u * 64 );
    
                for( j = 0; j < 1; j++ )
                {
                    mbedtls_sm4_crypt_ofb( &ctx, v, 64, iv, buf, buf );
                }
    
                if( memcmp( buf, ofb_dec, 64 ) != 0 )
                {
                    if( verbose != 0 )
                        mbedtls_printf( "failed\n" );

                    ret = 1;
                    goto exit;
                }
            }
    
            if( verbose != 0 )
                mbedtls_printf( "passed\n" );
        }
    
        if( verbose != 0 )
            mbedtls_printf( "\n" );
#endif /* MBEDTLS_CIPHER_MODE_OFB */  
        ret = 0;
    
    exit:
        mbedtls_sm4_free( &ctx );
    
        return( ret );
    }

//MSH_CMD_EXPORT( mbedtls_sm4_self_test, mbedtls_sm4_self_test );

#endif /* MBEDTLS_SELF_TEST */

#endif /* MBEDTLS_SM4_C */
