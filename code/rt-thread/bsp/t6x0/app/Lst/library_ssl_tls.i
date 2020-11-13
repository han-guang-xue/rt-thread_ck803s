# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 1
# 2820 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h" 1
# 36 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 34 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\syslimits.h" 1 3 4






# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 168 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 1 3 4
# 11 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 1 3 4
# 12 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\limits.h" 2 3 4
# 169 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 2 3 4
# 8 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\syslimits.h" 2 3 4
# 35 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 2 3 4
# 37 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h" 2
# 667 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 2821 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 2
# 1 "../../../include/rtthread.h" 1
# 35 "../../../include/rtthread.h"
# 1 "./rtconfig.h" 1
# 36 "../../../include/rtthread.h" 2
# 1 "../../../include/rtdebug.h" 1
# 37 "../../../include/rtthread.h" 2
# 1 "../../../include/rtdef.h" 1
# 45 "../../../include/rtdef.h"
# 1 "../libraries/inc/tih/sysdep.h" 1
# 46 "../../../include/rtdef.h" 2
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
# 132 "../../../include/rtdef.h"
        typedef __builtin_va_list __gnuc_va_list;
        typedef __gnuc_va_list va_list;
# 183 "../../../include/rtdef.h"
typedef int (*init_fn_t)(void);
# 304 "../../../include/rtdef.h"
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
# 334 "../../../include/rtdef.h"
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
# 437 "../../../include/rtdef.h"
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
# 503 "../../../include/rtdef.h"
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
# 587 "../../../include/rtdef.h"
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
# 636 "../../../include/rtdef.h"
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
# 851 "../../../include/rtdef.h"
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
# 950 "../../../include/rtdef.h"
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
# 976 "../../../include/rtdef.h"
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
# 1071 "../../../include/rtdef.h"
# 1 "../../../include/rtlibc.h" 1
# 29 "../../../include/rtlibc.h"
# 1 "../../../include/libc/libc_stat.h" 1
# 75 "../../../include/libc/libc_stat.h"
# 1 "../../../components/libc/compilers/minilibc/stdint.h" 1







# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 9 "../../../components/libc/compilers/minilibc/stdint.h" 2
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 1 3 4
# 9 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 1 3 4
# 33 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\stdint.h" 3 4

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


typedef unsigned int uintptr_t;



__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 10 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdint.h" 2 3 4
# 10 "../../../components/libc/compilers/minilibc/stdint.h" 2
# 76 "../../../include/libc/libc_stat.h" 2
# 1 "../../../components/libc/compilers/minilibc/time.h" 1



# 1 "../../../components/libc/compilers/minilibc/sys/time.h" 1



# 1 "../../../components/libc/compilers/minilibc/sys/types.h" 1





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
# 31 "../../../include/rtlibc.h" 2

# 1 "../../../include/libc/libc_fcntl.h" 1
# 33 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_ioctl.h" 1
# 133 "../../../include/libc/libc_ioctl.h"
struct winsize {
unsigned short ws_row;
unsigned short ws_col;
unsigned short ws_xpixel;
unsigned short ws_ypixel;
};
# 34 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_dirent.h" 1
# 35 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_signal.h" 1
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
# 85 "../../../include/libc/libc_signal.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 1 3 4
# 12 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 3 4

# 12 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 3 4
typedef void (*sa_sighandler_t)(int);
typedef void (*__sighandler_t)(int);
typedef int sig_atomic_t;
# 46 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\signal.h" 3 4
extern sa_sighandler_t signal(int __sig, sa_sighandler_t __handler);
extern int raise(int __sig);
# 86 "../../../include/libc/libc_signal.h" 2
# 36 "../../../include/rtlibc.h" 2
# 1 "../../../include/libc/libc_fdset.h" 1
# 53 "../../../include/libc/libc_fdset.h"

# 53 "../../../include/libc/libc_fdset.h"
typedef long fd_mask;







typedef struct _types_fd_set {
    fd_mask fds_bits[(((12)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 37 "../../../include/rtlibc.h" 2
# 1072 "../../../include/rtdef.h" 2
# 38 "../../../include/rtthread.h" 2
# 1 "../../../include/rtservice.h" 1
# 61 "../../../include/rtservice.h"
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
# 185 "../../../include/rtservice.h"
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
# 39 "../../../include/rtthread.h" 2
# 1 "../../../include/rtm.h" 1
# 25 "../../../include/rtm.h"
# 1 "../../../include/rtthread.h" 1
# 26 "../../../include/rtm.h" 2
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
# 31 "../../../components/finsh/finsh_api.h"
typedef long (*syscall_func)(void);


struct finsh_syscall
{
    const char* name;

    const char* desc;

    syscall_func func;
};
extern struct finsh_syscall *_syscall_table_begin, *_syscall_table_end;


struct finsh_syscall* finsh_syscall_lookup(const char* name);
# 570 "../../../include/rtthread.h" 2
# 2822 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 2
# 1 "../../../include/rthw.h" 1
# 33 "../../../include/rthw.h"
# 1 "../libraries/inc/tih/core_ck803.h" 1
# 27 "../libraries/inc/tih/core_ck803.h"
# 1 "../libraries/inc/tih/sysdep.h" 1
# 28 "../libraries/inc/tih/core_ck803.h" 2
# 117 "../libraries/inc/tih/core_ck803.h"
# 1 "../libraries/inc/tih/csi_gcc.h" 1
# 31 "../libraries/inc/tih/csi_gcc.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 1 3 4
# 21 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ansidef.h" 1 3 4
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




typedef unsigned int size_t;
# 60 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
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
# 32 "../libraries/inc/tih/csi_gcc.h" 2
# 1 "../libraries/inc/tih/csi_reg.h" 1
# 34 "../libraries/inc/tih/csi_reg.h"

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
# 35 "../libraries/inc/tih/csi_instr.h"
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
# 220 "../libraries/inc/tih/csi_instr.h"
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
# 206 "../libraries/inc/tih/core_ck803.h"
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
# 235 "../libraries/inc/tih/core_ck803.h"
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
# 341 "../libraries/inc/tih/core_ck803.h"
typedef union {
    struct {
        uint32_t E: 1;
        uint32_t size: 5;
        uint32_t _reserved0: 6;
        uint32_t base_addr: 20;
    } b;
    uint32_t w;
} PACR_Type;
# 364 "../libraries/inc/tih/core_ck803.h"
typedef union {
    struct {
        uint32_t RID: 3;
        uint32_t _reserved0: 29;
    } b;
    uint32_t w;
} PRSR_Type;
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
# 522 "../libraries/inc/tih/core_ck803.h"
typedef struct {
    volatile uint32_t CTRL;
    volatile uint32_t LOAD;
    volatile uint32_t VAL;
    volatile const uint32_t CALIB;
} CORET_Type;
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
# 56 "../../../include/rthw.h"
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
# 2823 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 2
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2
# 46 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
# 1 "../../../components/libc/compilers/minilibc/stddef.h" 1




typedef signed long ptrdiff_t;
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h" 2
# 164 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
    typedef int32_t mbedtls_mpi_sint;
    typedef uint32_t mbedtls_mpi_uint;

        typedef uint64_t mbedtls_t_udbl;
# 179 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
typedef struct
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
# 194 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
void mbedtls_mpi_init( mbedtls_mpi *X );






void mbedtls_mpi_free( mbedtls_mpi *X );
# 212 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs );
# 223 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs );
# 234 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y );







void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y );
# 261 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign );
# 280 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char assign );
# 291 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z );
# 301 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos );
# 317 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val );
# 327 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X );
# 337 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X );






size_t mbedtls_mpi_size( const mbedtls_mpi *X );
# 355 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s );
# 373 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen );
# 424 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf, size_t buflen );
# 438 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf, size_t buflen );
# 449 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count );
# 460 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count );
# 472 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 484 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 496 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z );
# 508 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 520 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 532 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 544 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 556 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 568 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 580 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 594 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_uint b );
# 610 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 626 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 640 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 654 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 674 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *E, const mbedtls_mpi *N, mbedtls_mpi *_RR );
# 687 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 701 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 715 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *N );
# 728 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng );
# 746 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int dh_flag,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng );






int mbedtls_mpi_self_test( int verbose );
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h" 1
# 682 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h" 1
# 29 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
# 1 "../drivers/drv_crypto.h" 1


# 1 "../libraries/inc/tih/crypto.h" 1
# 30 "../libraries/inc/tih/crypto.h"
typedef struct symm_info {
    unsigned char alg;
    unsigned char mode;
    unsigned char func;
    unsigned char endian;
    unsigned int keybits;
    unsigned char *key;
    unsigned char *xtskey;





    unsigned char *param;
    unsigned int ctr_step;
} symm_info_t;

void crypto_hw_init(void);
int crypto_is_busy(void);
void crypto_reset(void);

unsigned int crypto_frontend_port_addr(void);
unsigned int crypto_backend_port_addr(void);

int crypto_bridge_is_required(unsigned int addr, symm_info_t *info);
int crypto_bridge_enable(symm_info_t *info, unsigned int addr, unsigned int addr_mode, unsigned int nbytes, unsigned int dir);
int crypto_bridge_prd_enable(symm_info_t *info, unsigned int *prd, unsigned int prd_nwords, unsigned int data_nbytes, int ass_mode);

int crypto_fifo_enable(symm_info_t *info, unsigned int nbytes, unsigned int dir);

int crypto_dma_start(symm_info_t *info, unsigned int src_addr, unsigned int src_addr_mode, unsigned int dst_addr, unsigned int dst_addr_mode, unsigned int nbytes);

void crypto_data_pad(void);
void crypto_data_discard(void);
void crypto_master_reset(void);
void crypto_slave_reset(void);

unsigned int crypto_reg_symc_lsr_get(void);
unsigned int crypto_symc_data_cnt(void);
# 4 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/crypto_errno.h" 1



typedef enum crypto_errno {
                TIH_OK = 0x0,
                TIH_KEYNULL = -1,
                TIH_KEYLENERR = -2,
                TIH_XTSKEYNULL = -3,
                TIH_ALGFUNCNOTSUPPORT = -4,
                TIH_DATASIZEERR = -5,
                TIH_INDATANULL = -6,
                TIH_IVNULL = -7,
                TIH_IVLENERR = -8,
                TIH_ALGMODNOTSUPPORT = -9,
                TIH_SM2VERIFYERR = -10,
                TIH_SM2ZEROALL = -11,
                TIH_SM2BUFFERNULL = -12,
                TIH_SM2INTEGERTOOBIG = -13,
                TIH_SM2INOUTSAMEBUFFER = -14,
                TIH_SM2INPUTLENINVALID = -15,
                TIH_SM2CIPHERINVALIDORDER = -16,
                TIH_SM2NOTONCURVE = -17,
                TIH_RSABUFFERNULL = -18,
                TIH_RSAINPUTTOOLONG = -19,
                TIH_RSAINPUTINVALID = -20,
                TIH_UNKOWNERR = -21,
} crypto_errno_t;
# 5 "../drivers/drv_crypto.h" 2

# 1 "../libraries/inc/tih/aes.h" 1




# 1 "../libraries/inc/tih/crypto_errno.h" 1
# 6 "../libraries/inc/tih/aes.h" 2
# 23 "../libraries/inc/tih/aes.h"
crypto_errno_t aes_crypt(unsigned char *in, unsigned char *out, unsigned int nbytes,
                         unsigned char *key, unsigned int key_nbytes, unsigned int func, unsigned int mode, unsigned char *iv);
crypto_errno_t aes_crypt_ctr(unsigned char *in, unsigned char *out, unsigned int nbytes, unsigned char *key, unsigned int key_nbytes,
                             unsigned int func, unsigned int mode, unsigned char *count, unsigned int ctr_step);
crypto_errno_t aes_crypt_xts(unsigned char *in, unsigned char *out, unsigned int nbytes, unsigned char *key, unsigned int key_nbytes,
                             unsigned int func, unsigned int mode, unsigned char *tw, unsigned char *xtskey);
# 7 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/pke.h" 1





void pke_init(void);
# 8 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sm4.h" 1
# 19 "../libraries/inc/tih/sm4.h"
crypto_errno_t sm4_crypt(unsigned char *in, unsigned char *out, unsigned int nbytes,
                         unsigned char *key, unsigned int func, unsigned int mode, unsigned char *iv);
crypto_errno_t sm4_crypt_ctr(unsigned char *in, unsigned char *out, unsigned int nbytes, unsigned char *key,
                             unsigned int func, unsigned int mode, unsigned char *count, unsigned int ctr_step);
crypto_errno_t sm4_crypt_xts(unsigned char *in, unsigned char *out, unsigned int nbytes, unsigned char *key,
                             unsigned int func, unsigned int mode, unsigned char *tw, unsigned char *xtskey);
# 9 "../drivers/drv_crypto.h" 2

# 1 "../libraries/inc/tih/ecc.h" 1





typedef struct ecc_curve {
    unsigned int ecc_p_nbits;
    unsigned int ecc_n_nbits;
    unsigned int *ecc_p;
    unsigned int *ecc_a;
    unsigned int *ecc_b;
    unsigned int *ecc_gx;
    unsigned int *ecc_gy;
    unsigned int *ecc_n;
} ecc_curve_t;


int ecc_point_verify(ecc_curve_t *curve, unsigned int *px, unsigned int *py);

int ecc_point_add(ecc_curve_t *curve, unsigned int *px, unsigned int *py, unsigned int *qx, unsigned int *qy, unsigned int *rx, unsigned int *ry);

int ecc_point_double(ecc_curve_t *curve, unsigned int *px, unsigned int *py, unsigned int *rx, unsigned int *ry);

int ecc_point_mul(ecc_curve_t *curve, unsigned int *k, unsigned int *px, unsigned int *py, unsigned int *rx, unsigned int *ry);

int ecc_point_shamir(ecc_curve_t *curve, unsigned int *k1, unsigned int *P1x, unsigned int *P1y,
                                           unsigned int *k2, unsigned int *P2x, unsigned int *P2y,
                                           unsigned int *Qx, unsigned int *Qy);
# 11 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/rsa.h" 1






crypto_errno_t rsa_crt_keypair_gen(unsigned char *p, unsigned char *q,
                                  unsigned char *dp, unsigned char *dq,
                                  unsigned char *u, unsigned char *e,
                                  unsigned char *n, unsigned int nbits);

crypto_errno_t rsa_encrypt(unsigned char *plain,
                           unsigned char *e, unsigned char *n,
                           unsigned char *cipher,
                           unsigned int nbits);

crypto_errno_t rsa_crt_decrypt(unsigned char *cipher,
                              unsigned char *p, unsigned char *q,
                              unsigned char *dp, unsigned char *dq,
                              unsigned char *u,
                              unsigned char *plain,
                              unsigned int nbits);

crypto_errno_t rsa_keypair_gen(unsigned char *e, unsigned char *d, unsigned char *n, unsigned int nbits);

crypto_errno_t rsa_decrypt(unsigned char *cipher,
                           unsigned char *d, unsigned char *n,
                           unsigned char *plain,
                           unsigned int nbits);

crypto_errno_t rsa_pq_keypair_gen(unsigned char *p, unsigned char *q,
                                  unsigned char *e, unsigned char *d, unsigned char *n,
                                  unsigned int nbits);
# 12 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sm2.h" 1
# 10 "../libraries/inc/tih/sm2.h"
typedef enum {
    SM2_Role_Sponsor = 0,
    SM2_Role_Responsor
} sm2_exchange_role_e;

crypto_errno_t sm2_keypair_gen(unsigned char *prikey, unsigned char *pubkey);
crypto_errno_t sm2_e_get(unsigned char *m, unsigned int m_nbytes, unsigned char *z, unsigned char *e);
crypto_errno_t sm2_z_get(unsigned char *id, unsigned int idbytes, unsigned char *pubkey, unsigned char *z);
crypto_errno_t sm2_sign(unsigned char e[32], unsigned char prikey[32], unsigned char signature[64]);
crypto_errno_t sm2_verify(unsigned char e[32], unsigned char pubkey[64], unsigned char signature[64]);
crypto_errno_t sm2_encrypt(unsigned char *m, unsigned int m_nbytes,
                           unsigned char pubkey[64],
                           unsigned char *c, unsigned int *c_nbytes);
crypto_errno_t sm2_decrypt(unsigned char *c, unsigned int c_nbytes,
                           unsigned char prikey[32],
                           unsigned char *m, unsigned int *m_nbytes);
crypto_errno_t sm2_key_exchange(sm2_exchange_role_e role,
                                unsigned char *da, unsigned char *pb,
                                unsigned char *ra, unsigned char *rpa,
                                unsigned char *rb,
                                unsigned char *za, unsigned char *zb,
                                unsigned int k_nbytes,
                                unsigned char *ka, unsigned char *sl, unsigned char *sa);
# 13 "../drivers/drv_crypto.h" 2

# 1 "../libraries/inc/tih/hash.h" 1
# 12 "../libraries/inc/tih/hash.h"
typedef struct hash_context {
    unsigned int total[2];
    unsigned char buffer[64];
} hash_context_t;

crypto_errno_t hash_init(hash_context_t *ctx, unsigned int alg);
crypto_errno_t hash_update(hash_context_t *ctx, unsigned char *in, unsigned int nbytes, unsigned int alg);
crypto_errno_t hash_final(hash_context_t *ctx, unsigned char *out, unsigned int alg);
# 15 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sha1.h" 1






crypto_errno_t sha1_init(void);
crypto_errno_t sha1_update(unsigned char *indata, unsigned int nbytes);
crypto_errno_t sha1_final(unsigned char *outdata);
# 16 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sha224.h" 1






crypto_errno_t sha224_init(void);
crypto_errno_t sha224_update(unsigned char *indata, unsigned int nbytes);
crypto_errno_t sha224_final(unsigned char *outdata);
# 17 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sha256.h" 1






crypto_errno_t sha256_init(void);
crypto_errno_t sha256_update(unsigned char *indata, unsigned int nbytes);
crypto_errno_t sha256_final(unsigned char *outdata);
# 18 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/sm3.h" 1






crypto_errno_t sm3_init(void);
crypto_errno_t sm3_update(unsigned char *indata, unsigned int nbytes);
crypto_errno_t sm3_final(unsigned char *outdata);
# 19 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/cmac.h" 1
# 13 "../libraries/inc/tih/cmac.h"
typedef struct cmac_ctx {
    unsigned char *key;
    int keylen;
    unsigned char *iv;
    unsigned int alg_mode;
} cmac_ctx_t;

crypto_errno_t cmac_init(cmac_ctx_t *ctx, unsigned char *key, int keylen, unsigned char *iv, int ivlen, unsigned int alg);

crypto_errno_t cmac_update(cmac_ctx_t *ctx, unsigned char *data, unsigned int len);

crypto_errno_t cmac_final(cmac_ctx_t *ctx, unsigned char *out, unsigned int *len);
# 20 "../drivers/drv_crypto.h" 2

# 1 "../libraries/inc/tih/bignum.h" 1
# 13 "../libraries/inc/tih/bignum.h"
int bn_mod(unsigned int *a, unsigned int *b, unsigned int *out, unsigned int a_nwords, unsigned int b_nwords);





int bn_cmp(unsigned int *a, unsigned int *b, unsigned int a_nwords, unsigned int b_nwords);






int bn_add(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);






int bn_sub(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);







int bn_mul(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);







int bn_modadd(const unsigned int *modulus, const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);







int bn_modsub(const unsigned int *modulus, const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);







int bn_modmul(const unsigned int *modulus, const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int nwords);







int bn_modexp(const unsigned int *modulus, const unsigned int *exponent, const unsigned int *base, unsigned int *out, unsigned int mod_nwords, unsigned int exp_nwords);






int bn_modinv(const unsigned int *modulus, const unsigned int *a, unsigned int *out, unsigned int mod_nwords, unsigned int a_nwords);
# 22 "../drivers/drv_crypto.h" 2
# 1 "../libraries/inc/tih/rng.h" 1






crypto_errno_t rand_get(unsigned char *rand, unsigned int nbyte);
# 23 "../drivers/drv_crypto.h" 2

typedef struct ecc_point {
    unsigned int *x;
    unsigned int *y;
} ecc_point_t;


crypto_errno_t tih_aes_crypt(unsigned char *in, unsigned char *out, unsigned int nbytes,
                             unsigned char *key, unsigned int keybytes, unsigned int func,
                             unsigned int mode, unsigned char *iv);

crypto_errno_t tih_aes_crypt_ctr(unsigned char *in, unsigned char *out, unsigned int nbytes,
                                 unsigned char *key, unsigned int keybytes, unsigned int func,
                                 unsigned int mode, unsigned char *count, unsigned int ctr_step);

crypto_errno_t tih_aes_crypt_xts(unsigned char *in, unsigned char *out, unsigned int nbytes,
                                 unsigned char *key, unsigned int keybytes, unsigned int func,
                                 unsigned int mode, unsigned char *tw, unsigned char *xtskey);

crypto_errno_t tih_sm4_crypt(unsigned char *in, unsigned char *out, unsigned int nbytes,
                             unsigned char *key, unsigned int func, unsigned int mode, unsigned char *iv);

crypto_errno_t tih_sm4_crypt_ctr(unsigned char *in, unsigned char *out, unsigned int nbytes,
                                 unsigned char *key, unsigned int func, unsigned int mode,
                                 unsigned char *count, unsigned int ctr_step);

crypto_errno_t tih_sm4_crypt_xts(unsigned char *in, unsigned char *out, unsigned int nbytes,
                                 unsigned char *key, unsigned int func, unsigned int mode,
                                 unsigned char *tw, unsigned char *xtskey);

crypto_errno_t tih_rsa_keypair_gen(unsigned char *p, unsigned char *q,
                               unsigned char *dp, unsigned char *dq,
                               unsigned char *u, unsigned char *e,
                               unsigned char *n, unsigned int nbits);
crypto_errno_t tih_rsa_encrypt(unsigned char *plain,
                           unsigned char *e, unsigned char *n,
                           unsigned char *cipher,
                           unsigned int nbits);
crypto_errno_t tih_rsa_decrypt(unsigned char *cipher,
                           unsigned char *p, unsigned char *q,
                           unsigned char *dp, unsigned char *dq,
                           unsigned char *u,
                           unsigned char *plain,
                           unsigned int nbits);

crypto_errno_t tih_sm2_keypair_gen(unsigned char *prikey, unsigned char *pubkey);
crypto_errno_t tih_sm2_e_get(unsigned char *m, unsigned int m_nbytes, unsigned char *z, unsigned char *e);
crypto_errno_t tih_sm2_z_get(unsigned char *id, unsigned int idbytes, unsigned char *pubkey, unsigned char *z);
crypto_errno_t tih_sm2_sign(unsigned char e[32], unsigned char prikey[32], unsigned char signature[64]);
crypto_errno_t tih_sm2_verify(unsigned char e[32], unsigned char pubkey[64], unsigned char signature[64]);
crypto_errno_t tih_sm2_encrypt(unsigned char *m, unsigned int m_nbytes,
                           unsigned char pubkey[64],
                           unsigned char *c, unsigned int *c_nbytes);
crypto_errno_t tih_sm2_decrypt(unsigned char *c, unsigned int c_nbytes,
                           unsigned char prikey[32],
                           unsigned char *m, unsigned int *m_nbytes);
crypto_errno_t tih_sm2_key_exchange(sm2_exchange_role_e role,
                                unsigned char *da, unsigned char *pb,
                                unsigned char *ra, unsigned char *rpa,
                                unsigned char *rb,
                                unsigned char *za, unsigned char *zb,
                                unsigned int k_nbytes,
                                unsigned char *ka, unsigned char *sl, unsigned char *sa);


crypto_errno_t tih_sha1_init(void);
crypto_errno_t tih_sha1_update(unsigned char *in, unsigned int nbytes);
crypto_errno_t tih_sha1_final(unsigned char *out);


crypto_errno_t tih_sha224_init(void);
crypto_errno_t tih_sha224_update(unsigned char *in, unsigned int nbytes);
crypto_errno_t tih_sha224_final(unsigned char *out);


crypto_errno_t tih_sha256_init(void);
crypto_errno_t tih_sha256_update(unsigned char *in, unsigned int nbytes);
crypto_errno_t tih_sha256_final(unsigned char *out);


crypto_errno_t tih_cmac_init(cmac_ctx_t *ctx, unsigned char *key, int keylen,
                             unsigned char *iv, int ivlen, unsigned int alg);
crypto_errno_t tih_cmac_update(cmac_ctx_t *ctx, unsigned char *data, unsigned int len);
crypto_errno_t tih_cmac_final(cmac_ctx_t *ctx, unsigned char *out, unsigned int *len);


crypto_errno_t tih_sm3_init(void);
crypto_errno_t tih_sm3_update(unsigned char *in, unsigned int nbytes);
crypto_errno_t tih_sm3_final(unsigned char *out);

crypto_errno_t tih_rand_get(unsigned char *rand, unsigned int byteLen);

int tih_ecp_mul(ecc_curve_t *curve, ecc_point_t *Q, unsigned int *k, ecc_point_t *P);
int tih_ecp_muladd(ecc_curve_t *curve, ecc_point_t *Q, unsigned int *k1, ecc_point_t *P1,
                     unsigned int *k2, ecc_point_t *P2);
int tih_ecp_add(ecc_curve_t *curve, ecc_point_t *P1, ecc_point_t *P2, ecc_point_t *Q);
int tih_ecp_double(ecc_curve_t *curve, ecc_point_t *P, ecc_point_t *Q);
int tih_ecp_check(ecc_curve_t *curve, ecc_point_t *P);





int tih_mpi_add(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int ab_nword);
int tih_mpi_sub(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int ab_nword);
int tih_mpi_mul(const unsigned int *a, const unsigned int *b, unsigned int *out, unsigned int ab_nword);
int tih_mpi_cmp(unsigned int *a, unsigned int *b, unsigned int a_nword, unsigned int b_nword);
int tih_mpi_mod_mpi(unsigned int *a, unsigned int a_nword, unsigned int *b, unsigned int b_nword, unsigned int *c);
int tih_mpi_add_mod(const unsigned int *modulus, const unsigned int *a, const unsigned int *b,
                      unsigned int *out, unsigned int nword);
int tih_mpi_sub_mod(const unsigned int *modulus, const unsigned int *a, const unsigned int *b,
                      unsigned int *out, unsigned int nword);
int tih_mpi_inv_mod(const unsigned int *modulus, const unsigned int *a, unsigned int *ainv,
                      unsigned int mod_nword, unsigned int a_nword);
int tih_mpi_mul_mod(const unsigned int *modulus, const unsigned int *a, const unsigned int *b,
                      unsigned int *out, unsigned int nwords);
int tih_mpi_inv_mod(const unsigned int *modulus, const unsigned int *a, unsigned int *ainv,
                      unsigned int mod_nword, unsigned int a_nword);
# 30 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h" 2
# 62 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
typedef enum
{
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_SM2P256V1,
} mbedtls_ecp_group_id;
# 90 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
typedef struct
{
    mbedtls_ecp_group_id grp_id;
    uint16_t tls_id;
    uint16_t bit_size;
    const char *name;
} mbedtls_ecp_curve_info;






typedef struct
{
    mbedtls_mpi X;
    mbedtls_mpi Y;
    mbedtls_mpi Z;
}
mbedtls_ecp_point;
# 135 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
typedef struct
{
    mbedtls_ecp_group_id id;
    mbedtls_mpi P;
    mbedtls_mpi A;
    mbedtls_mpi B;
    mbedtls_ecp_point G;
    mbedtls_mpi N;
    size_t pbits;
    size_t nbits;
    unsigned int h;
    int (*modp)(mbedtls_mpi *);
    int (*t_pre)(mbedtls_ecp_point *, void *);
    int (*t_post)(mbedtls_ecp_point *, void *);
    void *t_data;
    mbedtls_ecp_point *T;
    size_t T_size;
}
mbedtls_ecp_group;
# 162 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
typedef struct
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
}
mbedtls_ecp_keypair;
# 245 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void );
# 254 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void );
# 263 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id );
# 272 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id );
# 281 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name );




void mbedtls_ecp_point_init( mbedtls_ecp_point *pt );




void mbedtls_ecp_group_init( mbedtls_ecp_group *grp );




void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key );




void mbedtls_ecp_point_free( mbedtls_ecp_point *pt );




void mbedtls_ecp_group_free( mbedtls_ecp_group *grp );




void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key );
# 322 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q );
# 333 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst, const mbedtls_ecp_group *src );
# 343 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt );
# 352 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt );
# 366 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q );
# 379 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y );
# 396 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *P,
                            int format, size_t *olen,
                            unsigned char *buf, size_t buflen );
# 418 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P,
                           const unsigned char *buf, size_t ilen );
# 435 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt,
                        const unsigned char **buf, size_t len );
# 452 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt,
                         int format, size_t *olen,
                         unsigned char *buf, size_t blen );
# 469 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id );
# 484 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp, const unsigned char **buf, size_t len );
# 497 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp, size_t *olen,
                         unsigned char *buf, size_t blen );
# 526 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 550 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q );
# 575 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt );
# 590 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp, const mbedtls_mpi *d );
# 609 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                     const mbedtls_ecp_point *G,
                     mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 631 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 646 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 659 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub, const mbedtls_ecp_keypair *prv );
# 668 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp_alt.h"
int mbedtls_ecp_self_test( int verbose );
# 683 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h" 2
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2

# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h" 1
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h" 1
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h" 1
# 39 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,

    MBEDTLS_MD_SM3,
} mbedtls_md_type_t;
# 77 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
typedef struct mbedtls_md_info_t mbedtls_md_info_t;




typedef struct {

    const mbedtls_md_info_t *md_info;


    void *md_ctx;


    void *hmac_ctx;
} mbedtls_md_context_t;







const int *mbedtls_md_list( void );
# 110 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
# 121 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );






void mbedtls_md_init( mbedtls_md_context_t *ctx );






