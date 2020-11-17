# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 201112L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 1
#define __GNUC__ 6
#define __GNUC_MINOR__ 3
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "6.3.0"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __OPTIMIZE__ 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 8
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 4
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ long int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1010
#define __USING_SJLJ_EXCEPTIONS__ 1
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0x7fffffffL
#define __WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffffL
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffUL
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST32_MAX__ 0x7fffffffL
#define __INT32_C(c) c ## L
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffU
#define __UINT32_C(c) c ## U
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7fffffff
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __UINT_FAST8_MAX__ 0xffffffffU
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.4028234663852886e+38F
#define __FLT_MIN__ 1.1754943508222875e-38F
#define __FLT_EPSILON__ 1.1920928955078125e-7F
#define __FLT_DENORM_MIN__ 1.4012984643248171e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_MIN__ ((double)2.2250738585072014e-308L)
#define __DBL_EPSILON__ ((double)2.2204460492503131e-16L)
#define __DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 53
#define __LDBL_DIG__ 15
#define __LDBL_MIN_EXP__ (-1021)
#define __LDBL_MIN_10_EXP__ (-307)
#define __LDBL_MAX_EXP__ 1024
#define __LDBL_MAX_10_EXP__ 308
#define __DECIMAL_DIG__ 17
#define __LDBL_MAX__ 1.7976931348623157e+308L
#define __LDBL_MIN__ 2.2250738585072014e-308L
#define __LDBL_EPSILON__ 2.2204460492503131e-16L
#define __LDBL_DENORM_MIN__ 4.9406564584124654e-324L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __SFRACT_FBIT__ 7
#define __SFRACT_IBIT__ 0
#define __SFRACT_MIN__ (-0.5HR-0.5HR)
#define __SFRACT_MAX__ 0X7FP-7HR
#define __SFRACT_EPSILON__ 0x1P-7HR
#define __USFRACT_FBIT__ 8
#define __USFRACT_IBIT__ 0
#define __USFRACT_MIN__ 0.0UHR
#define __USFRACT_MAX__ 0XFFP-8UHR
#define __USFRACT_EPSILON__ 0x1P-8UHR
#define __FRACT_FBIT__ 15
#define __FRACT_IBIT__ 0
#define __FRACT_MIN__ (-0.5R-0.5R)
#define __FRACT_MAX__ 0X7FFFP-15R
#define __FRACT_EPSILON__ 0x1P-15R
#define __UFRACT_FBIT__ 16
#define __UFRACT_IBIT__ 0
#define __UFRACT_MIN__ 0.0UR
#define __UFRACT_MAX__ 0XFFFFP-16UR
#define __UFRACT_EPSILON__ 0x1P-16UR
#define __LFRACT_FBIT__ 31
#define __LFRACT_IBIT__ 0
#define __LFRACT_MIN__ (-0.5LR-0.5LR)
#define __LFRACT_MAX__ 0X7FFFFFFFP-31LR
#define __LFRACT_EPSILON__ 0x1P-31LR
#define __ULFRACT_FBIT__ 32
#define __ULFRACT_IBIT__ 0
#define __ULFRACT_MIN__ 0.0ULR
#define __ULFRACT_MAX__ 0XFFFFFFFFP-32ULR
#define __ULFRACT_EPSILON__ 0x1P-32ULR
#define __LLFRACT_FBIT__ 63
#define __LLFRACT_IBIT__ 0
#define __LLFRACT_MIN__ (-0.5LLR-0.5LLR)
#define __LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR
#define __LLFRACT_EPSILON__ 0x1P-63LLR
#define __ULLFRACT_FBIT__ 64
#define __ULLFRACT_IBIT__ 0
#define __ULLFRACT_MIN__ 0.0ULLR
#define __ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR
#define __ULLFRACT_EPSILON__ 0x1P-64ULLR
#define __SACCUM_FBIT__ 7
#define __SACCUM_IBIT__ 8
#define __SACCUM_MIN__ (-0X1P7HK-0X1P7HK)
#define __SACCUM_MAX__ 0X7FFFP-7HK
#define __SACCUM_EPSILON__ 0x1P-7HK
#define __USACCUM_FBIT__ 8
#define __USACCUM_IBIT__ 8
#define __USACCUM_MIN__ 0.0UHK
#define __USACCUM_MAX__ 0XFFFFP-8UHK
#define __USACCUM_EPSILON__ 0x1P-8UHK
#define __ACCUM_FBIT__ 15
#define __ACCUM_IBIT__ 16
#define __ACCUM_MIN__ (-0X1P15K-0X1P15K)
#define __ACCUM_MAX__ 0X7FFFFFFFP-15K
#define __ACCUM_EPSILON__ 0x1P-15K
#define __UACCUM_FBIT__ 16
#define __UACCUM_IBIT__ 16
#define __UACCUM_MIN__ 0.0UK
#define __UACCUM_MAX__ 0XFFFFFFFFP-16UK
#define __UACCUM_EPSILON__ 0x1P-16UK
#define __LACCUM_FBIT__ 31
#define __LACCUM_IBIT__ 32
#define __LACCUM_MIN__ (-0X1P31LK-0X1P31LK)
#define __LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK
#define __LACCUM_EPSILON__ 0x1P-31LK
#define __ULACCUM_FBIT__ 32
#define __ULACCUM_IBIT__ 32
#define __ULACCUM_MIN__ 0.0ULK
#define __ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK
#define __ULACCUM_EPSILON__ 0x1P-32ULK
#define __LLACCUM_FBIT__ 31
#define __LLACCUM_IBIT__ 32
#define __LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)
#define __LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK
#define __LLACCUM_EPSILON__ 0x1P-31LLK
#define __ULLACCUM_FBIT__ 32
#define __ULLACCUM_IBIT__ 32
#define __ULLACCUM_MIN__ 0.0ULLK
#define __ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK
#define __ULLACCUM_EPSILON__ 0x1P-32ULLK
#define __QQ_FBIT__ 7
#define __QQ_IBIT__ 0
#define __HQ_FBIT__ 15
#define __HQ_IBIT__ 0
#define __SQ_FBIT__ 31
#define __SQ_IBIT__ 0
#define __DQ_FBIT__ 63
#define __DQ_IBIT__ 0
#define __TQ_FBIT__ 127
#define __TQ_IBIT__ 0
#define __UQQ_FBIT__ 8
#define __UQQ_IBIT__ 0
#define __UHQ_FBIT__ 16
#define __UHQ_IBIT__ 0
#define __USQ_FBIT__ 32
#define __USQ_IBIT__ 0
#define __UDQ_FBIT__ 64
#define __UDQ_IBIT__ 0
#define __UTQ_FBIT__ 128
#define __UTQ_IBIT__ 0
#define __HA_FBIT__ 7
#define __HA_IBIT__ 8
#define __SA_FBIT__ 15
#define __SA_IBIT__ 16
#define __DA_FBIT__ 31
#define __DA_IBIT__ 32
#define __TA_FBIT__ 63
#define __TA_IBIT__ 64
#define __UHA_FBIT__ 8
#define __UHA_IBIT__ 8
#define __USA_FBIT__ 16
#define __USA_IBIT__ 16
#define __UDA_FBIT__ 32
#define __UDA_IBIT__ 32
#define __UTA_FBIT__ 64
#define __UTA_IBIT__ 64
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 1
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 1
#define __GCC_ATOMIC_SHORT_LOCK_FREE 1
#define __GCC_ATOMIC_INT_LOCK_FREE 1
#define __GCC_ATOMIC_LONG_LOCK_FREE 1
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 1
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __csky__ 2
#define __CSKY__ 2
#define __ckcore__ 2
#define __CKCORE__ 2
#define __CSKYABIV2__ 1
#define __cskyabiv2__ 1
#define __CSKYABI__ 2
#define __cskyabi__ 2
#define __ckcoreLE__ 1
#define __cskyLE__ 1
#define __cskyle__ 1
#define __CSKYLE__ 1
#define __CK803__ 1
#define __ck803__ 1
#define __CK803S__ 1
#define __ck803s__ 1
#define __csky_soft_float__ 1
#define __CSKY_SOFT_FLOAT__ 1
#define __csky_required_printf__ 1
#define __CSKY_REQUIRED_PRINTF__ 1
#define __ELF__ 1
# 1 "<command-line>"
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c"





