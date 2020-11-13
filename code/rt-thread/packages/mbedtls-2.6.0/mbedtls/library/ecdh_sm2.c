/*
 *  Elliptic curve Diffie-Hellman
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
 * References:
 *
 * SEC1 http://www.secg.org/index.php?action=secg,docs_secg
 * RFC 4492
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_ECDH_SM2_C)

#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define mbedtls_printf     printf
#endif

#include "mbedtls/ecdh_sm2.h"

/*
 * Generate public key: simple wrapper around mbedtls_ecp_gen_keypair
 */
int mbedtls_ecdh_sm2_gen_public( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    return mbedtls_ecp_gen_keypair( grp, d, Q, f_rng, p_rng );
}

/*
 * Initialize context
 */
void mbedtls_ecdh_sm2_init( mbedtls_ecdh_sm2_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ecdh_sm2_context ) );
}

/*
 * Free context
 */
void mbedtls_ecdh_sm2_free( mbedtls_ecdh_sm2_context *ctx )
{
    if( ctx == NULL )
        return;

    mbedtls_ecp_group_free( &ctx->grp );
    mbedtls_ecp_point_free( &ctx->Q   );
    mbedtls_ecp_point_free( &ctx->Qp  );
    mbedtls_ecp_point_free( &ctx->Vi  );
    mbedtls_ecp_point_free( &ctx->Vf  );
    mbedtls_mpi_free( &ctx->d  );
    mbedtls_mpi_free( &ctx->z  );
    mbedtls_mpi_free( &ctx->_d );

    mbedtls_mpi_free( &ctx->S1 );
    mbedtls_mpi_free( &ctx->SA );
    mbedtls_mpi_free( &ctx->Za );
    mbedtls_mpi_free( &ctx->Zb );
    mbedtls_mpi_free( &ctx->dA );
    mbedtls_ecp_point_free( &ctx->PB );
}

/*
 * Setup and write the ServerKeyExhange parameters (RFC 4492)
 *      struct {
 *          ECParameters    curve_params;
 *          ECPoint         public;
 *      } ServerECDH_SM2Params;
 */
int mbedtls_ecdh_sm2_make_params( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;
    size_t grp_len, pt_len;

    if( ctx == NULL || ctx->grp.pbits == 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecdh_sm2_gen_public( &ctx->grp, &ctx->d, &ctx->Q, f_rng, p_rng ) )
                != 0 )
        return( ret );

    if( ( ret = mbedtls_ecp_tls_write_group( &ctx->grp, &grp_len, buf, blen ) )
                != 0 )
        return( ret );

    buf += grp_len;
    blen -= grp_len;

    if( ( ret = mbedtls_ecp_tls_write_point( &ctx->grp, &ctx->Q, ctx->point_format,
                                     &pt_len, buf, blen ) ) != 0 )
        return( ret );

    *olen = grp_len + pt_len;
    return( 0 );
}

/*
 * Setup and output the S1(S2) and SA(SB) parameters and
 * make sure that invoked after mbedtls_ecdh_sm2_calc_secret(...blen=64)
 *      struct {
 *          S1 nbytes = 32;
 *          SA nbytes = 32;
 *      } SM2_output_params;
 */
int mbedtls_ecdh_sm2_make_params2( mbedtls_ecdh_sm2_context *ctx, unsigned char *buf,
                                       size_t blen)
{
    int ret;

    if( ctx == NULL || ctx->grp.pbits == 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->S1, buf, blen >> 1) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->SA, buf + ( blen >> 1 ), blen >> 1) );
    return ret;

cleanup:
    return( ret );
}

/*
 * Read the ServerKeyExhange parameters (RFC 4492)
 *      struct {
 *          ECParameters    curve_params;
 *          ECPoint         public;
 *      } ServerECDH_SM2Params;
 */