void mbedtls_md_free( mbedtls_md_context_t *ctx );
# 157 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
# 176 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int mode );
# 192 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
# 202 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
# 211 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
# 220 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
# 232 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
# 246 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
# 259 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
# 272 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
# 302 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
# 318 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
# 333 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
# 345 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
# 360 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );


int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h" 2


# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h" 1
# 36 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/threading.h" 1
# 53 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/threading.h"
# 1 "../../../packages/mbedtls-2.6.0/ports/inc/threading_alt.h" 1
# 38 "../../../packages/mbedtls-2.6.0/ports/inc/threading_alt.h"
typedef struct mbedtls_threading_mutex
{
    struct rt_mutex mutex;
    int is_valid;
} mbedtls_threading_mutex_t;

void threading_mutex_init_rtt( mbedtls_threading_mutex_t *mutex );
void threading_mutex_free_rtt( mbedtls_threading_mutex_t *mutex );
int threading_mutex_lock_rtt( mbedtls_threading_mutex_t *mutex );
int threading_mutex_unlock_rtt( mbedtls_threading_mutex_t *mutex );
# 54 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/threading.h" 2
# 73 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/threading.h"
void mbedtls_threading_set_alt( void (*mutex_init)( mbedtls_threading_mutex_t * ),
                       void (*mutex_free)( mbedtls_threading_mutex_t * ),
                       int (*mutex_lock)( mbedtls_threading_mutex_t * ),
                       int (*mutex_unlock)( mbedtls_threading_mutex_t * ) );




void mbedtls_threading_free_alt( void );
# 90 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/threading.h"
extern void (*mbedtls_mutex_init)( mbedtls_threading_mutex_t *mutex );
extern void (*mbedtls_mutex_free)( mbedtls_threading_mutex_t *mutex );
extern int (*mbedtls_mutex_lock)( mbedtls_threading_mutex_t *mutex );
extern int (*mbedtls_mutex_unlock)( mbedtls_threading_mutex_t *mutex );




extern mbedtls_threading_mutex_t mbedtls_threading_readdir_mutex;
extern mbedtls_threading_mutex_t mbedtls_threading_gmtime_mutex;
# 37 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h" 2
# 79 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
typedef struct
{
    int ver;
    size_t len;

    mbedtls_mpi N;
    mbedtls_mpi E;

    mbedtls_mpi D;
    mbedtls_mpi P;
    mbedtls_mpi Q;
    mbedtls_mpi DP;
    mbedtls_mpi DQ;
    mbedtls_mpi QP;

    mbedtls_mpi RN;
    mbedtls_mpi RP;
    mbedtls_mpi RQ;

    mbedtls_mpi Vi;
    mbedtls_mpi Vf;

    int padding;

    int hash_id;




    mbedtls_threading_mutex_t mutex;

}
mbedtls_rsa_context;
# 137 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
               int padding,
               int hash_id);
# 149 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding, int hash_id);
# 165 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 unsigned int nbits, int exponent );
# 177 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx );
# 186 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx );
# 197 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub, const mbedtls_rsa_context *prv );
# 215 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output );
# 233 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output );
# 258 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output );
# 281 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output );
# 307 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output );
# 342 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len );
# 374 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len );
# 408 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len );
# 442 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig );
# 469 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig );
# 502 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig );
# 534 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig );
# 561 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig );
# 595 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig );
# 628 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig );
# 648 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src );






void mbedtls_rsa_free( mbedtls_rsa_context *ctx );






int mbedtls_rsa_self_test( int verbose );
# 37 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h" 2







# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h" 1
# 52 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
typedef mbedtls_ecp_keypair mbedtls_ecdsa_context;
# 79 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_sign( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 103 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_sign_det( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                    const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                    mbedtls_md_type_t md_alg );
# 126 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_verify( mbedtls_ecp_group *grp,
                  const unsigned char *buf, size_t blen,
                  const mbedtls_ecp_point *Q, const mbedtls_mpi *r, const mbedtls_mpi *s);
# 159 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_write_signature( mbedtls_ecdsa_context *ctx, mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng );
# 199 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_write_signature_det( mbedtls_ecdsa_context *ctx,
                               const unsigned char *hash, size_t hlen,
                               unsigned char *sig, size_t *slen,
                               mbedtls_md_type_t md_alg ) ;
# 226 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_read_signature( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen );
# 241 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_genkey( mbedtls_ecdsa_context *ctx, mbedtls_ecp_group_id gid,
                  int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 252 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdsa.h"
int mbedtls_ecdsa_from_keypair( mbedtls_ecdsa_context *ctx, const mbedtls_ecp_keypair *key );






void mbedtls_ecdsa_init( mbedtls_ecdsa_context *ctx );






void mbedtls_ecdsa_free( mbedtls_ecdsa_context *ctx );
# 45 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h" 2
# 74 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
typedef enum {
    MBEDTLS_PK_NONE=0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,

    MBEDTLS_PK_EC,
} mbedtls_pk_type_t;





typedef struct
{
    mbedtls_md_type_t mgf1_hash_id;
    int expected_salt_len;

} mbedtls_pk_rsassa_pss_options;




typedef enum
{
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
} mbedtls_pk_debug_type;




typedef struct
{
    mbedtls_pk_debug_type type;
    const char *name;
    void *value;
} mbedtls_pk_debug_item;







typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;




typedef struct
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
# 141 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
# 154 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_ecp_keypair *mbedtls_pk_ec( const mbedtls_pk_context pk )
{
    return( (mbedtls_ecp_keypair *) (pk).pk_ctx );
}






typedef int (*mbedtls_pk_rsa_alt_decrypt_func)( void *ctx, int mode, size_t *olen,
                    const unsigned char *input, unsigned char *output,
                    size_t output_max_len );
typedef int (*mbedtls_pk_rsa_alt_sign_func)( void *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
                    int mode, mbedtls_md_type_t md_alg, unsigned int hashlen,
                    const unsigned char *hash, unsigned char *sig );
typedef size_t (*mbedtls_pk_rsa_alt_key_len_func)( void *ctx );
# 181 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
const mbedtls_pk_info_t *mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type );




void mbedtls_pk_init( mbedtls_pk_context *ctx );




void mbedtls_pk_free( mbedtls_pk_context *ctx );
# 207 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info );
# 224 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_setup_rsa_alt( mbedtls_pk_context *ctx, void * key,
                         mbedtls_pk_rsa_alt_decrypt_func decrypt_func,
                         mbedtls_pk_rsa_alt_sign_func sign_func,
                         mbedtls_pk_rsa_alt_key_len_func key_len_func );
# 237 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );







static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
# 259 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type );
# 285 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len );
# 318 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len );
# 347 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_sign( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 368 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_decrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );

int mbedtls_pk_z_get( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             unsigned char *z, size_t z_len );
# 392 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_encrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 405 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_check_pair( const mbedtls_pk_context *pub, const mbedtls_pk_context *prv );
# 415 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_debug( const mbedtls_pk_context *ctx, mbedtls_pk_debug_item *items );
# 424 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
const char * mbedtls_pk_get_name( const mbedtls_pk_context *ctx );
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
mbedtls_pk_type_t mbedtls_pk_get_type( const mbedtls_pk_context *ctx );
# 455 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );


int mbedtls_gm_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );
# 481 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen );
# 538 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_key_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 553 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 565 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 576 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_key_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
# 595 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );


int mbedtls_gm_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );
# 616 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_write_pubkey( unsigned char **p, unsigned char *start,
                     const mbedtls_pk_context *key );
# 27 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 1
# 69 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
typedef enum {
    MBEDTLS_CIPHER_ID_NONE = 0,
    MBEDTLS_CIPHER_ID_NULL,
    MBEDTLS_CIPHER_ID_AES,
    MBEDTLS_CIPHER_ID_DES,
    MBEDTLS_CIPHER_ID_3DES,
    MBEDTLS_CIPHER_ID_CAMELLIA,
    MBEDTLS_CIPHER_ID_BLOWFISH,
    MBEDTLS_CIPHER_ID_ARC4,
    MBEDTLS_CIPHER_ID_SM4,
} mbedtls_cipher_id_t;

typedef enum {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_CIPHER_SM4_128_ECB,
    MBEDTLS_CIPHER_SM4_128_CBC,
    MBEDTLS_CIPHER_SM4_128_CFB128,
    MBEDTLS_CIPHER_SM4_128_OFB,
    MBEDTLS_CIPHER_SM4_128_CTR,
} mbedtls_cipher_type_t;

typedef enum {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
} mbedtls_cipher_mode_t;

typedef enum {
    MBEDTLS_PADDING_PKCS7 = 0,
    MBEDTLS_PADDING_ONE_AND_ZEROS,
    MBEDTLS_PADDING_ZEROS_AND_LEN,
    MBEDTLS_PADDING_ZEROS,
    MBEDTLS_PADDING_NONE,
} mbedtls_cipher_padding_t;

typedef enum {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
} mbedtls_operation_t;

enum {

    MBEDTLS_KEY_LENGTH_NONE = 0,

    MBEDTLS_KEY_LENGTH_DES = 64,

    MBEDTLS_KEY_LENGTH_DES_EDE = 128,

    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
# 183 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
typedef struct mbedtls_cipher_base_t mbedtls_cipher_base_t;




typedef struct mbedtls_cmac_context_t mbedtls_cmac_context_t;




typedef struct {

    mbedtls_cipher_type_t type;


    mbedtls_cipher_mode_t mode;



    unsigned int key_bitlen;


    const char * name;



    unsigned int iv_size;


    int flags;


    unsigned int block_size;


    const mbedtls_cipher_base_t *base;

} mbedtls_cipher_info_t;




typedef struct {

    const mbedtls_cipher_info_t *cipher_info;


    int key_bitlen;


    mbedtls_operation_t operation;



    void (*add_padding)( unsigned char *output, size_t olen, size_t data_len );
    int (*get_padding)( unsigned char *input, size_t ilen, size_t *data_len );



    unsigned char unprocessed_data[16];


    size_t unprocessed_len;


    unsigned char iv[16];


    size_t iv_size;


    void *cipher_ctx;



    mbedtls_cmac_context_t *cmac_ctx;

} mbedtls_cipher_context_t;







const int *mbedtls_cipher_list( void );
# 279 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name );
# 290 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type );
# 304 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_values( const mbedtls_cipher_id_t cipher_id,
                                              int key_bitlen,
                                              const mbedtls_cipher_mode_t mode );




void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx );






void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx );
# 336 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx, const mbedtls_cipher_info_t *cipher_info );
# 346 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline unsigned int mbedtls_cipher_get_block_size( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->block_size;
}
# 363 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return MBEDTLS_MODE_NONE;

    return ctx->cipher_info->mode;
}
# 380 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_iv_size( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return 0;

    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;

    return (int) ctx->cipher_info->iv_size;
}
# 399 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return MBEDTLS_CIPHER_NONE;

    return ctx->cipher_info->type;
}
# 414 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline const char *mbedtls_cipher_get_name( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->name;
}
# 431 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_key_bitlen( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return MBEDTLS_KEY_LENGTH_NONE;

    return (int) ctx->cipher_info->key_bitlen;
}
# 448 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_operation_t mbedtls_cipher_get_operation( const mbedtls_cipher_context_t *ctx )
{
    if( ((void *)0) == ctx || ((void *)0) == ctx->cipher_info )
        return MBEDTLS_OPERATION_NONE;

    return ctx->operation;
}
# 471 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx, const unsigned char *key,
                   int key_bitlen, const mbedtls_operation_t operation );
# 487 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx, mbedtls_cipher_padding_t mode );
# 503 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_iv( mbedtls_cipher_context_t *ctx,
                   const unsigned char *iv, size_t iv_len );
# 514 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx );
# 528 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update_ad( mbedtls_cipher_context_t *ctx,
                      const unsigned char *ad, size_t ad_len );
# 561 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx, const unsigned char *input,
                   size_t ilen, unsigned char *output, size_t *olen );
# 581 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen );
# 596 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_write_tag( mbedtls_cipher_context_t *ctx,
                      unsigned char *tag, size_t tag_len );
# 610 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_check_tag( mbedtls_cipher_context_t *ctx,
                      const unsigned char *tag, size_t tag_len );
# 641 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_crypt( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen );
# 669 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len );
# 703 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_decrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         const unsigned char *tag, size_t tag_len );
# 28 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h" 2
# 239 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h"
typedef enum {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,

    MBEDTLS_KEY_EXCHANGE_ECC,
} mbedtls_key_exchange_type_t;
# 335 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h"
typedef struct mbedtls_ssl_ciphersuite_t mbedtls_ssl_ciphersuite_t;
# 345 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h"
struct mbedtls_ssl_ciphersuite_t
{
    int id;
    const char * name;

    mbedtls_cipher_type_t cipher;
    mbedtls_md_type_t mac;
    mbedtls_key_exchange_type_t key_exchange;

    int min_major_ver;
    int min_minor_ver;
    int max_major_ver;
    int max_minor_ver;

    unsigned char flags;
};

const int *mbedtls_ssl_list_ciphersuites( void );


const int *mbedtls_gmssl_list_ciphersuites( void );
const int *mbedtls_all_list_ciphersuites( void );


const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_string( const char *ciphersuite_name );
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite_id );

const mbedtls_ssl_ciphersuite_t *mbedtls_gmssl_ciphersuite_from_id( int ciphersuite_id );


mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_pk_alg( const mbedtls_ssl_ciphersuite_t *info );
mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_alg( const mbedtls_ssl_ciphersuite_t *info );


int mbedtls_ssl_ciphersuite_uses_ec( const mbedtls_ssl_ciphersuite_t *info );
int mbedtls_ssl_ciphersuite_uses_psk( const mbedtls_ssl_ciphersuite_t *info );


static inline int mbedtls_ssl_ciphersuite_has_pfs( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_DHE_PSK:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECJPAKE:
            return( 1 );

        default:
            return( 0 );
    }
}



static inline int mbedtls_ssl_ciphersuite_no_pfs( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_RSA:
        case MBEDTLS_KEY_EXCHANGE_PSK:
        case MBEDTLS_KEY_EXCHANGE_RSA_PSK:
            return( 1 );

        default:
            return( 0 );
    }
}



static inline int mbedtls_ssl_ciphersuite_uses_ecdh( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
            return( 1 );

        default:
            return( 0 );
    }
}


static inline int mbedtls_ssl_ciphersuite_cert_req_allowed( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_RSA:
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECC:
            return( 1 );

        default:
            return( 0 );
    }
}
# 468 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_ciphersuites.h"
static inline int mbedtls_ssl_ciphersuite_uses_ecdhe( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
            return( 1 );

        default:
            return( 0 );
    }
}



static inline int mbedtls_ssl_ciphersuite_uses_server_signature( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECC:
            return( 1 );

        default:
            return( 0 );
    }
}
# 36 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2


# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h" 1
# 118 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;




typedef struct mbedtls_asn1_bitstring
{
    size_t len;
    unsigned char unused_bits;
    unsigned char *p;
}
mbedtls_asn1_bitstring;




typedef struct mbedtls_asn1_sequence
{
    mbedtls_asn1_buf buf;
    struct mbedtls_asn1_sequence *next;
}
mbedtls_asn1_sequence;




typedef struct mbedtls_asn1_named_data
{
    mbedtls_asn1_buf oid;
    mbedtls_asn1_buf val;
    struct mbedtls_asn1_named_data *next;
    unsigned char next_merged;
}
mbedtls_asn1_named_data;
# 171 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_len( unsigned char **p,
                  const unsigned char *end,
                  size_t *len );
# 187 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_tag( unsigned char **p,
                  const unsigned char *end,
                  size_t *len, int tag );
# 201 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bool( unsigned char **p,
                   const unsigned char *end,
                   int *val );
# 215 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_int( unsigned char **p,
                  const unsigned char *end,
                  int *val );
# 229 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                        mbedtls_asn1_bitstring *bs);
# 243 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring_null( unsigned char **p, const unsigned char *end,
                             size_t *len );
# 257 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_sequence_of( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_asn1_sequence *cur,
                          int tag);
# 273 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_mpi( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_mpi *X );
# 290 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_asn1_buf *alg, mbedtls_asn1_buf *params );
# 306 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg );
# 320 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/asn1.h"
mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len );






void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *entry );







void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head );
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h" 2
# 188 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
typedef mbedtls_asn1_buf mbedtls_x509_buf;




typedef mbedtls_asn1_bitstring mbedtls_x509_bitstring;





typedef mbedtls_asn1_named_data mbedtls_x509_name;




typedef mbedtls_asn1_sequence mbedtls_x509_sequence;


typedef struct mbedtls_x509_time
{
    int year, mon, day;
    int hour, min, sec;
}
mbedtls_x509_time;
# 229 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_dn_oneline_gets( char *buf, size_t size, const mbedtls_x509_name *dn );
# 244 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_dn_gets( char *buf, size_t size, const mbedtls_x509_name *dn );
# 257 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_serial_gets( char *buf, size_t size, const mbedtls_x509_buf *serial );
# 271 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_past( const mbedtls_x509_time *to );
# 285 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_future( const mbedtls_x509_time *from );






int mbedtls_x509_self_test( int verbose );





int mbedtls_x509_get_name( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur );
int mbedtls_x509_get_alg_null( unsigned char **p, const unsigned char *end,
                       mbedtls_x509_buf *alg );
int mbedtls_x509_get_alg( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *alg, mbedtls_x509_buf *params );

int mbedtls_x509_get_rsassa_pss_params( const mbedtls_x509_buf *params,
                                mbedtls_md_type_t *md_alg, mbedtls_md_type_t *mgf_md,
                                int *salt_len );

int mbedtls_x509_get_sig( unsigned char **p, const unsigned char *end, mbedtls_x509_buf *sig );
int mbedtls_x509_get_sig_alg( const mbedtls_x509_buf *sig_oid, const mbedtls_x509_buf *sig_params,
                      mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg,
                      void **sig_opts );
int mbedtls_x509_get_time( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_time *t );
int mbedtls_x509_get_serial( unsigned char **p, const unsigned char *end,
                     mbedtls_x509_buf *serial );
int mbedtls_x509_get_ext( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *ext, int tag );
int mbedtls_x509_sig_alg_gets( char *buf, size_t size, const mbedtls_x509_buf *sig_oid,
                       mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                       const void *sig_opts );
int mbedtls_x509_key_size_helper( char *buf, size_t buf_size, const char *name );
int mbedtls_x509_string_to_names( mbedtls_asn1_named_data **head, const char *name );
int mbedtls_x509_set_extension( mbedtls_asn1_named_data **head, const char *oid, size_t oid_len,
                        int critical, const unsigned char *val,
                        size_t val_len );
int mbedtls_x509_write_extensions( unsigned char **p, unsigned char *start,
                           mbedtls_asn1_named_data *first );
int mbedtls_x509_write_names( unsigned char **p, unsigned char *start,
                      mbedtls_asn1_named_data *first );
int mbedtls_x509_write_sig( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len,
                    unsigned char *sig, size_t size );
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crl.h" 1
# 51 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crl.h"
typedef struct mbedtls_x509_crl_entry
{
    mbedtls_x509_buf raw;

    mbedtls_x509_buf serial;

    mbedtls_x509_time revocation_date;

    mbedtls_x509_buf entry_ext;

    struct mbedtls_x509_crl_entry *next;
}
mbedtls_x509_crl_entry;





typedef struct mbedtls_x509_crl
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;

    int version;
    mbedtls_x509_buf sig_oid;

    mbedtls_x509_buf issuer_raw;

    mbedtls_x509_name issuer;

    mbedtls_x509_time this_update;
    mbedtls_x509_time next_update;

    mbedtls_x509_crl_entry entry;

    mbedtls_x509_buf crl_ext;

    mbedtls_x509_buf sig_oid2;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;

    struct mbedtls_x509_crl *next;
}
mbedtls_x509_crl;
# 108 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_parse_der( mbedtls_x509_crl *chain,
                        const unsigned char *buf, size_t buflen );
# 122 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_parse( mbedtls_x509_crl *chain, const unsigned char *buf, size_t buflen );
# 149 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crl *crl );






void mbedtls_x509_crl_init( mbedtls_x509_crl *crl );






void mbedtls_x509_crl_free( mbedtls_x509_crl *crl );
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h" 2
# 52 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
typedef struct mbedtls_x509_crt
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;

    int version;
    mbedtls_x509_buf serial;
    mbedtls_x509_buf sig_oid;

    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_buf subject_raw;

    mbedtls_x509_name issuer;
    mbedtls_x509_name subject;

    mbedtls_x509_time valid_from;
    mbedtls_x509_time valid_to;

    mbedtls_pk_context pk;

    mbedtls_x509_buf issuer_id;
    mbedtls_x509_buf subject_id;
    mbedtls_x509_buf v3_ext;
    mbedtls_x509_sequence subject_alt_names;

    int ext_types;
    int ca_istrue;
    int max_pathlen;

    unsigned int key_usage;

    mbedtls_x509_sequence ext_key_usage;

    unsigned char ns_cert_type;

    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;

    struct mbedtls_x509_crt *next;
}
mbedtls_x509_crt;
# 107 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
typedef struct
{
    uint32_t allowed_mds;
    uint32_t allowed_pks;
    uint32_t allowed_curves;
    uint32_t rsa_min_bitlen;
}
mbedtls_x509_crt_profile;
# 130 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
typedef struct mbedtls_x509write_cert
{
    int version;
    mbedtls_mpi serial;
    mbedtls_pk_context *subject_key;
    mbedtls_pk_context *issuer_key;
    mbedtls_asn1_named_data *subject;
    mbedtls_asn1_named_data *issuer;
    mbedtls_md_type_t md_alg;
    char not_before[15 + 1];
    char not_after[15 + 1];
    mbedtls_asn1_named_data *extensions;
}
mbedtls_x509write_cert;






extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_default;





extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_next;




extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_suiteb;
# 173 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse_der( mbedtls_x509_crt *chain, const unsigned char *buf,
                        size_t buflen );
# 191 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse( mbedtls_x509_crt *chain, const unsigned char *buf, size_t buflen );
# 237 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crt *crt );
# 252 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify_info( char *buf, size_t size, const char *prefix,
                          uint32_t flags );
# 306 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 340 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify_with_profile( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 370 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_check_key_usage( const mbedtls_x509_crt *crt,
                                      unsigned int usage );
# 387 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_check_extended_key_usage( const mbedtls_x509_crt *crt,
                                       const char *usage_oid,
                                       size_t usage_len );
# 402 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_is_revoked( const mbedtls_x509_crt *crt, const mbedtls_x509_crl *crl );







void mbedtls_x509_crt_init( mbedtls_x509_crt *crt );






void mbedtls_x509_crt_free( mbedtls_x509_crt *crt );
# 429 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
void mbedtls_x509write_crt_init( mbedtls_x509write_cert *ctx );
# 439 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
void mbedtls_x509write_crt_set_version( mbedtls_x509write_cert *ctx, int version );
# 449 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_serial( mbedtls_x509write_cert *ctx, const mbedtls_mpi *serial );
# 465 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_validity( mbedtls_x509write_cert *ctx, const char *not_before,
                                const char *not_after );
# 480 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_issuer_name( mbedtls_x509write_cert *ctx,
                                   const char *issuer_name );
# 495 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_subject_name( mbedtls_x509write_cert *ctx,
                                    const char *subject_name );







void mbedtls_x509write_crt_set_subject_key( mbedtls_x509write_cert *ctx, mbedtls_pk_context *key );







void mbedtls_x509write_crt_set_issuer_key( mbedtls_x509write_cert *ctx, mbedtls_pk_context *key );
# 521 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
void mbedtls_x509write_crt_set_md_alg( mbedtls_x509write_cert *ctx, mbedtls_md_type_t md_alg );
# 536 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_extension( mbedtls_x509write_cert *ctx,
                                 const char *oid, size_t oid_len,
                                 int critical,
                                 const unsigned char *val, size_t val_len );
# 552 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_basic_constraints( mbedtls_x509write_cert *ctx,
                                         int is_ca, int max_pathlen );
# 565 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_subject_key_identifier( mbedtls_x509write_cert *ctx );
# 576 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_authority_key_identifier( mbedtls_x509write_cert *ctx );
# 588 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_key_usage( mbedtls_x509write_cert *ctx,
                                         unsigned int key_usage );
# 600 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_set_ns_cert_type( mbedtls_x509write_cert *ctx,
                                    unsigned char ns_cert_type );






void mbedtls_x509write_crt_free( mbedtls_x509write_cert *ctx );
# 630 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_der( mbedtls_x509write_cert *ctx, unsigned char *buf, size_t size,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng );
# 651 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509write_crt_pem( mbedtls_x509write_cert *ctx, unsigned char *buf, size_t size,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng );
# 39 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2
# 47 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h" 1
# 35 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
typedef enum
{
    MBEDTLS_ECDH_OURS,
    MBEDTLS_ECDH_THEIRS,
} mbedtls_ecdh_side;




typedef struct
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
    mbedtls_ecp_point Qp;
    mbedtls_mpi z;
    int point_format;
    mbedtls_ecp_point Vi;
    mbedtls_ecp_point Vf;
    mbedtls_mpi _d;
}
mbedtls_ecdh_context;
# 71 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_gen_public( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 93 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_compute_shared( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );






void mbedtls_ecdh_init( mbedtls_ecdh_context *ctx );






void mbedtls_ecdh_free( mbedtls_ecdh_context *ctx );
# 128 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_make_params( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
# 143 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_read_params( mbedtls_ecdh_context *ctx,
                      const unsigned char **buf, const unsigned char *end );
# 158 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_get_params( mbedtls_ecdh_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_side side );
# 174 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_make_public( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
# 189 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_read_public( mbedtls_ecdh_context *ctx,
                      const unsigned char *buf, size_t blen );
# 205 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecdh.h"
int mbedtls_ecdh_calc_secret( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
# 48 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2







# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform_time.h" 1
# 52 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform_time.h"
typedef time_t mbedtls_time_t;
# 56 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 2
# 366 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
union mbedtls_ssl_premaster_secret
{

    unsigned char _pms_rsa[48];
# 378 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
    unsigned char _pms_ecdh[( ( 384 + 7 ) / 8 )];


    unsigned char _pms_psk[4 + 2 * 32];






    unsigned char _pms_rsa_psk[52 + 32];


    unsigned char _pms_ecdhe_psk[4 + ( ( 384 + 7 ) / 8 )
                                   + 32];




};
# 408 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef enum
{
    MBEDTLS_SSL_HELLO_REQUEST,
    MBEDTLS_SSL_CLIENT_HELLO,
    MBEDTLS_SSL_SERVER_HELLO,
    MBEDTLS_SSL_SERVER_CERTIFICATE,
    MBEDTLS_SSL_SERVER_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_REQUEST,
    MBEDTLS_SSL_SERVER_HELLO_DONE,
    MBEDTLS_SSL_CLIENT_CERTIFICATE,
    MBEDTLS_SSL_CLIENT_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_VERIFY,
    MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_CLIENT_FINISHED,
    MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_SERVER_FINISHED,
    MBEDTLS_SSL_FLUSH_BUFFERS,
    MBEDTLS_SSL_HANDSHAKE_WRAPUP,
    MBEDTLS_SSL_HANDSHAKE_OVER,
    MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET,
    MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT,
}
mbedtls_ssl_states;
# 449 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_send_t( void *ctx,
                                const unsigned char *buf,
                                size_t len );
# 472 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_recv_t( void *ctx,
                                unsigned char *buf,
                                size_t len );
# 498 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_recv_timeout_t( void *ctx,
                                        unsigned char *buf,
                                        size_t len,
                                        uint32_t timeout );
# 524 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef void mbedtls_ssl_set_timer_t( void * ctx,
                                      uint32_t int_ms,
                                      uint32_t fin_ms );
# 539 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_get_timer_t( void * ctx );



typedef struct mbedtls_ssl_session mbedtls_ssl_session;
typedef struct mbedtls_ssl_context mbedtls_ssl_context;
typedef struct mbedtls_ssl_config mbedtls_ssl_config;


typedef struct mbedtls_ssl_transform mbedtls_ssl_transform;
typedef struct mbedtls_ssl_handshake_params mbedtls_ssl_handshake_params;
typedef struct mbedtls_ssl_sig_hash_set_t mbedtls_ssl_sig_hash_set_t;

typedef struct mbedtls_ssl_key_cert mbedtls_ssl_key_cert;


typedef struct mbedtls_ssl_flight_item mbedtls_ssl_flight_item;





struct mbedtls_ssl_session
{

    mbedtls_time_t start;

    int ciphersuite;
    int compression;
    size_t id_len;
    unsigned char id[32];
    unsigned char master[48];


    mbedtls_x509_crt *peer_cert;

    uint32_t verify_result;


    unsigned char *ticket;
    size_t ticket_len;
    uint32_t ticket_lifetime;



    unsigned char mfl_code;



    int trunc_hmac;



    int encrypt_then_mac;

};




struct mbedtls_ssl_config
{


    int mode;





    const int *ciphersuite_list[4];


    void (*f_dbg)(void *, int, const char *, int, const char *);
    void *p_dbg;


    int (*f_rng)(void *, unsigned char *, size_t);
    void *p_rng;


    int (*f_get_cache)(void *, mbedtls_ssl_session *);

    int (*f_set_cache)(void *, const mbedtls_ssl_session *);
    void *p_cache;



    int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_sni;




    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;




    int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_psk;




    int (*f_cookie_write)( void *, unsigned char **, unsigned char *,
                           const unsigned char *, size_t );

    int (*f_cookie_check)( void *, const unsigned char *, size_t,
                           const unsigned char *, size_t );
    void *p_cookie;




    int (*f_ticket_write)( void *, const mbedtls_ssl_session *,
            unsigned char *, const unsigned char *, size_t *, uint32_t * );

