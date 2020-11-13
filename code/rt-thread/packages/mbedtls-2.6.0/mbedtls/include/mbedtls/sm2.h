#ifndef MBEDTLS_SM2_H
#define MBEDTLS_SM2_H

#include "ecp.h"
#include <drv_crypto.h>

#define GET_WORD_LEN(bitLen)  ( ( bitLen + 31 ) / 32 )
#define GET_BYTE_LEN(bitLen)  ( ( bitLen + 7 ) / 8 )

int mbedtls_sm2_genkey( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q );

int mbedtls_sm2_e_get( mbedtls_ecp_group *grp, const unsigned char *m, size_t mlen,
                         const unsigned char *z, size_t zlen, unsigned char *e, size_t elen);

int mbedtls_sm2_z_get( mbedtls_ecp_group *grp, mbedtls_ecp_point *Q,
                         const unsigned char *id, size_t ilen,
                         unsigned char *z, size_t zlen);

int mbedtls_sm2_encrypt( mbedtls_ecp_group *grp,  mbedtls_ecp_point *Q,
                         const unsigned char *m, size_t mlen,
                         unsigned char *buf, size_t *blen);

int mbedtls_sm2_decrypt( mbedtls_ecp_group *grp, mbedtls_mpi *d, const unsigned char *buf,
                         size_t blen, unsigned char *m, size_t *mlen);


#endif /* MBEDTLS_SM2_H */

