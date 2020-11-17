# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
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
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 47 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 1
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_HDR_OPT_H 





# 1 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 1

#define __LWIPOPTS_H__ 

# 1 "./rtconfig.h" 1

#define RT_CONFIG_H__ 






#define RT_HAVING_GMAC 
#define RT_USING_ETH1 
#define RT_USING_T680 



#define RT_USING_ETH0 



#define RT_NAME_MAX 8
#define RT_ALIGN_SIZE 8
#define RT_THREAD_PRIORITY_32 
#define RT_THREAD_PRIORITY_MAX 32
#define RT_SYSTEM_CLOCK 200000000
#define RT_TICK_PER_SECOND 100
#define RT_DEBUG 
#define RT_USING_OVERFLOW_CHECK 
#define RT_DEBUG_INIT 0
#define RT_DEBUG_THREAD 0
#define RT_USING_HOOK 
#define IDLE_THREAD_STACK_SIZE 256



#define RT_USING_SEMAPHORE 
#define RT_USING_MUTEX 
#define RT_USING_EVENT 
#define RT_USING_MAILBOX 
#define RT_USING_MESSAGEQUEUE 



#define RT_USING_MEMHEAP 
#define RT_USING_SMALL_MEM 
#define RT_USING_HEAP 



#define RT_USING_DEVICE 
#define RT_USING_CONSOLE 
#define RT_CONSOLEBUF_SIZE 256
#define RT_CONSOLE_DEVICE_NAME "uart0"



#define RT_USING_COMPONENTS_INIT 
#define RT_USING_USER_MAIN 
#define RT_MAIN_THREAD_STACK_SIZE 2048



#define RT_USING_FINSH 
#define FINSH_THREAD_NAME "tshell"
#define FINSH_USING_HISTORY 
#define FINSH_HISTORY_LINES 5
#define FINSH_USING_SYMTAB 
#define FINSH_USING_DESCRIPTION 
#define FINSH_THREAD_PRIORITY 20
#define FINSH_THREAD_STACK_SIZE 4096
#define FINSH_CMD_SIZE 80
#define FINSH_USING_MSH 
#define FINSH_USING_MSH_DEFAULT 
#define FINSH_USING_MSH_ONLY 
#define FINSH_ARG_MAX 10



#define RT_USING_DFS 
#define DFS_USING_WORKDIR 
#define DFS_FILESYSTEMS_MAX 4
#define DFS_FILESYSTEM_TYPES_MAX 4
#define DFS_FD_MAX 12
#define RT_USING_DFS_ELMFAT 



#define RT_DFS_ELM_USE_EXFAT 
#define RT_DFS_ELM_CODE_PAGE 437
#define RT_DFS_ELM_WORD_ACCESS 
#define RT_DFS_ELM_USE_LFN_3 
#define RT_DFS_ELM_USE_LFN 3
#define RT_DFS_ELM_MAX_LFN 255
#define RT_DFS_ELM_DRIVES 2
#define RT_DFS_ELM_MAX_SECTOR_SIZE 512
#define RT_DFS_ELM_USE_ERASE 
#define RT_DFS_ELM_REENTRANT 
#define RT_USING_DFS_DEVFS 
#define RT_USING_DFS_NET 
#define RT_USING_DFS_ROMFS 
#define RT_USING_DFS_RAMFS 



#define RT_USING_DEVICE_IPC 
#define RT_PIPE_BUFSZ 512
#define RT_USING_SERIAL 
#define RT_USING_RTC 
#define RT_USING_SOFT_RTC 
#define RTC_SYNC_USING_NTP 
#define RTC_NTP_FIRST_SYNC_DELAY 1
#define RTC_NTP_SYNC_PERIOD 3600



#define RT_USING_LIBC 
#define RT_USING_MINILIBC 
#define RT_USING_POSIX 





#define RT_USING_LWIP 
#define RT_USING_LWIP202 
#define RT_LWIP_IGMP 
#define RT_LWIP_ICMP 
#define RT_LWIP_DNS 
#define RT_LWIP_DHCP 
#define IP_SOF_BROADCAST 1
#define IP_SOF_BROADCAST_RECV 1
#define RT_LWIP_ETH_MTU 1500



#define RT_LWIP_IPADDR "192.168.1.30"
#define RT_LWIP_GWADDR "192.168.1.1"
#define RT_LWIP_MSKADDR "255.255.255.0"
#define RT_LWIP_UDP 
#define RT_LWIP_TCP 
#define RT_LWIP_RAW 
#define RT_LWIP_HW_OFFLOAD 1
#define RT_MEMP_NUM_NETCONN 8
#define RT_LWIP_PBUF_NUM 16
#define RT_LWIP_RAW_PCB_NUM 4
#define RT_LWIP_UDP_PCB_NUM 4
#define RT_LWIP_TCP_PCB_NUM 4
#define RT_LWIP_TCP_SEG_NUM 40
#define RT_LWIP_TCP_SND_BUF 13140
#define RT_LWIP_TCP_WND 13140
#define RT_LWIP_TCPTHREAD_PRIORITY 10
#define RT_LWIP_TCPTHREAD_MBOX_SIZE 8
#define RT_LWIP_TCPTHREAD_STACKSIZE 2048
#define LWIP_NO_TX_THREAD 
#define RT_LWIP_ETHTHREAD_PRIORITY 12
#define RT_LWIP_ETHTHREAD_STACKSIZE 1024
#define RT_LWIP_ETHTHREAD_MBOX_SIZE 8
#define RT_LWIP_REASSEMBLY_FRAG 
#define LWIP_NETIF_STATUS_CALLBACK 1
#define SO_REUSE 1
#define LWIP_SO_RCVTIMEO 1
#define LWIP_SO_SNDTIMEO 1
#define LWIP_SO_RCVBUF 1
#define LWIP_NETIF_LOOPBACK 0






#define PKG_USING_NETUTILS 
#define PKG_NETUTILS_PING 
#define PKG_NETUTILS_NTP 
#define NETUTILS_NTP_TIMEZONE 8
#define NETUTILS_NTP_HOSTNAME "cn.ntp.org.cn"
#define PKG_USING_NETUTILS_V100 
# 188 "./rtconfig.h"
#define NETUTILS_NTP_HOSTNAME2 "ntp.rt-thread.org"
#define NETUTILS_NTP_HOSTNAME3 "edu.ntp.org.cn"
#define PKG_USING_NETUTILS_V120 
# 5 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 2

#define ERRNO 1

#define LWIP_IPV4 1




#define LWIP_IPV6 0


#define NO_SYS 0
#define LWIP_SOCKET 1
#define LWIP_NETCONN 1


#define LWIP_IGMP 1





#define LWIP_ICMP 1







#define LWIP_SNMP 0



#define LWIP_DNS 1




#define LWIP_HAVE_LOOPIF 0

#define LWIP_PLATFORM_BYTESWAP 0


#define BYTE_ORDER LITTLE_ENDIAN
# 60 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define MEMCPY(dst,src,len) memcpy(dst,src,len)
#define MEM_ALIGNMENT 8
#define MEMP_OVERFLOW_CHECK 0
#define LWIP_ALLOW_MEM_FREE_FROM_OTHER_CONTEXT 1



#define MEM_SIZE (1600*12)

#define MEMP_MEM_MALLOC 0




#define MEMP_NUM_PBUF 32



#define MEMP_NUM_NETCONN RT_MEMP_NUM_NETCONN




#define MEMP_NUM_RAW_PCB RT_LWIP_RAW_PCB_NUM




#define MEMP_NUM_UDP_PCB RT_LWIP_UDP_PCB_NUM




#define MEMP_NUM_TCP_PCB RT_LWIP_TCP_PCB_NUM




#define MEMP_NUM_TCP_SEG RT_LWIP_TCP_SEG_NUM
# 110 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define MEMP_NUM_NETBUF 30
# 121 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define PBUF_POOL_SIZE RT_LWIP_PBUF_NUM





#define PBUF_LINK_HLEN 16
# 149 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define PBUF_POOL_BUFSIZE LWIP_MEM_ALIGN_SIZE(RT_LWIP_ETH_MTU+PBUF_LINK_ENCAPSULATION_HLEN+PBUF_LINK_HLEN)







#define SYS_LIGHTWEIGHT_PROT (NO_SYS==0)
#define LWIP_TCPIP_CORE_LOCKING_INPUT 1




#define IP_NAT 0




#define LWIP_TCP 1




#define TCP_TTL 255



#define TCP_QUEUE_OOSEQ 0






#define TCP_MSS 1460



#define TCP_SND_BUF RT_LWIP_TCP_SND_BUF






#define TCP_SND_QUEUELEN (4 * TCP_SND_BUF/TCP_MSS)




#define TCP_SNDLOWAT (TCP_SND_BUF/2)
#define TCP_SNDQUEUELOWAT TCP_SND_QUEUELEN/2



#define TCP_WND RT_LWIP_TCP_WND





#define TCP_MAXRTX 12


#define TCP_SYNMAXRTX 4



#define TCPIP_MBOX_SIZE RT_LWIP_TCPTHREAD_MBOX_SIZE
#define TCPIP_THREAD_PRIO RT_LWIP_TCPTHREAD_PRIORITY
#define TCPIP_THREAD_STACKSIZE RT_LWIP_TCPTHREAD_STACKSIZE





#define TCPIP_THREAD_NAME "tcpip"
#define DEFAULT_TCP_RECVMBOX_SIZE 10


#define LWIP_ARP 1
#define ARP_TABLE_SIZE 10
#define ARP_QUEUEING 1





#define IP_FORWARD 1
#define LWIP_IPV6_FORWARD 1




#define IP_REASSEMBLY 1
#define IP_FRAG 1
#define IP_REASS_MAX_PBUFS 5
#define MEMP_NUM_REASSDATA 5






#define LWIP_ND6_RDNSS_MAX_DNS_SERVERS 1


#define ICMP_TTL 255





#define LWIP_DHCP 1






#define DHCP_DOES_ARP_CHECK (LWIP_DHCP)


#define LWIP_AUTOIP 0
#define LWIP_DHCP_AUTOIP_COOP (LWIP_DHCP && LWIP_AUTOIP)



#define LWIP_UDP 1




#define LWIP_UDPLITE 0
#define UDP_TTL 255
#define DEFAULT_UDP_RECVMBOX_SIZE 10



#define LWIP_RAW 1
# 299 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define DEFAULT_RAW_RECVMBOX_SIZE 10
#define DEFAULT_ACCEPTMBOX_SIZE 10







#define LWIP_STATS 0
# 327 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define CHECKSUM_GEN_IP 0
#define CHECKSUM_GEN_UDP 0
#define CHECKSUM_GEN_TCP 0
#define CHECKSUM_CHECK_IP 0
#define CHECKSUM_CHECK_UDP 0
#define CHECKSUM_CHECK_TCP 0






#define PPP_SUPPORT 0
# 377 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define LWIP_POSIX_SOCKETS_IO_NAMES 0
# 386 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define LWIP_TCP_KEEPALIVE 1






#define LWIP_NETIF_API 1



# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 1 3 4
# 18 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
#define _STDLIB_H_ 

# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 1 3 4
# 10 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 3 4
#define _FEATURES_H 1

#define __MINILIBC__ 1



#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))





#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 21 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 2 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ansidef.h" 1 3 4






#define _ANSIDECL_H_ 

#define _HAVE_STDC 
# 34 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ansidef.h" 3 4
#define _BEGIN_STD_C 
#define _END_STD_C 
#define _NOTHROW 



#define _PTR void *
#define _AND ,
#define _NOARGS void
#define _CONST const
#define _VOLATILE volatile
#define _SIGNED signed
#define _DOTS , ...
#define _VOID void






#define _EXFUN_NOTHROW(name,proto) name proto _NOTHROW
#define _EXFUN(name,proto) name proto
#define _EXPARM(name,proto) (* name) proto
#define _EXFNPTR(name,proto) (* name) proto

#define _DEFUN(name,arglist,args) name(args)
#define _DEFUN_VOID(name) name(_NOARGS)
#define _CAST_VOID (void)

#define _LONG_DOUBLE long double


#define _PARAMS(paramlist) paramlist






#define _ATTRIBUTE(attrs) __attribute__ (attrs)
# 96 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ansidef.h" 3 4
#define _ELIDABLE_INLINE __inline__
# 22 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 2 3 4


# 23 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
typedef struct
{
 int quot;
 int rem;
} div_t;

typedef struct
{
 long quot;
 long rem;
} ldiv_t;

typedef struct
{
 long long int quot;
 long long int rem;
} lldiv_t;



#define _GCC_SIZE_T 
typedef unsigned int size_t;





#define NULL 0


#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0


#define RAND_MAX 2147483647


extern double atof(const char *s);

extern int atoi(const char *s);

extern long atol(const char *s);

extern long long atoll(const char *str);

extern double strtod( const char *nptr, char **endptr );

extern float strtof(const char *nptr, char **endptr);

extern long strtol( const char *nptr, char **endptr, int base );

extern long double strtold (const char *nptr, char **endptr);

extern long long strtoll( const char *nptr, char **endptr, int base );

extern unsigned long strtoul( const char *nptr, char **endptr, int base );

extern unsigned long long strtoull( const char *nptr, char **endptr, int base);



extern void *calloc(size_t nmemb, size_t lsize);

extern void free (void *mem);

extern void *malloc (size_t);

extern void *realloc (void *mem, size_t new_size);


extern void _Exit(int code);

extern void abort(void);

extern void exit(int code);


typedef int (*__bsearch_comparison_fn_t)(const void * object1,
                                          const void * object2);

extern void * bsearch( const void * search_key, const void * first_object,
          size_t num_objects, size_t object_size,
          __bsearch_comparison_fn_t comparison_fn);

typedef int (*__qsort_comparison_fn_t)(const void * object1,
                                        const void * object2);

extern void qsort( void * first_object, size_t num_objects,
        size_t object_size, __qsort_comparison_fn_t comparison_fn);


extern int abs(int i);

extern div_t div(int n, int d);

extern long labs(long i);

extern ldiv_t ldiv(long n, long d);

extern long long llabs(long long j);

extern lldiv_t lldiv(long long n, long long d);

extern int rand(void);

extern void srand (unsigned int seed);


extern int atexit (void (*__func) (void));
extern char *getenv (__const char *__name);
extern int system (__const char *__command) ;
# 398 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 2
#define LWIP_RAND rand
# 417 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define LWIP_COMPAT_SOCKETS 0
# 448 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define LWIP_SO_GET_IF_HWADDR 1



#define LWIP_SO_GET_IF_ADDR 1






#define RECV_BUFSIZE_DEFAULT 8192
# 481 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define TFTP_MAX_FILENAME_LEN RT_DFS_ELM_MAX_LFN




#define LWIP_NETIF_TX_SINGLE_PBUF 1
# 504 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
#define LWIP_DBG_MIN_LEVEL LWIP_DBG_LEVEL_ALL






#define LWIP_DBG_TYPES_ON LWIP_DBG_OFF




#define ETHARP_DEBUG LWIP_DBG_OFF




#define NETIF_DEBUG LWIP_DBG_OFF




#define PBUF_DEBUG LWIP_DBG_OFF




#define API_LIB_DEBUG LWIP_DBG_OFF




#define API_MSG_DEBUG LWIP_DBG_OFF




#define SOCKETS_DEBUG LWIP_DBG_OFF




#define ICMP_DEBUG LWIP_DBG_OFF




#define IGMP_DEBUG LWIP_DBG_OFF




#define INET_DEBUG LWIP_DBG_OFF




#define IP_DEBUG LWIP_DBG_OFF




#define IP_REASS_DEBUG LWIP_DBG_OFF




#define RAW_DEBUG LWIP_DBG_OFF




#define MEM_DEBUG LWIP_DBG_OFF




#define MEMP_DEBUG LWIP_DBG_OFF




#define SYS_DEBUG LWIP_DBG_OFF




#define TIMERS_DEBUG LWIP_DBG_ON




#define TCP_DEBUG LWIP_DBG_ON




#define TCP_INPUT_DEBUG LWIP_DBG_OFF




#define TCP_FR_DEBUG LWIP_DBG_OFF





#define TCP_RTO_DEBUG LWIP_DBG_OFF




#define TCP_CWND_DEBUG LWIP_DBG_OFF




#define TCP_WND_DEBUG LWIP_DBG_OFF




#define TCP_OUTPUT_DEBUG LWIP_DBG_OFF




#define TCP_RST_DEBUG LWIP_DBG_OFF




#define TCP_QLEN_DEBUG LWIP_DBG_OFF




#define UDP_DEBUG LWIP_DBG_OFF




#define TCPIP_DEBUG LWIP_DBG_OFF




#define SLIP_DEBUG LWIP_DBG_OFF




#define DHCP_DEBUG LWIP_DBG_OFF




#define AUTOIP_DEBUG LWIP_DBG_OFF




#define DNS_DEBUG LWIP_DBG_OFF




#define IP6_DEBUG LWIP_DBG_OFF
# 52 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_HDR_DEBUG_H 

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_HDR_ARCH_H 


#define LITTLE_ENDIAN 1234



#define BIG_ENDIAN 4321


# 1 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 1
# 36 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h"
#define __ARCH_CC_H__ 

# 1 "../../../include/rthw.h" 1
# 30 "../../../include/rthw.h"
#define __RT_HW_H__ 

# 1 "../../../include/rtthread.h" 1
# 33 "../../../include/rtthread.h"
#define __RT_THREAD_H__ 


# 1 "../../../include/rtdebug.h" 1
# 22 "../../../include/rtdebug.h"
#define __RTDEBUG_H__ 
# 53 "../../../include/rtdebug.h"
#define RT_DEBUG_MEM 0



#define RT_DEBUG_MEMHEAP 0



#define RT_DEBUG_MODULE 0



#define RT_DEBUG_SCHEDULER 0



#define RT_DEBUG_SLAB 0







#define RT_DEBUG_TIMER 0



#define RT_DEBUG_IRQ 0



#define RT_DEBUG_IPC 0
# 94 "../../../include/rtdebug.h"
#define RT_DEBUG_CONTEXT_CHECK 1


#define RT_DEBUG_LOG(type,message) do { if (type) rt_kprintf message; } while (0)







#define RT_ASSERT(EX) if (!(EX)) { rt_assert_handler(#EX, __FUNCTION__, __LINE__); }







#define RT_DEBUG_NOT_IN_INTERRUPT do { rt_base_t level; level = rt_hw_interrupt_disable(); if (rt_interrupt_get_nest() != 0) { rt_kprintf("Function[%s] shall not be used in ISR\n", __FUNCTION__); RT_ASSERT(0) } rt_hw_interrupt_enable(level); } while (0)
# 131 "../../../include/rtdebug.h"
#define RT_DEBUG_IN_THREAD_CONTEXT do { rt_base_t level; level = rt_hw_interrupt_disable(); if (rt_thread_self() == RT_NULL) { rt_kprintf("Function[%s] shall not be used before scheduler start\n", __FUNCTION__); RT_ASSERT(0) } RT_DEBUG_NOT_IN_INTERRUPT; rt_hw_interrupt_enable(level); } while (0)
# 37 "../../../include/rtthread.h" 2
# 1 "../../../include/rtdef.h" 1
# 42 "../../../include/rtdef.h"
#define __RT_DEF_H__ 


# 1 "../libraries/inc/tih/sysdep.h" 1

#define __SYSDEP_H__ 


#define uint64 unsigned long long



#define uint32 unsigned int



#define int32 int



#define uint16 unsigned short



#define int16 short



#define uint8 unsigned char



#define int8 char







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
# 46 "../../../include/rtdef.h" 2
# 59 "../../../include/rtdef.h"
#define RT_VERSION 3L
#define RT_SUBVERSION 1L
#define RT_REVISION 0L


#define RTTHREAD_VERSION ((RT_VERSION * 10000) + (RT_SUBVERSION * 100) + RT_REVISION)




# 68 "../../../include/rtdef.h"
typedef signed char rt_int8_t;
typedef signed short rt_int16_t;
typedef signed long rt_int32_t;
typedef unsigned char rt_uint8_t;
typedef unsigned short rt_uint16_t;
typedef unsigned long rt_uint32_t;
typedef int rt_bool_t;


typedef long rt_base_t;
typedef unsigned long rt_ubase_t;

typedef rt_base_t rt_err_t;
typedef rt_uint32_t rt_time_t;
typedef rt_uint32_t rt_tick_t;
typedef rt_base_t rt_flag_t;
typedef rt_ubase_t rt_size_t;
typedef rt_ubase_t rt_dev_t;
typedef rt_base_t rt_off_t;


#define RT_TRUE 1
#define RT_FALSE 0




#define RT_UINT8_MAX 0xff
#define RT_UINT16_MAX 0xffff
#define RT_UINT32_MAX 0xffffffff
#define RT_TICK_MAX RT_UINT32_MAX
# 132 "../../../include/rtdef.h"
        typedef __builtin_va_list __gnuc_va_list;
        typedef __gnuc_va_list va_list;
#define va_start(v,l) __builtin_va_start(v,l)
#define va_end(v) __builtin_va_end(v)
#define va_arg(v,l) __builtin_va_arg(v,l)


#define SECTION(x) __attribute__((section(x)))
#define RT_UNUSED __attribute__((unused))
#define RT_USED __attribute__((used))
#define ALIGN(n) __attribute__((aligned(n)))
#define RT_WEAK __attribute__((weak))
#define rt_inline static __inline
#define RTT_API 
# 183 "../../../include/rtdef.h"
typedef int (*init_fn_t)(void);
# 198 "../../../include/rtdef.h"
#define INIT_EXPORT(fn,level) const init_fn_t __rt_init_ ##fn SECTION(".rti_fn."level) = fn
# 207 "../../../include/rtdef.h"
#define INIT_BOARD_EXPORT(fn) INIT_EXPORT(fn, "1")



#define INIT_PREV_EXPORT(fn) INIT_EXPORT(fn, "2")

#define INIT_DEVICE_EXPORT(fn) INIT_EXPORT(fn, "3")

#define INIT_COMPONENT_EXPORT(fn) INIT_EXPORT(fn, "4")

#define INIT_ENV_EXPORT(fn) INIT_EXPORT(fn, "5")

#define INIT_APP_EXPORT(fn) INIT_EXPORT(fn, "6")
# 234 "../../../include/rtdef.h"
#define RT_EVENT_LENGTH 32


#define RT_MM_PAGE_SIZE 4096
#define RT_MM_PAGE_MASK (RT_MM_PAGE_SIZE - 1)
#define RT_MM_PAGE_BITS 12



#define RT_KERNEL_MALLOC(sz) rt_malloc(sz)



#define RT_KERNEL_FREE(ptr) rt_free(ptr)



#define RT_KERNEL_REALLOC(ptr,size) rt_realloc(ptr, size)
# 261 "../../../include/rtdef.h"
#define RT_EOK 0
#define RT_ERROR 1
#define RT_ETIMEOUT 2
#define RT_EFULL 3
#define RT_EEMPTY 4
#define RT_ENOMEM 5
#define RT_ENOSYS 6
#define RT_EBUSY 7
#define RT_EIO 8
#define RT_EINTR 9
#define RT_EINVAL 10
# 282 "../../../include/rtdef.h"
#define RT_ALIGN(size,align) (((size) + (align) - 1) & ~((align) - 1))
# 291 "../../../include/rtdef.h"
#define RT_ALIGN_DOWN(size,align) ((size) & ~((align) - 1))







#define RT_NULL (0)




struct rt_list_node
{
    struct rt_list_node *next;
    struct rt_list_node *prev;
};
typedef struct rt_list_node rt_list_t;




struct rt_slist_node
{
    struct rt_slist_node *next;
};
typedef struct rt_slist_node rt_slist_t;
# 329 "../../../include/rtdef.h"
#define RT_OBJECT_FLAG_MODULE 0x80




struct rt_object
{
    char name[8];
    rt_uint8_t type;
    rt_uint8_t flag;




    rt_list_t list;
};
typedef struct rt_object *rt_object_t;
# 364 "../../../include/rtdef.h"
enum rt_object_class_type
{
    RT_Object_Class_Thread = 0,
    RT_Object_Class_Semaphore,
    RT_Object_Class_Mutex,
    RT_Object_Class_Event,
    RT_Object_Class_MailBox,
    RT_Object_Class_MessageQueue,
    RT_Object_Class_MemHeap,
    RT_Object_Class_MemPool,
    RT_Object_Class_Device,
    RT_Object_Class_Timer,
    RT_Object_Class_Module,
    RT_Object_Class_Unknown,
    RT_Object_Class_Static = 0x80
};




struct rt_object_information
{
    enum rt_object_class_type type;
    rt_list_t object_list;
    rt_size_t object_size;
};





#define RT_OBJECT_HOOK_CALL(func,argv) do { if ((func) != RT_NULL) func argv; } while (0)
# 412 "../../../include/rtdef.h"
#define RT_TIMER_FLAG_DEACTIVATED 0x0
#define RT_TIMER_FLAG_ACTIVATED 0x1
#define RT_TIMER_FLAG_ONE_SHOT 0x0
#define RT_TIMER_FLAG_PERIODIC 0x2

#define RT_TIMER_FLAG_HARD_TIMER 0x0
#define RT_TIMER_FLAG_SOFT_TIMER 0x4

#define RT_TIMER_CTRL_SET_TIME 0x0
#define RT_TIMER_CTRL_GET_TIME 0x1
#define RT_TIMER_CTRL_SET_ONESHOT 0x2
#define RT_TIMER_CTRL_SET_PERIODIC 0x3


#define RT_TIMER_SKIP_LIST_LEVEL 1




#define RT_TIMER_SKIP_LIST_MASK 0x3





struct rt_timer
{
    struct rt_object parent;

    rt_list_t row[1];

    void (*timeout_func)(void *parameter);
    void *parameter;

    rt_tick_t init_tick;
    rt_tick_t timeout_tick;
};
typedef struct rt_timer *rt_timer_t;
# 479 "../../../include/rtdef.h"
#define RT_THREAD_INIT 0x00
#define RT_THREAD_READY 0x01
#define RT_THREAD_SUSPEND 0x02
#define RT_THREAD_RUNNING 0x03
#define RT_THREAD_BLOCK RT_THREAD_SUSPEND
#define RT_THREAD_CLOSE 0x04
#define RT_THREAD_STAT_MASK 0x0f

#define RT_THREAD_STAT_SIGNAL 0x10
#define RT_THREAD_STAT_SIGNAL_READY (RT_THREAD_STAT_SIGNAL | RT_THREAD_READY)
#define RT_THREAD_STAT_SIGNAL_WAIT 0x20
#define RT_THREAD_STAT_SIGNAL_MASK 0xf0




#define RT_THREAD_CTRL_STARTUP 0x00
#define RT_THREAD_CTRL_CLOSE 0x01
#define RT_THREAD_CTRL_CHANGE_PRIORITY 0x02
#define RT_THREAD_CTRL_INFO 0x03




struct rt_thread
{

    char name[8];
    rt_uint8_t type;
    rt_uint8_t flags;





    rt_list_t list;
    rt_list_t tlist;


    void *sp;
    void *entry;
    void *parameter;
    void *stack_addr;
    rt_uint32_t stack_size;


    rt_err_t error;

    rt_uint8_t stat;


    rt_uint8_t current_priority;
    rt_uint8_t init_priority;




    rt_uint32_t number_mask;



    rt_uint32_t event_set;
    rt_uint8_t event_info;
# 553 "../../../include/rtdef.h"
    rt_ubase_t init_tick;
    rt_ubase_t remaining_tick;

    struct rt_timer thread_timer;

    void (*cleanup)(struct rt_thread *tid);

    rt_uint32_t user_data;
};
typedef struct rt_thread *rt_thread_t;
# 575 "../../../include/rtdef.h"
#define RT_IPC_FLAG_FIFO 0x00
#define RT_IPC_FLAG_PRIO 0x01

#define RT_IPC_CMD_UNKNOWN 0x00
#define RT_IPC_CMD_RESET 0x01

#define RT_WAITING_FOREVER -1
#define RT_WAITING_NO 0




struct rt_ipc_object
{
    struct rt_object parent;

    rt_list_t suspend_thread;
};





struct rt_semaphore
{
    struct rt_ipc_object parent;

    rt_uint16_t value;
};
typedef struct rt_semaphore *rt_sem_t;






struct rt_mutex
{
    struct rt_ipc_object parent;

    rt_uint16_t value;

    rt_uint8_t original_priority;
    rt_uint8_t hold;

    struct rt_thread *owner;
};
typedef struct rt_mutex *rt_mutex_t;






#define RT_EVENT_FLAG_AND 0x01
#define RT_EVENT_FLAG_OR 0x02
#define RT_EVENT_FLAG_CLEAR 0x04




struct rt_event
{
    struct rt_ipc_object parent;

    rt_uint32_t set;
};
typedef struct rt_event *rt_event_t;






struct rt_mailbox
{
    struct rt_ipc_object parent;

    rt_uint32_t *msg_pool;

    rt_uint16_t size;

    rt_uint16_t entry;
    rt_uint16_t in_offset;
    rt_uint16_t out_offset;

    rt_list_t suspend_sender_thread;
};
typedef struct rt_mailbox *rt_mailbox_t;






struct rt_messagequeue
{
    struct rt_ipc_object parent;

    void *msg_pool;

    rt_uint16_t msg_size;
    rt_uint16_t max_msgs;

    rt_uint16_t entry;

    void *msg_queue_head;
    void *msg_queue_tail;
    void *msg_queue_free;
};
typedef struct rt_messagequeue *rt_mq_t;
# 705 "../../../include/rtdef.h"
struct rt_memheap_item
{
    rt_uint32_t magic;
    struct rt_memheap *pool_ptr;

    struct rt_memheap_item *next;
    struct rt_memheap_item *prev;

    struct rt_memheap_item *next_free;
    struct rt_memheap_item *prev_free;
};




struct rt_memheap
{
    struct rt_object parent;

    void *start_addr;

    rt_uint32_t pool_size;
    rt_uint32_t available_size;
    rt_uint32_t max_used_size;

    struct rt_memheap_item *block_list;

    struct rt_memheap_item *free_list;
    struct rt_memheap_item free_header;

    struct rt_semaphore lock;
};
# 774 "../../../include/rtdef.h"
enum rt_device_class_type
{
    RT_Device_Class_Char = 0,
    RT_Device_Class_Block,
    RT_Device_Class_NetIf,
    RT_Device_Class_MTD,
    RT_Device_Class_CAN,
    RT_Device_Class_RTC,
    RT_Device_Class_Sound,
    RT_Device_Class_Graphic,
    RT_Device_Class_I2CBUS,
    RT_Device_Class_USBDevice,
    RT_Device_Class_USBHost,
    RT_Device_Class_SPIBUS,
    RT_Device_Class_SPIDevice,
    RT_Device_Class_SDIO,
    RT_Device_Class_PM,
    RT_Device_Class_Pipe,
    RT_Device_Class_Portal,
    RT_Device_Class_Timer,
    RT_Device_Class_Miscellaneous,
    RT_Device_Class_Unknown
};




#define RT_DEVICE_FLAG_DEACTIVATE 0x000

#define RT_DEVICE_FLAG_RDONLY 0x001
#define RT_DEVICE_FLAG_WRONLY 0x002
#define RT_DEVICE_FLAG_RDWR 0x003

#define RT_DEVICE_FLAG_REMOVABLE 0x004
#define RT_DEVICE_FLAG_STANDALONE 0x008
#define RT_DEVICE_FLAG_ACTIVATED 0x010
#define RT_DEVICE_FLAG_SUSPENDED 0x020
#define RT_DEVICE_FLAG_STREAM 0x040

#define RT_DEVICE_FLAG_INT_RX 0x100
#define RT_DEVICE_FLAG_DMA_RX 0x200
#define RT_DEVICE_FLAG_INT_TX 0x400
#define RT_DEVICE_FLAG_DMA_TX 0x800

#define RT_DEVICE_OFLAG_CLOSE 0x000
#define RT_DEVICE_OFLAG_RDONLY 0x001
#define RT_DEVICE_OFLAG_WRONLY 0x002
#define RT_DEVICE_OFLAG_RDWR 0x003
#define RT_DEVICE_OFLAG_OPEN 0x008
#define RT_DEVICE_OFLAG_MASK 0xf0f




#define RT_DEVICE_CTRL_RESUME 0x01
#define RT_DEVICE_CTRL_SUSPEND 0x02
#define RT_DEVICE_CTRL_CONFIG 0x03

#define RT_DEVICE_CTRL_SET_INT 0x10
#define RT_DEVICE_CTRL_CLR_INT 0x11
#define RT_DEVICE_CTRL_GET_INT 0x12




#define RT_DEVICE_CTRL_CHAR_STREAM 0x10
#define RT_DEVICE_CTRL_BLK_GETGEOME 0x10
#define RT_DEVICE_CTRL_BLK_SYNC 0x11
#define RT_DEVICE_CTRL_BLK_ERASE 0x12
#define RT_DEVICE_CTRL_BLK_AUTOREFRESH 0x13
#define RT_DEVICE_CTRL_NETIF_GETMAC 0x10
#define RT_DEVICE_CTRL_MTD_FORMAT 0x10
#define RT_DEVICE_CTRL_RTC_GET_TIME 0x10
#define RT_DEVICE_CTRL_RTC_SET_TIME 0x11
#define RT_DEVICE_CTRL_RTC_GET_ALARM 0x12
#define RT_DEVICE_CTRL_RTC_SET_ALARM 0x13

typedef struct rt_device *rt_device_t;



struct rt_device_ops
{

    rt_err_t (*init) (rt_device_t dev);
    rt_err_t (*open) (rt_device_t dev, rt_uint16_t oflag);
    rt_err_t (*close) (rt_device_t dev);
    rt_size_t (*read) (rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size);
    rt_size_t (*write) (rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t (*control)(rt_device_t dev, int cmd, void *args);
};




struct rt_wqueue
{
    rt_uint32_t flag;
    rt_list_t waiting_list;
};
typedef struct rt_wqueue rt_wqueue_t;




struct rt_device
{
    struct rt_object parent;

    enum rt_device_class_type type;
    rt_uint16_t flag;
    rt_uint16_t open_flag;

    rt_uint8_t ref_count;
    rt_uint8_t device_id;


    rt_err_t (*rx_indicate)(rt_device_t dev, rt_size_t size);
    rt_err_t (*tx_complete)(rt_device_t dev, void *buffer);





    rt_err_t (*init) (rt_device_t dev);
    rt_err_t (*open) (rt_device_t dev, rt_uint16_t oflag);
    rt_err_t (*close) (rt_device_t dev);
    rt_size_t (*read) (rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size);
    rt_size_t (*write) (rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t (*control)(rt_device_t dev, int cmd, void *args);



    const struct dfs_file_ops *fops;
    struct rt_wqueue wait_queue;


    void *user_data;
};




struct rt_device_blk_geometry
{
    rt_uint32_t sector_count;
    rt_uint32_t bytes_per_sector;
    rt_uint32_t block_size;
};




struct rt_device_blk_sectors
{
    rt_uint32_t sector_begin;
    rt_uint32_t sector_end;
};




#define RT_DEVICE_CTRL_CURSOR_SET_POSITION 0x10
#define RT_DEVICE_CTRL_CURSOR_SET_TYPE 0x11




#define RTGRAPHIC_CTRL_RECT_UPDATE 0
#define RTGRAPHIC_CTRL_POWERON 1
#define RTGRAPHIC_CTRL_POWEROFF 2
#define RTGRAPHIC_CTRL_GET_INFO 3
#define RTGRAPHIC_CTRL_SET_MODE 4
#define RTGRAPHIC_CTRL_GET_EXT 5


enum
{
    RTGRAPHIC_PIXEL_FORMAT_MONO = 0,
    RTGRAPHIC_PIXEL_FORMAT_GRAY4,
    RTGRAPHIC_PIXEL_FORMAT_GRAY16,
    RTGRAPHIC_PIXEL_FORMAT_RGB332,
    RTGRAPHIC_PIXEL_FORMAT_RGB444,
    RTGRAPHIC_PIXEL_FORMAT_RGB565,
    RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_BGR565 = RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_RGB666,
    RTGRAPHIC_PIXEL_FORMAT_RGB888,
    RTGRAPHIC_PIXEL_FORMAT_ARGB888,
    RTGRAPHIC_PIXEL_FORMAT_ABGR888,
    RTGRAPHIC_PIXEL_FORMAT_ARGB565,
    RTGRAPHIC_PIXEL_FORMAT_ALPHA,
};




#define RTGRAPHIC_PIXEL_POSITION(x,y) ((x << 16) | y)




struct rt_device_graphic_info
{
    rt_uint8_t pixel_format;
    rt_uint8_t bits_per_pixel;
    rt_uint16_t reserved;