    int (*f_ticket_parse)( void *, mbedtls_ssl_session *, unsigned char *, size_t);
    void *p_ticket;




    int (*f_export_keys)( void *, const unsigned char *,
            const unsigned char *, size_t, size_t, size_t );
    void *p_export_keys;



    const mbedtls_x509_crt_profile *cert_profile;
    mbedtls_ssl_key_cert *key_cert;
    mbedtls_x509_crt *ca_chain;
    mbedtls_x509_crl *ca_crl;


    const mbedtls_x509_crt_profile *gm_cert_profile;
    mbedtls_ssl_key_cert *gm_key_cert;
    mbedtls_x509_crt *gm_ca_chain;
    mbedtls_x509_crl *gm_ca_crl;




    const int *sig_hashes;



    const mbedtls_ecp_group_id *curve_list;
# 697 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
    unsigned char *psk;
    size_t psk_len;
    unsigned char *psk_identity;
    size_t psk_identity_len;



    const char **alpn_list;






    uint32_t read_timeout;


    uint32_t hs_timeout_min;

    uint32_t hs_timeout_max;




    int renego_max_records;
    unsigned char renego_period[8];




    unsigned int badmac_limit;






    unsigned char max_major_ver;
    unsigned char max_minor_ver;
    unsigned char min_major_ver;
    unsigned char min_minor_ver;





    unsigned int endpoint : 1;
    unsigned int transport : 1;
    unsigned int authmode : 2;

    unsigned int allow_legacy_renegotiation : 2 ;




    unsigned int mfl_code : 3;


    unsigned int encrypt_then_mac : 1 ;


    unsigned int extended_ms : 1;


    unsigned int anti_replay : 1;


    unsigned int cbc_record_splitting : 1;


    unsigned int disable_renegotiation : 1;


    unsigned int trunc_hmac : 1;


    unsigned int session_tickets : 1;


    unsigned int fallback : 1;


    unsigned int cert_req_ca_list : 1;


};

typedef enum
{
    MBEDTLS_PROTOCOL_GMSSL = 0,
    MBEDTLS_PROTOCOL_SSL,
    MBEDTLS_PROTOCOL_ALL,
}Protocol_t;

struct mbedtls_ssl_context
{
    int protocol;

    mbedtls_ssl_config *conf;




    int state;

    int renego_status;
    int renego_records_seen;




    int major_ver;
    int minor_ver;


    unsigned badmac_seen;


    mbedtls_ssl_send_t *f_send;
    mbedtls_ssl_recv_t *f_recv;
    mbedtls_ssl_recv_timeout_t *f_recv_timeout;


    void *p_bio;




    mbedtls_ssl_session *session_in;
    mbedtls_ssl_session *session_out;
    mbedtls_ssl_session *session;
    mbedtls_ssl_session *session_negotiate;

    mbedtls_ssl_handshake_params *handshake;





    mbedtls_ssl_transform *transform_in;
    mbedtls_ssl_transform *transform_out;
    mbedtls_ssl_transform *transform;
    mbedtls_ssl_transform *transform_negotiate;




    void *p_timer;

    mbedtls_ssl_set_timer_t *f_set_timer;
    mbedtls_ssl_get_timer_t *f_get_timer;




    unsigned char *in_buf;
    unsigned char *in_ctr;


    unsigned char *in_hdr;
    unsigned char *in_len;
    unsigned char *in_iv;
    unsigned char *in_msg;
    unsigned char *in_offt;

    int in_msgtype;
    size_t in_msglen;
    size_t in_left;

    uint16_t in_epoch;
    size_t next_record_offset;



    uint64_t in_window_top;
    uint64_t in_window;


    size_t in_hslen;

    int nb_zero;

    int keep_current_message;





    unsigned char *out_buf;
    unsigned char *out_ctr;
    unsigned char *out_hdr;
    unsigned char *out_len;
    unsigned char *out_iv;
    unsigned char *out_msg;

    int out_msgtype;
    size_t out_msglen;
    size_t out_left;





    signed char split_done;





    int client_auth;





    char *hostname;




    const char *alpn_chosen;






    unsigned char *cli_id;
    size_t cli_id_len;






    int secure_renegotiation;


    size_t verify_data_len;
    char own_verify_data[12];
    char peer_verify_data[12];

};
# 966 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
 const int *mbedtls_ssl_list_ciphersuites( void );


const int *mbedtls_gmssl_list_ciphersuites( void );
const int *mbedtls_all_list_ciphersuites( void );
# 981 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_ciphersuite_name( const int ciphersuite_id );
# 991 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_ciphersuite_id( const char *ciphersuite_name );
# 1000 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_init( mbedtls_ssl_context *ssl );
# 1017 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                        mbedtls_ssl_config *conf );
# 1030 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_session_reset( mbedtls_ssl_context *ssl );







void mbedtls_ssl_conf_endpoint( mbedtls_ssl_config *conf, int endpoint );
# 1054 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_transport( mbedtls_ssl_config *conf, int transport );
# 1082 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_authmode( mbedtls_ssl_config *conf, int authmode );
# 1096 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_verify( mbedtls_ssl_config *conf,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 1108 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_rng( mbedtls_ssl_config *conf,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng );
# 1126 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg );
# 1160 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
                          void *p_bio,
                          mbedtls_ssl_send_t *f_send,
                          mbedtls_ssl_recv_t *f_recv,
                          mbedtls_ssl_recv_timeout_t *f_recv_timeout );
# 1182 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_read_timeout( mbedtls_ssl_config *conf, uint32_t timeout );
# 1204 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer );
# 1228 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_ticket_write_t( void *p_ticket,
                                        const mbedtls_ssl_session *session,
                                        unsigned char *start,
                                        const unsigned char *end,
                                        size_t *tlen,
                                        uint32_t *lifetime );
# 1256 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_export_keys_t( void *p_expkey,
                                const unsigned char *ms,
                                const unsigned char *kb,
                                size_t maclen,
                                size_t keylen,
                                size_t ivlen );
# 1287 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_ticket_parse_t( void *p_ticket,
                                        mbedtls_ssl_session *session,
                                        unsigned char *buf,
                                        size_t len );
# 1307 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_session_tickets_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_ticket_write_t *f_ticket_write,
        mbedtls_ssl_ticket_parse_t *f_ticket_parse,
        void *p_ticket );
# 1324 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_export_keys_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_t *f_export_keys,
        void *p_export_keys );
# 1343 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_cookie_write_t( void *ctx,
                                unsigned char **p, unsigned char *end,
                                const unsigned char *info, size_t ilen );
# 1360 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_cookie_check_t( void *ctx,
                                const unsigned char *cookie, size_t clen,
                                const unsigned char *info, size_t ilen );
# 1393 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_dtls_cookies( mbedtls_ssl_config *conf,
                           mbedtls_ssl_cookie_write_t *f_cookie_write,
                           mbedtls_ssl_cookie_check_t *f_cookie_check,
                           void *p_cookie );
# 1417 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_client_transport_id( mbedtls_ssl_context *ssl,
                                 const unsigned char *info,
                                 size_t ilen );
# 1439 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_dtls_anti_replay( mbedtls_ssl_config *conf, char mode );
# 1466 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_dtls_badmac_limit( mbedtls_ssl_config *conf, unsigned limit );
# 1501 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_handshake_timeout( mbedtls_ssl_config *conf, uint32_t min, uint32_t max );
# 1542 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_session_cache( mbedtls_ssl_config *conf,
        void *p_cache,
        int (*f_get_cache)(void *, mbedtls_ssl_session *),
        int (*f_set_cache)(void *, const mbedtls_ssl_session *) );
# 1563 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session );
# 1581 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites );
# 1603 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor );
# 1618 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_cert_profile( mbedtls_ssl_config *conf,
                                    const mbedtls_x509_crt_profile *profile );
# 1628 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl );


void mbedtls_gmssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl );
# 1666 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key );

int mbedtls_gmssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key );
# 1698 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_psk( mbedtls_ssl_config *conf,
                const unsigned char *psk, size_t psk_len,
                const unsigned char *psk_identity, size_t psk_identity_len );
# 1715 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_hs_psk( mbedtls_ssl_context *ssl,
                            const unsigned char *psk, size_t psk_len );
# 1742 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_psk_cb( mbedtls_ssl_config *conf,
                     int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *,
                                  size_t),
                     void *p_psk );
# 1815 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_curves( mbedtls_ssl_config *conf,
                              const mbedtls_ecp_group_id *curves );
# 1838 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_sig_hashes( mbedtls_ssl_config *conf,
                                  const int *hashes );
# 1854 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname );
# 1870 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_hs_own_cert( mbedtls_ssl_context *ssl,
                                 mbedtls_x509_crt *own_cert,
                                 mbedtls_pk_context *pk_key );
# 1885 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_hs_ca_chain( mbedtls_ssl_context *ssl,
                                  mbedtls_x509_crt *ca_chain,
                                  mbedtls_x509_crl *ca_crl );
# 1899 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_hs_authmode( mbedtls_ssl_context *ssl,
                                  int authmode );
# 1925 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_sni( mbedtls_ssl_config *conf,
                  int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *,
                               size_t),
                  void *p_sni );
# 1967 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_alpn_protocols( mbedtls_ssl_config *conf, const char **protos );
# 1978 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_alpn_protocol( const mbedtls_ssl_context *ssl );
# 1997 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_max_version( mbedtls_ssl_config *conf, int major, int minor );
# 2017 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_min_version( mbedtls_ssl_config *conf, int major, int minor );
# 2039 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_fallback( mbedtls_ssl_config *conf, char fallback );
# 2054 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_encrypt_then_mac( mbedtls_ssl_config *conf, char etm );
# 2069 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_extended_master_secret( mbedtls_ssl_config *conf, char ems );
# 2101 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_cert_req_ca_list( mbedtls_ssl_config *conf,
                                          char cert_req_ca_list );
# 2121 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code );
# 2133 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_truncated_hmac( mbedtls_ssl_config *conf, int truncate );
# 2148 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_cbc_record_splitting( mbedtls_ssl_config *conf, char split );
# 2162 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets );
# 2183 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_renegotiation( mbedtls_ssl_config *conf, int renegotiation );
# 2213 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_legacy_renegotiation( mbedtls_ssl_config *conf, int allow_legacy );
# 2253 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_renegotiation_enforced( mbedtls_ssl_config *conf, int max_records );
# 2280 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_renegotiation_period( mbedtls_ssl_config *conf,
                                   const unsigned char period[8] );
# 2291 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl );
# 2304 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
uint32_t mbedtls_ssl_get_verify_result( const mbedtls_ssl_context *ssl );
# 2313 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl );
# 2322 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl );
# 2334 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl );
# 2353 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
size_t mbedtls_ssl_get_max_frag_len( const mbedtls_ssl_context *ssl );
# 2371 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
const mbedtls_x509_crt *mbedtls_ssl_get_peer_cert( const mbedtls_ssl_context *ssl );
# 2391 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_session( const mbedtls_ssl_context *ssl, mbedtls_ssl_session *session );
# 2415 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_handshake( mbedtls_ssl_context *ssl );
# 2436 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl );
# 2457 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_renegotiate( mbedtls_ssl_context *ssl );
# 2494 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len );
# 2531 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_write( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len );
# 2549 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message );
# 2565 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl );






void mbedtls_ssl_free( mbedtls_ssl_context *ssl );
# 2584 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_config_init( mbedtls_ssl_config *conf );
# 2601 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset );






void mbedtls_ssl_config_free( mbedtls_ssl_config *conf );






void mbedtls_ssl_session_init( mbedtls_ssl_session *session );







void mbedtls_ssl_session_free( mbedtls_ssl_session *session );
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h" 2
# 97 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_set_threshold( int threshold );
# 114 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_msg( const mbedtls_ssl_context *ssl, int level,
                              const char *file, int line,
                              const char *format, ... );
# 133 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_ret( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, int ret );
# 154 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_buf( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len );
# 175 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_mpi( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_mpi *X );
# 197 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_ecp( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_ecp_point *X );
# 218 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_crt( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_x509_crt *crt );
# 47 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 1
# 48 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h" 1
# 29 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md5.h" 1
# 46 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md5.h"
typedef struct
{
    uint32_t total[2];
    uint32_t state[4];
    unsigned char buffer[64];
}
mbedtls_md5_context;






void mbedtls_md5_init( mbedtls_md5_context *ctx );






void mbedtls_md5_free( mbedtls_md5_context *ctx );







void mbedtls_md5_clone( mbedtls_md5_context *dst,
                        const mbedtls_md5_context *src );






void mbedtls_md5_starts( mbedtls_md5_context *ctx );
# 91 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md5.h"
void mbedtls_md5_update( mbedtls_md5_context *ctx, const unsigned char *input, size_t ilen );







void mbedtls_md5_finish( mbedtls_md5_context *ctx, unsigned char output[16] );


void mbedtls_md5_process( mbedtls_md5_context *ctx, const unsigned char data[64] );
# 123 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/md5.h"
void mbedtls_md5( const unsigned char *input, size_t ilen, unsigned char output[16] );






int mbedtls_md5_self_test( int verbose );
# 30 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h" 2



# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1.h" 1
# 109 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1_alt.h" 1
# 44 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1_alt.h"
typedef struct
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
    int is_offload;
}
mbedtls_sha1_context;






void mbedtls_sha1_init( mbedtls_sha1_context *ctx );






void mbedtls_sha1_set( mbedtls_sha1_context *ctx, int is_offload );







void mbedtls_sha1_free( mbedtls_sha1_context *ctx );







void mbedtls_sha1_clone( mbedtls_sha1_context *dst,
                         const mbedtls_sha1_context *src );






void mbedtls_sha1_starts( mbedtls_sha1_context *ctx );
# 98 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1_alt.h"
void mbedtls_sha1_update( mbedtls_sha1_context *ctx, const unsigned char *input, size_t ilen );







void mbedtls_sha1_finish( mbedtls_sha1_context *ctx, unsigned char output[20] );


void mbedtls_sha1_process( mbedtls_sha1_context *ctx, const unsigned char data[64] );
# 128 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1_alt.h"
void mbedtls_sha1( const unsigned char *input, size_t ilen, unsigned char output[20] );
# 110 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1.h" 2
# 123 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha1.h"
void mbedtls_sha1( const unsigned char *input, size_t ilen, unsigned char output[20] );






int mbedtls_sha1_self_test( int verbose );
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h" 2



# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256.h" 1
# 112 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256_alt.h" 1
# 44 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256_alt.h"
typedef struct
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
    int is_offload;
}
mbedtls_sha256_context;






void mbedtls_sha256_init( mbedtls_sha256_context *ctx );






void mbedtls_sha256_set( mbedtls_sha256_context *ctx, int is_offload );






void mbedtls_sha256_free( mbedtls_sha256_context *ctx );







void mbedtls_sha256_clone( mbedtls_sha256_context *dst,
                           const mbedtls_sha256_context *src );







void mbedtls_sha256_starts( mbedtls_sha256_context *ctx, int is224 );
# 99 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256_alt.h"
void mbedtls_sha256_update( mbedtls_sha256_context *ctx, const unsigned char *input,
                    size_t ilen );







void mbedtls_sha256_finish( mbedtls_sha256_context *ctx, unsigned char output[32] );


void mbedtls_sha256_process( mbedtls_sha256_context *ctx, const unsigned char data[64] );
# 113 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256.h" 2
# 127 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sha256.h"
void mbedtls_sha256( const unsigned char *input, size_t ilen,
           unsigned char output[32], int is224 );






int mbedtls_sha256_self_test( int verbose );
# 38 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h" 2







# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sm3.h" 1
# 44 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sm3.h"
typedef struct
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is_offload;
}
mbedtls_sm3_context;






void mbedtls_sm3_init( mbedtls_sm3_context *ctx );






void mbedtls_sm3_set( mbedtls_sm3_context *ctx, int is_offload );






void mbedtls_sm3_free( mbedtls_sm3_context *ctx );







void mbedtls_sm3_clone( mbedtls_sm3_context *dst,
                           const mbedtls_sm3_context *src );






void mbedtls_sm3_starts( mbedtls_sm3_context *ctx);
# 97 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sm3.h"
void mbedtls_sm3_update( mbedtls_sm3_context *ctx, const unsigned char *input,
                    size_t ilen );







void mbedtls_sm3_finish( mbedtls_sm3_context *ctx, unsigned char output[32] );


void mbedtls_sm3_process( mbedtls_sm3_context *ctx, const unsigned char data[64] );
# 128 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/sm3.h"
void mbedtls_sm3( const unsigned char *input, size_t ilen,
           unsigned char output[32]);






int mbedtls_sm3_self_test( int verbose );
# 46 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h" 2
# 172 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
struct mbedtls_ssl_sig_hash_set_t
{





    mbedtls_md_type_t rsa;
    mbedtls_md_type_t ecdsa;
};






struct mbedtls_ssl_handshake_params
{






    mbedtls_ssl_sig_hash_set_t hash_algs;





    mbedtls_ecdh_context ecdh_ctx;
# 213 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
    const mbedtls_ecp_curve_info **curves;


    unsigned char *psk;
    size_t psk_len;


    mbedtls_ssl_key_cert *key_cert;

    int sni_authmode;
    mbedtls_ssl_key_cert *sni_key_cert;
    mbedtls_x509_crt *sni_ca_chain;
    mbedtls_x509_crl *sni_ca_crl;



    unsigned int out_msg_seq;
    unsigned int in_msg_seq;

    unsigned char *verify_cookie;

    unsigned char verify_cookie_len;


    unsigned char *hs_msg;

    uint32_t retransmit_timeout;
    unsigned char retransmit_state;
    mbedtls_ssl_flight_item *flight;
    mbedtls_ssl_flight_item *cur_msg;
    unsigned int in_flight_start_seq;

    mbedtls_ssl_transform *alt_transform_out;

    unsigned char alt_out_ctr[8];
# 256 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
       mbedtls_md5_context fin_md5;
      mbedtls_sha1_context fin_sha1;



    mbedtls_sha256_context fin_sha256;







        mbedtls_sm3_context fin_sm3;


    void (*update_checksum)(mbedtls_ssl_context *, const unsigned char *, size_t);
    void (*calc_verify)(mbedtls_ssl_context *, unsigned char *);
    void (*calc_finished)(mbedtls_ssl_context *, unsigned char *, int);
    int (*tls_prf)(const unsigned char *, size_t, const char *,
                    const unsigned char *, size_t,
                    unsigned char *, size_t);

    size_t pmslen;

    unsigned char randbytes[64];
    unsigned char premaster[sizeof( union mbedtls_ssl_premaster_secret )];


    int resume;
    int max_major_ver;
    int max_minor_ver;
    int cli_exts;


    int new_session_ticket;


    int extended_ms;

};





struct mbedtls_ssl_transform
{



    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;

    unsigned int keylen;
    size_t minlen;
    size_t ivlen;
    size_t fixed_ivlen;
    size_t maclen;

    unsigned char iv_enc[16];
    unsigned char iv_dec[16];







    mbedtls_md_context_t md_ctx_enc;
    mbedtls_md_context_t md_ctx_dec;

    mbedtls_cipher_context_t cipher_ctx_enc;
    mbedtls_cipher_context_t cipher_ctx_dec;
# 337 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
};





struct mbedtls_ssl_key_cert
{
    mbedtls_x509_crt *cert;
    mbedtls_pk_context *key;
    mbedtls_ssl_key_cert *next;
};






struct mbedtls_ssl_flight_item
{
    unsigned char *p;
    size_t len;
    unsigned char type;
    mbedtls_ssl_flight_item *next;
};






mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg );

void mbedtls_ssl_sig_hash_set_add( mbedtls_ssl_sig_hash_set_t *set,
                                   mbedtls_pk_type_t sig_alg,
                                   mbedtls_md_type_t md_alg );

void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg );


static inline void mbedtls_ssl_sig_hash_set_init( mbedtls_ssl_sig_hash_set_t *set )
{
    mbedtls_ssl_sig_hash_set_const_hash( set, MBEDTLS_MD_NONE );
}
# 393 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
void mbedtls_ssl_transform_free( mbedtls_ssl_transform *transform );







void mbedtls_ssl_handshake_free( mbedtls_ssl_handshake_params *handshake );

int mbedtls_ssl_handshake_client_step( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handshake_server_step( mbedtls_ssl_context *ssl );
void mbedtls_ssl_handshake_wrapup( mbedtls_ssl_context *ssl );

int mbedtls_ssl_send_fatal_handshake_failure( mbedtls_ssl_context *ssl );

void mbedtls_ssl_reset_checksum( mbedtls_ssl_context *ssl );
int mbedtls_ssl_derive_keys( mbedtls_ssl_context *ssl );

int mbedtls_ssl_read_record_layer( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handle_message_type( mbedtls_ssl_context *ssl );
int mbedtls_ssl_prepare_handshake_record( mbedtls_ssl_context *ssl );
void mbedtls_ssl_update_handshake_status( mbedtls_ssl_context *ssl );
# 490 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
int mbedtls_ssl_read_record( mbedtls_ssl_context *ssl );
int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want );

int mbedtls_ssl_write_record( mbedtls_ssl_context *ssl );
int mbedtls_ssl_flush_output( mbedtls_ssl_context *ssl );

int mbedtls_ssl_parse_certificate( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_certificate( mbedtls_ssl_context *ssl );

int mbedtls_ssl_parse_change_cipher_spec( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_change_cipher_spec( mbedtls_ssl_context *ssl );

int mbedtls_ssl_parse_finished( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_finished( mbedtls_ssl_context *ssl );

void mbedtls_ssl_optimize_checksum( mbedtls_ssl_context *ssl,
                            const mbedtls_ssl_ciphersuite_t *ciphersuite_info );


int mbedtls_ssl_psk_derive_premaster( mbedtls_ssl_context *ssl, mbedtls_key_exchange_type_t key_ex );



unsigned char mbedtls_ssl_sig_from_pk( mbedtls_pk_context *pk );
unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type );
mbedtls_pk_type_t mbedtls_ssl_pk_alg_from_sig( unsigned char sig );


mbedtls_md_type_t mbedtls_ssl_md_alg_from_hash( unsigned char hash );
unsigned char mbedtls_ssl_hash_from_md_alg( int md );
int mbedtls_ssl_set_calc_verify_md( mbedtls_ssl_context *ssl, int md );


int mbedtls_ssl_check_curve( const mbedtls_ssl_context *ssl, mbedtls_ecp_group_id grp_id );



int mbedtls_ssl_check_sig_hash( const mbedtls_ssl_context *ssl,
                                mbedtls_md_type_t md );



static inline mbedtls_pk_context *mbedtls_ssl_own_key( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;

    if( ssl->handshake != ((void *)0) && ssl->handshake->key_cert != ((void *)0) )
        key_cert = ssl->handshake->key_cert;
    else
    {

        if( ssl->protocol == 0 )
            key_cert = ssl->conf->gm_key_cert;
        else

            key_cert = ssl->conf->key_cert;
    }

    return( key_cert == ((void *)0) ? ((void *)0) : key_cert->key );
}

static inline mbedtls_pk_context *mbedtls_ssl_own_key_enc( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;

    if( ssl->protocol == 0 && ssl->handshake != ((void *)0) && ssl->handshake->key_cert != ((void *)0) )
        key_cert = ssl->handshake->key_cert->next;
    else
    {
        key_cert = ssl->conf->gm_key_cert->next;
    }

    return( key_cert == ((void *)0) ? ((void *)0) : key_cert->key );
}


static inline mbedtls_x509_crt *mbedtls_ssl_own_cert( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;

    if( ssl->handshake != ((void *)0) && ssl->handshake->key_cert != ((void *)0) )
        key_cert = ssl->handshake->key_cert;

    else{
        if( ssl->protocol == 0 )
            key_cert = ssl->conf->gm_key_cert;
        else
            key_cert = ssl->conf->key_cert;
    }




    return( key_cert == ((void *)0) ? ((void *)0) : key_cert->cert );
}
# 595 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_internal.h"
int mbedtls_ssl_check_cert_usage( const mbedtls_x509_crt *cert,
                          const mbedtls_ssl_ciphersuite_t *ciphersuite,
                          int cert_endpoint,
                          uint32_t *flags );


void mbedtls_ssl_write_version( int major, int minor, int transport,
                        unsigned char ver[2] );
void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] );

static inline size_t mbedtls_ssl_hdr_len( const mbedtls_ssl_context *ssl )
{

    if( ssl->conf->transport == 1 )
        return( 13 );



    return( 5 );
}

static inline size_t mbedtls_ssl_hs_hdr_len( const mbedtls_ssl_context *ssl )
{

    if( ssl->conf->transport == 1 )
        return( 12 );



    return( 4 );
}


void mbedtls_ssl_send_flight_completed( mbedtls_ssl_context *ssl );
void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl );
int mbedtls_ssl_resend( mbedtls_ssl_context *ssl );




int mbedtls_ssl_dtls_replay_check( mbedtls_ssl_context *ssl );
void mbedtls_ssl_dtls_replay_update( mbedtls_ssl_context *ssl );



static inline int mbedtls_ssl_safer_memcmp( const void *a, const void *b, size_t n )
{
    size_t i;
    const unsigned char *A = (const unsigned char *) a;
    const unsigned char *B = (const unsigned char *) b;
    unsigned char diff = 0;

    for( i = 0; i < n; i++ )
        diff |= A[i] ^ B[i];

    return( diff );
}
# 49 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2

# 1 "../../../components/libc/compilers/minilibc/string.h" 1
# 40 "../../../components/libc/compilers/minilibc/string.h"
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
# 51 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2


# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h" 1
# 392 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
typedef struct {
    const char *asn1;
    size_t asn1_len;
    const char *name;
    const char *description;
} mbedtls_oid_descriptor_t;
# 410 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_numeric_string( char *buf, size_t size, const mbedtls_asn1_buf *oid );
# 421 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_x509_ext_type( const mbedtls_asn1_buf *oid, int *ext_type );
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_attr_short_name( const mbedtls_asn1_buf *oid, const char **short_name );
# 443 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_pk_alg( const mbedtls_asn1_buf *oid, mbedtls_pk_type_t *pk_alg );
# 454 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_oid_by_pk_alg( mbedtls_pk_type_t pk_alg,
                           const char **oid, size_t *olen );
# 466 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_ec_grp( const mbedtls_asn1_buf *oid, mbedtls_ecp_group_id *grp_id );
# 477 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_oid_by_ec_grp( mbedtls_ecp_group_id grp_id,
                           const char **oid, size_t *olen );
# 491 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_sig_alg( const mbedtls_asn1_buf *oid,
                     mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg );
# 502 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_sig_alg_desc( const mbedtls_asn1_buf *oid, const char **desc );
# 514 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_oid_by_sig_alg( mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                            const char **oid, size_t *olen );
# 525 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_md_alg( const mbedtls_asn1_buf *oid, mbedtls_md_type_t *md_alg );
# 536 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_extended_key_usage( const mbedtls_asn1_buf *oid, const char **desc );
# 547 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_oid_by_md( mbedtls_md_type_t md_alg, const char **oid, size_t *olen );
# 558 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_cipher_alg( const mbedtls_asn1_buf *oid, mbedtls_cipher_type_t *cipher_alg );
# 572 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/oid.h"
int mbedtls_oid_get_pkcs12_pbe_alg( const mbedtls_asn1_buf *oid, mbedtls_md_type_t *md_alg,
                            mbedtls_cipher_type_t *cipher_alg );
# 54 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c" 2



static void mbedtls_zeroize( void *v, size_t n ) {
    volatile unsigned char *p = v; while( n-- ) *p++ = 0;
}


static inline size_t ssl_ep_len( const mbedtls_ssl_context *ssl )
{

    if( ssl->conf->transport == 1 )
        return( 2 );



    return( 0 );
}





static void ssl_set_timer( mbedtls_ssl_context *ssl, uint32_t millisecs )
{
    if( ssl->f_set_timer == ((void *)0) )
        return;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 82, "set_timer to %d ms", (int) millisecs );
    ssl->f_set_timer( ssl->p_timer, millisecs / 4, millisecs );
}




static int ssl_check_timer( mbedtls_ssl_context *ssl )
{
    if( ssl->f_get_timer == ((void *)0) )
        return( 0 );

    if( ssl->f_get_timer( ssl->p_timer ) == 2 )
    {
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 96, "timer expired" );
        return( -1 );
    }

    return( 0 );
}






