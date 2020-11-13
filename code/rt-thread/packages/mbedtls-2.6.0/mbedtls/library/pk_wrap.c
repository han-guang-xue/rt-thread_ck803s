/*
 *  Public Key abstraction layer: wrapper functions
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

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_PK_C)
#include "mbedtls/pk_internal.h"
#include "mbedtls/asn1.h"
/* Even if RSA not activated, for the sake of RSA-alt */
#include "mbedtls/rsa.h"
#include "mbedtls/bignum.h"

#include <string.h>

#if defined(MBEDTLS_ECP_C)
#include "mbedtls/ecp.h"
#endif

#if defined(MBEDTLS_ECDSA_C)
#include "mbedtls/ecdsa.h"
#endif

#if defined(MBEDTLS_ECDSA_SM2_C)
#include "mbedtls/ecdsa_sm2.h"
#endif

#if defined(MBEDTLS_ASN1_WRITE_C)
#include "mbedtls/asn1write.h"
#endif

#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdlib.h>
#define mbedtls_calloc    calloc
#define mbedtls_free       free
#endif

#include <limits.h>

#if defined(MBEDTLS_PK_RSA_ALT_SUPPORT)
/* Implementation that should never be optimized out by the compiler */
static void mbedtls_zeroize( void *v, size_t n ) {
    volatile unsigned char *p = v; while( n-- ) *p++ = 0;
}
#endif

#if defined(MBEDTLS_RSA_C)
static int rsa_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_RSA ||
            type == MBEDTLS_PK_RSASSA_PSS );
}

static size_t rsa_get_bitlen( const void *ctx )
{
    return( 8 * ((const mbedtls_rsa_context *) ctx)->len );
}

static int rsa_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len )
{
    int ret;

#if defined(MBEDTLS_HAVE_INT64)
    if( md_alg == MBEDTLS_MD_NONE && UINT_MAX < hash_len )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );
#endif /* MBEDTLS_HAVE_INT64 */

    if( sig_len < ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_RSA_VERIFY_FAILED );

    if( ( ret = mbedtls_rsa_pkcs1_verify( (mbedtls_rsa_context *) ctx, NULL, NULL,
                                  MBEDTLS_RSA_PUBLIC, md_alg,
                                  (unsigned int) hash_len, hash, sig ) ) != 0 )
        return( ret );

    if( sig_len > ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_PK_SIG_LEN_MISMATCH );

    return( 0 );
}

static int rsa_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
#if defined(MBEDTLS_HAVE_INT64)
    if( md_alg == MBEDTLS_MD_NONE && UINT_MAX < hash_len )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );
#endif /* MBEDTLS_HAVE_INT64 */

    *sig_len = ((mbedtls_rsa_context *) ctx)->len;

    return( mbedtls_rsa_pkcs1_sign( (mbedtls_rsa_context *) ctx, f_rng, p_rng, MBEDTLS_RSA_PRIVATE,
                md_alg, (unsigned int) hash_len, hash, sig ) );
}

static int rsa_decrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    if( ilen != ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    return( mbedtls_rsa_pkcs1_decrypt( (mbedtls_rsa_context *) ctx, f_rng, p_rng,
                MBEDTLS_RSA_PRIVATE, olen, input, output, osize ) );
}

static int rsa_encrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    *olen = ((mbedtls_rsa_context *) ctx)->len;

    if( *olen > osize )
        return( MBEDTLS_ERR_RSA_OUTPUT_TOO_LARGE );

    return( mbedtls_rsa_pkcs1_encrypt( (mbedtls_rsa_context *) ctx,
                f_rng, p_rng, MBEDTLS_RSA_PUBLIC, ilen, input, output ) );
}

static int rsa_check_pair_wrap( const void *pub, const void *prv )
{
    return( mbedtls_rsa_check_pub_priv( (const mbedtls_rsa_context *) pub,
                                (const mbedtls_rsa_context *) prv ) );
}

static void *rsa_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_rsa_context ) );

    if( ctx != NULL )
        mbedtls_rsa_init( (mbedtls_rsa_context *) ctx, 0, 0 );

    return( ctx );
}

static void rsa_free_wrap( void *ctx )
{
    mbedtls_rsa_free( (mbedtls_rsa_context *) ctx );
    mbedtls_free( ctx );
}