# 1 "../libraries/inc/tih/phy.h" 1

#define __PHY_H__ 

# 1 "../libraries/inc/tih/sysdep.h" 1

#define __SYSDEP_H__ 


#define uint64 unsigned long long



#define uint32 unsigned int



#define int32 int



#define uint16 unsigned short



#define int16 short



#define uint8 unsigned char



#define int8 char



#define NULL ((void *)0)



#define bool int



#define FALSE 0



#define TRUE 1



#define read32(addr) (*(volatile uint32 *)(addr))



#define write32(addr,val) (*(volatile uint32 *)(addr) = (val))



#define DIR_IN 0



#define DIR_OUT 1



#define ADDR_INC 0



#define ADDR_FIX 1



#define __isr __attribute__((isr))




#define __packed __attribute__((packed))
#define __align4 __attribute__((aligned(4)))

#define __fast __attribute__((section(".fast")))
#define __exdata __attribute__((section(".exdata"),zero_init))
#define __overlay __attribute__((section(".overlay")))

#define __weak __attribute__((weak))
# 5 "../libraries/inc/tih/phy.h" 2

typedef enum {
    SPEED_1000 = 0,
    SPEED_100 = 1,
    SPEED_10 = 2,
    SPEED_AUTO = 3
}speed_t;

typedef enum {
    DUPLEX_FULL = 0,
    DUPLEX_HALF = 1
}duplex_t;