static int ssl_double_retransmit_timeout( mbedtls_ssl_context *ssl )
{
    uint32_t new_timeout;

    if( ssl->handshake->retransmit_timeout >= ssl->conf->hs_timeout_max )
        return( -1 );

    new_timeout = 2 * ssl->handshake->retransmit_timeout;


    if( new_timeout < ssl->handshake->retransmit_timeout ||
        new_timeout > ssl->conf->hs_timeout_max )
    {
        new_timeout = ssl->conf->hs_timeout_max;
    }

    ssl->handshake->retransmit_timeout = new_timeout;
    mbedtls_debug_print_msg( ssl, 3,
                                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 125 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                             126
# 125 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "update timeout value to %d millisecs", ssl->handshake->retransmit_timeout )
                                                              ;

    return( 0 );
}

static void ssl_reset_retransmit_timeout( mbedtls_ssl_context *ssl )
{
    ssl->handshake->retransmit_timeout = ssl->conf->hs_timeout_min;
    mbedtls_debug_print_msg( ssl, 3,
                                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 134 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                             135
# 134 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "update timeout value to %d millisecs", ssl->handshake->retransmit_timeout )
                                                              ;
}
# 148 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static unsigned int mfl_code_to_length[5] =
{
    8192,
    512,
    1024,
    2048,
    4096,
};



static int ssl_session_copy( mbedtls_ssl_session *dst, const mbedtls_ssl_session *src )
{
    mbedtls_ssl_session_free( dst );
    memcpy( dst, src, sizeof( mbedtls_ssl_session ) );


    if( src->peer_cert != ((void *)0) )
    {
        int ret;

        dst->peer_cert = calloc( 1, sizeof(mbedtls_x509_crt) );
        if( dst->peer_cert == ((void *)0) )
            return( -0x7F00 );

        mbedtls_x509_crt_init( dst->peer_cert );

        if( ( ret = mbedtls_x509_crt_parse_der( dst->peer_cert, src->peer_cert->raw.p,
                                        src->peer_cert->raw.len ) ) != 0 )
        {
            free( dst->peer_cert );
            dst->peer_cert = ((void *)0);
            return( ret );
        }
    }



    if( src->ticket != ((void *)0) )
    {
        dst->ticket = calloc( 1, src->ticket_len );
        if( dst->ticket == ((void *)0) )
            return( -0x7F00 );

        memcpy( dst->ticket, src->ticket, src->ticket_len );
    }


    return( 0 );
}
# 269 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int tls1_prf( const unsigned char *secret, size_t slen,
                     const char *label,
                     const unsigned char *random, size_t rlen,
                     unsigned char *dstbuf, size_t dlen )
{
    size_t nb, hs;
    size_t i, j, k;
    const unsigned char *S1, *S2;
    unsigned char tmp[128];
    unsigned char h_i[20];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret;

    mbedtls_md_init( &md_ctx );

    if( sizeof( tmp ) < 20 + strlen( label ) + rlen )
        return( -0x7100 );

    hs = ( slen + 1 ) / 2;
    S1 = secret;
    S2 = secret + slen - hs;

    nb = strlen( label );
    memcpy( tmp + 20, label, nb );
    memcpy( tmp + 20 + nb, random, rlen );
    nb += rlen;




    if( ( md_info = mbedtls_md_info_from_type( MBEDTLS_MD_MD5 ) ) == ((void *)0) )
        return( -0x6C00 );

    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, ((1 << 0) | (1 << 16)) ) ) != 0 )
        return( ret );

    mbedtls_md_hmac_starts( &md_ctx, S1, hs );
    mbedtls_md_hmac_reset( &md_ctx );
    mbedtls_md_hmac_update( &md_ctx, tmp + 20, nb );
    mbedtls_md_hmac_finish( &md_ctx, 4 + tmp );

    for( i = 0; i < dlen; i += 16 )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, 4 + tmp, 16 + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );

        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, 4 + tmp, 16 );
        mbedtls_md_hmac_finish( &md_ctx, 4 + tmp );

        k = ( i + 16 > dlen ) ? dlen % 16 : 16;

        for( j = 0; j < k; j++ )
            dstbuf[i + j] = h_i[j];
    }

    mbedtls_md_free( &md_ctx );




    if( ( md_info = mbedtls_md_info_from_type( MBEDTLS_MD_SHA1 ) ) == ((void *)0) )
        return( -0x6C00 );

    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, ((1 << 0) | (1 << 16)) ) ) != 0 )
        return( ret );

    mbedtls_md_hmac_starts( &md_ctx, S2, hs );
    mbedtls_md_hmac_reset( &md_ctx );
    mbedtls_md_hmac_update( &md_ctx, tmp + 20, nb );
    mbedtls_md_hmac_finish( &md_ctx, tmp );

    for( i = 0; i < dlen; i += 20 )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, 20 + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );

        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, 20 );
        mbedtls_md_hmac_finish( &md_ctx, tmp );

        k = ( i + 20 > dlen ) ? dlen % 20 : 20;

        for( j = 0; j < k; j++ )
            dstbuf[i + j] = (unsigned char)( dstbuf[i + j] ^ h_i[j] );
    }

    mbedtls_md_free( &md_ctx );

    mbedtls_zeroize( tmp, sizeof( tmp ) );
    mbedtls_zeroize( h_i, sizeof( h_i ) );

    return( 0 );
}



static int tls_prf_generic( mbedtls_md_type_t md_type,
                            const unsigned char *secret, size_t slen,
                            const char *label,
                            const unsigned char *random, size_t rlen,
                            unsigned char *dstbuf, size_t dlen )
{
    size_t nb;
    size_t i, j, k, md_len;
    unsigned char tmp[128];
    unsigned char h_i[32];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret;

    mbedtls_md_init( &md_ctx );

    if( ( md_info = mbedtls_md_info_from_type( md_type ) ) == ((void *)0) )
        return( -0x6C00 );

    md_len = mbedtls_md_get_size( md_info );

    if( sizeof( tmp ) < md_len + strlen( label ) + rlen )
        return( -0x7100 );

    nb = strlen( label );
    memcpy( tmp + md_len, label, nb );
    memcpy( tmp + md_len + nb, random, rlen );
    nb += rlen;




    if ( ( ret = mbedtls_md_setup( &md_ctx, md_info, ((1 << 0) | (1 << 16)) ) ) != 0 )
        return( ret );

    mbedtls_md_hmac_starts( &md_ctx, secret, slen );
    mbedtls_md_hmac_reset( &md_ctx );
    mbedtls_md_hmac_update( &md_ctx, tmp + md_len, nb );
    mbedtls_md_hmac_finish( &md_ctx, tmp );

    for( i = 0; i < dlen; i += md_len )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );

        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len );
        mbedtls_md_hmac_finish( &md_ctx, tmp );

        k = ( ( i + md_len > dlen ) ? ( dlen % md_len ) : md_len );

        for( j = 0; j < k; j++ )
            dstbuf[i + j] = h_i[j];
    }

    mbedtls_md_free( &md_ctx );

    mbedtls_zeroize( tmp, sizeof( tmp ) );
    mbedtls_zeroize( h_i, sizeof( h_i ) );

    return( 0 );
}


static int tls_prf_sha256( const unsigned char *secret, size_t slen,
                           const char *label,
                           const unsigned char *random, size_t rlen,
                           unsigned char *dstbuf, size_t dlen )
{
    return( tls_prf_generic( MBEDTLS_MD_SHA256, secret, slen,
                             label, random, rlen, dstbuf, dlen ) );
}
# 456 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_update_checksum_start( mbedtls_ssl_context *, const unsigned char *, size_t );



static void ssl_update_checksum_md5sha1( mbedtls_ssl_context *, const unsigned char *, size_t );
# 469 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_calc_verify_tls( mbedtls_ssl_context *, unsigned char * );
static void ssl_calc_finished_tls( mbedtls_ssl_context *, unsigned char *, int );




static void ssl_update_checksum_sha256( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_calc_verify_tls_sha256( mbedtls_ssl_context *,unsigned char * );
static void ssl_calc_finished_tls_sha256( mbedtls_ssl_context *,unsigned char *, int );
# 491 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int gmtls_prf_generic( mbedtls_md_type_t md_type,
                                const unsigned char *secret, size_t slen,
                                const char *label,
                                const unsigned char *random, size_t rlen,
                                unsigned char *dstbuf, size_t dlen )
{
    return tls_prf_generic( md_type, secret, slen, label, random, rlen, dstbuf, dlen );
}

static int tls_prf_sm3( const unsigned char *secret, size_t slen,
                           const char *label,
                           const unsigned char *random, size_t rlen,
                           unsigned char *dstbuf, size_t dlen )
{
    return( gmtls_prf_generic( MBEDTLS_MD_SM3, secret, slen,
                             label, random, rlen, dstbuf, dlen ) );
}



static void ssl_update_checksum_sm3( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_calc_verify_tls_sm3( mbedtls_ssl_context *, unsigned char * );
static void ssl_calc_finished_tls_sm3( mbedtls_ssl_context *, unsigned char *, int );



int mbedtls_ssl_derive_keys( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    unsigned char tmp[64];
    unsigned char keyblk[256];
    unsigned char *key1;
    unsigned char *key2;
    unsigned char *mac_enc;
    unsigned char *mac_dec;
    size_t iv_copy_len;
    const mbedtls_cipher_info_t *cipher_info;
    const mbedtls_md_info_t *md_info;

    mbedtls_ssl_session *session = ssl->session_negotiate;
    mbedtls_ssl_transform *transform = ssl->transform_negotiate;
    mbedtls_ssl_handshake_params *handshake = ssl->handshake;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 534, "=> derive keys" );

    cipher_info = mbedtls_cipher_info_from_type( transform->ciphersuite_info->cipher );
    if( cipher_info == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 539 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                  540
# 539 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "cipher info for %d not found", transform->ciphersuite_info->cipher )
                                                                   ;
        return( -0x7100 );
    }

    md_info = mbedtls_md_info_from_type( transform->ciphersuite_info->mac );
    if( md_info == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 547 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                               548
# 547 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "mbedtls_md info for %d not found", transform->ciphersuite_info->mac )
                                                                ;
        return( -0x7100 );
    }

    if( ssl->protocol == 0 )
    {


        if( ssl->minor_ver == 1 && ssl->major_ver == 1 )
        {
              handshake->tls_prf = tls_prf_sm3;
              handshake->calc_verify = ssl_calc_verify_tls_sm3;
              handshake->calc_finished = ssl_calc_finished_tls_sm3;
        }
        else

        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 565, "should never happen" );
            return( -0x6C00 );
        }
    }
    else
    {
# 585 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->minor_ver < 3 )
    {
        handshake->tls_prf = tls1_prf;
        handshake->calc_verify = ssl_calc_verify_tls;
        handshake->calc_finished = ssl_calc_finished_tls;
    }
    else
# 605 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->minor_ver == 3 )
    {
        handshake->tls_prf = tls_prf_sha256;
        handshake->calc_verify = ssl_calc_verify_tls_sha256;
        handshake->calc_finished = ssl_calc_finished_tls_sha256;
    }
    else


    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 615, "should never happen" );
        return( -0x6C00 );
    }

    }
# 632 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( handshake->resume == 0 )
    {
        mbedtls_debug_print_buf( ssl, 3,
                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 634 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                         635
# 634 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "premaster secret", handshake->premaster, handshake->pmslen )
                                          ;


        if( ssl->handshake->extended_ms == 1 )
        {
            unsigned char session_hash[48];
            size_t hash_len;

            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 643, "using extended master secret" );

            ssl->handshake->calc_verify( ssl, session_hash );


            if( ssl->minor_ver == 3 )
            {
# 658 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                    hash_len = 32;
            }
            else


            {
                if( ssl->protocol == 0 )
                    hash_len = 32;
                else

                hash_len = 36;

            }

            mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 672, "session hash", session_hash, hash_len );

            ret = handshake->tls_prf( handshake->premaster, handshake->pmslen,
                                      "extended master secret",
                                      session_hash, hash_len,
                                      session->master, 48 );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 680, "prf", ret );
                return( ret );
            }

        }
        else

        ret = handshake->tls_prf( handshake->premaster, handshake->pmslen,
                                  "master secret",
                                  handshake->randbytes, 64,
                                  session->master, 48 );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 693, "prf", ret );
            return( ret );
        }

        mbedtls_zeroize( handshake->premaster, sizeof(handshake->premaster) );
    }
    else
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 700, "no premaster (session resumed)" );




    memcpy( tmp, handshake->randbytes, 64 );
    memcpy( handshake->randbytes, tmp + 32, 32 );
    memcpy( handshake->randbytes + 32, tmp, 32 );
    mbedtls_zeroize( tmp, sizeof( tmp ) );
# 722 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ret = handshake->tls_prf( session->master, 48, "key expansion",
                              handshake->randbytes, 64, keyblk, 256 );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 726, "prf", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 3,
                                                                              "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 730 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                                              731
# 730 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "ciphersuite = %s", mbedtls_ssl_get_ciphersuite_name( session->ciphersuite ) )
                                                                               ;
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 732, "master secret", session->master, 48 );
    mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 733, "random bytes", handshake->randbytes, 64 );
    mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 734, "key block", keyblk, 256 );

    mbedtls_zeroize( handshake->randbytes, sizeof( handshake->randbytes ) );





    transform->keylen = cipher_info->key_bitlen / 8;

    if( cipher_info->mode == MBEDTLS_MODE_GCM ||
        cipher_info->mode == MBEDTLS_MODE_CCM )
    {
        transform->maclen = 0;

        transform->ivlen = 12;
        transform->fixed_ivlen = 4;


        transform->minlen = transform->ivlen - transform->fixed_ivlen
                            + ( transform->ciphersuite_info->flags &
                                0x02 ? 8 : 16 );
    }
    else
    {

        if( ( ret = mbedtls_md_setup( &transform->md_ctx_enc, md_info, ((1 << 0) | (1 << 16)) ) ) != 0 ||
            ( ret = mbedtls_md_setup( &transform->md_ctx_dec, md_info, ((1 << 0) | (1 << 16)) ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 763, "mbedtls_md_setup", ret );
            return( ret );
        }


        transform->maclen = mbedtls_md_get_size( md_info );







        if( session->trunc_hmac == 1 )
            transform->maclen = 10;



        transform->ivlen = cipher_info->iv_size;


        if( cipher_info->mode == MBEDTLS_MODE_STREAM )
            transform->minlen = transform->maclen;
        else
        {







            if( session->encrypt_then_mac == 1 )
            {
                transform->minlen = transform->maclen
                                  + cipher_info->block_size;
            }
            else

            {
                transform->minlen = transform->maclen
                                  + cipher_info->block_size
                                  - transform->maclen % cipher_info->block_size;
            }


            if( ssl->minor_ver == 0 ||
                ssl->minor_ver == 1 )
                ;
            else


            if( ssl->minor_ver == 2 ||
                ssl->minor_ver == 3 ||
                ssl->protocol == 0 )
            {
                transform->minlen += transform->ivlen;
            }
            else

            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 824, "should never happen" );
                return( -0x6C00 );
            }
        }
    }

    mbedtls_debug_print_msg( ssl, 3,

                                       "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 830 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,

                                       832
# 830 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "keylen: %d, minlen: %d, ivlen: %d, maclen: %d", transform->keylen, transform->minlen, transform->ivlen, transform->maclen )

                                        ;





    if( ssl->conf->endpoint == 0 )
    {
        key1 = keyblk + transform->maclen * 2;
        key2 = keyblk + transform->maclen * 2 + transform->keylen;

        mac_enc = keyblk;
        mac_dec = keyblk + transform->maclen;




        iv_copy_len = ( transform->fixed_ivlen ) ?
                            transform->fixed_ivlen : transform->ivlen;
        memcpy( transform->iv_enc, key2 + transform->keylen, iv_copy_len );
        memcpy( transform->iv_dec, key2 + transform->keylen + iv_copy_len,
                iv_copy_len );
    }
    else


    if( ssl->conf->endpoint == 1 )
    {
        key1 = keyblk + transform->maclen * 2 + transform->keylen;
        key2 = keyblk + transform->maclen * 2;

        mac_enc = keyblk + transform->maclen;
        mac_dec = keyblk;




        iv_copy_len = ( transform->fixed_ivlen ) ?
                            transform->fixed_ivlen : transform->ivlen;
        memcpy( transform->iv_dec, key1 + transform->keylen, iv_copy_len );
        memcpy( transform->iv_enc, key1 + transform->keylen + iv_copy_len,
                iv_copy_len );
    }
    else

    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 878, "should never happen" );
        return( -0x6C00 );
    }
# 898 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->minor_ver >= 1 )
    {
        mbedtls_md_hmac_starts( &transform->md_ctx_enc, mac_enc, transform->maclen );
        mbedtls_md_hmac_starts( &transform->md_ctx_dec, mac_dec, transform->maclen );
    }
    else

    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 906, "should never happen" );
        return( -0x6C00 );
    }
# 930 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->f_export_keys != ((void *)0) )
    {
        ssl->conf->f_export_keys( ssl->conf->p_export_keys,
                                  session->master, keyblk,
                                  transform->maclen, transform->keylen,
                                  iv_copy_len );
    }


    if( ( ret = mbedtls_cipher_setup( &transform->cipher_ctx_enc,
                                 cipher_info ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 942, "mbedtls_cipher_setup", ret );
        return( ret );
    }

    if( ( ret = mbedtls_cipher_setup( &transform->cipher_ctx_dec,
                                 cipher_info ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 949, "mbedtls_cipher_setup", ret );
        return( ret );
    }

    if( ( ret = mbedtls_cipher_setkey( &transform->cipher_ctx_enc, key1,
                               cipher_info->key_bitlen,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 957, "mbedtls_cipher_setkey", ret );
        return( ret );
    }

    if( ( ret = mbedtls_cipher_setkey( &transform->cipher_ctx_dec, key2,
                               cipher_info->key_bitlen,
                               MBEDTLS_DECRYPT ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 965, "mbedtls_cipher_setkey", ret );
        return( ret );
    }


    if( cipher_info->mode == MBEDTLS_MODE_CBC )
    {
        if( ( ret = mbedtls_cipher_set_padding_mode( &transform->cipher_ctx_enc,
                                             MBEDTLS_PADDING_NONE ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 975, "mbedtls_cipher_set_padding_mode", ret );
            return( ret );
        }

        if( ( ret = mbedtls_cipher_set_padding_mode( &transform->cipher_ctx_dec,
                                             MBEDTLS_PADDING_NONE ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 982, "mbedtls_cipher_set_padding_mode", ret );
            return( ret );
        }
    }


    mbedtls_zeroize( keyblk, sizeof( keyblk ) );
# 1022 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1022, "<= derive keys" );

    return( 0 );
}
# 1077 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
void ssl_calc_verify_tls( mbedtls_ssl_context *ssl, unsigned char hash[36] )
{
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1082, "=> calc verify tls" );

    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );

    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );

     mbedtls_md5_finish( &md5, hash );
    mbedtls_sha1_finish( &sha1, hash + 16 );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1093, "calculated verify result", hash, 36 );
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1094, "<= calc verify" );

    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );

    return;
}





void gmssl_calc_verify_tls( mbedtls_ssl_context *ssl, unsigned char hash[32] )
{
    mbedtls_sm3_context sm3;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1110, "=> calc verify tls" );

    mbedtls_sm3_init( &sm3 );

    mbedtls_sm3_clone( &sm3, &ssl->handshake->fin_sm3 );

    mbedtls_sm3_finish( &sm3, hash );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1118, "calculated verify result", hash, 32 );
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1119, "<= calc verify" );

    mbedtls_sm3_free( &sm3 );

    return;
}






void ssl_calc_verify_tls_sha256( mbedtls_ssl_context *ssl, unsigned char hash[32] )
{
    mbedtls_sha256_context sha256;

    mbedtls_sha256_init( &sha256 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1137, "=> calc verify sha256" );

    mbedtls_sha256_clone( &sha256, &ssl->handshake->fin_sha256 );
    mbedtls_sha256_finish( &sha256, hash );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1142, "calculated verify result", hash, 32 );
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1143, "<= calc verify" );

    mbedtls_sha256_free( &sha256 );

    return;
}
# 1175 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
void ssl_calc_verify_tls_sm3( mbedtls_ssl_context *ssl, unsigned char hash[32] )
{
    mbedtls_sm3_context sm3;

    mbedtls_sm3_init( &sm3 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1181, "=> calc verify sm3" );

    mbedtls_sm3_clone( &sm3, &ssl->handshake->fin_sm3 );
    mbedtls_sm3_finish( &sm3, hash );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1186, "calculated verify result", hash, 32 );
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1187, "<= calc verify" );

    mbedtls_sm3_free( &sm3 );

    return;
}




int mbedtls_ssl_psk_derive_premaster( mbedtls_ssl_context *ssl, mbedtls_key_exchange_type_t key_ex )
{
    unsigned char *p = ssl->handshake->premaster;
    unsigned char *end = p + sizeof( ssl->handshake->premaster );
    const unsigned char *psk = ssl->conf->psk;
    size_t psk_len = ssl->conf->psk_len;


    if( ssl->handshake->psk != ((void *)0) )
    {
        psk = ssl->handshake->psk;
        psk_len = ssl->handshake->psk_len;
    }
# 1219 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( key_ex == MBEDTLS_KEY_EXCHANGE_PSK )
    {
        if( end - p < 2 )
            return( -0x7100 );

        *(p++) = (unsigned char)( psk_len >> 8 );
        *(p++) = (unsigned char)( psk_len );

        if( end < p || (size_t)( end - p ) < psk_len )
            return( -0x7100 );

        memset( p, 0, psk_len );
        p += psk_len;
    }
    else


    if( key_ex == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
    {




        *p++ = 0;
        *p++ = 48;
        p += 48;
    }
    else
# 1271 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( key_ex == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
    {
        int ret;
        size_t zlen;

        if( ( ret = mbedtls_ecdh_calc_secret( &ssl->handshake->ecdh_ctx, &zlen,
                                       p + 2, end - ( p + 2 ),
                                       ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1280, "mbedtls_ecdh_calc_secret", ret );
            return( ret );
        }

        *(p++) = (unsigned char)( zlen >> 8 );
        *(p++) = (unsigned char)( zlen );
        p += zlen;

        mbedtls_debug_print_mpi( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1288, "ECDH: z", &ssl->handshake->ecdh_ctx.z );
    }
    else

    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1293, "should never happen" );
        return( -0x6C00 );
    }


    if( end - p < 2 )
        return( -0x7100 );

    *(p++) = (unsigned char)( psk_len >> 8 );
    *(p++) = (unsigned char)( psk_len );

    if( end < p || (size_t)( end - p ) < psk_len )
        return( -0x7100 );

    memcpy( p, psk, psk_len );
    p += psk_len;

    ssl->handshake->pmslen = p - ssl->handshake->premaster;

    return( 0 );
}
# 1367 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_encrypt_buf( mbedtls_ssl_context *ssl )
{
    mbedtls_cipher_mode_t mode;
    int auth_done = 0;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1372, "=> encrypt buf" );

    if( ssl->session_out == ((void *)0) || ssl->transform_out == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1376, "should never happen" );
        return( -0x6C00 );
    }

    mode = mbedtls_cipher_get_cipher_mode( &ssl->transform_out->cipher_ctx_enc );

    mbedtls_debug_print_buf( ssl, 4,
                                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1382 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                    1383
# 1382 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "before encrypt: output payload", ssl->out_msg, ssl->out_msglen )
                                                     ;





    if( mode == MBEDTLS_MODE_STREAM ||
        ( mode == MBEDTLS_MODE_CBC

          && ssl->session_out->encrypt_then_mac == 0

        ) )
    {
# 1408 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->minor_ver >= 1 )
        {
            mbedtls_md_hmac_reset(&ssl->transform_out->md_ctx_enc);
            mbedtls_md_hmac_update(&ssl->transform_out->md_ctx_enc, ssl->out_ctr, 8);
            mbedtls_md_hmac_update(&ssl->transform_out->md_ctx_enc, ssl->out_hdr, 3);
            mbedtls_md_hmac_update(&ssl->transform_out->md_ctx_enc, ssl->out_len, 2);
            mbedtls_md_hmac_update(&ssl->transform_out->md_ctx_enc, ssl->out_msg, ssl->out_msglen);
            mbedtls_md_hmac_finish(&ssl->transform_out->md_ctx_enc, ssl->out_msg + ssl->out_msglen);
        }
        else

        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1420, "should never happen" );
            return( -0x6C00 );
        }

        mbedtls_debug_print_buf( ssl, 4,

                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1424 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,

                                                  1426
# 1424 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "computed mac", ssl->out_msg + ssl->out_msglen, ssl->transform_out->maclen )

                                                   ;

        ssl->out_msglen += ssl->transform_out->maclen;
        auth_done++;
    }
# 1465 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( mode == MBEDTLS_MODE_GCM ||
        mode == MBEDTLS_MODE_CCM )
    {
        int ret;
        size_t enc_msglen, olen;
        unsigned char *enc_msg;
        unsigned char add_data[13];
        unsigned char taglen = ssl->transform_out->ciphersuite_info->flags &
                               0x02 ? 8 : 16;

        memcpy( add_data, ssl->out_ctr, 8 );
        add_data[8] = ssl->out_msgtype;
        mbedtls_ssl_write_version( ssl->major_ver, ssl->minor_ver,
                           ssl->conf->transport, add_data + 9 );
        add_data[11] = ( ssl->out_msglen >> 8 ) & 0xFF;
        add_data[12] = ssl->out_msglen & 0xFF;

        mbedtls_debug_print_buf( ssl, 4,
                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1482 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                    1483
# 1482 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "additional data used for AEAD", add_data, 13 )
                                     ;




        if( ssl->transform_out->ivlen - ssl->transform_out->fixed_ivlen != 8 )
        {

            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1491, "should never happen" );
            return( -0x6C00 );
        }

        memcpy( ssl->transform_out->iv_enc + ssl->transform_out->fixed_ivlen,
                             ssl->out_ctr, 8 );
        memcpy( ssl->out_iv, ssl->out_ctr, 8 );

        mbedtls_debug_print_buf( ssl, 4,
                                                                            "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1499 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                            1500
# 1499 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "IV used", ssl->out_iv, ssl->transform_out->ivlen - ssl->transform_out->fixed_ivlen )
                                                                             ;




        enc_msg = ssl->out_msg;
        enc_msglen = ssl->out_msglen;
        ssl->out_msglen += ssl->transform_out->ivlen -
                           ssl->transform_out->fixed_ivlen;

        mbedtls_debug_print_msg( ssl, 3,

                                            "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1510 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,

                                            1512
# 1510 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "before encrypt: msglen = %d, " "including %d bytes of padding", ssl->out_msglen, 0 )

                                             ;




        if( ( ret = mbedtls_cipher_auth_encrypt( &ssl->transform_out->cipher_ctx_enc,
                                         ssl->transform_out->iv_enc,
                                         ssl->transform_out->ivlen,
                                         add_data, 13,
                                         enc_msg, enc_msglen,
                                         enc_msg, &olen,
                                         enc_msg + enc_msglen, taglen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1525, "mbedtls_cipher_auth_encrypt", ret );
            return( ret );
        }

        if( olen != enc_msglen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1531, "should never happen" );
            return( -0x6C00 );
        }

        ssl->out_msglen += taglen;
        auth_done++;

        mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1538, "after encrypt: tag", enc_msg + enc_msglen, taglen );
    }
    else



    if( mode == MBEDTLS_MODE_CBC )
    {
        int ret;
        unsigned char *enc_msg;
        size_t enc_msglen, padlen, olen = 0, i;

        padlen = ssl->transform_out->ivlen - ( ssl->out_msglen + 1 ) %
                 ssl->transform_out->ivlen;
        if( padlen == ssl->transform_out->ivlen )
            padlen = 0;

        for( i = 0; i <= padlen; i++ )
            ssl->out_msg[ssl->out_msglen + i] = (unsigned char) padlen;

        ssl->out_msglen += padlen + 1;

        enc_msglen = ssl->out_msglen;
        enc_msg = ssl->out_msg;






        if( ssl->minor_ver >= 2 || ssl->protocol == 0 )
        {



            ret = ssl->conf->f_rng( ssl->conf->p_rng, ssl->transform_out->iv_enc,
                                  ssl->transform_out->ivlen );
            if( ret != 0 )
                return( ret );

            memcpy( ssl->out_iv, ssl->transform_out->iv_enc,
                    ssl->transform_out->ivlen );




            enc_msg = ssl->out_msg;
            enc_msglen = ssl->out_msglen;
            ssl->out_msglen += ssl->transform_out->ivlen;
        }


        mbedtls_debug_print_msg( ssl, 3,


                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1590 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,


                                         1593
# 1590 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "before encrypt: msglen = %d, " "including %d bytes of IV and %d bytes of padding", ssl->out_msglen, ssl->transform_out->ivlen, padlen + 1 )


                                          ;

        if( ( ret = mbedtls_cipher_crypt( &ssl->transform_out->cipher_ctx_enc,
                                   ssl->transform_out->iv_enc,
                                   ssl->transform_out->ivlen,
                                   enc_msg, enc_msglen,
                                   enc_msg, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1601, "mbedtls_cipher_crypt", ret );
            return( ret );
        }

        if( enc_msglen != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1607, "should never happen" );
            return( -0x6C00 );
        }


        if( ssl->minor_ver < 2 && ssl->protocol != 0 )
        {



            memcpy( ssl->transform_out->iv_enc,
                    ssl->transform_out->cipher_ctx_enc.iv,
                    ssl->transform_out->ivlen );
        }



        if( auth_done == 0 )
        {
# 1634 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            unsigned char pseudo_hdr[13];

            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1636, "using encrypt then mac" );

            memcpy( pseudo_hdr + 0, ssl->out_ctr, 8 );
            memcpy( pseudo_hdr + 8, ssl->out_hdr, 3 );
            pseudo_hdr[11] = (unsigned char)( ( ssl->out_msglen >> 8 ) & 0xFF );
            pseudo_hdr[12] = (unsigned char)( ( ssl->out_msglen ) & 0xFF );

            mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1643, "MAC'd meta-data", pseudo_hdr, 13 );

            mbedtls_md_hmac_reset( &ssl->transform_out->md_ctx_enc );
            mbedtls_md_hmac_update( &ssl->transform_out->md_ctx_enc, pseudo_hdr, 13 );
            mbedtls_md_hmac_update( &ssl->transform_out->md_ctx_enc,
                             ssl->out_iv, ssl->out_msglen );
            mbedtls_md_hmac_finish( &ssl->transform_out->md_ctx_enc,
                             ssl->out_iv + ssl->out_msglen );

            ssl->out_msglen += ssl->transform_out->maclen;
            auth_done++;
        }

    }
    else


    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1661, "should never happen" );
        return( -0x6C00 );
    }


    if( auth_done != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1668, "should never happen" );
        return( -0x6C00 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1672, "<= encrypt buf" );

    return( 0 );
}



static int ssl_decrypt_buf( mbedtls_ssl_context *ssl )
{
    size_t i;
    mbedtls_cipher_mode_t mode;
    int auth_done = 0;

    size_t padlen = 0, correct = 1;


    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1688, "=> decrypt buf" );

    if( ssl->session_in == ((void *)0) || ssl->transform_in == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1692, "should never happen" );
        return( -0x6C00 );
    }

    mode = mbedtls_cipher_get_cipher_mode( &ssl->transform_in->cipher_ctx_dec );

    if( ssl->in_msglen < ssl->transform_in->minlen )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1700 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                   1701
