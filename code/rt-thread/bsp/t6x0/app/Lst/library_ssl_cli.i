# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 25 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
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
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c" 2
# 38 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
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
# 39 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 1
# 40 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c" 2
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
# 41 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c" 2

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
# 43 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c" 2
# 52 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static void mbedtls_zeroize( void *v, size_t n ) {

    memset( v, 0, n);
}



static void ssl_write_hostname_ext( mbedtls_ssl_context *ssl,
                                    unsigned char *buf,
                                    size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;
    size_t hostname_len;

    *olen = 0;

    if( ssl->hostname == ((void *)0) )
        return;

    mbedtls_debug_print_msg( ssl, 3,
                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 72 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                   73
# 72 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "client hello, adding server name extension: %s", ssl->hostname )
                                    ;

    hostname_len = strlen( ssl->hostname );

    if( end < p || (size_t)( end - p ) < hostname_len + 9 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 79, "buffer too small" );
        return;
    }
# 101 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    *p++ = (unsigned char)( ( 0 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 0 ) & 0xFF );

    *p++ = (unsigned char)( ( (hostname_len + 5) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 5) ) & 0xFF );

    *p++ = (unsigned char)( ( (hostname_len + 3) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 3) ) & 0xFF );

    *p++ = (unsigned char)( ( 0 ) & 0xFF );
    *p++ = (unsigned char)( ( hostname_len >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( hostname_len ) & 0xFF );

    memcpy( p, ssl->hostname, hostname_len );

    *olen = hostname_len + 9;
}



static void ssl_write_renegotiation_ext( mbedtls_ssl_context *ssl,
                                         unsigned char *buf,
                                         size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    if( ssl->renego_status != 1 )
        return;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 133, "client hello, adding renegotiation extension" );

    if( end < p || (size_t)( end - p ) < 5 + ssl->verify_data_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 137, "buffer too small" );
        return;
    }




    *p++ = (unsigned char)( ( 0xFF01 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 0xFF01 ) & 0xFF );

    *p++ = 0x00;
    *p++ = ( ssl->verify_data_len + 1 ) & 0xFF;
    *p++ = ssl->verify_data_len & 0xFF;

    memcpy( p, ssl->own_verify_data, ssl->verify_data_len );

    *olen = 5 + ssl->verify_data_len;
}







static void ssl_write_signature_algorithms_ext( mbedtls_ssl_context *ssl,
                                                unsigned char *buf,
                                                size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;
    size_t sig_alg_len = 0;
    const int *md;

    unsigned char *sig_alg_list = buf + 6;


    *olen = 0;

    if( ssl->conf->max_minor_ver != 3 )
        return;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 179, "client hello, adding signature_algorithms extension" );

    for( md = ssl->conf->sig_hashes; *md != MBEDTLS_MD_NONE; md++ )
    {

        sig_alg_len += 2;


        sig_alg_len += 2;

    }

    if( end < p || (size_t)( end - p ) < sig_alg_len + 6 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 193, "buffer too small" );
        return;
    }




    sig_alg_len = 0;

    for( md = ssl->conf->sig_hashes; *md != MBEDTLS_MD_NONE; md++ )
    {

        sig_alg_list[sig_alg_len++] = mbedtls_ssl_hash_from_md_alg( *md );
        sig_alg_list[sig_alg_len++] = 3;


        sig_alg_list[sig_alg_len++] = mbedtls_ssl_hash_from_md_alg( *md );
        sig_alg_list[sig_alg_len++] = 1;

    }
# 231 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    *p++ = (unsigned char)( ( 13 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 13 ) & 0xFF );

    *p++ = (unsigned char)( ( ( sig_alg_len + 2 ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( sig_alg_len + 2 ) ) & 0xFF );

    *p++ = (unsigned char)( ( sig_alg_len >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( sig_alg_len ) & 0xFF );

    *olen = 6 + sig_alg_len;
}





static void ssl_write_supported_elliptic_curves_ext( mbedtls_ssl_context *ssl,
                                                     unsigned char *buf,
                                                     size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;
    unsigned char *elliptic_curve_list = p + 6;
    size_t elliptic_curve_len = 0;
    const mbedtls_ecp_curve_info *info;

    const mbedtls_ecp_group_id *grp_id;




    *olen = 0;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 264, "client hello, adding supported_elliptic_curves extension" );


    for( grp_id = ssl->conf->curve_list; *grp_id != MBEDTLS_ECP_DP_NONE; grp_id++ )



    {

        info = mbedtls_ecp_curve_info_from_grp_id( *grp_id );

        if( info == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 277, "invalid curve in ssl configuration" );
            return;
        }

        elliptic_curve_len += 2;
    }

    if( end < p || (size_t)( end - p ) < 6 + elliptic_curve_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 286, "buffer too small" );
        return;
    }

    elliptic_curve_len = 0;


    for( grp_id = ssl->conf->curve_list; *grp_id != MBEDTLS_ECP_DP_NONE; grp_id++ )



    {

        info = mbedtls_ecp_curve_info_from_grp_id( *grp_id );

        elliptic_curve_list[elliptic_curve_len++] = info->tls_id >> 8;
        elliptic_curve_list[elliptic_curve_len++] = info->tls_id & 0xFF;
    }

    if( elliptic_curve_len == 0 )
        return;

    *p++ = (unsigned char)( ( 10 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 10 ) & 0xFF );

    *p++ = (unsigned char)( ( ( elliptic_curve_len + 2 ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len + 2 ) ) & 0xFF );

    *p++ = (unsigned char)( ( ( elliptic_curve_len ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len ) ) & 0xFF );

    *olen = 6 + elliptic_curve_len;
}

static void ssl_write_supported_point_formats_ext( mbedtls_ssl_context *ssl,
                                                   unsigned char *buf,
                                                   size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 329, "client hello, adding supported_point_formats extension" );

    if( end < p || (size_t)( end - p ) < 6 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 333, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 11 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 11 ) & 0xFF );

    *p++ = 0x00;
    *p++ = 2;

    *p++ = 1;
    *p++ = 0;

    *olen = 6;
}
# 430 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static void ssl_write_max_fragment_length_ext( mbedtls_ssl_context *ssl,
                                               unsigned char *buf,
                                               size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    if( ssl->conf->mfl_code == 0 ) {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 443, "client hello, adding max_fragment_length extension" );

    if( end < p || (size_t)( end - p ) < 5 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 447, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 1 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 1 ) & 0xFF );

    *p++ = 0x00;
    *p++ = 1;

    *p++ = ssl->conf->mfl_code;

    *olen = 5;
}



static void ssl_write_truncated_hmac_ext( mbedtls_ssl_context *ssl,
                                          unsigned char *buf, size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    if( ssl->conf->trunc_hmac == 0 )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 477, "client hello, adding truncated_hmac extension" );

    if( end < p || (size_t)( end - p ) < 4 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 481, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 4 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 4 ) & 0xFF );

    *p++ = 0x00;
    *p++ = 0x00;

    *olen = 4;
}



static void ssl_write_encrypt_then_mac_ext( mbedtls_ssl_context *ssl,
                                       unsigned char *buf, size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    if( ssl->conf->encrypt_then_mac == 0 ||
        ssl->conf->max_minor_ver == 0 )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3,
                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 510 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                      511
# 510 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "client hello, adding encrypt_then_mac " "extension" )
                                       ;

    if( end < p || (size_t)( end - p ) < 4 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 515, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 22 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 22 ) & 0xFF );

    *p++ = 0x00;
    *p++ = 0x00;

    *olen = 4;
}