    rt_uint16_t width;
    rt_uint16_t height;

    rt_uint8_t *framebuffer;
};




struct rt_device_rect_info
{
    rt_uint16_t x;
    rt_uint16_t y;
    rt_uint16_t width;
    rt_uint16_t height;
};




struct rt_device_graphic_ops
{
    void (*set_pixel) (const char *pixel, int x, int y);
    void (*get_pixel) (char *pixel, int x, int y);

    void (*draw_hline)(const char *pixel, int x1, int x2, int y);
    void (*draw_vline)(const char *pixel, int x, int y1, int y2);

    void (*blit_line) (const char *pixel, int x, int y, rt_size_t size);
};
#define rt_graphix_ops(device) ((struct rt_device_graphic_ops *)(device->user_data))
# 1071 "../../../include/rtdef.h"
# 1 "../../../include/rtlibc.h" 1
# 26 "../../../include/rtlibc.h"
#define RTLIBC_H__ 


# 1 "../../../include/libc/libc_stat.h" 1

#define LIBC_STAT_H__ 
# 39 "../../../include/libc/libc_stat.h"
#define S_IFMT 00170000
#define S_IFSOCK 0140000
#define S_IFLNK 0120000
#define S_IFREG 0100000
#define S_IFBLK 0060000
#define S_IFDIR 0040000
#define S_IFCHR 0020000
#define S_IFIFO 0010000
#define S_ISUID 0004000
#define S_ISGID 0002000
#define S_ISVTX 0001000

#define S_ISLNK(m) (((m) & S_IFMT) == S_IFLNK)
#define S_ISREG(m) (((m) & S_IFMT) == S_IFREG)
#define S_ISDIR(m) (((m) & S_IFMT) == S_IFDIR)
#define S_ISCHR(m) (((m) & S_IFMT) == S_IFCHR)
#define S_ISBLK(m) (((m) & S_IFMT) == S_IFBLK)
#define S_ISFIFO(m) (((m) & S_IFMT) == S_IFIFO)
#define S_ISSOCK(m) (((m) & S_IFMT) == S_IFSOCK)

#define S_IRWXU 00700
#define S_IRUSR 00400
#define S_IWUSR 00200
#define S_IXUSR 00100

#define S_IRWXG 00070
#define S_IRGRP 00040
#define S_IWGRP 00020
#define S_IXGRP 00010

#define S_IRWXO 00007
#define S_IROTH 00004
#define S_IWOTH 00002
#define S_IXOTH 00001


# 1 "../../../components/libc/compilers/minilibc/stdint.h" 1





#define __STDINT_H__ 

# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 30 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
#define _GCC_LIMITS_H_ 



# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\syslimits.h" 1 3 4





#define _GCC_NEXT_LIMITS_H 
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 168 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 1 3 4
# 9 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 3 4
#define _LIBC_LIMITS_H_ 1






#define MB_LEN_MAX 1




#define NL_ARGMAX 32
# 142 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 3 4
#define _POSIX2_RE_DUP_MAX 255



#define ARG_MAX 4096



#define PATH_MAX 4096
# 169 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 2 3 4
# 8 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\syslimits.h" 2 3 4
#undef _GCC_NEXT_LIMITS_H
# 35 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 2 3 4
# 60 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
#define _LIMITS_H___ 


#undef CHAR_BIT
#define CHAR_BIT __CHAR_BIT__







#undef SCHAR_MIN
#define SCHAR_MIN (-SCHAR_MAX - 1)
#undef SCHAR_MAX
#define SCHAR_MAX __SCHAR_MAX__


#undef UCHAR_MAX



#define UCHAR_MAX (SCHAR_MAX * 2 + 1)




#undef CHAR_MIN



#define CHAR_MIN 0

#undef CHAR_MAX
#define CHAR_MAX UCHAR_MAX
# 103 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
#undef SHRT_MIN
#define SHRT_MIN (-SHRT_MAX - 1)
#undef SHRT_MAX
#define SHRT_MAX __SHRT_MAX__


#undef USHRT_MAX



#define USHRT_MAX (SHRT_MAX * 2 + 1)



#undef INT_MIN
#define INT_MIN (-INT_MAX - 1)
#undef INT_MAX
#define INT_MAX __INT_MAX__


#undef UINT_MAX
#define UINT_MAX (INT_MAX * 2U + 1U)



#undef LONG_MIN
#define LONG_MIN (-LONG_MAX - 1L)
#undef LONG_MAX
#define LONG_MAX __LONG_MAX__


#undef ULONG_MAX
#define ULONG_MAX (LONG_MAX * 2UL + 1UL)



#undef LLONG_MIN
#define LLONG_MIN (-LLONG_MAX - 1LL)
#undef LLONG_MAX
#define LLONG_MAX __LONG_LONG_MAX__


#undef ULLONG_MAX
#define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL)




#undef LONG_LONG_MIN
#define LONG_LONG_MIN (-LONG_LONG_MAX - 1LL)
#undef LONG_LONG_MAX
#define LONG_LONG_MAX __LONG_LONG_MAX__


#undef ULONG_LONG_MAX
#define ULONG_LONG_MAX (LONG_LONG_MAX * 2ULL + 1ULL)
# 9 "../../../components/libc/compilers/minilibc/stdint.h" 2
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 1 3 4
# 9 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 1 3 4
# 24 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 3 4
#define _STDINT_H 1







#define __int8_t_defined 

# 33 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef int __int32_t;
__extension__
typedef long long int int64_t;



typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;
typedef unsigned int __uint32_t;
#define __uint32_t_defined 

__extension__
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
__extension__
typedef long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
__extension__
typedef unsigned long long int uint_least64_t;





typedef signed char int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;


typedef unsigned char uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;




typedef int intptr_t;
#define __intptr_t_defined 

typedef unsigned int uintptr_t;



__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;






#define __INT64_C(c) c ## LL
#define __UINT64_C(c) c ## ULL




#define INT8_MIN (-128)
#define INT16_MIN (-32767-1)
#define INT32_MIN (-2147483647-1)
#define INT64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT8_MAX (127)
#define INT16_MAX (32767)
#define INT32_MAX (2147483647)
#define INT64_MAX (__INT64_C(9223372036854775807))


#define UINT8_MAX (255)
#define UINT16_MAX (65535)
#define UINT32_MAX (4294967295U)
#define UINT64_MAX (__UINT64_C(18446744073709551615))



#define INT_LEAST8_MIN (-128)
#define INT_LEAST16_MIN (-32767-1)
#define INT_LEAST32_MIN (-2147483647-1)
#define INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT_LEAST8_MAX (127)
#define INT_LEAST16_MAX (32767)
#define INT_LEAST32_MAX (2147483647)
#define INT_LEAST64_MAX (__INT64_C(9223372036854775807))


#define UINT_LEAST8_MAX (255)
#define UINT_LEAST16_MAX (65535)
#define UINT_LEAST32_MAX (4294967295U)
#define UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))



#define INT_FAST8_MIN (-128)
#define INT_FAST16_MIN (-2147483647-1)
#define INT_FAST32_MIN (-2147483647-1)
#define INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)

#define INT_FAST8_MAX (127)
#define INT_FAST16_MAX (2147483647)
#define INT_FAST32_MAX (2147483647)
#define INT_FAST64_MAX (__INT64_C(9223372036854775807))


#define UINT_FAST8_MAX (255)
#define UINT_FAST16_MAX (4294967295U)
#define UINT_FAST32_MAX (4294967295U)
#define UINT_FAST64_MAX (__UINT64_C(18446744073709551615))



#define INTPTR_MIN (-2147483647-1)
#define INTPTR_MAX (2147483647)
#define UINTPTR_MAX (4294967295U)



#define INTMAX_MIN (-__INT64_C(9223372036854775807)-1)

#define INTMAX_MAX (__INT64_C(9223372036854775807))


#define UINTMAX_MAX (__UINT64_C(18446744073709551615))
# 191 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 3 4
#define PTRDIFF_MIN (-2147483647-1)
#define PTRDIFF_MAX (2147483647)


#define SIG_ATOMIC_MIN (-2147483647-1)
#define SIG_ATOMIC_MAX (2147483647)


#define SIZE_MAX (4294967295U)
# 222 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 3 4
#define INT8_C(c) c
#define INT16_C(c) c
#define INT32_C(c) c
#define INT64_C(c) c ## LL


#define UINT8_C(c) c
#define UINT16_C(c) c
#define UINT32_C(c) c ## U
#define UINT64_C(c) c ## ULL


#define INTMAX_C(c) c ## LL
#define UINTMAX_C(c) c ## ULL
# 10 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 2 3 4



#define _GCC_WRAP_STDINT_H 
# 10 "../../../components/libc/compilers/minilibc/stdint.h" 2
# 76 "../../../include/libc/libc_stat.h" 2
# 1 "../../../components/libc/compilers/minilibc/time.h" 1

#define __TIME_H__ 

# 1 "../../../components/libc/compilers/minilibc/sys/time.h" 1

#define _SYS_TIME_H_ 

# 1 "../../../components/libc/compilers/minilibc/sys/types.h" 1

#define __TYPES_H__ 



# 5 "../../../components/libc/compilers/minilibc/sys/types.h"
typedef unsigned int size_t;



typedef int ssize_t;


typedef int __off_t;
typedef __off_t off_t;

typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef int mode_t;

typedef unsigned long clockid_t;
typedef int pid_t;

typedef unsigned long clock_t;





#define __u_char_defined 
# 5 "../../../components/libc/compilers/minilibc/sys/time.h" 2
typedef long time_t;





struct timeval {
 long tv_sec;
 long tv_usec;
};




struct timespec {
 time_t tv_sec;
 long tv_nsec;
};

struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};

struct tm {
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;

  long int tm_gmtoff;
  const char *tm_zone;
};

int gettimeofday(struct timeval *tp, void *ignore);
# 5 "../../../components/libc/compilers/minilibc/time.h" 2

time_t mktime(struct tm * const t);

char *asctime(const struct tm *timeptr);
char *ctime(const time_t *timep);
struct tm* localtime(const time_t* t);

char *asctime_r(const struct tm *t, char *buf);
struct tm *gmtime_r(const time_t *timep, struct tm *r);
struct tm* localtime_r(const time_t* t, struct tm* r);

clock_t clock(void);
time_t time(time_t *t);


extern double difftime(time_t tim1, time_t tim2);
extern struct tm *gmtime(const time_t * tim_p);
extern size_t strftime(char *s, size_t maxsize, const char *format,
    const struct tm *tim_p);
# 77 "../../../include/libc/libc_stat.h" 2

struct stat
{
    struct rt_device *st_dev;
    uint16_t st_ino;
    uint16_t st_mode;
    uint16_t st_nlink;
    uint16_t st_uid;
    uint16_t st_gid;
    struct rt_device *st_rdev;
    uint32_t st_size;
    time_t st_atime;
    long st_spare1;
    time_t st_mtime;
    long st_spare2;
    time_t st_ctime;
    long st_spare3;
    uint32_t st_blksize;
    uint32_t st_blocks;
    long st_spare4[2];
};
# 30 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_errno.h" 1
# 26 "../../../include/libc/libc_errno.h"
#define LIBC_ERRNO_H__ 
# 35 "../../../include/libc/libc_errno.h"
#define EPERM 1
#define ENOENT 2
#define ESRCH 3
#define EINTR 4
#define EIO 5
#define ENXIO 6
#define E2BIG 7
#define ENOEXEC 8
#define EBADF 9
#define ECHILD 10
#define EAGAIN 11
#define ENOMEM 12
#define EACCES 13
#define EFAULT 14
#define ENOTBLK 15
#define EBUSY 16
#define EEXIST 17
#define EXDEV 18
#define ENODEV 19
#define ENOTDIR 20
#define EISDIR 21
#define EINVAL 22
#define ENFILE 23
#define EMFILE 24
#define ENOTTY 25
#define ETXTBSY 26
#define EFBIG 27
#define ENOSPC 28
#define ESPIPE 29
#define EROFS 30
#define EMLINK 31
#define EPIPE 32
#define EDOM 33
#define ERANGE 34
#define EDEADLK 35
#define ENAMETOOLONG 36
#define ENOLCK 37
#define ENOSYS 38
#define ENOTEMPTY 39
#define ELOOP 40
#define EWOULDBLOCK EAGAIN
#define ENOMSG 42
#define EIDRM 43
#define ECHRNG 44
#define EL2NSYNC 45
#define EL3HLT 46
#define EL3RST 47
#define ELNRNG 48
#define EUNATCH 49
#define ENOCSI 50
#define EL2HLT 51
#define EBADE 52
#define EBADR 53
#define EXFULL 54
#define ENOANO 55
#define EBADRQC 56
#define EBADSLT 57
#define EDEADLOCK EDEADLK
#define EBFONT 59
#define ENOSTR 60
#define ENODATA 61
#define ETIME 62
#define ENOSR 63
#define ENONET 64
#define ENOPKG 65
#define EREMOTE 66
#define ENOLINK 67
#define EADV 68
#define ESRMNT 69
#define ECOMM 70
#define EPROTO 71
#define EMULTIHOP 72
#define EDOTDOT 73
#define EBADMSG 74
#define EOVERFLOW 75
#define ENOTUNIQ 76
#define EBADFD 77
#define EREMCHG 78
#define ELIBACC 79
#define ELIBBAD 80
#define ELIBSCN 81
#define ELIBMAX 82
#define ELIBEXEC 83
#define EILSEQ 84
#define ERESTART 85
#define ESTRPIPE 86
#define EUSERS 87
#define ENOTSOCK 88
#define EDESTADDRREQ 89
#define EMSGSIZE 90
#define EPROTOTYPE 91
#define ENOPROTOOPT 92
#define EPROTONOSUPPORT 93
#define ESOCKTNOSUPPORT 94
#define EOPNOTSUPP 95
#define ENOTSUP EOPNOTSUPP
#define EPFNOSUPPORT 96
#define EAFNOSUPPORT 97
#define EADDRINUSE 98
#define EADDRNOTAVAIL 99
#define ENETDOWN 100
#define ENETUNREACH 101
#define ENETRESET 102
#define ECONNABORTED 103
#define ECONNRESET 104
#define ENOBUFS 105
#define EISCONN 106
#define ENOTCONN 107
#define ESHUTDOWN 108
#define ETOOMANYREFS 109
#define ETIMEDOUT 110
#define ECONNREFUSED 111
#define EHOSTDOWN 112
#define EHOSTUNREACH 113
#define EALREADY 114
#define EINPROGRESS 115
#define ESTALE 116
#define EUCLEAN 117
#define ENOTNAM 118
#define ENAVAIL 119
#define EISNAM 120
#define EREMOTEIO 121
#define EDQUOT 122
#define ENOMEDIUM 123
#define EMEDIUMTYPE 124
#define ECANCELED 125
#define ENOKEY 126
#define EKEYEXPIRED 127
#define EKEYREVOKED 128
#define EKEYREJECTED 129
#define EOWNERDEAD 130
#define ENOTRECOVERABLE 131
#define ERFKILL 132
#define EHWPOISON 133
# 31 "../../../include/rtlibc.h" 2

# 1 "../../../include/libc/libc_fcntl.h" 1
# 27 "../../../include/libc/libc_fcntl.h"
#define LIBC_FCNTL_H__ 
# 60 "../../../include/libc/libc_fcntl.h"
#define O_RDONLY 00
#define O_WRONLY 01
#define O_RDWR 02

#define O_CREAT 0100
#define O_EXCL 0200
#define O_NOCTTY 0400
#define O_TRUNC 01000
#define O_APPEND 02000
#define O_NONBLOCK 04000
#define O_DSYNC 010000
#define O_SYNC 04010000
#define O_RSYNC 04010000
#define O_BINARY 0100000
#define O_DIRECTORY 0200000
#define O_NOFOLLOW 0400000
#define O_CLOEXEC 02000000

#define O_ASYNC 020000
#define O_DIRECT 040000
#define O_LARGEFILE 0100000
#define O_NOATIME 01000000
#define O_PATH 010000000
#define O_TMPFILE 020200000
#define O_NDELAY O_NONBLOCK

#define O_SEARCH O_PATH
#define O_EXEC O_PATH

#define O_ACCMODE (03|O_SEARCH)

#define F_DUPFD 0
#define F_GETFD 1
#define F_SETFD 2
#define F_GETFL 3
#define F_SETFL 4

#define F_SETOWN 8
#define F_GETOWN 9
#define F_SETSIG 10
#define F_GETSIG 11

#define F_GETLK 12
#define F_SETLK 13
#define F_SETLKW 14

#define F_SETOWN_EX 15
#define F_GETOWN_EX 16

#define F_GETOWNER_UIDS 17
# 33 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_ioctl.h" 1
# 26 "../../../include/libc/libc_ioctl.h"
#define LIBC_IOCTL_H__ 

#define _IOC(a,b,c,d) ( ((a)<<30) | ((b)<<8) | (c) | ((d)<<16) )
#define _IOC_NONE 0U
#define _IOC_WRITE 1U
#define _IOC_READ 2U


#define _IO(a,b) _IOC(_IOC_NONE,(a),(b),0)
#define _IOW(a,b,c) _IOC(_IOC_WRITE,(a),(b),sizeof(c))
#define _IOR(a,b,c) _IOC(_IOC_READ,(a),(b),sizeof(c))
#define _IOWR(a,b,c) _IOC(_IOC_READ|_IOC_WRITE,(a),(b),sizeof(c))

#define FIONREAD _IOR('f', 127, int)
#define FIONBIO _IOW('f', 126, int)
#define FIONWRITE _IOR('f', 121, int)



#define TCGETS 0x5401
#define TCSETS 0x5402
#define TCSETSW 0x5403
#define TCSETSF 0x5404
#define TCGETA 0x5405
#define TCSETA 0x5406
#define TCSETAW 0x5407
#define TCSETAF 0x5408
#define TCSBRK 0x5409
#define TCXONC 0x540A
#define TCFLSH 0x540B
#define TIOCEXCL 0x540C
#define TIOCNXCL 0x540D
#define TIOCSCTTY 0x540E
#define TIOCGPGRP 0x540F
#define TIOCSPGRP 0x5410
#define TIOCOUTQ 0x5411
#define TIOCSTI 0x5412
#define TIOCGWINSZ 0x5413
#define TIOCSWINSZ 0x5414
#define TIOCMGET 0x5415
#define TIOCMBIS 0x5416
#define TIOCMBIC 0x5417
#define TIOCMSET 0x5418
#define TIOCGSOFTCAR 0x5419
#define TIOCSSOFTCAR 0x541A

#define TIOCINQ FIONREAD
#define TIOCLINUX 0x541C
#define TIOCCONS 0x541D
#define TIOCGSERIAL 0x541E
#define TIOCSSERIAL 0x541F
#define TIOCPKT 0x5420

#define TIOCNOTTY 0x5422
#define TIOCSETD 0x5423
#define TIOCGETD 0x5424
#define TCSBRKP 0x5425
#define TIOCSBRK 0x5427
#define TIOCCBRK 0x5428
#define TIOCGSID 0x5429
#define TIOCGRS485 0x542E
#define TIOCSRS485 0x542F
#define TIOCGPTN 0x80045430
#define TIOCSPTLCK 0x40045431
#define TIOCGDEV 0x80045432
#define TCGETX 0x5432
#define TCSETX 0x5433
#define TCSETXF 0x5434
#define TCSETXW 0x5435
#define TIOCSIG 0x40045436
#define TIOCVHANGUP 0x5437
#define TIOCGPKT 0x80045438
#define TIOCGPTLCK 0x80045439
#define TIOCGEXCL 0x80045440

#define FIONCLEX 0x5450
#define FIOCLEX 0x5451


#define FIOASYNC 0x5452


#define TIOCSERCONFIG 0x5453
#define TIOCSERGWILD 0x5454
#define TIOCSERSWILD 0x5455
#define TIOCGLCKTRMIOS 0x5456
#define TIOCSLCKTRMIOS 0x5457
#define TIOCSERGSTRUCT 0x5458
#define TIOCSERGETLSR 0x5459
#define TIOCSERGETMULTI 0x545A
#define TIOCSERSETMULTI 0x545B

#define TIOCMIWAIT 0x545C
#define TIOCGICOUNT 0x545D
#define FIOQSIZE 0x5460

#define TIOCPKT_DATA 0
#define TIOCPKT_FLUSHREAD 1
#define TIOCPKT_FLUSHWRITE 2
#define TIOCPKT_STOP 4
#define TIOCPKT_START 8
#define TIOCPKT_NOSTOP 16
#define TIOCPKT_DOSTOP 32
#define TIOCPKT_IOCTL 64

#define TIOCSER_TEMT 0x01

struct winsize {
unsigned short ws_row;
unsigned short ws_col;
unsigned short ws_xpixel;
unsigned short ws_ypixel;
};

#define TIOCM_LE 0x001
#define TIOCM_DTR 0x002
#define TIOCM_RTS 0x004
#define TIOCM_ST 0x008
#define TIOCM_SR 0x010
#define TIOCM_CTS 0x020
#define TIOCM_CAR 0x040
#define TIOCM_RNG 0x080
#define TIOCM_DSR 0x100
#define TIOCM_CD TIOCM_CAR
#define TIOCM_RI TIOCM_RNG
#define TIOCM_OUT1 0x2000
#define TIOCM_OUT2 0x4000
#define TIOCM_LOOP 0x8000

#define N_TTY 0
#define N_SLIP 1
#define N_MOUSE 2
#define N_PPP 3
#define N_STRIP 4
#define N_AX25 5
#define N_X25 6
#define N_6PACK 7
#define N_MASC 8
#define N_R3964 9
#define N_PROFIBUS_FDL 10
#define N_IRDA 11
#define N_SMSBLOCK 12
#define N_HDLC 13
#define N_SYNC_PPP 14
#define N_HCI 15

#define FIOSETOWN 0x8901
#define SIOCSPGRP 0x8902
#define FIOGETOWN 0x8903
#define SIOCGPGRP 0x8904

#define SIOCGSTAMP 0x8906
#define SIOCGSTAMPNS 0x8907

#define SIOCADDRT 0x890B
#define SIOCDELRT 0x890C
#define SIOCRTMSG 0x890D

#define SIOCGIFNAME 0x8910
#define SIOCSIFLINK 0x8911
#define SIOCGIFCONF 0x8912
#define SIOCGIFFLAGS 0x8913
#define SIOCSIFFLAGS 0x8914
#define SIOCGIFADDR 0x8915
#define SIOCSIFADDR 0x8916
#define SIOCGIFDSTADDR 0x8917
#define SIOCSIFDSTADDR 0x8918
#define SIOCGIFBRDADDR 0x8919
#define SIOCSIFBRDADDR 0x891a
#define SIOCGIFNETMASK 0x891b
#define SIOCSIFNETMASK 0x891c
#define SIOCGIFMETRIC 0x891d
#define SIOCSIFMETRIC 0x891e
#define SIOCGIFMEM 0x891f
#define SIOCSIFMEM 0x8920
#define SIOCGIFMTU 0x8921
#define SIOCSIFMTU 0x8922
#define SIOCSIFNAME 0x8923
#define SIOCSIFHWADDR 0x8924
#define SIOCGIFENCAP 0x8925
#define SIOCSIFENCAP 0x8926
#define SIOCGIFHWADDR 0x8927
#define SIOCGIFSLAVE 0x8929
#define SIOCSIFSLAVE 0x8930
#define SIOCADDMULTI 0x8931
#define SIOCDELMULTI 0x8932
#define SIOCGIFINDEX 0x8933
#define SIOGIFINDEX SIOCGIFINDEX
#define SIOCSIFPFLAGS 0x8934
#define SIOCGIFPFLAGS 0x8935
#define SIOCDIFADDR 0x8936
#define SIOCSIFHWBROADCAST 0x8937
#define SIOCGIFCOUNT 0x8938

#define SIOCGIFBR 0x8940
#define SIOCSIFBR 0x8941

#define SIOCGIFTXQLEN 0x8942
#define SIOCSIFTXQLEN 0x8943

#define SIOCDARP 0x8953
#define SIOCGARP 0x8954
#define SIOCSARP 0x8955

#define SIOCDRARP 0x8960
#define SIOCGRARP 0x8961
#define SIOCSRARP 0x8962

#define SIOCGIFMAP 0x8970
#define SIOCSIFMAP 0x8971

#define SIOCADDDLCI 0x8980
#define SIOCDELDLCI 0x8981

#define SIOCDEVPRIVATE 0x89F0
#define SIOCPROTOPRIVATE 0x89E0
# 34 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_dirent.h" 1

#define LIBC_DIRENT_H__ 

#define DT_UNKNOWN 0x00
#define DT_REG 0x01
#define DT_DIR 0x02
# 35 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_signal.h" 1
# 26 "../../../include/libc/libc_signal.h"
#define LIBC_SIGNAL_H__ 
# 41 "../../../include/libc/libc_signal.h"
union sigval
{
    int sival_int;
    void *sival_ptr;
};



struct sigevent
{
    int sigev_notify;
    int sigev_signo;
    union sigval sigev_value;
    void (*sigev_notify_function)( union sigval );

    void *sigev_notify_attributes;
};



struct siginfo
{
    rt_uint16_t si_signo;
    rt_uint16_t si_code;