# 1700 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "in_msglen (%d) < minlen (%d)", ssl->in_msglen, ssl->transform_in->minlen )
                                                                    ;
        return( -0x7180 );
    }
# 1732 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( mode == MBEDTLS_MODE_GCM ||
        mode == MBEDTLS_MODE_CCM )
    {
        int ret;
        size_t dec_msglen, olen;
        unsigned char *dec_msg;
        unsigned char *dec_msg_result;
        unsigned char add_data[13];
        unsigned char taglen = ssl->transform_in->ciphersuite_info->flags &
                               0x02 ? 8 : 16;
        size_t explicit_iv_len = ssl->transform_in->ivlen -
                                 ssl->transform_in->fixed_ivlen;

        if( ssl->in_msglen < explicit_iv_len + taglen )
        {
            mbedtls_debug_print_msg( ssl, 1,

                                                          "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1747 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,

                                                          1749
# 1747 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "msglen (%d) < explicit_iv_len (%d) " "+ taglen (%d)", ssl->in_msglen, explicit_iv_len, taglen )

                                                           ;
            return( -0x7180 );
        }
        dec_msglen = ssl->in_msglen - explicit_iv_len - taglen;

        dec_msg = ssl->in_msg;
        dec_msg_result = ssl->in_msg;
        ssl->in_msglen = dec_msglen;

        memcpy( add_data, ssl->in_ctr, 8 );
        add_data[8] = ssl->in_msgtype;
        mbedtls_ssl_write_version( ssl->major_ver, ssl->minor_ver,
                           ssl->conf->transport, add_data + 9 );
        add_data[11] = ( ssl->in_msglen >> 8 ) & 0xFF;
        add_data[12] = ssl->in_msglen & 0xFF;

        mbedtls_debug_print_buf( ssl, 4,
                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1765 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                    1766
# 1765 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "additional data used for AEAD", add_data, 13 )
                                     ;

        memcpy( ssl->transform_in->iv_dec + ssl->transform_in->fixed_ivlen,
                ssl->in_iv,
                ssl->transform_in->ivlen - ssl->transform_in->fixed_ivlen );

        mbedtls_debug_print_buf( ssl, 4,
                                                              "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1772 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                              1773
# 1772 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "IV used", ssl->transform_in->iv_dec, ssl->transform_in->ivlen )
                                                               ;
        mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1774, "TAG used", dec_msg + dec_msglen, taglen );




        if( ( ret = mbedtls_cipher_auth_decrypt( &ssl->transform_in->cipher_ctx_dec,
                                         ssl->transform_in->iv_dec,
                                         ssl->transform_in->ivlen,
                                         add_data, 13,
                                         dec_msg, dec_msglen,
                                         dec_msg_result, &olen,
                                         dec_msg + dec_msglen, taglen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1787, "mbedtls_cipher_auth_decrypt", ret );

            if( ret == -0x6300 )
                return( -0x7180 );

            return( ret );
        }
        auth_done++;

        if( olen != dec_msglen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1798, "should never happen" );
            return( -0x6C00 );
        }
    }
    else



    if( mode == MBEDTLS_MODE_CBC )
    {



        int ret;
        unsigned char *dec_msg;
        unsigned char *dec_msg_result;
        size_t dec_msglen;
        size_t minlen = 0;
        size_t olen = 0;





        if( ssl->minor_ver >= 2 ||ssl->protocol == 0 )
            minlen += ssl->transform_in->ivlen;


        if( ssl->in_msglen < minlen + ssl->transform_in->ivlen ||
            ssl->in_msglen < minlen + ssl->transform_in->maclen + 1 )
        {
            mbedtls_debug_print_msg( ssl, 1,


                                                            "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1829 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,


                                                            1832
# 1829 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "msglen (%d) < max( ivlen(%d), maclen (%d) " "+ 1 ) ( + expl IV )", ssl->in_msglen, ssl->transform_in->ivlen, ssl->transform_in->maclen )


                                                             ;
            return( -0x7180 );
        }

        dec_msglen = ssl->in_msglen;
        dec_msg = ssl->in_msg;
        dec_msg_result = ssl->in_msg;





        if( ssl->session_in->encrypt_then_mac == 1 )
        {
            unsigned char computed_mac[48];
            unsigned char pseudo_hdr[13];

            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1849, "using encrypt then mac" );

            dec_msglen -= ssl->transform_in->maclen;
            ssl->in_msglen -= ssl->transform_in->maclen;

            memcpy( pseudo_hdr + 0, ssl->in_ctr, 8 );
            memcpy( pseudo_hdr + 8, ssl->in_hdr, 3 );
            pseudo_hdr[11] = (unsigned char)( ( ssl->in_msglen >> 8 ) & 0xFF );
            pseudo_hdr[12] = (unsigned char)( ( ssl->in_msglen ) & 0xFF );

            mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1859, "MAC'd meta-data", pseudo_hdr, 13 );

            mbedtls_md_hmac_reset( &ssl->transform_in->md_ctx_dec );
            mbedtls_md_hmac_update( &ssl->transform_in->md_ctx_dec, pseudo_hdr, 13 );
            mbedtls_md_hmac_update( &ssl->transform_in->md_ctx_dec,
                             ssl->in_iv, ssl->in_msglen );
            mbedtls_md_hmac_finish( &ssl->transform_in->md_ctx_dec, computed_mac );

            mbedtls_debug_print_buf( ssl, 4,
                                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1867 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                        1868
# 1867 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "message  mac", ssl->in_iv + ssl->in_msglen, ssl->transform_in->maclen )
                                                                         ;
            mbedtls_debug_print_buf( ssl, 4,
                                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1869 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                        1870
# 1869 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "computed mac", computed_mac, ssl->transform_in->maclen )
                                                                         ;

            if( mbedtls_ssl_safer_memcmp( ssl->in_iv + ssl->in_msglen, computed_mac,
                              ssl->transform_in->maclen ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1875, "message mac does not match" );

                return( -0x7180 );
            }
            auth_done++;
        }





        if( ssl->in_msglen % ssl->transform_in->ivlen != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 1888 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                      1889
# 1888 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "msglen (%d) %% ivlen (%d) != 0", ssl->in_msglen, ssl->transform_in->ivlen )
                                                                       ;
            return( -0x7180 );
        }





        if( ssl->minor_ver >= 2 || ssl->protocol == 0 )
        {
            dec_msglen -= ssl->transform_in->ivlen;
            ssl->in_msglen -= ssl->transform_in->ivlen;

            for( i = 0; i < ssl->transform_in->ivlen; i++ )
                ssl->transform_in->iv_dec[i] = ssl->in_iv[i];
        }


        if( ( ret = mbedtls_cipher_crypt( &ssl->transform_in->cipher_ctx_dec,
                                   ssl->transform_in->iv_dec,
                                   ssl->transform_in->ivlen,
                                   dec_msg, dec_msglen,
                                   dec_msg_result, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1913, "mbedtls_cipher_crypt", ret );
            return( ret );
        }

        if( dec_msglen != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 1919, "should never happen" );
            return( -0x6C00 );
        }


        if( ssl->minor_ver < 2 && ssl->protocol != 0 )
        {



            memcpy( ssl->transform_in->iv_dec,
                    ssl->transform_in->cipher_ctx_dec.iv,
                    ssl->transform_in->ivlen );
        }


        padlen = 1 + ssl->in_msg[ssl->in_msglen - 1];

        if( ssl->in_msglen < ssl->transform_in->maclen + padlen &&
            auth_done == 0 )
        {




            padlen = 0;
            correct = 0;
        }
# 1965 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->minor_ver > 0 )
        {




            size_t pad_count = 0, real_count = 1;
            size_t padding_idx = ssl->in_msglen - padlen - 1;
# 1984 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            correct &= ( ssl->in_msglen >= padlen + 1 );
            correct &= ( padding_idx < 8192 +
                                       ssl->transform_in->maclen );

            padding_idx *= correct;

            for( i = 1; i <= 256; i++ )
            {
                real_count &= ( i <= padlen );
                pad_count += real_count *
                             ( ssl->in_msg[padding_idx + i] == padlen - 1 );
            }

            correct &= ( pad_count == padlen );





            padlen &= correct * 0x1FF;
        }
        else


        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2009, "should never happen" );
            return( -0x6C00 );
        }

        ssl->in_msglen -= padlen;
    }
    else


    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2019, "should never happen" );
        return( -0x6C00 );
    }

    mbedtls_debug_print_buf( ssl, 4,
                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2023 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                               2024
# 2023 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "raw buffer after decryption", ssl->in_msg, ssl->in_msglen )
                                                ;






    if( auth_done == 0 )
    {
        unsigned char tmp[48];

        ssl->in_msglen -= ssl->transform_in->maclen;

        ssl->in_len[0] = (unsigned char)( ssl->in_msglen >> 8 );
        ssl->in_len[1] = (unsigned char)( ssl->in_msglen );

        memcpy( tmp, ssl->in_msg + ssl->in_msglen, ssl->transform_in->maclen );
# 2054 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->minor_ver > 0 )
        {
# 2070 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            size_t extra_run = 0;
            extra_run = ( 13 + ssl->in_msglen + padlen + 8 ) / 64 -
                        ( 13 + ssl->in_msglen + 8 ) / 64;

            extra_run &= correct * 0xFF;

            mbedtls_md_hmac_reset( &ssl->transform_in->md_ctx_dec );
            mbedtls_md_hmac_update(&ssl->transform_in->md_ctx_dec, ssl->in_ctr, 8);
            mbedtls_md_hmac_update(&ssl->transform_in->md_ctx_dec, ssl->in_hdr, 3);
            mbedtls_md_hmac_update(&ssl->transform_in->md_ctx_dec, ssl->in_len, 2);
            mbedtls_md_hmac_update(&ssl->transform_in->md_ctx_dec, ssl->in_msg, ssl->in_msglen);
            mbedtls_md_hmac_finish(&ssl->transform_in->md_ctx_dec, ssl->in_msg + ssl->in_msglen);
# 2097 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        }
        else


        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2102, "should never happen" );
            return( -0x6C00 );
        }

        mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2106, "message  mac", tmp, ssl->transform_in->maclen );
        mbedtls_debug_print_buf( ssl, 4,
                                                 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2107 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                 2108
# 2107 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "computed mac", ssl->in_msg + ssl->in_msglen, ssl->transform_in->maclen )
                                                  ;

        if( mbedtls_ssl_safer_memcmp( tmp, ssl->in_msg + ssl->in_msglen,
                         ssl->transform_in->maclen ) != 0 )
        {



            correct = 0;
        }
        auth_done++;




        if( correct == 0 )
            return( -0x7180 );
    }



    if( auth_done != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2131, "should never happen" );
        return( -0x6C00 );
    }

    if( ssl->in_msglen == 0 )
    {
        ssl->nb_zero++;





        if( ssl->nb_zero > 3 )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2145 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                  2146
# 2145 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "received four consecutive empty " "messages, possible DoS attack" )
                                                                   ;
            return( -0x7180 );
        }
    }
    else
        ssl->nb_zero = 0;


    if( ssl->conf->transport == 1 )
    {
        ;
    }
    else

    {
        for( i = 8; i > ssl_ep_len( ssl ); i-- )
            if( ++ssl->in_ctr[i - 1] != 0 )
                break;


        if( i == ssl_ep_len( ssl ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2168, "incoming message counter would wrap" );
            return( -0x6B80 );
        }
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2173, "<= decrypt buf" );

    return( 0 );
}
# 2280 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_write_hello_request( mbedtls_ssl_context *ssl );


static int ssl_resend_hello_request( mbedtls_ssl_context *ssl )
{


    if( ssl->conf->renego_max_records < 0 )
    {
        uint32_t ratio = ssl->conf->hs_timeout_max / ssl->conf->hs_timeout_min + 1;
        unsigned char doublings = 1;

        while( ratio != 0 )
        {
            ++doublings;
            ratio >>= 1;
        }

        if( ++ssl->renego_records_seen > doublings )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2300, "no longer retransmitting hello request" );
            return( 0 );
        }
    }

    return( ssl_write_hello_request( ssl ) );
}
# 2325 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want )
{
    int ret;
    size_t len;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2330, "=> fetch input" );

    if( ssl->f_recv == ((void *)0) && ssl->f_recv_timeout == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2334 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                         2335
# 2334 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "Bad usage of mbedtls_ssl_set_bio() " "or mbedtls_ssl_set_bio()" )
                                                          ;
        return( -0x7100 );
    }

    if( nb_want > ( 8192 + 0 + 29 + 32 + 256 ) - (size_t)( ssl->in_hdr - ssl->in_buf ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2341, "requesting more data than fits" );
        return( -0x7100 );
    }


    if( ssl->conf->transport == 1 )
    {
        uint32_t timeout;


        if( ssl->f_set_timer == ((void *)0) || ssl->f_get_timer == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                                                "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2353 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                2354
# 2353 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "You must use " "mbedtls_ssl_set_timer_cb() for DTLS" )
                                                                 ;
            return( -0x7100 );
        }
# 2368 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->next_record_offset != 0 )
        {
            if( ssl->in_left < ssl->next_record_offset )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2372, "should never happen" );
                return( -0x6C00 );
            }

            ssl->in_left -= ssl->next_record_offset;

            if( ssl->in_left != 0 )
            {
                mbedtls_debug_print_msg( ssl, 2,
                                                              "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2380 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,
                                                              2381
# 2380 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "next record in same datagram, offset: %d", ssl->next_record_offset )
                                                               ;
                memmove( ssl->in_hdr,
                         ssl->in_hdr + ssl->next_record_offset,
                         ssl->in_left );
            }

            ssl->next_record_offset = 0;
        }

        mbedtls_debug_print_msg( ssl, 2,
                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2390 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                               2391
# 2390 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "in_left: %d, nb_want: %d", ssl->in_left, nb_want )
                                                ;




        if( nb_want <= ssl->in_left)
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2398, "<= fetch input" );
            return( 0 );
        }






        if( ssl->in_left != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2409, "should never happen" );
            return( -0x6C00 );
        }






        if( ssl_check_timer( ssl ) != 0 )
            ret = -0x6800;
        else
        {
            len = ( 8192 + 0 + 29 + 32 + 256 ) - ( ssl->in_hdr - ssl->in_buf );

            if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
                timeout = ssl->handshake->retransmit_timeout;
            else
                timeout = ssl->conf->read_timeout;

            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2429, "f_recv_timeout: %u ms", timeout );

            if( ssl->f_recv_timeout != ((void *)0) )
                ret = ssl->f_recv_timeout( ssl->p_bio, ssl->in_hdr, len,
                                                                    timeout );
            else
                ret = ssl->f_recv( ssl->p_bio, ssl->in_hdr, len );

            mbedtls_debug_print_ret( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2437, "ssl->f_recv(_timeout)", ret );

            if( ret == 0 )
                return( -0x7280 );
        }

        if( ret == -0x6800 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2445, "timeout" );
            ssl_set_timer( ssl, 0 );

            if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            {
                if( ssl_double_retransmit_timeout( ssl ) != 0 )
                {
                    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2452, "handshake timeout" );
                    return( -0x6800 );
                }

                if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2458, "mbedtls_ssl_resend", ret );
                    return( ret );
                }

                return( -0x6900 );
            }

            else if( ssl->conf->endpoint == 1 &&
                     ssl->renego_status == 3 )
            {
                if( ( ret = ssl_resend_hello_request( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2470, "ssl_resend_hello_request", ret );
                    return( ret );
                }

                return( -0x6900 );
            }

        }

        if( ret < 0 )
            return( ret );

        ssl->in_left = ret;
    }
    else

    {
        mbedtls_debug_print_msg( ssl, 2,
                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2487 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                               2488
# 2487 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "in_left: %d, nb_want: %d", ssl->in_left, nb_want )
                                                ;

        while( ssl->in_left < nb_want )
        {
            len = nb_want - ssl->in_left;

            if( ssl_check_timer( ssl ) != 0 )
                ret = -0x6800;
            else
            {
                if( ssl->f_recv_timeout != ((void *)0) )
                {
                    ret = ssl->f_recv_timeout( ssl->p_bio,
                                               ssl->in_hdr + ssl->in_left, len,
                                               ssl->conf->read_timeout );
                }
                else
                {
                    ret = ssl->f_recv( ssl->p_bio,
                                       ssl->in_hdr + ssl->in_left, len );
                }
            }

            mbedtls_debug_print_msg( ssl, 2,
                                                                "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2511 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                2512
# 2511 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "in_left: %d, nb_want: %d", ssl->in_left, nb_want )
                                                                 ;
            mbedtls_debug_print_ret( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2513, "ssl->f_recv(_timeout)", ret );

            if( ret == 0 )
                return( -0x7280 );

            if( ret < 0 )
                return( ret );

            ssl->in_left += ret;
        }
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2525, "<= fetch input" );

    return( 0 );
}




int mbedtls_ssl_flush_output( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *buf, i;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2538, "=> flush output" );

    if( ssl->f_send == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2542 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                         2543
# 2542 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "Bad usage of mbedtls_ssl_set_bio() " "or mbedtls_ssl_set_bio()" )
                                                          ;
        return( -0x7100 );
    }


    if( ssl->out_left == 0 )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2550, "<= flush output" );
        return( 0 );
    }

    while( ssl->out_left > 0 )
    {
        mbedtls_debug_print_msg( ssl, 2,
                                                                                     "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2556 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                                     2557
# 2556 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "message length: %d, out_left: %d", mbedtls_ssl_hdr_len( ssl ) + ssl->out_msglen, ssl->out_left )
                                                                                      ;

        buf = ssl->out_hdr + mbedtls_ssl_hdr_len( ssl ) +
              ssl->out_msglen - ssl->out_left;
        ret = ssl->f_send( ssl->p_bio, buf, ssl->out_left );

        mbedtls_debug_print_ret( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2563, "ssl->f_send", ret );

        if( ret <= 0 )
            return( ret );

        ssl->out_left -= ret;
    }

    for( i = 8; i > ssl_ep_len( ssl ); i-- )
        if( ++ssl->out_ctr[i - 1] != 0 )
            break;


    if( i == ssl_ep_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2578, "outgoing message counter would wrap" );
        return( -0x6B80 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2582, "<= flush output" );

    return( 0 );
}
# 2594 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_flight_append( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_flight_item *msg;


    if( ( msg = calloc( 1, sizeof( mbedtls_ssl_flight_item ) ) ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2601 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                2602
# 2601 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "alloc %d bytes failed", sizeof( mbedtls_ssl_flight_item ) )
                                                                 ;
        return( -0x7F00 );
    }

    if( ( msg->p = calloc( 1, ssl->out_msglen ) ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2608, "alloc %d bytes failed", ssl->out_msglen );
        free( msg );
        return( -0x7F00 );
    }


    memcpy( msg->p, ssl->out_msg, ssl->out_msglen );
    msg->len = ssl->out_msglen;
    msg->type = ssl->out_msgtype;
    msg->next = ((void *)0);


    if( ssl->handshake->flight == ((void *)0) )
        ssl->handshake->flight = msg;
    else
    {
        mbedtls_ssl_flight_item *cur = ssl->handshake->flight;
        while( cur->next != ((void *)0) )
            cur = cur->next;
        cur->next = msg;
    }

    return( 0 );
}




static void ssl_flight_free( mbedtls_ssl_flight_item *flight )
{
    mbedtls_ssl_flight_item *cur = flight;
    mbedtls_ssl_flight_item *next;

    while( cur != ((void *)0) )
    {
        next = cur->next;

        free( cur->p );
        free( cur );

        cur = next;
    }
}


static void ssl_dtls_replay_reset( mbedtls_ssl_context *ssl );





static void ssl_swap_epochs( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_transform *tmp_transform;
    unsigned char tmp_out_ctr[8];

    if( ssl->transform_out == ssl->handshake->alt_transform_out )
    {
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2666, "skip swap epochs" );
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2670, "swap epochs" );


    tmp_transform = ssl->transform_out;
    ssl->transform_out = ssl->handshake->alt_transform_out;
    ssl->handshake->alt_transform_out = tmp_transform;


    memcpy( tmp_out_ctr, ssl->out_ctr, 8 );
    memcpy( ssl->out_ctr, ssl->handshake->alt_out_ctr, 8 );
    memcpy( ssl->handshake->alt_out_ctr, tmp_out_ctr, 8 );


    if( ssl->transform_out != ((void *)0) &&
        ( ssl->minor_ver >= 2 || ssl->protocol == 0 ) )
    {
        ssl->out_msg = ssl->out_iv + ssl->transform_out->ivlen -
                                     ssl->transform_out->fixed_ivlen;
    }
    else
        ssl->out_msg = ssl->out_iv;
# 2702 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
}
# 2711 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_resend( mbedtls_ssl_context *ssl )
{
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2713, "=> mbedtls_ssl_resend" );

    if( ssl->handshake->retransmit_state != 1 )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2717, "initialise resending" );

        ssl->handshake->cur_msg = ssl->handshake->flight;
        ssl_swap_epochs( ssl );

        ssl->handshake->retransmit_state = 1;
    }

    while( ssl->handshake->cur_msg != ((void *)0) )
    {
        int ret;
        mbedtls_ssl_flight_item *cur = ssl->handshake->cur_msg;




        if( cur->type == 22 &&
            cur->p[0] == 20 )
        {
            ssl_swap_epochs( ssl );
        }

        memcpy( ssl->out_msg, cur->p, cur->len );
        ssl->out_msglen = cur->len;
        ssl->out_msgtype = cur->type;

        ssl->handshake->cur_msg = cur->next;

        mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2745, "resent handshake message header", ssl->out_msg, 12 );

        if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2749, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
        ssl->handshake->retransmit_state = 3;
    else
    {
        ssl->handshake->retransmit_state = 2;
        ssl_set_timer( ssl, ssl->handshake->retransmit_timeout );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2762, "<= mbedtls_ssl_resend" );

    return( 0 );
}




void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl )
{

    ssl_flight_free( ssl->handshake->flight );
    ssl->handshake->flight = ((void *)0);
    ssl->handshake->cur_msg = ((void *)0);


    ssl->handshake->in_flight_start_seq = ssl->handshake->in_msg_seq;


    ssl_set_timer( ssl, 0 );

    if( ssl->in_msgtype == 22 &&
        ssl->in_msg[0] == 20 )
    {
        ssl->handshake->retransmit_state = 3;
    }
    else
        ssl->handshake->retransmit_state = 0;
}




void mbedtls_ssl_send_flight_completed( mbedtls_ssl_context *ssl )
{
    ssl_reset_retransmit_timeout( ssl );
    ssl_set_timer( ssl, ssl->handshake->retransmit_timeout );

    if( ssl->in_msgtype == 22 &&
        ssl->in_msg[0] == 20 )
    {
        ssl->handshake->retransmit_state = 3;
    }
    else
        ssl->handshake->retransmit_state = 2;
}
# 2818 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_write_record( mbedtls_ssl_context *ssl )
{
    int ret, done = 0, out_msg_type;
    size_t len = ssl->out_msglen;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2823, "=> write record" );


    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void *)0) &&
        ssl->handshake->retransmit_state == 1 )
    {
        ;
    }
    else

    if( ssl->out_msgtype == 22 )
    {
        out_msg_type = ssl->out_msg[0];

        if( out_msg_type != 0 &&
            ssl->handshake == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2841, "should never happen" );
            return( -0x6C00 );
        }

        ssl->out_msg[1] = (unsigned char)( ( len - 4 ) >> 16 );
        ssl->out_msg[2] = (unsigned char)( ( len - 4 ) >> 8 );
        ssl->out_msg[3] = (unsigned char)( ( len - 4 ) );
# 2857 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->conf->transport == 1 )
        {

            memmove( ssl->out_msg + 12, ssl->out_msg + 4, len - 4 );
            ssl->out_msglen += 8;
            len += 8;


            if( out_msg_type != 0 )
            {
                ssl->out_msg[4] = ( ssl->handshake->out_msg_seq >> 8 ) & 0xFF;
                ssl->out_msg[5] = ( ssl->handshake->out_msg_seq ) & 0xFF;
                ++( ssl->handshake->out_msg_seq );
            }
            else
            {
                ssl->out_msg[4] = 0;
                ssl->out_msg[5] = 0;
            }


            memset( ssl->out_msg + 6, 0x00, 3 );
            memcpy( ssl->out_msg + 9, ssl->out_msg + 1, 3 );
        }


        if( out_msg_type != 0 )
            ssl->handshake->update_checksum( ssl, ssl->out_msg, len );
    }



    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void *)0) &&
        ssl->handshake->retransmit_state != 1 &&
        ( ssl->out_msgtype == 20 ||
          ssl->out_msgtype == 22 ) )
    {
        if( ( ret = ssl_flight_append( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2897, "ssl_flight_append", ret );
            return( ret );
        }
    }
# 2933 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( !done )
    {
        ssl->out_hdr[0] = (unsigned char) ssl->out_msgtype;
        mbedtls_ssl_write_version( ssl->major_ver, ssl->minor_ver,
                           ssl->conf->transport, ssl->out_hdr + 1 );

        ssl->out_len[0] = (unsigned char)( len >> 8 );
        ssl->out_len[1] = (unsigned char)( len );

        if( ssl->transform_out != ((void *)0) )
        {
            if( ( ret = ssl_encrypt_buf( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2946, "ssl_encrypt_buf", ret );
                return( ret );
            }

            len = ssl->out_msglen;
            ssl->out_len[0] = (unsigned char)( len >> 8 );
            ssl->out_len[1] = (unsigned char)( len );
        }

        ssl->out_left = mbedtls_ssl_hdr_len( ssl ) + ssl->out_msglen;

        mbedtls_debug_print_msg( ssl, 3,


                                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2957 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,


                                                                  2960
# 2957 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "output record: msgtype = %d, " "version = [%d:%d], msglen = %d", ssl->out_hdr[0], ssl->out_hdr[1], ssl->out_hdr[2], ( ssl->out_len[0] << 8 ) | ssl->out_len[1] )


                                                                   ;

        mbedtls_debug_print_buf( ssl, 4,
                                                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 2962 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                                                  2963
# 2962 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "output record sent to network", ssl->out_hdr, mbedtls_ssl_hdr_len( ssl ) + ssl->out_msglen )
                                                                                   ;
    }

    if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2968, "mbedtls_ssl_flush_output", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 2972, "<= write record" );

    return( 0 );
}





static void ssl_bitmask_set( unsigned char *mask, size_t offset, size_t len )
{
    unsigned int start_bits, end_bits;

    start_bits = 8 - ( offset % 8 );
    if( start_bits != 8 )
    {
        size_t first_byte_idx = offset / 8;


        if( len <= start_bits )
        {
            for( ; len != 0; len-- )
                mask[first_byte_idx] |= 1 << ( start_bits - len );


            return;
        }

        offset += start_bits;
        len -= start_bits;

        for( ; start_bits != 0; start_bits-- )
            mask[first_byte_idx] |= 1 << ( start_bits - 1 );
    }

    end_bits = len % 8;
    if( end_bits != 0 )
    {
        size_t last_byte_idx = ( offset + len ) / 8;

        len -= end_bits;

        for( ; end_bits != 0; end_bits-- )
            mask[last_byte_idx] |= 1 << ( 8 - end_bits );
    }

    memset( mask + offset / 8, 0xFF, len / 8 );
}




static int ssl_bitmask_check( unsigned char *mask, size_t len )
{
    size_t i;

    for( i = 0; i < len / 8; i++ )
        if( mask[i] != 0xFF )
            return( -1 );

    for( i = 0; i < len % 8; i++ )
        if( ( mask[len / 8] & ( 1 << ( 7 - i ) ) ) == 0 )
            return( -1 );

    return( 0 );
}
# 3047 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_reassemble_dtls_handshake( mbedtls_ssl_context *ssl )
{
    unsigned char *msg, *bitmask;
    size_t frag_len, frag_off;
    size_t msg_len = ssl->in_hslen - 12;

    if( ssl->handshake == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3055, "not supported outside handshake (for now)" );
        return( -0x7080 );
    }




    if( ssl->handshake->hs_msg == ((void *)0) )
    {
        size_t alloc_len;

        mbedtls_debug_print_msg( ssl, 2,
                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3066 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                      3067
# 3066 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "initialize reassembly, total length = %d", msg_len )
                                       ;

        if( ssl->in_hslen > 8192 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3071, "handshake message too large" );
            return( -0x7080 );
        }


        alloc_len = 12 + msg_len + msg_len / 8 + ( msg_len % 8 != 0 );

        ssl->handshake->hs_msg = calloc( 1, alloc_len );
        if( ssl->handshake->hs_msg == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3081, "alloc failed (%d bytes)", alloc_len );
            return( -0x7F00 );
        }



        memcpy( ssl->handshake->hs_msg, ssl->in_msg, 6 );
        memset( ssl->handshake->hs_msg + 6, 0, 3 );
        memcpy( ssl->handshake->hs_msg + 9,
                ssl->handshake->hs_msg + 1, 3 );
    }
    else
    {

        if( memcmp( ssl->handshake->hs_msg, ssl->in_msg, 4 ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3097, "fragment header mismatch" );
            return( -0x7200 );
        }
    }

    msg = ssl->handshake->hs_msg + 12;
    bitmask = msg + msg_len;




    frag_off = ( ssl->in_msg[6] << 16 ) |
               ( ssl->in_msg[7] << 8 ) |
                 ssl->in_msg[8];
    frag_len = ( ssl->in_msg[9] << 16 ) |
               ( ssl->in_msg[10] << 8 ) |
                 ssl->in_msg[11];

    if( frag_off + frag_len > msg_len )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3117 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                        3118
# 3117 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "invalid fragment offset/len: %d + %d > %d", frag_off, frag_len, msg_len )
                                                         ;
        return( -0x7200 );
    }

    if( frag_len + 12 > ssl->in_msglen )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                     "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3124 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                     3125
