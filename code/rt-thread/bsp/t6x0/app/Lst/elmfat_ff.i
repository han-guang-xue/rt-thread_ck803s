# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
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
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
# 20 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
# 1 "../../../components/libc/compilers/minilibc/string.h" 1
# 15 "../../../components/libc/compilers/minilibc/string.h"
#define __STRING_H__ 

# 1 "../../../include/rtthread.h" 1
# 33 "../../../include/rtthread.h"
#define __RT_THREAD_H__ 

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
# 36 "../../../include/rtthread.h" 2
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
# 46 "../../../include/rtdef.h" 2
# 59 "../../../include/rtdef.h"
#define RT_VERSION 3L
#define RT_SUBVERSION 1L
#define RT_REVISION 0L


#define RTTHREAD_VERSION ((RT_VERSION * 10000) + (RT_SUBVERSION * 100) + RT_REVISION)



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

# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 1 3 4
# 10 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 3 4
#define _FEATURES_H 1

#define __MINILIBC__ 1



#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))





#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 12 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 2 3 4




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
# 18 "../../../components/libc/compilers/minilibc/string.h" 2





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
# 21 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c" 2
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h" 1
# 22 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
#define _FATFS 68020






# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/integer.h" 1





#define _FF_INTEGER 
# 18 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/integer.h"
typedef int INT;
typedef unsigned int UINT;


typedef unsigned char BYTE;


typedef short SHORT;
typedef unsigned short WORD;
typedef unsigned short WCHAR;


typedef long LONG;
typedef unsigned long DWORD;


typedef unsigned long long QWORD;
# 30 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h" 2
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h" 1




#define _FFCONF 68020





#define _FS_READONLY 0






#define _FS_MINIMIZE 0
# 28 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _USE_STRFUNC 0
# 37 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _USE_FIND 0




#define _USE_MKFS 1



#define _USE_FASTSEEK 1



#define _USE_EXPAND 0



#define _USE_CHMOD 0




#define _USE_LABEL 0




#define _USE_FORWARD 0
# 73 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _CODE_PAGE RT_DFS_ELM_CODE_PAGE
# 106 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _USE_LFN RT_DFS_ELM_USE_LFN
#define _MAX_LFN RT_DFS_ELM_MAX_LFN
# 131 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _LFN_UNICODE 0






#define _STRF_ENCODE 3
# 150 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _FS_RPATH 0
# 164 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _VOLUMES RT_DFS_ELM_DRIVES






#define _STR_VOLUME_ID 0
#define _VOLUME_STRS "RAM","NAND","CF","SD","SD2","USB","USB2","USB3"







#define _MULTI_PARTITION 0
# 189 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _MIN_SS 512

#define _MAX_SS RT_DFS_ELM_MAX_SECTOR_SIZE
# 203 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _USE_TRIM 0





#define _FS_NOFSINFO 0
# 226 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _FS_TINY 0






#define _FS_EXFAT 1
# 242 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _FS_NORTC 0
#define _NORTC_MON 1
#define _NORTC_MDAY 1
#define _NORTC_YEAR 2016
# 256 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _FS_LOCK 0
# 269 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ffconf.h"
#define _FS_REENTRANT 1



#define _FS_TIMEOUT 1000
#define _SYNC_t rt_mutex_t
# 31 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h" 2
# 50 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
#define LD2PD(vol) (BYTE)(vol)
#define LD2PT(vol) 0
# 70 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
typedef char TCHAR;
#define _T(x) x
#define _TEXT(x) x
# 84 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
typedef QWORD FSIZE_t;
# 93 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
typedef struct {
 BYTE fs_type;
 BYTE drv;
 BYTE n_fats;
 BYTE wflag;
 BYTE fsi_flag;
 WORD id;
 WORD n_rootdir;
 WORD csize;




 WCHAR* lfnbuf;


 BYTE* dirbuf;


 rt_mutex_t sobj;


 DWORD last_clst;
 DWORD free_clst;
# 126 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
 DWORD n_fatent;
 DWORD fsize;
 DWORD volbase;
 DWORD fatbase;
 DWORD dirbase;
 DWORD database;
 DWORD winsect;
 BYTE win[512];
} FATFS;





typedef struct {
 FATFS* fs;
 WORD id;
 BYTE attr;
 BYTE stat;
 DWORD sclust;
 FSIZE_t objsize;

 DWORD n_cont;
 DWORD c_scl;
 DWORD c_size;
 DWORD c_ofs;




} _FDID;





typedef struct {
 _FDID obj;
 BYTE flag;
 BYTE err;
 FSIZE_t fptr;
 DWORD clust;
 DWORD sect;

 DWORD dir_sect;
 BYTE* dir_ptr;


 DWORD* cltbl;


 BYTE buf[512];

} FIL;





typedef struct {
 _FDID obj;
 DWORD dptr;
 DWORD clust;
 DWORD sect;
 BYTE* dir;
 BYTE fn[12];

 DWORD blk_ofs;




} DIR;





typedef struct {
 FSIZE_t fsize;
 WORD fdate;
 WORD ftime;
 BYTE fattrib;

 TCHAR altname[13];
 TCHAR fname[255 + 1];



} FILINFO;





typedef enum {
 FR_OK = 0,
 FR_DISK_ERR,
 FR_INT_ERR,
 FR_NOT_READY,
 FR_NO_FILE,
 FR_NO_PATH,
 FR_INVALID_NAME,
 FR_DENIED,
 FR_EXIST,
 FR_INVALID_OBJECT,
 FR_WRITE_PROTECTED,
 FR_INVALID_DRIVE,
 FR_NOT_ENABLED,
 FR_NO_FILESYSTEM,
 FR_MKFS_ABORTED,
 FR_TIMEOUT,
 FR_LOCKED,
 FR_NOT_ENOUGH_CORE,
 FR_TOO_MANY_OPEN_FILES,
 FR_INVALID_PARAMETER
} FRESULT;






FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);
FRESULT f_close (FIL* fp);
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);
FRESULT f_truncate (FIL* fp);
FRESULT f_sync (FIL* fp);
FRESULT f_opendir (DIR* dp, const TCHAR* path);
FRESULT f_closedir (DIR* dp);
FRESULT f_readdir (DIR* dp, FILINFO* fno);
FRESULT f_seekdir(DIR *dj, int offset);
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
FRESULT f_findnext (DIR* dp, FILINFO* fno);
FRESULT f_mkdir (const TCHAR* path);
FRESULT f_unlink (const TCHAR* path);
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);
FRESULT f_stat (const TCHAR* path, FILINFO* fno);
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);
FRESULT f_chdir (const TCHAR* path);
FRESULT f_chdrive (const TCHAR* path);
FRESULT f_getcwd (TCHAR* buff, UINT len);
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);
FRESULT f_setlabel (const TCHAR* label);
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
FRESULT f_expand (FIL* fp, FSIZE_t szf, BYTE opt);
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);
FRESULT f_mkfs (const TCHAR* path, BYTE opt, DWORD au, void* work, UINT len);
FRESULT f_fdisk (BYTE pdrv, const DWORD* szt, void* work);
int f_putc (TCHAR c, FIL* fp);
int f_puts (const TCHAR* str, FIL* cp);
int f_printf (FIL* fp, const TCHAR* str, ...);
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);

#define f_eof(fp) ((int)((fp)->fptr == (fp)->obj.objsize))
#define f_error(fp) ((fp)->err)
#define f_tell(fp) ((fp)->fptr)
#define f_size(fp) ((fp)->obj.objsize)
#define f_rewind(fp) f_lseek((fp), 0)
#define f_rewinddir(dp) f_readdir((dp), 0)


#define EOF (-1)
# 303 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
DWORD get_fattime (void);




WCHAR ff_convert (WCHAR chr, UINT dir);
WCHAR ff_wtoupper (WCHAR chr);

void* ff_memalloc (UINT msize);
void ff_memfree (void* mblock);





int ff_cre_syncobj (BYTE vol, rt_mutex_t* sobj);
int ff_req_grant (rt_mutex_t sobj);
void ff_rel_grant (rt_mutex_t sobj);
int ff_del_syncobj (rt_mutex_t sobj);
# 332 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.h"
#define FA_READ 0x01
#define FA_WRITE 0x02
#define FA_OPEN_EXISTING 0x00
#define FA_CREATE_NEW 0x04
#define FA_CREATE_ALWAYS 0x08
#define FA_OPEN_ALWAYS 0x10
#define FA_OPEN_APPEND 0x30


#define CREATE_LINKMAP ((FSIZE_t)0 - 1)


#define FM_FAT 0x01
#define FM_FAT32 0x02
#define FM_EXFAT 0x04
#define FM_ANY 0x07
#define FM_SFD 0x08


#define FS_FAT12 1
#define FS_FAT16 2
#define FS_FAT32 3
#define FS_EXFAT 4


#define AM_RDO 0x01
#define AM_HID 0x02
#define AM_SYS 0x04
#define AM_DIR 0x10
#define AM_ARC 0x20
# 22 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c" 2
# 1 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/diskio.h" 1





#define _DISKIO_DEFINED 
# 16 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/diskio.h"
typedef BYTE DSTATUS;


typedef enum {
 RES_OK = 0,
 RES_ERROR,
 RES_WRPRT,
 RES_NOTRDY,
 RES_PARERR
} DRESULT;






DSTATUS disk_initialize (BYTE pdrv);
DSTATUS disk_status (BYTE pdrv);
DRESULT disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
DRESULT disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);




#define STA_NOINIT 0x01
#define STA_NODISK 0x02
#define STA_PROTECT 0x04





#define CTRL_SYNC 0
#define GET_SECTOR_COUNT 1
#define GET_SECTOR_SIZE 2
#define GET_BLOCK_SIZE 3
#define CTRL_TRIM 4


#define CTRL_POWER 5
#define CTRL_LOCK 6
#define CTRL_EJECT 7
#define CTRL_FORMAT 8


#define MMC_GET_TYPE 10
#define MMC_GET_CSD 11
#define MMC_GET_CID 12
#define MMC_GET_OCR 13
#define MMC_GET_SDSTAT 14
#define ISDIO_READ 55
#define ISDIO_WRITE 56
#define ISDIO_MRITE 57


#define ATA_GET_REV 20
#define ATA_GET_MODEL 21
#define ATA_GET_SN 22
# 23 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c" 2
# 36 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define ABORT(fs,res) { fp->err = (BYTE)(res); LEAVE_FF(fs, res); }







#define ENTER_FF(fs) { if (!lock_fs(fs)) return FR_TIMEOUT; }
#define LEAVE_FF(fs,res) { unlock_fs(fs, res); return res; }
# 58 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define SS(fs) ((UINT)_MAX_SS)
# 71 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define GET_FATTIME() get_fattime()
# 129 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define _DF1S 0
#define _EXCVT {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
# 328 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define IsUpper(c) (((c)>='A')&&((c)<='Z'))
#define IsLower(c) (((c)>='a')&&((c)<='z'))
#define IsDigit(c) (((c)>='0')&&((c)<='9'))
# 348 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define IsDBCS1(c) 0
#define IsDBCS2(c) 0





#define AM_VOL 0x08
#define AM_LFN 0x0F
#define AM_MASK 0x3F



#define FA_SEEKEND 0x20
#define FA_MODIFIED 0x40
#define FA_DIRTY 0x80



#define NSFLAG 11
#define NS_LOSS 0x01
#define NS_LFN 0x02
#define NS_LAST 0x04
#define NS_BODY 0x08
#define NS_EXT 0x10
#define NS_DOT 0x20
#define NS_NOLFN 0x40
#define NS_NONAME 0x80



#define MAX_FAT12 0xFF5
#define MAX_FAT16 0xFFF5
#define MAX_FAT32 0xFFFFFF5
#define MAX_EXFAT 0x7FFFFFFD
#define MAX_DIR 0x200000
#define MAX_DIR_EX 0x10000000






#define BS_JmpBoot 0
#define BS_OEMName 3
#define BPB_BytsPerSec 11
#define BPB_SecPerClus 13
#define BPB_RsvdSecCnt 14
#define BPB_NumFATs 16
#define BPB_RootEntCnt 17
#define BPB_TotSec16 19
#define BPB_Media 21
#define BPB_FATSz16 22
#define BPB_SecPerTrk 24
#define BPB_NumHeads 26
#define BPB_HiddSec 28
#define BPB_TotSec32 32
#define BS_DrvNum 36
#define BS_NTres 37
#define BS_BootSig 38
#define BS_VolID 39
#define BS_VolLab 43
#define BS_FilSysType 54
#define BS_BootCode 62
#define BS_55AA 510

#define BPB_FATSz32 36
#define BPB_ExtFlags32 40
#define BPB_FSVer32 42
#define BPB_RootClus32 44
#define BPB_FSInfo32 48
#define BPB_BkBootSec32 50
#define BS_DrvNum32 64
#define BS_NTres32 65
#define BS_BootSig32 66
#define BS_VolID32 67
#define BS_VolLab32 71
#define BS_FilSysType32 82
#define BS_BootCode32 90

#define BPB_ZeroedEx 11
#define BPB_VolOfsEx 64
#define BPB_TotSecEx 72
#define BPB_FatOfsEx 80
#define BPB_FatSzEx 84
#define BPB_DataOfsEx 88
#define BPB_NumClusEx 92
#define BPB_RootClusEx 96
#define BPB_VolIDEx 100
#define BPB_FSVerEx 104
#define BPB_VolFlagEx 106
#define BPB_ActFatEx 107
#define BPB_BytsPerSecEx 108
#define BPB_SecPerClusEx 109
#define BPB_NumFATsEx 110
#define BPB_DrvNumEx 111
#define BPB_PercInUseEx 112
#define BPB_RsvdEx 113
#define BS_BootCodeEx 120

#define FSI_LeadSig 0
#define FSI_StrucSig 484
#define FSI_Free_Count 488
#define FSI_Nxt_Free 492