int mbedtls_ecdh_sm2_read_params( mbedtls_ecdh_sm2_context *ctx,
                      const unsigned char **buf, const unsigned char *end )
{
    int ret;

    if( ( ret = mbedtls_ecp_tls_read_group( &ctx->grp, buf, end - *buf ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_ecp_tls_read_point( &ctx->grp, &ctx->Qp, buf, end - *buf ) )
                != 0 )
        return( ret );

    return( 0 );
}

/*
 * Get parameters from a keypair
 */
int mbedtls_ecdh_sm2_get_params( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_sm2_side side )
{
    int ret;

    if( ( ret = mbedtls_ecp_group_copy( &ctx->grp, &key->grp ) ) != 0 )
        return( ret );

    /* If it's not our key, just import the public part as Qp */
    if( side == MBEDTLS_ECDH_SM2_THEIRS )
        return( mbedtls_ecp_copy( &ctx->Qp, &key->Q ) );

    /* Our key: import public (as Q) and private parts */
    if( side != MBEDTLS_ECDH_SM2_OURS )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecp_copy( &ctx->Q, &key->Q ) ) != 0 ||
        ( ret = mbedtls_mpi_copy( &ctx->d, &key->d ) ) != 0 )
        return( ret );

    return( 0 );
}

/*
 * Get permanent info from a keypair:
 *      1. our permanent private key
 *      2. peer's permanent public key
 */
int mbedtls_ecdh_sm2_get_params2( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_sm2_side side )
{
    int ret;

    /* If it's not our key, just import the public part as Qp */
    if( side == MBEDTLS_ECDH_SM2_THEIRS )
        return( mbedtls_ecp_copy( &ctx->PB, &key->Q ) );

    /* Our key: import public (as Q) and private parts */
    if( side != MBEDTLS_ECDH_SM2_OURS )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_mpi_copy( &ctx->dA, &key->d ) ) != 0 )
        return( ret );

    return( 0 );
}

/*
 * Get Z info by sm3(id || Q(public key)):
 *      1. our Z info by key from our CA
 *      2. peer's Z info by key from peer's CA
 */
int mbedtls_ecdh_sm2_get_params3( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key, const unsigned char *id,
                                      size_t ilen, mbedtls_ecdh_sm2_side side )
{
    int ret;
    int nbytes;

    nbytes = GET_BYTE_LEN( key->grp.pbits );
    uint8_t z[nbytes];
    /* If it's not our key, just import the public part as Qp */
    ret = mbedtls_sm2_z_get(&(((mbedtls_ecp_keypair *)key)->grp), &(((mbedtls_ecp_keypair *)key)->Q), id, ilen, z, nbytes);

    if (side == MBEDTLS_ECDH_SM2_OURS) {
        MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &ctx->Za, z, nbytes) );
    }
    else
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &ctx->Zb, z, nbytes) );
    }
    return 0;

cleanup:
    mbedtls_mpi_free( &ctx->Za );
    mbedtls_mpi_free( &ctx->Za );
    return( -1 );
}

/*
 * 1. Get role info (our or peer's):
 * 2. Set output z share secret key length
 */
int mbedtls_ecdh_sm2_get_params4( mbedtls_ecdh_sm2_context *ctx, size_t zlen, mbedtls_ecdh_sm2_side side )
{
    if( ctx->grp.id == MBEDTLS_ECP_DP_NONE )
    {
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
    }

    if ( zlen == 0 ) {
        return ( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
    }

    ctx->z_nbytes = zlen;
    if (side == MBEDTLS_ECDH_SM2_OURS) {
        ctx->role = MBEDTLS_ECDH_SM2_ROLE_SPONSOR;
    }
    else
    {
        ctx->role = MBEDTLS_ECDH_SM2_ROLE_RESPONSOR;
    }

    return 0;
}

/*
 * Setup and export the client public value
 */
int mbedtls_ecdh_sm2_make_public( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;

    if( ctx == NULL || ctx->grp.pbits == 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecdh_sm2_gen_public( &ctx->grp, &ctx->d, &ctx->Q, f_rng, p_rng ) )
                != 0 )
        return( ret );

    return mbedtls_ecp_tls_write_point( &ctx->grp, &ctx->Q, ctx->point_format,
                                olen, buf, blen );
    
}