typedef struct {
    int linked;
    duplex_t duplex;
    speed_t speed;
}link_status_t;

typedef struct {

    int (*phy_init)(unsigned int gmac_id);
    unsigned int (*phy_mmd_max_fre_get)(unsigned int gmac_id);
    void (*phy_intr_enable)(unsigned int gmac_id, unsigned int intr_src);
    void (*phy_intr_disable)(unsigned int gmac_id, unsigned int intr_src);
    unsigned int (*phy_intr_status)(unsigned int gmac_id);
    void (*phy_intr_clear)(unsigned int gmac_id, unsigned int intr_src);
    int (*phy_speed_duplex_change)(unsigned int gmac_id, duplex_t duplex, speed_t speed);
    link_status_t (*phy_link_status_get)(unsigned int gmac_id);
} phy_ops_t;

extern const phy_ops_t rtl8211_phy_ops;
extern const phy_ops_t m88e1512_phy_ops;
# 7 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c" 2
# 1 "../libraries/src/phy_rtl8211_hw.h" 1

#define __RTL8211_H__ 

#define RTL8211_REG_BMCR 0
#define RTL8211_REG_BMSR 1
#define RTL8211_REG_ID1 2
#define RTL8211_REG_ID2 3
#define RTL8211_REG_ANAR 4
#define RTL8211_REG_ANLPAR 5
#define RTL8211_REG_ANER 6
#define RTL8211_REG_ANNPTR 7
#define RTL8211_REG_ANLPNP 8
#define RTL8211_REG_1000_CR 9
#define RTL8211_REG_1000_SR 10
#define RTL8211_REG_MMD_REGCR 13
#define RTL8211_REG_MMD_ADDAR 14

#define RTL8211_REG_PHYCR 0x10
#define RTL8211_REG_PHYSR 0x11
#define RTL8211_REG_INER 0x12
#define RTL8211_REG_INSR 0x13

#define RTL8211_REG_EEEAR 0x3c




#define RTL8211_BMCR_SPEED_M (1 << 6)
#define RTL8211_BMCR_COLLISION (1 << 7)
#define RTL8211_BMCR_DUPLEX (1 << 8)
#define RTL8211_BMCR_RESTART_AUTO_NEG (1 << 9)
#define RTL8211_BMCR_ISOLATE (1 << 10)
#define RTL8211_BMCR_POWER_DOWN (1 << 11)
#define RTL8211_BMCR_AUTO_NEG_EN (1 << 12)
#define RTL8211_BMCR_SPEED_L (1 << 13)
#define RTL8211_BMCR_LOOPBACK (1 << 14)
#define RTL8211_BMCR_RESET (1 << 15)