#define MBR_Table 446
#define SZ_PTE 16
#define PTE_Boot 0
#define PTE_StHead 1
#define PTE_StSec 2
#define PTE_StCyl 3
#define PTE_System 4
#define PTE_EdHead 5
#define PTE_EdSec 6
#define PTE_EdCyl 7
#define PTE_StLba 8
#define PTE_SizLba 12

#define DIR_Name 0
#define DIR_Attr 11
#define DIR_NTres 12
#define DIR_CrtTime10 13
#define DIR_CrtTime 14
#define DIR_LstAccDate 18
#define DIR_FstClusHI 20
#define DIR_ModTime 22
#define DIR_FstClusLO 26
#define DIR_FileSize 28
#define LDIR_Ord 0
#define LDIR_Attr 11
#define LDIR_Type 12
#define LDIR_Chksum 13
#define LDIR_FstClusLO 26
#define XDIR_Type 0
#define XDIR_NumLabel 1
#define XDIR_Label 2
#define XDIR_CaseSum 4
#define XDIR_NumSec 1
#define XDIR_SetSum 2
#define XDIR_Attr 4
#define XDIR_CrtTime 8
#define XDIR_ModTime 12
#define XDIR_AccTime 16
#define XDIR_CrtTime10 20
#define XDIR_ModTime10 21
#define XDIR_CrtTZ 22
#define XDIR_ModTZ 23
#define XDIR_AccTZ 24
#define XDIR_GenFlags 33
#define XDIR_NumName 35
#define XDIR_NameHash 36
#define XDIR_ValidFileSize 40
#define XDIR_FstClus 52
#define XDIR_FileSize 56

#define SZDIRE 32
#define LLEF 0x40
#define DDEM 0xE5
#define RDDEM 0x05
# 525 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static FATFS *FatFs[2];
static WORD Fsid;
# 567 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
#define DEF_NAMBUF WCHAR *lfn;
#define INIT_NAMBUF(fs) { lfn = ff_memalloc((_MAX_LFN+1)*2 + SZDIRE*19); if (!lfn) LEAVE_FF(fs, FR_NOT_ENOUGH_CORE); (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+_MAX_LFN+1); }
#define FREE_NAMBUF() ff_memfree(lfn)
# 582 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static const BYTE ExCvt[] = {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF};
# 601 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
WORD __attribute__((section(".fast"))) ld_word (const BYTE* ptr)
{
 WORD rv;

 rv = ptr[1];
 rv = rv << 8 | ptr[0];
 return rv;
}

static
DWORD __attribute__((section(".fast"))) ld_dword (const BYTE* ptr)
{
 DWORD rv;

 rv = ptr[3];
 rv = rv << 8 | ptr[2];
 rv = rv << 8 | ptr[1];
 rv = rv << 8 | ptr[0];
 return rv;
}


static
QWORD __attribute__((section(".fast"))) ld_qword (const BYTE* ptr)
{
 QWORD rv;

 rv = ptr[7];
 rv = rv << 8 | ptr[6];
 rv = rv << 8 | ptr[5];
 rv = rv << 8 | ptr[4];
 rv = rv << 8 | ptr[3];
 rv = rv << 8 | ptr[2];
 rv = rv << 8 | ptr[1];
 rv = rv << 8 | ptr[0];
 return rv;
}



static
void __attribute__((section(".fast"))) st_word (BYTE* ptr, WORD val)
{
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val;
}

static
void __attribute__((section(".fast"))) st_dword (BYTE* ptr, DWORD val)
{
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val;
}


static
void __attribute__((section(".fast"))) st_qword (BYTE* ptr, QWORD val)
{
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val; val >>= 8;
 *ptr++ = (BYTE)val;
}
# 681 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
void __attribute__((section(".fast"))) mem_cpy (void* dst, const void* src, UINT cnt) {
 BYTE *d = (BYTE*)dst;
 const BYTE *s = (const BYTE*)src;

 if (cnt) {

        memcpy(d, s, cnt);
 }

}


static
void __attribute__((section(".fast"))) mem_set (void* dst, int val, UINT cnt) {
 BYTE *d = (BYTE*)dst;


    if (cnt) {
        memset(d, val, cnt);
 }
}


static
int mem_cmp (const void* dst, const void* src, UINT cnt) {
 const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
 int r = 0;

 do {
  r = *d++ - *s++;
 } while (--cnt && r == 0);

 return r;
}


static
int chk_chr (const char* str, int chr) {
 while (*str && *str != chr) str++;
 return *str;
}
# 731 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
int lock_fs (
 FATFS* fs
)
{
 return ff_req_grant(fs->sobj);
}


static
void unlock_fs (
 FATFS* fs,
 FRESULT res
)
{
 if (fs && res != FR_NOT_ENABLED && res != FR_INVALID_DRIVE && res != FR_TIMEOUT) {
  ff_rel_grant(fs->sobj);
 }
}
# 872 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT __attribute__((section(".fast"))) sync_window (
 FATFS* fs
)
{
 DWORD wsect;
 UINT nf;
 FRESULT res = FR_OK;


 if (fs->wflag) {
  wsect = fs->winsect;
  if (disk_write(fs->drv, fs->win, wsect, 1) != RES_OK) {
   res = FR_DISK_ERR;
  } else {
   fs->wflag = 0;
   if (wsect - fs->fatbase < fs->fsize) {
    for (nf = fs->n_fats; nf >= 2; nf--) {
     wsect += fs->fsize;
     disk_write(fs->drv, fs->win, wsect, 1);
    }
   }
  }
 }
 return res;
}



static
FRESULT __attribute__((section(".fast"))) move_window (
 FATFS* fs,
 DWORD sector
)
{
 FRESULT res = FR_OK;


 if (sector != fs->winsect) {

  res = sync_window(fs);

  if (res == FR_OK) {
   if (disk_read(fs->drv, fs->win, sector, 1) != RES_OK) {
    sector = 0xFFFFFFFF;
    res = FR_DISK_ERR;
   }
   fs->winsect = sector;
  }
 }
 return res;
}
# 933 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT sync_fs (
 FATFS* fs
)
{
 FRESULT res;


 res = sync_window(fs);
 if (res == FR_OK) {

  if (fs->fs_type == 3 && fs->fsi_flag == 1) {

   mem_set(fs->win, 0, ((UINT)512));
   st_word(fs->win + 510, 0xAA55);
   st_dword(fs->win + 0, 0x41615252);
   st_dword(fs->win + 484, 0x61417272);
   st_dword(fs->win + 488, fs->free_clst);
   st_dword(fs->win + 492, fs->last_clst);

   fs->winsect = fs->volbase + 1;
   disk_write(fs->drv, fs->win, fs->winsect, 1);
   fs->fsi_flag = 0;
  }

  if (disk_ioctl(fs->drv, 0, 0) != RES_OK) res = FR_DISK_ERR;
 }

 return res;
}
# 972 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
DWORD clust2sect (
 FATFS* fs,
 DWORD clst
)
{
 clst -= 2;
 if (clst >= fs->n_fatent - 2) return 0;
 return clst * fs->csize + fs->database;
}
# 990 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
DWORD __attribute__((section(".fast"))) get_fat (
 _FDID* obj,
 DWORD clst
)
{
 UINT wc, bc;
 DWORD val;
 FATFS *fs = obj->fs;


 if (clst < 2 || clst >= fs->n_fatent) {
  val = 1;

 } else {
  val = 0xFFFFFFFF;

  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
   wc = fs->win[bc++ % ((UINT)512)];
   if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
   wc |= fs->win[bc % ((UINT)512)] << 8;
   val = (clst & 1) ? (wc >> 4) : (wc & 0xFFF);
   break;

  case 2 :
   if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2))) != FR_OK) break;
   val = ld_word(fs->win + clst * 2 % ((UINT)512));
   break;

  case 3 :
   if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4))) != FR_OK) break;
   val = ld_dword(fs->win + clst * 4 % ((UINT)512)) & 0x0FFFFFFF;
   break;

  case 4 :
   if (obj->objsize) {
    DWORD cofs = clst - obj->sclust;
    DWORD clen = (DWORD)((obj->objsize - 1) / ((UINT)512)) / fs->csize;

    if (obj->stat == 2) {
     if (cofs <= clen) {
      val = (cofs == clen) ? 0x7FFFFFFF : clst + 1;
      break;
     }
    }
    if (obj->stat == 3 && cofs < obj->n_cont) {
     val = clst + 1;
     break;
    }
    if (obj->stat != 2) {
     if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4))) != FR_OK) break;
     val = ld_dword(fs->win + clst * 4 % ((UINT)512)) & 0x7FFFFFFF;
     break;
    }
   }


  default:
   val = 1;
  }
 }

 return val;
}
# 1066 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT __attribute__((section(".fast"))) put_fat (
 FATFS* fs,
 DWORD clst,
 DWORD val
)
{
 UINT bc;
 BYTE *p;
 FRESULT res = FR_INT_ERR;


 if (clst >= 2 && clst < fs->n_fatent) {
  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
   if (res != FR_OK) break;
   p = fs->win + bc++ % ((UINT)512);
   *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
   fs->wflag = 1;
   res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
   if (res != FR_OK) break;
   p = fs->win + bc % ((UINT)512);
   *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
   fs->wflag = 1;
   break;

  case 2 :
   res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2)));
   if (res != FR_OK) break;
   st_word(fs->win + clst * 2 % ((UINT)512), (WORD)val);
   fs->wflag = 1;
   break;

  case 3 :

  case 4 :

   res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4)));
   if (res != FR_OK) break;
   if (!1 || fs->fs_type != 4) {
    val = (val & 0x0FFFFFFF) | (ld_dword(fs->win + clst * 4 % ((UINT)512)) & 0xF0000000);
   }
   st_dword(fs->win + clst * 4 % ((UINT)512), val);
   fs->wflag = 1;
   break;
  }
 }
 return res;
}
# 1132 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
DWORD __attribute__((section(".fast"))) find_bitmap (
 FATFS* fs,
 DWORD clst,
 DWORD ncl
)
{
 BYTE bm, bv;
 UINT i;
 DWORD val, scl, ctr;


 clst -= 2;
 if (clst >= fs->n_fatent - 2) clst = 0;
 scl = val = clst; ctr = 0;
 for (;;) {
  if (move_window(fs, fs->database + val / 8 / ((UINT)512)) != FR_OK) return 0xFFFFFFFF;
  i = val / 8 % ((UINT)512); bm = 1 << (val % 8);
  do {
   do {
    bv = fs->win[i] & bm; bm <<= 1;
    if (++val >= fs->n_fatent - 2) {
     val = 0; bm = 0; i = 4096;
    }
    if (!bv) {
     if (++ctr == ncl) return scl + 2;
    } else {
     scl = val; ctr = 0;
    }
    if (val == clst) return 0;
   } while (bm);
   bm = 1;
  } while (++i < ((UINT)512));
 }
}






static
FRESULT __attribute__((section(".fast"))) change_bitmap (
 FATFS* fs,
 DWORD clst,
 DWORD ncl,
 int bv
)
{
 BYTE bm;
 UINT i;
 DWORD sect;


 clst -= 2;
 sect = fs->database + clst / 8 / ((UINT)512);
 i = clst / 8 % ((UINT)512);
 bm = 1 << (clst % 8);
 for (;;) {
  if (move_window(fs, sect++) != FR_OK) return FR_DISK_ERR;
  do {
   do {
    if (bv == (int)((fs->win[i] & bm) != 0)) return FR_INT_ERR;
    fs->win[i] ^= bm;
    fs->wflag = 1;
    if (--ncl == 0) return FR_OK;
   } while (bm <<= 1);
   bm = 1;
  } while (++i < ((UINT)512));
  i = 0;
 }
}






static
FRESULT fill_fat_chain (
 _FDID* obj
)
{
 FRESULT res;
 DWORD cl, n;

 if (obj->stat == 3) {
  for (cl = obj->sclust, n = obj->n_cont; n; cl++, n--) {
   res = put_fat(obj->fs, cl, cl + 1);
   if (res != FR_OK) return res;
  }
  obj->stat = 0;
 }
 return FR_OK;
}
# 1236 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT remove_chain (
 _FDID* obj,
 DWORD clst,
 DWORD pclst
)
{
 FRESULT res = FR_OK;
 DWORD nxt;
 FATFS *fs = obj->fs;

 DWORD scl = clst, ecl = clst;





 if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;


 if (pclst && (!1 || fs->fs_type != 4 || obj->stat != 2)) {
  res = put_fat(fs, pclst, 0xFFFFFFFF);
  if (res != FR_OK) return res;
 }


 do {
  nxt = get_fat(obj, clst);
  if (nxt == 0) break;
  if (nxt == 1) return FR_INT_ERR;
  if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;
  if (!1 || fs->fs_type != 4) {
   res = put_fat(fs, clst, 0);
   if (res != FR_OK) return res;
  }
  if (fs->free_clst < fs->n_fatent - 2) {
   fs->free_clst++;
   fs->fsi_flag |= 1;
  }

  if (ecl + 1 == nxt) {
   ecl = nxt;
  } else {

   if (fs->fs_type == 4) {
    res = change_bitmap(fs, scl, ecl - scl + 1, 0);
    if (res != FR_OK) return res;
   }






   scl = ecl = nxt;
  }

  clst = nxt;
 } while (clst < fs->n_fatent);


 if (fs->fs_type == 4) {
  if (pclst == 0) {
   obj->stat = 0;
  } else {
   if (obj->stat == 3 && pclst >= obj->sclust && pclst <= obj->sclust + obj->n_cont) {
    obj->stat = 2;
   }
  }
 }

 return FR_OK;
}







