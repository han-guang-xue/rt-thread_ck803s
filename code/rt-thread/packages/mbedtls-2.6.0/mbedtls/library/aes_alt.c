/*
 *  FIPS-197 compliant AES implementation
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
 *  The AES block cipher was designed by Vincent Rijmen and Joan Daemen.
 *
 *  http://csrc.nist.gov/encryption/aes/rijndael/Rijndael.pdf
 *  http://csrc.nist.gov/publications/fips/fips197/fips-197.pdf
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_AES_C)

#include <string.h>

#include "mbedtls/aes.h"
#include <drv_crypto.h>
#if defined(MBEDTLS_PADLOCK_C)
#include "mbedtls/padlock.h"
#endif
#if defined(MBEDTLS_AESNI_C)
#include "mbedtls/aesni.h"
#endif

#if defined(MBEDTLS_SELF_TEST)
#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf printf
#endif /* MBEDTLS_PLATFORM_C */
#endif /* MBEDTLS_SELF_TEST */

#if defined(MBEDTLS_AES_ALT)

#define PACKET_SIZE 32 
#define BUFFER_SIZE 16

/* Implementation that should never be optimized out by the compiler */
static void mbedtls_zeroize( void *v, size_t n ) {
//    volatile unsigned char *p = (unsigned char*)v; while( n-- ) *p++ = 0;
    memset( v, 0, n);
}

#if defined(MBEDTLS_PADLOCK_C) &&                      \
    ( defined(MBEDTLS_HAVE_X86) || defined(MBEDTLS_PADLOCK_ALIGN16) )
static int aes_padlock_ace = -1;
#endif

void mbedtls_aes_init( mbedtls_aes_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_aes_context ) );
}

void mbedtls_aes_free( mbedtls_aes_context *ctx )
{
    if( ctx == NULL )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_aes_context ) );
}

/*
 * AES key schedule (encryption)
 */
int mbedtls_aes_setkey_enc( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits )
{
    if( 128 == keybits || 256 == keybits )
    {
        ctx->keybytes = keybits >> 3;
        memcpy( ctx->key, key, ctx->keybytes );
        return 0;
    }
    return (MBEDTLS_ERR_AES_INVALID_KEY_LENGTH);
}

/*
 * AES key schedule (decryption)
 */
int mbedtls_aes_setkey_dec( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits )
{
    return mbedtls_aes_setkey_enc( ctx, key, keybits );
}

void mbedtls_aes_encrypt( mbedtls_aes_context *ctx,
                          const unsigned char input[16],
                          unsigned char output[16] )
{
    mbedtls_internal_aes_encrypt( ctx, input, output );
}


void mbedtls_aes_decrypt( mbedtls_aes_context *ctx,
                          const unsigned char input[16],
                          unsigned char output[16] )
{
    mbedtls_internal_aes_decrypt( ctx, input, output );
}


/*
 * AES-ECB block encryption/decryption
 */