# 3124 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "invalid fragment length: %d + 12 > %d", frag_len, ssl->in_msglen )
                                                      ;
        return( -0x7200 );
    }

    mbedtls_debug_print_msg( ssl, 2,
                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3129 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                             3130
# 3129 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "adding fragment, offset = %d, length = %d", frag_off, frag_len )
                                              ;

    memcpy( msg + frag_off, ssl->in_msg + 12, frag_len );
    ssl_bitmask_set( bitmask, frag_off, frag_len );





    if( ssl_bitmask_check( bitmask, msg_len ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3141, "message is not complete yet" );
        return( -0x6900 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3145, "handshake message completed" );

    if( frag_len + 12 < ssl->in_msglen )
    {





        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3154, "last fragment not alone in its record" );
        return( -0x7080 );
    }

    if( ssl->in_left > ssl->next_record_offset )
    {





        unsigned char *cur_remain = ssl->in_hdr + ssl->next_record_offset;
        unsigned char *new_remain = ssl->in_msg + ssl->in_hslen;
        size_t remain_len = ssl->in_left - ssl->next_record_offset;


        ssl->next_record_offset = new_remain - ssl->in_hdr;
        ssl->in_left = ssl->next_record_offset + remain_len;

        if( ssl->in_left > ( 8192 + 0 + 29 + 32 + 256 ) -
                           (size_t)( ssl->in_hdr - ssl->in_buf ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3176, "reassembled message too large for buffer" );
            return( -0x6A00 );
        }

        memmove( new_remain, cur_remain, remain_len );
    }

    memcpy( ssl->in_msg, ssl->handshake->hs_msg, ssl->in_hslen );

    free( ssl->handshake->hs_msg );
    ssl->handshake->hs_msg = ((void *)0);

    mbedtls_debug_print_buf( ssl, 3,
                                              "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3188 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                              3189
# 3188 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "reassembled handshake message", ssl->in_msg, ssl->in_hslen )
                                               ;

    return( 0 );
}


int mbedtls_ssl_prepare_handshake_record( mbedtls_ssl_context *ssl )
{
    if( ssl->in_msglen < mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3199 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                             3200
# 3199 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "handshake message too short: %d", ssl->in_msglen )
                                              ;
        return( -0x7200 );
    }

    ssl->in_hslen = mbedtls_ssl_hs_hdr_len( ssl ) + (
                    ( ssl->in_msg[1] << 16 ) |
                    ( ssl->in_msg[2] << 8 ) |
                      ssl->in_msg[3] );

    mbedtls_debug_print_msg( ssl, 3,

                                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3209 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,

                                                                        3211
# 3209 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "handshake message: msglen =" " %d, type = %d, hslen = %d", ssl->in_msglen, ssl->in_msg[0], ssl->in_hslen )

                                                                         ;


    if( ssl->conf->transport == 1 )
    {
        int ret;
        unsigned int recv_msg_seq = ( ssl->in_msg[4] << 8 ) | ssl->in_msg[5];


        if( ssl->handshake != ((void *)0) &&
            recv_msg_seq != ssl->handshake->in_msg_seq )
        {



            if( recv_msg_seq == ssl->handshake->in_flight_start_seq - 1 &&
                ssl->in_msg[0] != 3 )
            {
                mbedtls_debug_print_msg( ssl, 2,


                                                                          "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3229 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,


                                                                          3232
# 3229 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "received message from last flight, " "message_seq = %d, start_of_flight = %d", recv_msg_seq, ssl->handshake->in_flight_start_seq )


                                                                           ;

                if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3236, "mbedtls_ssl_resend", ret );
                    return( ret );
                }
            }
            else
            {
                mbedtls_debug_print_msg( ssl, 2,


                                                                 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3242 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,


                                                                 3245
# 3242 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "dropping out-of-sequence message: " "message_seq = %d, expected = %d", recv_msg_seq, ssl->handshake->in_msg_seq )


                                                                  ;
            }

            return( -0x6900 );
        }




        if( ssl->in_msglen < ssl->in_hslen ||
            memcmp( ssl->in_msg + 6, "\0\0\0", 3 ) != 0 ||
            memcmp( ssl->in_msg + 9, ssl->in_msg + 1, 3 ) != 0 ||
            ( ssl->handshake != ((void *)0) && ssl->handshake->hs_msg != ((void *)0) ) )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3259, "found fragmented DTLS handshake message" );

            if( ( ret = ssl_reassemble_dtls_handshake( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3263, "ssl_reassemble_dtls_handshake", ret );
                return( ret );
            }
        }
    }
    else


    if( ssl->in_msglen < ssl->in_hslen )
    {

        if( ssl->protocol != 0 )
        {

            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3277, "TLS handshake fragmentation not supported" );
            return( -0x7080 );

        }

    }

    return( 0 );
}

void mbedtls_ssl_update_handshake_status( mbedtls_ssl_context *ssl )
{

    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER &&
        ssl->handshake != ((void *)0) )
    {
        ssl->handshake->update_checksum( ssl, ssl->in_msg, ssl->in_hslen );
    }



    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void *)0) )
    {
        ssl->handshake->in_msg_seq++;
    }

}
# 3317 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_dtls_replay_reset( mbedtls_ssl_context *ssl )
{
    ssl->in_window_top = 0;
    ssl->in_window = 0;
}

static inline uint64_t ssl_load_six_bytes( unsigned char *buf )
{
    return( ( (uint64_t) buf[0] << 40 ) |
            ( (uint64_t) buf[1] << 32 ) |
            ( (uint64_t) buf[2] << 24 ) |
            ( (uint64_t) buf[3] << 16 ) |
            ( (uint64_t) buf[4] << 8 ) |
            ( (uint64_t) buf[5] ) );
}




int mbedtls_ssl_dtls_replay_check( mbedtls_ssl_context *ssl )
{
    uint64_t rec_seqnum = ssl_load_six_bytes( ssl->in_ctr + 2 );
    uint64_t bit;

    if( ssl->conf->anti_replay == 0 )
        return( 0 );

    if( rec_seqnum > ssl->in_window_top )
        return( 0 );

    bit = ssl->in_window_top - rec_seqnum;

    if( bit >= 64 )
        return( -1 );

    if( ( ssl->in_window & ( (uint64_t) 1 << bit ) ) != 0 )
        return( -1 );

    return( 0 );
}




void mbedtls_ssl_dtls_replay_update( mbedtls_ssl_context *ssl )
{
    uint64_t rec_seqnum = ssl_load_six_bytes( ssl->in_ctr + 2 );

    if( ssl->conf->anti_replay == 0 )
        return;

    if( rec_seqnum > ssl->in_window_top )
    {

        uint64_t shift = rec_seqnum - ssl->in_window_top;

        if( shift >= 64 )
            ssl->in_window = 1;
        else
        {
            ssl->in_window <<= shift;
            ssl->in_window |= 1;
        }

        ssl->in_window_top = rec_seqnum;
    }
    else
    {

        uint64_t bit = ssl->in_window_top - rec_seqnum;

        if( bit < 64 )
            ssl->in_window |= (uint64_t) 1 << bit;
    }
}




static int ssl_session_reset_int( mbedtls_ssl_context *ssl, int partial );
# 3409 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_check_dtls_clihlo_cookie(
                           mbedtls_ssl_cookie_write_t *f_cookie_write,
                           mbedtls_ssl_cookie_check_t *f_cookie_check,
                           void *p_cookie,
                           const unsigned char *cli_id, size_t cli_id_len,
                           const unsigned char *in, size_t in_len,
                           unsigned char *obuf, size_t buf_len, size_t *olen )
{
    size_t sid_len, cookie_len;
    unsigned char *p;

    if( f_cookie_write == ((void *)0) || f_cookie_check == ((void *)0) )
        return( -0x7100 );
# 3449 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( in_len < 61 ||
        in[0] != 22 ||
        in[3] != 0 || in[4] != 0 ||
        in[19] != 0 || in[20] != 0 || in[21] != 0 )
    {
        return( -0x7900 );
    }

    sid_len = in[59];
    if( sid_len > in_len - 61 )
        return( -0x7900 );

    cookie_len = in[60 + sid_len];
    if( cookie_len > in_len - 60 )
        return( -0x7900 );

    if( f_cookie_check( p_cookie, in + sid_len + 61, cookie_len,
                        cli_id, cli_id_len ) == 0 )
    {

        return( 0 );
    }
# 3492 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( buf_len < 28 )
        return( -0x6A00 );


    memcpy( obuf, in, 25 );
    obuf[13] = 3;
    obuf[25] = 0xfe;
    obuf[26] = 0xff;


    p = obuf + 28;
    if( f_cookie_write( p_cookie,
                        &p, obuf + buf_len, cli_id, cli_id_len ) != 0 )
    {
        return( -0x6C00 );
    }

    *olen = p - obuf;


    obuf[27] = (unsigned char)( *olen - 28 );

    obuf[14] = obuf[22] = (unsigned char)( ( *olen - 25 ) >> 16 );
    obuf[15] = obuf[23] = (unsigned char)( ( *olen - 25 ) >> 8 );
    obuf[16] = obuf[24] = (unsigned char)( ( *olen - 25 ) );

    obuf[11] = (unsigned char)( ( *olen - 13 ) >> 8 );
    obuf[12] = (unsigned char)( ( *olen - 13 ) );

    return( -0x6A80 );
}
# 3543 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_handle_possible_reconnect( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t len;

    ret = ssl_check_dtls_clihlo_cookie(
            ssl->conf->f_cookie_write,
            ssl->conf->f_cookie_check,
            ssl->conf->p_cookie,
            ssl->cli_id, ssl->cli_id_len,
            ssl->in_buf, ssl->in_left,
            ssl->out_buf, 8192, &len );

    mbedtls_debug_print_ret( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3556, "ssl_check_dtls_clihlo_cookie", ret );

    if( ret == -0x6A80 )
    {



        (void) ssl->f_send( ssl->p_bio, ssl->out_buf, len );

        return( -0x6A80 );
    }

    if( ret == 0 )
    {

        if( ( ret = ssl_session_reset_int( ssl, 1 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3573, "reset", ret );
            return( ret );
        }

        return( -0x6780 );
    }

    return( ret );
}
# 3603 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_parse_record_header( mbedtls_ssl_context *ssl )
{
    int major_ver, minor_ver;

    mbedtls_debug_print_buf( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3607, "input record header", ssl->in_hdr, mbedtls_ssl_hdr_len( ssl ) );

    ssl->in_msgtype = ssl->in_hdr[0];
    ssl->in_msglen = ( ssl->in_len[0] << 8 ) | ssl->in_len[1];
    mbedtls_ssl_read_version( &major_ver, &minor_ver, ssl->conf->transport, ssl->in_hdr + 1 );

    mbedtls_debug_print_msg( ssl, 3,


                                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3613 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,


                                                               3616
# 3613 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "input record: msgtype = %d, " "version = [%d:%d], msglen = %d", ssl->in_msgtype, major_ver, minor_ver, ssl->in_msglen )


                                                                ;


    if( ssl->in_msgtype != 22 &&
        ssl->in_msgtype != 21 &&
        ssl->in_msgtype != 20 &&
        ssl->in_msgtype != 23 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3624, "unknown record type" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7200 );
    }


    if( major_ver != ssl->major_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3633, "major version mismatch" );
        return( -0x7200 );
    }

    if( minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3639, "minor version mismatch" );
        return( -0x7200 );
    }


    if( ssl->in_msglen > ( 8192 + 0 + 29 + 32 + 256 )
                         - (size_t)( ssl->in_msg - ssl->in_buf ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3647, "bad message length" );
        return( -0x7200 );
    }


    if( ssl->transform_in == ((void *)0) )
    {
        if( ssl->in_msglen < 1 ||
            ssl->in_msglen > 8192 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3657, "bad message length" );
            return( -0x7200 );
        }
    }
    else
    {
        if( ssl->in_msglen < ssl->transform_in->minlen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3665, "bad message length" );
            return( -0x7200 );
        }
# 3682 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->minor_ver >= 1 &&
            ssl->in_msglen > ssl->transform_in->minlen +
                             8192 + 256 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3686, "bad message length" );
            return( -0x7200 );
        }

    }
# 3699 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->transport == 1 )
    {
        unsigned int rec_epoch = ( ssl->in_ctr[0] << 8 ) | ssl->in_ctr[1];


        if( ssl->in_msgtype == 20 &&
            ssl->state != MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC &&
            ssl->state != MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3708, "dropping unexpected ChangeCipherSpec" );
            return( -0x6700 );
        }



        if( ssl->in_msgtype == 23 &&
            ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER

            && ! ( ssl->renego_status == 1 &&
                   ssl->state == MBEDTLS_SSL_SERVER_HELLO )

            )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3722, "dropping unexpected ApplicationData" );
            return( -0x6700 );
        }


        if( rec_epoch != ssl->in_epoch )
        {
            mbedtls_debug_print_msg( ssl, 1,

                                                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3729 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,

                                                                   3731
# 3729 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "record from another epoch: " "expected %d, received %d", ssl->in_epoch, rec_epoch )

                                                                    ;
# 3740 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            if( ssl->conf->endpoint == 1 &&
                ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER &&
                rec_epoch == 0 &&
                ssl->in_msgtype == 22 &&
                ssl->in_left > 13 &&
                ssl->in_buf[13] == 1 )
            {
                mbedtls_debug_print_msg( ssl, 1,
                                                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3747 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,
                                                                   3748
# 3747 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "possible client reconnect " "from the same port" )
                                                                    ;
                return( ssl_handle_possible_reconnect( ssl ) );
            }
            else

                return( -0x6700 );
        }



        if( rec_epoch == ssl->in_epoch &&
            mbedtls_ssl_dtls_replay_check( ssl ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3761, "replayed record" );
            return( -0x6700 );
        }

    }


    return( 0 );
}




static int ssl_prepare_record_content( mbedtls_ssl_context *ssl )
{
    int ret, done = 0;

    mbedtls_debug_print_buf( ssl, 4,
                                                                            "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3778 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                                            3779
# 3778 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "input record from network", ssl->in_hdr, mbedtls_ssl_hdr_len( ssl ) + ssl->in_msglen )
                                                                             ;
# 3797 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( !done && ssl->transform_in != ((void *)0) )
    {
        if( ( ret = ssl_decrypt_buf( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3801, "ssl_decrypt_buf", ret );
            return( ret );
        }

        mbedtls_debug_print_buf( ssl, 4,
                                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3805 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                   3806
# 3805 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "input payload after decrypt", ssl->in_msg, ssl->in_msglen )
                                                    ;

        if( ssl->in_msglen > 8192 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3810, "bad message length" );
            return( -0x7200 );
        }
    }
# 3828 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->transport == 1 )
    {
        mbedtls_ssl_dtls_replay_update( ssl );
    }


    return( 0 );
}

static void ssl_handshake_wrapup_free_hs_transform( mbedtls_ssl_context *ssl );
# 3846 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_read_record( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3850, "=> read record" );

    if( ssl->keep_current_message == 0 )
    {
        do {

            if( ( ret = mbedtls_ssl_read_record_layer( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3858, ( "mbedtls_ssl_read_record_layer" ), ret );
                return( ret );
            }

            ret = mbedtls_ssl_handle_message_type( ssl );

        } while( -0x6680 == ret );

        if( 0 != ret )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3868, ( "mbedtls_ssl_read_record_layer" ), ret );
            return( ret );
        }

        if( ssl->in_msgtype == 22 )
        {
            mbedtls_ssl_update_handshake_status( ssl );
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3879, "<= reuse previously read message" );
        ssl->keep_current_message = 0;
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3883, "<= read record" );

    return( 0 );
}

int mbedtls_ssl_read_record_layer( mbedtls_ssl_context *ssl )
{
    int ret;
# 3922 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->in_hslen != 0 )
    {



        if( ssl->in_offt != ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 3929, "should never happen" );
            return( -0x6C00 );
        }
# 3954 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        if( ssl->in_hslen < ssl->in_msglen )
        {
            ssl->in_msglen -= ssl->in_hslen;
            memmove( ssl->in_msg, ssl->in_msg + ssl->in_hslen,
                     ssl->in_msglen );

            mbedtls_debug_print_buf( ssl, 4,
                                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 3960 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                               3961
# 3960 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "remaining content in record", ssl->in_msg, ssl->in_msglen )
                                                                ;
        }
        else
        {
            ssl->in_msglen = 0;
        }

        ssl->in_hslen = 0;
    }

    else if( ssl->in_offt != ((void *)0) )
    {
        return( 0 );
    }

    else
    {
        ssl->in_msglen = 0;
    }
# 3988 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->in_msglen > 0 )
    {

        return( 0 );
    }




read_record_header:




    if( ( ret = mbedtls_ssl_fetch_input( ssl, mbedtls_ssl_hdr_len( ssl ) ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4004, "mbedtls_ssl_fetch_input", ret );
        return( ret );
    }

    if( ( ret = ssl_parse_record_header( ssl ) ) != 0 )
    {

        if( ssl->conf->transport == 1 &&
            ret != -0x6780 )
        {
            if( ret == -0x6700 )
            {

                ssl->next_record_offset = ssl->in_msglen
                                        + mbedtls_ssl_hdr_len( ssl );

                mbedtls_debug_print_msg( ssl, 1,
                                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4020 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,
                                                         4021
# 4020 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "discarding unexpected record " "(header)" )
                                                          ;
            }
            else
            {

                ssl->next_record_offset = 0;
                ssl->in_left = 0;

                mbedtls_debug_print_msg( ssl, 1,
                                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4029 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                ,
                                                         4030
# 4029 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                , "discarding invalid record " "(header)" )
                                                          ;
            }


            goto read_record_header;
        }

        return( ret );
    }




    if( ( ret = mbedtls_ssl_fetch_input( ssl,
                                 mbedtls_ssl_hdr_len( ssl ) + ssl->in_msglen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4046, "mbedtls_ssl_fetch_input", ret );
        return( ret );
    }



    if( ssl->conf->transport == 1 )
        ssl->next_record_offset = ssl->in_msglen + mbedtls_ssl_hdr_len( ssl );
    else

        ssl->in_left = 0;

    if( ( ret = ssl_prepare_record_content( ssl ) ) != 0 )
    {

        if( ssl->conf->transport == 1 )
        {

            if( ret == -0x7200 ||
                ret == -0x7180 )
            {



                if( ssl->state == MBEDTLS_SSL_CLIENT_FINISHED ||
                    ssl->state == MBEDTLS_SSL_SERVER_FINISHED )
                {

                    if( ret == -0x7180 )
                    {
                        mbedtls_ssl_send_alert_message( ssl,
                                2,
                                20 );
                    }

                    return( ret );
                }


                if( ssl->conf->badmac_limit != 0 &&
                    ++ssl->badmac_seen >= ssl->conf->badmac_limit )
                {
                    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4088, "too many records with bad MAC" );
                    return( -0x7180 );
                }





                ssl->next_record_offset = 0;
                ssl->in_left = 0;

                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4099, "discarding invalid record (mac)" );
                goto read_record_header;
            }

            return( ret );
        }
        else

        {


            if( ret == -0x7180 )
            {
                mbedtls_ssl_send_alert_message( ssl,
                        2,
                        20 );
            }

            return( ret );
        }
    }
# 4137 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void *)0) &&
        ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ssl->in_msgtype == 22 &&
                ssl->in_msg[0] == 20 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4144, "received retransmit of last flight" );

            if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4148, "mbedtls_ssl_resend", ret );
                return( ret );
            }

            return( -0x6900 );
        }
        else
        {
            ssl_handshake_wrapup_free_hs_transform( ssl );
        }
    }


    return( 0 );
}

int mbedtls_ssl_handle_message_type( mbedtls_ssl_context *ssl )
{
    int ret;




    if( ssl->in_msgtype == 22 )
    {
        if( ( ret = mbedtls_ssl_prepare_handshake_record( ssl ) ) != 0 )
        {
            return( ret );
        }
    }

    if( ssl->in_msgtype == 21 )
    {
        mbedtls_debug_print_msg( ssl, 2,
                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4181 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                        4182
# 4181 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "got an alert message, type: [%d:%d]", ssl->in_msg[0], ssl->in_msg[1] )
                                                         ;




        if( ssl->in_msg[0] == 2 )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                            "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4189 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                            4190
# 4189 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "is a fatal alert message (msg %d)", ssl->in_msg[1] )
                                             ;
            return( -0x7780 );
        }

        if( ssl->in_msg[0] == 1 &&
            ssl->in_msg[1] == 0 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4197, "is a close notify message" );
            return( -0x7880 );
        }


        if( ssl->in_msg[0] == 1 &&
            ssl->in_msg[1] == 100 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4205, "is a SSLv3 no_cert" );

            return( 0 );
        }
# 4224 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        return -0x6680;
    }

    return( 0 );
}

int mbedtls_ssl_send_fatal_handshake_failure( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                    2,
                    40 ) ) != 0 )
    {
        return( ret );
    }

    return( 0 );
}

int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message )
{
    int ret;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4253, "=> send alert message" );
    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4254, "send alert level=%u message=%u", level, message );

    ssl->out_msgtype = 21;
    ssl->out_msglen = 2;
    ssl->out_msg[0] = level;
    ssl->out_msg[1] = message;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4263, "mbedtls_ssl_write_record", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4266, "<= send alert message" );

    return( 0 );
}
# 4325 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_write_certificate( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    size_t i, n;
    const mbedtls_x509_crt *crt;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info = ssl->transform_negotiate->ciphersuite_info;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4332, "=> write certificate" );

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4339, "<= skip write certificate" );
        ssl->state++;
        return( 0 );
    }


    if( ssl->conf->endpoint == 0 )
    {
        if( ssl->client_auth == 0 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4349, "<= skip write certificate" );
            ssl->state++;
            return( 0 );
        }
# 4371 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    }


    if( ssl->conf->endpoint == 1 )
    {
        if( mbedtls_ssl_own_cert( ssl ) == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4378, "got no certificate to send" );
            return( -0x7580 );
        }
    }


    mbedtls_debug_print_crt( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4384, "own certificate", mbedtls_ssl_own_cert( ssl ) );
# 4395 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    i = 7;
    crt = mbedtls_ssl_own_cert( ssl );

    while( crt != ((void *)0) )
    {
        n = crt->raw.len;
        if( n > 8192 - 3 - i )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4403 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                    4404
# 4403 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "certificate too large, %d > %d", i + 3 + n, 8192 )
                                                                     ;
            return( -0x7500 );
        }

        ssl->out_msg[i ] = (unsigned char)( n >> 16 );
        ssl->out_msg[i + 1] = (unsigned char)( n >> 8 );
        ssl->out_msg[i + 2] = (unsigned char)( n );

        i += 3; memcpy( ssl->out_msg + i, crt->raw.p, n );
        i += n; crt = crt->next;
    }

    ssl->out_msg[4] = (unsigned char)( ( i - 7 ) >> 16 );
    ssl->out_msg[5] = (unsigned char)( ( i - 7 ) >> 8 );
    ssl->out_msg[6] = (unsigned char)( ( i - 7 ) );

    ssl->out_msglen = i;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 11;





    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4432, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4436, "<= write certificate" );

    return( ret );
}

int mbedtls_ssl_parse_certificate( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    size_t i, n;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info = ssl->transform_negotiate->ciphersuite_info;
    int authmode = ssl->conf->authmode;
    uint8_t alert;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4449, "=> parse certificate" );

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4456, "<= skip parse certificate" );
        ssl->state++;
        return( 0 );
    }


    if( ssl->conf->endpoint == 1 &&
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4465, "<= skip parse certificate" );
        ssl->state++;
        return( 0 );
    }


    if( ssl->handshake->sni_authmode != 3 )
        authmode = ssl->handshake->sni_authmode;


    if( ssl->conf->endpoint == 1 &&
        authmode == 0 )
    {
        ssl->session_negotiate->verify_result = 0x80;
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4479, "<= skip parse certificate" );
        ssl->state++;
        return( 0 );
    }


    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {


        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4489, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    ssl->state++;
# 4524 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->endpoint == 1 &&
        ssl->minor_ver != 0 )
    {
        if( ssl->in_hslen == 3 + mbedtls_ssl_hs_hdr_len( ssl ) &&
            ssl->in_msgtype == 22 &&
            ssl->in_msg[0] == 11 &&
            memcmp( ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl ), "\0\0\0", 3 ) == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4532, "TLSv1 client has no certificate" );




            ssl->session_negotiate->verify_result = 0x40;
            if( authmode == 1 )
                return( 0 );
            else
                return( -0x7480 );
        }
    }




    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4550, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }

    if( ssl->in_msg[0] != 11 ||
        ssl->in_hslen < mbedtls_ssl_hs_hdr_len( ssl ) + 3 + 3 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4559, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A00 );
    }

    i = mbedtls_ssl_hs_hdr_len( ssl );




    n = ( ssl->in_msg[i+1] << 8 ) | ssl->in_msg[i+2];

    if( ssl->in_msg[i] != 0 ||
        ssl->in_hslen != n + 3 + mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4575, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A00 );
    }


    if( ssl->session_negotiate->peer_cert != ((void *)0) )
    {
        mbedtls_x509_crt_free( ssl->session_negotiate->peer_cert );
        free( ssl->session_negotiate->peer_cert );
    }

    if( ( ssl->session_negotiate->peer_cert = calloc( 1,
                    sizeof( mbedtls_x509_crt ) ) ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4591 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        ,
                                                    4592
# 4591 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        , "alloc(%d bytes) failed", sizeof( mbedtls_x509_crt ) )
                                                     ;
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
        return( -0x7F00 );
    }

    mbedtls_x509_crt_init( ssl->session_negotiate->peer_cert );

    i += 3;

    while( i < ssl->in_hslen )
    {
        if( ssl->in_msg[i] != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4606, "bad certificate message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7A00 );
        }

        n = ( (unsigned int) ssl->in_msg[i + 1] << 8 )
            | (unsigned int) ssl->in_msg[i + 2];
        i += 3;

        if( n < 128 || i + n > ssl->in_hslen )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4618, "bad certificate message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7A00 );
        }

        ret = mbedtls_x509_crt_parse_der( ssl->session_negotiate->peer_cert,
                                  ssl->in_msg + i, n );
        switch( ret )
        {
        case 0:
        case -0x2600 + -0x002E:


            break;

        case -0x2880:
            alert = 80;
            goto crt_parse_der_failed;

        case -0x2580:
            alert = 43;
            goto crt_parse_der_failed;

        default:
            alert = 42;
        crt_parse_der_failed:
            mbedtls_ssl_send_alert_message( ssl, 2, alert );
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4646, " mbedtls_x509_crt_parse_der", ret );
            return( ret );
        }

        i += n;
    }

    mbedtls_debug_print_crt( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4653, "peer certificate", ssl->session_negotiate->peer_cert );






    if( ssl->conf->endpoint == 0 &&
        ssl->renego_status == 1 )
    {
        if( ssl->session->peer_cert == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4665, "new server cert during renegotiation" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            49 );
            return( -0x7A00 );
        }

        if( ssl->session->peer_cert->raw.len !=
            ssl->session_negotiate->peer_cert->raw.len ||
            memcmp( ssl->session->peer_cert->raw.p,
                    ssl->session_negotiate->peer_cert->raw.p,
                    ssl->session->peer_cert->raw.len ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4677, "server cert changed during renegotiation" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            49 );
            return( -0x7A00 );
        }
    }


    if( authmode != 0 )
    {
        mbedtls_x509_crt *ca_chain;
        mbedtls_x509_crl *ca_crl;


        if( ssl->handshake->sni_ca_chain != ((void *)0) )
        {
            ca_chain = ssl->handshake->sni_ca_chain;
            ca_crl = ssl->handshake->sni_ca_crl;
        }
        else

        {

            if( ssl->protocol == 0 )
            {
                ca_chain = ssl->conf->gm_ca_chain;
                ca_crl = ssl->conf->gm_ca_crl;
            }
            else

            {
                ca_chain = ssl->conf->ca_chain;
                ca_crl = ssl->conf->ca_crl;
            }
        }




        ret = mbedtls_x509_crt_verify_with_profile(
                                ssl->session_negotiate->peer_cert,
                                ca_chain, ca_crl,
                                ssl->conf->cert_profile,
                                ssl->hostname,
                               &ssl->session_negotiate->verify_result,
                                ssl->conf->f_vrfy, ssl->conf->p_vrfy );

        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4726, "x509_verify_cert", ret );
        }






        {
            const mbedtls_pk_context *pk = &ssl->session_negotiate->peer_cert->pk;


            if( mbedtls_pk_can_do( pk, MBEDTLS_PK_ECKEY ) &&
                mbedtls_ssl_check_curve( ssl, mbedtls_pk_ec( *pk )->grp.id ) != 0 )
            {
                ssl->session_negotiate->verify_result |= 0x010000;

                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4743, "bad certificate (EC key curve)" );
                if( ret == 0 )
                    ret = -0x7A00;
            }
        }


        if( mbedtls_ssl_check_cert_usage( ssl->session_negotiate->peer_cert,
                                 ciphersuite_info,
                                 ! ssl->conf->endpoint,
                                 &ssl->session_negotiate->verify_result ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4755, "bad certificate (usage extensions)" );
            if( ret == 0 )
                ret = -0x7A00;
        }







        if( authmode == 1 &&
            ( ret == -0x2700 ||
              ret == -0x7A00 ) )
        {
            ret = 0;
        }

        if( ca_chain == ((void *)0) && authmode == 2 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4775, "got no CA chain" );
            ret = -0x7680;
        }

        if( ret != 0 )
        {



            if( ssl->session_negotiate->verify_result & 0x0100 )
                alert = 49;
            else if( ssl->session_negotiate->verify_result & 0x04 )
                alert = 42;
            else if( ssl->session_negotiate->verify_result & 0x0800 )
                alert = 43;
            else if( ssl->session_negotiate->verify_result & 0x1000 )
                alert = 43;
            else if( ssl->session_negotiate->verify_result & 0x2000 )
                alert = 43;
            else if( ssl->session_negotiate->verify_result & 0x8000 )
                alert = 43;
            else if( ssl->session_negotiate->verify_result & 0x010000 )
                alert = 43;
            else if( ssl->session_negotiate->verify_result & 0x01 )
                alert = 45;
            else if( ssl->session_negotiate->verify_result & 0x02 )
                alert = 44;
            else if( ssl->session_negotiate->verify_result & 0x08 )
                alert = 48;
            else
                alert = 46;
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            alert );
        }


        if( ssl->session_negotiate->verify_result != 0 )
        {
            mbedtls_debug_print_msg( ssl, 3,
                                                                                "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 4813 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,
                                                                                4814
# 4813 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "! Certificate verification flags %x", ssl->session_negotiate->verify_result )
                                                                                 ;
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4818, "Certificate verification flags clear" );
        }

    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4823, "<= parse certificate" );

    return( ret );
}
# 4835 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_write_change_cipher_spec( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4839, "=> write change cipher spec" );

    ssl->out_msgtype = 20;
    ssl->out_msglen = 1;
    ssl->out_msg[0] = 1;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4849, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4853, "<= write change cipher spec" );

    return( 0 );
}

