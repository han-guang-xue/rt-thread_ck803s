#ifndef __BIGNUM_H__ 
#define __BIGNUM_H__ 

#include <sysdep.h>

/**
 * function: out = a mod b
 * caution:
 *     1. b must be odd, and please make sure b_nwords is real word length of b
 *     2. pleae make sure a_nwords <= 256, b_nwords <= 128,
 *     3. real bit length of a can not be bigger than 2*(real bit length of b)
 */
int32 bn_mod(uint32 *a, uint32 *b, uint32 *out, uint32 a_nwords, uint32 b_nwords);

/* function: compare big integer a and b
 * return:
 *     0:a=b,   1:a>b,   -1: a<b
 */
int32 bn_cmp(uint32 *a, uint32 *b, uint32 a_nwords, uint32 b_nwords);

/** 
 * function: out = a+b
 * caution:
 *     1. please make sure nwords is not bigger than 128
 */
int32 bn_add(const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/** 
 * function: out = a-b
 * caution:
 *     1. please make sure nwords is not bigger than 128
 */
int32 bn_sub(const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/** 
 * function: out = a*b
 * caution:
 *     1. please make sure nwords is not bigger than 64 
 *     2. please make sure out buffer word length is bigger than (2*max_bit_len(a,b)+0x1F)>>5
 */
int32 bn_mul(const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/** 
 * function: out = (a+b) mod modulus
 * caution:
 *     1. please make sure nwords is not bigger than 128
 *     2. please make sure a < modulos, b < modulus
 */
int32 bn_modadd(const uint32 *modulus, const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/** 
 * function: out = (a-b) mod modulus
 * caution:
 *     1. please make sure wordLen is not bigger than 128
 *     2. please make sure a < modulos, b < modulos
 */
int32 bn_modsub(const uint32 *modulus, const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/**
 * function: out = (a*b) mod modulus
 * caution:
 *     1. please make sure nwords <= 128, and a < modulos, b < modulos
 *     2. modulus must be odd
 */
int32 bn_modmul(const uint32 *modulus, const uint32 *a, const uint32 *b, uint32 *out, uint32 nwords);

/** 
 * function: mod exponent
 * caution:
 *     1. please make sure exp_nwords <= mod_nwords<= 128
 *     2. modulos must be odd
 */
int32 bn_modexp(const uint32 *modulus, const uint32 *exponent, const uint32 *base, uint32 *out, uint32 mod_nwords, uint32 exp_nwords);

/**
 * function: out = a^(-1) mod modulus
 * caution:
 *     1. please make sure a_nwords <= mod_nwords <= 128 and a < modulos
 */
int32 bn_modinv(const uint32 *modulus, const uint32 *a, uint32 *out, uint32 mod_nwords, uint32 a_nwords);

#endif