static
DWORD __attribute__((section(".fast"))) create_chain (
 _FDID* obj,
 DWORD clst
)
{
 DWORD cs, ncl, scl;
 FRESULT res;
 FATFS *fs = obj->fs;


 if (clst == 0) {
  scl = fs->last_clst;
  if (scl == 0 || scl >= fs->n_fatent) scl = 1;
 }
 else {
  cs = get_fat(obj, clst);
  if (cs < 2) return 1;
  if (cs == 0xFFFFFFFF) return cs;
  if (cs < fs->n_fatent) return cs;
  scl = clst;
 }


 if (fs->fs_type == 4) {
  ncl = find_bitmap(fs, scl, 1);
  if (ncl == 0 || ncl == 0xFFFFFFFF) return ncl;
  res = change_bitmap(fs, ncl, 1, 1);
  if (res == FR_INT_ERR) return 1;
  if (res == FR_DISK_ERR) return 0xFFFFFFFF;
  if (clst == 0) {
   obj->stat = 2;
  } else {
   if (obj->stat == 2 && ncl != scl + 1) {
    obj->n_cont = scl - obj->sclust;
    obj->stat = 3;
   }
  }
 } else

 {
  ncl = scl;
  for (;;) {
   ncl++;
   if (ncl >= fs->n_fatent) {
    ncl = 2;
    if (ncl > scl) return 0;
   }
   cs = get_fat(obj, ncl);
   if (cs == 0) break;
   if (cs == 1 || cs == 0xFFFFFFFF) return cs;
   if (ncl == scl) return 0;
  }
 }

 if (1 && fs->fs_type == 4 && obj->stat == 2) {
  res = FR_OK;
 } else {
  res = put_fat(fs, ncl, 0xFFFFFFFF);
  if (res == FR_OK && clst) {
   res = put_fat(fs, clst, ncl);
  }
 }

 if (res == FR_OK) {
  fs->last_clst = ncl;
  if (fs->free_clst < fs->n_fatent - 2) fs->free_clst--;
  fs->fsi_flag |= 1;
 } else {
  ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
 }

 return ncl;
}
# 1401 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
DWORD __attribute__((section(".fast"))) clmt_clust (
 FIL* fp,
 FSIZE_t ofs
)
{
 DWORD cl, ncl, *tbl;
 FATFS *fs = fp->obj.fs;


 tbl = fp->cltbl + 1;
 cl = (DWORD)(ofs / ((UINT)512) / fs->csize);
 for (;;) {
  ncl = *tbl++;
  if (ncl == 0) return 0;
  if (cl < ncl) break;
  cl -= ncl; tbl++;
 }
 return cl + *tbl;
}
# 1431 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_sdi (
 DIR* dp,
 DWORD ofs
)
{
 DWORD csz, clst;
 FATFS *fs = dp->obj.fs;


 if (ofs >= (DWORD)((1 && fs->fs_type == 4) ? 0x10000000 : 0x200000) || ofs % 32) {
  return FR_INT_ERR;
 }
 dp->dptr = ofs;
 clst = dp->obj.sclust;
 if (clst == 0 && fs->fs_type >= 3) {
  clst = fs->dirbase;
  if (1) dp->obj.stat = 0;
 }

 if (clst == 0) {
  if (ofs / 32 >= fs->n_rootdir) return FR_INT_ERR;
  dp->sect = fs->dirbase;

 } else {
  csz = (DWORD)fs->csize * ((UINT)512);
  while (ofs >= csz) {
   clst = get_fat(&dp->obj, clst);
   if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
   if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;
   ofs -= csz;
  }
  dp->sect = clust2sect(fs, clst);
 }
 dp->clust = clst;
 if (!dp->sect) return FR_INT_ERR;
 dp->sect += ofs / ((UINT)512);
 dp->dir = fs->win + (ofs % ((UINT)512));

 return FR_OK;
}
# 1480 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_next (
 DIR* dp,
 int stretch
)
{
 DWORD ofs, clst;
 FATFS *fs = dp->obj.fs;

 UINT n;


 ofs = dp->dptr + 32;
 if (!dp->sect || ofs >= (DWORD)((1 && fs->fs_type == 4) ? 0x10000000 : 0x200000)) return FR_NO_FILE;

 if (ofs % ((UINT)512) == 0) {
  dp->sect++;

  if (!dp->clust) {
   if (ofs / 32 >= fs->n_rootdir) {
    dp->sect = 0; return FR_NO_FILE;
   }
  }
  else {
   if ((ofs / ((UINT)512) & (fs->csize - 1)) == 0) {
    clst = get_fat(&dp->obj, dp->clust);
    if (clst <= 1) return FR_INT_ERR;
    if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
    if (clst >= fs->n_fatent) {

     if (!stretch) {
      dp->sect = 0; return FR_NO_FILE;
     }
     clst = create_chain(&dp->obj, dp->clust);
     if (clst == 0) return FR_DENIED;
     if (clst == 1) return FR_INT_ERR;
     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;

     if (1) dp->obj.stat |= 4;
     if (sync_window(fs) != FR_OK) return FR_DISK_ERR;
     mem_set(fs->win, 0, ((UINT)512));
     for (n = 0, fs->winsect = clust2sect(fs, clst); n < fs->csize; n++, fs->winsect++) {
      fs->wflag = 1;
      if (sync_window(fs) != FR_OK) return FR_DISK_ERR;
     }
     fs->winsect -= n;




    }
    dp->clust = clst;
    dp->sect = clust2sect(fs, clst);
   }
  }
 }
 dp->dptr = ofs;
 dp->dir = fs->win + ofs % ((UINT)512);

 return FR_OK;
}
# 1550 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_alloc (
 DIR* dp,
 UINT nent
)
{
 FRESULT res;
 UINT n;
 FATFS *fs = dp->obj.fs;


 res = dir_sdi(dp, 0);
 if (res == FR_OK) {
  n = 0;
  do {
   res = move_window(fs, dp->sect);
   if (res != FR_OK) break;

   if ((fs->fs_type == 4) ? (int)((dp->dir[0] & 0x80) == 0) : (int)(dp->dir[0] == 0xE5 || dp->dir[0] == 0)) {



    if (++n == nent) break;
   } else {
    n = 0;
   }
   res = dir_next(dp, 1);
  } while (res == FR_OK);
 }

 if (res == FR_NO_FILE) res = FR_DENIED;
 return res;
}
# 1593 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
DWORD ld_clust (
 FATFS* fs,
 const BYTE* dir
)
{
 DWORD cl;

 cl = ld_word(dir + 26);
 if (fs->fs_type == 3) {
  cl |= (DWORD)ld_word(dir + 20) << 16;
 }

 return cl;
}



static
void st_clust (
 FATFS* fs,
 BYTE* dir,
 DWORD cl
)
{
 st_word(dir + 26, (WORD)cl);
 if (fs->fs_type == 3) {
  st_word(dir + 20, (WORD)(cl >> 16));
 }
}
# 1631 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
const BYTE LfnOfs[] = {1,3,5,7,9,14,16,18,20,22,24,28,30};





static
int cmp_lfn (
 const WCHAR* lfnbuf,
 BYTE* dir
)
{
 UINT i, s;
 WCHAR wc, uc;


 if (ld_word(dir + 26) != 0) return 0;

 i = ((dir[0] & 0x3F) - 1) * 13;

 for (wc = 1, s = 0; s < 13; s++) {
  uc = ld_word(dir + LfnOfs[s]);
  if (wc) {
   if (i >= 255 || ff_wtoupper(uc) != ff_wtoupper(lfnbuf[i++])) {
    return 0;
   }
   wc = uc;
  } else {
   if (uc != 0xFFFF) return 0;
  }
 }

 if ((dir[0] & 0x40) && wc && lfnbuf[i]) return 0;

 return 1;
}






static
int pick_lfn (
 WCHAR* lfnbuf,
 BYTE* dir
)
{
 UINT i, s;
 WCHAR wc, uc;


 if (ld_word(dir + 26) != 0) return 0;

 i = ((dir[0] & 0x3F) - 1) * 13;

 for (wc = 1, s = 0; s < 13; s++) {
  uc = ld_word(dir + LfnOfs[s]);
  if (wc) {
   if (i >= 255) return 0;
   lfnbuf[i++] = wc = uc;
  } else {
   if (uc != 0xFFFF) return 0;
  }
 }

 if (dir[0] & 0x40) {
  if (i >= 255) return 0;
  lfnbuf[i] = 0;
 }

 return 1;
}







static
void put_lfn (
 const WCHAR* lfn,
 BYTE* dir,
 BYTE ord,
 BYTE sum
)
{
 UINT i, s;
 WCHAR wc;


 dir[13] = sum;
 dir[11] = 0x0F;
 dir[12] = 0;
 st_word(dir + 26, 0);

 i = (ord - 1) * 13;
 s = wc = 0;
 do {
  if (wc != 0xFFFF) wc = lfn[i++];
  st_word(dir + LfnOfs[s], wc);
  if (wc == 0) wc = 0xFFFF;
 } while (++s < 13);
 if (wc == 0xFFFF || !lfn[i]) ord |= 0x40;
 dir[0] = ord;
}
# 1750 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
void gen_numname (
 BYTE* dst,
 const BYTE* src,
 const WCHAR* lfn,
 UINT seq
)
{
 BYTE ns[8], c;
 UINT i, j;
 WCHAR wc;
 DWORD sr;


 mem_cpy(dst, src, 11);

 if (seq > 5) {
  sr = seq;
  while (*lfn) {
   wc = *lfn++;
   for (i = 0; i < 16; i++) {
    sr = (sr << 1) + (wc & 1);
    wc >>= 1;
    if (sr & 0x10000) sr ^= 0x11021;
   }
  }
  seq = (UINT)sr;
 }


 i = 7;
 do {
  c = (BYTE)((seq % 16) + '0');
  if (c > '9') c += 7;
  ns[i--] = c;
  seq /= 16;
 } while (seq);
 ns[i] = '~';


 for (j = 0; j < i && dst[j] != ' '; j++) {
  if (0) {
   if (j == i - 1) break;
   j++;
  }
 }
 do {
  dst[j++] = (i < 8) ? ns[i++] : ' ';
 } while (j < 8);
}
# 1809 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
BYTE sum_sfn (
 const BYTE* dir
)
{
 BYTE sum = 0;
 UINT n = 11;

 do sum = (sum >> 1) + (sum << 7) + *dir++; while (--n);
 return sum;
}
# 1830 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
WORD xdir_sum (
 const BYTE* dir
)
{
 UINT i, szblk;
 WORD sum;


 szblk = (dir[1] + 1) * 32;
 for (i = sum = 0; i < szblk; i++) {
  if (i == 2) {
   i++;
  } else {
   sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + dir[i];
  }
 }
 return sum;
}



static
WORD xname_sum (
 const WCHAR* name
)
{
 WCHAR chr;
 WORD sum = 0;


 while ((chr = *name++) != 0) {
  chr = ff_wtoupper(chr);
  sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + (chr & 0xFF);
  sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + (chr >> 8);
 }
 return sum;
}



static
DWORD xsum32 (
 BYTE dat,
 DWORD sum
)
{
 sum = ((sum & 1) ? 0x80000000 : 0) + (sum >> 1) + dat;
 return sum;
}
# 1888 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
void get_xdir_info (
 BYTE* dirb,
 FILINFO* fno
)
{
 UINT di, si;
 WCHAR w;

 UINT nc;
# 1912 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 for (si = 32 * 2, di = nc = 0; nc < dirb[35]; si += 2, nc++) {
  if ((si % 32) == 0) si += 2;
  w = ld_word(dirb + si);
  w = ff_convert(w, 0);
  if (w == 0) { di = 0; break; }
  if (0 && w >= 0x100) {
   fno->fname[di++] = (char)(w >> 8);
  }
  if (di >= 255) { di = 0; break; }
  fno->fname[di++] = (char)w;
 }

 if (di == 0) fno->fname[di++] = '?';
 fno->fname[di] = 0;

 fno->altname[0] = 0;
 fno->fattrib = dirb[4];
 fno->fsize = (fno->fattrib & 0x10) ? 0 : ld_qword(dirb + 56);
 fno->ftime = ld_word(dirb + 12 + 0);
 fno->fdate = ld_word(dirb + 12 + 2);
}
# 1941 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT load_xdir (
 DIR* dp
)
{
 FRESULT res;
 UINT i, nent;
 BYTE* dirb = dp->obj.fs->dirbuf;



 res = move_window(dp->obj.fs, dp->sect);
 if (res != FR_OK) return res;
 if (dp->dir[0] != 0x85) return FR_INT_ERR;
 mem_cpy(dirb, dp->dir, 32);
 nent = dirb[1] + 1;


 res = dir_next(dp, 0);
 if (res != FR_OK) return res;
 res = move_window(dp->obj.fs, dp->sect);
 if (res != FR_OK) return res;
 if (dp->dir[0] != 0xC0) return FR_INT_ERR;
 mem_cpy(dirb + 32, dp->dir, 32);


 if (nent < 3 || nent > 19) return FR_NO_FILE;
 i = 32 * 2; nent *= 32;
 do {
  res = dir_next(dp, 0);
  if (res != FR_OK) return res;
  res = move_window(dp->obj.fs, dp->sect);
  if (res != FR_OK) return res;
  if (dp->dir[0] != 0xC1) return FR_INT_ERR;
  mem_cpy(dirb + i, dp->dir, 32);
  i += 32;
 } while (i < nent);


 if (xdir_sum(dirb) != ld_word(dirb + 2)) return FR_INT_ERR;

 return FR_OK;
}






static
FRESULT load_obj_dir (
 DIR* dp,
 const _FDID* obj
)
{
 FRESULT res;



 dp->obj.fs = obj->fs;
 dp->obj.sclust = obj->c_scl;
 dp->obj.stat = (BYTE)obj->c_size;
 dp->obj.objsize = obj->c_size & 0xFFFFFF00;
 dp->blk_ofs = obj->c_ofs;

 res = dir_sdi(dp, dp->blk_ofs);
 if (res == FR_OK) {
  res = load_xdir(dp);
 }
 return res;
}







static
FRESULT store_xdir (
 DIR* dp
)
{
 FRESULT res;
 UINT nent;
 BYTE* dirb = dp->obj.fs->dirbuf;


 st_word(dirb + 2, xdir_sum(dirb));
 nent = dirb[1] + 1;


 res = dir_sdi(dp, dp->blk_ofs);
 while (res == FR_OK) {
  res = move_window(dp->obj.fs, dp->sect);
  if (res != FR_OK) break;
  mem_cpy(dp->dir, dirb, 32);
  dp->obj.fs->wflag = 1;
  if (--nent == 0) break;
  dirb += 32;
  res = dir_next(dp, 0);
 }
 return (res == FR_OK || res == FR_DISK_ERR) ? res : FR_INT_ERR;
}