int mbedtls_ssl_parse_change_cipher_spec( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4862, "=> parse change cipher spec" );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4866, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 20 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4872, "bad change cipher spec message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }

    if( ssl->in_msglen != 1 || ssl->in_msg[0] != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4880, "bad change cipher spec message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7E00 );
    }





    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4890, "switching to new transform spec for inbound data" );
    ssl->transform_in = ssl->transform_negotiate;
    ssl->session_in = ssl->session_negotiate;


    if( ssl->conf->transport == 1 )
    {

        ssl_dtls_replay_reset( ssl );



        if( ++ssl->in_epoch == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4904, "DTLS epoch would wrap" );


            return( -0x6B80 );
        }
    }
    else

    memset( ssl->in_ctr, 0, 8 );




    if( ssl->minor_ver >= 2 || ssl->protocol == 0 )
    {
        ssl->in_msg = ssl->in_iv + ssl->transform_negotiate->ivlen -
                      ssl->transform_negotiate->fixed_ivlen;
    }
    else
        ssl->in_msg = ssl->in_iv;
# 4938 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ssl->state++;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4940, "<= parse change cipher spec" );

    return( 0 );
}

void mbedtls_ssl_optimize_checksum( mbedtls_ssl_context *ssl,
                            const mbedtls_ssl_ciphersuite_t *ciphersuite_info )
{
    ((void) ciphersuite_info);



    if( ssl->protocol == 0 && ciphersuite_info->mac == MBEDTLS_MD_SM3 )
    {
        ssl->handshake->update_checksum = ssl_update_checksum_sm3;
        return;
    }





    if( ssl->minor_ver < 3 )
        ssl->handshake->update_checksum = ssl_update_checksum_md5sha1;
    else
# 4973 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ciphersuite_info->mac != MBEDTLS_MD_SHA384 )
        ssl->handshake->update_checksum = ssl_update_checksum_sha256;
    else


    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 4979, "should never happen" );
        return;
    }
}

void mbedtls_ssl_reset_checksum( mbedtls_ssl_context *ssl )
{


     mbedtls_md5_starts( &ssl->handshake->fin_md5 );
    mbedtls_sha1_starts( &ssl->handshake->fin_sha1 );



    mbedtls_sha256_starts( &ssl->handshake->fin_sha256, 0 );
# 5002 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    mbedtls_sm3_starts( &ssl->handshake->fin_sm3 );


}

static void ssl_update_checksum_start( mbedtls_ssl_context *ssl,
                                       const unsigned char *buf, size_t len )
{


    if( ssl->protocol == 0 )
    {
        mbedtls_sm3_update( &ssl->handshake->fin_sm3, buf, len );
    }





     mbedtls_md5_update( &ssl->handshake->fin_md5 , buf, len );
    mbedtls_sha1_update( &ssl->handshake->fin_sha1, buf, len );



    mbedtls_sha256_update( &ssl->handshake->fin_sha256, buf, len );





}



static void ssl_update_checksum_md5sha1( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf, size_t len )
{
     mbedtls_md5_update( &ssl->handshake->fin_md5 , buf, len );
    mbedtls_sha1_update( &ssl->handshake->fin_sha1, buf, len );
}




static void ssl_update_checksum_sha256( mbedtls_ssl_context *ssl,
                                        const unsigned char *buf, size_t len )
{
    mbedtls_sha256_update( &ssl->handshake->fin_sha256, buf, len );
}
# 5064 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_update_checksum_sm3( mbedtls_ssl_context *ssl,
                                        const unsigned char *buf, size_t len )
{
    mbedtls_sm3_update( &ssl->handshake->fin_sm3, buf, len );
}
# 5158 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_calc_finished_tls(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;
    unsigned char padbuf[36];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5171, "=> calc  finished tls" );

    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );

    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );
# 5186 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    mbedtls_debug_print_buf( ssl, 4,
                                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 5186 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ,
                                                    5187
# 5186 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    , "finished  md5 state", (unsigned char *) md5.state, sizeof( md5.state ) )
                                                     ;







    sender = ( from == 0 )
             ? "client finished"
             : "server finished";

    mbedtls_md5_finish( &md5, padbuf );
    mbedtls_sha1_finish( &sha1, padbuf + 16 );

    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 36, buf, len );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5205, "calc finished result", buf, len );

    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );

    mbedtls_zeroize( padbuf, sizeof( padbuf ) );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5212, "<= calc  finished" );
}




static void ssl_calc_finished_tls_sha256(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_sha256_context sha256;
    unsigned char padbuf[32];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    mbedtls_sha256_init( &sha256 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5232, "=> calc  finished tls sha256" );

    mbedtls_sha256_clone( &sha256, &ssl->handshake->fin_sha256 );
# 5247 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    sender = ( from == 0 )
             ? "client finished"
             : "server finished";

    mbedtls_sha256_finish( &sha256, padbuf );

    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 32, buf, len );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5256, "calc finished result", buf, len );

    mbedtls_sha256_free( &sha256 );

    mbedtls_zeroize( padbuf, sizeof( padbuf ) );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5262, "<= calc  finished" );
}
# 5318 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static void ssl_calc_finished_tls_sm3(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_sm3_context sm3;
    unsigned char padbuf[32];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    mbedtls_sm3_init( &sm3 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5332, "=> calc  finished tls SM3" );

    mbedtls_sm3_clone( &sm3, &ssl->handshake->fin_sm3 );


    sender = ( from == 0 )
             ? "client finished"
             : "server finished";

    mbedtls_sm3_finish( &sm3, padbuf );

    ssl->handshake->tls_prf( session->master, 48, sender,
                                 padbuf, 32, buf, len );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5346, "calc finished result", buf, len );

    mbedtls_sm3_free( &sm3 );

    mbedtls_zeroize( padbuf, sizeof( padbuf ) );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5352, "<= calc  finished" );
}



static void ssl_handshake_wrapup_free_hs_transform( mbedtls_ssl_context *ssl )
{
    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5359, "=> handshake wrapup: final free" );




    mbedtls_ssl_handshake_free( ssl->handshake );
    free( ssl->handshake );
    ssl->handshake = ((void *)0);




    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
    }
    ssl->transform = ssl->transform_negotiate;
    ssl->transform_negotiate = ((void *)0);

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5379, "<= handshake wrapup: final free" );
}

void mbedtls_ssl_handshake_wrapup( mbedtls_ssl_context *ssl )
{
    int resume = ssl->handshake->resume;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5386, "=> handshake wrapup" );


    if( ssl->renego_status == 1 )
    {
        ssl->renego_status = 2;
        ssl->renego_records_seen = 0;
    }





    if( ssl->session )
    {


        ssl->session_negotiate->encrypt_then_mac =
                  ssl->session->encrypt_then_mac;


        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
    }
    ssl->session = ssl->session_negotiate;
    ssl->session_negotiate = ((void *)0);




    if( ssl->conf->f_set_cache != ((void *)0) &&
        ssl->session->id_len != 0 &&
        resume == 0 )
    {
        if( ssl->conf->f_set_cache( ssl->conf->p_cache, ssl->session ) != 0 )
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5421, "cache did not store session" );
    }


    if( ssl->conf->transport == 1 &&
        ssl->handshake->flight != ((void *)0) )
    {

        ssl_set_timer( ssl, 0 );



        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5433, "skip freeing handshake and transform" );
    }
    else

        ssl_handshake_wrapup_free_hs_transform( ssl );

    ssl->state++;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5441, "<= handshake wrapup" );
}

int mbedtls_ssl_write_finished( mbedtls_ssl_context *ssl )
{
    int ret, hash_len;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5448, "=> write finished" );




    if( ssl->minor_ver >= 2 || ssl->protocol == 0 )
    {
        ssl->out_msg = ssl->out_iv + ssl->transform_negotiate->ivlen -
                       ssl->transform_negotiate->fixed_ivlen;
    }
    else
        ssl->out_msg = ssl->out_iv;

    ssl->handshake->calc_finished( ssl, ssl->out_msg + 4, ssl->conf->endpoint );







    hash_len = ( ssl->minor_ver == 0 ) ? 36 : 12;


    ssl->verify_data_len = hash_len;
    memcpy( ssl->own_verify_data, ssl->out_msg + 4, hash_len );


    ssl->out_msglen = 4 + hash_len;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 20;





    if( ssl->handshake->resume != 0 )
    {

        if( ssl->conf->endpoint == 0 )
            ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;


        if( ssl->conf->endpoint == 1 )
            ssl->state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;

    }
    else
        ssl->state++;





    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5502, "switching to new transform spec for outbound data" );


    if( ssl->conf->transport == 1 )
    {
        unsigned char i;


        ssl->handshake->alt_transform_out = ssl->transform_out;
        memcpy( ssl->handshake->alt_out_ctr, ssl->out_ctr, 8 );


        memset( ssl->out_ctr + 2, 0, 6 );


        for( i = 2; i > 0; i-- )
            if( ++ssl->out_ctr[i - 1] != 0 )
                break;


        if( i == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5524, "DTLS epoch would wrap" );
            return( -0x6B80 );
        }
    }
    else

    memset( ssl->out_ctr, 0, 8 );

    ssl->transform_out = ssl->transform_negotiate;
    ssl->session_out = ssl->session_negotiate;
# 5547 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_send_flight_completed( ssl );


    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5553, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5557, "<= write finished" );

    return( 0 );
}







int mbedtls_ssl_parse_finished( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned int hash_len;
    unsigned char buf[12];

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5574, "=> parse finished" );

    ssl->handshake->calc_finished( ssl, buf, ssl->conf->endpoint ^ 1 );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5580, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5586, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }







        hash_len = 12;

    if( ssl->in_msg[0] != 20 ||
        ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + hash_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5603, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7E80 );
    }

    if( mbedtls_ssl_safer_memcmp( ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl ),
                      buf, hash_len ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5612, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7E80 );
    }


    ssl->verify_data_len = hash_len;
    memcpy( ssl->peer_verify_data, buf, hash_len );


    if( ssl->handshake->resume != 0 )
    {

        if( ssl->conf->endpoint == 0 )
            ssl->state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;


        if( ssl->conf->endpoint == 1 )
            ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;

    }
    else
        ssl->state++;


    if( ssl->conf->transport == 1 )
        mbedtls_ssl_recv_flight_completed( ssl );


    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5642, "<= parse finished" );

    return( 0 );
}

static void ssl_handshake_params_init( mbedtls_ssl_handshake_params *handshake )
{
    memset( handshake, 0, sizeof( mbedtls_ssl_handshake_params ) );



     mbedtls_md5_init( &handshake->fin_md5 );
    mbedtls_sha1_init( &handshake->fin_sha1 );
     mbedtls_md5_starts( &handshake->fin_md5 );
    mbedtls_sha1_starts( &handshake->fin_sha1 );



    mbedtls_sha256_init( &handshake->fin_sha256 );
    mbedtls_sha256_starts( &handshake->fin_sha256, 0 );
# 5671 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        mbedtls_sm3_init( &handshake->fin_sm3 );
        mbedtls_sm3_starts( &handshake->fin_sm3 );



    handshake->update_checksum = ssl_update_checksum_start;



    mbedtls_ssl_sig_hash_set_init( &handshake->hash_algs );






    mbedtls_ecdh_init( &handshake->ecdh_ctx );
# 5698 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    handshake->sni_authmode = 3;

}

static void ssl_transform_init( mbedtls_ssl_transform *transform )
{
    memset( transform, 0, sizeof(mbedtls_ssl_transform) );

    mbedtls_cipher_init( &transform->cipher_ctx_enc );
    mbedtls_cipher_init( &transform->cipher_ctx_dec );

    mbedtls_md_init( &transform->md_ctx_enc );
    mbedtls_md_init( &transform->md_ctx_dec );
}

void mbedtls_ssl_session_init( mbedtls_ssl_session *session )
{
    memset( session, 0, sizeof(mbedtls_ssl_session) );
}

static int ssl_handshake_init( mbedtls_ssl_context *ssl )
{

    if( ssl->transform_negotiate )
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
    if( ssl->session_negotiate )
        mbedtls_ssl_session_free( ssl->session_negotiate );
    if( ssl->handshake )
        mbedtls_ssl_handshake_free( ssl->handshake );





    if( ssl->transform_negotiate == ((void *)0) )
    {
        ssl->transform_negotiate = calloc( 1, sizeof(mbedtls_ssl_transform) );
    }

    if( ssl->session_negotiate == ((void *)0) )
    {
        ssl->session_negotiate = calloc( 1, sizeof(mbedtls_ssl_session) );
    }

    if( ssl->handshake == ((void *)0) )
    {
        ssl->handshake = calloc( 1, sizeof(mbedtls_ssl_handshake_params) );
    }


    if( ssl->handshake == ((void *)0) ||
        ssl->transform_negotiate == ((void *)0) ||
        ssl->session_negotiate == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5752, "alloc() of ssl sub-contexts failed" );

        free( ssl->handshake );
        free( ssl->transform_negotiate );
        free( ssl->session_negotiate );

        ssl->handshake = ((void *)0);
        ssl->transform_negotiate = ((void *)0);
        ssl->session_negotiate = ((void *)0);

        return( -0x7F00 );
    }


    mbedtls_ssl_session_init( ssl->session_negotiate );
    ssl_transform_init( ssl->transform_negotiate );
    ssl_handshake_params_init( ssl->handshake );


    if( ssl->conf->transport == 1 )
    {
        ssl->handshake->alt_transform_out = ssl->transform_out;

        if( ssl->conf->endpoint == 0 )
            ssl->handshake->retransmit_state = 0;
        else
            ssl->handshake->retransmit_state = 2;

        ssl_set_timer( ssl, 0 );
    }


    return( 0 );
}



static int ssl_cookie_write_dummy( void *ctx,
                      unsigned char **p, unsigned char *end,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    ((void) ctx);
    ((void) p);
    ((void) end);
    ((void) cli_id);
    ((void) cli_id_len);

    return( -0x7080 );
}

static int ssl_cookie_check_dummy( void *ctx,
                      const unsigned char *cookie, size_t cookie_len,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    ((void) ctx);
    ((void) cookie);
    ((void) cookie_len);
    ((void) cli_id);
    ((void) cli_id_len);

    return( -0x7080 );
}






void mbedtls_ssl_init( mbedtls_ssl_context *ssl )
{
    memset( ssl, 0, sizeof( mbedtls_ssl_context ) );
}




int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                       mbedtls_ssl_config *conf )
{
    int ret;
    const size_t len = ( 8192 + 0 + 29 + 32 + 256 );

    ssl->conf = conf;




    if( ( ssl->in_buf = calloc( 1, len + 3 ) ) == ((void *)0) ||
        ( ssl->out_buf = calloc( 1, len + 3 ) ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 5842, "alloc(%d bytes) failed", len + 3 );
        free( ssl->in_buf );
        ssl->in_buf = ((void *)0);
        return( -0x7F00 );
    }

    ssl->in_buf += 3;
    ssl->out_buf += 3;


    if( conf->transport == 1 )
    {
        ssl->out_hdr = ssl->out_buf;
        ssl->out_ctr = ssl->out_buf + 3;
        ssl->out_len = ssl->out_buf + 11;
        ssl->out_iv = ssl->out_buf + 13;
        ssl->out_msg = ssl->out_buf + 13;

        ssl->in_hdr = ssl->in_buf;
        ssl->in_ctr = ssl->in_buf + 3;
        ssl->in_len = ssl->in_buf + 11;
        ssl->in_iv = ssl->in_buf + 13;
        ssl->in_msg = ssl->in_buf + 13;
    }
    else

    {
        ssl->out_ctr = ssl->out_buf;
        ssl->out_hdr = ssl->out_buf + 8;
        ssl->out_len = ssl->out_buf + 11;
        ssl->out_iv = ssl->out_buf + 13;
        ssl->out_msg = ssl->out_buf + 13;

        ssl->in_ctr = ssl->in_buf;
        ssl->in_hdr = ssl->in_buf + 8;
        ssl->in_len = ssl->in_buf + 11;
        ssl->in_iv = ssl->in_buf + 13;
        ssl->in_msg = ssl->in_buf + 13;
    }

    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );

    return( 0 );
}
# 5895 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_session_reset_int( mbedtls_ssl_context *ssl, int partial )
{
    int ret;

    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;


    ssl_set_timer( ssl, 0 );


    ssl->renego_status = 0;
    ssl->renego_records_seen = 0;

    ssl->verify_data_len = 0;
    memset( ssl->own_verify_data, 0, 12 );
    memset( ssl->peer_verify_data, 0, 12 );

    ssl->secure_renegotiation = 0;

    ssl->in_offt = ((void *)0);

    ssl->in_msg = ssl->in_buf + 13;
    ssl->in_msgtype = 0;
    ssl->in_msglen = 0;
    if( partial == 0 )
        ssl->in_left = 0;

    ssl->next_record_offset = 0;
    ssl->in_epoch = 0;


    ssl_dtls_replay_reset( ssl );


    ssl->in_hslen = 0;
    ssl->nb_zero = 0;

    ssl->keep_current_message = 0;

    ssl->out_msg = ssl->out_buf + 13;
    ssl->out_msgtype = 0;
    ssl->out_msglen = 0;
    ssl->out_left = 0;

    if( ssl->split_done != 0 )
        ssl->split_done = 0;


    ssl->transform_in = ((void *)0);
    ssl->transform_out = ((void *)0);

    memset( ssl->out_buf, 0, ( 8192 + 0 + 29 + 32 + 256 ) );
    if( partial == 0 )
        memset( ssl->in_buf, 0, ( 8192 + 0 + 29 + 32 + 256 ) );
# 5962 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
        ssl->transform = ((void *)0);
    }

    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
        ssl->session = ((void *)0);
    }


    ssl->alpn_chosen = ((void *)0);



    if( partial == 0 )
    {
        free( ssl->cli_id );
        ssl->cli_id = ((void *)0);
        ssl->cli_id_len = 0;
    }


    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );

    return( 0 );
}





int mbedtls_ssl_session_reset( mbedtls_ssl_context *ssl )
{
    return( ssl_session_reset_int( ssl, 0 ) );
}




void mbedtls_ssl_conf_endpoint( mbedtls_ssl_config *conf, int endpoint )
{
    conf->endpoint = endpoint;
}

void mbedtls_ssl_conf_transport( mbedtls_ssl_config *conf, int transport )
{
    conf->transport = transport;
}


void mbedtls_ssl_conf_dtls_anti_replay( mbedtls_ssl_config *conf, char mode )
{
    conf->anti_replay = mode;
}



void mbedtls_ssl_conf_dtls_badmac_limit( mbedtls_ssl_config *conf, unsigned limit )
{
    conf->badmac_limit = limit;
}



void mbedtls_ssl_conf_handshake_timeout( mbedtls_ssl_config *conf, uint32_t min, uint32_t max )
{
    conf->hs_timeout_min = min;
    conf->hs_timeout_max = max;
}


void mbedtls_ssl_conf_authmode( mbedtls_ssl_config *conf, int authmode )
{
    conf->authmode = authmode;
}


void mbedtls_ssl_conf_verify( mbedtls_ssl_config *conf,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    conf->f_vrfy = f_vrfy;
    conf->p_vrfy = p_vrfy;
}


void mbedtls_ssl_conf_rng( mbedtls_ssl_config *conf,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng )
{
    conf->f_rng = f_rng;
    conf->p_rng = p_rng;
}

void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg )
{
    conf->f_dbg = f_dbg;
    conf->p_dbg = p_dbg;
}

void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
        void *p_bio,
        mbedtls_ssl_send_t *f_send,
        mbedtls_ssl_recv_t *f_recv,
        mbedtls_ssl_recv_timeout_t *f_recv_timeout )
{
    ssl->p_bio = p_bio;
    ssl->f_send = f_send;
    ssl->f_recv = f_recv;
    ssl->f_recv_timeout = f_recv_timeout;
}

void mbedtls_ssl_conf_read_timeout( mbedtls_ssl_config *conf, uint32_t timeout )
{
    conf->read_timeout = timeout;
}

void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer )
{
    ssl->p_timer = p_timer;
    ssl->f_set_timer = f_set_timer;
    ssl->f_get_timer = f_get_timer;


    ssl_set_timer( ssl, 0 );
}


void mbedtls_ssl_conf_session_cache( mbedtls_ssl_config *conf,
        void *p_cache,
        int (*f_get_cache)(void *, mbedtls_ssl_session *),
        int (*f_set_cache)(void *, const mbedtls_ssl_session *) )
{
    conf->p_cache = p_cache;
    conf->f_get_cache = f_get_cache;
    conf->f_set_cache = f_set_cache;
}



int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session )
{
    int ret;

    if( ssl == ((void *)0) ||
        session == ((void *)0) ||
        ssl->session_negotiate == ((void *)0) ||
        ssl->conf->endpoint != 0 )
    {
        return( -0x7100 );
    }

    if( ( ret = ssl_session_copy( ssl->session_negotiate, session ) ) != 0 )
        return( ret );

    ssl->handshake->resume = 1;

    return( 0 );
}


void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites )
{
    conf->ciphersuite_list[0] = ciphersuites;
    conf->ciphersuite_list[1] = ciphersuites;
    conf->ciphersuite_list[2] = ciphersuites;
    conf->ciphersuite_list[3] = ciphersuites;
}

void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor )
{
    if( major != 3 )
        return;

    if( minor < 0 || minor > 3 )
        return;

    conf->ciphersuite_list[minor] = ciphersuites;
}


void mbedtls_ssl_conf_cert_profile( mbedtls_ssl_config *conf,
                                    const mbedtls_x509_crt_profile *profile )
{
    conf->cert_profile = profile;
}


static int ssl_append_key_cert( mbedtls_ssl_key_cert **head,
                                mbedtls_x509_crt *cert,
                                mbedtls_pk_context *key )
{
    mbedtls_ssl_key_cert *new;

    new = calloc( 1, sizeof( mbedtls_ssl_key_cert ) );
    if( new == ((void *)0) )
        return( -0x7F00 );

    new->cert = cert;
    new->key = key;
    new->next = ((void *)0);


    if( *head == ((void *)0) )
    {
        *head = new;
    }
    else
    {
        mbedtls_ssl_key_cert *cur = *head;
        while( cur->next != ((void *)0) )
            cur = cur->next;
        cur->next = new;
    }

    return( 0 );
}


static void ssl_key_cert_free( mbedtls_ssl_key_cert *key_cert );


static int ssl_new_key_cert( mbedtls_ssl_key_cert **head,
                                mbedtls_x509_crt *cert,
                                mbedtls_pk_context *key )
{
    if(*head)
        ssl_key_cert_free(*head);
    *head = ((void *)0);
    return( ssl_append_key_cert( head, cert, key ) );
}

int mbedtls_ssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key )
{
    return( ssl_append_key_cert( &conf->key_cert, own_cert, pk_key ) );
}


int mbedtls_gmssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key )
{
    return( ssl_append_key_cert( &conf->gm_key_cert, own_cert, pk_key ) );
}


int mbedtls_ssl_conf_own_cert_new( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key )
{
    return( ssl_new_key_cert( &conf->key_cert, own_cert, pk_key ) );
}

void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl )
{
    conf->ca_chain = ca_chain;
    conf->ca_crl = ca_crl;
}


void mbedtls_gmssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl )
{
    conf->gm_ca_chain = ca_chain;
    conf->gm_ca_crl = ca_crl;
}




int mbedtls_ssl_set_hs_own_cert( mbedtls_ssl_context *ssl,
                                 mbedtls_x509_crt *own_cert,
                                 mbedtls_pk_context *pk_key )
{
    return( ssl_append_key_cert( &ssl->handshake->sni_key_cert,
                                 own_cert, pk_key ) );
}

void mbedtls_ssl_set_hs_ca_chain( mbedtls_ssl_context *ssl,
                                  mbedtls_x509_crt *ca_chain,
                                  mbedtls_x509_crl *ca_crl )
{
    ssl->handshake->sni_ca_chain = ca_chain;
    ssl->handshake->sni_ca_crl = ca_crl;
}

void mbedtls_ssl_set_hs_authmode( mbedtls_ssl_context *ssl,
                                  int authmode )
{
    ssl->handshake->sni_authmode = authmode;
}
# 6301 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_conf_psk( mbedtls_ssl_config *conf,
                const unsigned char *psk, size_t psk_len,
                const unsigned char *psk_identity, size_t psk_identity_len )
{
    if( psk == ((void *)0) || psk_identity == ((void *)0) )
        return( -0x7100 );

    if( psk_len > 32 )
        return( -0x7100 );


    if( ( psk_identity_len >> 16 ) != 0 ||
        psk_identity_len > 8192 )
    {
        return( -0x7100 );
    }

    if( conf->psk != ((void *)0) || conf->psk_identity != ((void *)0) )
    {
        free( conf->psk );
        free( conf->psk_identity );
        conf->psk = ((void *)0);
        conf->psk_identity = ((void *)0);
    }

    if( ( conf->psk = calloc( 1, psk_len ) ) == ((void *)0) ||
        ( conf->psk_identity = calloc( 1, psk_identity_len ) ) == ((void *)0) )
    {
        free( conf->psk );
        free( conf->psk_identity );
        conf->psk = ((void *)0);
        conf->psk_identity = ((void *)0);
        return( -0x7F00 );
    }

    conf->psk_len = psk_len;
    conf->psk_identity_len = psk_identity_len;

    memcpy( conf->psk, psk, conf->psk_len );
    memcpy( conf->psk_identity, psk_identity, conf->psk_identity_len );

    return( 0 );
}

int mbedtls_ssl_set_hs_psk( mbedtls_ssl_context *ssl,
                            const unsigned char *psk, size_t psk_len )
{
    if( psk == ((void *)0) || ssl->handshake == ((void *)0) )
        return( -0x7100 );

    if( psk_len > 32 )
        return( -0x7100 );

    if( ssl->handshake->psk != ((void *)0) )
        free( ssl->handshake->psk );

    if( ( ssl->handshake->psk = calloc( 1, psk_len ) ) == ((void *)0) )
        return( -0x7F00 );

    ssl->handshake->psk_len = psk_len;
    memcpy( ssl->handshake->psk, psk, ssl->handshake->psk_len );

    return( 0 );
}

void mbedtls_ssl_conf_psk_cb( mbedtls_ssl_config *conf,
                     int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *,
                     size_t),
                     void *p_psk )
{
    conf->f_psk = f_psk;
    conf->p_psk = p_psk;
}
# 6423 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
void mbedtls_ssl_conf_sig_hashes( mbedtls_ssl_config *conf,
                                  const int *hashes )
{
    conf->sig_hashes = hashes;
}






void mbedtls_ssl_conf_curves( mbedtls_ssl_config *conf,
                             const mbedtls_ecp_group_id *curve_list )
{
    conf->curve_list = curve_list;
}



int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname )
{
    size_t hostname_len;

    if( hostname == ((void *)0) )
        return( -0x7100 );

    hostname_len = strlen( hostname );

    if( hostname_len + 1 == 0 )
        return( -0x7100 );

    if( hostname_len > 255 )
        return( -0x7100 );

    ssl->hostname = calloc( 1, hostname_len + 1 );

    if( ssl->hostname == ((void *)0) )
        return( -0x7F00 );

    memcpy( ssl->hostname, hostname, hostname_len );

    ssl->hostname[hostname_len] = '\0';

    return( 0 );
}



void mbedtls_ssl_conf_sni( mbedtls_ssl_config *conf,
                  int (*f_sni)(void *, mbedtls_ssl_context *,
                                const unsigned char *, size_t),
                  void *p_sni )
{
    conf->f_sni = f_sni;
    conf->p_sni = p_sni;
}



int mbedtls_ssl_conf_alpn_protocols( mbedtls_ssl_config *conf, const char **protos )
{
    size_t cur_len, tot_len;
    const char **p;






    tot_len = 0;
    for( p = protos; *p != ((void *)0); p++ )
    {
        cur_len = strlen( *p );
        tot_len += cur_len;

        if( cur_len == 0 || cur_len > 255 || tot_len > 65535 )
            return( -0x7100 );
    }

    conf->alpn_list = protos;

    return( 0 );
}

const char *mbedtls_ssl_get_alpn_protocol( const mbedtls_ssl_context *ssl )
{
    return( ssl->alpn_chosen );
}


void mbedtls_ssl_conf_max_version( mbedtls_ssl_config *conf, int major, int minor )
{
    conf->max_major_ver = major;
    conf->max_minor_ver = minor;
}

void mbedtls_ssl_conf_min_version( mbedtls_ssl_config *conf, int major, int minor )
{
    conf->min_major_ver = major;
    conf->min_minor_ver = minor;
}