static void rsa_debug( const void *ctx, mbedtls_pk_debug_item *items )
{
    items->type = MBEDTLS_PK_DEBUG_MPI;
    items->name = "rsa.N";
    items->value = &( ((mbedtls_rsa_context *) ctx)->N );

    items++;

    items->type = MBEDTLS_PK_DEBUG_MPI;
    items->name = "rsa.E";
    items->value = &( ((mbedtls_rsa_context *) ctx)->E );
}

const mbedtls_pk_info_t mbedtls_rsa_info = {
    MBEDTLS_PK_RSA,
    "RSA",
    rsa_get_bitlen,
    rsa_can_do,
    rsa_verify_wrap,
    rsa_sign_wrap,
    rsa_decrypt_wrap,
    rsa_encrypt_wrap,
    rsa_check_pair_wrap,
    rsa_alloc_wrap,
    rsa_free_wrap,
    rsa_debug,
    NULL,
};
#endif /* MBEDTLS_RSA_C */

#if defined(MBEDTLS_ECP_C)
/*
 * Generic EC key
 */
static int eckey_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_ECKEY ||
            type == MBEDTLS_PK_ECKEY_DH ||
            type == MBEDTLS_PK_ECDSA ||
            type == MBEDTLS_PK_EC );
}

static size_t eckey_get_bitlen( const void *ctx )
{
    return( ((mbedtls_ecp_keypair *) ctx)->grp.pbits );
}

#if defined(MBEDTLS_ECDSA_C)
/* Forward declarations */
static int ecdsa_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                       const unsigned char *hash, size_t hash_len,
                       const unsigned char *sig, size_t sig_len );

static int ecdsa_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );

static int eckey_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                       const unsigned char *hash, size_t hash_len,
                       const unsigned char *sig, size_t sig_len )
{
    int ret;
    mbedtls_ecdsa_context ecdsa;

    mbedtls_ecdsa_init( &ecdsa );

    if( ( ret = mbedtls_ecdsa_from_keypair( &ecdsa, ctx ) ) == 0 )
        ret = ecdsa_verify_wrap( &ecdsa, md_alg, hash, hash_len, sig, sig_len );

    mbedtls_ecdsa_free( &ecdsa );

    return( ret );
}

static int eckey_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;
    mbedtls_ecdsa_context ecdsa;

    mbedtls_ecdsa_init( &ecdsa );

    if( ( ret = mbedtls_ecdsa_from_keypair( &ecdsa, ctx ) ) == 0 )
        ret = ecdsa_sign_wrap( &ecdsa, md_alg, hash, hash_len, sig, sig_len,
                               f_rng, p_rng );

    mbedtls_ecdsa_free( &ecdsa );

    return( ret );
}

#endif /* MBEDTLS_ECDSA_C */

static int eckey_check_pair( const void *pub, const void *prv )
{
    return( mbedtls_ecp_check_pub_priv( (const mbedtls_ecp_keypair *) pub,
                                (const mbedtls_ecp_keypair *) prv ) );
}

static void *eckey_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_ecp_keypair ) );

    if( ctx != NULL )
        mbedtls_ecp_keypair_init( ctx );

    return( ctx );
}

static void eckey_free_wrap( void *ctx )
{
    mbedtls_ecp_keypair_free( (mbedtls_ecp_keypair *) ctx );
    mbedtls_free( ctx );
}

static void eckey_debug( const void *ctx, mbedtls_pk_debug_item *items )
{
    items->type = MBEDTLS_PK_DEBUG_ECP;
    items->name = "eckey.Q";
    items->value = &( ((mbedtls_ecp_keypair *) ctx)->Q );
}

const mbedtls_pk_info_t mbedtls_eckey_info = {
    MBEDTLS_PK_ECKEY,
    "EC",
    eckey_get_bitlen,
    eckey_can_do,
#if defined(MBEDTLS_ECDSA_C)
    eckey_verify_wrap,
    eckey_sign_wrap,
#else
    NULL,
    NULL,
#endif
    NULL,
    NULL,
    eckey_check_pair,
    eckey_alloc_wrap,
    eckey_free_wrap,
    eckey_debug,
    NULL,
};

/*
 * EC key restricted to ECDH
 */
static int eckeydh_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_ECKEY ||
            type == MBEDTLS_PK_ECKEY_DH );
}

const mbedtls_pk_info_t mbedtls_eckeydh_info = {
    MBEDTLS_PK_ECKEY_DH,
    "EC_DH",
    eckey_get_bitlen,         /* Same underlying key structure */
    eckeydh_can_do,
    NULL,
    NULL,
    NULL,
    NULL,
    eckey_check_pair,
    eckey_alloc_wrap,       /* Same underlying key structure */
    eckey_free_wrap,        /* Same underlying key structure */
    eckey_debug,            /* Same underlying key structure */
    NULL,
};
#endif /* MBEDTLS_ECP_C */