static
void create_xdir (
 BYTE* dirb,
 const WCHAR* lfn
)
{
 UINT i;
 BYTE nb, nc;
 WCHAR chr;


 mem_set(dirb, 0, 2 * 32);
 dirb[0] = 0x85;
 dirb[0 + 32] = 0xC0;
 st_word(dirb + 36, xname_sum(lfn));

 i = 32 * 2;
 nc = 0; nb = 1; chr = 1;
 do {
  dirb[i++] = 0xC1; dirb[i++] = 0;
  do {
   if (chr && (chr = lfn[nc]) != 0) nc++;
   st_word(dirb + i, chr); i += 2;
  } while (i % 32);
  nb++;
 } while (lfn[nc]);

 dirb[35] = nc;
 dirb[1] = nb;
}
# 2093 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_read (
 DIR* dp,
 int vol
)
{
 FRESULT res = FR_NO_FILE;
 FATFS *fs = dp->obj.fs;
 BYTE a, c;

 BYTE ord = 0xFF, sum = 0xFF;


 while (dp->sect) {
  res = move_window(fs, dp->sect);
  if (res != FR_OK) break;
  c = dp->dir[0];
  if (c == 0) { res = FR_NO_FILE; break; }

  if (fs->fs_type == 4) {
   if (0 && vol) {
    if (c == 0x83) break;
   } else {
    if (c == 0x85) {
     dp->blk_ofs = dp->dptr;
     res = load_xdir(dp);
     if (res == FR_OK) {
      dp->obj.attr = fs->dirbuf[4] & 0x3F;
     }
     break;
    }
   }
  } else

  {
   dp->obj.attr = a = dp->dir[11] & 0x3F;

   if (c == 0xE5 || c == '.' || (int)((a & ~0x20) == 0x08) != vol) {
    ord = 0xFF;
   } else {
    if (a == 0x0F) {
     if (c & 0x40) {
      sum = dp->dir[13];
      c &= (BYTE)~0x40; ord = c;
      dp->blk_ofs = dp->dptr;
     }

     ord = (c == ord && sum == dp->dir[13] && pick_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
    } else {
     if (ord || sum != sum_sfn(dp->dir)) {
      dp->blk_ofs = 0xFFFFFFFF;
     }
     break;
    }
   }





  }
  res = dir_next(dp, 0);
  if (res != FR_OK) break;
 }

 if (res != FR_OK) dp->sect = 0;
 return res;
}
# 2170 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_find (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;
 BYTE c;

 BYTE a, ord, sum;


 res = dir_sdi(dp, 0);
 if (res != FR_OK) return res;

 if (fs->fs_type == 4) {
  BYTE nc;
  UINT di, ni;
  WORD hash = xname_sum(fs->lfnbuf);

  while ((res = dir_read(dp, 0)) == FR_OK) {
   if (ld_word(fs->dirbuf + 36) != hash) continue;
   for (nc = fs->dirbuf[35], di = 32 * 2, ni = 0; nc; nc--, di += 2, ni++) {
    if ((di % 32) == 0) di += 2;
    if (ff_wtoupper(ld_word(fs->dirbuf + di)) != ff_wtoupper(fs->lfnbuf[ni])) break;
   }
   if (nc == 0 && !fs->lfnbuf[ni]) break;
  }
  return res;
 }



 ord = sum = 0xFF; dp->blk_ofs = 0xFFFFFFFF;

 do {
  res = move_window(fs, dp->sect);
  if (res != FR_OK) break;
  c = dp->dir[0];
  if (c == 0) { res = FR_NO_FILE; break; }

  dp->obj.attr = a = dp->dir[11] & 0x3F;
  if (c == 0xE5 || ((a & 0x08) && a != 0x0F)) {
   ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;
  } else {
   if (a == 0x0F) {
    if (!(dp->fn[11] & 0x40)) {
     if (c & 0x40) {
      sum = dp->dir[13];
      c &= (BYTE)~0x40; ord = c;
      dp->blk_ofs = dp->dptr;
     }

     ord = (c == ord && sum == dp->dir[13] && cmp_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
    }
   } else {
    if (!ord && sum == sum_sfn(dp->dir)) break;
    if (!(dp->fn[11] & 0x01) && !mem_cmp(dp->dir, dp->fn, 11)) break;
    ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;
   }
  }




  res = dir_next(dp, 0);
 } while (res == FR_OK);

 return res;
}
# 2249 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_register (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;

 UINT n, nlen, nent;
 BYTE sn[12], sum;


 if (dp->fn[11] & (0x20 | 0x80)) return FR_INVALID_NAME;
 for (nlen = 0; fs->lfnbuf[nlen]; nlen++) ;


 if (fs->fs_type == 4) {
  DIR dj;

  nent = (nlen + 14) / 15 + 2;
  res = dir_alloc(dp, nent);
  if (res != FR_OK) return res;
  dp->blk_ofs = dp->dptr - 32 * (nent - 1);

  if (dp->obj.sclust != 0 && (dp->obj.stat & 4)) {
   dp->obj.stat &= 3;
   dp->obj.objsize += (DWORD)fs->csize * ((UINT)512);
   res = fill_fat_chain(&dp->obj);
   if (res != FR_OK) return res;
   res = load_obj_dir(&dj, &dp->obj);
   if (res != FR_OK) return res;
   st_qword(fs->dirbuf + 56, dp->obj.objsize);
   st_qword(fs->dirbuf + 40, dp->obj.objsize);
   fs->dirbuf[33] = dp->obj.stat | 1;
   res = store_xdir(&dj);
   if (res != FR_OK) return res;
  }

  create_xdir(fs->dirbuf, fs->lfnbuf);
  return FR_OK;
 }


 mem_cpy(sn, dp->fn, 12);
 if (sn[11] & 0x01) {
  dp->fn[11] = 0x40;
  for (n = 1; n < 100; n++) {
   gen_numname(dp->fn, sn, fs->lfnbuf, n);
   res = dir_find(dp);
   if (res != FR_OK) break;
  }
  if (n == 100) return FR_DENIED;
  if (res != FR_NO_FILE) return res;
  dp->fn[11] = sn[11];
 }


 nent = (sn[11] & 0x02) ? (nlen + 12) / 13 + 1 : 1;
 res = dir_alloc(dp, nent);
 if (res == FR_OK && --nent) {
  res = dir_sdi(dp, dp->dptr - nent * 32);
  if (res == FR_OK) {
   sum = sum_sfn(dp->fn);
   do {
    res = move_window(fs, dp->sect);
    if (res != FR_OK) break;
    put_lfn(fs->lfnbuf, dp->dir, (BYTE)nent, sum);
    fs->wflag = 1;
    res = dir_next(dp, 0);
   } while (res == FR_OK && --nent);
  }
 }







 if (res == FR_OK) {
  res = move_window(fs, dp->sect);
  if (res == FR_OK) {
   mem_set(dp->dir, 0, 32);
   mem_cpy(dp->dir + 0, dp->fn, 11);

   dp->dir[12] = dp->fn[11] & (0x08 | 0x10);

   fs->wflag = 1;
  }
 }

 return res;
}
# 2352 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT dir_remove (
 DIR* dp
)
{
 FRESULT res;
 FATFS *fs = dp->obj.fs;

 DWORD last = dp->dptr;

 res = (dp->blk_ofs == 0xFFFFFFFF) ? FR_OK : dir_sdi(dp, dp->blk_ofs);
 if (res == FR_OK) {
  do {
   res = move_window(fs, dp->sect);
   if (res != FR_OK) break;

   if (1 && fs->fs_type == 4) {
    dp->dir[0] &= 0x7F;
   } else {
    dp->dir[0] = 0xE5;
   }
   fs->wflag = 1;
   if (dp->dptr >= last) break;
   res = dir_next(dp, 0);
  } while (res == FR_OK);
  if (res == FR_NO_FILE) res = FR_INT_ERR;
 }
# 2388 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 return res;
}
# 2400 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
void get_fileinfo (
 DIR* dp,
 FILINFO* fno
)
{
 UINT i, j;
 TCHAR c;
 DWORD tm;

 WCHAR w, lfv;
 FATFS *fs = dp->obj.fs;



 fno->fname[0] = 0;
 if (!dp->sect) return;



 if (fs->fs_type == 4) {
  get_xdir_info(fs->dirbuf, fno);
  return;
 } else

 {
  if (dp->blk_ofs != 0xFFFFFFFF) {
   i = j = 0;
   while ((w = fs->lfnbuf[j++]) != 0) {

    w = ff_convert(w, 0);
    if (w == 0) { i = 0; break; }
    if (0 && w >= 0x100) {
     fno->fname[i++] = (char)(w >> 8);
    }

    if (i >= 255) { i = 0; break; }
    fno->fname[i++] = (TCHAR)w;
   }
   fno->fname[i] = 0;
  }
 }

 i = j = 0;
 lfv = fno->fname[i];
 while (i < 11) {
  c = (TCHAR)dp->dir[i++];
  if (c == ' ') continue;
  if (c == 0x05) c = (TCHAR)0xE5;
  if (i == 9) {
   if (!lfv) fno->fname[j] = '.';
   fno->altname[j++] = '.';
  }







  fno->altname[j] = c;
  if (!lfv) {
   if ((((c)>='A')&&((c)<='Z')) && (dp->dir[12] & (i >= 9 ? 0x10 : 0x08))) {
    c += 0x20;
   }
   fno->fname[j] = c;
  }
  j++;
 }
 if (!lfv) {
  fno->fname[j] = 0;
  if (!dp->dir[12]) j = 0;
 }
 fno->altname[j] = 0;
# 2487 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 fno->fattrib = dp->dir[11];
 fno->fsize = ld_dword(dp->dir + 28);
 tm = ld_dword(dp->dir + 22);
 fno->ftime = (WORD)tm; fno->fdate = (WORD)(tm >> 16);
}
# 2574 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT create_name (
 DIR* dp,
 const TCHAR** path
)
{

 BYTE b, cf;
 WCHAR w, *lfn;
 UINT i, ni, si, di;
 const TCHAR *p;


 p = *path; lfn = dp->obj.fs->lfnbuf; si = di = 0;
 for (;;) {
  w = p[si++];
  if (w < ' ') break;
  if (w == '/' || w == '\\') {
   while (p[si] == '/' || p[si] == '\\') si++;
   break;
  }
  if (di >= 255) return FR_INVALID_NAME;

  w &= 0xFF;
  if (0) {
   b = (BYTE)p[si++];
   w = (w << 8) + b;
   if (!0) return FR_INVALID_NAME;
  }
  w = ff_convert(w, 1);
  if (!w) return FR_INVALID_NAME;

  if (w < 0x80 && chk_chr("\"*:<>\?|\x7F", w)) return FR_INVALID_NAME;
  lfn[di++] = w;
 }
 *path = &p[si];
 cf = (w < ' ') ? 0x04 : 0;
# 2621 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 while (di) {
  w = lfn[di - 1];
  if (w != ' ' && w != '.') break;
  di--;
 }
 lfn[di] = 0;
 if (di == 0) return FR_INVALID_NAME;


 mem_set(dp->fn, ' ', 11);
 for (si = 0; lfn[si] == ' ' || lfn[si] == '.'; si++) ;
 if (si) cf |= 0x01 | 0x02;
 while (di && lfn[di - 1] != '.') di--;

 i = b = 0; ni = 8;
 for (;;) {
  w = lfn[si++];
  if (!w) break;
  if (w == ' ' || (w == '.' && si != di)) {
   cf |= 0x01 | 0x02; continue;
  }

  if (i >= ni || si == di) {
   if (ni == 11) {
    cf |= 0x01 | 0x02; break;
   }
   if (si != di) cf |= 0x01 | 0x02;
   if (si > di) break;
   si = di; i = 8; ni = 11;
   b <<= 2; continue;
  }

  if (w >= 0x80) {

   w = ff_convert(w, 0);
   if (w) w = ExCvt[w - 0x80];



   cf |= 0x02;
  }

  if (0 && w >= 0x100) {
   if (i >= ni - 1) {
    cf |= 0x01 | 0x02; i = ni; continue;
   }
   dp->fn[i++] = (BYTE)(w >> 8);
  } else {
   if (!w || chk_chr("+,;=[]", w)) {
    w = '_'; cf |= 0x01 | 0x02;
   } else {
    if ((((w)>='A')&&((w)<='Z'))) {
     b |= 2;
    } else {
     if ((((w)>='a')&&((w)<='z'))) {
      b |= 1; w -= 0x20;
     }
    }
   }
  }
  dp->fn[i++] = (BYTE)w;
 }

 if (dp->fn[0] == 0xE5) dp->fn[0] = 0x05;

 if (ni == 8) b <<= 2;
 if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03) cf |= 0x02;
 if (!(cf & 0x02)) {
  if ((b & 0x03) == 0x01) cf |= 0x10;
  if ((b & 0x0C) == 0x04) cf |= 0x08;
 }

 dp->fn[11] = cf;

 return FR_OK;
# 2760 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
}
# 2769 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT follow_path (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 BYTE ns;
 _FDID *obj = &dp->obj;
 FATFS *fs = obj->fs;







 {
  while (*path == '/' || *path == '\\') path++;
  obj->sclust = 0;
 }