    union sigval si_value;
};
typedef struct siginfo siginfo_t;


#define SI_USER 0x01
#define SI_QUEUE 0x02
#define SI_TIMER 0x03

#define SI_ASYNCIO 0x04

#define SI_MESGQ 0x05







# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 1 3 4







#define _SIGNAL_H_ 




# 12 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 3 4
typedef void (*sa_sighandler_t)(int);
typedef void (*__sighandler_t)(int);
typedef int sig_atomic_t;






#define SIG_DFL ((sa_sighandler_t) 1)
#define SIG_IGN ((sa_sighandler_t) 2)
#define SIG_ERR ((sa_sighandler_t)-1)

#define NUM_LIBC_SIGNALS 18

#define SIGHUP 1
#define SIGINT 2
#define SIGQUIT 3
#define SIGILL 4
#define SIGTRAP 5
#define SIGABRT 6
#define SIGIOT 6
#define SIGBUS 7
#define SIGFPE 8
#define SIGKILL 9
#define SIGUSR1 10
#define SIGSEGV 11
#define SIGUSR2 12
#define SIGPIPE 13
#define SIGALRM 14
#define SIGTERM 15



extern sa_sighandler_t signal(int __sig, sa_sighandler_t __handler);
extern int raise(int __sig);
# 86 "../../../include/libc/libc_signal.h" 2
# 36 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_fdset.h" 1
# 26 "../../../include/libc/libc_fdset.h"
#define LIBC_FDSET_H__ 
# 44 "../../../include/libc/libc_fdset.h"
#define FD_SETSIZE DFS_FD_MAX






#define NBBY 8


# 53 "../../../include/libc/libc_fdset.h"
typedef long fd_mask;
#define NFDBITS (sizeof (fd_mask) * NBBY)

#define howmany(x,y) (((x)+((y)-1))/(y))




typedef struct _types_fd_set {
    fd_mask fds_bits[(((12)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;

#define fd_set _types_fd_set

#define FD_SET(n,p) ((p)->fds_bits[(n)/NFDBITS] |= (1L << ((n) % NFDBITS)))
#define FD_CLR(n,p) ((p)->fds_bits[(n)/NFDBITS] &= ~(1L << ((n) % NFDBITS)))
#define FD_ISSET(n,p) ((p)->fds_bits[(n)/NFDBITS] & (1L << ((n) % NFDBITS)))
#define FD_ZERO(p) memset((void*)(p), 0, sizeof(*(p)))
# 37 "../../../include/rtlibc.h" 2
# 1072 "../../../include/rtdef.h" 2
# 38 "../../../include/rtthread.h" 2
# 1 "../../../include/rtservice.h" 1
# 31 "../../../include/rtservice.h"
#define __RT_SERVICE_H__ 
# 47 "../../../include/rtservice.h"
#define rt_container_of(ptr,type,member) ((type *)((char *)(ptr) - (unsigned long)(&((type *)0)->member)))






#define RT_LIST_OBJECT_INIT(object) { &(object), &(object) }






static __inline void rt_list_init(rt_list_t *l)
{
    l->next = l->prev = l;
}







static __inline void rt_list_insert_after(rt_list_t *l, rt_list_t *n)
{
    l->next->prev = n;
    n->next = l->next;

    l->next = n;
    n->prev = l;
}







static __inline void rt_list_insert_before(rt_list_t *l, rt_list_t *n)
{
    l->prev->next = n;
    n->prev = l->prev;

    l->prev = n;
    n->next = l;
}





static __inline void rt_list_remove(rt_list_t *n)
{
    n->next->prev = n->prev;
    n->prev->next = n->next;

    n->next = n->prev = n;
}





static __inline int rt_list_isempty(const rt_list_t *l)
{
    return l->next == l;
}





static __inline unsigned int rt_list_len(const rt_list_t *l)
{
    unsigned int len = 0;
    const rt_list_t *p = l;
    while (p->next != l)
    {
        p = p->next;
        len ++;
    }

    return len;
}







#define rt_list_entry(node,type,member) rt_container_of(node, type, member)
# 149 "../../../include/rtservice.h"
#define rt_list_for_each_entry(pos,head,member) for (pos = rt_list_entry((head)->next, typeof(*pos), member); &pos->member != (head); pos = rt_list_entry(pos->member.next, typeof(*pos), member))
# 161 "../../../include/rtservice.h"
#define rt_list_for_each_entry_safe(pos,n,head,member) for (pos = rt_list_entry((head)->next, typeof(*pos), member), n = rt_list_entry(pos->member.next, typeof(*pos), member); &pos->member != (head); pos = n, n = rt_list_entry(n->member.next, typeof(*n), member))
# 175 "../../../include/rtservice.h"
#define rt_list_first_entry(ptr,type,member) rt_list_entry((ptr)->next, type, member)


#define RT_SLIST_OBJECT_INIT(object) { RT_NULL }






static __inline void rt_slist_init(rt_slist_t *l)
{
    l->next = (0);
}

static __inline void rt_slist_append(rt_slist_t *l, rt_slist_t *n)
{
    struct rt_slist_node *node;

    node = l;
    while (node->next) node = node->next;


    node->next = n;
    n->next = (0);
}

static __inline void rt_slist_insert(rt_slist_t *l, rt_slist_t *n)
{
    n->next = l->next;
    l->next = n;
}

static __inline unsigned int rt_slist_len(const rt_slist_t *l)
{
    unsigned int len = 0;
    const rt_slist_t *list = l->next;
    while (list != (0))
    {
        list = list->next;
        len ++;
    }

    return len;
}

static __inline rt_slist_t *rt_slist_remove(rt_slist_t *l, rt_slist_t *n)
{

    struct rt_slist_node *node = l;
    while (node->next && node->next != n) node = node->next;


    if (node->next != (rt_slist_t *)0) node->next = node->next->next;

    return l;
}

static __inline rt_slist_t *rt_slist_first(rt_slist_t *l)
{
    return l->next;
}

static __inline rt_slist_t *rt_slist_next(rt_slist_t *n)
{
    return n->next;
}

static __inline int rt_slist_isempty(rt_slist_t *l)
{
    return l->next == (0);
}







#define rt_slist_entry(node,type,member) rt_container_of(node, type, member)
# 263 "../../../include/rtservice.h"
#define rt_slist_for_each_entry(pos,head,member) for (pos = rt_slist_entry((head)->next, typeof(*pos), member); &pos->member != (RT_NULL); pos = rt_slist_entry(pos->member.next, typeof(*pos), member))
# 276 "../../../include/rtservice.h"
#define rt_slist_first_entry(ptr,type,member) rt_slist_entry((ptr)->next, type, member)
# 39 "../../../include/rtthread.h" 2
# 1 "../../../include/rtm.h" 1
# 22 "../../../include/rtm.h"
#define __RTM_H__ 


# 1 "../../../include/rtthread.h" 1
# 26 "../../../include/rtm.h" 2
# 54 "../../../include/rtm.h"
#define RTM_EXPORT(symbol) 
# 40 "../../../include/rtthread.h" 2
# 54 "../../../include/rtthread.h"
void rt_system_object_init(void);
struct rt_object_information *
rt_object_get_information(enum rt_object_class_type type);
void rt_object_init(struct rt_object *object,
                    enum rt_object_class_type type,
                    const char *name);
void rt_object_detach(rt_object_t object);
rt_object_t rt_object_allocate(enum rt_object_class_type type,
                               const char *name);
void rt_object_delete(rt_object_t object);
rt_bool_t rt_object_is_systemobject(rt_object_t object);
rt_object_t rt_object_find(const char *name, rt_uint8_t type);


void rt_object_attach_sethook(void (*hook)(struct rt_object *object));
void rt_object_detach_sethook(void (*hook)(struct rt_object *object));
void rt_object_trytake_sethook(void (*hook)(struct rt_object *object));
void rt_object_take_sethook(void (*hook)(struct rt_object *object));
void rt_object_put_sethook(void (*hook)(struct rt_object *object));
# 86 "../../../include/rtthread.h"
void rt_system_tick_init(void);
rt_tick_t rt_tick_get(void);
void rt_tick_set(rt_tick_t tick);
void rt_tick_increase(void);
int rt_tick_from_millisecond(rt_int32_t ms);

void rt_system_timer_init(void);
void rt_system_timer_thread_init(void);

void rt_timer_init(rt_timer_t timer,
                   const char *name,
                   void (*timeout)(void *parameter),
                   void *parameter,
                   rt_tick_t time,
                   rt_uint8_t flag);
rt_err_t rt_timer_detach(rt_timer_t timer);
rt_timer_t rt_timer_create(const char *name,
                           void (*timeout)(void *parameter),
                           void *parameter,
                           rt_tick_t time,
                           rt_uint8_t flag);
rt_err_t rt_timer_delete(rt_timer_t timer);
rt_err_t rt_timer_start(rt_timer_t timer);
rt_err_t rt_timer_stop(rt_timer_t timer);
rt_err_t rt_timer_control(rt_timer_t timer, int cmd, void *arg);

rt_tick_t rt_timer_next_timeout_tick(void);
void rt_timer_check(void);


void rt_timer_timeout_sethook(void (*hook)(struct rt_timer *timer));
# 130 "../../../include/rtthread.h"
rt_err_t rt_thread_init(struct rt_thread *thread,
                        const char *name,
                        void (*entry)(void *parameter),
                        void *parameter,
                        void *stack_start,
                        rt_uint32_t stack_size,
                        rt_uint8_t priority,
                        rt_uint32_t tick);
rt_err_t rt_thread_detach(rt_thread_t thread);
rt_thread_t rt_thread_create(const char *name,
                             void (*entry)(void *parameter),
                             void *parameter,
                             rt_uint32_t stack_size,
                             rt_uint8_t priority,
                             rt_uint32_t tick);
rt_thread_t rt_thread_self(void);
rt_thread_t rt_thread_find(char *name);
rt_err_t rt_thread_startup(rt_thread_t thread);
rt_err_t rt_thread_delete(rt_thread_t thread);

rt_err_t rt_thread_yield(void);
rt_err_t rt_thread_delay(rt_tick_t tick);
rt_err_t rt_thread_mdelay(rt_int32_t ms);
rt_err_t rt_thread_control(rt_thread_t thread, int cmd, void *arg);
rt_err_t rt_thread_suspend(rt_thread_t thread);
rt_err_t rt_thread_resume(rt_thread_t thread);
void rt_thread_timeout(void *parameter);
# 165 "../../../include/rtthread.h"
void rt_thread_suspend_sethook(void (*hook)(rt_thread_t thread));
void rt_thread_resume_sethook (void (*hook)(rt_thread_t thread));
void rt_thread_inited_sethook (void (*hook)(rt_thread_t thread));





void rt_thread_idle_init(void);

void rt_thread_idle_sethook(void (*hook)(void));
void rt_thread_idle_delhook(void (*hook)(void));

void rt_thread_idle_excute(void);
rt_thread_t rt_thread_idle_gethandler(void);




void rt_system_scheduler_init(void);
void rt_system_scheduler_start(void);

void rt_schedule(void);
void rt_schedule_insert_thread(struct rt_thread *thread);
void rt_schedule_remove_thread(struct rt_thread *thread);

void rt_enter_critical(void);
void rt_exit_critical(void);
rt_uint16_t rt_critical_level(void);


void rt_scheduler_sethook(void (*hook)(rt_thread_t from, rt_thread_t to));
# 253 "../../../include/rtthread.h"
void rt_system_heap_init(void *begin_addr, void *end_addr);

void *rt_malloc(rt_size_t nbytes);
void rt_free(void *ptr);
void *rt_realloc(void *ptr, rt_size_t nbytes);
void *rt_calloc(rt_size_t count, rt_size_t size);
void *rt_malloc_align(rt_size_t size, rt_size_t align);
void rt_free_align(void *ptr);

void rt_memory_info(rt_uint32_t *total,
                    rt_uint32_t *used,
                    rt_uint32_t *max_used);







void rt_malloc_sethook(void (*hook)(void *ptr, rt_uint32_t size));
void rt_free_sethook(void (*hook)(void *ptr));
# 282 "../../../include/rtthread.h"
rt_err_t rt_memheap_init(struct rt_memheap *memheap,
                         const char *name,
                         void *start_addr,
                         rt_uint32_t size);
rt_err_t rt_memheap_detach(struct rt_memheap *heap);
void *rt_memheap_alloc(struct rt_memheap *heap, rt_uint32_t size);
void *rt_memheap_realloc(struct rt_memheap *heap, void *ptr, rt_size_t newsize);
void rt_memheap_free(void *ptr);
# 304 "../../../include/rtthread.h"
rt_err_t rt_sem_init(rt_sem_t sem,
                     const char *name,
                     rt_uint32_t value,
                     rt_uint8_t flag);
rt_err_t rt_sem_detach(rt_sem_t sem);
rt_sem_t rt_sem_create(const char *name, rt_uint32_t value, rt_uint8_t flag);
rt_err_t rt_sem_delete(rt_sem_t sem);

rt_err_t rt_sem_take(rt_sem_t sem, rt_int32_t time);
rt_err_t rt_sem_trytake(rt_sem_t sem);
rt_err_t rt_sem_release(rt_sem_t sem);
rt_err_t rt_sem_control(rt_sem_t sem, int cmd, void *arg);






rt_err_t rt_mutex_init(rt_mutex_t mutex, const char *name, rt_uint8_t flag);
rt_err_t rt_mutex_detach(rt_mutex_t mutex);
rt_mutex_t rt_mutex_create(const char *name, rt_uint8_t flag);
rt_err_t rt_mutex_delete(rt_mutex_t mutex);

rt_err_t rt_mutex_take(rt_mutex_t mutex, rt_int32_t time);
rt_err_t rt_mutex_release(rt_mutex_t mutex);
rt_err_t rt_mutex_control(rt_mutex_t mutex, int cmd, void *arg);






rt_err_t rt_event_init(rt_event_t event, const char *name, rt_uint8_t flag);
rt_err_t rt_event_detach(rt_event_t event);
rt_event_t rt_event_create(const char *name, rt_uint8_t flag);
rt_err_t rt_event_delete(rt_event_t event);

rt_err_t rt_event_send(rt_event_t event, rt_uint32_t set);
rt_err_t rt_event_recv(rt_event_t event,
                       rt_uint32_t set,
                       rt_uint8_t opt,
                       rt_int32_t timeout,
                       rt_uint32_t *recved);
rt_err_t rt_event_control(rt_event_t event, int cmd, void *arg);






rt_err_t rt_mb_init(rt_mailbox_t mb,
                    const char *name,
                    void *msgpool,
                    rt_size_t size,
                    rt_uint8_t flag);
rt_err_t rt_mb_detach(rt_mailbox_t mb);
rt_mailbox_t rt_mb_create(const char *name, rt_size_t size, rt_uint8_t flag);
rt_err_t rt_mb_delete(rt_mailbox_t mb);

rt_err_t rt_mb_send(rt_mailbox_t mb, rt_uint32_t value);
rt_err_t rt_mb_send_wait(rt_mailbox_t mb,
                         rt_uint32_t value,
                         rt_int32_t timeout);
rt_err_t rt_mb_recv(rt_mailbox_t mb, rt_uint32_t *value, rt_int32_t timeout);
rt_err_t rt_mb_control(rt_mailbox_t mb, int cmd, void *arg);






rt_err_t rt_mq_init(rt_mq_t mq,
                    const char *name,
                    void *msgpool,
                    rt_size_t msg_size,
                    rt_size_t pool_size,
                    rt_uint8_t flag);
rt_err_t rt_mq_detach(rt_mq_t mq);
rt_mq_t rt_mq_create(const char *name,
                     rt_size_t msg_size,
                     rt_size_t max_msgs,
                     rt_uint8_t flag);
rt_err_t rt_mq_delete(rt_mq_t mq);

rt_err_t rt_mq_send(rt_mq_t mq, void *buffer, rt_size_t size);
rt_err_t rt_mq_urgent(rt_mq_t mq, void *buffer, rt_size_t size);
rt_err_t rt_mq_recv(rt_mq_t mq,
                    void *buffer,
                    rt_size_t size,
                    rt_int32_t timeout);
rt_err_t rt_mq_control(rt_mq_t mq, int cmd, void *arg);
# 409 "../../../include/rtthread.h"
rt_device_t rt_device_find(const char *name);

rt_err_t rt_device_register(rt_device_t dev,
                            const char *name,
                            rt_uint16_t flags);
rt_err_t rt_device_unregister(rt_device_t dev);

rt_device_t rt_device_create(int type, int attach_size);
void rt_device_destroy(rt_device_t device);

rt_err_t rt_device_init_all(void);

rt_err_t
rt_device_set_rx_indicate(rt_device_t dev,
                          rt_err_t (*rx_ind)(rt_device_t dev, rt_size_t size));
rt_err_t
rt_device_set_tx_complete(rt_device_t dev,
                          rt_err_t (*tx_done)(rt_device_t dev, void *buffer));

rt_err_t rt_device_init (rt_device_t dev);
rt_err_t rt_device_open (rt_device_t dev, rt_uint16_t oflag);
rt_err_t rt_device_close(rt_device_t dev);
rt_size_t rt_device_read (rt_device_t dev,
                          rt_off_t pos,
                          void *buffer,
                          rt_size_t size);
rt_size_t rt_device_write(rt_device_t dev,
                          rt_off_t pos,
                          const void *buffer,
                          rt_size_t size);
rt_err_t rt_device_control(rt_device_t dev, int cmd, void *arg);
# 489 "../../../include/rtthread.h"
void rt_interrupt_enter(void);
void rt_interrupt_leave(void);




rt_uint8_t rt_interrupt_get_nest(void);


void rt_interrupt_enter_sethook(void (*hook)(void));
void rt_interrupt_leave_sethook(void (*hook)(void));



void rt_components_init(void);
void rt_components_board_init(void);
# 520 "../../../include/rtthread.h"
void rt_kprintf(const char *fmt, ...);
void rt_kputs(const char *str);

rt_int32_t rt_vsprintf(char *dest, const char *format, va_list arg_ptr);
rt_int32_t rt_vsnprintf(char *buf, rt_size_t size, const char *fmt, va_list args);
rt_int32_t rt_sprintf(char *buf, const char *format, ...);
rt_int32_t rt_snprintf(char *buf, rt_size_t size, const char *format, ...);


rt_device_t rt_console_set_device(const char *name);
rt_device_t rt_console_get_device(void);


rt_err_t rt_get_errno(void);
void rt_set_errno(rt_err_t no);
int *_rt_errno(void);


#define errno *_rt_errno()



int __rt_ffs(int value);

void *rt_memset(void *src, int c, rt_ubase_t n);
void *rt_memcpy(void *dest, const void *src, rt_ubase_t n);

rt_int32_t rt_strncmp(const char *cs, const char *ct, rt_ubase_t count);
rt_int32_t rt_strcmp(const char *cs, const char *ct);
rt_size_t rt_strlen(const char *src);
char *rt_strdup(const char *s);

char *rt_strstr(const char *str1, const char *str2);
rt_int32_t rt_sscanf(const char *buf, const char *fmt, ...);
char *rt_strncpy(char *dest, const char *src, rt_ubase_t n);
void *rt_memmove(void *dest, const void *src, rt_ubase_t n);
rt_int32_t rt_memcmp(const void *cs, const void *ct, rt_ubase_t count);
rt_uint32_t rt_strcasecmp(const char *a, const char *b);

void rt_show_version(void);


extern void (*rt_assert_hook)(const char *ex, const char *func, rt_size_t line);
void rt_assert_set_hook(void (*hook)(const char *ex, const char *func, rt_size_t line));

void rt_assert_handler(const char *ex, const char *func, rt_size_t line);



# 1 "../../../components/finsh/finsh_api.h" 1
# 24 "../../../components/finsh/finsh_api.h"
#define FINSH_API_H__ 






typedef long (*syscall_func)(void);


struct finsh_syscall
{
    const char* name;

    const char* desc;

    syscall_func func;
};
extern struct finsh_syscall *_syscall_table_begin, *_syscall_table_end;


struct finsh_syscall* finsh_syscall_lookup(const char* name);
# 105 "../../../components/finsh/finsh_api.h"
#define FINSH_FUNCTION_EXPORT_CMD(name,cmd,desc) const char __fsym_ ##cmd ##_name[] SECTION(".rodata.name") = #cmd; const char __fsym_ ##cmd ##_desc[] SECTION(".rodata.name") = #desc; const struct finsh_syscall __fsym_ ##cmd SECTION("FSymTab")= { __fsym_ ##cmd ##_name, __fsym_ ##cmd ##_desc, (syscall_func)&name };
# 115 "../../../components/finsh/finsh_api.h"
#define FINSH_VAR_EXPORT(name,type,desc) const char __vsym_ ##name ##_name[] SECTION(".rodata.name") = #name; const char __vsym_ ##name ##_desc[] SECTION(".rodata.name") = #desc; const struct finsh_sysvar __vsym_ ##name SECTION("VSymTab")= { __vsym_ ##name ##_name, __vsym_ ##name ##_desc, type, (void*)&name };
# 198 "../../../components/finsh/finsh_api.h"
#define FINSH_FUNCTION_EXPORT(name,desc) FINSH_FUNCTION_EXPORT_CMD(name, name, desc)
# 210 "../../../components/finsh/finsh_api.h"
#define FINSH_FUNCTION_EXPORT_ALIAS(name,alias,desc) FINSH_FUNCTION_EXPORT_CMD(name, alias, desc)
# 222 "../../../components/finsh/finsh_api.h"
#define MSH_CMD_EXPORT(command,desc) FINSH_FUNCTION_EXPORT_CMD(command, __cmd_ ##command, desc)

#define MSH_CMD_EXPORT_ALIAS(command,alias,desc) FINSH_FUNCTION_EXPORT_ALIAS(command, __cmd_ ##alias, desc)
# 570 "../../../include/rtthread.h" 2
# 33 "../../../include/rthw.h" 2
# 1 "../libraries/inc/tih/core_ck803.h" 1
# 25 "../libraries/inc/tih/core_ck803.h"
#define __CORE_CK803_H_GENERIC 

# 1 "../libraries/inc/tih/sysdep.h" 1
# 28 "../libraries/inc/tih/core_ck803.h" 2
# 43 "../libraries/inc/tih/core_ck803.h"
#define __CK803_CSI_VERSION_MAIN (0x04U)
#define __CK803_CSI_VERSION_SUB (0x1EU)
#define __CK803_CSI_VERSION ((__CK803_CSI_VERSION_MAIN << 16U) | __CK803_CSI_VERSION_SUB )



#define __CK80X (0x03U)



#define __FPU_USED 0U
# 70 "../libraries/inc/tih/core_ck803.h"
#define __CORE_CK803_H_DEPENDANT 







#define __CK803_REV 0x0000U



#define __VIC_PRIO_BITS 2U



#define __VIC_EXCP_NUM 32U



#define __VIC_IRQ_NUMS 32U



#define __Vendor_SysTickConfig 1U



#define __GSR_GCR_PRESENT 0U



#define __SOFTRESET_PRESENT 1U



#define __MPU_PRESENT 1U



#define __ICACHE_PRESENT 1U



#define __DCACHE_PRESENT 1U


# 1 "../libraries/inc/tih/csi_gcc.h" 1
# 25 "../libraries/inc/tih/csi_gcc.h"
#define _CSI_GCC_H_ 

#define __ASM __asm
#define __INLINE inline
#define __ALWAYS_INLINE __attribute__((always_inline)) static inline


# 1 "../libraries/inc/tih/csi_reg.h" 1
# 25 "../libraries/inc/tih/csi_reg.h"
#define _CSI_REG_H_ 
# 34 "../libraries/inc/tih/csi_reg.h"
__attribute__((always_inline)) static inline void __enable_irq(void)
{
    __asm volatile("psrset ie");
}
# 46 "../libraries/inc/tih/csi_reg.h"
__attribute__((always_inline)) static inline void __disable_irq(void)
{
    __asm volatile("psrclr ie");
}






__attribute__((always_inline)) static inline uint32_t __get_PSR(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, psr" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_PSR(uint32_t psr)
{
    __asm volatile("mtcr %0, psr" : : "r"(psr));
}






__attribute__((always_inline)) static inline uint32_t __get_SP(void)
{
    uint32_t result;

    __asm volatile("mov %0, sp" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_SP(uint32_t sp)
{
    __asm volatile("mov sp, %0" : : "r"(sp): "sp");
}







__attribute__((always_inline)) static inline uint32_t __get_VBR(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, vbr" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_VBR(uint32_t vbr)
{
    __asm volatile("mtcr %0, vbr" : : "r"(vbr));
}






__attribute__((always_inline)) static inline uint32_t __get_EPC(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, epc" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_EPC(uint32_t epc)
{
    __asm volatile("mtcr %0, epc" : : "r"(epc));
}






__attribute__((always_inline)) static inline uint32_t __get_EPSR(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, epsr" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_EPSR(uint32_t epsr)
{
    __asm volatile("mtcr %0, epsr" : : "r"(epsr));
}






__attribute__((always_inline)) static inline uint32_t __get_CPUID(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, cr<13, 0>" : "=r"(result));
    return (result);
}







__attribute__((always_inline)) static inline void __set_SRCR(uint32_t srcr)
{
    __asm volatile("mtcr %0, cr<31, 0>\n" : : "r"(srcr));
}
# 198 "../libraries/inc/tih/csi_reg.h"
__attribute__((always_inline)) static inline uint32_t __get_CCR(void)
{
    register uint32_t result;

    __asm volatile("mfcr %0, cr<18, 0>\n" : "=r"(result));
    return (result);
}







__attribute__((always_inline)) static inline void __set_CCR(uint32_t ccr)
{
    __asm volatile("mtcr %0, cr<18, 0>\n" : : "r"(ccr));
}







__attribute__((always_inline)) static inline uint32_t __get_CAPR(void)
{
    register uint32_t result;

    __asm volatile("mfcr %0, cr<19, 0>\n" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __set_CAPR(uint32_t capr)
{
    __asm volatile("mtcr %0, cr<19, 0>\n" : : "r"(capr));
}
# 248 "../libraries/inc/tih/csi_reg.h"
__attribute__((always_inline)) static inline void __set_PACR(uint32_t pacr)
{
    __asm volatile("mtcr %0, cr<20, 0>\n" : : "r"(pacr));
}







__attribute__((always_inline)) static inline uint32_t __get_PACR(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, cr<20, 0>" : "=r"(result));
    return (result);
}







__attribute__((always_inline)) static inline void __set_PRSR(uint32_t prsr)
{
    __asm volatile("mtcr %0, cr<21, 0>\n" : : "r"(prsr));
}






__attribute__((always_inline)) static inline uint32_t __get_PRSR(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, cr<21, 0>" : "=r"(result));
    return (result);
}







__attribute__((always_inline)) static inline uint32_t __get_UR14(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, cr<14, 1>" : "=r"(result));
    return (result);
}






__attribute__((always_inline)) static inline void __enable_excp_irq(void)
{
    __asm volatile("psrset ee, ie");
}







__attribute__((always_inline)) static inline void __disable_excp_irq(void)
{
    __asm volatile("psrclr ee, ie");
}
# 33 "../libraries/inc/tih/csi_gcc.h" 2
# 1 "../libraries/inc/tih/csi_instr.h" 1
# 25 "../libraries/inc/tih/csi_instr.h"
#define _CSI_INSTR_H_ 


#define __CSI_GCC_OUT_REG(r) "=r" (r)
#define __CSI_GCC_USE_REG(r) "r" (r)





__attribute__((always_inline)) static inline void __NOP(void)
{
    __asm volatile("nop");
}






__attribute__((always_inline)) static inline void __WFI(void)
{
    __asm volatile("wait");
}





__attribute__((always_inline)) static inline void __WAIT(void)
{
    __asm volatile("wait");
}





__attribute__((always_inline)) static inline void __DOZE(void)
{
    __asm volatile("doze");
}





__attribute__((always_inline)) static inline void __STOP(void)
{
    __asm volatile("stop");
}







__attribute__((always_inline)) static inline void __ISB(void)
{
    __asm volatile("sync"::: "memory");
}







__attribute__((always_inline)) static inline void __DSB(void)
{
    __asm volatile("sync"::: "memory");
}







__attribute__((always_inline)) static inline void __DMB(void)
{
    __asm volatile("sync"::: "memory");
}
# 117 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{
    return __builtin_bswap32(value);
}
# 129 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
    uint32_t result;

    __asm volatile("revh %0, %1" : "=r" (result) : "r" (value));




    return (result);
}
# 148 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline int32_t __REVSH(int32_t value)
{
    return (short)(((value & 0xFF00) >> 8) | ((value & 0x00FF) << 8));
}
# 161 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
    return (op1 >> op2) | (op1 << (32U - op2));
}







__attribute__((always_inline)) static inline void __BKPT()
{
    __asm volatile("bkpt");
}







__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
    uint32_t result;


    __asm volatile("brev %0, %1" : "=r"(result) : "r"(value));
# 203 "../libraries/inc/tih/csi_instr.h"
    return (result);
}
# 213 "../libraries/inc/tih/csi_instr.h"
#define __CLZ __builtin_clz






__attribute__((always_inline)) static inline int32_t __SSAT(int32_t x, uint32_t y)
{
    int32_t posMax, negMin;
    uint32_t i;

    posMax = 1;

    for (i = 0; i < (y - 1); i++)
    {
        posMax = posMax * 2;
    }

    if (x > 0)
    {
        posMax = (posMax - 1);

        if (x > posMax)
        {
            x = posMax;
        }


    }
    else
    {
        negMin = -posMax;

        if (x < negMin)
        {
            x = negMin;
        }


    }

    return (x);
}
# 265 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USAT(uint32_t value, uint32_t sat)
{
    uint32_t result;

    if ((((0xFFFFFFFF >> sat) << sat) & value) != 0)
    {
        result = 0xFFFFFFFF >> (32 - sat);
    }
    else
    {
        result = value;
    }

    return (result);
}
# 288 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __IUSAT(uint32_t value, uint32_t sat)
{
    uint32_t result;

    if (value & 0x80000000)
    {
        result = 0;
    }
    else if ((((0xFFFFFFFF >> sat) << sat) & value) != 0)
    {
        result = 0xFFFFFFFF >> (32 - sat);
    }
    else
    {
        result = value;
    }

    return (result);
}
# 316 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t op1)
{

    uint32_t res = 0;
    __asm volatile("bgeni    t0, 31\n\t"
                   "lsri     %0, 1\n\t"
                   "movt     %1, t0\n\t"
                   "or       %1, %1, %0\n\t"
                   : "=r"(op1), "=r"(res): "0"(op1), "1"(res): "t0");
    return res;
# 338 "../libraries/inc/tih/csi_instr.h"
}







__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
    uint32_t result;

    __asm volatile("ldb %0, (%1, 0)" : "=r"(result) : "r"(addr));
    return ((uint8_t) result);
}
# 361 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
    uint32_t result;


    __asm volatile("ldh %0, (%1, 0)" : "=r"(result) : "r"(addr));
    return ((uint16_t) result);
}
# 377 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *addr)
{
    uint32_t result;


    __asm volatile("ldw %0, (%1, 0)" : "=r"(result) : "r"(addr));
    return (result);
}
# 393 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{

    __asm volatile("stb %1, (%0, 0)" :: "r"(addr), "r"((uint32_t)value) : "memory");
}
# 406 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{

    __asm volatile("sth %1, (%0, 0)" :: "r"(addr), "r"((uint32_t)value) : "memory");
}
# 419 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{

    __asm volatile("stw %1, (%0, 0)" :: "r"(addr), "r"(value) : "memory");
}
# 438 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __get_FPUType(void)
{
    uint32_t result;

    __asm volatile("mfcr %0, cr<13, 0>" : "=r"(result));
    return 0;
}
# 469 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __PKHBT(uint32_t val1, uint32_t val2, uint32_t val3)
{
    return ((((int32_t)(val1) << 0) & (int32_t)0x0000FFFF) | (((int32_t)(val2) << val3) & (int32_t)0xFFFF0000));
}
# 487 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __PKHTB(uint32_t val1, uint32_t val2, uint32_t val3)
{
    return ((((int32_t)(val1) << 0) & (int32_t)0xFFFF0000) | (((int32_t)(val2) >> val3) & (int32_t)0x0000FFFF));
}
# 503 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SSAT16(int32_t x, const uint32_t y)
{
    int32_t r = 0, s = 0;

    r = __SSAT((((int32_t)x << 16) >> 16), y) & (int32_t)0x0000FFFF;
    s = __SSAT((((int32_t)x) >> 16), y) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 524 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USAT16(uint32_t x, const uint32_t y)
{
    int32_t r = 0, s = 0;

    r = __IUSAT(((x << 16) >> 16), y) & 0x0000FFFF;
    s = __IUSAT(((x) >> 16), y) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 551 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = __SSAT(((((int32_t)x << 24) >> 24) + (((int32_t)y << 24) >> 24)), 8) & (int32_t)0x000000FF;
    s = __SSAT(((((int32_t)x << 16) >> 24) + (((int32_t)y << 16) >> 24)), 8) & (int32_t)0x000000FF;
    t = __SSAT(((((int32_t)x << 8) >> 24) + (((int32_t)y << 8) >> 24)), 8) & (int32_t)0x000000FF;
    u = __SSAT(((((int32_t)x) >> 24) + (((int32_t)y) >> 24)), 8) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 580 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = __IUSAT((((x << 24) >> 24) + ((y << 24) >> 24)), 8) & 0x000000FF;
    s = __IUSAT((((x << 16) >> 24) + ((y << 16) >> 24)), 8) & 0x000000FF;
    t = __IUSAT((((x << 8) >> 24) + ((y << 8) >> 24)), 8) & 0x000000FF;
    u = __IUSAT((((x) >> 24) + ((y) >> 24)), 8) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 607 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = ((((int32_t)x << 24) >> 24) + (((int32_t)y << 24) >> 24)) & (int32_t)0x000000FF;
    s = ((((int32_t)x << 16) >> 24) + (((int32_t)y << 16) >> 24)) & (int32_t)0x000000FF;
    t = ((((int32_t)x << 8) >> 24) + (((int32_t)y << 8) >> 24)) & (int32_t)0x000000FF;
    u = ((((int32_t)x) >> 24) + (((int32_t)y) >> 24)) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 634 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = (((x << 24) >> 24) + ((y << 24) >> 24)) & 0x000000FF;
    s = (((x << 16) >> 24) + ((y << 16) >> 24)) & 0x000000FF;
    t = (((x << 8) >> 24) + ((y << 8) >> 24)) & 0x000000FF;
    u = (((x) >> 24) + ((y) >> 24)) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 663 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QSUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = __SSAT(((((int32_t)x << 24) >> 24) - (((int32_t)y << 24) >> 24)), 8) & (int32_t)0x000000FF;
    s = __SSAT(((((int32_t)x << 16) >> 24) - (((int32_t)y << 16) >> 24)), 8) & (int32_t)0x000000FF;
    t = __SSAT(((((int32_t)x << 8) >> 24) - (((int32_t)y << 8) >> 24)), 8) & (int32_t)0x000000FF;
    u = __SSAT(((((int32_t)x) >> 24) - (((int32_t)y) >> 24)), 8) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 692 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQSUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = __IUSAT((((x << 24) >> 24) - ((y << 24) >> 24)), 8) & 0x000000FF;
    s = __IUSAT((((x << 16) >> 24) - ((y << 16) >> 24)), 8) & 0x000000FF;
    t = __IUSAT((((x << 8) >> 24) - ((y << 8) >> 24)), 8) & 0x000000FF;
    u = __IUSAT((((x) >> 24) - ((y) >> 24)), 8) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 719 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SSUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = ((((int32_t)x << 24) >> 24) - (((int32_t)y << 24) >> 24)) & (int32_t)0x000000FF;
    s = ((((int32_t)x << 16) >> 24) - (((int32_t)y << 16) >> 24)) & (int32_t)0x000000FF;
    t = ((((int32_t)x << 8) >> 24) - (((int32_t)y << 8) >> 24)) & (int32_t)0x000000FF;
    u = ((((int32_t)x) >> 24) - (((int32_t)y) >> 24)) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 746 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = (((x << 24) >> 24) - ((y << 24) >> 24)) & 0x000000FF;
    s = (((x << 16) >> 24) - ((y << 16) >> 24)) & 0x000000FF;
    t = (((x << 8) >> 24) - ((y << 8) >> 24)) & 0x000000FF;
    u = (((x) >> 24) - ((y) >> 24)) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 776 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USAD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = (((x << 24) >> 24) - ((y << 24) >> 24)) & 0x000000FF;
    s = (((x << 16) >> 24) - ((y << 16) >> 24)) & 0x000000FF;
    t = (((x << 8) >> 24) - ((y << 8) >> 24)) & 0x000000FF;
    u = (((x) >> 24) - ((y) >> 24)) & 0x000000FF;

    return (u + t + s + r);
}
# 808 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USADA8(uint32_t x, uint32_t y, uint32_t sum)
{
    int32_t r, s, t, u;







    r = (abs(((x << 24) >> 24) - ((y << 24) >> 24))) & 0x000000FF;
    s = (abs(((x << 16) >> 24) - ((y << 16) >> 24))) & 0x000000FF;
    t = (abs(((x << 8) >> 24) - ((y << 8) >> 24))) & 0x000000FF;
    u = (abs(((x) >> 24) - ((y) >> 24))) & 0x000000FF;

    return (u + t + s + r + sum);
}
# 839 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QADD16(uint32_t x, uint32_t y)
{
    int32_t r = 0, s = 0;

    r = __SSAT(((((int32_t)x << 16) >> 16) + (((int32_t)y << 16) >> 16)), 16) & (int32_t)0x0000FFFF;
    s = __SSAT(((((int32_t)x) >> 16) + (((int32_t)y) >> 16)), 16) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 862 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQADD16(uint32_t x, uint32_t y)
{
    int32_t r = 0, s = 0;

    r = __IUSAT((((x << 16) >> 16) + ((y << 16) >> 16)), 16) & 0x0000FFFF;
    s = __IUSAT((((x) >> 16) + ((y) >> 16)), 16) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 883 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SADD16(uint32_t x, uint32_t y)
{
    int32_t r = 0, s = 0;

    r = ((((int32_t)x << 16) >> 16) + (((int32_t)y << 16) >> 16)) & (int32_t)0x0000FFFF;
    s = ((((int32_t)x) >> 16) + (((int32_t)y) >> 16)) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 904 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UADD16(uint32_t x, uint32_t y)
{
    int32_t r = 0, s = 0;

    r = (((x << 16) >> 16) + ((y << 16) >> 16)) & 0x0000FFFF;
    s = (((x) >> 16) + ((y) >> 16)) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 926 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHADD16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((((int32_t)x << 16) >> 16) + (((int32_t)y << 16) >> 16)) >> 1) & (int32_t)0x0000FFFF;
    s = (((((int32_t)x) >> 16) + (((int32_t)y) >> 16)) >> 1) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 947 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHADD16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((x << 16) >> 16) + ((y << 16) >> 16)) >> 1) & 0x0000FFFF;
    s = ((((x) >> 16) + ((y) >> 16)) >> 1) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 972 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = (((((int32_t)x << 24) >> 24) + (((int32_t)y << 24) >> 24)) >> 1) & (int32_t)0x000000FF;
    s = (((((int32_t)x << 16) >> 24) + (((int32_t)y << 16) >> 24)) >> 1) & (int32_t)0x000000FF;
    t = (((((int32_t)x << 8) >> 24) + (((int32_t)y << 8) >> 24)) >> 1) & (int32_t)0x000000FF;
    u = (((((int32_t)x) >> 24) + (((int32_t)y) >> 24)) >> 1) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 999 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHADD8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = ((((x << 24) >> 24) + ((y << 24) >> 24)) >> 1) & 0x000000FF;
    s = ((((x << 16) >> 24) + ((y << 16) >> 24)) >> 1) & 0x000000FF;
    t = ((((x << 8) >> 24) + ((y << 8) >> 24)) >> 1) & 0x000000FF;
    u = ((((x) >> 24) + ((y) >> 24)) >> 1) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 1024 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QSUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __SSAT(((((int32_t)x << 16) >> 16) - (((int32_t)y << 16) >> 16)), 16) & (int32_t)0x0000FFFF;
    s = __SSAT(((((int32_t)x) >> 16) - (((int32_t)y) >> 16)), 16) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1047 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQSUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __IUSAT((((x << 16) >> 16) - ((y << 16) >> 16)), 16) & 0x0000FFFF;
    s = __IUSAT((((x) >> 16) - ((y) >> 16)), 16) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1070 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SSUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((int32_t)x << 16) >> 16) - (((int32_t)y << 16) >> 16)) & (int32_t)0x0000FFFF;
    s = ((((int32_t)x) >> 16) - (((int32_t)y) >> 16)) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1093 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((x << 16) >> 16) - ((y << 16) >> 16)) & 0x0000FFFF;
    s = (((x) >> 16) - ((y) >> 16)) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1114 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHSUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((((int32_t)x << 16) >> 16) - (((int32_t)y << 16) >> 16)) >> 1) & (int32_t)0x0000FFFF;
    s = (((((int32_t)x) >> 16) - (((int32_t)y) >> 16)) >> 1) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1135 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHSUB16(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((x << 16) >> 16) - ((y << 16) >> 16)) >> 1) & 0x0000FFFF;
    s = ((((x) >> 16) - ((y) >> 16)) >> 1) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1160 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHSUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = (((((int32_t)x << 24) >> 24) - (((int32_t)y << 24) >> 24)) >> 1) & (int32_t)0x000000FF;
    s = (((((int32_t)x << 16) >> 24) - (((int32_t)y << 16) >> 24)) >> 1) & (int32_t)0x000000FF;
    t = (((((int32_t)x << 8) >> 24) - (((int32_t)y << 8) >> 24)) >> 1) & (int32_t)0x000000FF;
    u = (((((int32_t)x) >> 24) - (((int32_t)y) >> 24)) >> 1) & (int32_t)0x000000FF;