#if defined(MBEDTLS_ECDSA_C)
static int ecdsa_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_ECDSA );
}

static int ecdsa_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                       const unsigned char *hash, size_t hash_len,
                       const unsigned char *sig, size_t sig_len )
{
    int ret;
    ((void) md_alg);

    ret = mbedtls_ecdsa_read_signature( (mbedtls_ecdsa_context *) ctx,
                                hash, hash_len, sig, sig_len );

    if( ret == MBEDTLS_ERR_ECP_SIG_LEN_MISMATCH )
        return( MBEDTLS_ERR_PK_SIG_LEN_MISMATCH );

    return( ret );
}

static int ecdsa_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    return( mbedtls_ecdsa_write_signature( (mbedtls_ecdsa_context *) ctx,
                md_alg, hash, hash_len, sig, sig_len, f_rng, p_rng ) );
}

static void *ecdsa_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_ecdsa_context ) );

    if( ctx != NULL )
        mbedtls_ecdsa_init( (mbedtls_ecdsa_context *) ctx );

    return( ctx );
}

static void ecdsa_free_wrap( void *ctx )
{
    mbedtls_ecdsa_free( (mbedtls_ecdsa_context *) ctx );
    mbedtls_free( ctx );
}

const mbedtls_pk_info_t mbedtls_ecdsa_info = {
    MBEDTLS_PK_ECDSA,
    "ECDSA",
    eckey_get_bitlen,     /* Compatible key structures */
    ecdsa_can_do,
    ecdsa_verify_wrap,
    ecdsa_sign_wrap,
    NULL,
    NULL,
    eckey_check_pair,   /* Compatible key structures */
    ecdsa_alloc_wrap,
    ecdsa_free_wrap,
    eckey_debug,        /* Compatible key structures */
    NULL,
};
#endif /* MBEDTLS_ECDSA_C */

#if defined(MBEDTLS_PK_RSA_ALT_SUPPORT)
/*
 * Support for alternative RSA-private implementations
 */

static int rsa_alt_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_RSA );
}

static size_t rsa_alt_get_bitlen( const void *ctx )
{
    const mbedtls_rsa_alt_context *rsa_alt = (const mbedtls_rsa_alt_context *) ctx;

    return( 8 * rsa_alt->key_len_func( rsa_alt->key ) );
}

static int rsa_alt_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    mbedtls_rsa_alt_context *rsa_alt = (mbedtls_rsa_alt_context *) ctx;

#if defined(MBEDTLS_HAVE_INT64)
    if( UINT_MAX < hash_len )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );
#endif /* MBEDTLS_HAVE_INT64 */

    *sig_len = rsa_alt->key_len_func( rsa_alt->key );

    return( rsa_alt->sign_func( rsa_alt->key, f_rng, p_rng, MBEDTLS_RSA_PRIVATE,
                md_alg, (unsigned int) hash_len, hash, sig ) );
}

static int rsa_alt_decrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    mbedtls_rsa_alt_context *rsa_alt = (mbedtls_rsa_alt_context *) ctx;

    ((void) f_rng);
    ((void) p_rng);

    if( ilen != rsa_alt->key_len_func( rsa_alt->key ) )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    return( rsa_alt->decrypt_func( rsa_alt->key,
                MBEDTLS_RSA_PRIVATE, olen, input, output, osize ) );
}

#if defined(MBEDTLS_RSA_C)
static int rsa_alt_check_pair( const void *pub, const void *prv )
{
    unsigned char sig[MBEDTLS_MPI_MAX_SIZE];
    unsigned char hash[32];
    size_t sig_len = 0;
    int ret;

    if( rsa_alt_get_bitlen( prv ) != rsa_get_bitlen( pub ) )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    memset( hash, 0x2a, sizeof( hash ) );

    if( ( ret = rsa_alt_sign_wrap( (void *) prv, MBEDTLS_MD_NONE,
                                   hash, sizeof( hash ),
                                   sig, &sig_len, NULL, NULL ) ) != 0 )
    {
        return( ret );
    }

    if( rsa_verify_wrap( (void *) pub, MBEDTLS_MD_NONE,
                         hash, sizeof( hash ), sig, sig_len ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    return( 0 );
}
#endif /* MBEDTLS_RSA_C */

static void *rsa_alt_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_rsa_alt_context ) );

    if( ctx != NULL )
        memset( ctx, 0, sizeof( mbedtls_rsa_alt_context ) );

    return( ctx );
}