static void ssl_write_extended_ms_ext( mbedtls_ssl_context *ssl,
                                       unsigned char *buf, size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;

    *olen = 0;

    if( ssl->conf->extended_ms == 0 ||
        ssl->conf->max_minor_ver == 0 )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3,
                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 544 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                      545
# 544 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "client hello, adding extended_master_secret " "extension" )
                                       ;

    if( end < p || (size_t)( end - p ) < 4 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 549, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 0x0017 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 0x0017 ) & 0xFF );

    *p++ = 0x00;
    *p++ = 0x00;

    *olen = 4;
}



static void ssl_write_session_ticket_ext( mbedtls_ssl_context *ssl,
                                          unsigned char *buf, size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;
    size_t tlen = ssl->session_negotiate->ticket_len;

    *olen = 0;

    if( ssl->conf->session_tickets == 0 )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 578, "client hello, adding session ticket extension" );

    if( end < p || (size_t)( end - p ) < 4 + tlen )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 582, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 35 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 35 ) & 0xFF );

    *p++ = (unsigned char)( ( tlen >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( tlen ) & 0xFF );

    *olen = 4;

    if( ssl->session_negotiate->ticket == ((void *)0) || tlen == 0 )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 599, "sending session ticket of length %d", tlen );

    memcpy( p, ssl->session_negotiate->ticket, tlen );

    *olen += tlen;
}



static void ssl_write_alpn_ext( mbedtls_ssl_context *ssl,
                                unsigned char *buf, size_t *olen )
{
    unsigned char *p = buf;
    const unsigned char *end = ssl->out_msg + 8192;
    size_t alpnlen = 0;
    const char **cur;

    *olen = 0;

    if( ssl->conf->alpn_list == ((void *)0) )
    {
        return;
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 623, "client hello, adding alpn extension" );

    for( cur = ssl->conf->alpn_list; *cur != ((void *)0); cur++ )
        alpnlen += (unsigned char)( strlen( *cur ) & 0xFF ) + 1;

    if( end < p || (size_t)( end - p ) < 6 + alpnlen )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 630, "buffer too small" );
        return;
    }

    *p++ = (unsigned char)( ( 16 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 16 ) & 0xFF );
# 646 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    p += 4;

    for( cur = ssl->conf->alpn_list; *cur != ((void *)0); cur++ )
    {
        *p = (unsigned char)( strlen( *cur ) & 0xFF );
        memcpy( p + 1, *cur, *p );
        p += 1 + *p;
    }

    *olen = p - buf;


    buf[4] = (unsigned char)( ( ( *olen - 6 ) >> 8 ) & 0xFF );
    buf[5] = (unsigned char)( ( ( *olen - 6 ) ) & 0xFF );


    buf[2] = (unsigned char)( ( ( *olen - 4 ) >> 8 ) & 0xFF );
    buf[3] = (unsigned char)( ( ( *olen - 4 ) ) & 0xFF );
}





static int ssl_generate_random( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *p = ssl->handshake->randbytes;

    mbedtls_time_t t;






    if( ssl->conf->transport == 1 &&
        ssl->handshake->verify_cookie != ((void *)0) )
    {
        return( 0 );
    }



    t = time( ((void *)0) );
    *p++ = (unsigned char)( t >> 24 );
    *p++ = (unsigned char)( t >> 16 );
    *p++ = (unsigned char)( t >> 8 );
    *p++ = (unsigned char)( t );

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 696, "client hello, current time: %lu", t );







    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p, 28 ) ) != 0 )
        return( ret );

    return( 0 );
}

static int ssl_write_client_hello( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t i, n, olen, ext_len = 0;
    unsigned char *buf;
    unsigned char *p, *q;
    unsigned char offer_compress;
    const int *ciphersuites;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 720, "=> write client hello" );

    if( ssl->conf->f_rng == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 724, "no RNG provided" );
        return( -0x7400 );
    }


    if( ssl->renego_status == 0 )

    {
        ssl->major_ver = ssl->conf->min_major_ver;
        ssl->minor_ver = ssl->conf->min_minor_ver;
    }

    if( ssl->conf->max_major_ver == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 738 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                                             739
# 738 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "configured max major version is invalid, " "consider using mbedtls_ssl_config_defaults()" )
                                                                              ;
        return( -0x7100 );
    }



    if( ssl->conf->max_major_ver == 1 &&
        ssl->conf->max_minor_ver == 1 )
    {
        ssl->protocol = 0;
    }
    else
    {
        ssl->protocol = 1;
    }
# 763 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    buf = ssl->out_msg;
    p = buf + 4;

    mbedtls_ssl_write_version( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );
    p += 2;

    mbedtls_debug_print_msg( ssl, 3,
                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 770 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                    771
# 770 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "client hello, max version: [%d:%d]", buf[4], buf[5] )
                                     ;

    if( ( ret = ssl_generate_random( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 775, "ssl_generate_random", ret );
        return( ret );
    }

    memcpy( p, ssl->handshake->randbytes, 32 );
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 780, "client hello, random bytes", p, 32 );
    p += 32;
# 795 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    n = ssl->session_negotiate->id_len;

    if( n < 16 || n > 32 ||

        ssl->renego_status != 0 ||

        ssl->handshake->resume == 0 )
    {
        n = 0;
    }







    if( ssl->renego_status == 0 )

    {
        if( ssl->session_negotiate->ticket != ((void *)0) &&
                ssl->session_negotiate->ticket_len != 0 )
        {
            ret = ssl->conf->f_rng( ssl->conf->p_rng, ssl->session_negotiate->id, 32 );

            if( ret != 0 )
                return( ret );

            ssl->session_negotiate->id_len = n = 32;
        }
    }


    *p++ = (unsigned char) n;

    for( i = 0; i < n; i++ )
        *p++ = ssl->session_negotiate->id[i];

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 833, "client hello, session id len.: %d", n );
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 834, "client hello, session id", buf + 39, n );





    if( ssl->conf->transport == 1 )
    {
        if( ssl->handshake->verify_cookie == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 844, "no verify cookie to send" );
            *p++ = 0;
        }
        else
        {
            mbedtls_debug_print_buf( ssl, 3,

                                                                "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 849 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            ,

                                                                851
# 849 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            , "client hello, cookie", ssl->handshake->verify_cookie, ssl->handshake->verify_cookie_len )

                                                                 ;

            *p++ = ssl->handshake->verify_cookie_len;
            memcpy( p, ssl->handshake->verify_cookie,
                       ssl->handshake->verify_cookie_len );
            p += ssl->handshake->verify_cookie_len;
        }
    }





    ciphersuites = ssl->conf->ciphersuite_list[ssl->minor_ver];


    n = 0;
    q = p;
    p += 2;

    for( i = 0; ciphersuites[i] != 0; i++ )
    {
        ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( ciphersuites[i] );

        if( ciphersuite_info == ((void *)0) )
            continue;

        if( ciphersuite_info->min_minor_ver > ssl->conf->max_minor_ver ||
            ciphersuite_info->max_minor_ver < ssl->conf->min_minor_ver )
            continue;


        if( ssl->conf->transport == 1 &&
            ( ciphersuite_info->flags & 0x04 ) )
            continue;
# 900 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        mbedtls_debug_print_msg( ssl, 3,
                                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 900 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                      901
# 900 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "client hello, add ciphersuite: %04x", ciphersuites[i] )
                                                       ;

        n++;
        *p++ = (unsigned char)( ciphersuites[i] >> 8 );
        *p++ = (unsigned char)( ciphersuites[i] );
    }





    if( ssl->renego_status == 0 )

    {
        *p++ = (unsigned char)( 0xFF >> 8 );
        *p++ = (unsigned char)( 0xFF );
        n++;
    }



    if( ssl->conf->fallback == 1 )
    {
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 924, "adding FALLBACK_SCSV" );
        *p++ = (unsigned char)( 0x5600 >> 8 );
        *p++ = (unsigned char)( 0x5600 );
        n++;
    }


    *q++ = (unsigned char)( n >> 7 );
    *q++ = (unsigned char)( n << 1 );

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 934, "client hello, got %d ciphersuites", n );




    offer_compress = 0;