#define RTL8211_BMSR_EXTENDED (1 << 0)
#define RTL8211_BMSR_JABBER (1 << 1)
#define RTL8211_BMSR_LINK_STATUS (1 << 2)
#define RTL8211_BMSR_AUTO_NEG (1 << 3)
#define RTL8211_BMSR_REMOTE_FAULT (1 << 4)
#define RTL8211_BMSR_AUTO_NEG_COMPLETE (1 << 5)
#define RTL8211_BMSR_MF_PREAMBLE (1 << 6)
#define RTL8211_BMSR_10_T_HALF (1 << 11)
#define RTL8211_BMSR_10_T_FULL (1 << 12)
#define RTL8211_BMSR_100_TX_HALF (1 << 13)
#define RTL8211_BMSR_100_TX_FULL (1 << 14)
#define RTL8211_BMSR_100_T4 (1 << 15)




#define RTL8211_ANAR_SELECTOR(x) ((x & 0x1f) << 0)
#define RTL8211_ANAR_10_HD (1 << 5)
#define RTL8211_ANAR_10_FD (1 << 6)
#define RTL8211_ANAR_100_HD (1 << 7)
#define RTL8211_ANAR_100_FD (1 << 8)
#define RTL8211_ANAR_T4 (1 << 9)
#define RTL8211_ANAR_ASM(x) ((x & 0x3) << 10)
#define RTL8211_ANAR_RF (1 << 13)
#define RTL8211_ANAR_ACK (1 << 14)
#define RTL8211_ANAR_NP (1 << 15)




#define RTL8211_ANLPAR_SELECTOR(x) ((x & 0x1f) << 0)
#define RTL8211_ANLPAR_10_HD (1 << 5)
#define RTL8211_ANLPAR_10_FD (1 << 6)
#define RTL8211_ANLPAR_100_HD (1 << 7)
#define RTL8211_ANLPAR_100_FD (1 << 8)
#define RTL8211_ANLPAR_T4 (1 << 9)
#define RTL8211_ANLPAR_PAUSE (1 << 10)
#define RTL8211_ANLPAR_LP_DIR (1 << 11)
#define RTL8211_ANLPAR_RF (1 << 13)
#define RTL8211_ANLPAR_ACK (1 << 14)
#define RTL8211_ANLPAR_NP (1 << 15)




#define RTL8211_ANER_PAGE_RX (1 << 1)




#define RTL8211_1000_CR_HD (1 << 8)
#define RTL8211_1000_CR_FD (1 << 9)




#define RTL8211_1000_SR_HD (1 << 10)
#define RTL8211_1000_SR_FD (1 << 11)




#define RTL8211_MMD_REGCR_DEVAD(x) ((x & 0x1f) << 0)
#define RTL8211_MMD_REGCR_MODE(x) ((x & 0x3) << 14)
#define RTL8211_MMD_MODE_ADDR 0x0
#define RTL8211_MMD_MODE_NO_POST 0x1
#define RTL8211_MMD_MODE_READ_WRITE 0x2
#define RTL8211_MMD_MODE_WRITE_ONLY 0x3




#define RTL8211_PHYCR_JABBER (1 << 0)
#define RTL8211_PHYCR_CLK125 (1 << 4)
#define RTL8211_PHYCR_MDI (1 << 5)
#define RTL8211_PHYCR_CROSSOVER (1 << 6)
#define RTL8211_PHYCR_FORCE_LINK (1 << 10)
#define RTL8211_PHYCR_ASSERT_CRS (1 << 11)
#define RTL8211_PHYCR_FPR(x) ((x & 7) << 12)
#define RTL8211_PHYCR_RXC (1 << 15)




#define RTL8211_PHYSR_JABBER(x) (x & 1)
#define RTL8211_PHYSR_PRE_LINK(x) ((x >> 1) & 1)
#define RTL8211_PHYSR_MDI(x) ((x >> 6) & 1)
#define RTL8211_PHYSR_LINK (1 << 10)
#define RTL8211_PHYSR_DUPLEX(x) ((x >> 13) & 1)
#define RTL8211_PHYSR_SPEED(x) ((x >> 14) & 3)





#define RTL8211_INSR_JABBER (1 << 0)
#define RTL8211_INSR_FALSECARRIER (1 << 8)
#define RTL8211_INSR_SYMBOL_ERR (1 << 9)
#define RTL8211_INSR_LINK_CHG (1 << 10)
#define RTL8211_INSR_AUTO_NEO (1 << 11)
#define RTL8211_INSR_PAGE_RX (1 << 12)
#define RTL8211_INSR_AUTO_NEO_ERR (1 << 15)
# 8 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c" 2
# 1 "../libraries/inc/tih/gmac.h" 1