static void rsa_alt_free_wrap( void *ctx )
{
    mbedtls_zeroize( ctx, sizeof( mbedtls_rsa_alt_context ) );
    mbedtls_free( ctx );
}

const mbedtls_pk_info_t mbedtls_rsa_alt_info = {
    MBEDTLS_PK_RSA_ALT,
    "RSA-alt",
    rsa_alt_get_bitlen,
    rsa_alt_can_do,
    NULL,
    rsa_alt_sign_wrap,
    rsa_alt_decrypt_wrap,
    NULL,
#if defined(MBEDTLS_RSA_C)
    rsa_alt_check_pair,
#else
    NULL,
#endif
    rsa_alt_alloc_wrap,
    rsa_alt_free_wrap,
    NULL,
    NULL,
};

#endif /* MBEDTLS_PK_RSA_ALT_SUPPORT */

#if defined(MBEDTLS_SM2_C)
static int ecdsa_sm2_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_EC );
}

static int ecdsa_sm2_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                       const unsigned char *hash, size_t hash_len,
                       const unsigned char *sig, size_t sig_len )
{
    int ret;
    ((void) md_alg);

    ret = mbedtls_ecdsa_sm2_read_signature( (mbedtls_ecdsa_sm2_context *) ctx,
                                hash, hash_len, sig, sig_len );

    if( ret == MBEDTLS_ERR_ECP_SIG_LEN_MISMATCH )
        return( MBEDTLS_ERR_PK_SIG_LEN_MISMATCH );

    return( ret );
}

static int ecdsa_sm2_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{

    ( mbedtls_ecdsa_sm2_write_signature( (mbedtls_ecdsa_sm2_context *) ctx,
                md_alg, hash, hash_len, sig, sig_len, f_rng, p_rng ) );

    return 0;
}