int mbedtls_aes_crypt_ecb( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int ret;

    if( ((uint32)input & 0x3) || ((uint32)output & 0x3) ||
                    ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                    ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {
        unsigned char in[16];
        unsigned char out[16];

        memcpy( in, input, 16 );
        ret = tih_aes_crypt( in, out, 16, ctx->key, ctx->keybytes, !mode, 0x00, NULL );
        memcpy( output, out, 16 );
    }
    else
    {
        ret = (int)tih_aes_crypt( (uint8 *)input, output, 16, ctx->key, ctx->keybytes, !mode, 0x00, NULL );
    }

    return ret;
}

#if defined(MBEDTLS_CIPHER_MODE_CBC)
/*
 * AES-CBC buffer encryption/decryption
 */
int mbedtls_aes_crypt_cbc( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output )
{
    int ret = 0;
    unsigned char iv_t[16];
    
    int out_offset = 4 - ((uint32)output & 0x3);
    if( mode == MBEDTLS_AES_DECRYPT )
        memcpy( iv_t, input + length - 16, 16 );
    
    if( ( (uint32)input & 0x3 ) || ( (uint32)output & 0x3 ) ||
                   ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                   ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {

        unsigned char in_t[BUFFER_SIZE];
        unsigned char out_t[BUFFER_SIZE];

        int len = (length <= BUFFER_SIZE) ? length : BUFFER_SIZE;

        memcpy( in_t, input, len );

        ret = tih_aes_crypt(in_t, out_t, len, ctx->key, ctx->keybytes, !mode, 0x01, iv);
        
        len = length - len;

        if( len > 0 )
        {
            memcpy( output + out_offset, input + BUFFER_SIZE, len );
            if( mode == MBEDTLS_AES_DECRYPT )
                ret = tih_aes_crypt( output + out_offset, output + out_offset, len, ctx->key, ctx->keybytes, !mode, 0x01, in_t );
            else
                ret = tih_aes_crypt( output + out_offset, output + out_offset, len, ctx->key, ctx->keybytes, !mode, 0x01, out_t );
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
        ret = tih_aes_crypt( (uint8 *)input, output, length, ctx->key, ctx->keybytes, !mode, 0x01, iv );
    }

    if( mode == MBEDTLS_AES_DECRYPT )
        memcpy( iv, iv_t, 16 );
    else
        memcpy( iv, output + length - 16, 16 );

    return (ret);
}
#endif /* MBEDTLS_CIPHER_MODE_CBC */

#if defined(MBEDTLS_CIPHER_MODE_CFB)
/*
 * AES-CFB128 buffer encryption/decryption
 */
static int _mbedtls_aes_crypt_cfb128( mbedtls_aes_context *ctx,
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
    if( mode == MBEDTLS_AES_DECRYPT )
        memcpy( iv_t, input + length - 16, 16 );

    if( ( (uint32)input & 0x3 ) || ( (uint32)output & 0x3 ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)input) ) ||
                  ( rt_hw_dtcm_addr_check( (uint32)output ) ) )
    {
        unsigned char in_t[BUFFER_SIZE];
        unsigned char out_t[BUFFER_SIZE];

        int len = (length <= BUFFER_SIZE) ? length : BUFFER_SIZE;

        memcpy( in_t, input, len );

        ret = tih_aes_crypt(in_t, out_t, len, ctx->key, ctx->keybytes, !mode, 0x02, iv);
        
        len = length - len;

        if( len > 0 )
        {
            memcpy( output + out_offset, input + BUFFER_SIZE, len );
            if( mode == MBEDTLS_AES_DECRYPT )
                ret = tih_aes_crypt( output + out_offset, output + out_offset, len, ctx->key, ctx->keybytes, !mode, 0x02, in_t + BUFFER_SIZE - 16 );
            else
                ret = tih_aes_crypt( output + out_offset, output + out_offset, len, ctx->key, ctx->keybytes, !mode, 0x02, out_t + BUFFER_SIZE - 16 );
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
        ret = tih_aes_crypt( (uint8 *)input, output, length, ctx->key, ctx->keybytes, !mode, 0x02, iv );
    }

    if( mode == MBEDTLS_AES_DECRYPT )
        memcpy( iv, iv_t, 16 );
    else
        memcpy( iv, output + length - 16, 16 );

    return (ret);
}

/*
 * AES-CFB128 buffer encryption/decryption
 */
int mbedtls_aes_crypt_cfb128( mbedtls_aes_context *ctx,
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

    if( mode == MBEDTLS_AES_DECRYPT )
    {
        while( length-- )
        {
            if( n == 0 )
            {
                int len = (length + 1) % 16;
                len = length + 1 - len;

                ret = _mbedtls_aes_crypt_cfb128( ctx, mode, len, iv, input, output );
                length = length +1 - len;
                input += len;
                output += len;
                
                if( length > 0 )
                {
                    mbedtls_aes_crypt_ecb( ctx, MBEDTLS_AES_ENCRYPT, iv, iv );
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

                ret = _mbedtls_aes_crypt_cfb128( ctx, mode, len, iv, input, output );
                length = length + 1 - len;
                input += len;
                output += len;
                if( length > 0 )
                {
                    mbedtls_aes_crypt_ecb( ctx, MBEDTLS_AES_ENCRYPT, iv, iv );
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
 * AES-CFB8 buffer encryption/decryption
 */
int mbedtls_aes_crypt_cfb8( mbedtls_aes_context *ctx,
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
        mbedtls_aes_crypt_ecb( ctx, MBEDTLS_AES_ENCRYPT, iv, iv );

        if( mode == MBEDTLS_AES_DECRYPT )
            ov[16] = *input;

        c = *output++ = (unsigned char)( iv[0] ^ *input++ );

        if( mode == MBEDTLS_AES_ENCRYPT )
            ov[16] = c;

        memcpy( iv, ov + 1, 16 );
    }

    return( 0 );
}
#endif /*MBEDTLS_CIPHER_MODE_CFB */

#if defined(MBEDTLS_CIPHER_MODE_CTR)

int _mbedtls_aes_crypt_ctr( mbedtls_aes_context *ctx,
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

        ret = tih_aes_crypt_ctr(in_t, out_t, len, ctx->key, ctx->keybytes, 0x00, 0x04, nonce_counter, step );
        for( i = 16; i > 0; i-- )
            if( ++nonce_counter[i - 1] != 0 )
                break;   

        if( length - len > 0 )
        {
            len = length - len;
            memcpy( output + out_offset, input + 16, len );

            ret = tih_aes_crypt_ctr( output + out_offset, output + out_offset, len, ctx->key, ctx->keybytes, 0x00, 0x04, nonce_counter, step );

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
        ret = tih_aes_crypt_ctr( (uint8*)input, output, length, ctx->key, ctx->keybytes, 0x00, 0x04, nonce_counter, step );
       
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
int mbedtls_aes_crypt_ctr( mbedtls_aes_context *ctx,
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
            ret = _mbedtls_aes_crypt_ctr( ctx, len, nonce_counter, stream_block, input, output );
            length = length - len;
            input += len;
            output += len;
        }
    }

    while( length-- )
    {
        if( n == 0 )
        {

            ret = mbedtls_aes_crypt_ecb( ctx, MBEDTLS_AES_ENCRYPT, nonce_counter, stream_block );

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

#endif /* !MBEDTLS_AES_ALT */

#endif /* MBEDTLS_AES_C */