    return ((uint32_t)((u << 24) | (t << 16) | (s << 8) | (r)));
}
# 1187 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHSUB8(uint32_t x, uint32_t y)
{
    int32_t r, s, t, u;

    r = ((((x << 24) >> 24) - ((y << 24) >> 24)) >> 1) & 0x000000FF;
    s = ((((x << 16) >> 24) - ((y << 16) >> 24)) >> 1) & 0x000000FF;
    t = ((((x << 8) >> 24) - ((y << 8) >> 24)) >> 1) & 0x000000FF;
    u = ((((x) >> 24) - ((y) >> 24)) >> 1) & 0x000000FF;

    return ((u << 24) | (t << 16) | (s << 8) | (r));
}
# 1217 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __SSAT(((((int32_t)x << 16) >> 16) - (((int32_t)y) >> 16)), 16) & (int32_t)0x0000FFFF;
    s = __SSAT(((((int32_t)x) >> 16) + (((int32_t)y << 16) >> 16)), 16) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1245 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __IUSAT((((x << 16) >> 16) - ((y) >> 16)), 16) & 0x0000FFFF;
    s = __IUSAT((((x) >> 16) + ((y << 16) >> 16)), 16) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1271 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((int32_t)x << 16) >> 16) - (((int32_t)y) >> 16)) & (int32_t)0x0000FFFF;
    s = ((((int32_t)x) >> 16) + (((int32_t)y << 16) >> 16)) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1297 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((x << 16) >> 16) - ((y) >> 16)) & 0x0000FFFF;
    s = (((x) >> 16) + ((y << 16) >> 16)) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1321 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((((int32_t)x << 16) >> 16) - (((int32_t)y) >> 16)) >> 1) & (int32_t)0x0000FFFF;
    s = (((((int32_t)x) >> 16) + (((int32_t)y << 16) >> 16)) >> 1) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1347 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHASX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((x << 16) >> 16) - ((y) >> 16)) >> 1) & 0x0000FFFF;
    s = ((((x) >> 16) + ((y << 16) >> 16)) >> 1) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1375 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __QSAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __SSAT(((((int32_t)x << 16) >> 16) + (((int32_t)y) >> 16)), 16) & (int32_t)0x0000FFFF;
    s = __SSAT(((((int32_t)x) >> 16) - (((int32_t)y << 16) >> 16)), 16) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1403 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UQSAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = __IUSAT((((x << 16) >> 16) + ((y) >> 16)), 16) & 0x0000FFFF;
    s = __IUSAT((((x) >> 16) - ((y << 16) >> 16)), 16) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1429 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __USAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((x << 16) >> 16) + ((y) >> 16)) & 0x0000FFFF;
    s = (((x) >> 16) - ((y << 16) >> 16)) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1455 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SSAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((int32_t)x << 16) >> 16) + (((int32_t)y) >> 16)) & (int32_t)0x0000FFFF;
    s = ((((int32_t)x) >> 16) - (((int32_t)y << 16) >> 16)) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1480 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SHSAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = (((((int32_t)x << 16) >> 16) + (((int32_t)y) >> 16)) >> 1) & (int32_t)0x0000FFFF;
    s = (((((int32_t)x) >> 16) - (((int32_t)y << 16) >> 16)) >> 1) & (int32_t)0x0000FFFF;

    return ((uint32_t)((s << 16) | (r)));
}
# 1506 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UHSAX(uint32_t x, uint32_t y)
{
    int32_t r, s;

    r = ((((x << 16) >> 16) + ((y) >> 16)) >> 1) & 0x0000FFFF;
    s = ((((x) >> 16) - ((y << 16) >> 16)) >> 1) & 0x0000FFFF;

    return ((s << 16) | (r));
}
# 1529 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMUSDX(uint32_t x, uint32_t y)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16))));
}
# 1547 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMUADX(uint32_t x, uint32_t y)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16))));
}
# 1563 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline int32_t __QADD(int32_t x, int32_t y)
{
    int32_t result;

    if (y >= 0) {
        if (x + y >= x) {
            result = x + y;
        } else {
            result = 0x7FFFFFFF;
        }
    } else {
        if (x + y < x) {
            result = x + y;
        } else {
            result = 0x80000000;
        }
    }

    return result;
}
# 1593 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline int32_t __QSUB(int32_t x, int32_t y)
{
    int64_t tmp;
    int32_t result;

    tmp = (int64_t)x - (int64_t)y;

    if (tmp > 0x7fffffff) {
        tmp = 0x7fffffff;
    } else if (tmp < (-2147483647 - 1)) {
        tmp = -2147483647 - 1;
    }

    result = tmp;
    return result;
}
# 1623 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMLAD(uint32_t x, uint32_t y, uint32_t sum)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16)) +
                       (((int32_t)sum))));
}
# 1644 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMLADX(uint32_t x, uint32_t y, uint32_t sum)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16)) +
                       (((int32_t)sum))));
}
# 1665 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMLSD(uint32_t x, uint32_t y, uint32_t sum)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16)) +
                       (((int32_t)sum))));
}
# 1685 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMLSDX(uint32_t x, uint32_t y, uint32_t sum)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16)) +
                       (((int32_t)sum))));
}
# 1708 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint64_t __SMLALD(uint32_t x, uint32_t y, uint64_t sum)
{
    return ((uint64_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16)) +
                       (((uint64_t)sum))));
}
# 1732 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint64_t __SMLALDX(uint32_t x, uint32_t y, uint64_t sum)
{
    return ((uint64_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16)) +
                       (((uint64_t)sum))));
}
# 1755 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint64_t __SMLSLD(uint32_t x, uint32_t y, uint64_t sum)
{
    return ((uint64_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16)) +
                       (((uint64_t)sum))));
}
# 1777 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint64_t __SMLSLDX(uint32_t x, uint32_t y, uint64_t sum)
{
    return ((uint64_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y << 16) >> 16)) +
                       (((uint64_t)sum))));
}
# 1796 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMMLA(int32_t x, int32_t y, int32_t sum)
{
    return (uint32_t)((int32_t)((int64_t)((int64_t)x * (int64_t)y) >> 32) + sum);
}
# 1812 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMUAD(uint32_t x, uint32_t y)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) +
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16))));
}
# 1830 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SMUSD(uint32_t x, uint32_t y)
{
    return ((uint32_t)(((((int32_t)x << 16) >> 16) * (((int32_t)y << 16) >> 16)) -
                       ((((int32_t)x) >> 16) * (((int32_t)y) >> 16))));
}
# 1848 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SXTAB16(uint32_t x, uint32_t y)
{
    return ((uint32_t)((((((int32_t)y << 24) >> 24) + (((int32_t)x << 16) >> 16)) & (int32_t)0x0000FFFF) |
                       (((((int32_t)y << 8) >> 8) + (((int32_t)x >> 16) << 16)) & (int32_t)0xFFFF0000)));
}
# 1866 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UXTAB16(uint32_t x, uint32_t y)
{
    return ((uint32_t)(((((y << 24) >> 24) + ((x << 16) >> 16)) & 0x0000FFFF) |
                       ((((y << 8) >> 8) + ((x >> 16) << 16)) & 0xFFFF0000)));
}
# 1883 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __SXTB16(uint32_t x)
{
    return ((uint32_t)(((((int32_t)x << 24) >> 24) & (int32_t)0x0000FFFF) |
                       ((((int32_t)x << 8) >> 8) & (int32_t)0xFFFF0000)));
}
# 1900 "../libraries/inc/tih/csi_instr.h"
__attribute__((always_inline)) static inline uint32_t __UXTB16(uint32_t x)
{
    return ((uint32_t)((((x << 24) >> 24) & 0x0000FFFF) |
                       (((x << 8) >> 8) & 0xFFFF0000)));
}
# 34 "../libraries/inc/tih/csi_gcc.h" 2
# 118 "../libraries/inc/tih/core_ck803.h" 2
# 130 "../libraries/inc/tih/core_ck803.h"
#define __I volatile const

#define __O volatile
#define __IO volatile


#define __IM volatile const
#define __OM volatile
#define __IOM volatile
# 165 "../libraries/inc/tih/core_ck803.h"
typedef union {
    struct {
        uint32_t C: 1;
        uint32_t _reserved0: 5;
        uint32_t IE: 1;
        uint32_t IC: 1;
        uint32_t EE: 1;
        uint32_t MM: 1;
        uint32_t _reserved1: 6;
        uint32_t VEC: 8;
        uint32_t _reserved2: 7;
        uint32_t S: 1;
    } b;
    uint32_t w;
} PSR_Type;


#define PSR_S_Pos 31U
#define PSR_S_Msk (1UL << PSR_S_Pos)

#define PSR_VEC_Pos 16U
#define PSR_VEC_Msk (0x7FUL << PSR_VEC_Pos)

#define PSR_MM_Pos 9U
#define PSR_MM_Msk (1UL << PSR_MM_Pos)

#define PSR_EE_Pos 8U
#define PSR_EE_Msk (1UL << PSR_EE_Pos)

#define PSR_IC_Pos 7U
#define PSR_IC_Msk (1UL << PSR_IC_Pos)

#define PSR_IE_Pos 6U
#define PSR_IE_Msk (1UL << PSR_IE_Pos)

#define PSR_C_Pos 0U
#define PSR_C_Msk (1UL << PSR_C_Pos)




typedef union {
    struct {
        uint32_t MP: 1;
        uint32_t _reserved0: 6;
        uint32_t BE: 1;
        uint32_t SCK: 3;
        uint32_t _reserved1: 2;
        uint32_t BE_V2: 1;
        uint32_t _reserved2: 18;
    } b;
    uint32_t w;
} CCR_Type;


#define CCR_BE_V2_Pos 13U
#define CCR_BE_V2_Msk (0x1UL << CCR_BE_V2_Pos)

#define CCR_SCK_Pos 8U
#define CCR_SCK_Msk (0x3UL << CCR_SCK_Pos)

#define CCR_BE_Pos 7U
#define CCR_BE_Msk (0x1UL << CCR_BE_Pos)

#define CCR_MP_Pos 0U
#define CCR_MP_Msk (0x3UL << CCR_MP_Pos)




typedef union {
    struct {
        uint32_t X0: 1;
        uint32_t X1: 1;
        uint32_t X2: 1;
        uint32_t X3: 1;
        uint32_t X4: 1;
        uint32_t X5: 1;
        uint32_t X6: 1;
        uint32_t X7: 1;
        uint32_t AP0: 2;
        uint32_t AP1: 2;
        uint32_t AP2: 2;
        uint32_t AP3: 2;
        uint32_t AP4: 2;
        uint32_t AP5: 2;
        uint32_t AP6: 2;
        uint32_t AP7: 2;
        uint32_t S0: 1;
        uint32_t S1: 1;
        uint32_t S2: 1;
        uint32_t S3: 1;
        uint32_t S4: 1;
        uint32_t S5: 1;
        uint32_t S6: 1;
        uint32_t S7: 1;
    } b;
    uint32_t w;
} CAPR_Type;


#define CAPR_S7_Pos 31U
#define CAPR_S7_Msk (1UL << CAPR_S7_Pos)

#define CAPR_S6_Pos 30U
#define CAPR_S6_Msk (1UL << CAPR_S6_Pos)

#define CAPR_S5_Pos 29U
#define CAPR_S5_Msk (1UL << CAPR_S5_Pos)

#define CAPR_S4_Pos 28U
#define CAPR_S4_Msk (1UL << CAPR_S4_Pos)

#define CAPR_S3_Pos 27U
#define CAPR_S3_Msk (1UL << CAPR_S3_Pos)

#define CAPR_S2_Pos 26U
#define CAPR_S2_Msk (1UL << CAPR_S2_Pos)

#define CAPR_S1_Pos 25U
#define CAPR_S1_Msk (1UL << CAPR_S1_Pos)

#define CAPR_S0_Pos 24U
#define CAPR_S0_Msk (1UL << CAPR_S0_Pos)

#define CAPR_AP7_Pos 22U
#define CAPR_AP7_Msk (0x3UL << CAPR_AP7_Pos)

#define CAPR_AP6_Pos 20U
#define CAPR_AP6_Msk (0x3UL << CAPR_AP6_Pos)

#define CAPR_AP5_Pos 18U
#define CAPR_AP5_Msk (0x3UL << CAPR_AP5_Pos)

#define CAPR_AP4_Pos 16U
#define CAPR_AP4_Msk (0x3UL << CAPR_AP4_Pos)

#define CAPR_AP3_Pos 14U
#define CAPR_AP3_Msk (0x3UL << CAPR_AP3_Pos)

#define CAPR_AP2_Pos 12U
#define CAPR_AP2_Msk (0x3UL << CAPR_AP2_Pos)

#define CAPR_AP1_Pos 10U
#define CAPR_AP1_Msk (0x3UL << CAPR_AP1_Pos)

#define CAPR_AP0_Pos 8U
#define CAPR_AP0_Msk (0x3UL << CAPR_AP0_Pos)

#define CAPR_X7_Pos 7U
#define CAPR_X7_Msk (0x1UL << CAPR_X7_Pos)

#define CAPR_X6_Pos 6U
#define CAPR_X6_Msk (0x1UL << CAPR_X6_Pos)

#define CAPR_X5_Pos 5U
#define CAPR_X5_Msk (0x1UL << CAPR_X5_Pos)

#define CAPR_X4_Pos 4U
#define CAPR_X4_Msk (0x1UL << CAPR_X4_Pos)

#define CAPR_X3_Pos 3U
#define CAPR_X3_Msk (0x1UL << CAPR_X3_Pos)

#define CAPR_X2_Pos 2U
#define CAPR_X2_Msk (0x1UL << CAPR_X2_Pos)

#define CAPR_X1_Pos 1U
#define CAPR_X1_Msk (0x1UL << CAPR_X1_Pos)

#define CAPR_X0_Pos 0U
#define CAPR_X0_Msk (0x1UL << CAPR_X0_Pos)




typedef union {
    struct {
        uint32_t E: 1;
        uint32_t size: 5;
        uint32_t _reserved0: 6;
        uint32_t base_addr: 20;
    } b;
    uint32_t w;
} PACR_Type;


#define PACR_BASE_ADDR_Pos 12U
#define PACR_BASE_ADDR_Msk (0xFFFFFUL << PACR_BASE_ADDR_Pos)

#define PACR_SIZE_Pos 1U
#define PACR_SIZE_Msk (0x1FUL << PACR_SIZE_Pos)

#define PACR_E_Pos 0U
#define PACR_E_Msk (0x1UL << PACR_E_Pos)




typedef union {
    struct {
        uint32_t RID: 3;
        uint32_t _reserved0: 29;
    } b;
    uint32_t w;
} PRSR_Type;


#define PRSR_RID_Pos 0U
#define PRSR_RID_Msk (0x7UL << PRSR_RID_Pos)
# 389 "../libraries/inc/tih/core_ck803.h"
typedef struct {
    volatile uint32_t ISER[4U];
    uint32_t RESERVED0[12U];
    volatile uint32_t IWER[4U];
    uint32_t RESERVED1[12U];
    volatile uint32_t ICER[4U];
    uint32_t RESERVED2[12U];
    volatile uint32_t IWDR[4U];
    uint32_t RESERVED3[12U];
    volatile uint32_t ISPR[4U];
    uint32_t RESERVED4[12U];
    uint32_t RESERVED5[16U];
    volatile uint32_t ICPR[4U];
    uint32_t RESERVED6[12U];
    uint32_t RESERVED7[16U];
    volatile uint32_t IABR[4U];
    uint32_t RESERVED8[60U];
    volatile uint32_t IPR[32U];
    uint32_t RESERVED9[480U];
    volatile const uint32_t ISR;
    volatile uint32_t IPTR;
    volatile uint32_t TSPEND;
    volatile uint32_t TSABR;
    volatile uint32_t TSPR;
} VIC_Type;
# 427 "../libraries/inc/tih/core_ck803.h"
typedef struct
{
  volatile uint32_t CER;
  volatile uint32_t CIR;
  volatile uint32_t CRCR[4U];
        uint32_t RSERVED0[1015U];
  volatile uint32_t CPFCR;
  volatile uint32_t CPFATR;
  volatile uint32_t CPFMTR;
} CACHE_Type;


#define CACHE_CER_EN_Pos 0U
#define CACHE_CER_EN_Msk (0x1UL << CACHE_CER_EN_Pos)

#define CACHE_CER_CFIG_Pos 1U
#define CACHE_CER_CFIG_Msk (0x1UL << CACHE_CER_CFIG_Pos)

#define CACHE_CER_WB_Pos 2U
#define CACHE_CER_WB_Msk (0x1UL << CACHE_CER_WB_Pos)

#define CACHE_CER_WCFIG_Pos 3U
#define CACHE_CER_WCFIG_Msk (0x1UL << CACHE_CER_WCFIG_Pos)

#define CACHE_CER_DCW_Pos 4U
#define CACHE_CER_DCW_Msk (0x1UL << CACHE_CER_DCW_Pos)

#define CACHE_CER_CS_Pos 31U
#define CACHE_CER_CS_Msk (0x1UL << CACHE_CER_CS_Pos)

#define CACHE_CIR_INV_ALL_Pos 0U
#define CACHE_CIR_INV_ALL_Msk (0x1UL << CACHE_CIR_INV_ALL_Pos)

#define CACHE_CIR_INV_ONE_Pos 1U
#define CACHE_CIR_INV_ONE_Msk (0x1UL << CACHE_CIR_INV_ONE_Pos)

#define CACHE_CIR_CLR_ALL_Pos 2U
#define CACHE_CIR_CLR_ALL_Msk (0x1UL << CACHE_CIR_CLR_ALL_Pos)

#define CACHE_CIR_CLR_ONE_Pos 3U
#define CACHE_CIR_CLR_ONE_Msk (0x1UL << CACHE_CIR_CLR_ONE_Pos)

#define CACHE_CIR_INV_ADDR_Pos 4U
#define CACHE_CIR_INV_ADDR_Msk (0xFFFFFFFUL << CACHE_CIR_INV_ADDR_Pos)

#define CACHE_CRCR_EN_Pos 0U
#define CACHE_CRCR_EN_Msk (0x1UL << CACHE_CRCR_EN_Pos)

#define CACHE_CRCR_SIZE_Pos 1U
#define CACHE_CRCR_SIZE_Msk (0x1FUL << CACHE_CRCR_SIZE_Pos)

#define CACHE_CRCR_BASE_ADDR_Pos 10U
#define CACHE_CRCR_BASE_ADDR_Msk (0x3FFFFFUL << CACHE_CRCR_BASE_ADDR_Pos)

#define CACHE_CPFCR_PFEN_Pos 0U
#define CACHE_CPFCR_PFEN_Msk (0x1UL << CACHE_CPFCR_PFEN_Pos)

#define CACHE_CPFCR_PFRST_Pos 1U
#define CACHE_CPFCR_PFRST_Msk (0x1UL << CACHE_CPFCR_PFRST_Pos)

#define CACHE_CRCR_4K 0xB
#define CACHE_CRCR_8K 0xC
#define CACHE_CRCR_16K 0xD
#define CACHE_CRCR_32K 0xE
#define CACHE_CRCR_64K 0xF
#define CACHE_CRCR_128K 0x10
#define CACHE_CRCR_256K 0x11
#define CACHE_CRCR_512K 0x12
#define CACHE_CRCR_1M 0x13
#define CACHE_CRCR_2M 0x14
#define CACHE_CRCR_4M 0x15
#define CACHE_CRCR_8M 0x16
#define CACHE_CRCR_16M 0x17
#define CACHE_CRCR_32M 0x18
#define CACHE_CRCR_64M 0x19
#define CACHE_CRCR_128M 0x1A
#define CACHE_CRCR_256M 0x1B
#define CACHE_CRCR_512M 0x1C
#define CACHE_CRCR_1G 0x1D
#define CACHE_CRCR_2G 0x1E
#define CACHE_CRCR_4G 0x1F
# 522 "../libraries/inc/tih/core_ck803.h"
typedef struct {
    volatile uint32_t CTRL;
    volatile uint32_t LOAD;
    volatile uint32_t VAL;
    volatile const uint32_t CALIB;
} CORET_Type;


#define CORET_CTRL_COUNTFLAG_Pos 16U
#define CORET_CTRL_COUNTFLAG_Msk (1UL << CORET_CTRL_COUNTFLAG_Pos)

#define CORET_CTRL_CLKSOURCE_Pos 2U
#define CORET_CTRL_CLKSOURCE_Msk (1UL << CORET_CTRL_CLKSOURCE_Pos)

#define CORET_CTRL_TICKINT_Pos 1U
#define CORET_CTRL_TICKINT_Msk (1UL << CORET_CTRL_TICKINT_Pos)

#define CORET_CTRL_ENABLE_Pos 0U
#define CORET_CTRL_ENABLE_Msk (1UL )


#define CORET_LOAD_RELOAD_Pos 0U
#define CORET_LOAD_RELOAD_Msk (0xFFFFFFUL )


#define CORET_VAL_CURRENT_Pos 0U
#define CORET_VAL_CURRENT_Msk (0xFFFFFFUL )


#define CORET_CALIB_NOREF_Pos 31U
#define CORET_CALIB_NOREF_Msk (1UL << CORET_CALIB_NOREF_Pos)

#define CORET_CALIB_SKEW_Pos 30U
#define CORET_CALIB_SKEW_Msk (1UL << CORET_CALIB_SKEW_Pos)

#define CORET_CALIB_TENMS_Pos 0U
#define CORET_CALIB_TENMS_Msk (0xFFFFFFUL )
# 572 "../libraries/inc/tih/core_ck803.h"
typedef struct {
    uint32_t RESERVED0[13U];
    volatile uint32_t HCR;
    volatile const uint32_t EHSR;
    uint32_t RESERVED1[6U];
    union {
        volatile const uint32_t DERJW;
        volatile uint32_t DERJR;
    };

} DCC_Type;

#define DCC_HCR_JW_Pos 18U
#define DCC_HCR_JW_Msk (1UL << DCC_HCR_JW_Pos)

#define DCC_HCR_JR_Pos 19U
#define DCC_HCR_JR_Msk (1UL << DCC_HCR_JR_Pos)

#define DCC_EHSR_JW_Pos 1U
#define DCC_EHSR_JW_Msk (1UL << DCC_EHSR_JW_Pos)

#define DCC_EHSR_JR_Pos 2U
#define DCC_EHSR_JR_Msk (1UL << DCC_EHSR_JR_Pos)
# 611 "../libraries/inc/tih/core_ck803.h"
#define _VAL2FLD(field,value) ((value << field ## _Pos) & field ## _Msk)







#define _FLD2VAL(field,value) ((value & field ## _Msk) >> field ## _Pos)
# 631 "../libraries/inc/tih/core_ck803.h"
#define TCIP_BASE (0xE000E000UL)
#define CORET_BASE (TCIP_BASE + 0x0010UL)
#define VIC_BASE (TCIP_BASE + 0x0100UL)
#define DCC_BASE (0xE0011000UL)
#define CACHE_BASE (TCIP_BASE + 0x1000UL)

#define CORET ((CORET_Type *) CORET_BASE )
#define VIC ((VIC_Type *) VIC_BASE )
#define DCC ((DCC_Type *) DCC_BASE )
#define CACHE ((CACHE_Type *) CACHE_BASE )
# 651 "../libraries/inc/tih/core_ck803.h"
typedef enum {
    REGION_SIZE_4KB = 0xB,
    REGION_SIZE_8KB = 0xC,
    REGION_SIZE_16KB = 0xD,
    REGION_SIZE_32KB = 0xE,
    REGION_SIZE_64KB = 0xF,
    REGION_SIZE_128KB = 0x10,
    REGION_SIZE_256KB = 0x11,
    REGION_SIZE_512KB = 0x12,
    REGION_SIZE_1MB = 0x13,
    REGION_SIZE_2MB = 0x14,
    REGION_SIZE_4MB = 0x15,
    REGION_SIZE_8MB = 0x16,
    REGION_SIZE_16MB = 0x17,
    REGION_SIZE_32MB = 0x18,
    REGION_SIZE_64MB = 0x19,
    REGION_SIZE_128MB = 0x1A,
    REGION_SIZE_256MB = 0x1B,
    REGION_SIZE_512MB = 0x1C,
    REGION_SIZE_1GB = 0x1D,
    REGION_SIZE_2GB = 0x1E,
    REGION_SIZE_4GB = 0x1F
} region_size_e;

typedef enum {
    AP_BOTH_INACCESSIBLE = 0,
    AP_SUPER_RW_USER_INACCESSIBLE,
    AP_SUPER_RW_USER_RDONLY,
    AP_BOTH_RW
} access_permission_e;

typedef struct {
    uint32_t nx: 1;
    access_permission_e ap: 2;
    uint32_t s: 1;
} mpu_region_attr_t;






void csi_vic_init(uint32_t prio_bits);
void csi_vic_enable_irq(int32_t irq_num);
void csi_vic_disable_irq(int32_t irq_num);
uint32_t csi_vic_get_pending_irq(int32_t irq_num);
void csi_vic_set_pending_irq(int32_t irq_num);
void csi_vic_clear_pending_irq(int32_t irq_num);
uint32_t csi_vic_get_active(int32_t irq_num);
void csi_vic_set_prio(int32_t irq_num, uint32_t priority);
uint32_t csi_vic_get_prio(int32_t irq_num);
void csi_vic_set_vector(int32_t IRQn, uint32_t handler);
uint32_t csi_vic_get_vector(int32_t IRQn);

void csi_icache_enable(void);
void csi_icache_disable(void);
void csi_icache_invalid(void);
void csi_dcache_enable(void);
void csi_dcache_disable(void);
void csi_dcache_invalid(void);
void csi_dcache_clean(void);
void csi_dcache_clean_invalid(void);
void csi_dcache_invalid_range(uint32_t *addr, int32_t dsize);
void csi_dcache_clean_range(uint32_t *addr, int32_t dsize);
void csi_dcache_clean_invalid_range(uint32_t *addr, int32_t dsize);
void csi_cache_set_range(uint32_t index, uint32_t baseAddr, uint32_t size, uint32_t enable);
void csi_cache_enable_profile(void);
void csi_cache_disable_profile(void);
void csi_cache_reset_profile(void);
uint32_t csi_cache_get_access_time(void);
uint32_t csi_cache_get_miss_time(void);

uint32_t csi_coret_config(uint32_t ticks, int32_t irq_num);
uint32_t csi_coret_get_load(void);
uint32_t csi_coret_get_value(void);

void csi_mpu_enable(void);
void csi_mpu_disable(void);
void csi_mpu_config_region(uint32_t idx, uint32_t base_addr, region_size_e size,
                           mpu_region_attr_t attr, uint32_t enable);
void csi_mpu_enable_region(uint32_t idx);
void csi_mpu_disable_region(uint32_t idx);

uint32_t csi_irq_save(void);
void csi_irq_restore(uint32_t irq_state);
void csi_system_reset(void);

void irq_enable(void);
void irq_disable(void);
# 34 "../../../include/rthw.h" 2
# 43 "../../../include/rthw.h"
#define HWREG32(x) (*((volatile rt_uint32_t *)(x)))


#define HWREG16(x) (*((volatile rt_uint16_t *)(x)))


#define HWREG8(x) (*((volatile rt_uint8_t *)(x)))



#define RT_CPU_CACHE_LINE_SZ 32


enum RT_HW_CACHE_OPS
{
    RT_HW_CACHE_FLUSH = 0x01,
    RT_HW_CACHE_INVALIDATE = 0x02,
};




void rt_hw_cpu_icache_enable(void);
void rt_hw_cpu_icache_disable(void);
rt_base_t rt_hw_cpu_icache_status(void);
void rt_hw_cpu_icache_ops(int ops, void* addr, int size);

void rt_hw_cpu_dcache_enable(void);
void rt_hw_cpu_dcache_disable(void);
rt_base_t rt_hw_cpu_dcache_status(void);
void rt_hw_cpu_dcache_ops(int ops, void* addr, int size);

void rt_hw_cpu_reset(void);
void rt_hw_cpu_shutdown(void);

rt_uint8_t *rt_hw_stack_init(void *entry,
                             void *parameter,
                             rt_uint8_t *stack_addr,
                             void *exit);




typedef void (*rt_isr_handler_t)(int vector, void *param);

struct rt_irq_desc
{
    rt_isr_handler_t handler;
    void *param;





};




void rt_hw_interrupt_init(void);
void rt_hw_interrupt_mask(int vector);
void rt_hw_interrupt_umask(int vector);
void rt_hw_interrupt_clear(int vevtor);
rt_isr_handler_t rt_hw_interrupt_install(int vector,
                                         rt_isr_handler_t handler,
                                         void *param,
                                         char *name);

rt_base_t rt_hw_interrupt_disable(void);
void rt_hw_interrupt_enable(rt_base_t level);



void rt_hw_context_switch(rt_uint32_t from, rt_uint32_t to);
void rt_hw_context_switch_to(rt_uint32_t to);
void rt_hw_context_switch_interrupt(rt_uint32_t from, rt_uint32_t to);

void rt_hw_console_output(const char *str);

void rt_hw_backtrace(rt_uint32_t *fp, rt_uint32_t thread_entry);
void rt_hw_show_memory(rt_uint32_t addr, rt_uint32_t size);




void rt_hw_exception_install(rt_err_t (*exception_handle)(void *context));




void rt_hw_us_delay(rt_uint32_t us);




uint32_t rt_hw_hardclock_get(void);




rt_bool_t rt_hw_dtcm_addr_check(rt_uint32_t addr);




void xmem_init(void);
# 39 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2


typedef unsigned char u8_t;
typedef signed char s8_t;
typedef unsigned short u16_t;
typedef short s16_t;
typedef unsigned int u32_t;
typedef int s32_t;
typedef u32_t mem_ptr_t;

#define X8_F "x"
#define U16_F "u"
#define S16_F "d"
#define X16_F "x"
#define U32_F "lu"
#define S32_F "ld"
#define X32_F "lx"
#define SZT_F "d"





# 1 "../../../components/libc/compilers/minilibc/errno.h" 1

#define __ERRNO_H__ 

# 1 "../../../include/libc/libc_errno.h" 1
# 5 "../../../components/libc/compilers/minilibc/errno.h" 2


#define ENSRNOTFOUND 163
# 63 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2







#define LWIP_TIMEVAL_PRIVATE 0
# 87 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h"
#define PACK_STRUCT_FIELD(x) x
#define PACK_STRUCT_STRUCT __attribute__((packed))
#define PACK_STRUCT_BEGIN 
#define PACK_STRUCT_END 







void sys_arch_assert(const char* file, int line);
#define LWIP_PLATFORM_DIAG(x) do {rt_kprintf x;} while(0)
#define LWIP_PLATFORM_ASSERT(x) do {rt_kprintf(x); sys_arch_assert(__FILE__, __LINE__);}while(0)

# 1 "../../../components/libc/compilers/minilibc/string.h" 1
# 15 "../../../components/libc/compilers/minilibc/string.h"
#define __STRING_H__ 







#define ZEROPAD (1 << 0)
#define SIGN (1 << 1)
#define PLUS (1 << 2)
#define SPACE (1 << 3)
#define LEFT (1 << 4)
#define SPECIAL (1 << 5)
#define LARGE (1 << 6)

#define _U 0x01
#define _L 0x02
#define _D 0x04
#define _C 0x08
#define _P 0x10
#define _S 0x20
#define _X 0x40
#define _SP 0x80

void* memset(void *s, int c, size_t n);
void* memcpy(void *dest, const void *src, size_t n);
void* memmove(void *dest, const void *src, size_t n);
int memcmp(const void *s1, const void *s2, size_t n);

int tolower(int c);
int toupper(int c);

int strcmp (const char *s1, const char *s2);
int strncmp(const char *cs,const char *ct, size_t count);
int strcasecmp(const char *a, const char *b);
int strncasecmp(const char *cs, const char *ct, size_t count);
int sscanf(const char * buf, const char * fmt, ...);
size_t strlen(const char *s);
char *strstr(const char * s1,const char * s2);
char *strcpy(char *dest, const char *src);
char *strncpy(char *dest, const char *src, size_t n);
size_t strlcpy(char *dst, const char *src, size_t siz);
char *strncat(char *dest, const char *src, size_t count);
char *strcat(char * dest, const char * src);
char *strchr(const char *s1, int i);
char *strrchr(const char *t, int c);
char *strdup(const char *s);
char *strtok(char *s, const char *delim);
char*strtok_r(char*s, const char*delim, char**ptrptr);

size_t strcspn(const char *s, const char *reject);
size_t strspn (const char *s, const char *accept);

long strtol(const char *str, char **endptr, int base);
long long strtoll(const char *str, char **endptr, int base);
# 103 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 101 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_NO_STDDEF_H 0



# 1 "../../../components/libc/compilers/minilibc/stddef.h" 1

#define __STDDEF_H__ 


typedef signed long ptrdiff_t;
# 106 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2







#define LWIP_NO_STDINT_H 0
# 133 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_NO_INTTYPES_H 0




# 1 "../../../components/libc/compilers/minilibc/inttypes.h" 1

#define __INTTYPES_H__ 

# 1 "../../../components/libc/compilers/minilibc/stdint.h" 1
# 5 "../../../components/libc/compilers/minilibc/inttypes.h" 2
# 139 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 170 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_NO_LIMITS_H 0




# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 176 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2




#define LWIP_CONST_CAST(target_type,val) ((target_type)((ptrdiff_t)val))




#define LWIP_ALIGNMENT_CAST(target_type,val) LWIP_CONST_CAST(target_type, val)






#define LWIP_PTR_NUMERIC_CAST(target_type,val) LWIP_CONST_CAST(target_type, val)
# 206 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_DECLARE_MEMORY_ALIGNED(variable_name,size) u8_t __attribute__((section(".exdata"))) variable_name[LWIP_MEM_ALIGN_BUFFER(size)] __attribute__((aligned(8)))
# 215 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_MEM_ALIGN_SIZE(size) (((size) + MEM_ALIGNMENT - 1U) & ~(MEM_ALIGNMENT-1U))







#define LWIP_MEM_ALIGN_BUFFER(size) (((size) + MEM_ALIGNMENT - 1U))






#define LWIP_MEM_ALIGN(addr) ((void *)(((mem_ptr_t)(addr) + MEM_ALIGNMENT - 1) & ~(mem_ptr_t)(MEM_ALIGNMENT-1)))
# 283 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define PACK_STRUCT_FLD_8(x) PACK_STRUCT_FIELD(x)
# 292 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define PACK_STRUCT_FLD_S(x) PACK_STRUCT_FIELD(x)
# 309 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
#define LWIP_UNUSED_ARG(x) (void)x
# 41 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 2
# 53 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_DBG_LEVEL_ALL 0x00

#define LWIP_DBG_LEVEL_WARNING 0x01

#define LWIP_DBG_LEVEL_SERIOUS 0x02

#define LWIP_DBG_LEVEL_SEVERE 0x03




#define LWIP_DBG_MASK_LEVEL 0x03

#define LWIP_DBG_LEVEL_OFF LWIP_DBG_LEVEL_ALL





#define LWIP_DBG_ON 0x80U

#define LWIP_DBG_OFF 0x00U
# 83 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_DBG_TRACE 0x40U

#define LWIP_DBG_STATE 0x20U

#define LWIP_DBG_FRESH 0x10U

#define LWIP_DBG_HALT 0x08U
# 116 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_ASSERT(message,assertion) do { if (!(assertion)) { LWIP_PLATFORM_ASSERT(message); }} while(0)
# 127 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_PLATFORM_ERROR(message) LWIP_PLATFORM_ASSERT(message)







#define LWIP_ERROR(message,expression,handler) do { if (!(expression)) { LWIP_PLATFORM_ERROR(message); handler;}} while(0)
# 164 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
#define LWIP_DEBUGF(debug,message) 
# 53 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 2
# 109 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TIMERS 1
# 121 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TIMERS_CUSTOM 0
# 145 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define SMEMCPY(dst,src,len) memcpy(dst,src,len)
# 169 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_MPU_COMPATIBLE 0
# 181 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TCPIP_CORE_LOCKING 1
# 226 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEM_LIBC_MALLOC 0
# 277 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_SANITY_CHECK 0
# 287 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEM_USE_POOLS 0







#define MEM_USE_POOLS_TRY_BIGGER_POOL 0
# 305 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_USE_CUSTOM_POOLS 0
# 382 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_TCP_PCB_LISTEN 8
# 409 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_FRAG_PBUF 15
# 419 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_ARP_QUEUE 30
# 429 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_IGMP_GROUP 8
# 438 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_SYS_TIMEOUT (LWIP_TCP + IP_REASSEMBLY + LWIP_ARP + (2*LWIP_DHCP) + LWIP_AUTOIP + LWIP_IGMP + LWIP_DNS + (PPP_SUPPORT*6*MEMP_NUM_PPP_PCB) + (LWIP_IPV6 ? (1 + LWIP_IPV6_REASS + LWIP_IPV6_MLD) : 0))
# 463 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_TCPIP_MSG_API 8
# 472 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_TCPIP_MSG_INPKT 8







#define MEMP_NUM_NETDB 1







#define MEMP_NUM_LOCALHOSTLIST 1
# 502 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_API_MSG MEMP_NUM_TCPIP_MSG_API





#define MEMP_NUM_DNS_API_MSG MEMP_NUM_TCPIP_MSG_API






#define MEMP_NUM_SOCKET_SETGETSOCKOPT_DATA MEMP_NUM_TCPIP_MSG_API






#define MEMP_NUM_NETIFAPI_MSG MEMP_NUM_TCPIP_MSG_API
# 557 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define ARP_MAXAGE 300
# 576 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define ARP_QUEUE_LEN 3
# 590 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define ETHARP_SUPPORT_VLAN 0





#define LWIP_ETHERNET LWIP_ARP
# 605 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define ETH_PAD_SIZE 0






#define ETHARP_SUPPORT_STATIC_ENTRIES 0







#define ETHARP_TABLE_MATCH_NETIF 0
# 686 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define IP_OPTIONS_ALLOWED 1
# 695 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define IP_REASS_MAXAGE 3
# 712 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define IP_DEFAULT_TTL 255
# 740 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define IP_FORWARD_ALLOW_TX_ON_RX_NETIF 0
# 749 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_RANDOMIZE_INITIAL_LOCAL_PORTS 0
# 784 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_BROADCAST_PING 0






#define LWIP_MULTICAST_PING 0
# 818 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define RAW_TTL (IP_DEFAULT_TTL)
# 860 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_DHCP_CHECK_LINK_UP 0






#define LWIP_DHCP_BOOTP_FILE 0
# 876 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_DHCP_GET_NTP_SRV 0






#define LWIP_DHCP_MAX_NTP_SERVERS 1
# 892 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_DHCP_MAX_DNS_SERVERS DNS_MAX_SERVERS
# 936 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_DHCP_AUTOIP_COOP_TRIES 9
# 958 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_MIB2_CALLBACKS 0
# 990 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_MULTICAST_TX_OPTIONS (LWIP_IGMP && LWIP_UDP)
# 1016 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define DNS_TABLE_SIZE 4