static int sm2_decrypt_wrap( void *ctx,
                   const unsigned char *input, size_t ilen,
                   unsigned char *output, size_t *olen, size_t osize,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;
    size_t len;
    const unsigned char *end = NULL;
    unsigned char **p = NULL;
    mbedtls_asn1_buf C3,C2;
    unsigned char x[32];
    unsigned char y[32];
    mbedtls_mpi X;
    mbedtls_mpi Y;

    unsigned char *in = NULL;
    int in_len = 0;

    mbedtls_ecp_keypair *c = (mbedtls_ecp_keypair *)ctx;
    unsigned char *input_p = (unsigned char *)input;

    p = &input_p;
    end = *p + ilen;

    len = 0;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        goto cleanup;

    if( ( end - *p ) < 1 )
    {
        ret = -1;
        goto cleanup;
    }

    mbedtls_mpi_init(&X);

    if( ( ret = mbedtls_asn1_get_mpi( p, end,  &X ) ) != 0 )
        goto cleanup;

    mbedtls_mpi_write_binary( &X, x, 32);

    if( ( end - *p ) < 1 )
    {
        ret = -1;
        goto cleanup;
    }

    mbedtls_mpi_init(&Y);

    if( ( ret = mbedtls_asn1_get_mpi( p, end,  &Y ) ) != 0 )
        goto cleanup;

    mbedtls_mpi_write_binary( &Y, y, 32 );

    if( ( end - *p ) < 1 )
    {
        ret = -1;
        goto cleanup;
    }

    if( ( ret = mbedtls_asn1_get_tag( p, end, &C3.len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        goto cleanup;

    C3.p = *p;
    *p += C3.len;

    if( ( end - *p ) < 1 )
    {
        ret = -1;
        goto cleanup;
    }

    if( ( ret = mbedtls_asn1_get_tag( p, end, &C2.len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        goto cleanup;

    C2.p = *p;
    *p += C2.len;

    in = malloc( 96 + C2.len );

    if( in )
    {
        memcpy( in, x, 32 );
        memcpy( in + 32, y, 32 );
        memcpy( in + 64, C3.p, 32 );
        memcpy( in + 96, C2.p, C2.len );

        in_len = 96 + C2.len;

        ret = mbedtls_sm2_decrypt( &c->grp, &c->d, in , in_len, output , olen );
        free( in );

    }
    else
    {
        ret = -1;
    }

cleanup:

    mbedtls_mpi_free( &X );
    mbedtls_mpi_free( &Y );

    return ret;
}



#define ASN1_CHK_ADD(g, f) do { if( ( ret = f ) < 0 ) {ret = -1; goto cleanup;} else   \
                                {g += ret;ret = 0;} } while( 0 );


static int sm2_encrypt_wrap( void *ctx,
                   const unsigned char *input, size_t ilen,
                   unsigned char *output, size_t *olen, size_t osize,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = 0;

    size_t data_len = 0;

    mbedtls_ecp_keypair *c = (mbedtls_ecp_keypair *)ctx;

    unsigned char *buffer = (unsigned char *)malloc(ilen + 96 + 32);
    unsigned char *bp = buffer;

    mbedtls_mpi X;
    mbedtls_mpi Y;

    if( NULL == buffer)
        return -1;

    mbedtls_mpi_init( &X );
    mbedtls_mpi_init( &Y );

    ret = mbedtls_sm2_encrypt( &c->grp, &c->Q, input , ilen, output , olen );

    data_len = *olen - 96;

    if( ret == 0 && data_len > 0 )
    {
        unsigned char *start = NULL;
        unsigned char **p = NULL;
        size_t len = 0, total_len = 0;

        unsigned char *x;
        unsigned char *y;
        unsigned char *C2;
        unsigned char *C3;

        start = bp;
        p = &bp;

        (*p) += ilen + 96 + 31;

        x = output;
        y = &output[32];
        C2 = &output[32 + 32];
        C3 = &output[32 + 32 + 32];

        ASN1_CHK_ADD( len, mbedtls_asn1_write_raw_buffer( p, start, C3, data_len ) );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_len( p, start, len ) );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( p, start, MBEDTLS_ASN1_OCTET_STRING ) );
        total_len += len;
        len = 0;

        ASN1_CHK_ADD( len, mbedtls_asn1_write_raw_buffer( p, start, C2, 32 ) );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_len( p, start, len ) );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( p, start, MBEDTLS_ASN1_OCTET_STRING ) );

        total_len += len;
        len = 0;

        mbedtls_mpi_read_binary( &Y, y, 32 );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_mpi( p, start, &Y) );

        total_len += len;
        len = 0;

        mbedtls_mpi_read_binary( &X, x, 32 );
        ASN1_CHK_ADD( len, mbedtls_asn1_write_mpi( p, start, &X ) );
        total_len += len;
        len = 0;

        ASN1_CHK_ADD( len, mbedtls_asn1_write_len( p, start, total_len ) );
        total_len += len;
        len = 0;
        ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( p, start,
                                           MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) );

        total_len += len;
        len = 0;

        memcpy( output, *p, total_len );
        *olen = total_len;
    }

cleanup:
    mbedtls_mpi_free( &X );
    mbedtls_mpi_free( &Y );
    free(buffer);

    return ret;
}

static int sm2_z_get_wrap( void *ctx,
                   unsigned char *z, size_t zlen )
{
    const char *id = "1234567812345678";
    mbedtls_ecp_keypair *c = (mbedtls_ecp_keypair *)ctx;

    return mbedtls_sm2_z_get( &c->grp, &c->Q, (const unsigned char *)id, strlen(id), z, zlen );
}

static void *ecdsa_sm2_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_ecdsa_sm2_context ) );

    if( ctx != NULL )
        mbedtls_ecdsa_sm2_init( (mbedtls_ecdsa_sm2_context *) ctx );

    return( ctx );
}

static void ecdsa_sm2_free_wrap( void *ctx )
{
    mbedtls_ecdsa_sm2_free( (mbedtls_ecdsa_sm2_context *) ctx );
    mbedtls_free( ctx );
}

const mbedtls_pk_info_t mbedtls_ecdsa_sm2_info = {
    MBEDTLS_PK_EC,
    "ECDSA_SM2",
    eckey_get_bitlen,     /* Compatible key structures */
    ecdsa_sm2_can_do,
    ecdsa_sm2_verify_wrap,
    ecdsa_sm2_sign_wrap,
    sm2_decrypt_wrap,
    sm2_encrypt_wrap,
    eckey_check_pair,   /* Compatible key structures */
    ecdsa_sm2_alloc_wrap,
    ecdsa_sm2_free_wrap,
    eckey_debug,        /* Compatible key structures */
    sm2_z_get_wrap,
};
#endif /* MBEDTLS_ECDSA_C */


#endif /* MBEDTLS_PK_C */