# 2804 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 if ((UINT)*path < ' ') {
  dp->fn[11] = 0x80;
  res = dir_sdi(dp, 0);

 } else {
  for (;;) {
   res = create_name(dp, &path);
   if (res != FR_OK) break;
   res = dir_find(dp);
   ns = dp->fn[11];
   if (res != FR_OK) {
    if (res == FR_NO_FILE) {
     if (0 && (ns & 0x20)) {
      if (!(ns & 0x04)) continue;
      dp->fn[11] = 0x80;
      res = FR_OK;
     } else {
      if (!(ns & 0x04)) res = FR_NO_PATH;
     }
    }
    break;
   }
   if (ns & 0x04) break;

   if (!(obj->attr & 0x10)) {
    res = FR_NO_PATH; break;
   }

   if (fs->fs_type == 4) {
    obj->c_scl = obj->sclust;
    obj->c_size = ((DWORD)obj->objsize & 0xFFFFFF00) | obj->stat;
    obj->c_ofs = dp->blk_ofs;
    obj->sclust = ld_dword(fs->dirbuf + 52);
    obj->stat = fs->dirbuf[33] & 2;
    obj->objsize = ld_qword(fs->dirbuf + 56);
   } else

   {
    obj->sclust = ld_clust(fs, fs->win + dp->dptr % ((UINT)512));
   }
  }
 }

 return res;
}
# 2857 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 UINT i;
 int vol = -1;
# 2873 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 if (*path) {
  for (tt = *path; (UINT)*tt >= (3 ? ' ' : '!') && *tt != ':'; tt++) ;
  if (*tt == ':') {
   tp = *path;
   i = *tp++ - '0';
   if (i < 10 && tp == tt) {
    if (i < 2) {
     vol = (int)i;
     *path = ++tt;
    }
   }
# 2900 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
   return vol;
  }



  vol = 0;

 }
 return vol;
}
# 2918 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
BYTE check_fs (
 FATFS* fs,
 DWORD sect
)
{
 fs->wflag = 0; fs->winsect = 0xFFFFFFFF;
 if (move_window(fs, sect) != FR_OK) return 4;

 if (ld_word(fs->win + 510) != 0xAA55) return 3;

 if (fs->win[0] == 0xE9 || (fs->win[0] == 0xEB && fs->win[0 + 2] == 0x90)) {
  if ((ld_dword(fs->win + 54) & 0xFFFFFF) == 0x544146) return 0;
  if (ld_dword(fs->win + 82) == 0x33544146) return 0;
 }

 if (!mem_cmp(fs->win + 0, "\xEB\x76\x90" "EXFAT   ", 11)) return 1;

 return 2;
}
# 2946 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT find_volume (
 const TCHAR** path,
 FATFS** rfs,
 BYTE mode
)
{
 BYTE fmt, *pt;
 int vol;
 DSTATUS stat;
 DWORD bsect, fasize, tsect, sysect, nclst, szbfat, br[4];
 WORD nrsv;
 FATFS *fs;
 UINT i;



 *rfs = 0;
 vol = get_ldnumber(path);
 if (vol < 0) return FR_INVALID_DRIVE;


 fs = FatFs[vol];
 if (!fs) return FR_NOT_ENABLED;

 { if (!lock_fs(fs)) return FR_TIMEOUT; };
 *rfs = fs;

 mode &= (BYTE)~0x01;
 if (fs->fs_type) {
  stat = disk_status(fs->drv);
  if (!(stat & 0x01)) {
   if (!0 && mode && (stat & 0x04)) {
    return FR_WRITE_PROTECTED;
   }
   return FR_OK;
  }
 }




 fs->fs_type = 0;
 fs->drv = (BYTE)(vol);
 stat = disk_initialize(fs->drv);
 if (stat & 0x01) {
  return FR_NOT_READY;
 }
 if (!0 && mode && (stat & 0x04)) {
  return FR_WRITE_PROTECTED;
 }





 bsect = 0;
 fmt = check_fs(fs, bsect);
 if (fmt == 2 || (fmt < 2 && 0 != 0)) {
  for (i = 0; i < 4; i++) {
   pt = fs->win + (446 + i * 16);
   br[i] = pt[4] ? ld_dword(pt + 8) : 0;
  }
  i = 0;
  if (i) i--;
  do {
   bsect = br[i];
   fmt = bsect ? check_fs(fs, bsect) : 3;
  } while (!0 && fmt >= 2 && ++i < 4);
 }
 if (fmt == 4) return FR_DISK_ERR;
 if (fmt >= 2) return FR_NO_FILESYSTEM;




 if (fmt == 1) {
  QWORD maxlba;

  for (i = 11; i < 11 + 53 && fs->win[i] == 0; i++) ;
  if (i < 11 + 53) return FR_NO_FILESYSTEM;

  if (ld_word(fs->win + 104) != 0x100) return FR_NO_FILESYSTEM;

  if (1 << fs->win[108] != ((UINT)512))
   return FR_NO_FILESYSTEM;

  maxlba = ld_qword(fs->win + 72) + bsect;
  if (maxlba >= 0x100000000) return FR_NO_FILESYSTEM;

  fs->fsize = ld_dword(fs->win + 84);

  fs->n_fats = fs->win[110];
  if (fs->n_fats != 1) return FR_NO_FILESYSTEM;

  fs->csize = 1 << fs->win[109];
  if (fs->csize == 0) return FR_NO_FILESYSTEM;

  nclst = ld_dword(fs->win + 92);
  if (nclst > 0x7FFFFFFD) return FR_NO_FILESYSTEM;
  fs->n_fatent = nclst + 2;


  fs->volbase = bsect;
  fs->database = bsect + ld_dword(fs->win + 88);
  fs->fatbase = bsect + ld_dword(fs->win + 80);
  if (maxlba < (QWORD)fs->database + nclst * fs->csize) return FR_NO_FILESYSTEM;
  fs->dirbase = ld_dword(fs->win + 96);


  if (move_window(fs, clust2sect(fs, fs->dirbase)) != FR_OK) return FR_DISK_ERR;
  for (i = 0; i < ((UINT)512); i += 32) {
   if (fs->win[i] == 0x81 && ld_dword(fs->win + i + 20) == 2) break;
  }
  if (i == ((UINT)512)) return FR_NO_FILESYSTEM;

  fs->last_clst = fs->free_clst = 0xFFFFFFFF;

  fmt = 4;
 } else

 {
  if (ld_word(fs->win + 11) != ((UINT)512)) return FR_NO_FILESYSTEM;

  fasize = ld_word(fs->win + 22);
  if (fasize == 0) fasize = ld_dword(fs->win + 36);
  fs->fsize = fasize;

  fs->n_fats = fs->win[16];
  if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;
  fasize *= fs->n_fats;

  fs->csize = fs->win[13];
  if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;

  fs->n_rootdir = ld_word(fs->win + 17);
  if (fs->n_rootdir % (((UINT)512) / 32)) return FR_NO_FILESYSTEM;

  tsect = ld_word(fs->win + 19);
  if (tsect == 0) tsect = ld_dword(fs->win + 32);

  nrsv = ld_word(fs->win + 14);
  if (nrsv == 0) return FR_NO_FILESYSTEM;


  sysect = nrsv + fasize + fs->n_rootdir / (((UINT)512) / 32);
  if (tsect < sysect) return FR_NO_FILESYSTEM;
  nclst = (tsect - sysect) / fs->csize;
  if (nclst == 0) return FR_NO_FILESYSTEM;
  fmt = 3;
  if (nclst <= 0xFFF5) fmt = 2;
  if (nclst <= 0xFF5) fmt = 1;


  fs->n_fatent = nclst + 2;
  fs->volbase = bsect;
  fs->fatbase = bsect + nrsv;
  fs->database = bsect + sysect;
  if (fmt == 3) {
   if (ld_word(fs->win + 42) != 0) return FR_NO_FILESYSTEM;
   if (fs->n_rootdir) return FR_NO_FILESYSTEM;
   fs->dirbase = ld_dword(fs->win + 44);
   szbfat = fs->n_fatent * 4;
  } else {
   if (fs->n_rootdir == 0) return FR_NO_FILESYSTEM;
   fs->dirbase = fs->fatbase + fasize;
   szbfat = (fmt == 2) ?
    fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
  }
  if (fs->fsize < (szbfat + (((UINT)512) - 1)) / ((UINT)512)) return FR_NO_FILESYSTEM;



  fs->last_clst = fs->free_clst = 0xFFFFFFFF;
  fs->fsi_flag = 0x80;

  if (fmt == 3
   && ld_word(fs->win + 48) == 1
   && move_window(fs, bsect + 1) == FR_OK)
  {
   fs->fsi_flag = 0;
   if (ld_word(fs->win + 510) == 0xAA55
    && ld_dword(fs->win + 0) == 0x41615252
    && ld_dword(fs->win + 484) == 0x61417272)
   {

    fs->free_clst = ld_dword(fs->win + 488);


    fs->last_clst = ld_dword(fs->win + 492);

   }
  }


 }

 fs->fs_type = fmt;
 fs->id = ++Fsid;
# 3157 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
 return FR_OK;
}
# 3167 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
static
FRESULT validate (
 _FDID* obj,
 FATFS** fs
)
{
 FRESULT res;


 if (!obj || !obj->fs || !obj->fs->fs_type || obj->fs->id != obj->id || (disk_status(obj->fs->drv) & 0x01)) {
  *fs = 0;
  res = FR_INVALID_OBJECT;
 } else {
  *fs = obj->fs;
  { if (!lock_fs(obj->fs)) return FR_TIMEOUT; };
  res = FR_OK;
 }
 return res;
}
# 3202 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_mount (
 FATFS* fs,
 const TCHAR* path,
 BYTE opt
)
{
 FATFS *cfs;
 int vol;
 FRESULT res;
 const TCHAR *rp = path;



 vol = get_ldnumber(&rp);
 if (vol < 0) return FR_INVALID_DRIVE;
 cfs = FatFs[vol];

 if (cfs) {




  if (!ff_del_syncobj(cfs->sobj)) return FR_INT_ERR;

  cfs->fs_type = 0;
 }

 if (fs) {
  fs->fs_type = 0;

  if (!ff_cre_syncobj((BYTE)vol, &fs->sobj)) return FR_INT_ERR;

 }
 FatFs[vol] = fs;

 if (!fs || opt != 1) return FR_OK;

 res = find_volume(&path, &fs, 0);
 { unlock_fs(fs, res); return res; };
}
# 3250 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_open (
 FIL* fp,
 const TCHAR* path,
 BYTE mode
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;

 DWORD dw, cl, bcs, clst, sc;
 FSIZE_t ofs;

 WCHAR *lfn;


 if (!fp) return FR_INVALID_OBJECT;


 mode &= 0 ? 0x01 : 0x01 | 0x02 | 0x08 | 0x04 | 0x10 | 0x30 | 0x20;
 res = find_volume(&path, &fs, mode);
 if (res == FR_OK) {
  dj.obj.fs = fs;
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(&dj, path);

  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   }





  }

  if (mode & (0x08 | 0x10 | 0x04)) {
   if (res != FR_OK) {
    if (res == FR_NO_FILE)



     res = dir_register(&dj);

    mode |= 0x08;
   }
   else {
    if (dj.obj.attr & (0x01 | 0x10)) {
     res = FR_DENIED;
    } else {
     if (mode & 0x04) res = FR_EXIST;
    }
   }
   if (res == FR_OK && (mode & 0x08)) {
    dw = get_fattime();

    if (fs->fs_type == 4) {

     fp->obj.fs = fs;
     fp->obj.sclust = ld_dword(fs->dirbuf + 52);
     fp->obj.objsize = ld_qword(fs->dirbuf + 56);
     fp->obj.stat = fs->dirbuf[33] & 2;

     st_dword(fs->dirbuf + 8, dw);
     fs->dirbuf[20] = 0;
     st_dword(fs->dirbuf + 12, dw);
     fs->dirbuf[21] = 0;
     fs->dirbuf[4] = 0x20;
     st_dword(fs->dirbuf + 52, 0);
     st_qword(fs->dirbuf + 56, 0);
     st_qword(fs->dirbuf + 40, 0);
     fs->dirbuf[33] = 1;
     res = store_xdir(&dj);
     if (res == FR_OK && fp->obj.sclust) {
      res = remove_chain(&fp->obj, fp->obj.sclust, 0);
      fs->last_clst = fp->obj.sclust - 1;
     }
    } else

    {

     st_dword(dj.dir + 14, dw);
     st_dword(dj.dir + 22, dw);
     dj.dir[11] = 0x20;
     cl = ld_clust(fs, dj.dir);
     st_clust(fs, dj.dir, 0);
     st_dword(dj.dir + 28, 0);
     fs->wflag = 1;

     if (cl) {
      dw = fs->winsect;
      res = remove_chain(&dj.obj, cl, 0);
      if (res == FR_OK) {
       res = move_window(fs, dw);
       fs->last_clst = cl - 1;
      }
     }
    }
   }
  }
  else {
   if (res == FR_OK) {
    if (dj.obj.attr & 0x10) {
     res = FR_NO_FILE;
    } else {
     if ((mode & 0x02) && (dj.obj.attr & 0x01)) {
      res = FR_DENIED;
     }
    }
   }
  }
  if (res == FR_OK) {
   if (mode & 0x08)
    mode |= 0x40;
   fp->dir_sect = fs->winsect;
   fp->dir_ptr = dj.dir;




  }