#define DNS_MAX_NAME_LENGTH 256







#define DNS_MAX_SERVERS 2




#define DNS_DOES_NAME_CHECK 1







#define LWIP_DNS_SECURE (LWIP_DNS_SECURE_RAND_XID | LWIP_DNS_SECURE_NO_MULTIPLE_OUTSTANDING | LWIP_DNS_SECURE_RAND_SRC_PORT)



#define LWIP_DNS_SECURE_RAND_XID 1
#define LWIP_DNS_SECURE_NO_MULTIPLE_OUTSTANDING 2
#define LWIP_DNS_SECURE_RAND_SRC_PORT 4
# 1059 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define DNS_LOCAL_HOSTLIST 0





#define DNS_LOCAL_HOSTLIST_IS_DYNAMIC 0





#define LWIP_DNS_SUPPORT_MDNS_QUERIES 0
# 1112 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETBUF_RECVINFO 0
# 1195 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define TCP_CALCULATE_EFF_SEND_MSS 1
# 1238 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define TCP_OOSEQ_MAX_BYTES 0







#define TCP_OOSEQ_MAX_PBUFS 0






#define TCP_LISTEN_BACKLOG 0
# 1262 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define TCP_DEFAULT_LISTEN_BACKLOG 0xff
# 1280 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define TCP_OVERSIZE TCP_MSS
# 1290 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TCP_TIMESTAMPS 0







#define TCP_WND_UPDATE_THRESHOLD LWIP_MIN((TCP_WND / 4), (TCP_MSS * 4))
# 1309 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_EVENT_API 0
#define LWIP_CALLBACK_API 1
# 1329 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_WND_SCALE 0
#define TCP_RCV_SCALE 0
# 1364 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define PBUF_LINK_ENCAPSULATION_HLEN 0u
# 1394 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETIF_HOSTNAME 0
# 1417 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETIF_LINK_CALLBACK 0







#define LWIP_NETIF_REMOVE_CALLBACK 0
# 1436 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETIF_HWADDRHINT 0
# 1457 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NUM_NETIF_CLIENT_DATA 0
# 1486 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_LOOPIF_MULTICAST 0
# 1502 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_LOOPBACK_MAX_PBUFS 0
# 1519 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETIF_LOOPBACK_MULTITHREADING (!NO_SYS)
# 1574 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TCPIP_THREAD_ALIVE() 






#define SLIPIF_THREAD_NAME "slipif_loop"
# 1590 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define SLIPIF_THREAD_STACKSIZE 0
# 1599 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define SLIPIF_THREAD_PRIO 1






#define DEFAULT_THREAD_NAME "lwIP"
# 1615 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define DEFAULT_THREAD_STACKSIZE 0
# 1624 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define DEFAULT_THREAD_PRIO 1
# 1687 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TCPIP_TIMEOUT 0
# 1701 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETCONN_SEM_PER_THREAD 0
# 1713 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_NETCONN_FULLDUPLEX 0
# 1740 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_SOCKET_SET_ERRNO 1
# 1770 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_SOCKET_OFFSET 0
# 1803 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_SO_SNDRCVTIMEO_NONSTANDARD 0
# 1817 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_SO_LINGER 0
# 1831 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_TCP_CLOSE_TIMEOUT_MS_DEFAULT 20000
# 1847 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define SO_REUSE_RXTOALL 0
# 1859 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_FIONREAD_LINUXMODE 0
# 2015 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LINK_STATS 0
#define ETHARP_STATS 0
#define IP_STATS 0
#define IPFRAG_STATS 0
#define ICMP_STATS 0
#define IGMP_STATS 0
#define UDP_STATS 0
#define TCP_STATS 0
#define MEM_STATS 0
#define MEMP_STATS 0
#define SYS_STATS 0
#define LWIP_STATS_DISPLAY 0
#define IP6_STATS 0
#define ICMP6_STATS 0
#define IP6_FRAG_STATS 0
#define MLD6_STATS 0
#define ND6_STATS 0
#define MIB2_STATS 0
# 2055 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_CHECKSUM_CTRL_PER_NETIF 0
# 2083 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define CHECKSUM_GEN_ICMP 1






#define CHECKSUM_GEN_ICMP6 1
# 2118 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define CHECKSUM_CHECK_ICMP 1






#define CHECKSUM_CHECK_ICMP6 1







#define LWIP_CHECKSUM_ON_COPY 0
# 2160 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_IPV6_NUM_ADDRESSES 3
# 2174 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_IPV6_FRAG 0






#define LWIP_IPV6_REASS (LWIP_IPV6)







#define LWIP_IPV6_SEND_ROUTER_SOLICIT 1






#define LWIP_IPV6_AUTOCONFIG (LWIP_IPV6)






#define LWIP_IPV6_DUP_DETECT_ATTEMPTS 1
# 2218 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_ICMP6 (LWIP_IPV6)







#define LWIP_ICMP6_DATASIZE 8






#define LWIP_ICMP6_HL 255
# 2250 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_IPV6_MLD (LWIP_IPV6)
# 2260 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define MEMP_NUM_MLD6_GROUP 4
# 2276 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_ND6_QUEUEING (LWIP_IPV6)






#define MEMP_NUM_ND6_QUEUE 20






#define LWIP_ND6_NUM_NEIGHBORS 10






#define LWIP_ND6_NUM_DESTINATIONS 10






#define LWIP_ND6_NUM_PREFIXES 5






#define LWIP_ND6_NUM_ROUTERS 3







#define LWIP_ND6_MAX_MULTICAST_SOLICIT 3







#define LWIP_ND6_MAX_UNICAST_SOLICIT 3






#define LWIP_ND6_MAX_ANYCAST_DELAY_TIME 1000






#define LWIP_ND6_MAX_NEIGHBOR_ADVERTISEMENT 3







#define LWIP_ND6_REACHABLE_TIME 30000






#define LWIP_ND6_RETRANS_TIMER 1000







#define LWIP_ND6_DELAY_FIRST_PROBE_TIME 5000







#define LWIP_ND6_ALLOW_RA_UPDATES 1
# 2381 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_ND6_TCP_REACHABILITY_HINTS 1
# 2400 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_IPV6_DHCP6 0
# 2870 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
#define LWIP_PERF 0
# 48 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2



# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h" 1
# 40 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define LWIP_HDR_SOCKETS_H 





# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
#define LWIP_HDR_IP_ADDR_H 


# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h"
#define LWIP_HDR_DEF_H 







#define PERF_START 
#define PERF_STOP(x) 






#define LWIP_MAX(x,y) (((x) > (y)) ? (x) : (y))
#define LWIP_MIN(x,y) (((x) < (y)) ? (x) : (y))


#define LWIP_ARRAYSIZE(x) (sizeof(x)/sizeof((x)[0]))


#define LWIP_MAKEU32(a,b,c,d) (((u32_t)((a) & 0xff) << 24) | ((u32_t)((b) & 0xff) << 16) | ((u32_t)((c) & 0xff) << 8) | (u32_t)((d) & 0xff))
# 85 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);

#define lwip_ntohs(x) lwip_htons(x)


u32_t lwip_htonl(u32_t x);

#define lwip_ntohl(x) lwip_htonl(x)



#define htons(x) lwip_htons(x)
#define ntohs(x) lwip_ntohs(x)
#define htonl(x) lwip_htonl(x)
#define ntohl(x) lwip_ntohl(x)





#define PP_HTONS(x) ((((x) & 0x00ffUL) << 8) | (((x) & 0xff00UL) >> 8))
#define PP_NTOHS(x) PP_HTONS(x)
#define PP_HTONL(x) ((((x) & 0x000000ffUL) << 24) | (((x) & 0x0000ff00UL) << 8) | (((x) & 0x00ff0000UL) >> 8) | (((x) & 0xff000000UL) >> 24))



#define PP_NTOHL(x) PP_HTONL(x)
# 123 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"
#define LWIP_HDR_IP4_ADDR_H 
# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};



typedef struct ip4_addr ip4_addr_t;
# 66 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"

struct ip4_addr2 {
  u16_t addrw[2];
} __attribute__((packed));






struct netif;


#define IPADDR_NONE ((u32_t)0xffffffffUL)

#define IPADDR_LOOPBACK ((u32_t)0x7f000001UL)

#define IPADDR_ANY ((u32_t)0x00000000UL)

#define IPADDR_BROADCAST ((u32_t)0xffffffffUL)





#define IP_CLASSA(a) ((((u32_t)(a)) & 0x80000000UL) == 0)
#define IP_CLASSA_NET 0xff000000
#define IP_CLASSA_NSHIFT 24
#define IP_CLASSA_HOST (0xffffffff & ~IP_CLASSA_NET)
#define IP_CLASSA_MAX 128

#define IP_CLASSB(a) ((((u32_t)(a)) & 0xc0000000UL) == 0x80000000UL)
#define IP_CLASSB_NET 0xffff0000
#define IP_CLASSB_NSHIFT 16
#define IP_CLASSB_HOST (0xffffffff & ~IP_CLASSB_NET)
#define IP_CLASSB_MAX 65536

#define IP_CLASSC(a) ((((u32_t)(a)) & 0xe0000000UL) == 0xc0000000UL)
#define IP_CLASSC_NET 0xffffff00
#define IP_CLASSC_NSHIFT 8
#define IP_CLASSC_HOST (0xffffffff & ~IP_CLASSC_NET)

#define IP_CLASSD(a) (((u32_t)(a) & 0xf0000000UL) == 0xe0000000UL)
#define IP_CLASSD_NET 0xf0000000
#define IP_CLASSD_NSHIFT 28
#define IP_CLASSD_HOST 0x0fffffff
#define IP_MULTICAST(a) IP_CLASSD(a)

#define IP_EXPERIMENTAL(a) (((u32_t)(a) & 0xf0000000UL) == 0xf0000000UL)
#define IP_BADCLASS(a) (((u32_t)(a) & 0xf0000000UL) == 0xf0000000UL)

#define IP_LOOPBACKNET 127


#define IP4_ADDR(ipaddr,a,b,c,d) (ipaddr)->addr = PP_HTONL(LWIP_MAKEU32(a,b,c,d))





#define IPADDR2_COPY(dest,src) SMEMCPY(dest, src, sizeof(ip4_addr_t))



#define ip4_addr_copy(dest,src) ((dest).addr = (src).addr)

#define ip4_addr_set(dest,src) ((dest)->addr = ((src) == NULL ? 0 : (src)->addr))



#define ip4_addr_set_zero(ipaddr) ((ipaddr)->addr = 0)

#define ip4_addr_set_any(ipaddr) ((ipaddr)->addr = IPADDR_ANY)

#define ip4_addr_set_loopback(ipaddr) ((ipaddr)->addr = PP_HTONL(IPADDR_LOOPBACK))

#define ip4_addr_isloopback(ipaddr) (((ipaddr)->addr & PP_HTONL(IP_CLASSA_NET)) == PP_HTONL(((u32_t)IP_LOOPBACKNET) << 24))


#define ip4_addr_set_hton(dest,src) ((dest)->addr = ((src) == NULL ? 0: lwip_htonl((src)->addr)))



#define ip4_addr_set_u32(dest_ipaddr,src_u32) ((dest_ipaddr)->addr = (src_u32))

#define ip4_addr_get_u32(src_ipaddr) ((src_ipaddr)->addr)


#define ip4_addr_get_network(target,host,netmask) do { ((target)->addr = ((host)->addr) & ((netmask)->addr)); } while(0)
# 164 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"
#define ip4_addr_netcmp(addr1,addr2,mask) (((addr1)->addr & (mask)->addr) == ((addr2)->addr & (mask)->addr))



#define ip4_addr_cmp(addr1,addr2) ((addr1)->addr == (addr2)->addr)

#define ip4_addr_isany_val(addr1) ((addr1).addr == IPADDR_ANY)
#define ip4_addr_isany(addr1) ((addr1) == NULL || ip4_addr_isany_val(*(addr1)))

#define ip4_addr_isbroadcast(addr1,netif) ip4_addr_isbroadcast_u32((addr1)->addr, netif)
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);

#define ip_addr_netmask_valid(netmask) ip4_addr_netmask_valid((netmask)->addr)
u8_t ip4_addr_netmask_valid(u32_t netmask);

#define ip4_addr_ismulticast(addr1) (((addr1)->addr & PP_HTONL(0xf0000000UL)) == PP_HTONL(0xe0000000UL))

#define ip4_addr_islinklocal(addr1) (((addr1)->addr & PP_HTONL(0xffff0000UL)) == PP_HTONL(0xa9fe0000UL))

#define ip4_addr_debug_print_parts(debug,a,b,c,d) LWIP_DEBUGF(debug, ("%" U16_F ".%" U16_F ".%" U16_F ".%" U16_F, a, b, c, d))

#define ip4_addr_debug_print(debug,ipaddr) ip4_addr_debug_print_parts(debug, (u16_t)((ipaddr) != NULL ? ip4_addr1_16(ipaddr) : 0), (u16_t)((ipaddr) != NULL ? ip4_addr2_16(ipaddr) : 0), (u16_t)((ipaddr) != NULL ? ip4_addr3_16(ipaddr) : 0), (u16_t)((ipaddr) != NULL ? ip4_addr4_16(ipaddr) : 0))





#define ip4_addr_debug_print_val(debug,ipaddr) ip4_addr_debug_print_parts(debug, ip4_addr1_16(&(ipaddr)), ip4_addr2_16(&(ipaddr)), ip4_addr3_16(&(ipaddr)), ip4_addr4_16(&(ipaddr)))







#define ip4_addr1(ipaddr) (((const u8_t*)(&(ipaddr)->addr))[0])
#define ip4_addr2(ipaddr) (((const u8_t*)(&(ipaddr)->addr))[1])
#define ip4_addr3(ipaddr) (((const u8_t*)(&(ipaddr)->addr))[2])
#define ip4_addr4(ipaddr) (((const u8_t*)(&(ipaddr)->addr))[3])


#define ip4_addr1_16(ipaddr) ((u16_t)ip4_addr1(ipaddr))
#define ip4_addr2_16(ipaddr) ((u16_t)ip4_addr2(ipaddr))
#define ip4_addr3_16(ipaddr) ((u16_t)ip4_addr3(ipaddr))
#define ip4_addr4_16(ipaddr) ((u16_t)ip4_addr4(ipaddr))

#define IP4ADDR_STRLEN_MAX 16


#define ip_ntoa(ipaddr) ipaddr_ntoa(ipaddr)

u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h" 1
# 43 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h"
#define LWIP_HDR_IP6_ADDR_H 


# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h" 2
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2
# 54 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 239 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
#define IP_ADDR_PCB_VERSION_MATCH(addr,pcb) 1
#define IP_ADDR_PCB_VERSION_MATCH_EXACT(pcb,ipaddr) 1



typedef ip4_addr_t ip_addr_t;
#define IPADDR4_INIT(u32val) { u32val }
#define IPADDR4_INIT_BYTES(a,b,c,d) IPADDR4_INIT(PP_HTONL(LWIP_MAKEU32(a,b,c,d)))
#define IP_IS_V4_VAL(ipaddr) 1
#define IP_IS_V6_VAL(ipaddr) 0
#define IP_IS_V4(ipaddr) 1
#define IP_IS_V6(ipaddr) 0
#define IP_IS_ANY_TYPE_VAL(ipaddr) 0
#define IP_SET_TYPE_VAL(ipaddr,iptype) 
#define IP_SET_TYPE(ipaddr,iptype) 
#define IP_GET_TYPE(ipaddr) IPADDR_TYPE_V4
#define ip_2_ip4(ipaddr) (ipaddr)
#define IP_ADDR4(ipaddr,a,b,c,d) IP4_ADDR(ipaddr,a,b,c,d)

#define ip_addr_copy(dest,src) ip4_addr_copy(dest, src)
#define ip_addr_copy_from_ip4(dest,src) ip4_addr_copy(dest, src)
#define ip_addr_set_ip4_u32(ipaddr,val) ip4_addr_set_u32(ip_2_ip4(ipaddr), val)
#define ip_addr_get_ip4_u32(ipaddr) ip4_addr_get_u32(ip_2_ip4(ipaddr))
#define ip_addr_set(dest,src) ip4_addr_set(dest, src)
#define ip_addr_set_ipaddr(dest,src) ip4_addr_set(dest, src)
#define ip_addr_set_zero(ipaddr) ip4_addr_set_zero(ipaddr)
#define ip_addr_set_zero_ip4(ipaddr) ip4_addr_set_zero(ipaddr)
#define ip_addr_set_any(is_ipv6,ipaddr) ip4_addr_set_any(ipaddr)
#define ip_addr_set_loopback(is_ipv6,ipaddr) ip4_addr_set_loopback(ipaddr)
#define ip_addr_set_hton(dest,src) ip4_addr_set_hton(dest, src)
#define ip_addr_get_network(target,host,mask) ip4_addr_get_network(target, host, mask)
#define ip_addr_netcmp(addr1,addr2,mask) ip4_addr_netcmp(addr1, addr2, mask)
#define ip_addr_cmp(addr1,addr2) ip4_addr_cmp(addr1, addr2)
#define ip_addr_isany(ipaddr) ip4_addr_isany(ipaddr)
#define ip_addr_isany_val(ipaddr) ip4_addr_isany_val(ipaddr)
#define ip_addr_isloopback(ipaddr) ip4_addr_isloopback(ipaddr)
#define ip_addr_islinklocal(ipaddr) ip4_addr_islinklocal(ipaddr)
#define ip_addr_isbroadcast(addr,netif) ip4_addr_isbroadcast(addr, netif)
#define ip_addr_ismulticast(ipaddr) ip4_addr_ismulticast(ipaddr)
#define ip_addr_debug_print(debug,ipaddr) ip4_addr_debug_print(debug, ipaddr)
#define ip_addr_debug_print_val(debug,ipaddr) ip4_addr_debug_print_val(debug, ipaddr)
#define ipaddr_ntoa(ipaddr) ip4addr_ntoa(ipaddr)
#define ipaddr_ntoa_r(ipaddr,buf,buflen) ip4addr_ntoa_r(ipaddr, buf, buflen)
#define ipaddr_aton(cp,addr) ip4addr_aton(cp, addr)

#define IPADDR_STRLEN_MAX IP4ADDR_STRLEN_MAX

#define IP46_ADDR_ANY(type) (IP4_ADDR_ANY)
# 338 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 351 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
#define IP_ADDR_ANY IP4_ADDR_ANY





#define IP4_ADDR_ANY (&ip_addr_any)





#define IP4_ADDR_ANY4 (ip_2_ip4(&ip_addr_any))


#define IP_ADDR_BROADCAST (&ip_addr_broadcast)

#define IP4_ADDR_BROADCAST (ip_2_ip4(&ip_addr_broadcast))
# 400 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
#define IP_ANY_TYPE IP_ADDR_ANY
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h" 1
# 37 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h"
#define LWIP_HDR_ERR_H 
# 57 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h"
typedef s8_t err_t;



typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;

#define ERR_IS_FATAL(e) ((e) <= ERR_ABRT)
# 108 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h"
#define lwip_strerr(x) ""



int err_to_errno(err_t err);
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/inet.h" 1
# 41 "../../../components/net/lwip-2.0.2/src/include/lwip/inet.h"
#define LWIP_HDR_INET_H 
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/inet.h"
typedef u32_t in_addr_t;


struct in_addr {
  in_addr_t s_addr;
};

struct in6_addr {
  union {
    u32_t u32_addr[4];
    u8_t u8_addr[16];
  } un;
#define s6_addr un.u8_addr
};


#define INADDR_NONE IPADDR_NONE

#define INADDR_LOOPBACK IPADDR_LOOPBACK

#define INADDR_ANY IPADDR_ANY

#define INADDR_BROADCAST IPADDR_BROADCAST



#define IN6ADDR_ANY_INIT {{{0,0,0,0}}}


#define IN6ADDR_LOOPBACK_INIT {{{0,0,0,PP_HTONL(1)}}}

extern const struct in6_addr in6addr_any;





#define IN_CLASSA(a) IP_CLASSA(a)
#define IN_CLASSA_NET IP_CLASSA_NET
#define IN_CLASSA_NSHIFT IP_CLASSA_NSHIFT
#define IN_CLASSA_HOST IP_CLASSA_HOST
#define IN_CLASSA_MAX IP_CLASSA_MAX

#define IN_CLASSB(b) IP_CLASSB(b)
#define IN_CLASSB_NET IP_CLASSB_NET
#define IN_CLASSB_NSHIFT IP_CLASSB_NSHIFT
#define IN_CLASSB_HOST IP_CLASSB_HOST
#define IN_CLASSB_MAX IP_CLASSB_MAX

#define IN_CLASSC(c) IP_CLASSC(c)
#define IN_CLASSC_NET IP_CLASSC_NET
#define IN_CLASSC_NSHIFT IP_CLASSC_NSHIFT
#define IN_CLASSC_HOST IP_CLASSC_HOST
#define IN_CLASSC_MAX IP_CLASSC_MAX

#define IN_CLASSD(d) IP_CLASSD(d)
#define IN_CLASSD_NET IP_CLASSD_NET
#define IN_CLASSD_NSHIFT IP_CLASSD_NSHIFT
#define IN_CLASSD_HOST IP_CLASSD_HOST
#define IN_CLASSD_MAX IP_CLASSD_MAX

#define IN_MULTICAST(a) IP_MULTICAST(a)

#define IN_EXPERIMENTAL(a) IP_EXPERIMENTAL(a)
#define IN_BADCLASS(a) IP_BADCLASS(a)

#define IN_LOOPBACKNET IP_LOOPBACKNET



#define INET_ADDRSTRLEN IP4ADDR_STRLEN_MAX
# 135 "../../../components/net/lwip-2.0.2/src/include/lwip/inet.h"
#define inet_addr_from_ip4addr(target_inaddr,source_ipaddr) ((target_inaddr)->s_addr = ip4_addr_get_u32(source_ipaddr))
#define inet_addr_to_ip4addr(target_ipaddr,source_inaddr) (ip4_addr_set_u32(target_ipaddr, (source_inaddr)->s_addr))

#define inet_addr_to_ip4addr_p(target_ip4addr_p,source_inaddr) ((target_ip4addr_p) = (ip4_addr_t*)&((source_inaddr)->s_addr))


#define inet_addr(cp) ipaddr_addr(cp)
#define inet_aton(cp,addr) ip4addr_aton(cp, (ip4_addr_t*)addr)
#define inet_ntoa(addr) ip4addr_ntoa((const ip4_addr_t*)&(addr))
#define inet_ntoa_r(addr,buf,buflen) ip4addr_ntoa_r((const ip4_addr_t*)&(addr), buf, buflen)
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/errno.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/errno.h"
#define LWIP_HDR_ERRNO_H 
# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h" 2
# 58 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
typedef u8_t sa_family_t;




typedef u16_t in_port_t;




struct sockaddr_in {
  u8_t sin_len;
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;
#define SIN_ZERO_LEN 8
  char sin_zero[8];
};
# 89 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
struct sockaddr {
  u8_t sa_len;
  sa_family_t sa_family;
  char sa_data[14];
};

struct sockaddr_storage {
  u8_t s2_len;
  sa_family_t ss_family;
  char s2_data1[2];
  u32_t s2_data2[3];



};




typedef u32_t socklen_t;


struct lwip_sock;
# 146 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
struct iovec {
  void *iov_base;
  size_t iov_len;
};


struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;
  struct iovec *msg_iov;
  int msg_iovlen;
  void *msg_control;
  socklen_t msg_controllen;
  int msg_flags;
};


#define SOCK_STREAM 1
#define SOCK_DGRAM 2
#define SOCK_RAW 3




#define SO_REUSEADDR 0x0004
#define SO_KEEPALIVE 0x0008
#define SO_BROADCAST 0x0020





#define SO_DEBUG 0x0001
#define SO_ACCEPTCONN 0x0002
#define SO_DONTROUTE 0x0010
#define SO_USELOOPBACK 0x0040
#define SO_LINGER 0x0080
#define SO_DONTLINGER ((int)(~SO_LINGER))
#define SO_OOBINLINE 0x0100
#define SO_REUSEPORT 0x0200
#define SO_SNDBUF 0x1001
#define SO_RCVBUF 0x1002
#define SO_SNDLOWAT 0x1003
#define SO_RCVLOWAT 0x1004
#define SO_SNDTIMEO 0x1005
#define SO_RCVTIMEO 0x1006
#define SO_ERROR 0x1007
#define SO_TYPE 0x1008
#define SO_CONTIMEO 0x1009
#define SO_NO_CHECK 0x100a





struct linger {
       int l_onoff;
       int l_linger;
};




#define SOL_SOCKET 0xfff


#define AF_UNSPEC 0
#define AF_INET 2



#define AF_INET6 AF_UNSPEC

#define PF_INET AF_INET
#define PF_INET6 AF_INET6
#define PF_UNSPEC AF_UNSPEC
# 237 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define IPPROTO_IP 0
#define IPPROTO_ICMP 1
#define IPPROTO_TCP 6
#define IPPROTO_UDP 17




#define IPPROTO_UDPLITE 136
#define IPPROTO_RAW 255


#define MSG_PEEK 0x01
#define MSG_WAITALL 0x02
#define MSG_OOB 0x04
#define MSG_DONTWAIT 0x08
#define MSG_MORE 0x10





#define IP_TOS 1
#define IP_TTL 2





#define TCP_NODELAY 0x01
#define TCP_KEEPALIVE 0x02
#define TCP_KEEPIDLE 0x03
#define TCP_KEEPINTVL 0x04
#define TCP_KEEPCNT 0x05
# 294 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define IP_MULTICAST_TTL 5
#define IP_MULTICAST_IF 6
#define IP_MULTICAST_LOOP 7
# 306 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define IP_ADD_MEMBERSHIP 3
#define IP_DROP_MEMBERSHIP 4

typedef struct ip_mreq {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
} ip_mreq;
# 344 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define IPTOS_TOS_MASK 0x1E
#define IPTOS_TOS(tos) ((tos) & IPTOS_TOS_MASK)
#define IPTOS_LOWDELAY 0x10
#define IPTOS_THROUGHPUT 0x08
#define IPTOS_RELIABILITY 0x04
#define IPTOS_LOWCOST 0x02
#define IPTOS_MINCOST IPTOS_LOWCOST
# 361 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define IPTOS_PREC_MASK 0xe0
#define IPTOS_PREC(tos) ((tos) & IPTOS_PREC_MASK)
#define IPTOS_PREC_NETCONTROL 0xe0
#define IPTOS_PREC_INTERNETCONTROL 0xc0
#define IPTOS_PREC_CRITIC_ECP 0xa0
#define IPTOS_PREC_FLASHOVERRIDE 0x80
#define IPTOS_PREC_FLASH 0x60
#define IPTOS_PREC_IMMEDIATE 0x40
#define IPTOS_PREC_PRIORITY 0x20
#define IPTOS_PREC_ROUTINE 0x00
# 407 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define SIOCSHIWAT _IOW('s', 0, unsigned long)
#define SIOCGHIWAT _IOR('s', 1, unsigned long)
#define SIOCSLOWAT _IOW('s', 2, unsigned long)
#define SIOCGLOWAT _IOR('s', 3, unsigned long)
#define SIOCATMARK _IOR('s', 7, unsigned long)
# 432 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define SHUT_RD 0
#define SHUT_WR 1
#define SHUT_RDWR 2
# 476 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define lwip_socket_init() 
void lwip_socket_thread_init(void);
void lwip_socket_thread_cleanup(void);
# 513 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
int lwip_recv(int s, void *mem, size_t len, int flags);
int lwip_read(int s, void *mem, size_t len);
int lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
int lwip_send(int s, const void *dataptr, size_t size, int flags);
int lwip_sendmsg(int s, const struct msghdr *message, int flags);
int lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
int lwip_write(int s, const void *dataptr, size_t size);
int lwip_writev(int s, const struct iovec *iov, int iovcnt);
int lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
                struct timeval *timeout);
int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);
# 626 "../../../components/net/lwip-2.0.2/src/include/lwip/sockets.h"
#define inet_ntop(af,src,dst,size) (((af) == AF_INET) ? ip4addr_ntoa_r((const ip4_addr_t*)(src),(dst),(size)) : NULL)

#define inet_pton(af,src,dst) (((af) == AF_INET) ? ip4addr_aton((src),(ip4_addr_t*)(dst)) : 0)
# 52 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
#define LWIP_HDR_API_H 
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/netbuf.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/netbuf.h"
#define LWIP_HDR_NETBUF_H 







# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
#define LWIP_HDR_PBUF_H 
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
#define LWIP_SUPPORT_CUSTOM_PBUF ((IP_FRAG && !LWIP_NETIF_TX_SINGLE_PBUF) || (LWIP_IPV6 && LWIP_IPV6_FRAG))





#define PBUF_TRANSPORT_HLEN 20



#define PBUF_IP_HLEN 20






typedef enum {



  PBUF_TRANSPORT,



  PBUF_IP,




  PBUF_LINK,





  PBUF_RAW_TX,


  PBUF_RAW
} pbuf_layer;





typedef enum {






  PBUF_RAM,



  PBUF_ROM,



  PBUF_REF,






  PBUF_POOL
} pbuf_type;



#define PBUF_FLAG_PUSH 0x01U


#define PBUF_FLAG_IS_CUSTOM 0x02U

#define PBUF_FLAG_MCASTLOOP 0x04U

#define PBUF_FLAG_LLBCAST 0x08U

#define PBUF_FLAG_LLMCAST 0x10U

#define PBUF_FLAG_TCP_FIN 0x20U


struct pbuf {

  struct pbuf *next;


  void *payload;
# 156 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;


  u8_t type;


  u8_t flags;






  u16_t ref;
};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};
# 203 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
#define PBUF_POOL_FREE_OOSEQ 1
# 217 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
#define PBUF_CHECK_FREE_OOSEQ() 



#define pbuf_init() 

struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);





void pbuf_realloc(struct pbuf *p, u16_t size);
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
# 252 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/netbuf.h" 2
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/netbuf.h"
#define NETBUF_FLAG_DESTADDR 0x01

#define NETBUF_FLAG_CHKSUM 0x02


struct netbuf {
  struct pbuf *p, *ptr;
  ip_addr_t addr;
  u16_t port;
# 73 "../../../components/net/lwip-2.0.2/src/include/lwip/netbuf.h"
};


struct netbuf * netbuf_new (void);
void netbuf_delete (struct netbuf *buf);
void * netbuf_alloc (struct netbuf *buf, u16_t size);
void netbuf_free (struct netbuf *buf);
err_t netbuf_ref (struct netbuf *buf,
                                   const void *dataptr, u16_t size);
void netbuf_chain (struct netbuf *head, struct netbuf *tail);

err_t netbuf_data (struct netbuf *buf,
                                   void **dataptr, u16_t *len);
s8_t netbuf_next (struct netbuf *buf);
void netbuf_first (struct netbuf *buf);


#define netbuf_copy_partial(buf,dataptr,len,offset) pbuf_copy_partial((buf)->p, (dataptr), (len), (offset))

#define netbuf_copy(buf,dataptr,len) netbuf_copy_partial(buf, dataptr, len, 0)
#define netbuf_take(buf,dataptr,len) pbuf_take((buf)->p, dataptr, len)
#define netbuf_len(buf) ((buf)->p->tot_len)
#define netbuf_fromaddr(buf) (&((buf)->addr))
#define netbuf_set_fromaddr(buf,fromaddr) ip_addr_set(&((buf)->addr), fromaddr)
#define netbuf_fromport(buf) ((buf)->port)
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define LWIP_HDR_SYS_H 
# 87 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_TIMEOUT 0xffffffffUL




#define SYS_MBOX_EMPTY SYS_ARCH_TIMEOUT


# 1 "../../../components/net/lwip-2.0.2/src/arch/include/arch/sys_arch.h" 1
# 36 "../../../components/net/lwip-2.0.2/src/arch/include/arch/sys_arch.h"
#define __ARCH_SYS_ARCH_H__ 
# 46 "../../../components/net/lwip-2.0.2/src/arch/include/arch/sys_arch.h"
#define SYS_MBOX_NULL RT_NULL
#define SYS_SEM_NULL RT_NULL

typedef u32_t sys_prot_t;

#define SYS_MBOX_SIZE 10
#define SYS_LWIP_TIMER_NAME "timer"
#define SYS_LWIP_MBOX_NAME "mbox"
#define SYS_LWIP_SEM_NAME "sem"
#define SYS_LWIP_MUTEX_NAME "mu"

typedef rt_sem_t sys_sem_t;
typedef rt_mutex_t sys_mutex_t;
typedef rt_mailbox_t sys_mbox_t;
typedef rt_thread_t sys_thread_t;
# 96 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h" 2


typedef void (*lwip_thread_fn)(void *arg);
# 108 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define LWIP_COMPAT_MUTEX 0
# 131 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
err_t sys_mutex_new(sys_mutex_t *mutex);





void sys_mutex_lock(sys_mutex_t *mutex);





void sys_mutex_unlock(sys_mutex_t *mutex);





void sys_mutex_free(sys_mutex_t *mutex);





int sys_mutex_valid(sys_mutex_t *mutex);






void sys_mutex_set_invalid(sys_mutex_t *mutex);
# 175 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
err_t sys_sem_new(sys_sem_t *sem, u8_t count);





void sys_sem_signal(sys_sem_t *sem);
# 190 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout);





void sys_sem_free(sys_sem_t *sem);

#define sys_sem_wait(sem) sys_arch_sem_wait(sem, 0)





int sys_sem_valid(sys_sem_t *sem);






void sys_sem_set_invalid(sys_sem_t *sem);





#define sys_sem_valid_val(sem) sys_sem_valid(&(sem))





#define sys_sem_set_invalid_val(sem) sys_sem_set_invalid(&(sem))







void sys_msleep(u32_t ms);
# 243 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
err_t sys_mbox_new(sys_mbox_t *mbox, int size);







void sys_mbox_post(sys_mbox_t *mbox, void *msg);






err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg);
# 269 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout);
# 280 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg);




#define sys_mbox_tryfetch(mbox,msg) sys_arch_mbox_tryfetch(mbox, msg)





void sys_mbox_free(sys_mbox_t *mbox);
#define sys_mbox_fetch(mbox,msg) sys_arch_mbox_fetch(mbox, msg, 0)





int sys_mbox_valid(sys_mbox_t *mbox);






void sys_mbox_set_invalid(sys_mbox_t *mbox);





#define sys_mbox_valid_val(mbox) sys_mbox_valid(&(mbox))





#define sys_mbox_set_invalid_val(mbox) sys_mbox_set_invalid(&(mbox))
# 331 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio);




void sys_init(void);





u32_t sys_jiffies(void);







u32_t sys_now(void);
# 372 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_DECL_PROTECT(lev) sys_prot_t lev
# 384 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_PROTECT(lev) lev = sys_arch_protect()
# 395 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_UNPROTECT(lev) sys_arch_unprotect(lev)
sys_prot_t sys_arch_protect(void);
void sys_arch_unprotect(sys_prot_t pval);
# 415 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_INC(var,val) do { SYS_ARCH_DECL_PROTECT(old_level); SYS_ARCH_PROTECT(old_level); var += val; SYS_ARCH_UNPROTECT(old_level); } while(0)
# 424 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_DEC(var,val) do { SYS_ARCH_DECL_PROTECT(old_level); SYS_ARCH_PROTECT(old_level); var -= val; SYS_ARCH_UNPROTECT(old_level); } while(0)
# 433 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_GET(var,ret) do { SYS_ARCH_DECL_PROTECT(old_level); SYS_ARCH_PROTECT(old_level); ret = var; SYS_ARCH_UNPROTECT(old_level); } while(0)
# 442 "../../../components/net/lwip-2.0.2/src/include/lwip/sys.h"
#define SYS_ARCH_SET(var,val) do { SYS_ARCH_DECL_PROTECT(old_level); SYS_ARCH_PROTECT(old_level); var = val; SYS_ARCH_UNPROTECT(old_level); } while(0)
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h" 2
# 61 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
#define NETCONN_NOFLAG 0x00
#define NETCONN_NOCOPY 0x00
#define NETCONN_COPY 0x01
#define NETCONN_MORE 0x02
#define NETCONN_DONTBLOCK 0x04