void mbedtls_ssl_conf_fallback( mbedtls_ssl_config *conf, char fallback )
{
    conf->fallback = fallback;
}



void mbedtls_ssl_conf_cert_req_ca_list( mbedtls_ssl_config *conf,
                                          char cert_req_ca_list )
{
    conf->cert_req_ca_list = cert_req_ca_list;
}



void mbedtls_ssl_conf_encrypt_then_mac( mbedtls_ssl_config *conf, char etm )
{
    conf->encrypt_then_mac = etm;
}



void mbedtls_ssl_conf_extended_master_secret( mbedtls_ssl_config *conf, char ems )
{
    conf->extended_ms = ems;
}
# 6562 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code )
{
    if( mfl_code >= 5 ||
        mfl_code_to_length[mfl_code] > 8192 )
    {
        return( -0x7100 );
    }

    conf->mfl_code = mfl_code;

    return( 0 );
}



void mbedtls_ssl_conf_truncated_hmac( mbedtls_ssl_config *conf, int truncate )
{
    conf->trunc_hmac = truncate;
}



void mbedtls_ssl_conf_cbc_record_splitting( mbedtls_ssl_config *conf, char split )
{
    conf->cbc_record_splitting = split;
}


void mbedtls_ssl_conf_legacy_renegotiation( mbedtls_ssl_config *conf, int allow_legacy )
{
    conf->allow_legacy_renegotiation = allow_legacy;
}


void mbedtls_ssl_conf_renegotiation( mbedtls_ssl_config *conf, int renegotiation )
{
    conf->disable_renegotiation = renegotiation;
}

void mbedtls_ssl_conf_renegotiation_enforced( mbedtls_ssl_config *conf, int max_records )
{
    conf->renego_max_records = max_records;
}

void mbedtls_ssl_conf_renegotiation_period( mbedtls_ssl_config *conf,
                                   const unsigned char period[8] )
{
    memcpy( conf->renego_period, period, 8 );
}




void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets )
{
    conf->session_tickets = use_tickets;
}



void mbedtls_ssl_conf_session_tickets_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_ticket_write_t *f_ticket_write,
        mbedtls_ssl_ticket_parse_t *f_ticket_parse,
        void *p_ticket )
{
    conf->f_ticket_write = f_ticket_write;
    conf->f_ticket_parse = f_ticket_parse;
    conf->p_ticket = p_ticket;
}




void mbedtls_ssl_conf_export_keys_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_t *f_export_keys,
        void *p_export_keys )
{
    conf->f_export_keys = f_export_keys;
    conf->p_export_keys = p_export_keys;
}





size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl )
{
    return( ssl->in_offt == ((void *)0) ? 0 : ssl->in_msglen );
}

uint32_t mbedtls_ssl_get_verify_result( const mbedtls_ssl_context *ssl )
{
    if( ssl->session != ((void *)0) )
        return( ssl->session->verify_result );

    if( ssl->session_negotiate != ((void *)0) )
        return( ssl->session_negotiate->verify_result );

    return( 0xFFFFFFFF );
}

const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void *)0) || ssl->session == ((void *)0) )
        return( ((void *)0) );

    return mbedtls_ssl_get_ciphersuite_name( ssl->session->ciphersuite );
}

const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl )
{

    if( ssl->conf->transport == 1 )
    {
        switch( ssl->minor_ver )
        {
            case 2:
                return( "DTLSv1.0" );

            case 3:
                return( "DTLSv1.2" );

            default:
                return( "unknown (DTLS)" );
        }
    }


    switch( ssl->minor_ver )
    {
        case 0:
            return( "SSLv3.0" );

        case 1:
            return( "TLSv1.0" );

        case 2:
            return( "TLSv1.1" );

        case 3:
            return( "TLSv1.2" );

        default:
            return( "unknown" );
    }
}

int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl )
{
    size_t transform_expansion;
    const mbedtls_ssl_transform *transform = ssl->transform_out;






    if( transform == ((void *)0) )
        return( (int) mbedtls_ssl_hdr_len( ssl ) );

    switch( mbedtls_cipher_get_cipher_mode( &transform->cipher_ctx_enc ) )
    {
        case MBEDTLS_MODE_GCM:
        case MBEDTLS_MODE_CCM:
        case MBEDTLS_MODE_STREAM:
            transform_expansion = transform->minlen;
            break;

        case MBEDTLS_MODE_CBC:
            transform_expansion = transform->maclen
                      + mbedtls_cipher_get_block_size( &transform->cipher_ctx_enc );
            break;

        default:
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6736, "should never happen" );
            return( -0x6C00 );
    }

    return( (int)( mbedtls_ssl_hdr_len( ssl ) + transform_expansion ) );
}


size_t mbedtls_ssl_get_max_frag_len( const mbedtls_ssl_context *ssl )
{
    size_t max_len;




    max_len = mfl_code_to_length[ssl->conf->mfl_code];




    if( ssl->session_out != ((void *)0) &&
        mfl_code_to_length[ssl->session_out->mfl_code] < max_len )
    {
        max_len = mfl_code_to_length[ssl->session_out->mfl_code];
    }

    return max_len;
}



const mbedtls_x509_crt *mbedtls_ssl_get_peer_cert( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void *)0) || ssl->session == ((void *)0) )
        return( ((void *)0) );

    return( ssl->session->peer_cert );
}



int mbedtls_ssl_get_session( const mbedtls_ssl_context *ssl, mbedtls_ssl_session *dst )
{
    if( ssl == ((void *)0) ||
        dst == ((void *)0) ||
        ssl->session == ((void *)0) ||
        ssl->conf->endpoint != 0 )
    {
        return( -0x7100 );
    }

    return( ssl_session_copy( dst, ssl->session ) );
}





int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );


    if( ssl->conf->endpoint == 0 )
        ret = mbedtls_ssl_handshake_client_step( ssl );


    if( ssl->conf->endpoint == 1 )
        ret = mbedtls_ssl_handshake_server_step( ssl );


    return( ret );
}




int mbedtls_ssl_handshake( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6823, "=> handshake" );

    while( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = mbedtls_ssl_handshake_step( ssl );

        if( ret != 0 )
            break;
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6833, "<= handshake" );

    return( ret );
}






static int ssl_write_hello_request( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6847, "=> write hello request" );

    ssl->out_msglen = 4;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 0;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6855, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6859, "<= write hello request" );

    return( 0 );
}
# 6874 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_start_renegotiation( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6878, "=> renegotiate" );

    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );




    if( ssl->conf->transport == 1 &&
        ssl->renego_status == 3 )
    {
        if( ssl->conf->endpoint == 1 )
            ssl->handshake->out_msg_seq = 1;
        else
            ssl->handshake->in_msg_seq = 1;
    }


    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;
    ssl->renego_status = 1;

    if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6901, "mbedtls_ssl_handshake", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6905, "<= renegotiate" );

    return( 0 );
}





int mbedtls_ssl_renegotiate( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );



    if( ssl->conf->endpoint == 1 )
    {
        if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            return( -0x7100 );

        ssl->renego_status = 3;


        if( ssl->out_left != 0 )
            return( mbedtls_ssl_flush_output( ssl ) );

        return( ssl_write_hello_request( ssl ) );
    }







    if( ssl->renego_status != 1 )
    {
        if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            return( -0x7100 );

        if( ( ret = ssl_start_renegotiation( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6950, "ssl_start_renegotiation", ret );
            return( ret );
        }
    }
    else
    {
        if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6958, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }


    return( ret );
}




static int ssl_check_ctr_renegotiate( mbedtls_ssl_context *ssl )
{
    size_t ep_len = ssl_ep_len( ssl );
    int in_ctr_cmp;
    int out_ctr_cmp;

    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER ||
        ssl->renego_status == 3 ||
        ssl->conf->disable_renegotiation == 0 )
    {
        return( 0 );
    }

    in_ctr_cmp = memcmp( ssl->in_ctr + ep_len,
                        ssl->conf->renego_period + ep_len, 8 - ep_len );
    out_ctr_cmp = memcmp( ssl->out_ctr + ep_len,
                          ssl->conf->renego_period + ep_len, 8 - ep_len );

    if( in_ctr_cmp <= 0 && out_ctr_cmp <= 0 )
    {
        return( 0 );
    }

    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 6993, "record counter limit reached: renegotiate" );
    return( mbedtls_ssl_renegotiate( ssl ) );
}





int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len )
{
    int ret;
    size_t n;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7009, "=> read" );


    if( ssl->conf->transport == 1 )
    {
        if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
            return( ret );

        if( ssl->handshake != ((void *)0) &&
            ssl->handshake->retransmit_state == 1 )
        {
            if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
                return( ret );
        }
    }
# 7039 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    ret = ssl_check_ctr_renegotiate( ssl );
    if( ret != -0x6B00 &&
        ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7043, "ssl_check_ctr_renegotiate", ret );
        return( ret );
    }


    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = mbedtls_ssl_handshake( ssl );
        if( ret != -0x6B00 &&
            ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7054, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }
# 7094 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->in_offt == ((void *)0) )
    {

        if( ssl->f_get_timer != ((void *)0) &&
            ssl->f_get_timer( ssl->p_timer ) == -1 )
        {
            ssl_set_timer( ssl, ssl->conf->read_timeout );
        }

        if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
        {
            if( ret == -0x7280 )
                return( 0 );

            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7108, "mbedtls_ssl_read_record", ret );
            return( ret );
        }

        if( ssl->in_msglen == 0 &&
            ssl->in_msgtype == 23 )
        {



            if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
            {
                if( ret == -0x7280 )
                    return( 0 );

                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7123, "mbedtls_ssl_read_record", ret );
                return( ret );
            }
        }


        if( ssl->in_msgtype == 22 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7131, "received handshake message" );
# 7140 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            if( ssl->conf->endpoint == 0 &&
                ( ssl->in_msg[0] != 0 ||
                  ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7144, "handshake received (not HelloRequest)" );



                if( ssl->conf->transport == 1 )
                    return( -0x6900 );

                return( -0x7700 );
            }



            if( ssl->conf->endpoint == 1 &&
                ssl->in_msg[0] != 1 )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7159, "handshake received (not ClientHello)" );



                if( ssl->conf->transport == 1 )
                    return( -0x6900 );

                return( -0x7700 );
            }




            if( ssl->conf->disable_renegotiation == 0 ||
                ( ssl->secure_renegotiation == 0 &&
                  ssl->conf->allow_legacy_renegotiation ==
                                                0 ) )
            {




                mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7181, "refusing renegotiation, sending alert" );
# 7196 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                if( ssl->minor_ver >= 1 )
                {
                    if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                                    1,
                                    100 ) ) != 0 )
                    {
                        return( ret );
                    }
                }
                else


                {
                    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7209, "should never happen" );
                    return( -0x6C00 );
                }
            }
            else
            {






                if( ssl->conf->transport == 1 &&
                    ssl->conf->endpoint == 0 )
                {
                    ssl->renego_status = 3;
                }

                ret = ssl_start_renegotiation( ssl );
                if( ret != -0x6B00 &&
                    ret != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7231, "ssl_start_renegotiation", ret );
                    return( ret );
                }
            }

            return( -0x6900 );
        }
        else if( ssl->renego_status == 3 )
        {
            if( ssl->conf->renego_max_records >= 0 )
            {
                if( ++ssl->renego_records_seen > ssl->conf->renego_max_records )
                {
                    mbedtls_debug_print_msg( ssl, 1,
                                                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 7244 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                    ,
                                                                      7245
# 7244 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
                    , "renegotiation requested, " "but not honored by client" )
                                                                       ;
                    return( -0x7700 );
                }
            }
        }



        if( ssl->in_msgtype == 21 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7255, "ignoring non-fatal non-closure alert" );
            return( -0x6900 );
        }

        if( ssl->in_msgtype != 23 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7261, "bad application data message" );
            return( -0x7700 );
        }

        ssl->in_offt = ssl->in_msg;



        if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
            ssl_set_timer( ssl, 0 );






        if( ssl->conf->endpoint == 1 &&
            ssl->renego_status == 3 )
        {
            if( ( ret = ssl_resend_hello_request( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7282, "ssl_resend_hello_request", ret );
                return( ret );
            }
        }


    }

    n = ( len < ssl->in_msglen )
        ? len : ssl->in_msglen;

    memcpy( buf, ssl->in_offt, n );
    ssl->in_msglen -= n;

    if( ssl->in_msglen == 0 )
    {

        ssl->in_offt = ((void *)0);
        ssl->keep_current_message = 0;
    }
    else
    {

        ssl->in_offt += n;
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7308, "<= read" );

    return( (int) n );
}





static int ssl_write_real( mbedtls_ssl_context *ssl,
                           const unsigned char *buf, size_t len )
{
    int ret;

    size_t max_len = mbedtls_ssl_get_max_frag_len( ssl );

    if( len > max_len )
    {

        if( ssl->conf->transport == 1 )
        {
            mbedtls_debug_print_msg( ssl, 1,

                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
# 7329 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            ,

                                               7331
# 7329 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
            , "fragment larger than the (negotiated) " "maximum fragment length: %d > %d", len, max_len )

                                                ;
            return( -0x7100 );
        }
        else

            len = max_len;
    }


    if( ssl->out_left != 0 )
    {
        if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7344, "mbedtls_ssl_flush_output", ret );
            return( ret );
        }
    }
    else
    {
        ssl->out_msglen = len;
        ssl->out_msgtype = 23;
        memcpy( ssl->out_msg, buf, len );

        if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7356, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }

    return( (int) len );
}
# 7372 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
static int ssl_write_split( mbedtls_ssl_context *ssl,
                            const unsigned char *buf, size_t len )
{
    int ret;

    if( ssl->conf->cbc_record_splitting ==
            0 ||
        len <= 1 ||
        ssl->minor_ver > 1 ||
        mbedtls_cipher_get_cipher_mode( &ssl->transform_out->cipher_ctx_enc )
                                != MBEDTLS_MODE_CBC )
    {
        return( ssl_write_real( ssl, buf, len ) );
    }

    if( ssl->split_done == 0 )
    {
        if( ( ret = ssl_write_real( ssl, buf, 1 ) ) <= 0 )
            return( ret );
        ssl->split_done = 1;
    }

    if( ( ret = ssl_write_real( ssl, buf + 1, len - 1 ) ) <= 0 )
        return( ret );
    ssl->split_done = 0;

    return( ret + 1 );
}





int mbedtls_ssl_write( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7409, "=> write" );

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );


    if( ( ret = ssl_check_ctr_renegotiate( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7417, "ssl_check_ctr_renegotiate", ret );
        return( ret );
    }


    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7426, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }


    ret = ssl_write_split( ssl, buf, len );




    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7437, "<= write" );

    return( ret );
}




int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ssl == ((void *)0) || ssl->conf == ((void *)0) )
        return( -0x7100 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7452, "=> write close notify" );

    if( ssl->out_left != 0 )
        return( mbedtls_ssl_flush_output( ssl ) );

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                        1,
                        0 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7463, "mbedtls_ssl_send_alert_message", ret );
            return( ret );
        }
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7468, "<= write close notify" );

    return( 0 );
}

void mbedtls_ssl_transform_free( mbedtls_ssl_transform *transform )
{
    if( transform == ((void *)0) )
        return;






    mbedtls_cipher_free( &transform->cipher_ctx_enc );
    mbedtls_cipher_free( &transform->cipher_ctx_dec );

    mbedtls_md_free( &transform->md_ctx_enc );
    mbedtls_md_free( &transform->md_ctx_dec );

    mbedtls_zeroize( transform, sizeof( mbedtls_ssl_transform ) );
}


static void ssl_key_cert_free( mbedtls_ssl_key_cert *key_cert )
{
    mbedtls_ssl_key_cert *cur = key_cert, *next;

    while( cur != ((void *)0) )
    {
        next = cur->next;
        free( cur );
        cur = next;
    }
}


void mbedtls_ssl_handshake_free( mbedtls_ssl_handshake_params *handshake )
{
    if( handshake == ((void *)0) )
        return;



    mbedtls_md5_free( &handshake->fin_md5 );
    mbedtls_sha1_free( &handshake->fin_sha1 );



    mbedtls_sha256_free( &handshake->fin_sha256 );
# 7527 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    mbedtls_sm3_free( &handshake->fin_sm3 );







    mbedtls_ecdh_free( &handshake->ecdh_ctx );
# 7549 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    free( (void *) handshake->curves );



    if( handshake->psk != ((void *)0) )
    {
        mbedtls_zeroize( handshake->psk, handshake->psk_len );
        free( handshake->psk );
    }
# 7566 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( handshake->sni_key_cert != ((void *)0) )
    {
        mbedtls_ssl_key_cert *cur = handshake->sni_key_cert, *next;

        while( cur != ((void *)0) )
        {
            next = cur->next;
            free( cur );
            cur = next;
        }
    }



    free( handshake->verify_cookie );
    free( handshake->hs_msg );
    ssl_flight_free( handshake->flight );


    mbedtls_zeroize( handshake, sizeof( mbedtls_ssl_handshake_params ) );
}

void mbedtls_ssl_session_free( mbedtls_ssl_session *session )
{
    if( session == ((void *)0) )
        return;


    if( session->peer_cert != ((void *)0) )
    {
        mbedtls_x509_crt_free( session->peer_cert );
        free( session->peer_cert );
    }



    free( session->ticket );


    mbedtls_zeroize( session, sizeof( mbedtls_ssl_session ) );
}




void mbedtls_ssl_free( mbedtls_ssl_context *ssl )
{
    if( ssl == ((void *)0) )
        return;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7616, "=> free" );

    if( ssl->out_buf != ((void *)0) )
    {
        mbedtls_zeroize( ssl->out_buf, ( 8192 + 0 + 29 + 32 + 256 ) );
        ssl->out_buf -= 3;
        free( ssl->out_buf );
    }

    if( ssl->in_buf != ((void *)0) )
    {
        mbedtls_zeroize( ssl->in_buf, ( 8192 + 0 + 29 + 32 + 256 ) );
        ssl->in_buf -= 3;
        free( ssl->in_buf );
    }
# 7640 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
    }

    if( ssl->handshake )
    {
        mbedtls_ssl_handshake_free( ssl->handshake );
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
        mbedtls_ssl_session_free( ssl->session_negotiate );

        free( ssl->handshake );
        free( ssl->transform_negotiate );
        free( ssl->session_negotiate );
    }

    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
    }


    if( ssl->hostname != ((void *)0) )
    {
        mbedtls_zeroize( ssl->hostname, strlen( ssl->hostname ) );
        free( ssl->hostname );
    }
# 7680 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    free( ssl->cli_id );


    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c", 7683, "<= free" );


    mbedtls_zeroize( ssl, sizeof( mbedtls_ssl_context ) );
}




void mbedtls_ssl_config_init( mbedtls_ssl_config *conf )
{
    memset( conf, 0, sizeof( mbedtls_ssl_config ) );
}


static int ssl_preset_default_hashes[] = {





    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA224,


    MBEDTLS_MD_SHA1,




    MBEDTLS_MD_SM3,


    MBEDTLS_MD_NONE
};


static int ssl_preset_suiteb_ciphersuites[] = {
    0xC02B,
    0xC02C,
    0
};


static int ssl_preset_suiteb_hashes[] = {
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_NONE
};



static mbedtls_ecp_group_id ssl_preset_suiteb_curves[] = {
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_NONE
};





int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset )
{






    mbedtls_ssl_conf_endpoint( conf, endpoint );
    mbedtls_ssl_conf_transport( conf, transport );





    if( endpoint == 0 )
    {
        conf->authmode = 2;

        conf->session_tickets = 1;

    }







    conf->encrypt_then_mac = 1;



    conf->extended_ms = 1;



    conf->cbc_record_splitting = 1;



    conf->f_cookie_write = ssl_cookie_write_dummy;
    conf->f_cookie_check = ssl_cookie_check_dummy;



    conf->anti_replay = 1;



    conf->cert_req_ca_list = 1;



    conf->hs_timeout_min = 1000;
    conf->hs_timeout_max = 60000;



    conf->renego_max_records = 16;
    memset( conf->renego_period, 0x00, 2 );
    memset( conf->renego_period + 2, 0xFF, 6 );
# 7825 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    switch( preset )
    {



        case 2:
            conf->min_major_ver = 3;
            conf->min_minor_ver = 3;
            conf->max_major_ver = 3;
            conf->max_minor_ver = 3;

            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                   ssl_preset_suiteb_ciphersuites;


            conf->cert_profile = &mbedtls_x509_crt_profile_suiteb;



            conf->sig_hashes = ssl_preset_suiteb_hashes;



            conf->curve_list = ssl_preset_suiteb_curves;

            break;


        case 3:

            conf->min_major_ver = 1;
            conf->min_minor_ver = 1;
            conf->max_major_ver = 1;
            conf->max_minor_ver = 1;

            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                   mbedtls_gmssl_list_ciphersuites();


            conf->cert_profile = &mbedtls_x509_crt_profile_default;



            conf->sig_hashes = ssl_preset_default_hashes;



            conf->curve_list = mbedtls_ecp_grp_id_list();






            break;



        case 4:

            conf->min_major_ver = 3;
            conf->min_minor_ver = 3;
            conf->max_major_ver = 3;
            conf->max_minor_ver = 3;

            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                mbedtls_all_list_ciphersuites();


            conf->cert_profile = &mbedtls_x509_crt_profile_default;



            conf->sig_hashes = ssl_preset_default_hashes;



            conf->curve_list = mbedtls_ecp_grp_id_list();

            break;






        default:
            conf->min_major_ver = 3;
            conf->min_minor_ver = 1;
            conf->max_major_ver = 3;
            conf->max_minor_ver = 3;


            if( transport == 1 )
                conf->min_minor_ver = 2;


            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                   mbedtls_ssl_list_ciphersuites();


            conf->cert_profile = &mbedtls_x509_crt_profile_default;



            conf->sig_hashes = ssl_preset_default_hashes;



            conf->curve_list = mbedtls_ecp_grp_id_list();





    }

    return( 0 );
}




void mbedtls_ssl_config_free( mbedtls_ssl_config *conf )
{






    if( conf->psk != ((void *)0) )
    {
        mbedtls_zeroize( conf->psk, conf->psk_len );
        mbedtls_zeroize( conf->psk_identity, conf->psk_identity_len );
        free( conf->psk );
        free( conf->psk_identity );
        conf->psk_len = 0;
        conf->psk_identity_len = 0;
    }



    ssl_key_cert_free( conf->key_cert );

    ssl_key_cert_free( conf->gm_key_cert );



    mbedtls_zeroize( conf, sizeof( mbedtls_ssl_config ) );
}






unsigned char mbedtls_ssl_sig_from_pk( mbedtls_pk_context *pk )
{

    if( mbedtls_pk_can_do( pk, MBEDTLS_PK_RSA ) )
        return( 1 );


    if( mbedtls_pk_can_do( pk, MBEDTLS_PK_ECDSA ) )
        return( 3 );


        if( mbedtls_pk_can_do( pk, MBEDTLS_PK_EC ) )
            return( 7 );

    return( 0 );
}

unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type )
{
    switch( type ) {
        case MBEDTLS_PK_RSA:
            return( 1 );
        case MBEDTLS_PK_ECDSA:
        case MBEDTLS_PK_ECKEY:
            return( 3 );
        default:
            return( 0 );
    }
}

mbedtls_pk_type_t mbedtls_ssl_pk_alg_from_sig( unsigned char sig )
{
    switch( sig )
    {

        case 1:
            return( MBEDTLS_PK_RSA );


        case 3:
            return( MBEDTLS_PK_ECDSA );


        case 7:
            return( MBEDTLS_PK_EC );

        default:
            return( MBEDTLS_PK_NONE );
    }
}






mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg )
{
    switch( sig_alg )
    {
        case MBEDTLS_PK_RSA:
            return( set->rsa );
        case MBEDTLS_PK_ECDSA:
            return( set->ecdsa );
        default:
            return( MBEDTLS_MD_NONE );
    }
}


void mbedtls_ssl_sig_hash_set_add( mbedtls_ssl_sig_hash_set_t *set,
                                   mbedtls_pk_type_t sig_alg,
                                   mbedtls_md_type_t md_alg )
{
    switch( sig_alg )
    {
        case MBEDTLS_PK_RSA:
            if( set->rsa == MBEDTLS_MD_NONE )
                set->rsa = md_alg;
            break;

        case MBEDTLS_PK_ECDSA:
        case MBEDTLS_PK_EC:
            if( set->ecdsa == MBEDTLS_MD_NONE )
                set->ecdsa = md_alg;
            break;

        default:
            break;
    }
}


void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg )
{
    set->rsa = md_alg;
    set->ecdsa = md_alg;
}







mbedtls_md_type_t mbedtls_ssl_md_alg_from_hash( unsigned char hash )
{
    switch( hash )
    {

        case 1:
            return( MBEDTLS_MD_MD5 );


        case 2:
            return( MBEDTLS_MD_SHA1 );


        case 3:
            return( MBEDTLS_MD_SHA224 );
        case 4:
            return( MBEDTLS_MD_SHA256 );
# 8126 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        case 7:
            return( MBEDTLS_MD_SM3 );

        default:
            return( MBEDTLS_MD_NONE );
    }
}




unsigned char mbedtls_ssl_hash_from_md_alg( int md )
{
    switch( md )
    {

        case MBEDTLS_MD_MD5:
            return( 1 );


        case MBEDTLS_MD_SHA1:
            return( 2 );


        case MBEDTLS_MD_SHA224:
            return( 3 );
        case MBEDTLS_MD_SHA256:
            return( 4 );







        default:
            return( 0 );
    }
}






int mbedtls_ssl_check_curve( const mbedtls_ssl_context *ssl, mbedtls_ecp_group_id grp_id )
{
    const mbedtls_ecp_group_id *gid;

    if( ssl->conf->curve_list == ((void *)0) )
        return( -1 );

    for( gid = ssl->conf->curve_list; *gid != MBEDTLS_ECP_DP_NONE; gid++ )
        if( *gid == grp_id )
            return( 0 );

    return( -1 );
}







int mbedtls_ssl_check_sig_hash( const mbedtls_ssl_context *ssl,
                                mbedtls_md_type_t md )
{
    const int *cur;

    if( ssl->conf->sig_hashes == ((void *)0) )
        return( -1 );

    for( cur = ssl->conf->sig_hashes; *cur != MBEDTLS_MD_NONE; cur++ )
        if( *cur == (int) md )
            return( 0 );

    return( -1 );
}



int mbedtls_ssl_check_cert_usage( const mbedtls_x509_crt *cert,
                          const mbedtls_ssl_ciphersuite_t *ciphersuite,
                          int cert_endpoint,
                          uint32_t *flags )
{
    int ret = 0;

    int usage = 0;


    const char *ext_oid;
    size_t ext_len;
# 8230 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
    if( cert_endpoint == 1 )
    {

        switch( ciphersuite->key_exchange )
        {
            case MBEDTLS_KEY_EXCHANGE_RSA:
            case MBEDTLS_KEY_EXCHANGE_RSA_PSK:

                usage = (0x20);
                break;

            case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
                usage = (0x80);
                break;

            case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
                usage = (0x08);
                break;


            case MBEDTLS_KEY_EXCHANGE_NONE:
            case MBEDTLS_KEY_EXCHANGE_PSK:
            case MBEDTLS_KEY_EXCHANGE_DHE_PSK:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
            case MBEDTLS_KEY_EXCHANGE_ECJPAKE:
            case MBEDTLS_KEY_EXCHANGE_ECC:
                usage = 0;
        }
    }
    else
    {

        usage = (0x80);
    }

    if( mbedtls_x509_crt_check_key_usage( cert, usage ) != 0 )
    {
        *flags |= 0x0800;
        ret = -1;
    }





    if( cert_endpoint == 1 )
    {
        ext_oid = "\x2b" "\x06" "\x01\x05\x05\x07" "\x03" "\x01";
        ext_len = (sizeof("\x2b" "\x06" "\x01\x05\x05\x07" "\x03" "\x01") - 1);
    }
    else
    {
        ext_oid = "\x2b" "\x06" "\x01\x05\x05\x07" "\x03" "\x02";
        ext_len = (sizeof("\x2b" "\x06" "\x01\x05\x05\x07" "\x03" "\x02") - 1);
    }

    if( mbedtls_x509_crt_check_extended_key_usage( cert, ext_oid, ext_len ) != 0 )
    {
        *flags |= 0x1000;
        ret = -1;
    }


    return( ret );
}
# 8309 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
void mbedtls_ssl_write_version( int major, int minor, int transport,
                        unsigned char ver[2] )
{

    if( transport == 1 )
    {
        if( minor == 2 )
            --minor;

        ver[0] = (unsigned char)( 255 - ( major - 2 ) );
        ver[1] = (unsigned char)( 255 - ( minor - 1 ) );
    }
    else



    {
        ver[0] = (unsigned char) major;
        ver[1] = (unsigned char) minor;
    }
}

void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] )
{

    if( transport == 1 )
    {
        *major = 255 - ver[0] + 2;
        *minor = 255 - ver[1] + 1;

        if( *minor == 1 )
            ++*minor;
    }
    else



    {
        *major = ver[0];
        *minor = ver[1];
    }
}

int mbedtls_ssl_set_calc_verify_md( mbedtls_ssl_context *ssl, int md )
{

    if( ssl->minor_ver != 3 && ssl->protocol != 0x0 )
        return -0x6600;

    switch( md )
    {


        case 1:
            return -0x6600;


        case 2:
            ssl->handshake->calc_verify = ssl_calc_verify_tls;
            break;
# 8378 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c"
        case 4:
            ssl->handshake->calc_verify = ssl_calc_verify_tls_sha256;
            break;



        case 7:
            ssl->handshake->calc_verify = ssl_calc_verify_tls_sm3;
            break;


        default:
            return -0x6600;
    }

    return 0;






}