# 949 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( ssl->conf->transport == 1 )
        offer_compress = 0;


    if( offer_compress )
    {
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 955, "client hello, compress len.: %d", 2 );
        mbedtls_debug_print_msg( ssl, 3,
                                                                                      "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 956 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                                                      957
# 956 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "client hello, compress alg.: %d %d", 1, 0 )
                                                                                       ;

        *p++ = 2;
        *p++ = 1;
        *p++ = 0;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 965, "client hello, compress len.: %d", 1 );
        mbedtls_debug_print_msg( ssl, 3,
                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 966 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                        967
# 966 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "client hello, compress alg.: %d", 0 )
                                                         ;

        *p++ = 1;
        *p++ = 0;
    }




    if( ssl->protocol != 0 )
    {



    ssl_write_hostname_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_renegotiation_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;




    ssl_write_signature_algorithms_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;




    ssl_write_supported_elliptic_curves_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;

    ssl_write_supported_point_formats_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;
# 1011 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ssl_write_max_fragment_length_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_truncated_hmac_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_encrypt_then_mac_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_extended_ms_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_alpn_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    ssl_write_session_ticket_ext( ssl, p + 2 + ext_len, &olen );
    ext_len += olen;



    }


    ((void) olen);

    mbedtls_debug_print_msg( ssl, 3,
                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1046 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                             1047
# 1046 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "client hello, total extension length: %d", ext_len )
                              ;

    if( ext_len > 0 )
    {
        *p++ = (unsigned char)( ( ext_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ext_len ) & 0xFF );
        p += ext_len;
    }

    ssl->out_msglen = p - buf;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 1;

    ssl->state++;


    if( ssl->conf->transport == 1 )
        mbedtls_ssl_send_flight_completed( ssl );


    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1069, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1073, "<= write client hello" );

    return( 0 );
}

static int ssl_parse_renegotiation_info( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{

    if( ssl->renego_status != 0 )
    {

        if( len != 1 + ssl->verify_data_len * 2 ||
            buf[0] != ssl->verify_data_len * 2 ||
            mbedtls_ssl_safer_memcmp( buf + 1,
                          ssl->own_verify_data, ssl->verify_data_len ) != 0 ||
            mbedtls_ssl_safer_memcmp( buf + 1 + ssl->verify_data_len,
                          ssl->peer_verify_data, ssl->verify_data_len ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1093, "non-matching renegotiation info" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            40 );
            return( -0x7980 );
        }
    }
    else

    {
        if( len != 1 || buf[0] != 0x00 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1104, "non-zero length renegotiation info" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            40 );
            return( -0x7980 );
        }

        ssl->secure_renegotiation = 1;
    }

    return( 0 );
}


static int ssl_parse_max_fragment_length_ext( mbedtls_ssl_context *ssl,
                                              const unsigned char *buf,
                                              size_t len )
{




    if( ssl->conf->mfl_code == 0 ||
        len != 1 ||
        buf[0] != ssl->conf->mfl_code )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1129, "non-matching max fragment length extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    return( 0 );
}



static int ssl_parse_truncated_hmac_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->trunc_hmac == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1147, "non-matching truncated HMAC extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    ((void) buf);

    ssl->session_negotiate->trunc_hmac = 1;

    return( 0 );
}



static int ssl_parse_encrypt_then_mac_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->encrypt_then_mac == 0 ||
        ssl->minor_ver == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1170, "non-matching encrypt-then-MAC extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    ((void) buf);

    ssl->session_negotiate->encrypt_then_mac = 1;

    return( 0 );
}



static int ssl_parse_extended_ms_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->extended_ms == 0 ||
        ssl->minor_ver == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1193, "non-matching extended master secret extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    ((void) buf);

    ssl->handshake->extended_ms = 1;

    return( 0 );
}



static int ssl_parse_session_ticket_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->session_tickets == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1215, "non-matching session ticket extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    ((void) buf);

    ssl->handshake->new_session_ticket = 1;

    return( 0 );
}




static int ssl_parse_supported_point_formats_ext( mbedtls_ssl_context *ssl,
                                                  const unsigned char *buf,
                                                  size_t len )
{
    size_t list_size;
    const unsigned char *p;

    list_size = buf[0];
    if( list_size + 1 != len )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1241, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }

    p = buf + 1;
    while( list_size > 0 )
    {
        if( p[0] == 0 ||
            p[0] == 1 )
        {

            ssl->handshake->ecdh_ctx.point_format = p[0];




            mbedtls_debug_print_msg( ssl, 4, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1259, "point format selected: %d", p[0] );
            return( 0 );
        }

        list_size--;
        p++;
    }

    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1267, "no point format in common" );
    mbedtls_ssl_send_alert_message( ssl, 2,
                                    40 );
    return( -0x7980 );
}
# 1308 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_parse_alpn_ext( mbedtls_ssl_context *ssl,
                               const unsigned char *buf, size_t len )
{
    size_t list_len, name_len;
    const char **p;


    if( ssl->conf->alpn_list == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1317, "non-matching ALPN extension" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }
# 1334 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( len < 4 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }

    list_len = ( buf[0] << 8 ) | buf[1];
    if( list_len != len - 2 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }

    name_len = buf[2];
    if( name_len != list_len - 1 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }


    for( p = ssl->conf->alpn_list; *p != ((void *)0); p++ )
    {
        if( name_len == strlen( *p ) &&
            memcmp( buf + 3, *p, name_len ) == 0 )
        {
            ssl->alpn_chosen = *p;
            return( 0 );
        }
    }

    mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1368, "ALPN extension: no matching protocol" );
    mbedtls_ssl_send_alert_message( ssl, 2,
                                    40 );
    return( -0x7980 );
}






static int ssl_parse_hello_verify_request( mbedtls_ssl_context *ssl )
{
    const unsigned char *p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    int major_ver, minor_ver;
    unsigned char cookie_len;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1385, "=> parse hello verify request" );







    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1393, "server version", p, 2 );
    mbedtls_ssl_read_version( &major_ver, &minor_ver, ssl->conf->transport, p );
    p += 2;





    if( major_ver < 3 ||
        minor_ver < 2 ||
        major_ver > ssl->conf->max_major_ver ||
        minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1406, "bad server version" );

        mbedtls_ssl_send_alert_message( ssl, 2,
                                     70 );

        return( -0x6E80 );
    }

    cookie_len = *p++;
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1415, "cookie", p, cookie_len );

    if( ( ssl->in_msg + ssl->in_msglen ) - p < cookie_len )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                     "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1419 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                                     1420
# 1419 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "cookie length does not match incoming message size" )
                                                                      ;
        mbedtls_ssl_send_alert_message( ssl, 2,
                                    50 );
        return( -0x7980 );
    }

    free( ssl->handshake->verify_cookie );

    ssl->handshake->verify_cookie = calloc( 1, cookie_len );
    if( ssl->handshake->verify_cookie == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1431, "alloc failed (%d bytes)", cookie_len );
        return( -0x7F00 );
    }

    memcpy( ssl->handshake->verify_cookie, p, cookie_len );
    ssl->handshake->verify_cookie_len = cookie_len;


    ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
    mbedtls_ssl_reset_checksum( ssl );

    mbedtls_ssl_recv_flight_completed( ssl );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1444, "<= parse hello verify request" );

    return( 0 );
}