#define NETCONN_FLAG_NON_BLOCKING 0x02

#define NETCONN_FLAG_IN_NONBLOCKING_CONNECT 0x04


#define NETCONN_FLAG_CHECK_WRITESPACE 0x10
# 84 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
#define NETCONNTYPE_GROUP(t) ((t)&0xF0)
#define NETCONNTYPE_DATAGRAM(t) ((t)&0xE0)






#define NETCONNTYPE_ISIPV6(t) (0)
#define NETCONNTYPE_ISUDPLITE(t) ((t) == NETCONN_UDPLITE)
#define NETCONNTYPE_ISUDPNOCHKSUM(t) ((t) == NETCONN_UDPNOCHKSUM)





enum netconn_type {
  NETCONN_INVALID = 0,

  NETCONN_TCP = 0x10,





  NETCONN_UDP = 0x20,

  NETCONN_UDPLITE = 0x21,

  NETCONN_UDPNOCHKSUM = 0x22,
# 125 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
  NETCONN_RAW = 0x40
# 135 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
};



enum netconn_state {
  NETCONN_NONE,
  NETCONN_WRITE,
  NETCONN_LISTEN,
  NETCONN_CONNECT,
  NETCONN_CLOSE
};
# 173 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
enum netconn_evt {
  NETCONN_EVT_RCVPLUS,
  NETCONN_EVT_RCVMINUS,
  NETCONN_EVT_SENDPLUS,
  NETCONN_EVT_SENDMINUS,
  NETCONN_EVT_ERROR
};



enum netconn_igmp {
  NETCONN_JOIN,
  NETCONN_LEAVE
};




#define NETCONN_DNS_DEFAULT NETCONN_DNS_IPV4_IPV6
#define NETCONN_DNS_IPV4 0
#define NETCONN_DNS_IPV6 1
#define NETCONN_DNS_IPV4_IPV6 2
#define NETCONN_DNS_IPV6_IPV4 3



struct ip_pcb;
struct tcp_pcb;
struct udp_pcb;
struct raw_pcb;
struct netconn;
struct api_msg;


typedef void (* netconn_callback)(struct netconn *, enum netconn_evt, u16_t len);


struct netconn {

  enum netconn_type type;

  enum netconn_state state;

  union {
    struct ip_pcb *ip;
    struct tcp_pcb *tcp;
    struct udp_pcb *udp;
    struct raw_pcb *raw;
  } pcb;

  err_t last_err;


  sys_sem_t op_completed;



  sys_mbox_t recvmbox;



  sys_mbox_t acceptmbox;



  int socket;




  s32_t send_timeout;




  int recv_timeout;




  int recv_bufsize;



  int recv_avail;






  u8_t flags;



  size_t write_offset;



  struct api_msg *current_msg;


  netconn_callback callback;
};


#define API_EVENT(c,e,l) if (c->callback) { (*c->callback)(c, e, l); }




#define NETCONN_SET_SAFE_ERR(conn,err) do { if ((conn) != NULL) { SYS_ARCH_DECL_PROTECT(netconn_set_safe_err_lev); SYS_ARCH_PROTECT(netconn_set_safe_err_lev); if (!ERR_IS_FATAL((conn)->last_err)) { (conn)->last_err = err; } SYS_ARCH_UNPROTECT(netconn_set_safe_err_lev); }} while(0);
# 298 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
#define netconn_new(t) netconn_new_with_proto_and_callback(t, 0, NULL)
#define netconn_new_with_callback(t,c) netconn_new_with_proto_and_callback(t, 0, c)
struct netconn *netconn_new_with_proto_and_callback(enum netconn_type t, u8_t proto,
                                             netconn_callback callback);
err_t netconn_delete(struct netconn *conn);

#define netconn_type(conn) (conn->type)

err_t netconn_getaddr(struct netconn *conn, ip_addr_t *addr,
                        u16_t *port, u8_t local);

#define netconn_peer(c,i,p) netconn_getaddr(c,i,p,0)

#define netconn_addr(c,i,p) netconn_getaddr(c,i,p,1)

err_t netconn_bind(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_connect(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_disconnect (struct netconn *conn);
err_t netconn_listen_with_backlog(struct netconn *conn, u8_t backlog);

#define netconn_listen(conn) netconn_listen_with_backlog(conn, TCP_DEFAULT_LISTEN_BACKLOG)
err_t netconn_accept(struct netconn *conn, struct netconn **new_conn);
err_t netconn_recv(struct netconn *conn, struct netbuf **new_buf);
err_t netconn_recv_tcp_pbuf(struct netconn *conn, struct pbuf **new_buf);
err_t netconn_sendto(struct netconn *conn, struct netbuf *buf,
                             const ip_addr_t *addr, u16_t port);
err_t netconn_send(struct netconn *conn, struct netbuf *buf);
err_t netconn_write_partly(struct netconn *conn, const void *dataptr, size_t size,
                             u8_t apiflags, size_t *bytes_written);

#define netconn_write(conn,dataptr,size,apiflags) netconn_write_partly(conn, dataptr, size, apiflags, NULL)

err_t netconn_close(struct netconn *conn);
err_t netconn_shutdown(struct netconn *conn, u8_t shut_rx, u8_t shut_tx);


err_t netconn_join_leave_group(struct netconn *conn, const ip_addr_t *multiaddr,
                             const ip_addr_t *netif_addr, enum netconn_igmp join_or_leave);






err_t netconn_gethostbyname(const char *name, ip_addr_t *addr);
#define netconn_gethostbyname_addrtype(name,addr,dns_addrtype) netconn_gethostbyname(name, addr)



#define netconn_err(conn) ((conn)->last_err)
#define netconn_recv_bufsize(conn) ((conn)->recv_bufsize)


#define netconn_set_nonblocking(conn,val) do { if(val) { (conn)->flags |= NETCONN_FLAG_NON_BLOCKING; } else { (conn)->flags &= ~ NETCONN_FLAG_NON_BLOCKING; }} while(0)




#define netconn_is_nonblocking(conn) (((conn)->flags & NETCONN_FLAG_NON_BLOCKING) != 0)
# 374 "../../../components/net/lwip-2.0.2/src/include/lwip/api.h"
#define netconn_set_sendtimeout(conn,timeout) ((conn)->send_timeout = (timeout))

#define netconn_get_sendtimeout(conn) ((conn)->send_timeout)



#define netconn_set_recvtimeout(conn,timeout) ((conn)->recv_timeout = (timeout))

#define netconn_get_recvtimeout(conn) ((conn)->recv_timeout)



#define netconn_set_recvbufsize(conn,recvbufsize) ((conn)->recv_bufsize = (recvbufsize))

#define netconn_get_recvbufsize(conn) ((conn)->recv_bufsize)






#define netconn_thread_init() 
#define netconn_thread_cleanup() 
# 53 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/igmp.h" 1
# 41 "../../../components/net/lwip-2.0.2/src/include/lwip/igmp.h"
#define LWIP_HDR_IGMP_H 



# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
#define LWIP_HDR_NETIF_H 



#define ENABLE_LOOPBACK (LWIP_NETIF_LOOPBACK || LWIP_HAVE_LOOPIF)







# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
#define LWIP_HDR_STATS_H 



# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/mem.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/mem.h"
#define LWIP_HDR_MEM_H 
# 67 "../../../components/net/lwip-2.0.2/src/include/lwip/mem.h"
typedef u16_t mem_size_t;
#define MEM_SIZE_F U16_F



void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
#define LWIP_HDR_MEMP_H 






#define LWIP_MEMPOOL(name,num,size,desc) 
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h" 1
# 23 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
#define LWIP_MALLOC_MEMPOOL(num,size) LWIP_MEMPOOL(POOL_ ##size, num, (size + LWIP_MEM_ALIGN_SIZE(sizeof(struct memp_malloc_helper))), "MALLOC_"#size)
#define LWIP_MALLOC_MEMPOOL_START 
#define LWIP_MALLOC_MEMPOOL_END 





#define LWIP_PBUF_MEMPOOL(name,num,payload,desc) LWIP_MEMPOOL(name, num, (MEMP_ALIGN_SIZE(sizeof(struct pbuf)) + MEMP_ALIGN_SIZE(payload)), desc)
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"



























# 87 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"













# 126 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"


# 142 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
#undef LWIP_MEMPOOL
#undef LWIP_MALLOC_MEMPOOL
#undef LWIP_MALLOC_MEMPOOL_START
#undef LWIP_MALLOC_MEMPOOL_END
#undef LWIP_PBUF_MEMPOOL
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2


typedef enum {
#define LWIP_MEMPOOL(name,num,size,desc) MEMP_ ##name,
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h" 1
# 23 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
#define LWIP_MALLOC_MEMPOOL(num,size) LWIP_MEMPOOL(POOL_ ##size, num, (size + LWIP_MEM_ALIGN_SIZE(sizeof(struct memp_malloc_helper))), "MALLOC_"#size)
#define LWIP_MALLOC_MEMPOOL_START 
#define LWIP_MALLOC_MEMPOOL_END 





#define LWIP_PBUF_MEMPOOL(name,num,payload,desc) LWIP_MEMPOOL(name, num, (MEMP_ALIGN_SIZE(sizeof(struct pbuf)) + MEMP_ALIGN_SIZE(payload)), desc)
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_REASSDATA,






MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 87 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
MEMP_ARP_QUEUE,



MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 126 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 142 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"
#undef LWIP_MEMPOOL
#undef LWIP_MALLOC_MEMPOOL
#undef LWIP_MALLOC_MEMPOOL_START
#undef LWIP_MALLOC_MEMPOOL_END
#undef LWIP_PBUF_MEMPOOL
# 53 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
#define LWIP_HDR_MEMP_PRIV_H 
# 85 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
#define MEMP_SIZE 0
#define MEMP_ALIGN_SIZE(x) (LWIP_MEM_ALIGN_SIZE(x))




struct memp {
  struct memp *next;




};
# 130 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
struct memp_desc {
# 141 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
  u16_t size;



  u16_t num;


  u8_t *base;


  struct memp **tab;

};




#define DECLARE_LWIP_MEMPOOL_DESC(desc) 






#define LWIP_MEMPOOL_DECLARE_STATS_INSTANCE(name) 
#define LWIP_MEMPOOL_DECLARE_STATS_REFERENCE(name) 


void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 57 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 1
# 58 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];





#define LWIP_MEMPOOL_PROTOTYPE(name) extern const struct memp_desc memp_ ## name
# 93 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
#define LWIP_MEMPOOL_DECLARE(name,num,size,desc) LWIP_DECLARE_MEMORY_ALIGNED(memp_memory_ ## name ## _base, ((num) * (MEMP_SIZE + MEMP_ALIGN_SIZE(size)))); LWIP_MEMPOOL_DECLARE_STATS_INSTANCE(memp_stats_ ## name) static struct memp *memp_tab_ ## name; const struct memp_desc memp_ ## name = { DECLARE_LWIP_MEMPOOL_DESC(desc) LWIP_MEMPOOL_DECLARE_STATS_REFERENCE(memp_stats_ ## name) LWIP_MEM_ALIGN_SIZE(size), (num), memp_memory_ ## name ## _base, &memp_tab_ ## name };
# 115 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
#define LWIP_MEMPOOL_INIT(name) memp_init_pool(&memp_ ## name)




#define LWIP_MEMPOOL_ALLOC(name) memp_malloc_pool(&memp_ ## name)




#define LWIP_MEMPOOL_FREE(name,x) memp_free_pool(&memp_ ## name, (x))
# 139 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 2
# 318 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
#define stats_init() 
#define STATS_INC(x) 
#define STATS_DEC(x) 
#define STATS_INC_USED(x) 






#define TCP_STATS_INC(x) 
#define TCP_STATS_DISPLAY() 






#define UDP_STATS_INC(x) 
#define UDP_STATS_DISPLAY() 






#define ICMP_STATS_INC(x) 
#define ICMP_STATS_DISPLAY() 






#define IGMP_STATS_INC(x) 
#define IGMP_STATS_DISPLAY() 






#define IP_STATS_INC(x) 
#define IP_STATS_DISPLAY() 






#define IPFRAG_STATS_INC(x) 
#define IPFRAG_STATS_DISPLAY() 






#define ETHARP_STATS_INC(x) 
#define ETHARP_STATS_DISPLAY() 






#define LINK_STATS_INC(x) 
#define LINK_STATS_DISPLAY() 
# 395 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
#define MEM_STATS_AVAIL(x,y) 
#define MEM_STATS_INC(x) 
#define MEM_STATS_INC_USED(x,y) 
#define MEM_STATS_DEC_USED(x,y) 
#define MEM_STATS_DISPLAY() 







#define MEMP_STATS_DEC(x,i) 
#define MEMP_STATS_DISPLAY(i) 
#define MEMP_STATS_GET(x,i) 0
# 418 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
#define SYS_STATS_INC(x) 
#define SYS_STATS_DEC(x) 
#define SYS_STATS_INC_USED(x) 
#define SYS_STATS_DISPLAY() 






#define IP6_STATS_INC(x) 
#define IP6_STATS_DISPLAY() 






#define ICMP6_STATS_INC(x) 
#define ICMP6_STATS_DISPLAY() 






#define IP6_FRAG_STATS_INC(x) 
#define IP6_FRAG_STATS_DISPLAY() 






#define MLD6_STATS_INC(x) 
#define MLD6_STATS_DISPLAY() 






#define ND6_STATS_INC(x) 
#define ND6_STATS_DISPLAY() 





#define MIB2_STATS_INC(x) 
# 479 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
#define stats_display() 
#define stats_display_proto(proto,name) 
#define stats_display_igmp(igmp,name) 
#define stats_display_mem(mem,name) 
#define stats_display_memp(mem,index) 
#define stats_display_sys(sys) 
# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h" 2
# 63 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
#define NETIF_MAX_HWADDR_LEN 6U
# 78 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
#define NETIF_FLAG_UP 0x01U


#define NETIF_FLAG_BROADCAST 0x02U





#define NETIF_FLAG_LINK_UP 0x04U



#define NETIF_FLAG_ETHARP 0x08U



#define NETIF_FLAG_ETHERNET 0x10U


#define NETIF_FLAG_IGMP 0x20U


#define NETIF_FLAG_MLD6 0x40U





enum lwip_internal_netif_client_data_index
{

   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,




   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 139 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);






typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 173 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 196 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);
# 211 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
u8_t netif_alloc_client_data_id(void);



#define netif_set_client_data(netif,id,data) netif_get_client_data(netif, id) = (data)



#define netif_get_client_data(netif,id) (netif)->client_data[(id)]





struct netif {

  struct netif *next;



  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;
# 244 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;
# 266 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
  netif_status_callback_fn status_callback;
# 279 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 0];







  u8_t rs_count;
# 299 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
  u16_t mtu;

  u8_t hwaddr_len;

  u8_t hwaddr[6U];

  u8_t flags;

  char name[2];

  u8_t num;
# 323 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;
# 341 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
};






#define NETIF_SET_CHECKSUM_CTRL(netif,chksumflags) 
#define IF__NETIF_CHECKSUM_ENABLED(netif,chksumflag) 



extern struct netif *netif_list;

extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif,

                        const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,

                        void *state, netif_init_fn init, netif_input_fn input);

void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);

void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);

#define netif_ip4_addr(netif) ((const ip4_addr_t*)ip_2_ip4(&((netif)->ip_addr)))

#define netif_ip4_netmask(netif) ((const ip4_addr_t*)ip_2_ip4(&((netif)->netmask)))

#define netif_ip4_gw(netif) ((const ip4_addr_t*)ip_2_ip4(&((netif)->gw)))

#define netif_ip_addr4(netif) ((const ip_addr_t*)&((netif)->ip_addr))

#define netif_ip_netmask4(netif) ((const ip_addr_t*)&((netif)->netmask))

#define netif_ip_gw4(netif) ((const ip_addr_t*)&((netif)->gw))


void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);



#define netif_is_up(netif) (((netif)->flags & NETIF_FLAG_UP) ? (u8_t)1 : (u8_t)0)


void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);

#define netif_is_link_up(netif) (((netif)->flags & NETIF_FLAG_LINK_UP) ? (u8_t)1 : (u8_t)0)
# 428 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
#define netif_set_igmp_mac_filter(netif,function) do { if((netif) != NULL) { (netif)->igmp_mac_filter = function; }}while(0)
#define netif_get_igmp_mac_filter(netif) (((netif) != NULL) ? ((netif)->igmp_mac_filter) : NULL)
# 447 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
err_t netif_input(struct pbuf *p, struct netif *inp);
# 467 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
#define NETIF_SET_HWADDRHINT(netif,hint) 


struct netif *netif_find_nonum(const char *name);
u8_t netif_get_index(struct netif *target);
struct netif *netif_find_byindex(u8_t index);
# 46 "../../../components/net/lwip-2.0.2/src/include/lwip/igmp.h" 2
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/igmp.h"
#define IGMP_TMR_INTERVAL 100
#define IGMP_V1_DELAYING_MEMBER_TMR (1000/IGMP_TMR_INTERVAL)
#define IGMP_JOIN_DELAYING_MEMBER_TMR (500 /IGMP_TMR_INTERVAL)


#define IGMP_DEL_MAC_FILTER NETIF_DEL_MAC_FILTER
#define IGMP_ADD_MAC_FILTER NETIF_ADD_MAC_FILTER
# 74 "../../../components/net/lwip-2.0.2/src/include/lwip/igmp.h"
struct igmp_group {

  struct igmp_group *next;

  ip4_addr_t group_address;

  u8_t last_reporter_flag;

  u8_t group_state;

  u16_t timer;

  u8_t use;
};


void igmp_init(void);
err_t igmp_start(struct netif *netif);
err_t igmp_stop(struct netif *netif);
void igmp_report_groups(struct netif *netif);
struct igmp_group *igmp_lookfor_group(struct netif *ifp, const ip4_addr_t *addr);
void igmp_input(struct pbuf *p, struct netif *inp, const ip4_addr_t *dest);
err_t igmp_joingroup(const ip4_addr_t *ifaddr, const ip4_addr_t *groupaddr);
err_t igmp_joingroup_netif(struct netif *netif, const ip4_addr_t *groupaddr);
err_t igmp_leavegroup(const ip4_addr_t *ifaddr, const ip4_addr_t *groupaddr);
err_t igmp_leavegroup_netif(struct netif *netif, const ip4_addr_t *groupaddr);
void igmp_tmr(void);






#define netif_igmp_data(netif) ((struct igmp_group *)netif_get_client_data(netif, LWIP_NETIF_CLIENT_DATA_INDEX_IGMP))
# 55 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
#define LWIP_HDR_TCP_H 







# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define LWIP_HDR_IP_H 
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h"
#define LWIP_HDR_IP4_H 
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip4.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip4.h"
#define LWIP_HDR_PROT_IP4_H 
# 52 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip4.h"

struct ip4_addr_packed {
  u32_t addr;
} __attribute__((packed));





typedef struct ip4_addr_packed ip4_addr_p_t;


#define IP_HLEN 20






struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;
#define IP_RF 0x8000U
#define IP_DF 0x4000U
#define IP_MF 0x2000U
#define IP_OFFMASK 0x1fffU

  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip4_addr_p_t src;
  ip4_addr_p_t dest;
} __attribute__((packed));






#define IPH_V(hdr) ((hdr)->_v_hl >> 4)
#define IPH_HL(hdr) ((hdr)->_v_hl & 0x0f)
#define IPH_TOS(hdr) ((hdr)->_tos)
#define IPH_LEN(hdr) ((hdr)->_len)
#define IPH_ID(hdr) ((hdr)->_id)
#define IPH_OFFSET(hdr) ((hdr)->_offset)
#define IPH_TTL(hdr) ((hdr)->_ttl)
#define IPH_PROTO(hdr) ((hdr)->_proto)
#define IPH_CHKSUM(hdr) ((hdr)->_chksum)


#define IPH_VHL_SET(hdr,v,hl) (hdr)->_v_hl = (u8_t)((((v) << 4) | (hl)))
#define IPH_TOS_SET(hdr,tos) (hdr)->_tos = (tos)
#define IPH_LEN_SET(hdr,len) (hdr)->_len = (len)
#define IPH_ID_SET(hdr,id) (hdr)->_id = (id)
#define IPH_OFFSET_SET(hdr,off) (hdr)->_offset = (off)
#define IPH_TTL_SET(hdr,ttl) (hdr)->_ttl = (u8_t)(ttl)
#define IPH_PROTO_SET(hdr,proto) (hdr)->_proto = (u8_t)(proto)
#define IPH_CHKSUM_SET(hdr,chksum) (hdr)->_chksum = (chksum)
# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h" 2
# 58 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h"
#define LWIP_IPV4_SRC_ROUTING 0



#define IP_OPTIONS_SEND (LWIP_IPV4 && LWIP_IGMP)

#define ip_init() 
struct netif *ip4_route(const ip4_addr_t *dest);



#define ip4_route_src(dest,src) ip4_route(dest)

err_t ip4_input(struct pbuf *p, struct netif *inp);
err_t ip4_output(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip4_output_if(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);
err_t ip4_output_if_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);





err_t ip4_output_if_opt(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);
err_t ip4_output_if_opt_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);



void ip4_set_default_multicast_netif(struct netif* default_multicast_netif);


#define ip4_netif_get_local_ip(netif) (((netif) != NULL) ? netif_ip_addr4(netif) : NULL)




#define ip4_debug_print(p) 
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6.h"
#define LWIP_HDR_IP6_H 
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip.h"
#define LWIP_HDR_PROT_IP_H 



#define IP_PROTO_ICMP 1
#define IP_PROTO_IGMP 2
#define IP_PROTO_UDP 17
#define IP_PROTO_UDPLITE 136
#define IP_PROTO_TCP 6


#define IP_HDR_GET_VERSION(ptr) ((*(u8_t*)(ptr)) >> 4)
# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 58 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define LWIP_IP_HDRINCL NULL




#define LWIP_IP_CHECK_PBUF_REF_COUNT_FOR_TX(p) LWIP_ASSERT("p->ref == 1", (p)->ref == 1)





#define IP_PCB_ADDRHINT 






#define IP_PCB ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl IP_PCB_ADDRHINT
# 89 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};




#define SOF_REUSEADDR 0x04U
#define SOF_KEEPALIVE 0x08U
#define SOF_BROADCAST 0x20U


#define SOF_INHERITED (SOF_REUSEADDR|SOF_KEEPALIVE)


struct ip_globals
{

  struct netif *current_netif;

  struct netif *current_input_netif;


  struct ip_hdr *current_ip4_header;






  u16_t current_ip_header_tot_len;

  ip_addr_t current_iphdr_src;

  ip_addr_t current_iphdr_dest;
};
extern struct ip_globals ip_data;






#define ip_current_netif() (ip_data.current_netif)



#define ip_current_input_netif() (ip_data.current_input_netif)

#define ip_current_header_tot_len() (ip_data.current_ip_header_tot_len)

#define ip_current_src_addr() (&ip_data.current_iphdr_src)

#define ip_current_dest_addr() (&ip_data.current_iphdr_dest)
# 178 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define ip4_current_header() ((const struct ip_hdr*)(ip_data.current_ip4_header))

#define ip_current_is_v6() 0

#define ip_current_header_proto() IPH_PROTO(ip4_current_header())

#define ip_next_header_ptr() ((const void*)((const u8_t*)ip4_current_header() + ip_current_header_tot_len()))

#define ip4_current_src_addr() (&ip_data.current_iphdr_src)

#define ip4_current_dest_addr() (&ip_data.current_iphdr_dest)
# 210 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define ip_current_src_addr() (&ip_data.current_iphdr_src)

#define ip_current_dest_addr() (&ip_data.current_iphdr_dest)


#define ip_get_option(pcb,opt) ((pcb)->so_options & (opt))

#define ip_set_option(pcb,opt) ((pcb)->so_options |= (opt))

#define ip_reset_option(pcb,opt) ((pcb)->so_options &= ~(opt))
# 272 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define ip_output(p,src,dest,ttl,tos,proto) ip4_output(p, src, dest, ttl, tos, proto)

#define ip_output_if(p,src,dest,ttl,tos,proto,netif) ip4_output_if(p, src, dest, ttl, tos, proto, netif)

#define ip_output_if_src(p,src,dest,ttl,tos,proto,netif) ip4_output_if_src(p, src, dest, ttl, tos, proto, netif)

#define ip_output_hinted(p,src,dest,ttl,tos,proto,addr_hint) ip4_output_hinted(p, src, dest, ttl, tos, proto, addr_hint)

#define ip_route(src,dest) ip4_route_src(dest, src)

#define ip_netif_get_local_ip(netif,dest) ip4_netif_get_local_ip(netif)

#define ip_debug_print(is_ipv6,p) ip4_debug_print(p)

#define ip_input ip4_input
# 308 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
#define ip_route_get_local_ip(src,dest,netif,ipaddr) do { (netif) = ip_route(src, dest); (ipaddr) = ip_netif_get_local_ip(netif, dest); }while(0)
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h"
#define LWIP_HDR_ICMP_H 





# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp.h"
#define LWIP_HDR_PROT_ICMP_H 







#define ICMP_ER 0
#define ICMP_DUR 3
#define ICMP_SQ 4
#define ICMP_RD 5
#define ICMP_ECHO 8
#define ICMP_TE 11
#define ICMP_PP 12
#define ICMP_TS 13
#define ICMP_TSR 14
#define ICMP_IRQ 15
#define ICMP_IR 16
#define ICMP_AM 17
#define ICMP_AMR 18
# 68 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));






#define ICMPH_TYPE(hdr) ((hdr)->type)
#define ICMPH_CODE(hdr) ((hdr)->code)
#define ICMPH_TYPE_SET(hdr,t) ((hdr)->type = (t))
#define ICMPH_CODE_SET(hdr,c) ((hdr)->code = (c))
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h" 2
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h"
enum icmp_dur_type {

  ICMP_DUR_NET = 0,

  ICMP_DUR_HOST = 1,

  ICMP_DUR_PROTO = 2,

  ICMP_DUR_PORT = 3,

  ICMP_DUR_FRAG = 4,

  ICMP_DUR_SR = 5
};


enum icmp_te_type {

  ICMP_TE_TTL = 0,

  ICMP_TE_FRAG = 1
};



void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);
# 101 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h"
#define icmp_port_unreach(isipv6,pbuf) icmp_dest_unreach(pbuf, ICMP_DUR_PORT)
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h" 2
# 57 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
struct tcp_pcb;
# 68 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);
# 80 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);
# 94 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);
# 106 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);
# 118 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef void (*tcp_err_fn)(void *arg, err_t err);
# 132 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);
# 141 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
#define RCV_WND_SCALE(pcb,wnd) (wnd)
#define SND_WND_SCALE(pcb,wnd) (wnd)
#define TCPWND16(x) (x)
#define TCP_WND_MAX(pcb) TCP_WND
typedef u16_t tcpwnd_size_t;





typedef u8_t tcpflags_t;


enum tcp_state {
  CLOSED = 0,
  LISTEN = 1,
  SYN_SENT = 2,
  SYN_RCVD = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1 = 5,
  FIN_WAIT_2 = 6,
  CLOSE_WAIT = 7,
  CLOSING = 8,
  LAST_ACK = 9,
  TIME_WAIT = 10
};




#define TCP_PCB_COMMON(type) type *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port
# 181 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
struct tcp_pcb_listen {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb_listen *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;



  tcp_accept_fn accept;






};



struct tcp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;


  u16_t remote_port;

  tcpflags_t flags;
#define TF_ACK_DELAY 0x01U
#define TF_ACK_NOW 0x02U
#define TF_INFR 0x04U
#define TF_CLOSEPEND 0x08U
#define TF_RXCLOSED 0x10U
#define TF_FIN 0x20U
#define TF_NODELAY 0x40U
#define TF_NAGLEMEMERR 0x80U
# 232 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;


  u32_t rcv_nxt;
  tcpwnd_size_t rcv_wnd;
  tcpwnd_size_t rcv_ann_wnd;
  u32_t rcv_ann_right_edge;


  s16_t rtime;

  u16_t mss;


  u32_t rttest;
  u32_t rtseq;
  s16_t sa, sv;

  s16_t rto;
  u8_t nrtx;


  u8_t dupacks;
  u32_t lastack;


  tcpwnd_size_t cwnd;
  tcpwnd_size_t ssthresh;


  u32_t snd_nxt;
  u32_t snd_wl1, snd_wl2;

  u32_t snd_lbb;
  tcpwnd_size_t snd_wnd;
  tcpwnd_size_t snd_wnd_max;

  tcpwnd_size_t snd_buf;
#define TCP_SNDQUEUELEN_OVERFLOW (0xffffU-3)
  u16_t snd_queuelen;



  u16_t unsent_oversize;



  struct tcp_seg *unsent;
  struct tcp_seg *unacked;




  struct pbuf *refused_data;


  struct tcp_pcb_listen* listener;




  tcp_sent_fn sent;

  tcp_recv_fn recv;

  tcp_connected_fn connected;

  tcp_poll_fn poll;

  tcp_err_fn errf;
# 312 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
  u32_t keep_idle;

  u32_t keep_intvl;
  u32_t keep_cnt;



  u8_t persist_cnt;

  u8_t persist_backoff;


  u8_t keep_cnt_sent;





};
# 352 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
struct tcp_pcb * tcp_new (void);
struct tcp_pcb * tcp_new_ip_type (u8_t type);

void tcp_arg (struct tcp_pcb *pcb, void *arg);

void tcp_recv (struct tcp_pcb *pcb, tcp_recv_fn recv);
void tcp_sent (struct tcp_pcb *pcb, tcp_sent_fn sent);
void tcp_err (struct tcp_pcb *pcb, tcp_err_fn err);
void tcp_accept (struct tcp_pcb *pcb, tcp_accept_fn accept);

void tcp_poll (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);




#define tcp_mss(pcb) ((pcb)->mss)

#define tcp_sndbuf(pcb) (TCPWND16((pcb)->snd_buf))
#define tcp_sndqueuelen(pcb) ((pcb)->snd_queuelen)

#define tcp_nagle_disable(pcb) ((pcb)->flags |= TF_NODELAY)

#define tcp_nagle_enable(pcb) ((pcb)->flags = (tcpflags_t)((pcb)->flags & ~TF_NODELAY))

#define tcp_nagle_disabled(pcb) (((pcb)->flags & TF_NODELAY) != 0)
# 385 "../../../components/net/lwip-2.0.2/src/include/lwip/tcp.h"
#define tcp_backlog_set(pcb,new_backlog) 
#define tcp_backlog_delayed(pcb) 
#define tcp_backlog_accepted(pcb) 

#define tcp_accepted(pcb) 

void tcp_recved (struct tcp_pcb *pcb, u16_t len);
err_t tcp_bind (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port);
err_t tcp_connect (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog_and_err(struct tcp_pcb *pcb, u8_t backlog, err_t *err);
struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);

#define tcp_listen(pcb) tcp_listen_with_backlog(pcb, TCP_DEFAULT_LISTEN_BACKLOG)

void tcp_abort (struct tcp_pcb *pcb);
err_t tcp_close (struct tcp_pcb *pcb);
err_t tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);


#define TCP_WRITE_FLAG_COPY 0x01
#define TCP_WRITE_FLAG_MORE 0x02

err_t tcp_write (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void tcp_setprio (struct tcp_pcb *pcb, u8_t prio);

#define TCP_PRIO_MIN 1
#define TCP_PRIO_NORMAL 64
#define TCP_PRIO_MAX 127

err_t tcp_output (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);


#define tcp_new_ip6() tcp_new_ip_type(IPADDR_TYPE_V6)
# 57 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/raw.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/raw.h"
#define LWIP_HDR_RAW_H 
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/raw.h"
struct raw_pcb;
# 67 "../../../components/net/lwip-2.0.2/src/include/lwip/raw.h"
typedef u8_t (*raw_recv_fn)(void *arg, struct raw_pcb *pcb, struct pbuf *p,
    const ip_addr_t *addr);







struct raw_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct raw_pcb *next;




  u8_t protocol;



  raw_recv_fn recv;

  void *recv_arg;





};



struct raw_pcb * raw_new (u8_t proto);
struct raw_pcb * raw_new_ip_type(u8_t type, u8_t proto);
void raw_remove (struct raw_pcb *pcb);
err_t raw_bind (struct raw_pcb *pcb, const ip_addr_t *ipaddr);
err_t raw_connect (struct raw_pcb *pcb, const ip_addr_t *ipaddr);

err_t raw_sendto (struct raw_pcb *pcb, struct pbuf *p, const ip_addr_t *ipaddr);
err_t raw_send (struct raw_pcb *pcb, struct pbuf *p);

void raw_recv (struct raw_pcb *pcb, raw_recv_fn recv, void *recv_arg);


u8_t raw_input (struct pbuf *p, struct netif *inp);
#define raw_init() 

void raw_netif_ip_addr_changed(const ip_addr_t* old_addr, const ip_addr_t* new_addr);


#define raw_new_ip6(proto) raw_new_ip_type(IPADDR_TYPE_V6, proto)
# 58 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
#define LWIP_HDR_UDP_H 
# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/udp.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/udp.h"
#define LWIP_HDR_PROT_UDP_H 







#define UDP_HLEN 8






struct udp_hdr {
  u16_t src;
  u16_t dest;
  u16_t len;
  u16_t chksum;
} __attribute__((packed));

# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 2





#define UDP_FLAGS_NOCHKSUM 0x01U
#define UDP_FLAGS_UDPLITE 0x02U
#define UDP_FLAGS_CONNECTED 0x04U
#define UDP_FLAGS_MULTICAST_LOOP 0x08U

struct udp_pcb;
# 77 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    const ip_addr_t *addr, u16_t port);


struct udp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;



  struct udp_pcb *next;

  u8_t flags;

  u16_t local_port, remote_port;



  ip_addr_t multicast_ip;

  u8_t mcast_ttl;
# 106 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
  udp_recv_fn recv;

  void *recv_arg;
};

extern struct udp_pcb *udp_pcbs;



struct udp_pcb * udp_new (void);
struct udp_pcb * udp_new_ip_type(u8_t type);
void udp_remove (struct udp_pcb *pcb);
err_t udp_bind (struct udp_pcb *pcb, const ip_addr_t *ipaddr,
                                 u16_t port);
err_t udp_connect (struct udp_pcb *pcb, const ip_addr_t *ipaddr,
                                 u16_t port);
void udp_disconnect (struct udp_pcb *pcb);
void udp_recv (struct udp_pcb *pcb, udp_recv_fn recv,
                                 void *recv_arg);
err_t udp_sendto_if (struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif);
err_t udp_sendto_if_src(struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif, const ip_addr_t *src_ip);
err_t udp_sendto (struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port);
err_t udp_send (struct udp_pcb *pcb, struct pbuf *p);
# 150 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
#define udp_flags(pcb) ((pcb)->flags)
#define udp_setflags(pcb,f) ((pcb)->flags = (f))


void udp_input (struct pbuf *p, struct netif *inp);

void udp_init (void);


#define udp_new_ip6() udp_new_ip_type(IPADDR_TYPE_V6)