/*
 * Parse and import the client's public value
 */
int mbedtls_ecdh_sm2_read_public( mbedtls_ecdh_sm2_context *ctx,
                      const unsigned char *buf, size_t blen )
{
    int ret;
    const unsigned char *p = buf;

    if( ctx == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecp_tls_read_point( &ctx->grp, &ctx->Qp, &p, blen ) ) != 0 )
        return( ret );

    if( (size_t)( p - buf ) != blen )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    return( 0 );
}

/* function: SM2 Key Exchange
 * parameters:
 *     role        ------ input, 0 - sponsor, 1 - responsor
 *     dA[32]      ------ input, sponsor's permanent private key
 *     PB[65]      ------ input, responsor's permanent public key  --> recv and cal
 *     rA[32]      ------ input, sponsor's temporary private key
 *     RA[64]      ------ input, sponsor's temporary public key
 *     RB[64]      ------ input, responsor's temporary public key  --> recv and cal
 *     ZA[32]      ------ input, sponsor's Z value
 *     ZB[32]      ------ input, responsor's Z value               --> recv and cal
 *     kByteLen    ------ input, byte length of output key, should be less than (2^32 - 1)bit
 *     KA[kByteLen]------ output, output key
 *     S1[32]      ------ output, sponsor's S1, or responsor's S2
 *     SA[32]      ------ output, sponsor's SA, or responsor's SB  --> send ......
 * return:
 *     0(success); other(error)
 * caution:
 *     1. if S1=SB,S2=SA, then success.
 */

int mbedtls_ecdh_sm2_calc_secret( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                                  unsigned char *buf, size_t blen,
                                  int (*f_rng)(void *, unsigned char *, size_t),
                                  void *p_rng )
{
    int ret;
    uint8_t nbytes = GET_BYTE_LEN(ctx->grp.pbits);

    uint8_t dA[nbytes];
    uint8_t PB[(nbytes << 1)];
    uint8_t rA[nbytes];
    uint8_t RPA[nbytes << 1];
    uint8_t RPB[nbytes << 1];
    uint8_t ZA[nbytes];
    uint8_t ZB[nbytes];
    uint8_t KA[ctx->z_nbytes];
    uint8_t S1[nbytes];
    uint8_t SA[nbytes];

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->dA, dA, nbytes) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->PB.X, PB, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->PB.Y, PB + nbytes, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->d, rA, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Q.X, RPA, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Q.Y, RPA + nbytes, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Qp.X, RPB, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Qp.Y, RPB + nbytes, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Za, ZA, nbytes ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->Zb, ZB, nbytes ) );

    ret = tih_sm2_key_exchange(ctx->role, dA, PB, rA, RPA, RPB, ZA, ZB, ctx->z_nbytes, KA, S1, SA);
    if (ret) {
        return ret;
    }

    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary(&ctx->z, KA, ctx->z_nbytes) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary(&ctx->S1, S1, nbytes) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary(&ctx->SA, SA, nbytes) );

    if( mbedtls_mpi_size( &ctx->z ) > blen )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    *olen = ctx->z_nbytes;
    memcpy(buf, KA, *olen);

cleanup:
    return ret;
}

#if defined(MBEDTLS_SELF_TEST)
static int myrand( void *rng_state, unsigned char *output, size_t len )
{
    size_t use_len;
    int rnd;

    if( rng_state != NULL )
        rng_state  = NULL;

    while( len > 0 )
    {
        use_len = len;
        if( use_len > sizeof(int) )
            use_len = sizeof(int);

        rnd = rand();
        memcpy( output, &rnd, use_len );
        output += use_len;
        len -= use_len;
    }

    return( 0 );
}