#define __GMAC_H__ 




#define GMAC0 0
#define GMAC1 1




#define GMAC0_IRQ_NUM 6
#define GMAC1_IRQ_NUM 7




#define GMAC_INT_AHB_ERR (1 << 8)
#define GMAC_INT_TPKT_LOST (1 << 7)
#define GMAC_INT_TXBUF_UNAVA (1 << 6)
#define GMAC_INT_TPKT2F (1 << 5)
#define GMAC_INT_TPKT2E (1 << 4)
#define GMAC_INT_RPKT_LOST (1 << 3)
#define GMAC_INT_RXBUF_UNAVA (1 << 2)
#define GMAC_INT_RPKT2F (1 << 1)
#define GMAC_INT_RPKT2B (1 << 0)




#define WAKEUP_FRAME4 (1 << 6)
#define WAKEUP_FRAME3 (1 << 5)
#define WAKEUP_FRAME2 (1 << 4)
#define WAKEUP_FRAME1 (1 << 3)
#define WAKEUP_MAGICPKT (1 << 2)
#define WAKEUP_LINKUP (1 << 1)
#define WAKEUP_LINKDOWN (1 << 0)




#define FILTER_ADDR_BCAST (1 << 11)
#define FILTER_ADDR_MCAST (1 << 10)
#define FILTER_ADDR_MCAST_HASH (1 << 9)
#define FILTER_ADDR_ALL (1 << 8)




#define CHKSUM_OFFLOAD_UDP_TX (1 << 0)
#define CHKSUM_OFFLOAD_UDP_RX (1 << 1)
#define CHKSUM_OFFLOAD_TCP_TX (1 << 2)
#define CHKSUM_OFFLOAD_TCP_RX (1 << 3)
#define CHKSUM_OFFLOAD_IP4_TX (1 << 4)
#define CHKSUM_OFFLOAD_IP4_RX (1 << 5)
#define CHKSUM_OFFLOAD_IP6_TX (1 << 6)
#define CHKSUM_OFFLOAD_IP6_RX (1 << 7)

typedef enum wol_filter {
    WAKEUP_FRAME_FILTER_1 = 0,
    WAKEUP_FRAME_FILTER_2 = 1,
    WAKEUP_FRAME_FILTER_3 = 2,
    WAKEUP_FRAME_FILTER_4 = 3,
}wol_filter_t;

typedef struct gmac_stats {
    unsigned int rx_packets;
    unsigned int tx_packets;
    unsigned int rx_errors;
    unsigned int tx_errors;
    unsigned int rx_multicast;
    unsigned int rx_broadcast;
    unsigned int rx_runt;
    unsigned int rx_pause;


    unsigned int rx_length_errors;
    unsigned int rx_crc_errors;
    unsigned int rx_align_errors;
    unsigned int rx_missed_errors;
    unsigned int rx_collisions_errors;


    unsigned int tx_collisions_errors;
    unsigned int tx_late_collisions_errors;
    unsigned int tx_underun_errors;
}gmac_stats_t;

unsigned short gmac_phy_mmd_read16(unsigned int gmac_id, unsigned short reg_addr);
void gmac_phy_mmd_write16(unsigned int gmac_id, unsigned short value, unsigned short reg_addr);
void gmac_phy_addr_set(unsigned int gmac_id, unsigned int phy_addr);
int gmac_phy_mmd_clk_set(unsigned int gmac_id, unsigned int phy_mmd_clk);
void gmac_addr_filter_set(unsigned int gmac_id, unsigned int filter_bits);
unsigned int gmac_addr_filter_get(unsigned int gmac_id);
unsigned char gmac_hash_filter_set(unsigned int gmac_id, const unsigned char *mac_addr);
void gmac_hash_filter_get(unsigned int gmac_id, unsigned int *mathH, unsigned int *mathL);
void gmac_intr_enable(unsigned int gmac_id, unsigned int intr_src);
void gmac_intr_disable(unsigned int gmac_id, unsigned int intr_src);
unsigned int gmac_intr_status(unsigned int gmac_id);
void gmac_intr_clear(unsigned int gmac_id, unsigned int intr_src);
void gmac_mac_addr_set(unsigned int gmac_id, const unsigned char *mac_addr);
void gmac_mac_addr_get(unsigned int gmac_id, unsigned char *mac_addr);
void gmac_flow_ctrl_enable(unsigned int gmac_id, unsigned short pause_time, unsigned char jam_len);
void gmac_flow_ctrl_disable(unsigned int gmac_id);
void gmac_tx_enable(unsigned int gmac_id);
void gmac_tx_disable(unsigned int gmac_id);
void gmac_rx_enable(unsigned int gmac_id);
void gmac_rx_disable(unsigned int gmac_id);
void gmac_jumbo_frame_enable(unsigned int gmac_id);
void gmac_jumbo_frame_disable(unsigned int gmac_id);
void gmac_chksum_offload_set(unsigned int gmac_id, unsigned int chksum_offload_bits);
unsigned int gmac_checksum_offload_get(unsigned int gmac_id);
void gmac_wol_wakeup_frame_filter_set(unsigned int gmac_id,
                                      wol_filter_t filter_id,
                                      unsigned int *wakeup_frame_mask,
                                      unsigned char *wakeup_frame,
                                      unsigned int frame_len);
