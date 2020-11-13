#ifndef __ECC_H__
#define __ECC_H__

#include <sysdep.h>

typedef struct ecc_curve {
    uint32 ecc_p_nbits;
    uint32 ecc_n_nbits;
    uint32 *ecc_p;
    uint32 *ecc_a;
    uint32 *ecc_b;
    uint32 *ecc_gx;
    uint32 *ecc_gy;
    uint32 *ecc_n;
} ecc_curve_t;

/* 0: P on curve; other: not on curve */
int32 ecc_point_verify(ecc_curve_t *curve, uint32 *px, uint32 *py);
/* R = P + Q */
int32 ecc_point_add(ecc_curve_t *curve, uint32 *px, uint32 *py, uint32 *qx, uint32 *qy, uint32 *rx, uint32 *ry);
/* R = 2P */
int32 ecc_point_double(ecc_curve_t *curve, uint32 *px, uint32 *py, uint32 *rx, uint32 *ry);
/* R = kP */
int32 ecc_point_mul(ecc_curve_t *curve, uint32 *k, uint32 *px, uint32 *py, uint32 *rx, uint32 *ry);
/* Q = k1P1 + k2P2 */
int32 ecc_point_shamir(ecc_curve_t *curve, uint32 *k1, uint32 *P1x, uint32 *P1y, 
                                           uint32 *k2, uint32 *P2x, uint32 *P2y, 
                                           uint32 *Qx, uint32 *Qy);

#endif