static int ssl_parse_server_hello( mbedtls_ssl_context *ssl )
{
    int ret, i;
    size_t n;
    size_t ext_len;
    unsigned char *buf, *ext;
    unsigned char comp;




    int renegotiation_info_seen = 0;

    int handshake_failure = 0;
    const mbedtls_ssl_ciphersuite_t *suite_info;

    uint32_t t;


    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1469, "=> parse server hello" );

    buf = ssl->in_msg;

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {

        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1476, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {

        if( ssl->renego_status == 1 )
        {
            ssl->renego_records_seen++;

            if( ssl->conf->renego_max_records >= 0 &&
                ssl->renego_records_seen > ssl->conf->renego_max_records )
            {
                mbedtls_debug_print_msg( ssl, 1,
                                                                  "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1490 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
                ,
                                                                  1491
# 1490 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
                , "renegotiation requested, " "but not honored by server" )
                                                                   ;
                return( -0x7700 );
            }

            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1495, "non-handshake message during renego" );

            ssl->keep_current_message = 1;
            return( -0x6B00 );
        }


        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1502, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }


    if( ssl->conf->transport == 1 )
    {
        if( buf[0] == 3 )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1513, "received hello verify request" );
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1514, "<= parse server hello" );
            return( ssl_parse_hello_verify_request( ssl ) );
        }
        else
        {

            free( ssl->handshake->verify_cookie );
            ssl->handshake->verify_cookie = ((void *)0);
            ssl->handshake->verify_cookie_len = 0;
        }
    }


    if( ssl->in_hslen < 38 + mbedtls_ssl_hs_hdr_len( ssl ) ||
        buf[0] != 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1530, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
# 1547 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    buf += mbedtls_ssl_hs_hdr_len( ssl );

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1549, "server hello, version", buf + 0, 2 );
    mbedtls_ssl_read_version( &ssl->major_ver, &ssl->minor_ver,
                      ssl->conf->transport, buf + 0 );

    if( ssl->major_ver < ssl->conf->min_major_ver ||
        ssl->minor_ver < ssl->conf->min_minor_ver ||
        ssl->major_ver > ssl->conf->max_major_ver ||
        ssl->minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1,



                                                                                 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1558 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,



                                                                                 1562
# 1558 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "server version out of bounds - " " min: [%d:%d], server: [%d:%d], max: [%d:%d]", ssl->conf->min_major_ver, ssl->conf->min_minor_ver, ssl->major_ver, ssl->minor_ver, ssl->conf->max_major_ver, ssl->conf->max_minor_ver )



                                                                                  ;

        mbedtls_ssl_send_alert_message( ssl, 2,
                                     70 );

        return( -0x6E80 );
    }


    t = ( (uint32_t) buf[2] << 24 )
      | ( (uint32_t) buf[3] << 16 )
      | ( (uint32_t) buf[4] << 8 )
      | ( (uint32_t) buf[5] );
    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1575, "server hello, current time: %lu", t );


    memcpy( ssl->handshake->randbytes + 32, buf + 2, 32 );

    n = buf[34];

    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1582, "server hello, random bytes", buf + 2, 32 );

    if( n > 32 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1586, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }

    if( ssl->in_hslen > mbedtls_ssl_hs_hdr_len( ssl ) + 39 + n )
    {
        ext_len = ( ( buf[38 + n] << 8 )
                  | ( buf[39 + n] ) );

        if( ( ext_len > 0 && ext_len < 4 ) ||
            ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + 40 + n + ext_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1600, "bad server hello message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7980 );
        }
    }
    else if( ssl->in_hslen == mbedtls_ssl_hs_hdr_len( ssl ) + 38 + n )
    {
        ext_len = 0;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1612, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }


    i = ( buf[35 + n] << 8 ) | buf[36 + n];




    comp = buf[37 + n];
# 1638 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( comp != 0 )

    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1641, "server hello, bad compression: %d", comp );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        47 );
        return( -0x7080 );
    }




    ssl->transform_negotiate->ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( i );

    if( ssl->transform_negotiate->ciphersuite_info == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1654, "ciphersuite info for %04x not found", i );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
        return( -0x7100 );
    }

    mbedtls_ssl_optimize_checksum( ssl, ssl->transform_negotiate->ciphersuite_info );

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1662, "server hello, session id len.: %d", n );
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1663, "server hello, session id", buf + 35, n );





     if(ssl->protocol != 0)
     {

         if( ssl->handshake->resume == 0 || n == 0 ||

        ssl->renego_status != 0 ||

            ssl->session_negotiate->ciphersuite != i ||
            ssl->session_negotiate->compression != comp ||
            ssl->session_negotiate->id_len != n ||
            memcmp( ssl->session_negotiate->id, buf + 35, n ) != 0 )
         {
             ssl->state++;
             ssl->handshake->resume = 0;

             ssl->session_negotiate->start = time( ((void *)0) );

             ssl->session_negotiate->ciphersuite = i;
             ssl->session_negotiate->compression = comp;
             ssl->session_negotiate->id_len = n;
             memcpy( ssl->session_negotiate->id, buf + 35, n );
         }
         else
         {
             ssl->state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;

             if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
             {
                 mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1697, "mbedtls_ssl_derive_keys", ret );
                 mbedtls_ssl_send_alert_message( ssl, 2,
                                                 80 );
                 return( ret );
             }
         }

     }
     else
     {
            ssl->state++;
            ssl->handshake->resume = 0;

            ssl->session_negotiate->start = time( ((void *)0) );

            ssl->session_negotiate->ciphersuite = i;
            ssl->session_negotiate->compression = comp;
            ssl->session_negotiate->id_len = n;
            memcpy( ssl->session_negotiate->id, buf + 35, n );
     }

    mbedtls_debug_print_msg( ssl, 3,
                                                         "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1718 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                                         1719
# 1718 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "%s session has been resumed", ssl->handshake->resume ? "a" : "no" )
                                                          ;

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1721, "server hello, chosen ciphersuite: %04x", i );
    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1722, "server hello, compress alg.: %d", buf[37 + n] );

    suite_info = mbedtls_ssl_ciphersuite_from_id( ssl->session_negotiate->ciphersuite );

    if( suite_info == ((void *)0)




        )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1733, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        47 );
        return( -0x7980 );
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1739, "server hello, chosen ciphersuite: %s", suite_info->name );

    i = 0;
    while( 1 )
    {
        if( ssl->conf->ciphersuite_list[ssl->minor_ver][i] == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1746, "bad server hello message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            47 );
            return( -0x7980 );
        }

        if( ssl->conf->ciphersuite_list[ssl->minor_ver][i++] ==
            ssl->session_negotiate->ciphersuite )
        {
            break;
        }
    }

    if( comp != 0



      )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1765, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        47 );
        return( -0x7980 );
    }
    ssl->session_negotiate->compression = comp;

    ext = buf + 40 + n;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1774, "server hello, total extension length: %d", ext_len );

    while( ext_len )
    {
        unsigned int ext_id = ( ( ext[0] << 8 )
                                | ( ext[1] ) );
        unsigned int ext_size = ( ( ext[2] << 8 )
                                | ( ext[3] ) );

        if( ext_size + 4 > ext_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1785, "bad server hello message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7980 );
        }

        switch( ext_id )
        {
        case 0xFF01:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1794, "found renegotiation extension" );

            renegotiation_info_seen = 1;


            if( ( ret = ssl_parse_renegotiation_info( ssl, ext + 4,
                                                      ext_size ) ) != 0 )
                return( ret );

            break;


        case 1:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1807, "found max_fragment_length extension" );

            if( ( ret = ssl_parse_max_fragment_length_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;



        case 4:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1820, "found truncated_hmac extension" );

            if( ( ret = ssl_parse_truncated_hmac_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;



        case 22:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1833, "found encrypt_then_mac extension" );

            if( ( ret = ssl_parse_encrypt_then_mac_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;



        case 0x0017:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1846, "found extended_master_secret extension" );

            if( ( ret = ssl_parse_extended_ms_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;



        case 35:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1859, "found session_ticket extension" );

            if( ( ret = ssl_parse_session_ticket_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;




        case 11:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1873, "found supported_point_formats extension" );

            if( ( ret = ssl_parse_supported_point_formats_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }

            break;
# 1899 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        case 16:
            mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1900, "found alpn extension" );

            if( ( ret = ssl_parse_alpn_ext( ssl, ext + 4, ext_size ) ) != 0 )
                return( ret );

            break;


        default:
            mbedtls_debug_print_msg( ssl, 3,
                                    "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 1909 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            ,
                                    1910
# 1909 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            , "unknown extension found: %d (ignoring)", ext_id )
                                     ;
        }

        ext_len -= 4 + ext_size;
        ext += 4 + ext_size;

        if( ext_len > 0 && ext_len < 4 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1918, "bad server hello message" );
            return( -0x7980 );
        }
    }




    if( ssl->secure_renegotiation == 0 &&
        ssl->conf->allow_legacy_renegotiation == 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1929, "legacy renegotiation, breaking off handshake" );
        handshake_failure = 1;
    }

    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 1 &&
             renegotiation_info_seen == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1937, "renegotiation_info extension missing (secure)" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             ssl->conf->allow_legacy_renegotiation == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1944, "legacy renegotiation not allowed" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             renegotiation_info_seen == 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1951, "renegotiation_info extension present (legacy)" );
        handshake_failure = 1;
    }


    if( handshake_failure == 1 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7980 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 1963, "<= parse server hello" );

    return( 0 );
}
# 2012 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_check_server_ecdh_params( const mbedtls_ssl_context *ssl )
{
    const mbedtls_ecp_curve_info *curve_info;

    curve_info = mbedtls_ecp_curve_info_from_grp_id( ssl->handshake->ecdh_ctx.grp.id );
    if( curve_info == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2019, "should never happen" );
        return( -0x6C00 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2023, "ECDH curve: %s", curve_info->name );


    if( mbedtls_ssl_check_curve( ssl, ssl->handshake->ecdh_ctx.grp.id ) != 0 )




        return( -1 );

    mbedtls_debug_print_ecp( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2033, "ECDH: Qp", &ssl->handshake->ecdh_ctx.Qp );

    return( 0 );
}
# 2046 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_parse_server_ecdh_params( mbedtls_ssl_context *ssl,
                                         unsigned char **p,
                                         unsigned char *end )
{
    int ret = -0x7080;
# 2060 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( ( ret = mbedtls_ecdh_read_params( &ssl->handshake->ecdh_ctx,
                                  (const unsigned char **) p, end ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2063, ( "mbedtls_ecdh_read_params" ), ret );
        return( ret );
    }

    if( ssl_check_server_ecdh_params( ssl ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2069, "bad server key exchange message (ECDHE curve)" );
        return( -0x7B00 );
    }

    return( ret );
}