# 3384 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
  if (res == FR_OK) {

   if (fs->fs_type == 4) {
    fp->obj.sclust = ld_dword(fs->dirbuf + 52);
    fp->obj.objsize = ld_qword(fs->dirbuf + 56);
    fp->obj.stat = fs->dirbuf[33] & 2;
    fp->obj.c_scl = dj.obj.sclust;
    fp->obj.c_size = ((DWORD)dj.obj.objsize & 0xFFFFFF00) | dj.obj.stat;
    fp->obj.c_ofs = dj.blk_ofs;
   } else

   {
    fp->obj.sclust = ld_clust(fs, dj.dir);
    fp->obj.objsize = ld_dword(dj.dir + 28);
   }

   fp->cltbl = 0;

   fp->obj.fs = fs;
   fp->obj.id = fs->id;
   fp->flag = mode;
   fp->err = 0;
   fp->sect = 0;
   fp->fptr = 0;


   mem_set(fp->buf, 0, 512);

   if ((mode & 0x20) && fp->obj.objsize > 0) {
    fp->fptr = fp->obj.objsize;
    bcs = (DWORD)fs->csize * ((UINT)512);
    clst = fp->obj.sclust;
    for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
     clst = get_fat(&fp->obj, clst);
     if (clst <= 1) res = FR_INT_ERR;
     if (clst == 0xFFFFFFFF) res = FR_DISK_ERR;
    }
    fp->clust = clst;
    if (res == FR_OK && ofs % ((UINT)512)) {
     if ((sc = clust2sect(fs, clst)) == 0) {
      res = FR_INT_ERR;
     } else {
      fp->sect = sc + (DWORD)(ofs / ((UINT)512));

      if (disk_read(fs->drv, fp->buf, fp->sect, 1) != RES_OK) res = FR_DISK_ERR;

     }
    }
   }

  }

  ff_memfree(lfn);
 }

 if (res != FR_OK) fp->obj.fs = 0;

 { unlock_fs(fs, res); return res; };
}
# 3451 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT __attribute__((section(".fast"))) f_read (
 FIL* fp,
 void* buff,
 UINT btr,
 UINT* br
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 FSIZE_t remain;
 UINT rcnt, cc, csect;
 BYTE *rbuff = (BYTE*)buff;


 *br = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x01)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };
 remain = fp->obj.objsize - fp->fptr;
 if (btr > remain) btr = (UINT)remain;

 for ( ; btr;
  rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
  if (fp->fptr % ((UINT)512) == 0) {
   csect = (UINT)(fp->fptr / ((UINT)512) & (fs->csize - 1));
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
    } else {

     if (fp->cltbl) {
      clst = clmt_clust(fp, fp->fptr);
     } else

     {
      clst = get_fat(&fp->obj, fp->clust);
     }
    }
    if (clst < 2) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->clust = clst;
   }
   sect = clust2sect(fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
   sect += csect;
   cc = btr / ((UINT)512);
   if (cc) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (disk_read(fs->drv, rbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };






    if ((fp->flag & 0x80) && fp->sect - sect < cc) {
     mem_cpy(rbuff + ((fp->sect - sect) * ((UINT)512)), fp->buf, ((UINT)512));
    }


    rcnt = ((UINT)512) * cc;
    continue;
   }

   if (fp->sect != sect) {

    if (fp->flag & 0x80) {
     if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     fp->flag &= (BYTE)~0x80;
    }

    if (disk_read(fs->drv, fp->buf, sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
   }

   fp->sect = sect;
  }
  rcnt = ((UINT)512) - (UINT)fp->fptr % ((UINT)512);
  if (rcnt > btr) rcnt = btr;




  mem_cpy(rbuff, fp->buf + fp->fptr % ((UINT)512), rcnt);

 }

 { unlock_fs(fs, FR_OK); return FR_OK; };
}
# 3551 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT __attribute__((section(".fast"))) f_write (
 FIL* fp,
 const void* buff,
 UINT btw,
 UINT* bw
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, sect;
 UINT wcnt, cc, csect;
 const BYTE *wbuff = (const BYTE*)buff;


 *bw = 0;
 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x02)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };


 if ((!1 || fs->fs_type != 4) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
  btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
 }

 for ( ; btw;
  wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize, *bw += wcnt, btw -= wcnt) {
  if (fp->fptr % ((UINT)512) == 0) {
   csect = (UINT)(fp->fptr / ((UINT)512)) & (fs->csize - 1);
   if (csect == 0) {
    if (fp->fptr == 0) {
     clst = fp->obj.sclust;
     if (clst == 0) {
      clst = create_chain(&fp->obj, 0);
     }
    } else {

     if (fp->cltbl) {
      clst = clmt_clust(fp, fp->fptr);
     } else

     {
      clst = create_chain(&fp->obj, fp->clust);
     }
    }
    if (clst == 0) break;
    if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->clust = clst;
    if (fp->obj.sclust == 0) fp->obj.sclust = clst;
   }



   if (fp->flag & 0x80) {
    if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->flag &= (BYTE)~0x80;
   }

   sect = clust2sect(fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
   sect += csect;
   cc = btw / ((UINT)512);
   if (cc) {
    if (csect + cc > fs->csize) {
     cc = fs->csize - csect;
    }
    if (disk_write(fs->drv, wbuff, sect, cc) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };







    if (fp->sect - sect < cc) {
     mem_cpy(fp->buf, wbuff + ((fp->sect - sect) * ((UINT)512)), ((UINT)512));
     fp->flag &= (BYTE)~0x80;
    }


    wcnt = ((UINT)512) * cc;
    continue;
   }






   if (fp->sect != sect &&
    fp->fptr < fp->obj.objsize &&
    disk_read(fs->drv, fp->buf, sect, 1) != RES_OK) {
     { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
   }

   fp->sect = sect;
  }
  wcnt = ((UINT)512) - (UINT)fp->fptr % ((UINT)512);
  if (wcnt > btw) wcnt = btw;





  mem_cpy(fp->buf + fp->fptr % ((UINT)512), wbuff, wcnt);
  fp->flag |= 0x80;

 }

 fp->flag |= 0x40;

 { unlock_fs(fs, FR_OK); return FR_OK; };
}
# 3672 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_sync (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;
 DWORD tm;
 BYTE *dir;

    WCHAR *lfn;


 res = validate(&fp->obj, &fs);
 if (res == FR_OK) {
  if (fp->flag & 0x40) {

   if (fp->flag & 0x80) {
    if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; };
    fp->flag &= (BYTE)~0x80;
   }


   tm = get_fattime();

   if (fs->fs_type == 4) {
    res = fill_fat_chain(&fp->obj);
    if (res == FR_OK) {
     DIR dj;

     { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
     res = load_obj_dir(&dj, &fp->obj);
     if (res == FR_OK) {
      fs->dirbuf[4] |= 0x20;
      fs->dirbuf[33] = fp->obj.stat | 1;
      st_dword(fs->dirbuf + 52, fp->obj.sclust);
      st_qword(fs->dirbuf + 56, fp->obj.objsize);
      st_qword(fs->dirbuf + 40, fp->obj.objsize);
      st_dword(fs->dirbuf + 12, tm);
      fs->dirbuf[21] = 0;
      st_dword(fs->dirbuf + 16, 0);
      res = store_xdir(&dj);
      if (res == FR_OK) {
       res = sync_fs(fs);
       fp->flag &= (BYTE)~0x40;
      }
     }
     ff_memfree(lfn);
    }
   } else

   {
    res = move_window(fs, fp->dir_sect);
    if (res == FR_OK) {
     dir = fp->dir_ptr;
     dir[11] |= 0x20;
     st_clust(fp->obj.fs, dir, fp->obj.sclust);
     st_dword(dir + 28, (DWORD)fp->obj.objsize);
     st_dword(dir + 22, tm);
     st_word(dir + 18, 0);
     fs->wflag = 1;
     res = sync_fs(fs);
     fp->flag &= (BYTE)~0x40;
    }
   }
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 3751 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_close (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;


 res = f_sync(fp);
 if (res == FR_OK)

 {
  res = validate(&fp->obj, &fs);
  if (res == FR_OK) {




   {
    fp->obj.fs = 0;
   }

   unlock_fs(fs, FR_OK);

  }
 }
 return res;
}
# 3939 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_lseek (
 FIL* fp,
 FSIZE_t ofs
)
{
 FRESULT res;
 FATFS *fs;
 DWORD clst, bcs, nsect;
 FSIZE_t ifptr;

 DWORD cl, pcl, ncl, tcl, dsc, tlen, ulen, *tbl;


 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };

 if (fp->cltbl) {
  if (ofs == ((FSIZE_t)0 - 1)) {
   tbl = fp->cltbl;
   tlen = *tbl++; ulen = 2;
   cl = fp->obj.sclust;
   if (cl) {
    do {

     tcl = cl; ncl = 0; ulen += 2;
     do {
      pcl = cl; ncl++;
      cl = get_fat(&fp->obj, cl);
      if (cl <= 1) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
      if (cl == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     } while (cl == pcl + 1);
     if (ulen <= tlen) {
      *tbl++ = ncl; *tbl++ = tcl;
     }
    } while (cl < fs->n_fatent);
   }
   *fp->cltbl = ulen;
   if (ulen <= tlen) {
    *tbl = 0;
   } else {
    res = FR_NOT_ENOUGH_CORE;
   }
  } else {
   if (ofs > fp->obj.objsize) ofs = fp->obj.objsize;
   fp->fptr = ofs;
   if (ofs) {
    fp->clust = clmt_clust(fp, ofs - 1);
    dsc = clust2sect(fs, fp->clust);
    if (!dsc) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
    dsc += (DWORD)((ofs - 1) / ((UINT)512)) & (fs->csize - 1);
    if (fp->fptr % ((UINT)512) && dsc != fp->sect) {


     if (fp->flag & 0x80) {
      if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
      fp->flag &= (BYTE)~0x80;
     }

     if (disk_read(fs->drv, fp->buf, dsc, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };

     fp->sect = dsc;
    }
   }
  }
 } else



 {

  if (fs->fs_type != 4 && ofs >= 0x100000000) ofs = 0xFFFFFFFF;

  if (ofs > fp->obj.objsize && (0 || !(fp->flag & 0x02))) {
   ofs = fp->obj.objsize;
  }
  ifptr = fp->fptr;
  fp->fptr = nsect = 0;
  if (ofs) {
   bcs = (DWORD)fs->csize * ((UINT)512);
   if (ifptr > 0 &&
    (ofs - 1) / bcs >= (ifptr - 1) / bcs) {
    fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);
    ofs -= fp->fptr;
    clst = fp->clust;
   } else {
    clst = fp->obj.sclust;

    if (clst == 0) {
     clst = create_chain(&fp->obj, 0);
     if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     fp->obj.sclust = clst;
    }

    fp->clust = clst;
   }
   if (clst != 0) {
    while (ofs > bcs) {
     ofs -= bcs; fp->fptr += bcs;

     if (fp->flag & 0x02) {
      if (1 && fp->fptr > fp->obj.objsize) {
       fp->obj.objsize = fp->fptr;
       fp->flag |= 0x40;
      }
      clst = create_chain(&fp->obj, clst);
      if (clst == 0) {
       ofs = 0; break;
      }
     } else

     {
      clst = get_fat(&fp->obj, clst);
     }
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
     if (clst <= 1 || clst >= fs->n_fatent) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     fp->clust = clst;
    }
    fp->fptr += ofs;
    if (ofs % ((UINT)512)) {
     nsect = clust2sect(fs, clst);
     if (!nsect) { fp->err = (BYTE)(FR_INT_ERR); { unlock_fs(fs, FR_INT_ERR); return FR_INT_ERR; }; };
     nsect += (DWORD)(ofs / ((UINT)512));
    }
   }
  }
  if (!0 && fp->fptr > fp->obj.objsize) {
   fp->obj.objsize = fp->fptr;
   fp->flag |= 0x40;
  }
  if (fp->fptr % ((UINT)512) && nsect != fp->sect) {


   if (fp->flag & 0x80) {
    if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };
    fp->flag &= (BYTE)~0x80;
   }

   if (disk_read(fs->drv, fp->buf, nsect, 1) != RES_OK) { fp->err = (BYTE)(FR_DISK_ERR); { unlock_fs(fs, FR_DISK_ERR); return FR_DISK_ERR; }; };

   fp->sect = nsect;
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 4093 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_opendir (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 FATFS *fs;
 _FDID *obj;
 WCHAR *lfn;


 if (!dp) return FR_INVALID_OBJECT;


 obj = &dp->obj;
 res = find_volume(&path, &fs, 0);
 if (res == FR_OK) {
  obj->fs = fs;
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(dp, path);
  if (res == FR_OK) {
   if (!(dp->fn[11] & 0x80)) {
    if (obj->attr & 0x10) {

     if (fs->fs_type == 4) {
      obj->c_scl = obj->sclust;
      obj->c_size = ((DWORD)obj->objsize & 0xFFFFFF00) | obj->stat;
      obj->c_ofs = dp->blk_ofs;
      obj->sclust = ld_dword(fs->dirbuf + 52);
      obj->objsize = ld_qword(fs->dirbuf + 56);
      obj->stat = fs->dirbuf[33] & 2;
     } else

     {
      obj->sclust = ld_clust(fs, dp->dir);
     }
    } else {
     res = FR_NO_PATH;
    }
   }
   if (res == FR_OK) {
    obj->id = fs->id;
    res = dir_sdi(dp, 0);
# 4146 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
   }
  }
  ff_memfree(lfn);
  if (res == FR_NO_FILE) res = FR_NO_PATH;
 }
 if (res != FR_OK) obj->fs = 0;

 { unlock_fs(fs, res); return res; };
}
# 4163 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_closedir (
 DIR *dp
)
{
 FRESULT res;
 FATFS *fs;


 res = validate(&dp->obj, &fs);
 if (res == FR_OK) {






  {
   dp->obj.fs = 0;
  }

  unlock_fs(fs, FR_OK);

 }
 return res;
}
# 4196 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_readdir (
 DIR* dp,
 FILINFO* fno
)
{
 FRESULT res;
 FATFS *fs;
 WCHAR *lfn;


 res = validate(&dp->obj, &fs);
 if (res == FR_OK) {
  if (!fno) {
   res = dir_sdi(dp, 0);
  } else {
   { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
   res = dir_read(dp, 0);
   if (res == FR_NO_FILE) res = FR_OK;
   if (res == FR_OK) {
    get_fileinfo(dp, fno);
    res = dir_next(dp, 0);
    if (res == FR_NO_FILE) res = FR_OK;
   }
   ff_memfree(lfn);
  }
 }
 { unlock_fs(fs, res); return res; };
}

FRESULT f_seekdir(
 DIR *dj,
 int offset
)
{
 int i = 0;

 if (dir_sdi(dj, 0) != FR_OK || offset < 0)
  return FR_INT_ERR;

 while(i < offset)
 {
  if(dir_read(dj, 0) != FR_OK || dir_next(dj, 0) != FR_OK)
   return FR_INT_ERR;
  i++;
 }
 return FR_OK;
}
# 4301 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_stat (
 const TCHAR* path,
 FILINFO* fno
)
{
 FRESULT res;
 DIR dj;
 WCHAR *lfn;



 res = find_volume(&path, &dj.obj.fs, 0);
 if (res == FR_OK) {
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(dj.obj.fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (dj.obj.fs)->lfnbuf = lfn; (dj.obj.fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(&dj, path);
  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   } else {
    if (fno) get_fileinfo(&dj, fno);
   }
  }
  ff_memfree(lfn);
 }

 { unlock_fs(dj.obj.fs, res); return res; };
}
# 4336 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_getfree (
 const TCHAR* path,
 DWORD* nclst,
 FATFS** fatfs
)
{
 FRESULT res;
 FATFS *fs;
 DWORD nfree, clst, sect, stat;
 UINT i;
 BYTE *p;
 _FDID obj;



 res = find_volume(&path, &fs, 0);
 if (res == FR_OK) {
  *fatfs = fs;

  if (fs->free_clst <= fs->n_fatent - 2) {
   *nclst = fs->free_clst;
  } else {

   nfree = 0;
   if (fs->fs_type == 1) {
    clst = 2; obj.fs = fs;
    do {
     stat = get_fat(&obj, clst);
     if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
     if (stat == 1) { res = FR_INT_ERR; break; }
     if (stat == 0) nfree++;
    } while (++clst < fs->n_fatent);
   } else {

    if (fs->fs_type == 4) {
     BYTE bm;
     UINT b;

     clst = fs->n_fatent - 2;
     sect = fs->database;
     i = 0;
     do {
      if (i == 0 && (res = move_window(fs, sect++)) != FR_OK) break;
      for (b = 8, bm = fs->win[i]; b && clst; b--, clst--) {
       if (!(bm & 1)) nfree++;
       bm >>= 1;
      }
      i = (i + 1) % ((UINT)512);
     } while (clst);
    } else

    {
     clst = fs->n_fatent; sect = fs->fatbase;
     i = 0; p = 0;
     do {
      if (i == 0) {
       res = move_window(fs, sect++);
       if (res != FR_OK) break;
       p = fs->win;
       i = ((UINT)512);
      }
      if (fs->fs_type == 2) {
       if (ld_word(p) == 0) nfree++;
       p += 2; i -= 2;
      } else {
       if ((ld_dword(p) & 0x0FFFFFFF) == 0) nfree++;
       p += 4; i -= 4;
      }
     } while (--clst);
    }
   }
   *nclst = nfree;
   fs->free_clst = nfree;
   fs->fsi_flag |= 1;
  }
 }

 { unlock_fs(fs, res); return res; };
}
# 4423 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_truncate (
 FIL* fp
)
{
 FRESULT res;
 FATFS *fs;
 DWORD ncl;


 res = validate(&fp->obj, &fs);
 if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) { unlock_fs(fs, res); return res; };
 if (!(fp->flag & 0x02)) { unlock_fs(fs, FR_DENIED); return FR_DENIED; };

 if (fp->obj.objsize > fp->fptr) {
  if (fp->fptr == 0) {
   res = remove_chain(&fp->obj, fp->obj.sclust, 0);
   fp->obj.sclust = 0;
  } else {
   ncl = get_fat(&fp->obj, fp->clust);
   res = FR_OK;
   if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
   if (ncl == 1) res = FR_INT_ERR;
   if (res == FR_OK && ncl < fs->n_fatent) {
    res = remove_chain(&fp->obj, ncl, fp->clust);
   }
  }
  fp->obj.objsize = fp->fptr;
  fp->flag |= 0x40;

  if (res == FR_OK && (fp->flag & 0x80)) {
   if (disk_write(fs->drv, fp->buf, fp->sect, 1) != RES_OK) {
    res = FR_DISK_ERR;
   } else {
    fp->flag &= (BYTE)~0x80;
   }
  }

  if (res != FR_OK) { fp->err = (BYTE)(res); { unlock_fs(fs, res); return res; }; };
 }

 { unlock_fs(fs, res); return res; };
}
# 4473 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_unlink (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj, sdj;
 DWORD dclst = 0;
 FATFS *fs;

 _FDID obj;

 WCHAR *lfn;



 res = find_volume(&path, &fs, 0x02);
 dj.obj.fs = fs;
 if (res == FR_OK) {
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(&dj, path);
  if (0 && res == FR_OK && (dj.fn[11] & 0x20)) {
   res = FR_INVALID_NAME;
  }



  if (res == FR_OK) {
   if (dj.fn[11] & 0x80) {
    res = FR_INVALID_NAME;
   } else {
    if (dj.obj.attr & 0x01) {
     res = FR_DENIED;
    }
   }
   if (res == FR_OK) {

    obj.fs = fs;
    if (fs->fs_type == 4) {
     obj.sclust = dclst = ld_dword(fs->dirbuf + 52);
     obj.objsize = ld_qword(fs->dirbuf + 56);
     obj.stat = fs->dirbuf[33] & 2;
    } else

    {
     dclst = ld_clust(fs, dj.dir);
    }
    if (dj.obj.attr & 0x10) {





     {
      sdj.obj.fs = fs;
      sdj.obj.sclust = dclst;

      if (fs->fs_type == 4) {
       sdj.obj.objsize = obj.objsize;
       sdj.obj.stat = obj.stat;
      }

      res = dir_sdi(&sdj, 0);
      if (res == FR_OK) {
       res = dir_read(&sdj, 0);
       if (res == FR_OK) res = FR_DENIED;
       if (res == FR_NO_FILE) res = FR_OK;
      }
     }
    }
   }
   if (res == FR_OK) {
    res = dir_remove(&dj);
    if (res == FR_OK && dclst) {

     res = remove_chain(&obj, dclst, 0);



    }
    if (res == FR_OK) res = sync_fs(fs);
   }
  }
  ff_memfree(lfn);
 }

 { unlock_fs(fs, res); return res; };
}
# 4568 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_mkdir (
 const TCHAR* path
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;
 BYTE *dir;
 UINT n;
 DWORD dsc, dcl, pcl, tm;
 WCHAR *lfn;



 res = find_volume(&path, &fs, 0x02);
 dj.obj.fs = fs;
 if (res == FR_OK) {
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(&dj, path);
  if (res == FR_OK) res = FR_EXIST;
  if (0 && res == FR_NO_FILE && (dj.fn[11] & 0x20)) {
   res = FR_INVALID_NAME;
  }
  if (res == FR_NO_FILE) {
   dcl = create_chain(&dj.obj, 0);
   dj.obj.objsize = (DWORD)fs->csize * ((UINT)512);
   res = FR_OK;
   if (dcl == 0) res = FR_DENIED;
   if (dcl == 1) res = FR_INT_ERR;
   if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
   if (res == FR_OK) res = sync_window(fs);
   tm = get_fattime();
   if (res == FR_OK) {
    dsc = clust2sect(fs, dcl);
    dir = fs->win;
    mem_set(dir, 0, ((UINT)512));
    if (!1 || fs->fs_type != 4) {
     mem_set(dir + 0, ' ', 11);
     dir[0] = '.';
     dir[11] = 0x10;
     st_dword(dir + 22, tm);
     st_clust(fs, dir, dcl);
     mem_cpy(dir + 32, dir, 32);
     dir[32 + 1] = '.'; pcl = dj.obj.sclust;
     if (fs->fs_type == 3 && pcl == fs->dirbase) pcl = 0;
     st_clust(fs, dir + 32, pcl);
    }
    for (n = fs->csize; n; n--) {
     fs->winsect = dsc++;
     fs->wflag = 1;
     res = sync_window(fs);
     if (res != FR_OK) break;
     mem_set(dir, 0, ((UINT)512));
    }
   }
   if (res == FR_OK) res = dir_register(&dj);
   if (res == FR_OK) {

    if (fs->fs_type == 4) {
     st_dword(fs->dirbuf + 12, tm);
     st_dword(fs->dirbuf + 52, dcl);
     st_dword(fs->dirbuf + 56, (DWORD)dj.obj.objsize);
     st_dword(fs->dirbuf + 40, (DWORD)dj.obj.objsize);
     fs->dirbuf[33] = 3;
     fs->dirbuf[4] = 0x10;
     res = store_xdir(&dj);
    } else

    {
     dir = dj.dir;
     st_dword(dir + 22, tm);
     st_clust(fs, dir, dcl);
     dir[11] = 0x10;
     fs->wflag = 1;
    }
    if (res == FR_OK) res = sync_fs(fs);
   } else {
    remove_chain(&dj.obj, dcl, 0);
   }
  }
  ff_memfree(lfn);
 }

 { unlock_fs(fs, res); return res; };
}
# 4661 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_rename (
 const TCHAR* path_old,
 const TCHAR* path_new
)
{
 FRESULT res;
 DIR djo, djn;
 FATFS *fs;
 BYTE buf[1 ? 32 * 2 : 24], *dir;
 DWORD dw;
 WCHAR *lfn;


 get_ldnumber(&path_new);
 res = find_volume(&path_old, &fs, 0x02);
 if (res == FR_OK) {
  djo.obj.fs = fs;
  { lfn = ff_memalloc((255 +1)*2 + 32*19); if (!lfn) { unlock_fs(fs, FR_NOT_ENOUGH_CORE); return FR_NOT_ENOUGH_CORE; }; (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+255 +1); };
  res = follow_path(&djo, path_old);
  if (res == FR_OK && (djo.fn[11] & (0x20 | 0x80))) res = FR_INVALID_NAME;



  if (res == FR_OK) {

   if (fs->fs_type == 4) {
    BYTE nf, nn;
    WORD nh;

    mem_cpy(buf, fs->dirbuf, 32 * 2);
    mem_cpy(&djn, &djo, sizeof djo);
    res = follow_path(&djn, path_new);
    if (res == FR_OK) {
     res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
    }
    if (res == FR_NO_FILE) {
     res = dir_register(&djn);
     if (res == FR_OK) {
      nf = fs->dirbuf[1]; nn = fs->dirbuf[35];
      nh = ld_word(fs->dirbuf + 36);
      mem_cpy(fs->dirbuf, buf, 32 * 2);
      fs->dirbuf[1] = nf; fs->dirbuf[35] = nn;
      st_word(fs->dirbuf + 36, nh);

      res = store_xdir(&djn);
     }
    }
   } else

   {
    mem_cpy(buf, djo.dir + 11, 21);
    mem_cpy(&djn, &djo, sizeof (DIR));
    res = follow_path(&djn, path_new);
    if (res == FR_OK) {
     res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
    }
    if (res == FR_NO_FILE) {
     res = dir_register(&djn);
     if (res == FR_OK) {
      dir = djn.dir;
      mem_cpy(dir + 13, buf + 2, 19);
      dir[11] = buf[0] | 0x20;
      fs->wflag = 1;
      if ((dir[11] & 0x10) && djo.obj.sclust != djn.obj.sclust) {
       dw = clust2sect(fs, ld_clust(fs, dir));
       if (!dw) {
        res = FR_INT_ERR;
       } else {

        res = move_window(fs, dw);
        dir = fs->win + 32 * 1;
        if (res == FR_OK && dir[1] == '.') {
         st_clust(fs, dir, djn.obj.sclust);
         fs->wflag = 1;
        }
       }
      }
     }
    }
   }
   if (res == FR_OK) {
    res = dir_remove(&djo);
    if (res == FR_OK) {
     res = sync_fs(fs);
    }
   }

  }
  ff_memfree(lfn);
 }

 { unlock_fs(fs, res); return res; };
}
# 5234 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
FRESULT f_mkfs (
 const TCHAR* path,
 BYTE opt,
 DWORD au,
 void* work,
 UINT len
)
{
 const UINT n_fats = 1;
 const UINT n_rootdir = 512;
 static const WORD cst[] = {1, 4, 16, 64, 256, 512, 0};
 static const WORD cst32[] = {1, 2, 4, 8, 16, 32, 0};
 BYTE fmt, sys, *buf, *pte, pdrv, part;
 WORD ss;
 DWORD szb_buf, sz_buf, sz_blk, n_clst, pau, sect, nsect, n;
 DWORD b_vol, b_fat, b_data;
 DWORD sz_vol, sz_rsv, sz_fat, sz_dir;
 UINT i;
 int vol;
 DSTATUS stat;

 DWORD tbl[3];




 vol = get_ldnumber(&path);
 if (vol < 0) return FR_INVALID_DRIVE;
 if (FatFs[vol]) FatFs[vol]->fs_type = 0;
 pdrv = (BYTE)(vol);
 part = 0;


 stat = disk_initialize(pdrv);
 if (stat & 0x01) return FR_NOT_READY;
 if (stat & 0x04) return FR_WRITE_PROTECTED;
 if (disk_ioctl(pdrv, 3, &sz_blk) != RES_OK || !sz_blk || sz_blk > 32768 || (sz_blk & (sz_blk - 1))) sz_blk = 1;




 ss = 512;

 if ((au != 0 && au < ss) || au > 0x1000000 || (au & (au - 1))) return FR_INVALID_PARAMETER;
 au /= ss;


 buf = (BYTE*)work;
 sz_buf = len / ss;
 szb_buf = sz_buf * ss;
 if (!szb_buf) return FR_MKFS_ABORTED;


 if (0 && part != 0) {

  if (disk_read(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  if (ld_word(buf + 510) != 0xAA55) return FR_MKFS_ABORTED;
  pte = buf + (446 + (part - 1) * 16);
  if (!pte[4]) return FR_MKFS_ABORTED;
  b_vol = ld_dword(pte + 8);
  sz_vol = ld_dword(pte + 12);
 } else {

  if (disk_ioctl(pdrv, 1, &sz_vol) != RES_OK) return FR_DISK_ERR;
  b_vol = (opt & 0x08) ? 0 : 63;
  if (sz_vol < b_vol) return FR_MKFS_ABORTED;
  sz_vol -= b_vol;
 }
 if (sz_vol < 128) return FR_MKFS_ABORTED;


 do {
  if (1 && (opt & 0x04)) {
   if ((opt & 0x07) == 0x04 || sz_vol >= 0x4000000 || au > 128) {
    fmt = 4; break;
   }
  }
  if (au > 128) return FR_INVALID_PARAMETER;
  if (opt & 0x02) {
   if ((opt & 0x07) == 0x02 || !(opt & 0x01)) {
    fmt = 3; break;
   }
  }
  if (!(opt & 0x01)) return FR_INVALID_PARAMETER;
  fmt = 2;
 } while (0);


 if (fmt == 4) {
  DWORD szb_bit, szb_case, sum, nb, cl;
  WCHAR ch, si;
  UINT j, st;
  BYTE b;

  if (sz_vol < 0x1000) return FR_MKFS_ABORTED;





  if (!au) {
   au = 8;
   if (sz_vol >= 0x80000) au = 64;
   if (sz_vol >= 0x4000000) au = 256;
  }
  b_fat = b_vol + 32;
  sz_fat = ((sz_vol / au + 2) * 4 + ss - 1) / ss;
  b_data = (b_fat + sz_fat + sz_blk - 1) & ~(sz_blk - 1);
  if (b_data >= sz_vol / 2) return FR_MKFS_ABORTED;
  n_clst = (sz_vol - (b_data - b_vol)) / au;
  if (n_clst <16) return FR_MKFS_ABORTED;
  if (n_clst > 0x7FFFFFFD) return FR_MKFS_ABORTED;

  szb_bit = (n_clst + 7) / 8;
  tbl[0] = (szb_bit + au * ss - 1) / (au * ss);


  sect = b_data + au * tbl[0];
  sum = 0;
  st = si = i = j = szb_case = 0;
  do {
   switch (st) {
   case 0:
    ch = ff_wtoupper(si);
    if (ch != si) {
     si++; break;
    }
    for (j = 1; (WCHAR)(si + j) && (WCHAR)(si + j) == ff_wtoupper((WCHAR)(si + j)); j++) ;
    if (j >= 128) {
     ch = 0xFFFF; st = 2; break;
    }
    st = 1;

   case 1:
    ch = si++;
    if (--j == 0) st = 0;
    break;
   default:
    ch = (WCHAR)j; si += j;
    st = 0;
   }
   sum = xsum32(buf[i + 0] = (BYTE)ch, sum);
   sum = xsum32(buf[i + 1] = (BYTE)(ch >> 8), sum);
   i += 2; szb_case += 2;
   if (!si || i == szb_buf) {
    n = (i + ss - 1) / ss;
    if (disk_write(pdrv, buf, sect, n) != RES_OK) return FR_DISK_ERR;
    sect += n; i = 0;
   }
  } while (si);
  tbl[1] = (szb_case + au * ss - 1) / (au * ss);
  tbl[2] = 1;


  sect = b_data; nsect = (szb_bit + ss - 1) / ss;
  nb = tbl[0] + tbl[1] + tbl[2];
  do {
   mem_set(buf, 0, szb_buf);
   for (i = 0; nb >= 8 && i < szb_buf; buf[i++] = 0xFF, nb -= 8) ;
   for (b = 1; nb && i < szb_buf; buf[i] |= b, b <<= 1, nb--) ;
   n = (nsect > sz_buf) ? sz_buf : nsect;
   if (disk_write(pdrv, buf, sect, n) != RES_OK) return FR_DISK_ERR;
   sect += n; nsect -= n;
  } while (nsect);


  sect = b_fat; nsect = sz_fat;
  j = nb = cl = 0;
  do {
   mem_set(buf, 0, szb_buf); i = 0;
   if (cl == 0) {
    st_dword(buf + i, 0xFFFFFFF8); i += 4; cl++;
    st_dword(buf + i, 0xFFFFFFFF); i += 4; cl++;
   }
   do {
    while (nb && i < szb_buf) {
     st_dword(buf + i, (nb > 1) ? cl + 1 : 0xFFFFFFFF);
     i += 4; cl++; nb--;
    }
    if (!nb && j < 3) nb = tbl[j++];
   } while (nb && i < szb_buf);
   n = (nsect > sz_buf) ? sz_buf : nsect;
   if (disk_write(pdrv, buf, sect, n) != RES_OK) return FR_DISK_ERR;
   sect += n; nsect -= n;
  } while (nsect);


  mem_set(buf, 0, szb_buf);
  buf[32 * 0 + 0] = 0x83;
  buf[32 * 1 + 0] = 0x81;
  st_dword(buf + 32 * 1 + 20, 2);
  st_dword(buf + 32 * 1 + 24, szb_bit);
  buf[32 * 2 + 0] = 0x82;
  st_dword(buf + 32 * 2 + 4, sum);
  st_dword(buf + 32 * 2 + 20, 2 + tbl[0]);
  st_dword(buf + 32 * 2 + 24, szb_case);
  sect = b_data + au * (tbl[0] + tbl[1]); nsect = au;
  do {
   n = (nsect > sz_buf) ? sz_buf : nsect;
   if (disk_write(pdrv, buf, sect, n) != RES_OK) return FR_DISK_ERR;
   mem_set(buf, 0, ss);
   sect += n; nsect -= n;
  } while (nsect);


  sect = b_vol;
  for (n = 0; n < 2; n++) {

   mem_set(buf, 0, ss);
   mem_cpy(buf + 0, "\xEB\x76\x90" "EXFAT   ", 11);
   st_dword(buf + 64, b_vol);
   st_dword(buf + 72, sz_vol);
   st_dword(buf + 80, b_fat - b_vol);
   st_dword(buf + 84, sz_fat);
   st_dword(buf + 88, b_data - b_vol);
   st_dword(buf + 92, n_clst);
   st_dword(buf + 96, 2 + tbl[0] + tbl[1]);
   st_dword(buf + 100, get_fattime());
   st_word(buf + 104, 0x100);
   for (buf[108] = 0, i = ss; i >>= 1; buf[108]++) ;
   for (buf[109] = 0, i = au; i >>= 1; buf[109]++) ;
   buf[110] = 1;
   buf[111] = 0x80;
   st_word(buf + 120, 0xFEEB);
   st_word(buf + 510, 0xAA55);
   for (i = sum = 0; i < ss; i++) {
    if (i != 106 && i != 106 + 1 && i != 112) sum = xsum32(buf[i], sum);
   }
   if (disk_write(pdrv, buf, sect++, 1) != RES_OK) return FR_DISK_ERR;

   mem_set(buf, 0, ss);
   st_word(buf + ss - 2, 0xAA55);
   for (j = 1; j < 9; j++) {
    for (i = 0; i < ss; sum = xsum32(buf[i++], sum)) ;
    if (disk_write(pdrv, buf, sect++, 1) != RES_OK) return FR_DISK_ERR;
   }

   mem_set(buf, 0, ss);
   for ( ; j < 11; j++) {
    for (i = 0; i < ss; sum = xsum32(buf[i++], sum)) ;
    if (disk_write(pdrv, buf, sect++, 1) != RES_OK) return FR_DISK_ERR;
   }

   for (i = 0; i < ss; i += 4) st_dword(buf + i, sum);
   if (disk_write(pdrv, buf, sect++, 1) != RES_OK) return FR_DISK_ERR;
  }

 } else

 {
  do {
   pau = au;

   if (fmt == 3) {
    if (!pau) {
     n = sz_vol / 0x20000;
     for (i = 0, pau = 1; cst32[i] && cst32[i] <= n; i++, pau <<= 1) ;
    }
    n_clst = sz_vol / pau;
    sz_fat = (n_clst * 4 + 8 + ss - 1) / ss;
    sz_rsv = 32;
    sz_dir = 0;
    if (n_clst <= 0xFFF5 || n_clst > 0xFFFFFF5) return FR_MKFS_ABORTED;
   } else {
    if (!pau) {
     n = sz_vol / 0x1000;
     for (i = 0, pau = 1; cst[i] && cst[i] <= n; i++, pau <<= 1) ;
    }
    n_clst = sz_vol / pau;
    if (n_clst > 0xFF5) {
     n = n_clst * 2 + 4;
    } else {
     fmt = 1;
     n = (n_clst * 3 + 1) / 2 + 3;
    }
    sz_fat = (n + ss - 1) / ss;
    sz_rsv = 1;
    sz_dir = (DWORD)n_rootdir * 32 / ss;
   }
   b_fat = b_vol + sz_rsv;
   b_data = b_fat + sz_fat * n_fats + sz_dir;


   n = ((b_data + sz_blk - 1) & ~(sz_blk - 1)) - b_data;
   if (fmt == 3) {
    sz_rsv += n; b_fat += n;
   } else {
    sz_fat += n / n_fats;
   }


   if (sz_vol < b_data + pau * 16 - b_vol) return FR_MKFS_ABORTED;
   n_clst = (sz_vol - sz_rsv - sz_fat * n_fats - sz_dir) / pau;
   if (fmt == 3) {
    if (n_clst <= 0xFFF5) {
     if (!au && (au = pau / 2) != 0) continue;
     return FR_MKFS_ABORTED;
    }
   }
   if (fmt == 2) {
    if (n_clst > 0xFFF5) {
     if (!au && (pau * 2) <= 64) {
      au = pau * 2; continue;
     }
     if ((opt & 0x02)) {
      fmt = 3; continue;
     }
     if (!au && (au = pau * 2) <= 128) continue;
     return FR_MKFS_ABORTED;
    }
    if (n_clst <= 0xFF5) {
     if (!au && (au = pau * 2) <= 128) continue;
     return FR_MKFS_ABORTED;
    }
   }
   if (fmt == 1 && n_clst > 0xFF5) return FR_MKFS_ABORTED;


   break;
  } while (1);






  mem_set(buf, 0, ss);
  mem_cpy(buf + 0, "\xEB\xFE\x90" "MSDOS5.0", 11);
  st_word(buf + 11, ss);
  buf[13] = (BYTE)pau;
  st_word(buf + 14, (WORD)sz_rsv);
  buf[16] = (BYTE)n_fats;
  st_word(buf + 17, (WORD)((fmt == 3) ? 0 : n_rootdir));
  if (sz_vol < 0x10000) {
   st_word(buf + 19, (WORD)sz_vol);
  } else {
   st_dword(buf + 32, sz_vol);
  }
  buf[21] = 0xF8;
  st_word(buf + 24, 63);
  st_word(buf + 26, 255);
  st_dword(buf + 28, b_vol);
  if (fmt == 3) {
   st_dword(buf + 67, get_fattime());
   st_dword(buf + 36, sz_fat);
   st_dword(buf + 44, 2);
   st_word(buf + 48, 1);
   st_word(buf + 50, 6);
   buf[64] = 0x80;
   buf[66] = 0x29;
   mem_cpy(buf + 71, "NO NAME    " "FAT32   ", 19);
  } else {
   st_dword(buf + 39, get_fattime());
   st_word(buf + 22, (WORD)sz_fat);
   buf[36] = 0x80;
   buf[38] = 0x29;
   mem_cpy(buf + 43, "NO NAME    " "FAT     ", 19);
  }
  st_word(buf + 510, 0xAA55);
  if (disk_write(pdrv, buf, b_vol, 1) != RES_OK) return FR_DISK_ERR;


  if (fmt == 3) {
   disk_write(pdrv, buf, b_vol + 6, 1);
   mem_set(buf, 0, ss);
   st_dword(buf + 0, 0x41615252);
   st_dword(buf + 484, 0x61417272);
   st_dword(buf + 488, n_clst - 1);
   st_dword(buf + 492, 2);
   st_word(buf + 510, 0xAA55);
   disk_write(pdrv, buf, b_vol + 7, 1);
   disk_write(pdrv, buf, b_vol + 1, 1);
  }


  mem_set(buf, 0, (UINT)szb_buf);
  sect = b_fat;
  for (i = 0; i < n_fats; i++) {
   if (fmt == 3) {
    st_dword(buf + 0, 0xFFFFFFF8);
    st_dword(buf + 4, 0xFFFFFFFF);
    st_dword(buf + 8, 0x0FFFFFFF);
   } else {
    st_dword(buf + 0, (fmt == 1) ? 0xFFFFF8 : 0xFFFFFFF8);
   }
   nsect = sz_fat;
   do {
    n = (nsect > sz_buf) ? sz_buf : nsect;
    if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) return FR_DISK_ERR;
    mem_set(buf, 0, ss);
    sect += n; nsect -= n;
   } while (nsect);
  }


  nsect = (fmt == 3) ? pau : sz_dir;
  do {
   n = (nsect > sz_buf) ? sz_buf : nsect;
   if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) return FR_DISK_ERR;
   sect += n; nsect -= n;
  } while (nsect);
 }


 if (1 && fmt == 4) {
  sys = 0x07;
 } else {
  if (fmt == 3) {
   sys = 0x0C;
  } else {
   if (sz_vol >= 0x10000) {
    sys = 0x06;
   } else {
    sys = (fmt == 2) ? 0x04 : 0x01;
   }
  }
 }

 if (0 && part != 0) {

  if (disk_read(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  buf[446 + (part - 1) * 16 + 4] = sys;
  if (disk_write(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
 } else {
  if (!(opt & 0x08)) {

   mem_set(buf, 0, ss);
   st_word(buf + 510, 0xAA55);
   pte = buf + 446;
   pte[0] = 0;
   pte[1] = 1;
   pte[2] = 1;
   pte[3] = 0;
   pte[4] = sys;
   n = (b_vol + sz_vol) / (63 * 255);
   pte[5] = 254;
   pte[6] = (BYTE)(n >> 2 | 63);
   pte[7] = (BYTE)n;
   st_dword(pte + 8, b_vol);
   st_dword(pte + 12, sz_vol);
   if (disk_write(pdrv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
  }
 }

 if (disk_ioctl(pdrv, 0, 0) != RES_OK) return FR_DISK_ERR;

 return FR_OK;
}
# 6068 "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"
int elm_get_vol(FATFS *fat)
{
 int vol;

 for (vol = 0; vol < 2; vol ++)
 {
  if (FatFs[vol] == fat) return vol;
 }

 return -1;
}
