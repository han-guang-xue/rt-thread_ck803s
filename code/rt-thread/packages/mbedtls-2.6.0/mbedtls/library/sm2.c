#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_SM2_C)

#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf     printf
#endif

#include <string.h>
#include "mbedtls/sm2.h"

/*
 * Generate key pair, wrapper for conventional base point
 */
int mbedtls_sm2_genkey( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q )
{
    /* Fail cleanly on curves such as Curve25519 that can't be used for ECDSA */
    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    uint32_t nbytes = GET_BYTE_LEN(grp->pbits);
    uint8_t prikey[nbytes];
    uint8_t pubkey[nbytes << 1];

    int ret = tih_sm2_keypair_gen( prikey, pubkey );

    if(ret == 0){
        MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( d, prikey, nbytes ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &Q->X, pubkey, nbytes ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &Q->Y, pubkey + nbytes, nbytes ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &Q->Z, 1 ) );
    }
    return ret;

cleanup:
    mbedtls_mpi_free( d );
    mbedtls_ecp_point_free( Q );
    ret = -1;
    return (ret);
}

int mbedtls_sm2_e_get( mbedtls_ecp_group *grp, const unsigned char *m, size_t mlen,
                         const unsigned char *z, size_t zlen, unsigned char *e, size_t elen)
{
    int ret;

    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    ret = tih_sm2_e_get( (uint8 *)m, mlen, (uint8 *)z, e );

    return ret;
}

int mbedtls_sm2_z_get( mbedtls_ecp_group *grp, mbedtls_ecp_point *Q,
                         const unsigned char *id, size_t ilen,
                         unsigned char *z, size_t zlen)
{
    int ret;
    int nbytes;

    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
    if( ( ret = mbedtls_ecp_check_pubkey( grp, Q ) ) != 0 )
    {
        return( ret );
    }

    nbytes = GET_BYTE_LEN( grp->pbits );
    uint8_t pubkey[nbytes << 1];

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &Q->X, pubkey, nbytes) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &Q->Y, pubkey + nbytes, nbytes) );

    ret = tih_sm2_z_get( (uint8 *)id, ilen, pubkey, z );

cleanup:
    return ret;
}

int mbedtls_sm2_encrypt( mbedtls_ecp_group *grp,  mbedtls_ecp_point *Q,
                         const unsigned char *m, size_t mlen,
                         unsigned char *buf, size_t *blen)
{
    int ret;
    int nbytes;

    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
    if( ( ret = mbedtls_ecp_check_pubkey( grp, Q ) ) != 0 )
    {
        return( ret );
    }

    nbytes = GET_BYTE_LEN( grp->pbits );
    uint8_t pubkey[nbytes << 1];

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &Q->X, pubkey, nbytes) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &Q->Y, pubkey + nbytes, nbytes) );
    //unsigned char KEY_PUB[] = { 0xEC, 0x1C, 0xFC, 0xD7, 0x04, 0x54, 0x06, 0x2C, 0x54, 0x20, 0x85, 0x6B, 0x55, 0x60, 0x07, 0xC0, 0x8C, 0x93, 0xFE, 0x70, 0xCB, 0x33, 0xDF, 0x15, 0xF4, 0x7E, 0x87, 0x17, 0xC6, 0x9A, 0x2E, 0x26, 0xF6, 0x6C, 0x7B, 0xEA, 0xE7, 0x50, 0x19, 0x09, 0x00, 0x10, 0xFF, 0x99, 0x3F, 0x79, 0xA1, 0xBF, 0xC8, 0xB4, 0x51, 0x3D, 0xB1, 0xE7, 0x27, 0x9B, 0xCD, 0x86, 0x05, 0x40, 0x03, 0x88, 0x64, 0x07 };

    ret = tih_sm2_encrypt( (uint8 *)m, mlen, pubkey, buf, blen);

cleanup:
    return ret;
}

int mbedtls_sm2_decrypt( mbedtls_ecp_group *grp, mbedtls_mpi *d, const unsigned char *buf,
                         size_t blen, unsigned char *m, size_t *mlen)
{
    int ret;
    int nbytes;

    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
    if( ( ret = mbedtls_ecp_check_privkey( grp, d ) ) != 0 )
    {
        return( ret );
    }

    nbytes = GET_BYTE_LEN( grp->pbits );
    uint8_t prikey[nbytes];

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( d, prikey, nbytes) );
    ret = tih_sm2_decrypt( (uint8 *)buf, blen, prikey, m, mlen);

cleanup:
    return ret;
}

#if defined(MBEDTLS_SELF_TEST)

