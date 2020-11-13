/**
 * \file ecdh_sm2.h
 *
 * \brief Elliptic curve Diffie-Hellman
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
#ifndef MBEDTLS_ECDH_SM2_H
#define MBEDTLS_ECDH_SM2_H

#include "sm2.h"

#ifdef __cplusplus
extern "C" {
#endif

#define    MBEDTLS_ECDH_SM2_ROLE_SPONSOR     0
#define    MBEDTLS_ECDH_SM2_ROLE_RESPONSOR   1

/**
 * When importing from an EC key, select if it is our key or the peer's key
 */
typedef enum
{
    MBEDTLS_ECDH_SM2_OURS,
    MBEDTLS_ECDH_SM2_THEIRS,
} mbedtls_ecdh_sm2_side;

/**
 * \brief           ECDH_SM2 context structure
 */
/* function: SM2 Key Exchange
 * parameters:
 *     role        ------ input, 0 - sponsor, 1 - responsor
 *     dA[32]      ------ input, sponsor's permanent private key
 *     PB[65]      ------ input, responsor's permanent public key
 *     rA[32]      ------ input, sponsor's temporary private key
 *     RA[64]      ------ input, sponsor's temporary public key
 *     RB[64]      ------ input, responsor's temporary public key
 *     ZA[32]      ------ input, sponsor's Z value
 *     ZB[32]      ------ input, responsor's Z value
 *     kByteLen    ------ input, byte length of output key, should be less than (2^32 - 1)bit
 *     KA[kByteLen]------ output, output key
 *     S1[32]      ------ output, sponsor's S1, or responsor's S2
 *     SA[32]      ------ output, sponsor's SA, or responsor's SB
 * return:
 *     0(success); other(error)
 * caution:
 *     1. if S1=SB,S2=SA, then success.
 */

typedef struct
{
    mbedtls_ecp_group grp;      /*!<  elliptic curve used                           */
    mbedtls_mpi d;              /*!<  our temporary secret value (private key)      */
    mbedtls_ecp_point Q;        /*!<  our temporary public value (public key)       */
    mbedtls_ecp_point Qp;       /*!<  peer's temporary public value (public key)    */
    mbedtls_mpi z;              /*!<  shared secret  output                         */
    int point_format;           /*!<  format for point export in TLS messages       */
    mbedtls_ecp_point Vi;       /*!<  blinding value (for later)                    */
    mbedtls_ecp_point Vf;       /*!<  un-blinding value (for later)                 */
    mbedtls_mpi _d;             /*!<  previous d (for later)                        */

    mbedtls_mpi dA;             /* input, our permanent private key   */
    mbedtls_ecp_point PB;       /* input, peer's permanent public key */

    mbedtls_mpi Za;             /* input, our Z value                 */
    mbedtls_mpi Zb;             /* input, peer's Z value              */
    mbedtls_mpi S1;             /* output, our S1, or peer's S2       */
    mbedtls_mpi SA;             /* output, our SA, or peer's SB       */

    uint32_t z_nbytes;          /* output, byte length of key:z       */
    sm2_exchange_role_e role;
}mbedtls_ecdh_sm2_context;

/**
 * \brief           Generate a public key.
 *                  Raw function that only does the core computation.
 *
 * \param grp       ECP group
 * \param d         Destination MPI (secret exponent, aka private key)
 * \param Q         Destination point (public key)
 * \param f_rng     RNG function
 * \param p_rng     RNG parameter
 *
 * \return          0 if successful,
 *                  or a MBEDTLS_ERR_ECP_XXX or MBEDTLS_MPI_XXX error code
 */
int mbedtls_ecdh_sm2_gen_public( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );

/**
 * \brief           Compute shared secret
 *                  Raw function that only does the core computation.
 *
 * \param grp       ECP group
 * \param z         Destination MPI (shared secret)
 * \param Q         Public key from other party
 * \param d         Our secret exponent (private key)
 * \param f_rng     RNG function (see notes)
 * \param p_rng     RNG parameter
 *
 * \return          0 if successful,
 *                  or a MBEDTLS_ERR_ECP_XXX or MBEDTLS_MPI_XXX error code
 *
 * \note            If f_rng is not NULL, it is used to implement
 *                  countermeasures against potential elaborate timing
 *                  attacks, see \c mbedtls_ecp_mul() for details.
 */
int mbedtls_ecdh_sm2_compute_shared( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );

/**
 * \brief           Initialize context
 *
 * \param ctx       Context to initialize
 */
void mbedtls_ecdh_sm2_init( mbedtls_ecdh_sm2_context *ctx );

/**
 * \brief           Free context
 *
 * \param ctx       Context to free
 */
void mbedtls_ecdh_sm2_free( mbedtls_ecdh_sm2_context *ctx );