static int ssl_parse_server_psk_hint( mbedtls_ssl_context *ssl,
                                      unsigned char **p,
                                      unsigned char *end )
{
    int ret = -0x7080;
    size_t len;
    ((void) ssl);






    len = (*p)[0] << 8 | (*p)[1];
    *p += 2;

    if( (*p) + len > end )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                                   "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2098 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                                   2099
# 2098 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "bad server key exchange message " "(psk_identity_hint length)" )
                                                                    ;
        return( -0x7B00 );
    }






    *p += len;
    ret = 0;

    return( ret );
}







static int ssl_write_encrypted_pms( mbedtls_ssl_context *ssl,
                                    size_t offset, size_t *olen,
                                    size_t pms_offset )
{
    int ret;
    size_t len_bytes = ssl->minor_ver == 0 ? 0 : 2;
    unsigned char *p = ssl->handshake->premaster + pms_offset;

    if( offset + len_bytes > 8192 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2130, "buffer too small for encrypted pms" );
        return( -0x6A00 );
    }
# 2141 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    mbedtls_ssl_write_version( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );

    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p + 2, 46 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2146, "f_rng", ret );
        return( ret );
    }

    ssl->handshake->pmslen = 48;

    if( ssl->session_negotiate->peer_cert == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2154, "certificate required" );
        return( -0x7700 );
    }




    if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk,
                MBEDTLS_PK_RSA ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2164, "certificate key type mismatch" );
        return( -0x6D00 );
    }

    if( ( ret = mbedtls_pk_encrypt( &ssl->session_negotiate->peer_cert->pk,
                            p, ssl->handshake->pmslen,
                            ssl->out_msg + offset + len_bytes, olen,
                            8192 - offset - len_bytes,
                            ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2174, "mbedtls_rsa_pkcs1_encrypt", ret );
        return( ret );
    }



    if( len_bytes == 2 )
    {
        ssl->out_msg[offset+0] = (unsigned char)( *olen >> 8 );
        ssl->out_msg[offset+1] = (unsigned char)( *olen );
        *olen += 2;
    }


    return( 0 );
}
# 2198 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int gmssl_write_encrypted_pms( mbedtls_ssl_context *ssl,
                                    size_t offset, size_t *olen,
                                    size_t pms_offset )
{
    int ret;
    size_t len_bytes = ssl->minor_ver == 0 ? 0 : 2;
    unsigned char *p = ssl->handshake->premaster + pms_offset;

    if( offset + len_bytes > 8192 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2208, "buffer too small for encrypted pms" );
        return( -0x6A00 );
    }
# 2219 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    mbedtls_ssl_write_version( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );

    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p + 2, 46 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2224, "f_rng", ret );
        return( ret );
    }

    ssl->handshake->pmslen = 48;

    if( ssl->session_negotiate->peer_cert == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2232, "certificate required" );
        return( -0x7700 );
    }




    if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk,
                MBEDTLS_PK_EC ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2242, "certificate key type mismatch" );
        return( -0x6D00 );
    }

    if( ( ret = mbedtls_pk_encrypt( &ssl->session_negotiate->peer_cert->next->pk,
                            p, ssl->handshake->pmslen,
                            ssl->out_msg + offset + len_bytes, olen,
                            8192 - offset - len_bytes,
                            ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2252, "mbedtls_rsa_pkcs1_encrypt", ret );
        return( ret );
    }



    if( len_bytes == 2 )
    {
        ssl->out_msg[offset+0] = (unsigned char)( *olen >> 8 );
        ssl->out_msg[offset+1] = (unsigned char)( *olen );
        *olen += 2;
    }


    return( 0 );
}







static int ssl_parse_signature_algorithm( mbedtls_ssl_context *ssl,
                                          unsigned char **p,
                                          unsigned char *end,
                                          mbedtls_md_type_t *md_alg,
                                          mbedtls_pk_type_t *pk_alg )
{
    ((void) ssl);
    *md_alg = MBEDTLS_MD_NONE;
    *pk_alg = MBEDTLS_PK_NONE;


    if( ssl->minor_ver != 3 )
    {
        return( 0 );
    }

    if( (*p) + 2 > end )
        return( -0x7B00 );




    if( ( *md_alg = mbedtls_ssl_md_alg_from_hash( (*p)[0] ) ) == MBEDTLS_MD_NONE )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                          "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2299 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                          2300
# 2299 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "Server used unsupported " "HashAlgorithm %d", *(p)[0] )
                                                           ;
        return( -0x7B00 );
    }




    if( ( *pk_alg = mbedtls_ssl_pk_alg_from_sig( (*p)[1] ) ) == MBEDTLS_PK_NONE )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                                               "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2309 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                               2310