#define udp_set_multicast_netif_addr(pcb,ip4addr) ip_addr_copy_from_ip4((pcb)->multicast_ip, *(ip4addr))
#define udp_get_multicast_netif_addr(pcb) ip_2_ip4(&(pcb)->multicast_ip)
#define udp_set_multicast_ttl(pcb,value) do { (pcb)->mcast_ttl = value; } while(0)
#define udp_get_multicast_ttl(pcb) ((pcb)->mcast_ttl)





#define udp_debug_print(udphdr) 


void udp_netif_ip_addr_changed(const ip_addr_t* old_addr, const ip_addr_t* new_addr);
# 59 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2


# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/tcpip_priv.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/tcpip_priv.h"
#define LWIP_HDR_TCPIP_PRIV_H 





# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/tcpip.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/include/lwip/tcpip.h"
#define LWIP_HDR_TCPIP_H 






# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/timeouts.h" 1
# 39 "../../../components/net/lwip-2.0.2/src/include/lwip/timeouts.h"
#define LWIP_HDR_TIMEOUTS_H 
# 55 "../../../components/net/lwip-2.0.2/src/include/lwip/timeouts.h"
#define LWIP_DEBUG_TIMERNAMES 0





typedef void (* lwip_cyclic_timer_handler)(void);



struct lwip_cyclic_timer {
  u32_t interval_ms;
  lwip_cyclic_timer_handler handler;



};



extern const struct lwip_cyclic_timer lwip_cyclic_timers[];
# 84 "../../../components/net/lwip-2.0.2/src/include/lwip/timeouts.h"
typedef void (* sys_timeout_handler)(void *arg);

struct sys_timeo {
  struct sys_timeo *next;
  u32_t time;
  sys_timeout_handler h;
  void *arg;



};

void sys_timeouts_init(void);





void sys_timeout(u32_t msecs, sys_timeout_handler handler, void *arg);


void sys_untimeout(sys_timeout_handler handler, void *arg);
void sys_restart_timeouts(void);




void sys_timeouts_mbox_fetch(sys_mbox_t *mbox, void **msg);
# 46 "../../../components/net/lwip-2.0.2/src/include/lwip/tcpip.h" 2
# 54 "../../../components/net/lwip-2.0.2/src/include/lwip/tcpip.h"
extern sys_mutex_t lock_tcpip_core;

#define LOCK_TCPIP_CORE() sys_mutex_lock(&lock_tcpip_core)

#define UNLOCK_TCPIP_CORE() sys_mutex_unlock(&lock_tcpip_core)





struct pbuf;
struct netif;


typedef void (*tcpip_init_done_fn)(void *arg);

typedef void (*tcpip_callback_fn)(void *ctx);


struct tcpip_callback_msg;

void tcpip_init(tcpip_init_done_fn tcpip_init_done, void *arg);

err_t tcpip_inpkt(struct pbuf *p, struct netif *inp, netif_input_fn input_fn);
err_t tcpip_input(struct pbuf *p, struct netif *inp);

err_t tcpip_callback_with_block(tcpip_callback_fn function, void *ctx, u8_t block);




#define tcpip_callback(f,ctx) tcpip_callback_with_block(f, ctx, 1)

struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx);
void tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg);
err_t tcpip_trycallback(struct tcpip_callback_msg* msg);


err_t pbuf_free_callback(struct pbuf *p);
err_t mem_free_callback(void *m);
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/tcpip_priv.h" 2







struct pbuf;
struct netif;
# 82 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/tcpip_priv.h"
#define API_VAR_REF(name) name
#define API_VAR_DECLARE(type,name) type name
#define API_VAR_ALLOC(type,pool,name,errorval) 
#define API_VAR_ALLOC_POOL(type,pool,name,errorval) 
#define API_VAR_FREE(pool,name) 
#define API_VAR_FREE_POOL(pool,name) 
#define API_EXPR_REF(expr) expr
#define API_EXPR_REF_SEM(expr) API_EXPR_REF(expr)
#define API_EXPR_DEREF(expr) (*(expr))
#define API_MSG_M_DEF(m) *m
#define API_MSG_M_DEF_C(t,m) const t * m


err_t tcpip_send_msg_wait_sem(tcpip_callback_fn fn, void *apimsg, sys_sem_t* sem);

struct tcpip_api_call_data
{






  u8_t dummy;

};
typedef err_t (*tcpip_api_call_fn)(struct tcpip_api_call_data* call);
err_t tcpip_api_call(tcpip_api_call_fn fn, struct tcpip_api_call_data *call);

enum tcpip_msg_type {
  TCPIP_MSG_API,
  TCPIP_MSG_API_CALL,
  TCPIP_MSG_INPKT,




  TCPIP_MSG_CALLBACK,
  TCPIP_MSG_CALLBACK_STATIC
};

struct tcpip_msg {
  enum tcpip_msg_type type;
  union {
    struct {
      tcpip_callback_fn function;
      void* msg;
    } api_msg;
    struct {
      tcpip_api_call_fn function;
      struct tcpip_api_call_data *arg;
      sys_sem_t *sem;
    } api_call;
    struct {
      struct pbuf *p;
      struct netif *netif;
      netif_input_fn input_fn;
    } inp;
    struct {
      tcpip_callback_fn function;
      void *ctx;
    } cb;







  } msg;
};
# 62 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/netif/ethernetif.h" 1

#define __NETIF_ETHERNETIF_H__ 



# 1 "../libraries/inc/tih/gmac.h" 1





#define __GMAC_H__ 


# 1 "../libraries/inc/tih/phy.h" 1

#define __PHY_H__ 



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
# 10 "../libraries/inc/tih/gmac.h" 2

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
# 7 "../../../components/net/lwip-2.0.2/src/include/netif/ethernetif.h" 2


#define NIOCTL_GADDR 0x01
#define NIOCTL_SADDR 0x02
#define NIOCTL_SWKUP 0x03
#define NIOCTL_SLEEP 0x04
#define NIOCTL_WAKEUP 0x05
#define NIOCTL_SSPED 0x06
#define NIOCTL_SFLOW 0x07
#define NIOCTL_GCUNT 0x08
#define NIOCTL_SHASHTB 0x09
#define NIOCTL_GHASHTB 0x0A
#define NIOCTL_STX 0x0B
#define NIOCTL_SRX 0x0C
#define NIOCTL_SJUMBO 0x0D
#define NIOCTL_SCHKSUM 0x0E
#define NIOCTL_SFILTER 0x0F
#define NIOCTL_GFILTER 0x10




#define ETHERNET_MTU RT_LWIP_ETH_MTU



#define ETHIF_LINK_AUTOUP 0x0000
#define ETHIF_LINK_PHYUP 0x0100

struct eth_device
{

 struct rt_device parent;


 struct netif *netif;
 struct rt_semaphore tx_ack;

 rt_uint16_t flags;
 rt_uint8_t link_changed;
 rt_uint8_t link_status;


 struct pbuf* (*eth_rx)(rt_device_t dev);
 rt_err_t (*eth_tx)(rt_device_t dev, struct pbuf* p);
};
struct ip_addr_storage
{
    ip4_addr_t ipaddr;
    ip4_addr_t netmask;
    ip4_addr_t gw;



} __attribute__((packed));
typedef struct ip_addr_storage* ip_storage_t;

typedef struct
{
    wol_filter_t wakeup_frame_filter;
    unsigned int *wakeup_frame_mask;
    unsigned char *wakeup_frame;
    unsigned int frame_len;
}wake_up_control;

typedef struct
{
    speed_t speed;
    duplex_t duplex;
}speed_duplex;

rt_err_t eth_device_ready(struct eth_device* dev);
rt_err_t eth_device_init(struct eth_device * dev, char *name);
rt_err_t eth_device_init_with_flag(struct eth_device *dev, char *name, rt_uint16_t flag);
rt_err_t eth_device_linkchange(struct eth_device* dev, rt_bool_t up);

int eth_system_device_init(void);
# 63 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/net/if.h" 1

#define _UAPI_LINUX_IF_H 



#define ENXIO 6
#define IF_NAMESIZE 2





unsigned int if_nametoindex(const char *ifname);







char *if_indextoname(unsigned int ifindex, char *ifname);


#define _LINUX_IF_H 



#define IFNAMSIZ 16
#define IFALIASZ 256
# 103 "../../../components/net/lwip-2.0.2/src/include/net/if.h"
#define IFF_UP IFF_UP
#define IFF_BROADCAST IFF_BROADCAST
#define IFF_DEBUG IFF_DEBUG
#define IFF_LOOPBACK IFF_LOOPBACK
#define IFF_POINTOPOINT IFF_POINTOPOINT
#define IFF_NOTRAILERS IFF_NOTRAILERS
#define IFF_RUNNING IFF_RUNNING
#define IFF_NOARP IFF_NOARP
#define IFF_PROMISC IFF_PROMISC
#define IFF_ALLMULTI IFF_ALLMULTI
#define IFF_MASTER IFF_MASTER
#define IFF_SLAVE IFF_SLAVE
#define IFF_MULTICAST IFF_MULTICAST
#define IFF_PORTSEL IFF_PORTSEL
#define IFF_AUTOMEDIA IFF_AUTOMEDIA
#define IFF_DYNAMIC IFF_DYNAMIC







#define IFF_VOLATILE (IFF_LOOPBACK|IFF_POINTOPOINT|IFF_BROADCAST|IFF_ECHO| IFF_MASTER|IFF_SLAVE|IFF_RUNNING|IFF_LOWER_UP|IFF_DORMANT)


#define IF_GET_IFACE 0x0001
#define IF_GET_PROTO 0x0002


#define IF_IFACE_V35 0x1000
#define IF_IFACE_V24 0x1001
#define IF_IFACE_X21 0x1002
#define IF_IFACE_T1 0x1003
#define IF_IFACE_E1 0x1004
#define IF_IFACE_SYNC_SERIAL 0x1005
#define IF_IFACE_X21D 0x1006


#define IF_PROTO_HDLC 0x2000
#define IF_PROTO_PPP 0x2001
#define IF_PROTO_CISCO 0x2002
#define IF_PROTO_FR 0x2003
#define IF_PROTO_FR_ADD_PVC 0x2004
#define IF_PROTO_FR_DEL_PVC 0x2005
#define IF_PROTO_X25 0x2006
#define IF_PROTO_HDLC_ETH 0x2007
#define IF_PROTO_FR_ADD_ETH_PVC 0x2008
#define IF_PROTO_FR_DEL_ETH_PVC 0x2009
#define IF_PROTO_FR_PVC 0x200A
#define IF_PROTO_FR_ETH_PVC 0x200B
#define IF_PROTO_RAW 0x200C


enum {
 IF_OPER_UNKNOWN,
 IF_OPER_NOTPRESENT,
 IF_OPER_DOWN,
 IF_OPER_LOWERLAYERDOWN,
 IF_OPER_TESTING,
 IF_OPER_DORMANT,
 IF_OPER_UP,
};


enum {
 IF_LINK_MODE_DEFAULT,
 IF_LINK_MODE_DORMANT,
};
# 184 "../../../components/net/lwip-2.0.2/src/include/net/if.h"
struct ifmap {
 unsigned long mem_start;
 unsigned long mem_end;
 unsigned short base_addr;
 unsigned char irq;
 unsigned char dma;
 unsigned char port;

};

struct if_settings {
 unsigned int type;
 unsigned int size;
};
# 207 "../../../components/net/lwip-2.0.2/src/include/net/if.h"
struct ifreq {
#define IFHWADDRLEN 6
 union
 {
  char ifrn_name[16];
 } ifr_ifrn;

 union {
  struct sockaddr ifru_addr;
  struct sockaddr ifru_dstaddr;
  struct sockaddr ifru_broadaddr;
  struct sockaddr ifru_netmask;
  struct sockaddr ifru_hwaddr;
  short ifru_flags;
  int ifru_ivalue;
  int ifru_mtu;
  struct ifmap ifru_map;
  char ifru_slave[16];
  char ifru_newname[16];
  struct if_settings ifru_settings;
 } ifr_ifru;
};

#define ifr_name ifr_ifrn.ifrn_name
#define ifr_hwaddr ifr_ifru.ifru_hwaddr
#define ifr_addr ifr_ifru.ifru_addr
#define ifr_dstaddr ifr_ifru.ifru_dstaddr
#define ifr_broadaddr ifr_ifru.ifru_broadaddr
#define ifr_netmask ifr_ifru.ifru_netmask
#define ifr_flags ifr_ifru.ifru_flags
#define ifr_metric ifr_ifru.ifru_ivalue
#define ifr_mtu ifr_ifru.ifru_mtu
#define ifr_map ifr_ifru.ifru_map
#define ifr_slave ifr_ifru.ifru_slave
#define ifr_data ifr_ifru.ifru_data
#define ifr_ifindex ifr_ifru.ifru_ivalue
#define ifr_bandwidth ifr_ifru.ifru_ivalue
#define ifr_qlen ifr_ifru.ifru_ivalue
#define ifr_newname ifr_ifru.ifru_newname
#define ifr_settings ifr_ifru.ifru_settings
# 65 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2
# 84 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
#define IP4ADDR_PORT_TO_SOCKADDR(sin,ipaddr,port) do { (sin)->sin_len = sizeof(struct sockaddr_in); (sin)->sin_family = AF_INET; (sin)->sin_port = lwip_htons((port)); inet_addr_from_ip4addr(&(sin)->sin_addr, ipaddr); memset((sin)->sin_zero, 0, SIN_ZERO_LEN); }while(0)





#define SOCKADDR4_TO_IP4ADDR_PORT(sin,ipaddr,port) do { inet_addr_to_ip4addr(ip_2_ip4(ipaddr), &((sin)->sin_addr)); (port) = lwip_ntohs((sin)->sin_port); }while(0)
# 137 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
#define IS_SOCK_ADDR_LEN_VALID(namelen) ((namelen) == sizeof(struct sockaddr_in))
#define IS_SOCK_ADDR_TYPE_VALID(name) ((name)->sa_family == AF_INET)
#define SOCK_ADDR_TYPE_MATCH(name,sock) 1
#define IPADDR_PORT_TO_SOCKADDR(sockaddr,ipaddr,port) IP4ADDR_PORT_TO_SOCKADDR((struct sockaddr_in*)(void*)(sockaddr), ip_2_ip4(ipaddr), port)

#define SOCKADDR_TO_IPADDR_PORT(sockaddr,ipaddr,port) SOCKADDR4_TO_IP4ADDR_PORT((const struct sockaddr_in*)(const void*)(sockaddr), ipaddr, port)

#define DOMAIN_TO_NETCONN_TYPE(domain,netconn_type) (netconn_type)


#define IS_SOCK_ADDR_TYPE_VALID_OR_UNSPEC(name) (((name)->sa_family == AF_UNSPEC) || IS_SOCK_ADDR_TYPE_VALID(name))

#define SOCK_ADDR_TYPE_MATCH_OR_UNSPEC(name,sock) (((name)->sa_family == AF_UNSPEC) || SOCK_ADDR_TYPE_MATCH(name, sock))

#define IS_SOCK_ADDR_ALIGNED(name) ((((mem_ptr_t)(name)) % 4) == 0)


#define LWIP_SOCKOPT_CHECK_OPTLEN(optlen,opttype) do { if ((optlen) < sizeof(opttype)) { return EINVAL; }}while(0)
#define LWIP_SOCKOPT_CHECK_OPTLEN_CONN(sock,optlen,opttype) do { LWIP_SOCKOPT_CHECK_OPTLEN(optlen, opttype); if ((sock)->conn == NULL) { return EINVAL; } }while(0)


#define LWIP_SOCKOPT_CHECK_OPTLEN_CONN_PCB(sock,optlen,opttype) do { LWIP_SOCKOPT_CHECK_OPTLEN(optlen, opttype); if (((sock)->conn == NULL) || ((sock)->conn->pcb.tcp == NULL)) { return EINVAL; } }while(0)


#define LWIP_SOCKOPT_CHECK_OPTLEN_CONN_PCB_TYPE(sock,optlen,opttype,netconntype) do { LWIP_SOCKOPT_CHECK_OPTLEN_CONN_PCB(sock, optlen, opttype); if (NETCONNTYPE_GROUP(netconn_type((sock)->conn)) != netconntype) { return ENOPROTOOPT; } }while(0)




#define LWIP_SETGETSOCKOPT_DATA_VAR_REF(name) API_VAR_REF(name)
#define LWIP_SETGETSOCKOPT_DATA_VAR_DECLARE(name) API_VAR_DECLARE(struct lwip_setgetsockopt_data, name)
#define LWIP_SETGETSOCKOPT_DATA_VAR_FREE(name) API_VAR_FREE(MEMP_SOCKET_SETGETSOCKOPT_DATA, name)
# 177 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
#define LWIP_SETGETSOCKOPT_DATA_VAR_ALLOC(name,sock) 







#define LWIP_SO_SNDRCVTIMEO_OPTTYPE struct timeval
#define LWIP_SO_SNDRCVTIMEO_SET(optval,val) do { s32_t loc = (val); ((struct timeval *)(optval))->tv_sec = (loc) / 1000U; ((struct timeval *)(optval))->tv_usec = ((loc) % 1000U) * 1000U; }while(0)



#define LWIP_SO_SNDRCVTIMEO_GET_MS(optval) ((((const struct timeval *)(optval))->tv_sec * 1000U) + (((const struct timeval *)(optval))->tv_usec / 1000U))


#define NUM_SOCKETS MEMP_NUM_NETCONN





#define SELWAIT_T u8_t




# 1 "../../../components/drivers/include/ipc/waitqueue.h" 1
# 27 "../../../components/drivers/include/ipc/waitqueue.h"
#define WAITQUEUE_H__ 



#define RT_WQ_FLAG_CLEAN 0x00
#define RT_WQ_FLAG_WAKEUP 0x01

struct rt_wqueue_node;
typedef int (*rt_wqueue_func_t)(struct rt_wqueue_node *wait, void *key);

struct rt_wqueue_node
{
    rt_thread_t polling_thread;
    rt_list_t list;

    rt_wqueue_func_t wakeup;
    rt_uint32_t key;
};
typedef struct rt_wqueue_node rt_wqueue_node_t;

int __wqueue_default_wake(struct rt_wqueue_node *wait, void *key);

static __inline void rt_wqueue_init(rt_wqueue_t *queue)
{
    if (!(queue != (0))) { rt_assert_handler("queue != RT_NULL", __FUNCTION__, 51); };

    queue->flag = 0x00;
    rt_list_init(&(queue->waiting_list));
}

void rt_wqueue_add(rt_wqueue_t *queue, struct rt_wqueue_node *node);
void rt_wqueue_remove(struct rt_wqueue_node *node);
int rt_wqueue_wait(rt_wqueue_t *queue, int condition, int timeout);
void rt_wqueue_wakeup(rt_wqueue_t *queue, void *key);

#define DEFINE_WAIT_FUNC(name,function) struct rt_wqueue_node name = { rt_current_thread, RT_LIST_OBJECT_INIT(((name).list)), function, 0 }
# 71 "../../../components/drivers/include/ipc/waitqueue.h"
#define DEFINE_WAIT(name) DEFINE_WAIT_FUNC(name, __wqueue_default_wake)
# 205 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 2



struct lwip_sock {

  struct netconn *conn;

  void *lastdata;

  u16_t lastoffset;


  s16_t rcvevent;


  u16_t sendevent;

  u16_t errevent;

  u8_t err;

  u8_t select_waiting;


  rt_wqueue_t wait_head;

};





#define SELECT_SEM_T sys_sem_t
#define SELECT_SEM_PTR(sem) (&(sem))



struct lwip_select_cb {

  struct lwip_select_cb *next;

  struct lwip_select_cb *prev;

  _types_fd_set *readset;

  _types_fd_set *writeset;

  _types_fd_set *exceptset;

  int sem_signalled;

  sys_sem_t sem;
};




union sockaddr_aligned {
   struct sockaddr sa;




   struct sockaddr_in sin;

};




#define LWIP_SOCKET_MAX_MEMBERSHIPS NUM_SOCKETS




struct lwip_socket_multicast_pair {

  struct lwip_sock* sock;

  ip4_addr_t if_addr;

  ip4_addr_t multi_addr;
};

struct lwip_socket_multicast_pair socket_ipv4_multicast_memberships[8];

static int lwip_socket_register_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr);
static void lwip_socket_unregister_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr);
static void lwip_socket_drop_registered_memberships(int s);
# 321 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static struct lwip_sock sockets[8];

static struct lwip_select_cb *select_cb_list;


static volatile int select_cb_ctr;



#define set_errno(err) do { if (err) { errno = (err); } } while(0)





#define sock_set_errno(sk,e) do { const int sockerr = (e); sk->err = (u8_t)sockerr; set_errno(sockerr); } while (0)






static void event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len);




static u8_t lwip_getsockopt_impl(int s, int level, int optname, void *optval, socklen_t *optlen);
static u8_t lwip_setsockopt_impl(int s, int level, int optname, const void *optval, socklen_t optlen);
# 366 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
void
lwip_socket_thread_init(void)
{
   ;
}


void
lwip_socket_thread_cleanup(void)
{
   ;
}







static struct lwip_sock *
__attribute__((section(".fast"))) get_socket(int s)
{
  struct lwip_sock *sock;

  s -= 0;

  if ((s < 0) || (s >= 8)) {
    ;
    do { if (9) { *_rt_errno() = (9); } } while(0);
    return 
# 395 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
          0
# 395 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
              ;
  }

  sock = &sockets[s];

  if (!sock->conn) {
    ;
    do { if (9) { *_rt_errno() = (9); } } while(0);
    return 
# 403 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
          0
# 403 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
              ;
  }

  return sock;
}







static struct lwip_sock *
tryget_socket(int s)
{
  s -= 0;
  if ((s < 0) || (s >= 8)) {
    return 
# 420 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
          0
# 420 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
              ;
  }
  if (!sockets[s].conn) {
    return 
# 423 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
          0
# 423 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
              ;
  }
  return &sockets[s];
}







struct lwip_sock *
lwip_tryget_socket(int s)
{
 return tryget_socket(s);
}
# 450 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static int
alloc_socket(struct netconn *newconn, int accepted)
{
  int i;
  sys_prot_t lev;


  for (i = 0; i < 8; ++i) {

    lev = sys_arch_protect();
    if (!sockets[i].conn && (sockets[i].select_waiting == 0)) {
      sockets[i].conn = newconn;


      sys_arch_unprotect(lev);
      sockets[i].lastdata = 
# 465 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                             0
# 465 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                 ;
      sockets[i].lastoffset = 0;
      sockets[i].rcvevent = 0;


      sockets[i].sendevent = (((newconn->type)&0xF0) == NETCONN_TCP ? (accepted != 0) : 1);
      sockets[i].errevent = 0;
      sockets[i].err = 0;
      return i + 0;
    }
    sys_arch_unprotect(lev);
  }
  return -1;
}







static void
free_socket(struct lwip_sock *sock, int is_tcp)
{
  void *lastdata;

  lastdata = sock->lastdata;
  sock->lastdata = 
# 492 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                    0
# 492 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                        ;
  sock->lastoffset = 0;
  sock->err = 0;


  do { sys_prot_t old_level; old_level = sys_arch_protect(); sock->conn = 
# 497 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
 0
# 497 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
 ; sys_arch_unprotect(old_level); } while(0);


  if (lastdata != 
# 500 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                 0
# 500 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                     ) {
    if (is_tcp) {
      pbuf_free((struct pbuf *)lastdata);
    } else {
      netbuf_delete((struct netbuf *)lastdata);
    }
  }
}