void gmac_wol_wakeup_event_set(unsigned int gmac_id, unsigned int wakeup_event_bits);
unsigned int gmac_wol_wakeup_event_get(unsigned int gmac_id);
void gmac_wol_mode_enter(unsigned int gmac_id);
void gmac_wol_mode_exit(unsigned int gmac_id);
unsigned int gmac_wol_state_poll(unsigned int gmac_id);
void gmac_speed_duplex_set(unsigned int gmac_id, speed_t speed, duplex_t duplex);
void gmac_statistics_get(unsigned int gmac_id, gmac_stats_t *gmac_stats);
int gmac_tx_queue_init(unsigned int gmac_id, unsigned char num);
int gmac_rx_queue_init(unsigned int gmac_id, unsigned char num, unsigned int size);
int gmac_frame_transmit(unsigned int gmac_id, unsigned char *frame_data, unsigned int frame_len);
unsigned char *gmac_frame_transmitted_buf_poll(unsigned int gmac_id);
unsigned int gmac_frame_recv_poll(unsigned int gmac_id);
void gmac_rx_buf_attach(unsigned int gmac_id, unsigned char *buf);
unsigned char * gmac_rx_valid_buf(unsigned int gmac_id);
void gmac_rx_buf_processed(unsigned int gmac_id);
int gmac_hw_init(unsigned int gmac_id);
int gmac_hw_deinit(unsigned int gmac_id);
# 9 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c" 2

int rtl8211_phy_speed_duplex_change(unsigned int gmac_id, duplex_t duplex, speed_t speed);

static int rtl8211_phy_auto_neo(unsigned int gmac_id)
{
    unsigned short tmp16;
    unsigned int times;


    gmac_phy_mmd_write16(gmac_id, 0x0007, 13);
    gmac_phy_mmd_write16(gmac_id, 0x003C, 14);
    gmac_phy_mmd_write16(gmac_id, 0x4007, 13);
    gmac_phy_mmd_write16(gmac_id, 0x0, 14);


    gmac_phy_mmd_write16(gmac_id, 0x0003, 31);
    gmac_phy_mmd_write16(gmac_id, 0x3246, 25);
    gmac_phy_mmd_write16(gmac_id, 0x0000, 31);

    tmp16 = gmac_phy_mmd_read16(gmac_id, 4);
    tmp16 &= ~(1<<11);
    tmp16 |= (1<<10);
    gmac_phy_mmd_write16(gmac_id, tmp16, 4);


    tmp16 = gmac_phy_mmd_read16(gmac_id, 0);
    tmp16 |= ((1 << 9) | (1 << 12));
    gmac_phy_mmd_write16(gmac_id, tmp16, 0);


    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        for (unsigned int i = 0; i < 100; i++) {};
        tmp16 = gmac_phy_mmd_read16(gmac_id, 0);
    } while ((tmp16 & (1 << 9)) > 0) ;

    return 0;
}

int rtl8211_phy_init(unsigned int gmac_id)
{
    int ret;

    ret = rtl8211_phy_speed_duplex_change(gmac_id, DUPLEX_FULL, SPEED_AUTO);

    return ret;
}

unsigned int rtl8211_phy_mmd_fre_get(unsigned int gmac_id)
{

    return 1000 * 1000 * 1000 / 400;
}