# 2309 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "server used unsupported " "SignatureAlgorithm %d", (*p)[1] )
                                                                ;
        return( -0x7B00 );
    }




    if( mbedtls_ssl_check_sig_hash( ssl, *md_alg ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1,
                                              "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2319 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                              2320
# 2319 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "server used HashAlgorithm %d that was not offered", *(p)[0] )
                                               ;
        return( -0x7B00 );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2324, "Server used SignatureAlgorithm %d", (*p)[1] );
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2325, "Server used HashAlgorithm %d", (*p)[0] );
    *p += 2;

    return( 0 );
}







static int ssl_get_ecdh_params_from_cert( mbedtls_ssl_context *ssl )
{
    int ret;
    const mbedtls_ecp_keypair *peer_key;

    if( ssl->session_negotiate->peer_cert == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2344, "certificate required" );
        return( -0x7700 );
    }

    if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk,
                     MBEDTLS_PK_ECKEY ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2351, "server key not ECDH capable" );
        return( -0x6D00 );
    }

    peer_key = mbedtls_pk_ec( ssl->session_negotiate->peer_cert->pk );

    if( ( ret = mbedtls_ecdh_get_params( &ssl->handshake->ecdh_ctx, peer_key,
                                 MBEDTLS_ECDH_THEIRS ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2360, ( "mbedtls_ecdh_get_params" ), ret );
        return( ret );
    }

    if( ssl_check_server_ecdh_params( ssl ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2366, "bad server certificate (ECDH curve)" );
        return( -0x7A00 );
    }

    return( ret );
}



static int ssl_parse_server_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;
    unsigned char *p, *end;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2382, "=> parse server key exchange" );


    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2387, "<= skip parse server key exchange" );
        ssl->state++;
        return( 0 );
    }
    ((void) p);
    ((void) end);




    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA )
    {
        if( ( ret = ssl_get_ecdh_params_from_cert( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2402, "ssl_get_ecdh_params_from_cert", ret );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            40 );
            return( ret );
        }

        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2408, "<= skip parse server key exchange" );
        ssl->state++;
        return( 0 );
    }
    ((void) p);
    ((void) end);



    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2419, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2425, "bad server key exchange message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }





    if( ssl->in_msg[0] != 12 )
    {
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
            ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        {


            ssl->keep_current_message = 1;
            goto exit;
        }

        mbedtls_debug_print_msg( ssl, 1,
                                                       "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2446 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                       2447
# 2446 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "server key exchange message must " "not be skipped" )
                                                        ;
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );

        return( -0x7700 );
    }

    p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    end = ssl->in_msg + ssl->in_hslen;
    mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2456, "server key exchange", p, end - p );


    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
    {
        if( ssl_parse_server_psk_hint( ssl, &p, end ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2466, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            47 );
            return( -0x7B00 );
        }
    }




    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        ;
    else
# 2501 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA )
    {
        if( ssl_parse_server_ecdh_params( ssl, &p, end ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2507, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            47 );
            return( -0x7B00 );
        }
    }
    else
# 2532 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    {

        if(ciphersuite_info->key_exchange != MBEDTLS_KEY_EXCHANGE_ECC){

            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2536, "should never happen" );
            return( -0x6C00 );

        }

    }


    if( mbedtls_ssl_ciphersuite_uses_server_signature( ciphersuite_info ) )
    {
        size_t sig_len, hashlen;
        unsigned char hash[64];
        mbedtls_md_type_t md_alg = MBEDTLS_MD_NONE;
        mbedtls_pk_type_t pk_alg = MBEDTLS_PK_NONE;
        unsigned char *params = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
        size_t params_len = p - params;





        if( ssl->minor_ver == 3 )
        {
            if( ssl_parse_signature_algorithm( ssl, &p, end,
                                               &md_alg, &pk_alg ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2562, "bad server key exchange message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                47 );
                return( -0x7B00 );
            }

            if( pk_alg != mbedtls_ssl_get_ciphersuite_sig_pk_alg( ciphersuite_info ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2570, "bad server key exchange message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                47 );
                return( -0x7B00 );
            }
        }
        else



        if( ssl->minor_ver < 3 )
        {
            pk_alg = mbedtls_ssl_get_ciphersuite_sig_pk_alg( ciphersuite_info );


            if( pk_alg == MBEDTLS_PK_ECDSA && md_alg == MBEDTLS_MD_NONE )
                md_alg = MBEDTLS_MD_SHA1;


            if( pk_alg == MBEDTLS_PK_EC )
                md_alg = MBEDTLS_MD_SM3;

            if( ssl->protocol == 0 )
            {
                mbedtls_x509_crt *cur = ssl->session_negotiate->peer_cert;

                params = ((void *)0);
                params_len = 0;
                while( cur )
                {
                    if( ( cur->key_usage&0x20 ) == 0x20 )
                    {
                        params = cur->raw.p;
                        params_len = cur->raw.len;
                        break;
                    }
                    cur = cur->next;
                }
            }

        }
        else

        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2614, "should never happen" );
            return( -0x6C00 );
        }




        sig_len = ( p[0] << 8 ) | p[1];
        p += 2;

        if( end != p + sig_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2626, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7B00 );
        }

        mbedtls_debug_print_buf( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2632, "signature", p, sig_len );






        if( md_alg == MBEDTLS_MD_NONE )
        {
            mbedtls_md5_context mbedtls_md5;
            mbedtls_sha1_context mbedtls_sha1;

            mbedtls_md5_init( &mbedtls_md5 );
            mbedtls_sha1_init( &mbedtls_sha1 );

            hashlen = 36;
# 2662 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            mbedtls_md5_starts( &mbedtls_md5 );
            mbedtls_md5_update( &mbedtls_md5, ssl->handshake->randbytes, 64 );
            mbedtls_md5_update( &mbedtls_md5, params, params_len );
            mbedtls_md5_finish( &mbedtls_md5, hash );

            mbedtls_sha1_starts( &mbedtls_sha1 );
            mbedtls_sha1_update( &mbedtls_sha1, ssl->handshake->randbytes, 64 );
            mbedtls_sha1_update( &mbedtls_sha1, params, params_len );
            mbedtls_sha1_finish( &mbedtls_sha1, hash + 16 );

            mbedtls_md5_free( &mbedtls_md5 );
            mbedtls_sha1_free( &mbedtls_sha1 );
        }
        else





        if( md_alg != MBEDTLS_MD_NONE )
        {
            mbedtls_md_context_t ctx;

            mbedtls_md_init( &ctx );


            hashlen = 0;
# 2697 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            if( ( ret = mbedtls_md_setup( &ctx,
                                     mbedtls_md_info_from_type( md_alg ), ((1 << 16)) ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2700, "mbedtls_md_setup", ret );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                80 );
                return( ret );
            }


            if(ssl->protocol == 0)
            {
                unsigned char len[3];
                if( ( ret = mbedtls_pk_z_get( &ssl->session_negotiate->peer_cert->pk, md_alg, hash, 32 ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2712, "mbedtls_pk_sign", ret );
                    return( ret );
                }
                mbedtls_md_starts( &ctx );
                mbedtls_md_update( &ctx, hash, 32 );
                mbedtls_md_update( &ctx, ssl->handshake->randbytes, 64 );
                len[0] = params_len>>16&0x00ff;
                len[1] = params_len>>8&0x00ff;
                len[2] = params_len&0x00ff;
                mbedtls_md_update( &ctx, len, 3 );
                hashlen = 32;
            }
            else
            {

                mbedtls_md_starts( &ctx );
                mbedtls_md_update( &ctx, ssl->handshake->randbytes, 64 );

            }

            mbedtls_md_update( &ctx, params, params_len );
            mbedtls_md_finish( &ctx, hash );
            mbedtls_md_free( &ctx );
        }
        else



        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2741, "should never happen" );
            return( -0x6C00 );
        }

        mbedtls_debug_print_buf( ssl, 3,
                                                                                          "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2745 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        ,
                                                                                          2746
# 2745 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        , "parameters hash", hash, hashlen != 0 ? hashlen : (unsigned int) ( mbedtls_md_get_size( mbedtls_md_info_from_type( md_alg ) ) ) )
                                                                                           ;

        if( ssl->session_negotiate->peer_cert == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2750, "certificate required" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            40 );
            return( -0x7700 );
        }




        if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk, pk_alg ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2761, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            40 );
            return( -0x6D00 );
        }

        if( ( ret = mbedtls_pk_verify( &ssl->session_negotiate->peer_cert->pk,
                               md_alg, hash, hashlen, p, sig_len ) ) != 0 )
        {
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            51 );
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2772, "mbedtls_pk_verify", ret );
            return( ret );
        }
    }