const unsigned char PLAIN[] = { 0xad, 0xbe, 0x13, 0xee, 0xad, 0xe1, 0xf1, 0xc8, 0xbb, 0xf1, 0x64, 0xf2, 0x1d, 0x82, 0x1e, 0x74 };
const unsigned char CIPHER[] = { 0xf6, 0x9a, 0x9e, 0x48, 0x19, 0xcf, 0x87, 0xaf, 0x0a, 0x63, 0x01, 0x63, 0x79, 0x78, 0xaa, 0x76, 0x64, 0x01, 0xde, 0xfd, 0x7a, 0x14, 0xb2, 0x94, 0x26, 0x3f, 0x74, 0xc9, 0x93, 0x05, 0xb9, 0x86, 0x4b, 0x31, 0x0d, 0x61, 0xd5, 0xaa, 0x84, 0xcb, 0xb8, 0xf4, 0x75, 0x80, 0xfc, 0x26, 0xe3, 0xb8, 0x32, 0xe2, 0x94, 0xb1, 0x9b, 0xcc, 0x21, 0x77, 0x79, 0x9b, 0x37, 0x5c, 0xab, 0xe6, 0x0c, 0x7b, 0xc7, 0x64, 0x7b, 0x5a, 0xf1, 0x9f, 0xe7, 0x70, 0x23, 0x56, 0x48, 0xce, 0x87, 0xcc, 0xbb, 0x65, 0xbd, 0x81, 0x19, 0x62, 0x21, 0xe3, 0x84, 0xe3, 0xbb, 0xdf, 0x4a, 0x79, 0xcc, 0x3a, 0x0d, 0x9d, 0xf4, 0xb8, 0xed, 0x86, 0x92, 0x62, 0xa7, 0x4f, 0x5f, 0xb1, 0xeb, 0xe7, 0x99, 0xa8, 0x51, 0x81};
const unsigned char KEY_PUB[] = { 0xe1, 0x1d, 0x15, 0xa0, 0xc3, 0x1c, 0x0b, 0xca, 0xbc, 0x03, 0x29, 0x76, 0x06, 0x03, 0x98, 0x2f, 0x2f, 0x2d, 0xcd, 0x34, 0xd1, 0xe4, 0xe0, 0x3b, 0x8d, 0x6b, 0x6a, 0xcb, 0x5e, 0x1b, 0x28, 0xa2, 0x7d, 0x2f, 0x54, 0xe7, 0x12, 0xd5, 0xc0, 0x83, 0x33, 0xd1, 0xa8, 0x4a, 0xab, 0xb7, 0xf4, 0x78, 0xbe, 0x1e, 0xba, 0x8e, 0xa0, 0x34, 0xe7, 0xea, 0xe5, 0xaa, 0x83, 0xea, 0xb8, 0x22, 0x98, 0xf2 };
const unsigned char KEY_PRI[] = { 0xec, 0x0c, 0xa0, 0x92, 0x36, 0x2c, 0x1e, 0x18, 0xcf, 0xeb, 0xfe, 0x83, 0x9c, 0x75, 0x60, 0x0a, 0xa5, 0x52, 0xe6, 0x68, 0x7c, 0x0c, 0x93, 0xfc, 0x22, 0xfb, 0x67, 0x4b, 0xb4, 0xe0, 0x56, 0x80};

int mbedtls_sm2_self_test( int verbose ){

    int ret = 0;

    mbedtls_ecp_group grp;
    mbedtls_ecp_point Q;
    mbedtls_mpi d;
    unsigned char buf[sizeof(PLAIN) + 96];
    size_t blen;
    unsigned char encrypt[sizeof(PLAIN)];

    mbedtls_ecp_group_init( &grp );
    mbedtls_ecp_point_init( &Q );
    mbedtls_mpi_init( &d );

    mbedtls_ecp_group_load( &grp, MBEDTLS_ECP_DP_SM2P256V1 );

    mbedtls_printf("SM2 encrypt test:");
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &Q.X, &KEY_PUB[0], 32 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &Q.Y, &KEY_PUB[32], 32 ) );

    MBEDTLS_MPI_CHK( mbedtls_sm2_encrypt( &grp, &Q, PLAIN, sizeof(PLAIN), buf, &blen ) );
    
    mbedtls_printf("passed\nSM2 decrypt test:");
    
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &d, KEY_PRI, 32) );
    MBEDTLS_MPI_CHK( mbedtls_sm2_decrypt( &grp, &d, CIPHER, sizeof(CIPHER), encrypt, &blen ) );

    if( memcmp( PLAIN, encrypt, sizeof(PLAIN) ) == 0 ){
        if( 0 != verbose )
            mbedtls_printf( "passed\n" );
    }else{
        if( 0 != verbose )
            mbedtls_printf( "failed\n" );
        int i = 0;
        for( i = 0;i < blen;i++){
            mbedtls_printf("0x%02x, ",encrypt[i]);  
        }
    }
    
cleanup:

    if( 0 != ret && 0 != verbose  )
        mbedtls_printf( "failed\n" );

    mbedtls_ecp_group_free( &grp );
    mbedtls_ecp_point_free( &Q );
    mbedtls_mpi_free( &d ); 

    return (ret);
}

//MSH_CMD_EXPORT( mbedtls_sm2_self_test, mbedtls_sm2_self_test )

#endif /*MBEDTLS_SELF_TEST*/

#endif /* MBEDTLS_SM2_C */