void rtl8211_phy_intr_enable(unsigned int gmac_id, unsigned int intr_src)
{
    gmac_phy_mmd_write16(gmac_id, 0x0, 0x12);
    gmac_phy_mmd_write16(gmac_id, (1 << 10), 0x12);
 }

void rtl8211_phy_intr_disable(unsigned int gmac_id, unsigned int intr_src)
{
    unsigned short value;


    value = gmac_phy_mmd_read16(gmac_id, 0x12);
    value &= ~(1 << 10);
    gmac_phy_mmd_write16(gmac_id, value, 0x12);
}

unsigned int rtl8211_phy_intr_status(unsigned int gmac_id)
{
    unsigned short isr;

    isr = gmac_phy_mmd_read16(gmac_id, 0x13);

    return isr;
}

void rtl8211_phy_intr_clear(unsigned int gmac_id, unsigned int intr_src)
{

    gmac_phy_mmd_read16(gmac_id, 0x13);
}

link_status_t __attribute__((section(".fast"))) rtl8211_phy_link_status_get(unsigned int gmac_id)
{
    unsigned short value;
    link_status_t status;

    status.linked = 0;

    value = gmac_phy_mmd_read16(gmac_id, 0x11);
    if (value != 0xFFFF) {
        if (value & (1 << 10)) {
            status.linked = 1;

            if (0 == ((value >> 13) & 1)) {
                status.duplex = DUPLEX_HALF;
            } else {
                status.duplex = DUPLEX_FULL;
            }

            switch (((value >> 14) & 3)) {
                 case 0x2:
                     status.speed = SPEED_1000;
                     break;
                 case 0x1:
                     status.speed = SPEED_100;
                     break;
                 case 0x0:
                     status.speed = SPEED_10;
                     break;
                 default:
                     break;
            }

            return status;
        }
    }

    return status;
}





int rtl8211_phy_speed_duplex_change(unsigned int gmac_id, duplex_t duplex, speed_t speed)
{
    unsigned short tmp16 = 0x0;
    int ret;


    tmp16 = gmac_phy_mmd_read16(gmac_id, 9);
    tmp16 &= ~((1 << 8) | (1 << 9));
    gmac_phy_mmd_write16(gmac_id, tmp16, 9);


    tmp16 = gmac_phy_mmd_read16(gmac_id, 4);
    tmp16 &= ~((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8));
    gmac_phy_mmd_write16(gmac_id, tmp16, 4);

    if (SPEED_1000 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, 9);

        if (DUPLEX_FULL == duplex) {
            tmp16 |= (1 << 9);
        }
        else if (DUPLEX_HALF == duplex) {
            tmp16 |= (1 << 8);
        }

        gmac_phy_mmd_write16(gmac_id, tmp16, 9);
    } else if (SPEED_100 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, 4);
        if (DUPLEX_FULL == duplex) {
            tmp16 |= (1 << 8);
        } else if (DUPLEX_HALF == duplex) {
            tmp16 |= (1 << 7);
        }

        gmac_phy_mmd_write16(gmac_id, tmp16, 4);
    } else if (SPEED_10 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, 4);
        if (DUPLEX_FULL == duplex) {
            tmp16 |= (1 << 6);
        } else if (DUPLEX_HALF == duplex) {
            tmp16 |= (1 << 5);
        }

        gmac_phy_mmd_write16(gmac_id, tmp16, 4);
    } else {
        tmp16 = gmac_phy_mmd_read16(gmac_id, 9);
        tmp16 |= ((1 << 9) | (1 << 8));
        gmac_phy_mmd_write16(gmac_id, tmp16, 9);

        tmp16 = gmac_phy_mmd_read16(gmac_id, 4);
        tmp16 |= ((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8));
        gmac_phy_mmd_write16(gmac_id, tmp16, 4);
    }


    ret = rtl8211_phy_auto_neo(gmac_id);

    return ret;
}


const phy_ops_t rtl8211_phy_ops =
{
    rtl8211_phy_init,
    rtl8211_phy_mmd_fre_get,
    rtl8211_phy_intr_enable,
    rtl8211_phy_intr_disable,
    rtl8211_phy_intr_status,
    rtl8211_phy_intr_clear,
    rtl8211_phy_speed_duplex_change,
    rtl8211_phy_link_status_get,
};