int
lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
  struct lwip_sock *sock, *nsock;
  struct netconn *newconn;
  ip_addr_t naddr;
  u16_t port = 0;
  int newsock;
  err_t err;
  sys_prot_t lev;

  ;
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn)->flags & 0x02) != 0) && (sock->rcvevent <= 0)) {
    ;
    do { if (11) { *_rt_errno() = (11); } } while(0);
    return -1;
  }


  err = netconn_accept(sock->conn, &newconn);
  if (err != ERR_OK) {
    ;
    if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
      do { const int sockerr = (95); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    } else if (err == ERR_CLSD) {
      do { const int sockerr = (22); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    } else {
      do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    }
    return -1;
  }
  do { if (!(newconn != 
# 551 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
 0
# 551 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
 )) { do {rt_kprintf("newconn != NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 551);}while(0); }} while(0);

  newsock = alloc_socket(newconn, 1);
  if (newsock == -1) {
    netconn_delete(newconn);
    do { const int sockerr = (23); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }
  do { if (!((newsock >= 0) && (newsock < 8 + 0))) { do {rt_kprintf("invalid socket index"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 559);}while(0); }} while(0);

  nsock = &sockets[newsock - 0];






  lev = sys_arch_protect();
  nsock->rcvevent += (s16_t)(-1 - newconn->socket);
  newconn->socket = newsock;
  sys_arch_unprotect(lev);




  if (addr != 
# 576 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
             0
# 576 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                 ) {
    union sockaddr_aligned tempaddr;

    err = netconn_getaddr(newconn,&naddr,&port,0);
    if (err != ERR_OK) {
      ;
      netconn_delete(newconn);
      free_socket(nsock, 1);
      do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      return -1;
    }
    do { if (!(addrlen != 
# 587 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 587 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   )) { do {rt_kprintf("addr valid but addrlen NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 587);}while(0); }} while(0);

    ip_addr_t *naddr_tmp = &naddr;
    do { ((struct sockaddr_in*)(void*)(&tempaddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&tempaddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&tempaddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&tempaddr))->sin_addr)->s_addr = (((naddr_tmp))->addr)); memset(((struct sockaddr_in*)(void*)(&tempaddr))->sin_zero, 0, 8); }while(0);
    if (*addrlen > tempaddr.sa.sa_len) {
      *addrlen = tempaddr.sa.sa_len;
    }
    memcpy(addr,&tempaddr,*addrlen);

    ;
    ;
    ;
  } else {
    ;
  }

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return newsock;
}

int
lwip_bind(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  ip_addr_t local_addr;
  u16_t local_port;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }
# 630 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  {
  if (!1) {

    do { const int sockerr = (err_to_errno(ERR_VAL)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }


  do { if (!((((namelen) == sizeof(struct sockaddr_in)) && ((name)->sa_family == 2) && ((((mem_ptr_t)(name)) % 4) == 0)))) { do {rt_kprintf("lwip_bind: invalid address"); sys_arch_assert(

                                                                    "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 638 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  ,

                                                                    640
# 638 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                     ;
  (void)namelen;

  do { ((((&local_addr))->addr = ((&(((const struct sockaddr_in*)(const void*)(name))->sin_addr))->s_addr))); (local_port) = lwip_htons(((const struct sockaddr_in*)(const void*)(name))->sin_port); }while(0);
  ;
  ;
  ;
# 655 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  }
  err = netconn_bind(sock->conn, &local_addr, local_port);

  if (err != ERR_OK) {
    ;
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  ;
  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return 0;
}

int
lwip_close(int s)
{
  struct lwip_sock *sock;
  int is_tcp = 0;
  err_t err;

  ;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (sock->conn != 
# 683 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 683 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ) {
    is_tcp = (((sock->conn->type))&0xF0) == NETCONN_TCP;
  } else {
    do { if (!(sock->lastdata == 
# 686 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 686 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   )) { do {rt_kprintf("sock->lastdata == NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 686);}while(0); }} while(0);
  }



  lwip_socket_drop_registered_memberships(s);







  err = netconn_delete(sock->conn);
  if (err != ERR_OK) {
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  free_socket(sock, is_tcp);
  do { if (0) { *_rt_errno() = (0); } } while(0);
  return 0;
}

int
lwip_connect(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (!(((name)->sa_family == 0) || 1)) {

    do { const int sockerr = (err_to_errno(ERR_VAL)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  (void)namelen;
  if (name->sa_family == 0) {
    ;
    err = netconn_disconnect(sock->conn);
  } else {
    ip_addr_t remote_addr;
    u16_t remote_port;


    do { if (!(((namelen) == sizeof(struct sockaddr_in)) && (((name)->sa_family == 0) || ((name)->sa_family == 2)) && ((((mem_ptr_t)(name)) % 4) == 0))) { do {rt_kprintf("lwip_connect: invalid address"); sys_arch_assert(

                                                                      "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 736 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    ,

                                                                      738
# 736 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                       ;

    do { ((((&remote_addr))->addr = ((&(((const struct sockaddr_in*)(const void*)(name))->sin_addr))->s_addr))); (remote_port) = lwip_htons(((const struct sockaddr_in*)(const void*)(name))->sin_port); }while(0);
    ;
    ;
    ;
# 753 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    err = netconn_connect(sock->conn, &remote_addr, remote_port);
  }

  if (err != ERR_OK) {
    ;
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  ;
  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return 0;
}
# 775 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
int
lwip_listen(int s, int backlog)
{
  struct lwip_sock *sock;
  err_t err;

  ;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }


  backlog = ((((((backlog) > (0)) ? (backlog) : (0))) < (0xff)) ? ((((backlog) > (0)) ? (backlog) : (0))) : (0xff));

  err = netconn_listen_with_backlog(sock->conn, (u8_t)backlog);

  if (err != ERR_OK) {
    ;
    if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
      do { const int sockerr = (95); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      return -1;
    }
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return 0;
}

int
__attribute__((section(".fast"))) lwip_recvfrom(int s, void *mem, size_t len, int flags,
              struct sockaddr *from, socklen_t *fromlen)
{
  struct lwip_sock *sock;
  void *buf = 
# 812 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                         0
# 812 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                             ;
  struct pbuf *p;
  u16_t buflen, copylen;
  int off = 0;
  u8_t done = 0;
  err_t err;





  ;
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  do {
    ;

    if (sock->lastdata) {
      buf = sock->lastdata;
    } else {

      if (((flags & 0x08) || (((sock->conn)->flags & 0x02) != 0)) &&
          (sock->rcvevent <= 0)) {
        if (off > 0) {

          do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
          return off;
        }
        ;
        do { if (11) { *_rt_errno() = (11); } } while(0);
        return -1;
      }



      if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
        err = netconn_recv_tcp_pbuf(sock->conn, (struct pbuf **)&buf);
      } else {
        err = netconn_recv(sock->conn, (struct netbuf **)&buf);
# 869 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
      }
     
                  ;

      if (err != ERR_OK) {
        if (off > 0) {
          if (err == ERR_CLSD) {

            event_callback(sock->conn, NETCONN_EVT_RCVPLUS, 0);
          }

          do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
          return off;
        }

       
                               ;
        do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
        if (err == ERR_CLSD) {
          return 0;
        } else {
          return -1;
        }
      }
      do { if (!(buf != 
# 893 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 893 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { do {rt_kprintf("buf != NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 893);}while(0); }} while(0);
      sock->lastdata = buf;
    }

    if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
      p = (struct pbuf *)buf;
    } else {
      p = ((struct netbuf *)buf)->p;
    }
    buflen = p->tot_len;
   
                                          ;

    buflen -= sock->lastoffset;

    if (len > buflen) {
      copylen = buflen;
    } else {
      copylen = (u16_t)len;
    }



    pbuf_copy_partial(p, (u8_t*)mem + off, copylen, sock->lastoffset);

    off += copylen;

    if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
      do { if (!(len >= copylen)) { do {rt_kprintf("invalid copylen, len would underflow"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 921);}while(0); }} while(0);
      len -= copylen;
      if ((len <= 0) ||
          (p->flags & 0x01U) ||
          (sock->rcvevent <= 0) ||
          ((flags & 0x01) != 0)) {
        done = 1;
      }
    } else {
      done = 1;
    }


    if (done) {

      if (from && fromlen)

      {
        u16_t port;
        ip_addr_t tmpaddr;
        ip_addr_t *fromaddr;
        union sockaddr_aligned saddr;
        ;
        if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
          fromaddr = &tmpaddr;
          netconn_getaddr(sock->conn, fromaddr, &port, 0);
        } else {
          port = (((struct netbuf *)buf)->port);
          fromaddr = (&(((struct netbuf *)buf)->addr));
        }
# 960 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
        do { ((struct sockaddr_in*)(void*)(&saddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&saddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&saddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&saddr))->sin_addr)->s_addr = (((fromaddr))->addr)); memset(((struct sockaddr_in*)(void*)(&saddr))->sin_zero, 0, 8); }while(0);
        ;
        ;



        {
# 982 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
          {
          if (*fromlen > saddr.sa.sa_len) {
            *fromlen = saddr.sa.sa_len;
          }
          memcpy(from,&saddr,*fromlen);
          }
        }
      }
    }


    if ((flags & 0x01) == 0) {



      if (((((sock->conn->type))&0xF0) == NETCONN_TCP) && (buflen - copylen > 0)) {
        sock->lastdata = buf;
        sock->lastoffset += copylen;
        ;
      } else {
        sock->lastdata = 
# 1002 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                        0
# 1002 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                            ;
        sock->lastoffset = 0;
        ;
        if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {
          pbuf_free((struct pbuf *)buf);
        } else {
          netbuf_delete((struct netbuf *)buf);
        }
        buf = 
# 1010 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
             0
# 1010 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                 ;
      }
    }
  } while (!done);

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return off;
}

int
__attribute__((section(".fast"))) lwip_read(int s, void *mem, size_t len)
{
  return lwip_recvfrom(s, mem, len, 0, 
# 1022 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                      0
# 1022 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                          , 
# 1022 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                            0
# 1022 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                );
}

int
__attribute__((section(".fast"))) lwip_recv(int s, void *mem, size_t len, int flags)
{
  return lwip_recvfrom(s, mem, len, flags, 
# 1028 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                          0
# 1028 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                              , 
# 1028 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                0
# 1028 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                    );
}

int
__attribute__((section(".fast"))) lwip_send(int s, const void *data, size_t size, int flags)
{
  struct lwip_sock *sock;
  err_t err;
  u8_t write_flags;
  size_t written;

 
                                                    ;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {

    return lwip_sendto(s, data, size, flags, 
# 1049 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                            0
# 1049 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                , 0);




  }

  write_flags = 0x01 |
    ((flags & 0x10) ? 0x02 : 0) |
    ((flags & 0x08) ? 0x04 : 0);
  written = 0;
  err = netconn_write_partly(sock->conn, data, size, write_flags, &written);

  ;
  do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return (err == ERR_OK ? (int)written : -1);
}

int
__attribute__((section(".fast"))) lwip_sendmsg(int s, const struct msghdr *msg, int flags)
{
  struct lwip_sock *sock;
  int i;

  u8_t write_flags;
  size_t written;

  int size = 0;
  err_t err = ERR_OK;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  do { if (!(msg != 
# 1084 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
 0
# 1084 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
 )) { do {rt_kprintf("lwip_sendmsg: invalid msghdr"); sys_arch_assert(
                                                                    "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 1084 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  ,
                                                                    1085
# 1084 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)
                                                                     ;

  (void)msg->msg_control;
  (void)msg->msg_controllen;
  (void)msg->msg_flags;
  do { if (!((msg->msg_iov != 
# 1090 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
 0 
# 1090 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
 && msg->msg_iovlen != 0))) { do {rt_kprintf("lwip_sendmsg: invalid msghdr iov"); sys_arch_assert(
                                                                    "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 1090 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  ,
                                                                    1091
# 1090 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)
                                                                     ;

  if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {

    write_flags = 0x01 |
    ((flags & 0x10) ? 0x02 : 0) |
    ((flags & 0x08) ? 0x04 : 0);

    for (i = 0; i < msg->msg_iovlen; i++) {
      u8_t apiflags = write_flags;
      if (i + 1 < msg->msg_iovlen) {
        apiflags |= 0x02;
      }
      written = 0;
      err = netconn_write_partly(sock->conn, msg->msg_iov[i].iov_base, msg->msg_iov[i].iov_len, write_flags, &written);
      if (err == ERR_OK) {
        size += written;

        if (written != msg->msg_iov[i].iov_len)
          break;
      }

      else if (err == ERR_WOULDBLOCK && size > 0) {
        err = ERR_OK;

        break;
      } else {
        size = -1;
        break;
      }
    }
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return size;




  }


  {
    struct netbuf *chain_buf;

    (void)flags;
    do { if (!((((msg->msg_name == 
# 1135 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 1135 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   ) && (msg->msg_namelen == 0)) || ((msg->msg_namelen) == sizeof(struct sockaddr_in))))) { do {rt_kprintf("lwip_sendmsg: invalid msghdr name"); sys_arch_assert(

                                                                      "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 1135 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    ,

                                                                      1137
# 1135 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)

                                                                       ;


    chain_buf = netbuf_new();
    if (!chain_buf) {
      do { const int sockerr = (err_to_errno(ERR_MEM)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      return -1;
    }
    if (msg->msg_name) {
      u16_t remote_port;
      do { ((((&chain_buf->addr))->addr = ((&(((const struct sockaddr_in*)(const void*)((const struct sockaddr *)msg->msg_name))->sin_addr))->s_addr))); (remote_port) = lwip_htons(((const struct sockaddr_in*)(const void*)((const struct sockaddr *)msg->msg_name))->sin_port); }while(0);
      ((chain_buf)->port) = remote_port;
    }

    for (i = 0; i < msg->msg_iovlen; i++) {
      size += msg->msg_iov[i].iov_len;
    }

    if (netbuf_alloc(chain_buf, (u16_t)size) == 
# 1155 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                               0
# 1155 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                   ) {
       err = ERR_MEM;
    } else {

      size_t offset = 0;
      for (i = 0; i < msg->msg_iovlen; i++) {
        memcpy(&((u8_t*)chain_buf->p->payload)[offset],msg->msg_iov[i].iov_base,msg->msg_iov[i].iov_len);
        offset += msg->msg_iov[i].iov_len;
      }







      err = ERR_OK;
    }
# 1199 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    if (err == ERR_OK) {
# 1209 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
      err = netconn_send(sock->conn, chain_buf);
    }


    netbuf_delete(chain_buf);

    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return (err == ERR_OK ? size : -1);
  }




}

int
__attribute__((section(".fast"))) lwip_sendto(int s, const void *data, size_t size, int flags,
       const struct sockaddr *to, socklen_t tolen)
{
  struct lwip_sock *sock;
  err_t err;
  u16_t short_size;
  u16_t remote_port;
  struct netbuf buf;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn->type))&0xF0) == NETCONN_TCP) {

    return lwip_send(s, data, size, flags);





  }


  do { if (!(size <= 0xffff)) { do {rt_kprintf("lwip_sendto: size must fit in u16_t"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1250);}while(0); }} while(0);
  short_size = (u16_t)size;
# 1296 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  do { if (!((((to == 
# 1296 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
 0
# 1296 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
 ) && (tolen == 0)) || (((tolen) == sizeof(struct sockaddr_in)) && ((to)->sa_family == 2) && ((((mem_ptr_t)(to)) % 4) == 0))))) { do {rt_kprintf("lwip_sendto: invalid address"); sys_arch_assert(


                                                                    "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
# 1296 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  ,


                                                                    1299
# 1296 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  );}while(0); do { const int sockerr = (err_to_errno(ERR_ARG)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0); return -1;;}} while(0)


                                                                     ;
  (void)tolen;


  buf.p = buf.ptr = 
# 1303 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 1303 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ;



  if (to) {
    do { ((((&buf.addr))->addr = ((&(((const struct sockaddr_in*)(const void*)(to))->sin_addr))->s_addr))); (remote_port) = lwip_htons(((const struct sockaddr_in*)(const void*)(to))->sin_port); }while(0);
  } else {
    remote_port = 0;
    ((&buf.addr)->addr = ((u32_t)0x00000000UL));
  }
  ((&buf)->port) = remote_port;


 
                                          ;
  ;
  ;




  if (netbuf_alloc(&buf, short_size) == 
# 1324 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                       0
# 1324 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                           ) {
    err = ERR_MEM;
  } else {






    {
      memcpy(buf.p->payload,data,short_size);
    }
    err = ERR_OK;
  }



  if (err == ERR_OK) {
# 1351 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    err = netconn_send(sock->conn, &buf);
  }


  netbuf_free(&buf);

  do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return (err == ERR_OK ? short_size : -1);
}

int
lwip_socket(int domain, int type, int protocol)
{
  struct netconn *conn;
  int i;

  (void)domain;


  switch (type) {
  case 3:
# 1382 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    {
    conn = netconn_new_with_proto_and_callback((NETCONN_RAW),
                                               (u8_t)protocol, event_callback);
   
                                                                                      ;
    }
    break;
  case 2:
    conn = netconn_new_with_proto_and_callback((((protocol == 136) ? NETCONN_UDPLITE : NETCONN_UDP)), 0, event_callback)

                                ;
   
                                                                                      ;
    break;
  case 1:
    conn = netconn_new_with_proto_and_callback((NETCONN_TCP), 0, event_callback);
   
                                                                                      ;
    break;
  default:
   
                                                         ;
    do { if (22) { *_rt_errno() = (22); } } while(0);
    return -1;
  }

  if (!conn) {
    ;
    do { if (105) { *_rt_errno() = (105); } } while(0);
    return -1;
  }

  i = alloc_socket(conn, 0);

  if (i == -1) {
    netconn_delete(conn);
    do { if (23) { *_rt_errno() = (23); } } while(0);
    return -1;
  }
  conn->socket = i;
  ;
  do { if (0) { *_rt_errno() = (0); } } while(0);
  return i;
}

int
__attribute__((section(".fast"))) lwip_write(int s, const void *data, size_t size)
{
  return lwip_send(s, data, size, 0);
}

int
__attribute__((section(".fast"))) lwip_writev(int s, const struct iovec *iov, int iovcnt)
{
  struct msghdr msg;

  msg.msg_name = 
# 1438 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                0
# 1438 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                    ;
  msg.msg_namelen = 0;


  msg.msg_iov = ((struct iovec *)((ptrdiff_t)iov));
  msg.msg_iovlen = iovcnt;
  msg.msg_control = 
# 1444 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 1444 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ;
  msg.msg_controllen = 0;
  msg.msg_flags = 0;
  return lwip_sendmsg(s, &msg, 0);
}
# 1464 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static int
__attribute__((section(".fast"))) lwip_selscan(int maxfdp1, _types_fd_set *readset_in, _types_fd_set *writeset_in, _types_fd_set *exceptset_in,
             _types_fd_set *readset_out, _types_fd_set *writeset_out, _types_fd_set *exceptset_out)
{
  int i, nready = 0;
  _types_fd_set lreadset, lwriteset, lexceptset;
  struct lwip_sock *sock;
  sys_prot_t lev;

  memset((void*)(&lreadset), 0, sizeof(*(&lreadset)));
  memset((void*)(&lwriteset), 0, sizeof(*(&lwriteset)));
  memset((void*)(&lexceptset), 0, sizeof(*(&lexceptset)));



  for (i = 0; i < maxfdp1; i++) {

    if (!(readset_in && ((readset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) &&
        !(writeset_in && ((writeset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) &&
        !(exceptset_in && ((exceptset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
      continue;
    }

    lev = sys_arch_protect();
    sock = tryget_socket(i);
    if (sock != 
# 1489 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
               0
# 1489 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                   ) {
      void* lastdata = sock->lastdata;
      s16_t rcvevent = sock->rcvevent;
      u16_t sendevent = sock->sendevent;
      u16_t errevent = sock->errevent;
      sys_arch_unprotect(lev);



      if (readset_in && ((readset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && ((lastdata != 
# 1498 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                                0
# 1498 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                                    ) || (rcvevent > 0))) {
        ((&lreadset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        ;
        nready++;
      }

      if (writeset_in && ((writeset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && (sendevent != 0)) {
        ((&lwriteset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        ;
        nready++;
      }

      if (exceptset_in && ((exceptset_in)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))) && (errevent != 0)) {
        ((&lexceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] |= (1L << ((i) % (sizeof (fd_mask) * 8))));
        ;
        nready++;
      }
    } else {
      sys_arch_unprotect(lev);

    }
  }

  *readset_out = lreadset;
  *writeset_out = lwriteset;
  *exceptset_out = lexceptset;

  do { if (!(nready >= 0)) { do {rt_kprintf("nready >= 0"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1525);}while(0); }} while(0);
  return nready;
}

int
lwip_select(int maxfdp1, _types_fd_set *readset, _types_fd_set *writeset, _types_fd_set *exceptset,
            struct timeval *timeout)
{
  u32_t waitres = 0;
  int nready;
  _types_fd_set lreadset, lwriteset, lexceptset;
  u32_t msectimeout;
  struct lwip_select_cb select_cb;
  int i;
  int maxfdp2;



  sys_prot_t lev;

 


                                                                 ;



  nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);


  if (!nready) {
    if (timeout && timeout->tv_sec == 0 && timeout->tv_usec == 0) {
      ;


      goto return_copy_fdsets;
    }






    select_cb.next = 
# 1568 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                    0
# 1568 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                        ;
    select_cb.prev = 
# 1569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                    0
# 1569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                        ;
    select_cb.readset = readset;
    select_cb.writeset = writeset;
    select_cb.exceptset = exceptset;
    select_cb.sem_signalled = 0;



    if (sys_sem_new(&select_cb.sem, 0) != ERR_OK) {

      do { if (12) { *_rt_errno() = (12); } } while(0);
      return -1;
    }



    lev = sys_arch_protect();


    select_cb.next = select_cb_list;
    if (select_cb_list != 
# 1589 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                         0
# 1589 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                             ) {
      select_cb_list->prev = &select_cb;
    }
    select_cb_list = &select_cb;

    select_cb_ctr++;


    sys_arch_unprotect(lev);


    maxfdp2 = maxfdp1;
    for (i = 0; i < maxfdp1; i++) {
      if ((readset && ((readset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (writeset && ((writeset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (exceptset && ((exceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
        struct lwip_sock *sock;
        lev = sys_arch_protect();
        sock = tryget_socket(i);
        if (sock != 
# 1608 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 1608 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ) {
          sock->select_waiting++;
          do { if (!(sock->select_waiting > 0)) { do {rt_kprintf("sock->select_waiting > 0"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1610);}while(0); }} while(0);
        } else {

          nready = -1;
          maxfdp2 = i;
          sys_arch_unprotect(lev);
          break;
        }
        sys_arch_unprotect(lev);
      }
    }

    if (nready >= 0) {


      nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
      if (!nready) {

        if (timeout == 0) {

          msectimeout = 0;
        } else {
          msectimeout = ((timeout->tv_sec * 1000) + ((timeout->tv_usec + 500)/1000));
          if (msectimeout == 0) {

            msectimeout = 1;
          }
        }

        waitres = sys_arch_sem_wait((&(select_cb.sem)), msectimeout);



      }
    }


    for (i = 0; i < maxfdp2; i++) {
      if ((readset && ((readset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (writeset && ((writeset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8))))) ||
          (exceptset && ((exceptset)->fds_bits[(i)/(sizeof (fd_mask) * 8)] & (1L << ((i) % (sizeof (fd_mask) * 8)))))) {
        struct lwip_sock *sock;
        lev = sys_arch_protect();
        sock = tryget_socket(i);
        if (sock != 
# 1654 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 1654 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ) {

          do { if (!(sock->select_waiting > 0)) { do {rt_kprintf("sock->select_waiting > 0"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1656);}while(0); }} while(0);
          if (sock->select_waiting > 0) {
            sock->select_waiting--;
          }
        } else {

          nready = -1;
        }
        sys_arch_unprotect(lev);
      }
    }

    lev = sys_arch_protect();
    if (select_cb.next != 
# 1669 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                         0
# 1669 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                             ) {
      select_cb.next->prev = select_cb.prev;
    }
    if (select_cb_list == &select_cb) {
      do { if (!(select_cb.prev == 
# 1673 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 1673 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { do {rt_kprintf("select_cb.prev == NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1673);}while(0); }} while(0);
      select_cb_list = select_cb.next;
    } else {
      do { if (!(select_cb.prev != 
# 1676 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 1676 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { do {rt_kprintf("select_cb.prev != NULL"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1676);}while(0); }} while(0);
      select_cb.prev->next = select_cb.next;
    }

    select_cb_ctr++;
    sys_arch_unprotect(lev);







    sys_sem_free(&select_cb.sem);


    if (nready < 0) {

      do { if (9) { *_rt_errno() = (9); } } while(0);
      return -1;
    }

    if (waitres == 0xffffffffUL) {

      ;


      goto return_copy_fdsets;
    }


    nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
  }

  ;
return_copy_fdsets:
  do { if (0) { *_rt_errno() = (0); } } while(0);
  if (readset) {
    *readset = lreadset;
  }
  if (writeset) {
    *writeset = lwriteset;
  }
  if (exceptset) {
    *exceptset = lexceptset;
  }
  return nready;
}





static void
__attribute__((section(".fast"))) event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len)
{
  int s;
  struct lwip_sock *sock;
  struct lwip_select_cb *scb;
  int last_select_cb_ctr;
  sys_prot_t lev;

  (void)len;


  if (conn) {
    s = conn->socket;
    if (s < 0) {





      lev = sys_arch_protect();
      if (conn->socket < 0) {
        if (evt == NETCONN_EVT_RCVPLUS) {
          conn->socket--;
        }
        sys_arch_unprotect(lev);
        return;
      }
      s = conn->socket;
      sys_arch_unprotect(lev);
    }

    sock = get_socket(s);
    if (!sock) {
      return;
    }
  } else {
    return;
  }

  lev = sys_arch_protect();

  switch (evt) {
    case NETCONN_EVT_RCVPLUS:
      sock->rcvevent++;
      break;
    case NETCONN_EVT_RCVMINUS:
      sock->rcvevent--;
      break;
    case NETCONN_EVT_SENDPLUS:
      sock->sendevent = 1;
      break;
    case NETCONN_EVT_SENDMINUS:
      sock->sendevent = 0;
      break;
    case NETCONN_EVT_ERROR:
      sock->errevent = 1;
      break;
    default:
      do { if (!(0)) { do {rt_kprintf("unknown event"); sys_arch_assert("E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c", 1788);}while(0); }} while(0);
      break;
  }

  if (sock->select_waiting == 0) {

    sys_arch_unprotect(lev);
    return;
  }







again:
  for (scb = select_cb_list; scb != 
# 1805 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                   0
# 1805 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                       ; scb = scb->next) {

    last_select_cb_ctr = select_cb_ctr;
    if (scb->sem_signalled == 0) {

      int do_signal = 0;

      if (sock->rcvevent > 0) {
        if (scb->readset && ((scb->readset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (sock->sendevent != 0) {
        if (!do_signal && scb->writeset && ((scb->writeset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (sock->errevent != 0) {
        if (!do_signal && scb->exceptset && ((scb->exceptset)->fds_bits[(s)/(sizeof (fd_mask) * 8)] & (1L << ((s) % (sizeof (fd_mask) * 8))))) {
          do_signal = 1;
        }
      }
      if (do_signal) {
        scb->sem_signalled = 1;


        sys_sem_signal((&(scb->sem)));
      }
    }

    sys_arch_unprotect(lev);

    lev = sys_arch_protect();
    if (last_select_cb_ctr != select_cb_ctr) {

      goto again;
    }
  }
  sys_arch_unprotect(lev);
}




int
lwip_shutdown(int s, int how)
{
  struct lwip_sock *sock;
  err_t err;
  u8_t shut_rx = 0, shut_tx = 0;

  ;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (sock->conn != 
# 1863 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                   0
# 1863 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                       ) {
    if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
      do { const int sockerr = (95); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      return -1;
    }
  } else {
    do { const int sockerr = (107); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }

  if (how == 0) {
    shut_rx = 1;
  } else if (how == 1) {
    shut_tx = 1;
  } else if (how == 2) {
    shut_rx = 1;
    shut_tx = 1;
  } else {
    do { const int sockerr = (22); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }
  err = netconn_shutdown(sock->conn, shut_rx, shut_tx);

  do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return (err == ERR_OK ? 0 : -1);
}

static int
lwip_getaddrname(int s, struct sockaddr *name, socklen_t *namelen, u8_t local)
{
  struct lwip_sock *sock;
  union sockaddr_aligned saddr;
  ip_addr_t naddr;
  u16_t port;
  err_t err;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }


  err = netconn_getaddr(sock->conn, &naddr, &port, local);
  if (err != ERR_OK) {
    do { const int sockerr = (err_to_errno(err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }
# 1920 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  ip_addr_t *naddr_tmp = &naddr;
  do { ((struct sockaddr_in*)(void*)(&saddr))->sin_len = sizeof(struct sockaddr_in); ((struct sockaddr_in*)(void*)(&saddr))->sin_family = 2; ((struct sockaddr_in*)(void*)(&saddr))->sin_port = lwip_htons((port)); ((&((struct sockaddr_in*)(void*)(&saddr))->sin_addr)->s_addr = (((naddr_tmp))->addr)); memset(((struct sockaddr_in*)(void*)(&saddr))->sin_zero, 0, 8); }while(0);

  ;
  ;
  ;

  if (*namelen > saddr.sa.sa_len) {
    *namelen = saddr.sa.sa_len;
  }
  memcpy(name,&saddr,*namelen);

  do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return 0;
}

int
lwip_getpeername(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 0);
}

int
lwip_getsockname(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 1);
}

int
lwip_getsockopt(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  u8_t err;
  struct lwip_sock *sock = get_socket(s);




  if (!sock) {
    return -1;
  }

  if ((
# 1961 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
      0 
# 1961 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
           == optval) || (
# 1961 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                          0 
# 1961 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                               == optlen)) {
    do { const int sockerr = (14); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }



  sys_mutex_lock(&lock_tcpip_core);
  err = lwip_getsockopt_impl(s, level, optname, optval, optlen);
  sys_mutex_unlock(&lock_tcpip_core);
# 2016 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  do { const int sockerr = (err); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return err ? -1 : 0;
}
# 2046 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static u8_t
lwip_getsockopt_impl(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = tryget_socket(s);
  if (!sock) {
    return 9;
  }

  switch (level) {


  case 0xfff:
    switch (optname) {


    case 0x0002:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2063 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2063 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2063 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2063 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      if (((sock->conn->type)&0xF0) != NETCONN_TCP) {
        return 92;
      }
      if ((sock->conn->pcb.tcp != 
# 2067 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                 0
# 2067 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                     ) && (sock->conn->pcb.tcp->state == LISTEN)) {
        *(int*)optval = 1;
      } else {
        *(int*)optval = 0;
      }
      break;



    case 0x0020:
    case 0x0008:

    case 0x0004:

      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2081 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2081 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2081 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2081 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = ((sock->conn->pcb.ip)->so_options & (optname));
     
                                                                          ;
      break;

    case 0x1008:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if ((sock)->conn == 
# 2088 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2088 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      switch ((((sock->conn->type))&0xF0)) {
      case NETCONN_RAW:





        {
        *(int*)optval = 3;
        }
        break;
      case NETCONN_TCP:
        *(int*)optval = 1;
        break;
      case NETCONN_UDP:
        *(int*)optval = 2;
        break;
      default:
        *(int*)optval = (sock->conn->type);
       

                                       ;
      }
     
                                     ;
      break;

    case 0x1007:
      do { if ((*optlen) < sizeof(int)) { return 22; }}while(0);

      if (((sock->err == 0) || (sock->err == 115)) && (sock->conn != 
# 2119 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                                            0
# 2119 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                                                )) {
        do { const int sockerr = (err_to_errno(sock->conn->last_err)); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      }
      *(int *)optval = (sock->err == 0xFF ? (int)-1 : (int)sock->err);
      sock->err = 0;
     
                                     ;
      break;


    case 0x1005:
      do { do { if ((*optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2130 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2130 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      do { s32_t loc = (((sock->conn)->send_timeout)); ((struct timeval *)(optval))->tv_sec = (loc) / 1000U; ((struct timeval *)(optval))->tv_usec = ((loc) % 1000U) * 1000U; }while(0);
      break;


    case 0x1006:
      do { do { if ((*optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2136 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2136 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      do { s32_t loc = (((sock->conn)->recv_timeout)); ((struct timeval *)(optval))->tv_sec = (loc) / 1000U; ((struct timeval *)(optval))->tv_usec = ((loc) % 1000U) * 1000U; }while(0);
      break;


    case 0x1002:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if ((sock)->conn == 
# 2142 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2142 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      *(int *)optval = ((sock->conn)->recv_bufsize);
      break;
# 2164 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    case 0x100a:
      do { do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2165 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2165 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2165 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2165 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);






      *(int*)optval = (((sock->conn->pcb.udp)->flags) & 0x01U) ? 1 : 0;
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;


  case 0:
    switch (optname) {
    case 2:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2187 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2187 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2187 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2187 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = sock->conn->pcb.ip->ttl;
     
                                     ;
      break;
    case 1:
      do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2193 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2193 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2193 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2193 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      *(int*)optval = sock->conn->pcb.ip->tos;
     
                                     ;
      break;

    case 5:
      do { do { if ((*optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2200 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2200 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2200 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2200 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      if ((((sock->conn->type))&0xF0) != NETCONN_UDP) {
        return 92;
      }
      *(u8_t*)optval = ((sock->conn->pcb.udp)->mcast_ttl);
     
                                     ;
      break;
    case 6:
      do { do { if ((*optlen) < sizeof(struct in_addr)) { return 22; }}while(0); if (((sock)->conn == 
# 2209 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2209 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2209 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2209 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      if ((((sock->conn->type))&0xF0) != NETCONN_UDP) {
        return 92;
      }
      (((struct in_addr*)optval)->s_addr = (((&(sock->conn->pcb.udp)->multicast_ip))->addr));
     
                                       ;
      break;
    case 7:
      do { do { if ((*optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2218 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2218 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2218 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2218 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      if ((sock->conn->pcb.udp->flags & 0x08U) != 0) {
        *(u8_t*)optval = 1;
      } else {
        *(u8_t*)optval = 0;
      }
     
                                     ;
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;



  case 6:

    do { do { do { if ((*optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2240 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 2240 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   ) || ((sock)->conn->pcb.tcp == 
# 2240 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 2240 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_TCP) { return 92; } }while(0);
    if (sock->conn->pcb.tcp->state == LISTEN) {
      return 22;
    }
    switch (optname) {
    case 0x01:
      *(int*)optval = (((sock->conn->pcb.tcp)->flags & 0x40U) != 0);
     
                                                  ;
      break;
    case 0x02:
      *(int*)optval = (int)sock->conn->pcb.tcp->keep_idle;
     
                                     ;
      break;


    case 0x03:
      *(int*)optval = (int)(sock->conn->pcb.tcp->keep_idle/1000);
     
                                     ;
      break;
    case 0x04:
      *(int*)optval = (int)(sock->conn->pcb.tcp->keep_intvl/1000);
     
                                     ;
      break;
    case 0x05:
      *(int*)optval = (int)sock->conn->pcb.tcp->keep_cnt;
     
                                     ;
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;
# 2330 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  case 255:
    switch (optname) {
# 2344 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    default:
     
                              ;
      err = 92;
      break;
    }
    break;
  default:
   
                                                   ;
    err = 92;
    break;
  }

  return err;
}

int
lwip_setsockopt(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = get_socket(s);




  if (!sock) {
    return -1;
  }

  if (
# 2374 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0 
# 2374 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
          == optval) {
    do { const int sockerr = (14); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return -1;
  }



  sys_mutex_lock(&lock_tcpip_core);
  err = lwip_setsockopt_impl(s, level, optname, optval, optlen);
  sys_mutex_unlock(&lock_tcpip_core);
# 2424 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  do { const int sockerr = (err); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return err ? -1 : 0;
}
# 2454 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static u8_t
lwip_setsockopt_impl(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  u8_t err = 0;
  struct lwip_sock *sock = tryget_socket(s);
  if (!sock) {
    return 9;
  }

  switch (level) {


  case 0xfff:
    switch (optname) {




    case 0x0020:
    case 0x0008:

    case 0x0004:

      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2477 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2477 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2477 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2477 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      if (*(const int*)optval) {
        ((sock->conn->pcb.ip)->so_options |= (optname));
      } else {
        ((sock->conn->pcb.ip)->so_options &= ~(optname));
      }
     
                                                                ;
      break;





    case 0x1005:
      do { do { if ((optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2492 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2492 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      ((sock->conn)->send_timeout = (((((const struct timeval *)(optval))->tv_sec * 1000U) + (((const struct timeval *)(optval))->tv_usec / 1000U))));
      break;


    case 0x1006:
      do { do { if ((optlen) < sizeof(struct timeval)) { return 22; }}while(0); if ((sock)->conn == 
# 2498 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2498 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      ((sock->conn)->recv_timeout = ((int)((((const struct timeval *)(optval))->tv_sec * 1000U) + (((const struct timeval *)(optval))->tv_usec / 1000U))));
      break;


    case 0x1002:
      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if ((sock)->conn == 
# 2504 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2504 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) { return 22; } }while(0);
      ((sock->conn)->recv_bufsize = (*(const int*)optval));
      break;
# 2529 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    case 0x100a:
      do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2530 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2530 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2530 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2530 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);






      if (*(const int*)optval) {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) | 0x01U));
      } else {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) & ~0x01U));
      }
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;


  case 0:
    switch (optname) {
    case 2:
      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2556 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2556 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2556 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2556 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      sock->conn->pcb.ip->ttl = (u8_t)(*(const int*)optval);
     
                                              ;
      break;
    case 1:
      do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2562 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2562 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2562 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2562 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0);
      sock->conn->pcb.ip->tos = (u8_t)(*(const int*)optval);
     
                                              ;
      break;

    case 5:
      do { do { do { if ((optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2569 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);
      do { (sock->conn->pcb.udp)->mcast_ttl = (u8_t)(*(const u8_t*)optval); } while(0);
      break;
    case 6:
      {
        ip4_addr_t if_addr;
        do { do { do { if ((optlen) < sizeof(struct in_addr)) { return 22; }}while(0); if (((sock)->conn == 
# 2575 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
       0
# 2575 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
       ) || ((sock)->conn->pcb.tcp == 
# 2575 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
       0
# 2575 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
       )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);
        (((&if_addr)->addr = (((const struct in_addr*)optval)->s_addr)));
        (((sock->conn->pcb.udp)->multicast_ip).addr = (*(&if_addr)).addr);
      }
      break;
    case 7:
      do { do { do { if ((optlen) < sizeof(u8_t)) { return 22; }}while(0); if (((sock)->conn == 
# 2581 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2581 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     ) || ((sock)->conn->pcb.tcp == 
# 2581 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
     0
# 2581 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
     )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);
      if (*(const u8_t*)optval) {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) | 0x08U));
      } else {
        ((sock->conn->pcb.udp)->flags = (((sock->conn->pcb.udp)->flags) & ~0x08U));
      }
      break;


    case 3:
    case 4:
      {


        err_t igmp_err;
        const struct ip_mreq *imr = (const struct ip_mreq *)optval;
        ip4_addr_t if_addr;
        ip4_addr_t multi_addr;
        do { do { do { if ((optlen) < sizeof(struct ip_mreq)) { return 22; }}while(0); if (((sock)->conn == 
# 2599 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
       0
# 2599 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
       ) || ((sock)->conn->pcb.tcp == 
# 2599 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
       0
# 2599 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
       )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_UDP) { return 92; } }while(0);
        (((&if_addr)->addr = ((&imr->imr_interface)->s_addr)));
        (((&multi_addr)->addr = ((&imr->imr_multiaddr)->s_addr)));
        if (optname == 3) {
          if (!lwip_socket_register_membership(s, &if_addr, &multi_addr)) {

            err = 12;
            igmp_err = ERR_OK;
          } else {
            igmp_err = igmp_joingroup(&if_addr, &multi_addr);
          }
        } else {
          igmp_err = igmp_leavegroup(&if_addr, &multi_addr);
          lwip_socket_unregister_membership(s, &if_addr, &multi_addr);
        }
        if (igmp_err != ERR_OK) {
          err = 99;
        }
      }
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;



  case 6:

    do { do { do { if ((optlen) < sizeof(int)) { return 22; }}while(0); if (((sock)->conn == 
# 2632 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 2632 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   ) || ((sock)->conn->pcb.tcp == 
# 2632 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
   0
# 2632 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
   )) { return 22; } }while(0); if (((((sock)->conn->type))&0xF0) != NETCONN_TCP) { return 92; } }while(0);
    if (sock->conn->pcb.tcp->state == LISTEN) {
      return 22;
    }
    switch (optname) {
    case 0x01:
      if (*(const int*)optval) {
        ((sock->conn->pcb.tcp)->flags |= 0x40U);
      } else {
        ((sock->conn->pcb.tcp)->flags = (tcpflags_t)((sock->conn->pcb.tcp)->flags & ~0x40U));
      }
     
                                                         ;
      break;
    case 0x02:
      sock->conn->pcb.tcp->keep_idle = (u32_t)(*(const int*)optval);
     
                                                     ;
      break;


    case 0x03:
      sock->conn->pcb.tcp->keep_idle = 1000*(u32_t)(*(const int*)optval);
     
                                                     ;
      break;
    case 0x04:
      sock->conn->pcb.tcp->keep_intvl = 1000*(u32_t)(*(const int*)optval);
     
                                                      ;
      break;
    case 0x05:
      sock->conn->pcb.tcp->keep_cnt = (u32_t)(*(const int*)optval);
     
                                                    ;
      break;

    default:
     
                              ;
      err = 92;
      break;
    }
    break;
# 2781 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
  case 255:
    switch (optname) {
# 2805 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    default:
     
                                              ;
      err = 92;
      break;
    }
    break;
  default:
   
                                   ;
    err = 92;
    break;
  }

  return err;
}

int
lwip_ioctl(int s, long cmd, void *argp)
{

 rt_err_t res;
 rt_device_t net_dev;
 struct ifreq *ifr = (struct ifreq *)argp;

  struct lwip_sock *sock = get_socket(s);
  u8_t val;

  u16_t buflen = 0;
  int recv_avail;


  if (!sock) {
    return -1;
  }

  switch (cmd) {

  case ( ((2U)<<30) | ((('f'))<<8) | ((127)) | ((sizeof(int))<<16) ):
    if (!argp) {
      do { const int sockerr = (22); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
      return -1;
    }
# 2876 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
    do { sys_prot_t old_level; old_level = sys_arch_protect(); recv_avail = sock->conn->recv_avail; sys_arch_unprotect(old_level); } while(0);
    if (recv_avail < 0) {
      recv_avail = 0;
    }
    *((int*)argp) = recv_avail;


    if (sock->lastdata) {
      struct pbuf *p = (struct pbuf *)sock->lastdata;
      if ((((sock->conn->type))&0xF0) != NETCONN_TCP) {
        p = ((struct netbuf *)p)->p;
      }
      buflen = p->tot_len;
      buflen -= sock->lastoffset;

      *((int*)argp) += buflen;
    }

    ;
    do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return 0;





  case (long)( ((1U)<<30) | ((('f'))<<8) | ((126)) | ((sizeof(int))<<16) ):
    val = 0;
    if (argp && *(u32_t*)argp) {
      val = 1;
    }
    do { if(val) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
    ;
    do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    return 0;

 case (long)0x8927:
  net_dev = rt_device_find(ifr->ifr_ifrn.ifrn_name);
  if (net_dev != (0)) {
   rt_kprintf("finded %s device.\n", ifr->ifr_ifrn.ifrn_name);

   res = rt_device_open(net_dev, 0x008);
   if (res != 0)
   {
    rt_kprintf("open %s device error.%d\n", ifr->ifr_ifrn.ifrn_name, res);
    return -1;
   }
  } else {
   rt_kprintf("can't find %s device.\n", ifr->ifr_ifrn.ifrn_name);
   return -1;
  }


  res = rt_device_control(net_dev, 0x01, (void *)ifr->ifr_ifru.ifru_hwaddr.sa_data);
  if (res != 0) {
   rt_kprintf("NIOCTL_GADDR error\n");
  }
   return 0;



  extern int eth_get_ipv4(char *if_name, struct sockaddr_in *if_ipaddr);
  case (long)0x8915:
    if (eth_get_ipv4(ifr->ifr_ifrn.ifrn_name, (struct sockaddr_in *)(&ifr->ifr_ifru.ifru_addr)) != 0)
        return -1;
    else
        return 0;


  default:
    break;
  }
  ;
  do { const int sockerr = (38); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
  return -1;
}





int
lwip_fcntl(int s, int cmd, int val)
{
  struct lwip_sock *sock = get_socket(s);
  int ret = -1;

  if (!sock) {
    return -1;
  }

  switch (cmd) {
  case 3:
    ret = (((sock->conn)->flags & 0x02) != 0) ? 04000 : 0;
    do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    break;
  case 4:
    if ((val & ~04000) == 0) {

      do { if(val & 04000) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
      ret = 0;
      do { const int sockerr = (0); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    } else {
      do { const int sockerr = (38); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    }
    break;
  default:
    ;
    do { const int sockerr = (38); sock->err = (u8_t)sockerr; do { if (sockerr) { *_rt_errno() = (sockerr); } } while(0); } while (0);
    break;
  }
  return ret;
}
# 2997 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
static int
lwip_socket_register_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr)
{
  struct lwip_sock *sock = get_socket(s);
  int i;

  if (!sock) {
    return 0;
  }

  for (i = 0; i < 8; i++) {
    if (socket_ipv4_multicast_memberships[i].sock == 
# 3008 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                    0
# 3008 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                        ) {
      socket_ipv4_multicast_memberships[i].sock = sock;
      ((socket_ipv4_multicast_memberships[i].if_addr).addr = (*if_addr).addr);
      ((socket_ipv4_multicast_memberships[i].multi_addr).addr = (*multi_addr).addr);
      return 1;
    }
  }
  return 0;
}






static void
lwip_socket_unregister_membership(int s, const ip4_addr_t *if_addr, const ip4_addr_t *multi_addr)
{
  struct lwip_sock *sock = get_socket(s);
  int i;

  if (!sock) {
    return;
  }

  for (i = 0; i < 8; i++) {
    if ((socket_ipv4_multicast_memberships[i].sock == sock) &&
        ((&socket_ipv4_multicast_memberships[i].if_addr)->addr == (if_addr)->addr) &&
        ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr == (multi_addr)->addr)) {
      socket_ipv4_multicast_memberships[i].sock = 
# 3037 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                 0
# 3037 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                     ;
      ((&socket_ipv4_multicast_memberships[i].if_addr)->addr = 0);
      ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr = 0);
      return;
    }
  }
}





static void
lwip_socket_drop_registered_memberships(int s)
{
  struct lwip_sock *sock = get_socket(s);
  int i;

  if (!sock) {
    return;
  }

  for (i = 0; i < 8; i++) {
    if (socket_ipv4_multicast_memberships[i].sock == sock) {
      ip_addr_t multi_addr, if_addr;
      ((multi_addr).addr = (socket_ipv4_multicast_memberships[i].multi_addr).addr);
      ((if_addr).addr = (socket_ipv4_multicast_memberships[i].if_addr).addr);
      socket_ipv4_multicast_memberships[i].sock = 
# 3064 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" 3 4
                                                 0
# 3064 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"
                                                     ;
      ((&socket_ipv4_multicast_memberships[i].if_addr)->addr = 0);
      ((&socket_ipv4_multicast_memberships[i].multi_addr)->addr = 0);

      netconn_join_leave_group(sock->conn, &multi_addr, &if_addr, NETCONN_LEAVE);
    }
  }
}