int mbedtls_ecdh_sm2_self_test( int verbose )
{
    int ret;
    mbedtls_ecdh_sm2_context ctx_a, ctx_b;
    mbedtls_ecp_keypair key_a, key_b, key_ra, key_rb;
    unsigned char buf_a[64];
    unsigned char buf_b[64];

    unsigned char k_a[64];
    unsigned char k_b[64];

    unsigned char id[] = { 0x12, 0x34, 0x56, 0x78 };

    size_t olen_a;
    size_t olen_b;

    mbedtls_printf( "ECDH-SM2 test:" );

    mbedtls_ecdh_sm2_init( &ctx_a );
    mbedtls_ecdh_sm2_init( &ctx_b );
    
    mbedtls_ecp_group_load( &ctx_a.grp, MBEDTLS_ECP_DP_SM2P256V1 );
    mbedtls_ecp_group_load( &ctx_b.grp, MBEDTLS_ECP_DP_SM2P256V1 );
    
    mbedtls_ecp_keypair_init( &key_a );
    mbedtls_ecp_keypair_init( &key_ra );
    mbedtls_ecp_keypair_init( &key_b );
    mbedtls_ecp_keypair_init( &key_rb );

    MBEDTLS_MPI_CHK( mbedtls_ecp_gen_key( MBEDTLS_ECP_DP_SM2P256V1, &key_a, myrand, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_ecp_gen_key( MBEDTLS_ECP_DP_SM2P256V1, &key_b, myrand, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_ecp_gen_key( MBEDTLS_ECP_DP_SM2P256V1, &key_ra, myrand, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_ecp_gen_key( MBEDTLS_ECP_DP_SM2P256V1, &key_rb, myrand, NULL ) );

    //OURS
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params( &ctx_a, &key_ra, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params( &ctx_a, &key_rb, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params2( &ctx_a, &key_a, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params2( &ctx_a, &key_b, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params3( &ctx_a, &key_a, id, 4, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params3( &ctx_a, &key_b, id, 4, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params4( &ctx_a, 64, MBEDTLS_ECDH_SM2_OURS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_calc_secret( &ctx_a, &olen_a, k_a, 64, myrand, NULL ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_make_params2( &ctx_a, buf_a, 64 ) );

    //THEIRS
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params( &ctx_b, &key_rb, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params( &ctx_b, &key_ra, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params2( &ctx_b, &key_b, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params2( &ctx_b, &key_a, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params3( &ctx_b, &key_b, id, 4, MBEDTLS_ECDH_SM2_OURS ) );
    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params3( &ctx_b, &key_a, id, 4, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_get_params4( &ctx_b, 64, MBEDTLS_ECDH_SM2_THEIRS ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_calc_secret( &ctx_b, &olen_b, k_b, 64, myrand, NULL ) );

    MBEDTLS_MPI_CHK( mbedtls_ecdh_sm2_make_params2( &ctx_b, buf_b, 64 ) );

    if( memcmp( ctx_a.S1.p, ctx_b.SA.p, 32) || memcmp( ctx_a.SA.p, ctx_b.S1.p, 32) ||
        memcmp( k_a, k_b, 64 ) ){

cleanup:
        if( verbose != 0 )
            mbedtls_printf("failed\n");
        ret = -1;
    } else {
        if( verbose != 0 )
            mbedtls_printf("passed\n");
        ret = 0;
    }
    mbedtls_ecdh_sm2_free( &ctx_a );
    mbedtls_ecdh_sm2_free( &ctx_b );
    mbedtls_ecp_keypair_free( &key_a );
    mbedtls_ecp_keypair_free( &key_b );
    mbedtls_ecp_keypair_free( &key_ra );
    mbedtls_ecp_keypair_free( &key_rb );

    return ret;
}

//MSH_CMD_EXPORT( mbedtls_ecdh_sm2_self_test, mbedtls_ecdh_sm2_self_test )

#endif /* MBEDTLS_SELF_TEST */
#endif /* MBEDTLS_ECDH_SM2_C */