/**
 * \brief           Generate a public key and a TLS ServerKeyExchange payload.
 *                  (First function used by a TLS server for ECDH_SM2E.)
 *
 * \param ctx       ECDH_SM2 context
 * \param olen      number of chars written
 * \param buf       destination buffer
 * \param blen      length of buffer
 * \param f_rng     RNG function
 * \param p_rng     RNG parameter
 *
 * \note            This function assumes that ctx->grp has already been
 *                  properly set (for example using mbedtls_ecp_group_load).
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_make_params( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );

/**
 * \brief           Generate SM2's  S1(S2) and SA(SB) to check key exchange.
 *                  (First function used by a GM SSL.)
 *
 * \param ctx       ECDH_SM2 context
 * \param buf       destination buffer
 * \param blen      length of buffer
 *
 * \note            This function assumes that ctx->grp has already been
 *                  properly set (for example using mbedtls_ecp_group_load).
 *
 * \return          0 if successful, or -1 error
 */
int mbedtls_ecdh_sm2_make_params2( mbedtls_ecdh_sm2_context *ctx,
                      unsigned char *buf, size_t blen);

/**
 * \brief           Parse and procress a TLS ServerKeyExhange payload.
 *                  (First function used by a TLS client for ECDH_SM2E.)
 *
 * \param ctx       ECDH_SM2 context
 * \param buf       pointer to start of input buffer
 * \param end       one past end of buffer
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_read_params( mbedtls_ecdh_sm2_context *ctx,
                      const unsigned char **buf, const unsigned char *end );

/**
 * \brief           Setup an ECDH_SM2 context from an EC key.
 *                  (Used by clients and servers in place of the
 *                  ServerKeyEchange for static ECDH_SM2: import ECDH_SM2 parameters
 *                  from a certificate's EC key information.)
 *
 * \param ctx       ECDH_SM2 constext to set
 * \param key       EC key to use
 * \param side      Is it our key (1) or the peer's key (0) ?
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_get_params( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_sm2_side side );

/**
 * \brief           Setup an ECDH_SM2 context from an EC key.
 *                  (Used by clients and servers to get our permanent private key
 *                  and peer's permanent public key)
 *
 * \param ctx       ECDH_SM2 constext to set
 * \param key       EC key to use
 * \param side      Is it our key (1) or the peer's key (0) ?
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_get_params2( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_sm2_side side );

/**
 * \brief           Setup an ECDH_SM2 context from an EC key.
 *                  (Used by clients and servers to get Z value for SM2
 *                  of our and peer's)
 *
 * \param ctx       ECDH_SM2 constext to set
 * \param key       EC key to use
 * \param id        input, id buffer
 * \param ilen      input, length of id buffer
 * \param side      Is it our key (1) or the peer's key (0) ?
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_get_params3( mbedtls_ecdh_sm2_context *ctx, const mbedtls_ecp_keypair *key, const unsigned char *id,
                                      size_t ilen, mbedtls_ecdh_sm2_side side );

/**
 * \brief           Setup an ECDH_SM2 context for shared secret key calc.
 *                  (set Z output secret key length for SM2 and SM2  secret key calc role ( our and peer's )
 *                  used by clients and servers )
 *
 * \param ctx       ECDH_SM2 constext to set
 * \param zlen      input, length of z share secret key
 * \param side      Is it our shared secret key calc (0) or the peer's shared secret key calc (1) ?
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_get_params4( mbedtls_ecdh_sm2_context *ctx, size_t zlen, mbedtls_ecdh_sm2_side side );

/**
 * \brief           Generate a public key and a TLS ClientKeyExchange payload.
 *                  (Second function used by a TLS client for ECDH_SM2(E).)
 *
 * \param ctx       ECDH_SM2 context
 * \param olen      number of bytes actually written
 * \param buf       destination buffer
 * \param blen      size of destination buffer
 * \param f_rng     RNG function
 * \param p_rng     RNG parameter
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_make_public( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );

/**
 * \brief           Parse and process a TLS ClientKeyExchange payload.
 *                  (Second function used by a TLS server for ECDH_SM2(E).)
 *
 * \param ctx       ECDH_SM2 context
 * \param buf       start of input buffer
 * \param blen      length of input buffer
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_read_public( mbedtls_ecdh_sm2_context *ctx,
                      const unsigned char *buf, size_t blen );


/* FIXME: ephem_point_len should be both input and output */
int mbedtls_ecdh_sm2_prepare(mbedtls_ecdh_sm2_context *ctx, unsigned char *ephem_point,
    size_t *ephem_point_len);


/**
 * \brief           Derive and export the shared secret.
 *                  (Last function used by both TLS client en servers.)
 *
 * \param ctx       ECDH_SM2 context
 * \param olen      number of bytes written
 * \param buf       destination buffer
 * \param blen      buffer length
 * \param f_rng     RNG function, see notes for \c mbedtls_ecdh_sm2_compute_shared()
 * \param p_rng     RNG parameter
 *
 * \return          0 if successful, or an MBEDTLS_ERR_ECP_XXX error code
 */
int mbedtls_ecdh_sm2_calc_secret( mbedtls_ecdh_sm2_context *ctx, size_t *olen,
                                  unsigned char *buf, size_t blen,
                                  int (*f_rng)(void *, unsigned char *, size_t),
                                  void *p_rng );


#ifdef __cplusplus
}
#endif

#endif /* ecdh_sm2.h */