exit:
    ssl->state++;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2781, "<= parse server key exchange" );

    return( 0 );
}
# 2805 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_parse_certificate_request( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *buf;
    size_t n = 0;
    size_t cert_type_len = 0, dn_len = 0;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2814, "=> parse certificate request" );

    if( ! mbedtls_ssl_ciphersuite_cert_req_allowed( ciphersuite_info ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2818, "<= skip parse certificate request" );
        ssl->state++;
        return( 0 );
    }

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2825, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2831, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }

    ssl->state++;
    ssl->client_auth = ( ssl->in_msg[0] == 13 );

    mbedtls_debug_print_msg( ssl, 3,
                                                        "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2840 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    ,
                                                        2841
# 2840 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    , "got %s certificate request", ssl->client_auth ? "a" : "no" )
                                                         ;

    if( ssl->client_auth == 0 )
    {

        ssl->keep_current_message = 1;
        goto exit;
    }
# 2874 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    buf = ssl->in_msg;


    cert_type_len = buf[mbedtls_ssl_hs_hdr_len( ssl )];
    n = cert_type_len;

    if( ssl->in_hslen < mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2882, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A80 );
    }



    if( ssl->minor_ver == 3 )
    {
        size_t sig_alg_len = ( ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 1 + n] << 8 )
                             | ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n] ) );

        unsigned char* sig_alg = buf + mbedtls_ssl_hs_hdr_len( ssl ) + 3 + n;
        size_t i;

        for( i = 0; i < sig_alg_len; i += 2 )
        {
            mbedtls_debug_print_msg( ssl, 3,
                                                                             "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 2900 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            ,
                                                                             2901
# 2900 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            , "Supported Signature Algorithm found: %d" ",%d", sig_alg[i], sig_alg[i + 1] )
                                                                              ;
        }


        n += 2 + sig_alg_len;

        if( ssl->in_hslen < mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2909, "bad certificate request message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            50 );
            return( -0x7A80 );
        }
    }



    dn_len = ( ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 1 + n] << 8 )
             | ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n] ) );

    n += dn_len;
    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + 3 + n )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2924, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A80 );
    }

exit:
    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2931, "<= parse certificate request" );

    return( 0 );
}


static int ssl_parse_server_hello_done( mbedtls_ssl_context *ssl )
{
    int ret;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2941, "=> parse server hello done" );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2945, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2951, "bad server hello done message" );
        return( -0x7700 );
    }

    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) ||
        ssl->in_msg[0] != 14 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2958, "bad server hello done message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7B80 );
    }

    ssl->state++;


    if( ssl->conf->transport == 1 )
        mbedtls_ssl_recv_flight_completed( ssl );


    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2971, "<= parse server hello done" );

    return( 0 );
}

static int ssl_write_client_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t i = 0, n;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 2983, "=> write client key exchange" );
# 3028 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA )
    {



        i = 4;

        ret = mbedtls_ecdh_make_public( &ssl->handshake->ecdh_ctx,
                                &n,
                                &ssl->out_msg[i], 1000,
                                ssl->conf->f_rng, ssl->conf->p_rng );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3044, "mbedtls_ecdh_make_public", ret );
            return( ret );
        }

        mbedtls_debug_print_ecp( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3048, "ECDH: Q", &ssl->handshake->ecdh_ctx.Q );

        if( ( ret = mbedtls_ecdh_calc_secret( &ssl->handshake->ecdh_ctx,
                                      &ssl->handshake->pmslen,
                                       ssl->handshake->premaster,
                                       256,
                                       ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3056, "mbedtls_ecdh_calc_secret", ret );
            return( ret );
        }

        mbedtls_debug_print_mpi( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3060, "ECDH: z", &ssl->handshake->ecdh_ctx.z );
    }
    else





    if( mbedtls_ssl_ciphersuite_uses_psk( ciphersuite_info ) )
    {



        if( ssl->conf->psk == ((void *)0) || ssl->conf->psk_identity == ((void *)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3075, "got no private key for PSK" );
            return( -0x7600 );
        }

        i = 4;
        n = ssl->conf->psk_identity_len;

        if( i + 2 + n > 8192 )
        {
            mbedtls_debug_print_msg( ssl, 1,
                                                                 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
# 3084 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            ,
                                                                 3085
# 3084 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
            , "psk identity too long or " "SSL buffer too short" )
                                                                  ;
            return( -0x6A00 );
        }

        ssl->out_msg[i++] = (unsigned char)( n >> 8 );
        ssl->out_msg[i++] = (unsigned char)( n );

        memcpy( ssl->out_msg + i, ssl->conf->psk_identity, ssl->conf->psk_identity_len );
        i += ssl->conf->psk_identity_len;


        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK )
        {
            n = 0;
        }
        else


        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        {
            if( ( ret = ssl_write_encrypted_pms( ssl, i, &n, 2 ) ) != 0 )
                return( ret );
        }
        else
# 3141 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
        {



            ret = mbedtls_ecdh_make_public( &ssl->handshake->ecdh_ctx, &n,
                    &ssl->out_msg[i], 8192 - i,
                    ssl->conf->f_rng, ssl->conf->p_rng );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3151, "mbedtls_ecdh_make_public", ret );
                return( ret );
            }

            mbedtls_debug_print_ecp( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3155, "ECDH: Q", &ssl->handshake->ecdh_ctx.Q );
        }
        else

        {
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3160, "should never happen" );
            return( -0x6C00 );
        }

        if( ( ret = mbedtls_ssl_psk_derive_premaster( ssl,
                        ciphersuite_info->key_exchange ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3167, "mbedtls_ssl_psk_derive_premaster", ret );
            return( ret );
        }
    }
    else


    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA )
    {
        i = 4;
        if( ( ret = ssl_write_encrypted_pms( ssl, i, &n, 0 ) ) != 0 )
            return( ret );
    }
    else


    if( ssl->protocol == 0 && ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECC )
    {
        i = 4;
        if( ( ret = gmssl_write_encrypted_pms( ssl, i, &n, 0 ) ) != 0 )
            return( ret );
    }
    else
