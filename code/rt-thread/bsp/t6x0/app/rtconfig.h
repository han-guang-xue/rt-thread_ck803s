#ifndef RT_CONFIG_H__
#define RT_CONFIG_H__

/* Automatically generated file; DO NOT EDIT. */
/* RT-Thread Configuration */

/* T6X0 Soc hardware resource */

#define RT_HAVING_GMAC
#define RT_USING_ETH1
#define RT_HAVING_ATA
#define RT_HAVING_CRYPTO
#define RT_HAVING_TIMER
#define RT_HAVING_CPUTIME
#define RT_HAVING_I2C
#define RT_USING_EEPROM
#define RT_HAVING_UART
#define RT_USING_UART1
#define RT_HAVING_WDT
#define RT_HAVING_SPI
#define RT_USING_ADC
#define RT_HAVING_GPIO
#define RT_USING_T680

/* T680 setting */

#define RT_USING_ETH0

/* RT-Thread Kernel */

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

/* Inter-Thread communication */

#define RT_USING_SEMAPHORE
#define RT_USING_MUTEX
#define RT_USING_EVENT
#define RT_USING_MAILBOX
#define RT_USING_MESSAGEQUEUE

/* Memory Management */

#define RT_USING_MEMHEAP
#define RT_USING_SMALL_MEM
#define RT_USING_HEAP

/* Kernel Device Object */

#define RT_USING_DEVICE
#define RT_USING_CONSOLE
#define RT_CONSOLEBUF_SIZE 256
#define RT_CONSOLE_DEVICE_NAME "uart0"

/* RT-Thread Components */

#define RT_USING_COMPONENTS_INIT
#define RT_USING_USER_MAIN
#define RT_MAIN_THREAD_STACK_SIZE 2048

/* Command shell */

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

/* Device virtual file system */

#define RT_USING_DFS
#define DFS_USING_WORKDIR
#define DFS_FILESYSTEMS_MAX 4
#define DFS_FILESYSTEM_TYPES_MAX 4
#define DFS_FD_MAX 12
#define RT_USING_DFS_ELMFAT

/* elm-chan's FatFs, Generic FAT Filesystem Module */

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

/* Device Drivers */

#define RT_USING_DEVICE_IPC
#define RT_PIPE_BUFSZ 512
#define RT_USING_CRYPTO
#define RT_USING_ATA
#define RT_USING_SERIAL
#define RT_USING_HWTIMER
#define RT_USING_CPUTIME
#define RT_USING_I2C
#define RT_USING_I2C_BITOPS
#define RT_USING_PIN
#define RT_USING_RTC
#define RT_USING_SOFT_RTC
#define RTC_SYNC_USING_NTP
#define RTC_NTP_FIRST_SYNC_DELAY 1
#define RTC_NTP_SYNC_PERIOD 3600
#define RT_USING_SPI
#define RT_USING_WDT

/* POSIX layer and C standard library */

#define RT_USING_LIBC
#define RT_USING_MINILIBC
#define RT_USING_POSIX

/* Network stack */

/* light weight TCP/IP stack */

#define RT_USING_LWIP
#define RT_USING_LWIP202
#define RT_LWIP_IGMP
#define RT_LWIP_ICMP
#define RT_LWIP_DNS
#define RT_LWIP_DHCP
#define IP_SOF_BROADCAST 1
#define IP_SOF_BROADCAST_RECV 1
#define RT_LWIP_ETH_MTU 1500

/* Static IPv4 Address */

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

/* Utilities */

#define RT_USING_UTEST
#define UTEST_THR_STACK_SIZE 1024
#define UTEST_THR_PRIORITY 20

/* RT-Thread local packages */

#define PKG_USING_MBEDTLS
#define MBEDTLS_USING_CRYPTO
#define MBEDTLS_USING_X509

/* Select Root Certificate */

#define PKG_USING_MBEDTLS_USE_ALL_CERTS
#define PKG_USING_MBEDTLS_THAWTE_ROOT_CA
#define PKG_USING_MBEDTLS_VERSIGN_PBULIC_ROOT_CA
#define PKG_USING_MBEDTLS_VERSIGN_UNIVERSAL_ROOT_CA
#define PKG_USING_MBEDTLS_GEOTRUST_ROOT_CA
#define PKG_USING_MBEDTLS_DIGICERT_ROOT_CA
#define PKG_USING_MBEDTLS_GODADDY_ROOT_CA
#define PKG_USING_MBEDTLS_COMODOR_ROOT_CA
#define PKG_USING_MBEDTLS_DST_ROOT_CA
#define PKG_USING_MBEDTLS_CLOBALSIGN_ROOT_CA
#define PKG_USING_MBEDTLS_ENTRUST_ROOT_CA
#define MBEDTLS_USING_TLS
#define MBEDTLS_GMSSL
#define MBEDTLS_ECP_WINDOW_SIZE 2
#define MBEDTLS_SSL_MAX_CONTENT_LEN 8192
#define PKG_USING_MBEDTLS_EXAMPLE
#define PKG_USING_MBEDTLS_V260
#define PKG_USING_NETUTILS
#define PKG_NETUTILS_PING
#define PKG_NETUTILS_TFTP
#define NETUTILS_TFTP_PORT 69
#define PKG_NETUTILS_IPERF
#define PKG_NETUTILS_NTP
#define NETUTILS_NTP_TIMEZONE 8
#define NETUTILS_NTP_HOSTNAME "cn.ntp.org.cn"
#define PKG_USING_NETUTILS_V100
#define PKG_USING_WEBCLIENT
#define WEBCLIENT_USING_SAMPLES
#define WEBCLIENT_USING_TLS
#define PKG_USING_WEBCLIENT_V201
#define PKG_USING_WEBNET
#define WEBNET_PORT 443
#define WEBNET_CONN_MAX 16
#define WEBNET_ROOT "/rom/webnet"

/* Select supported modules */

#define WEBNET_USING_AUTH
#define WEBNET_USING_TLS
#define WEBNET_USING_CGI
#define WEBNET_USING_ASP
#define WEBNET_USING_SSI
#define WEBNET_USING_INDEX
#define WEBNET_USING_ALIAS
#define WEBNET_USING_UPLOAD
#define WEBNET_CACHE_LEVEL 0
#define WEBNET_USING_SAMPLES
#define PKG_USING_WEBNET_V200

/* RT-Thread online packages */

/* IoT - internet of things */

#define WEBCLIENT_NOT_USE_TLS
#define PKG_USING_WEBCLIENT_V212
#define PKG_WEBCLIENT_VER_NUM 0x20102

/* Select supported modules */

#define PKG_USING_WEBNET_V202
#define PKG_USING_CJSON
#define PKG_USING_CJSON_V102
#define PKG_USING_LJSON
#define PKG_USING_LJSON_V002

/* Wi-Fi */

/* Marvell WiFi */


/* Wiced WiFi */

#define NETUTILS_NTP_HOSTNAME2 "ntp.rt-thread.org"
#define NETUTILS_NTP_HOSTNAME3 "edu.ntp.org.cn"
#define PKG_USING_NETUTILS_V120

/* IoT Cloud */


/* security packages */

/* Select Root Certificate */

#define MBEDTLS_AES_ROM_TABLES
#define MBEDTLS_MPI_MAX_SIZE 1024
#define MBEDTLS_CTR_DRBG_KEYSIZE 32
#define PKG_USING_MBEDTLS_V2710

/* language packages */


/* multimedia packages */


/* tools packages */


/* system packages */


/* peripheral libraries and drivers */


/* miscellaneous packages */


/* samples: kernel and components samples */


#endif