# 3217 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    {

        if(ssl->protocol != 0)
        {

            ((void) ciphersuite_info);
            mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3223, "should never happen" );
            return( -0x6C00 );

        }

    }

    ssl->out_msglen = i + n;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 16;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3238, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3242, "<= write client key exchange" );

    return( 0 );
}
# 3282 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_write_certificate_verify( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;
    size_t n = 0, offset = 0;
    unsigned char hash[48];
    unsigned char *hash_start = hash;
    mbedtls_md_type_t md_alg = MBEDTLS_MD_NONE;
    unsigned int hashlen;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3293, "=> write certificate verify" );

    if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3297, "mbedtls_ssl_derive_keys", ret );
        return( ret );
    }

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3307, "<= skip write certificate verify" );
        ssl->state++;
        return( 0 );
    }

    if( ssl->client_auth == 0 || mbedtls_ssl_own_cert( ssl ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3314, "<= skip write certificate verify" );
        ssl->state++;
        return( 0 );
    }

    if( mbedtls_ssl_own_key( ssl ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3321, "got no private key for certificate" );
        return( -0x7600 );
    }




    ssl->handshake->calc_verify( ssl, hash );



    if( ssl->minor_ver != 3 && ssl->protocol != 0x0 )
    {
# 3346 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        hashlen = 36;
        md_alg = MBEDTLS_MD_NONE;





        if( mbedtls_pk_can_do( mbedtls_ssl_own_key( ssl ), MBEDTLS_PK_ECDSA ) )
        {
            hash_start += 16;
            hashlen -= 16;
            md_alg = MBEDTLS_MD_SHA1;
        }
    }
    else



    if( ssl->minor_ver == 3 || ssl->protocol == 0x0 )
    {
# 3381 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
        if( ssl->transform_negotiate->ciphersuite_info->mac ==
            MBEDTLS_MD_SHA384 )
        {
            md_alg = MBEDTLS_MD_SHA384;
            ssl->out_msg[4] = 5;
        }

        else if( ssl->transform_negotiate->ciphersuite_info->mac ==
            MBEDTLS_MD_SM3 )
        {
            md_alg = MBEDTLS_MD_SM3;
            ssl->out_msg[4] = 7;
        }

        else
        {
            md_alg = MBEDTLS_MD_SHA256;
            ssl->out_msg[4] = 4;
        }
        ssl->out_msg[5] = mbedtls_ssl_sig_from_pk( mbedtls_ssl_own_key( ssl ) );


        hashlen = 0;
        offset = 2;
    }
    else

    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3409, "should never happen" );
        return( -0x6C00 );
    }

    if( ( ret = mbedtls_pk_sign( mbedtls_ssl_own_key( ssl ), md_alg, hash_start, hashlen,
                         ssl->out_msg + 6 + offset, &n,
                         ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3417, "mbedtls_pk_sign", ret );
        return( ret );
    }

    ssl->out_msg[4 + offset] = (unsigned char)( n >> 8 );
    ssl->out_msg[5 + offset] = (unsigned char)( n );

    ssl->out_msglen = 6 + n + offset;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 15;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3432, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3436, "<= write certificate verify" );

    return( ret );
}
# 3448 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
static int ssl_parse_new_session_ticket( mbedtls_ssl_context *ssl )
{
    int ret;
    uint32_t lifetime;
    size_t ticket_len;
    unsigned char *ticket;
    const unsigned char *msg;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3456, "=> parse new session ticket" );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3460, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3466, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }
# 3482 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
    if( ssl->in_msg[0] != 4 ||
        ssl->in_hslen < 6 + mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3485, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x6E00 );
    }

    msg = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );

    lifetime = ( msg[0] << 24 ) | ( msg[1] << 16 ) |
               ( msg[2] << 8 ) | ( msg[3] );

    ticket_len = ( msg[4] << 8 ) | ( msg[5] );

    if( ticket_len + 6 + mbedtls_ssl_hs_hdr_len( ssl ) != ssl->in_hslen )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3500, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x6E00 );
    }

    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3506, "ticket length: %d", ticket_len );


    ssl->handshake->new_session_ticket = 0;
    ssl->state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;





    if( ticket_len == 0 )
        return( 0 );

    mbedtls_zeroize( ssl->session_negotiate->ticket,
                      ssl->session_negotiate->ticket_len );
    free( ssl->session_negotiate->ticket );
    ssl->session_negotiate->ticket = ((void *)0);
    ssl->session_negotiate->ticket_len = 0;

    if( ( ticket = calloc( 1, ticket_len ) ) == ((void *)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3527, "ticket alloc failed" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
        return( -0x7F00 );
    }

    memcpy( ticket, msg + 6, ticket_len );

    ssl->session_negotiate->ticket = ticket;
    ssl->session_negotiate->ticket_len = ticket_len;
    ssl->session_negotiate->ticket_lifetime = lifetime;






    mbedtls_debug_print_msg( ssl, 3, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3544, "ticket in use, discarding session id" );
    ssl->session_negotiate->id_len = 0;

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3547, "<= parse new session ticket" );

    return( 0 );
}





int mbedtls_ssl_handshake_client_step( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER || ssl->handshake == ((void *)0) )
        return( -0x7100 );

    mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3563, "client state: %d", ssl->state );

    if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        return( ret );


    if( ssl->conf->transport == 1 &&
        ssl->handshake->retransmit_state == 1 )
    {
        if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
            return( ret );
    }





    if( ssl->state == MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC &&
        ssl->handshake->new_session_ticket != 0 )
    {
        ssl->state = MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET;
    }


    switch( ssl->state )
    {
        case MBEDTLS_SSL_HELLO_REQUEST:
            ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
            break;




       case MBEDTLS_SSL_CLIENT_HELLO:
           ret = ssl_write_client_hello( ssl );
           break;
# 3607 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
       case MBEDTLS_SSL_SERVER_HELLO:
           ret = ssl_parse_server_hello( ssl );
           break;

       case MBEDTLS_SSL_SERVER_CERTIFICATE:
           ret = mbedtls_ssl_parse_certificate( ssl );
           break;

       case MBEDTLS_SSL_SERVER_KEY_EXCHANGE:
           ret = ssl_parse_server_key_exchange( ssl );
           break;

       case MBEDTLS_SSL_CERTIFICATE_REQUEST:
           ret = ssl_parse_certificate_request( ssl );
           break;

       case MBEDTLS_SSL_SERVER_HELLO_DONE:
           ret = ssl_parse_server_hello_done( ssl );
           break;
# 3634 "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c"
       case MBEDTLS_SSL_CLIENT_CERTIFICATE:
           ret = mbedtls_ssl_write_certificate( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_KEY_EXCHANGE:
           ret = ssl_write_client_key_exchange( ssl );
           break;

       case MBEDTLS_SSL_CERTIFICATE_VERIFY:
           ret = ssl_write_certificate_verify( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC:
           ret = mbedtls_ssl_write_change_cipher_spec( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_FINISHED:
           ret = mbedtls_ssl_write_finished( ssl );
           break;







       case MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET:
           ret = ssl_parse_new_session_ticket( ssl );
           break;


       case MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC:
           ret = mbedtls_ssl_parse_change_cipher_spec( ssl );
           break;

       case MBEDTLS_SSL_SERVER_FINISHED:
           ret = mbedtls_ssl_parse_finished( ssl );
           break;

       case MBEDTLS_SSL_FLUSH_BUFFERS:
           mbedtls_debug_print_msg( ssl, 2, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3674, "handshake: done" );
           ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
           break;

       case MBEDTLS_SSL_HANDSHAKE_WRAPUP:
           mbedtls_ssl_handshake_wrapup( ssl );
           break;

       default:
           mbedtls_debug_print_msg( ssl, 1, "../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c", 3683, "invalid state %d", ssl->state );
           return( -0x7100 );
   }

    return( ret );
}