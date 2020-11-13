# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
# 25 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
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
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c" 2


# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/certs.h" 1
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/certs.h"
# 1 "../../../components/libc/compilers/minilibc/stddef.h" 1




typedef signed long ptrdiff_t;
# 27 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/certs.h" 2







extern const char mbedtls_test_cas_pem[];
extern const size_t mbedtls_test_cas_pem_len;




extern const char mbedtls_gmtest_cas_pem[];
extern const size_t mbedtls_gmtest_cas_pem_len;




extern const char * mbedtls_test_cas[];
extern const size_t mbedtls_test_cas_len[];





extern const char * mbedtls_test_ca_crt;
extern const size_t mbedtls_test_ca_crt_len;
extern const char * mbedtls_test_ca_key;
extern const size_t mbedtls_test_ca_key_len;
extern const char * mbedtls_test_ca_pwd;
extern const size_t mbedtls_test_ca_pwd_len;
extern const char * mbedtls_test_srv_crt;
extern const size_t mbedtls_test_srv_crt_len;
extern const char * mbedtls_test_srv_key;
extern const size_t mbedtls_test_srv_key_len;
extern const char * mbedtls_test_cli_crt;
extern const size_t mbedtls_test_cli_crt_len;
extern const char * mbedtls_test_cli_key;
extern const size_t mbedtls_test_cli_key_len;


extern const char * mbedtls_gmtest_srv_crt_1;
extern const size_t mbedtls_gmtest_srv_crt_len1;

extern const char * mbedtls_gmtest_srv_crt_2;
extern const size_t mbedtls_gmtest_srv_crt_len2;

extern const char * mbedtls_gmtest_srv_dsa_key;
extern const size_t mbedtls_gmtest_srv_dsa_key_len;

extern const char * mbedtls_gmtest_srv_enc_key;
extern const size_t mbedtls_gmtest_srv_enc_key_len;

extern const char * mbedtls_gmtest_cli_crt_dsa;
extern const size_t mbedtls_gmtest_cli_crt_dsa_len;

extern const char * mbedtls_gmtest_cli_crt_enc;
extern const size_t mbedtls_gmtest_cli_crt_enc_len;

extern const char * mbedtls_gmtest_cli_dsa_key;
extern const size_t mbedtls_gmtest_cli_dsa_key_len;

extern const char * mbedtls_gmtest_cli_enc_key;
extern const size_t mbedtls_gmtest_cli_enc_key_len;





extern const char mbedtls_test_ca_crt_ec[];
extern const size_t mbedtls_test_ca_crt_ec_len;
extern const char mbedtls_test_ca_key_ec[];
extern const size_t mbedtls_test_ca_key_ec_len;
extern const char mbedtls_test_ca_pwd_ec[];
extern const size_t mbedtls_test_ca_pwd_ec_len;
extern const char mbedtls_test_srv_crt_ec[];
extern const size_t mbedtls_test_srv_crt_ec_len;
extern const char mbedtls_test_srv_key_ec[];
extern const size_t mbedtls_test_srv_key_ec_len;
extern const char mbedtls_test_cli_crt_ec[];
extern const size_t mbedtls_test_cli_crt_ec_len;
extern const char mbedtls_test_cli_key_ec[];
extern const size_t mbedtls_test_cli_key_ec_len;



extern const char mbedtls_test_ca_crt_rsa[];
extern const size_t mbedtls_test_ca_crt_rsa_len;
extern const char mbedtls_test_ca_key_rsa[];
extern const size_t mbedtls_test_ca_key_rsa_len;
extern const char mbedtls_test_ca_pwd_rsa[];
extern const size_t mbedtls_test_ca_pwd_rsa_len;
extern const char mbedtls_test_srv_crt_rsa[];
extern const size_t mbedtls_test_srv_crt_rsa_len;
extern const char mbedtls_test_srv_key_rsa[];
extern const size_t mbedtls_test_srv_key_rsa_len;
extern const char mbedtls_test_cli_crt_rsa[];
extern const size_t mbedtls_test_cli_crt_rsa_len;
extern const char mbedtls_test_cli_key_rsa[];
extern const size_t mbedtls_test_cli_key_rsa_len;
# 29 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c" 2
# 49 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
const char mbedtls_test_ca_crt_ec[] = "-----BEGIN CERTIFICATE-----\r\n" "MIICUjCCAdegAwIBAgIJAMFD4n5iQ8zoMAoGCCqGSM49BAMCMD4xCzAJBgNVBAYT\r\n" "Ak5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\n" "QyBDQTAeFw0xMzA5MjQxNTQ5NDhaFw0yMzA5MjIxNTQ5NDhaMD4xCzAJBgNVBAYT\r\n" "Ak5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\n" "QyBDQTB2MBAGByqGSM49AgEGBSuBBAAiA2IABMPaKzRBN1gvh1b+/Im6KUNLTuBu\r\n" "ww5XUzM5WNRStJGVOQsj318XJGJI/BqVKc4sLYfCiFKAr9ZqqyHduNMcbli4yuiy\r\n" "aY7zQa0pw7RfdadHb9UZKVVpmlM7ILRmFmAzHqOBoDCBnTAdBgNVHQ4EFgQUnW0g\r\n" "JEkBPyvLeLUZvH4kydv7NnwwbgYDVR0jBGcwZYAUnW0gJEkBPyvLeLUZvH4kydv7\r\n" "NnyhQqRAMD4xCzAJBgNVBAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UE\r\n" "AxMTUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAwGA1UdEwQFMAMBAf8w\r\n" "CgYIKoZIzj0EAwIDaQAwZgIxAMO0YnNWKJUAfXgSJtJxexn4ipg+kv4znuR50v56\r\n" "t4d0PCu412mUC6Nnd7izvtE2MgIxAP1nnJQjZ8BWukszFQDG48wxCCyci9qpdSMv\r\n" "uCjn8pwUOkABXK8Mss90fzCfCEOtIA==\r\n" "-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_ca_crt_ec_len = sizeof( mbedtls_test_ca_crt_ec );

const char mbedtls_test_ca_key_ec[] =
"-----BEGIN EC PRIVATE KEY-----\r\n"
"Proc-Type: 4,ENCRYPTED\r\n"
"DEK-Info: DES-EDE3-CBC,307EAB469933D64E\r\n"
"\r\n"
"IxbrRmKcAzctJqPdTQLA4SWyBYYGYJVkYEna+F7Pa5t5Yg/gKADrFKcm6B72e7DG\r\n"
"ihExtZI648s0zdYw6qSJ74vrPSuWDe5qm93BqsfVH9svtCzWHW0pm1p0KTBCFfUq\r\n"
"UsuWTITwJImcnlAs1gaRZ3sAWm7cOUidL0fo2G0fYUFNcYoCSLffCFTEHBuPnagb\r\n"
"a77x/sY1Bvii8S9/XhDTb6pTMx06wzrm\r\n"
"-----END EC PRIVATE KEY-----\r\n";
const size_t mbedtls_test_ca_key_ec_len = sizeof( mbedtls_test_ca_key_ec );

const char mbedtls_test_ca_pwd_ec[] = "PolarSSLTest";
const size_t mbedtls_test_ca_pwd_ec_len = sizeof( mbedtls_test_ca_pwd_ec ) - 1;

const char mbedtls_test_srv_crt_ec[] =
"-----BEGIN CERTIFICATE-----\r\n"
"MIICHzCCAaWgAwIBAgIBCTAKBggqhkjOPQQDAjA+MQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UEChMIUG9sYXJTU0wxHDAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0EwHhcN\r\n"
"MTMwOTI0MTU1MjA0WhcNMjMwOTIyMTU1MjA0WjA0MQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UEChMIUG9sYXJTU0wxEjAQBgNVBAMTCWxvY2FsaG9zdDBZMBMGByqGSM49AgEG\r\n"
"CCqGSM49AwEHA0IABDfMVtl2CR5acj7HWS3/IG7ufPkGkXTQrRS192giWWKSTuUA\r\n"
"2CMR/+ov0jRdXRa9iojCa3cNVc2KKg76Aci07f+jgZ0wgZowCQYDVR0TBAIwADAd\r\n"
"BgNVHQ4EFgQUUGGlj9QH2deCAQzlZX+MY0anE74wbgYDVR0jBGcwZYAUnW0gJEkB\r\n"
"PyvLeLUZvH4kydv7NnyhQqRAMD4xCzAJBgNVBAYTAk5MMREwDwYDVQQKEwhQb2xh\r\n"
"clNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAoG\r\n"
"CCqGSM49BAMCA2gAMGUCMQCaLFzXptui5WQN8LlO3ddh1hMxx6tzgLvT03MTVK2S\r\n"
"C12r0Lz3ri/moSEpNZWqPjkCMCE2f53GXcYLqyfyJR078c/xNSUU5+Xxl7VZ414V\r\n"
"fGa5kHvHARBPc8YAIVIqDvHH1Q==\r\n"
"-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_srv_crt_ec_len = sizeof( mbedtls_test_srv_crt_ec );

const char mbedtls_test_srv_key_ec[] =
"-----BEGIN EC PRIVATE KEY-----\r\n"
"MHcCAQEEIPEqEyB2AnCoPL/9U/YDHvdqXYbIogTywwyp6/UfDw6noAoGCCqGSM49\r\n"
"AwEHoUQDQgAEN8xW2XYJHlpyPsdZLf8gbu58+QaRdNCtFLX3aCJZYpJO5QDYIxH/\r\n"
"6i/SNF1dFr2KiMJrdw1VzYoqDvoByLTt/w==\r\n"
"-----END EC PRIVATE KEY-----\r\n";
const size_t mbedtls_test_srv_key_ec_len = sizeof( mbedtls_test_srv_key_ec );

const char mbedtls_test_cli_crt_ec[] =
"-----BEGIN CERTIFICATE-----\r\n"
"MIICLDCCAbKgAwIBAgIBDTAKBggqhkjOPQQDAjA+MQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UEChMIUG9sYXJTU0wxHDAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0EwHhcN\r\n"
"MTMwOTI0MTU1MjA0WhcNMjMwOTIyMTU1MjA0WjBBMQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UEChMIUG9sYXJTU0wxHzAdBgNVBAMTFlBvbGFyU1NMIFRlc3QgQ2xpZW50IDIw\r\n"
"WTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAARX5a6xc9/TrLuTuIH/Eq7u5lOszlVT\r\n"
"9jQOzC7jYyUL35ji81xgNpbA1RgUcOV/n9VLRRjlsGzVXPiWj4dwo+THo4GdMIGa\r\n"
"MAkGA1UdEwQCMAAwHQYDVR0OBBYEFHoAX4Zk/OBd5REQO7LmO8QmP8/iMG4GA1Ud\r\n"
"IwRnMGWAFJ1tICRJAT8ry3i1Gbx+JMnb+zZ8oUKkQDA+MQswCQYDVQQGEwJOTDER\r\n"
"MA8GA1UEChMIUG9sYXJTU0wxHDAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0GC\r\n"
"CQDBQ+J+YkPM6DAKBggqhkjOPQQDAgNoADBlAjBKZQ17IIOimbmoD/yN7o89u3BM\r\n"
"lgOsjnhw3fIOoLIWy2WOGsk/LGF++DzvrRzuNiACMQCd8iem1XS4JK7haj8xocpU\r\n"
"LwjQje5PDGHfd3h9tP38Qknu5bJqws0md2KOKHyeV0U=\r\n"
"-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_cli_crt_ec_len = sizeof( mbedtls_test_cli_crt_ec );

const char mbedtls_test_cli_key_ec[] =
"-----BEGIN EC PRIVATE KEY-----\r\n"
"MHcCAQEEIPb3hmTxZ3/mZI3vyk7p3U3wBf+WIop6hDhkFzJhmLcqoAoGCCqGSM49\r\n"
"AwEHoUQDQgAEV+WusXPf06y7k7iB/xKu7uZTrM5VU/Y0Dswu42MlC9+Y4vNcYDaW\r\n"
"wNUYFHDlf5/VS0UY5bBs1Vz4lo+HcKPkxw==\r\n"
"-----END EC PRIVATE KEY-----\r\n";
const size_t mbedtls_test_cli_key_ec_len = sizeof( mbedtls_test_cli_key_ec );
# 144 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
const char mbedtls_test_ca_crt_rsa[] = "-----BEGIN CERTIFICATE-----\r\n" "MIIDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\n" "MA8GA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n" "MTcwNTA0MTY1NzAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQYDVQQGEwJOTDERMA8G\r\n" "A1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r\n" "CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\n" "mdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n" "50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\n" "YMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\n" "R7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\n" "KNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\n" "gZUwgZIwHQYDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r\n" "FLRa5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA8GA1UE\r\n" "CgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0GCAQAwDAYDVR0T\r\n" "BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHrTZMnnVMpde1io+voAtql7j\r\n" "4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2LMYoXsOxoL/RQK3iN7UKxV3MKPEr0w\r\n" "XQS+kKQqiT2bsfrjnWMVHZtUOMpm6FNqcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\n" "G6A6tUvQcr2ZyWfVg+mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\n" "ApH0CnB80bYJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\n" "n20NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r\n" "-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_ca_crt_rsa_len = sizeof( mbedtls_test_ca_crt_rsa );


static const char mbedtls_test_ca_crt_rsa_sha256[] = "-----BEGIN CERTIFICATE-----\r\n" "MIIDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\n" "MA8GA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n" "MTcwNTA0MTY1NzAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQYDVQQGEwJOTDERMA8G\r\n" "A1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r\n" "CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\n" "mdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n" "50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\n" "YMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\n" "R7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\n" "KNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\n" "gZUwgZIwHQYDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r\n" "FLRa5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA8GA1UE\r\n" "CgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0GCAQAwDAYDVR0T\r\n" "BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHrTZMnnVMpde1io+voAtql7j\r\n" "4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2LMYoXsOxoL/RQK3iN7UKxV3MKPEr0w\r\n" "XQS+kKQqiT2bsfrjnWMVHZtUOMpm6FNqcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\n" "G6A6tUvQcr2ZyWfVg+mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\n" "ApH0CnB80bYJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\n" "n20NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r\n" "-----END CERTIFICATE-----\r\n";
# 181 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
static const char mbedtls_test_ca_crt_rsa_sha1[] = "-----BEGIN CERTIFICATE-----\r\n" "MIIDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\n" "MA8GA1UEChMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n" "MTEwMjEyMTQ0NDAwWhcNMjEwMjEyMTQ0NDAwWjA7MQswCQYDVQQGEwJOTDERMA8G\r\n" "A1UEChMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r\n" "CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\n" "mdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n" "50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\n" "YMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\n" "R7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\n" "KNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\n" "gZUwgZIwDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUtFrkpbPe0lL2udWmlQ/rPrzH\r\n" "/f8wYwYDVR0jBFwwWoAUtFrkpbPe0lL2udWmlQ/rPrzH/f+hP6Q9MDsxCzAJBgNV\r\n" "BAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEZMBcGA1UEAxMQUG9sYXJTU0wgVGVz\r\n" "dCBDQYIBADANBgkqhkiG9w0BAQUFAAOCAQEAuP1U2ABUkIslsCfdlc2i94QHHYeJ\r\n" "SsR4EdgHtdciUI5I62J6Mom+Y0dT/7a+8S6MVMCZP6C5NyNyXw1GWY/YR82XTJ8H\r\n" "DBJiCTok5DbZ6SzaONBzdWHXwWwmi5vg1dxn7YxrM9d0IjxM27WNKs4sDQhZBQkF\r\n" "pjmfs2cb4oPl4Y9T9meTx/lvdkRYEug61Jfn6cA+qHpyPYdTH+UshITnmp5/Ztkf\r\n" "m/UTSLBNFNHesiTZeH31NcxYGdHSme9Nc/gfidRa0FLOCfWxRlFqAI47zG9jAQCZ\r\n" "7Z2mCGDNMhjQc+BYcdnl0lPXjdDK6V0qCg1dVewhUBcW5gZKzV7e9+DpVA==\r\n" "-----END CERTIFICATE-----\r\n";



const char mbedtls_test_ca_key_rsa[] =
"-----BEGIN RSA PRIVATE KEY-----\r\n"
"Proc-Type: 4,ENCRYPTED\r\n"
"DEK-Info: DES-EDE3-CBC,A8A95B05D5B7206B\r\n"
"\r\n"
"9Qd9GeArejl1GDVh2lLV1bHt0cPtfbh5h/5zVpAVaFpqtSPMrElp50Rntn9et+JA\r\n"
"7VOyboR+Iy2t/HU4WvA687k3Bppe9GwKHjHhtl//8xFKwZr3Xb5yO5JUP8AUctQq\r\n"
"Nb8CLlZyuUC+52REAAthdWgsX+7dJO4yabzUcQ22Tp9JSD0hiL43BlkWYUNK3dAo\r\n"
"PZlmiptjnzVTjg1MxsBSydZinWOLBV8/JQgxSPo2yD4uEfig28qbvQ2wNIn0pnAb\r\n"
"GxnSAOazkongEGfvcjIIs+LZN9gXFhxcOh6kc4Q/c99B7QWETwLLkYgZ+z1a9VY9\r\n"
"gEU7CwCxYCD+h9hY6FPmsK0/lC4O7aeRKpYq00rPPxs6i7phiexg6ax6yTMmArQq\r\n"
"QmK3TAsJm8V/J5AWpLEV6jAFgRGymGGHnof0DXzVWZidrcZJWTNuGEX90nB3ee2w\r\n"
"PXJEFWKoD3K3aFcSLdHYr3mLGxP7H9ThQai9VsycxZKS5kwvBKQ//YMrmFfwPk8x\r\n"
"vTeY4KZMaUrveEel5tWZC94RSMKgxR6cyE1nBXyTQnDOGbfpNNgBKxyKbINWoOJU\r\n"
"WJZAwlsQn+QzCDwpri7+sV1mS3gBE6UY7aQmnmiiaC2V3Hbphxct/en5QsfDOt1X\r\n"
"JczSfpRWLlbPznZg8OQh/VgCMA58N5DjOzTIK7sJJ5r+94ZBTCpgAMbF588f0NTR\r\n"
"KCe4yrxGJR7X02M4nvD4IwOlpsQ8xQxZtOSgXv4LkxvdU9XJJKWZ/XNKJeWztxSe\r\n"
"Z1vdTc2YfsDBA2SEv33vxHx2g1vqtw8SjDRT2RaQSS0QuSaMJimdOX6mTOCBKk1J\r\n"
"9Q5mXTrER+/LnK0jEmXsBXWA5bqqVZIyahXSx4VYZ7l7w/PHiUDtDgyRhMMKi4n2\r\n"
"iQvQcWSQTjrpnlJbca1/DkpRt3YwrvJwdqb8asZU2VrNETh5x0QVefDRLFiVpif/\r\n"
"tUaeAe/P1F8OkS7OIZDs1SUbv/sD2vMbhNkUoCms3/PvNtdnvgL4F0zhaDpKCmlT\r\n"
"P8vx49E7v5CyRNmED9zZg4o3wmMqrQO93PtTug3Eu9oVx1zPQM1NVMyBa2+f29DL\r\n"
"1nuTCeXdo9+ni45xx+jAI4DCwrRdhJ9uzZyC6962H37H6D+5naNvClFR1s6li1Gb\r\n"
"nqPoiy/OBsEx9CaDGcqQBp5Wme/3XW+6z1ISOx+igwNTVCT14mHdBMbya0eIKft5\r\n"
"X+GnwtgEMyCYyyWuUct8g4RzErcY9+yW9Om5Hzpx4zOuW4NPZgPDTgK+t2RSL/Yq\r\n"
"rE1njrgeGYcVeG3f+OftH4s6fPbq7t1A5ZgUscbLMBqr9tK+OqygR4EgKBPsH6Cz\r\n"
"L6zlv/2RV0qAHvVuDJcIDIgwY5rJtINEm32rhOeFNJwZS5MNIC1czXZx5//ugX7l\r\n"
"I4sy5nbVhwSjtAk8Xg5dZbdTZ6mIrb7xqH+fdakZor1khG7bC2uIwibD3cSl2XkR\r\n"
"wN48lslbHnqqagr6Xm1nNOSVl8C/6kbJEsMpLhAezfRtGwvOucoaE+WbeUNolGde\r\n"
"P/eQiddSf0brnpiLJRh7qZrl9XuqYdpUqnoEdMAfotDOID8OtV7gt8a48ad8VPW2\r\n"
"-----END RSA PRIVATE KEY-----\r\n";
const size_t mbedtls_test_ca_key_rsa_len = sizeof( mbedtls_test_ca_key_rsa );

const char mbedtls_test_ca_pwd_rsa[] = "PolarSSLTest";
const size_t mbedtls_test_ca_pwd_rsa_len = sizeof( mbedtls_test_ca_pwd_rsa ) - 1;

const char mbedtls_test_srv_crt_rsa[] =
"-----BEGIN CERTIFICATE-----\r\n"
"MIIDNzCCAh+gAwIBAgIBAjANBgkqhkiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\n"
"MA8GA1UEChMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n"
"MTEwMjEyMTQ0NDA2WhcNMjEwMjEyMTQ0NDA2WjA0MQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UEChMIUG9sYXJTU0wxEjAQBgNVBAMTCWxvY2FsaG9zdDCCASIwDQYJKoZIhvcN\r\n"
"AQEBBQADggEPADCCAQoCggEBAMFNo93nzR3RBNdJcriZrA545Do8Ss86ExbQWuTN\r\n"
"owCIp+4ea5anUrSQ7y1yej4kmvy2NKwk9XfgJmSMnLAofaHa6ozmyRyWvP7BBFKz\r\n"
"NtSj+uGxdtiQwWG0ZlI2oiZTqqt0Xgd9GYLbKtgfoNkNHC1JZvdbJXNG6AuKT2kM\r\n"
"tQCQ4dqCEGZ9rlQri2V5kaHiYcPNQEkI7mgM8YuG0ka/0LiqEQMef1aoGh5EGA8P\r\n"
"hYvai0Re4hjGYi/HZo36Xdh98yeJKQHFkA4/J/EwyEoO79bex8cna8cFPXrEAjya\r\n"
"HT4P6DSYW8tzS1KW2BGiLICIaTla0w+w3lkvEcf36hIBMJcCAwEAAaNNMEswCQYD\r\n"
"VR0TBAIwADAdBgNVHQ4EFgQUpQXoZLjc32APUBJNYKhkr02LQ5MwHwYDVR0jBBgw\r\n"
"FoAUtFrkpbPe0lL2udWmlQ/rPrzH/f8wDQYJKoZIhvcNAQEFBQADggEBAJxnXClY\r\n"
"oHkbp70cqBrsGXLybA74czbO5RdLEgFs7rHVS9r+c293luS/KdliLScZqAzYVylw\r\n"
"UfRWvKMoWhHYKp3dEIS4xTXk6/5zXxhv9Rw8SGc8qn6vITHk1S1mPevtekgasY5Y\r\n"
"iWQuM3h4YVlRH3HHEMAD1TnAexfXHHDFQGe+Bd1iAbz1/sH9H8l4StwX6egvTK3M\r\n"
"wXRwkKkvjKaEDA9ATbZx0mI8LGsxSuCqe9r9dyjmttd47J1p1Rulz3CLzaRcVIuS\r\n"
"RRQfaD8neM9c1S/iJ/amTVqJxA1KOdOS5780WhPfSArA+g4qAmSjelc3p4wWpha8\r\n"
"zhuYwjVuX6JHG0c=\r\n"
"-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_srv_crt_rsa_len = sizeof( mbedtls_test_srv_crt_rsa );

const char mbedtls_test_srv_key_rsa[] =
"-----BEGIN RSA PRIVATE KEY-----\r\n"
"MIIEpAIBAAKCAQEAwU2j3efNHdEE10lyuJmsDnjkOjxKzzoTFtBa5M2jAIin7h5r\r\n"
"lqdStJDvLXJ6PiSa/LY0rCT1d+AmZIycsCh9odrqjObJHJa8/sEEUrM21KP64bF2\r\n"
"2JDBYbRmUjaiJlOqq3ReB30Zgtsq2B+g2Q0cLUlm91slc0boC4pPaQy1AJDh2oIQ\r\n"
"Zn2uVCuLZXmRoeJhw81ASQjuaAzxi4bSRr/QuKoRAx5/VqgaHkQYDw+Fi9qLRF7i\r\n"
"GMZiL8dmjfpd2H3zJ4kpAcWQDj8n8TDISg7v1t7HxydrxwU9esQCPJodPg/oNJhb\r\n"
"y3NLUpbYEaIsgIhpOVrTD7DeWS8Rx/fqEgEwlwIDAQABAoIBAQCXR0S8EIHFGORZ\r\n"
"++AtOg6eENxD+xVs0f1IeGz57Tjo3QnXX7VBZNdj+p1ECvhCE/G7XnkgU5hLZX+G\r\n"
"Z0jkz/tqJOI0vRSdLBbipHnWouyBQ4e/A1yIJdlBtqXxJ1KE/ituHRbNc4j4kL8Z\r\n"
"/r6pvwnTI0PSx2Eqs048YdS92LT6qAv4flbNDxMn2uY7s4ycS4Q8w1JXnCeaAnYm\r\n"
"WYI5wxO+bvRELR2Mcz5DmVnL8jRyml6l6582bSv5oufReFIbyPZbQWlXgYnpu6He\r\n"
"GTc7E1zKYQGG/9+DQUl/1vQuCPqQwny0tQoX2w5tdYpdMdVm+zkLtbajzdTviJJa\r\n"
"TWzL6lt5AoGBAN86+SVeJDcmQJcv4Eq6UhtRr4QGMiQMz0Sod6ettYxYzMgxtw28\r\n"
"CIrgpozCc+UaZJLo7UxvC6an85r1b2nKPCLQFaggJ0H4Q0J/sZOhBIXaoBzWxveK\r\n"
"nupceKdVxGsFi8CDy86DBfiyFivfBj+47BbaQzPBj7C4rK7UlLjab2rDAoGBAN2u\r\n"
"AM2gchoFiu4v1HFL8D7lweEpi6ZnMJjnEu/dEgGQJFjwdpLnPbsj4c75odQ4Gz8g\r\n"
"sw9lao9VVzbusoRE/JGI4aTdO0pATXyG7eG1Qu+5Yc1YGXcCrliA2xM9xx+d7f+s\r\n"
"mPzN+WIEg5GJDYZDjAzHG5BNvi/FfM1C9dOtjv2dAoGAF0t5KmwbjWHBhcVqO4Ic\r\n"
"BVvN3BIlc1ue2YRXEDlxY5b0r8N4XceMgKmW18OHApZxfl8uPDauWZLXOgl4uepv\r\n"
"whZC3EuWrSyyICNhLY21Ah7hbIEBPF3L3ZsOwC+UErL+dXWLdB56Jgy3gZaBeW7b\r\n"
"vDrEnocJbqCm7IukhXHOBK8CgYEAwqdHB0hqyNSzIOGY7v9abzB6pUdA3BZiQvEs\r\n"
"3LjHVd4HPJ2x0N8CgrBIWOE0q8+0hSMmeE96WW/7jD3fPWwCR5zlXknxBQsfv0gP\r\n"
"3BC5PR0Qdypz+d+9zfMf625kyit4T/hzwhDveZUzHnk1Cf+IG7Q+TOEnLnWAWBED\r\n"
"ISOWmrUCgYAFEmRxgwAc/u+D6t0syCwAYh6POtscq9Y0i9GyWk89NzgC4NdwwbBH\r\n"
"4AgahOxIxXx2gxJnq3yfkJfIjwf0s2DyP0kY2y6Ua1OeomPeY9mrIS4tCuDQ6LrE\r\n"
"TB6l9VGoxJL4fyHnZb8L5gGvnB1bbD8cL6YPaDiOhcRseC9vBiEuVg==\r\n"
"-----END RSA PRIVATE KEY-----\r\n";
const size_t mbedtls_test_srv_key_rsa_len = sizeof( mbedtls_test_srv_key_rsa );

const char mbedtls_test_cli_crt_rsa[] =
"-----BEGIN CERTIFICATE-----\r\n"
"MIIDhTCCAm2gAwIBAgIBBDANBgkqhkiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\n"
"MA8GA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n"
"MTcwNTA1MTMwNzU5WhcNMjcwNTA2MTMwNzU5WjA8MQswCQYDVQQGEwJOTDERMA8G\r\n"
"A1UECgwIUG9sYXJTU0wxGjAYBgNVBAMMEVBvbGFyU1NMIENsaWVudCAyMIIBIjAN\r\n"
"BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyHTEzLn5tXnpRdkUYLB9u5Pyax6f\r\n"
"M60Nj4o8VmXl3ETZzGaFB9X4J7BKNdBjngpuG7fa8H6r7gwQk4ZJGDTzqCrSV/Uu\r\n"
"1C93KYRhTYJQj6eVSHD1bk2y1RPD0hrt5kPqQhTrdOrA7R/UV06p86jt0uDBMHEw\r\n"
"MjDV0/YI0FZPRo7yX/k9Z5GIMC5Cst99++UMd//sMcB4j7/Cf8qtbCHWjdmLao5v\r\n"
"4Jv4EFbMs44TFeY0BGbH7vk2DmqV9gmaBmf0ZXH4yqSxJeD+PIs1BGe64E92hfx/\r\n"
"/DZrtenNLQNiTrM9AM+vdqBpVoNq0qjU51Bx5rU2BXcFbXvI5MT9TNUhXwIDAQAB\r\n"
"o4GSMIGPMB0GA1UdDgQWBBRxoQBzckAvVHZeM/xSj7zx3WtGITBjBgNVHSMEXDBa\r\n"
"gBS0WuSls97SUva51aaVD+s+vMf9/6E/pD0wOzELMAkGA1UEBhMCTkwxETAPBgNV\r\n"
"BAoMCFBvbGFyU1NMMRkwFwYDVQQDDBBQb2xhclNTTCBUZXN0IENBggEAMAkGA1Ud\r\n"
"EwQCMAAwDQYJKoZIhvcNAQELBQADggEBAC7yO786NvcHpK8UovKIG9cB32oSQQom\r\n"
"LoR0eHDRzdqEkoq7yGZufHFiRAAzbMqJfogRtxlrWAeB4y/jGaMBV25IbFOIcH2W\r\n"
"iCEaMMbG+VQLKNvuC63kmw/Zewc9ThM6Pa1Hcy0axT0faf1B/U01j0FIcw/6mTfK\r\n"
"D8w48OIwc1yr0JtutCVjig5DC0yznGMt32RyseOLcUe+lfq005v2PAiCozr5X8rE\r\n"
"ofGZpiM2NqRPePgYy+Vc75Zk28xkRQq1ncprgQb3S4vTsZdScpM9hLf+eMlrgqlj\r\n"
"c5PLSkXBeLE5+fedkyfTaLxxQlgCpuoOhKBm04/R1pWNzUHyqagjO9Q=\r\n"
"-----END CERTIFICATE-----\r\n";
const size_t mbedtls_test_cli_crt_rsa_len = sizeof( mbedtls_test_cli_crt_rsa );

const char mbedtls_test_cli_key_rsa[] =
"-----BEGIN RSA PRIVATE KEY-----\r\n"
"MIIEpAIBAAKCAQEAyHTEzLn5tXnpRdkUYLB9u5Pyax6fM60Nj4o8VmXl3ETZzGaF\r\n"
"B9X4J7BKNdBjngpuG7fa8H6r7gwQk4ZJGDTzqCrSV/Uu1C93KYRhTYJQj6eVSHD1\r\n"
"bk2y1RPD0hrt5kPqQhTrdOrA7R/UV06p86jt0uDBMHEwMjDV0/YI0FZPRo7yX/k9\r\n"
"Z5GIMC5Cst99++UMd//sMcB4j7/Cf8qtbCHWjdmLao5v4Jv4EFbMs44TFeY0BGbH\r\n"
"7vk2DmqV9gmaBmf0ZXH4yqSxJeD+PIs1BGe64E92hfx//DZrtenNLQNiTrM9AM+v\r\n"
"dqBpVoNq0qjU51Bx5rU2BXcFbXvI5MT9TNUhXwIDAQABAoIBAGdNtfYDiap6bzst\r\n"
"yhCiI8m9TtrhZw4MisaEaN/ll3XSjaOG2dvV6xMZCMV+5TeXDHOAZnY18Yi18vzz\r\n"
"4Ut2TnNFzizCECYNaA2fST3WgInnxUkV3YXAyP6CNxJaCmv2aA0yFr2kFVSeaKGt\r\n"
"ymvljNp2NVkvm7Th8fBQBO7I7AXhz43k0mR7XmPgewe8ApZOG3hstkOaMvbWAvWA\r\n"
"zCZupdDjZYjOJqlA4eEA4H8/w7F83r5CugeBE8LgEREjLPiyejrU5H1fubEY+h0d\r\n"
"l5HZBJ68ybTXfQ5U9o/QKA3dd0toBEhhdRUDGzWtjvwkEQfqF1reGWj/tod/gCpf\r\n"
"DFi6X0ECgYEA4wOv/pjSC3ty6TuOvKX2rOUiBrLXXv2JSxZnMoMiWI5ipLQt+RYT\r\n"
"VPafL/m7Dn6MbwjayOkcZhBwk5CNz5A6Q4lJ64Mq/lqHznRCQQ2Mc1G8eyDF/fYL\r\n"
"Ze2pLvwP9VD5jTc2miDfw+MnvJhywRRLcemDFP8k4hQVtm8PMp3ZmNECgYEA4gz7\r\n"
"wzObR4gn8ibe617uQPZjWzUj9dUHYd+in1gwBCIrtNnaRn9I9U/Q6tegRYpii4ys\r\n"
"c176NmU+umy6XmuSKV5qD9bSpZWG2nLFnslrN15Lm3fhZxoeMNhBaEDTnLT26yoi\r\n"
"33gp0mSSWy94ZEqipms+ULF6sY1ZtFW6tpGFoy8CgYAQHhnnvJflIs2ky4q10B60\r\n"
"ZcxFp3rtDpkp0JxhFLhiizFrujMtZSjYNm5U7KkgPVHhLELEUvCmOnKTt4ap/vZ0\r\n"
"BxJNe1GZH3pW6SAvGDQpl9sG7uu/vTFP+lCxukmzxB0DrrDcvorEkKMom7ZCCRvW\r\n"
"KZsZ6YeH2Z81BauRj218kQKBgQCUV/DgKP2985xDTT79N08jUo3hTP5MVYCCuj/+\r\n"
"UeEw1TvZcx3LJby7P6Xad6a1/BqveaGyFKIfEFIaBUBItk801sDDpDaYc4gL00Xc\r\n"
"7lFuBHOZkxJYlss5QrGpuOEl9ZwUt5IrFLBdYaKqNHzNVC1pCPfb/JyH6Dr2HUxq\r\n"
"gxUwAQKBgQCcU6G2L8AG9d9c0UpOyL1tMvFe5Ttw0KjlQVdsh1MP6yigYo9DYuwu\r\n"
"bHFVW2r0dBTqegP2/KTOxKzaHfC1qf0RGDsUoJCNJrd1cwoCLG8P2EF4w3OBrKqv\r\n"
"8u4ytY0F+Vlanj5lm3TaoHSVF1+NWPyOTiwevIECGKwSxvlki4fDAA==\r\n"
"-----END RSA PRIVATE KEY-----\r\n";
const size_t mbedtls_test_cli_key_rsa_len = sizeof( mbedtls_test_cli_key_rsa );




const char mbedtls_test_cas_pem[] =

    "-----BEGIN CERTIFICATE-----\r\n" "MIIDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\n" "MA8GA1UEChMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n" "MTEwMjEyMTQ0NDAwWhcNMjEwMjEyMTQ0NDAwWjA7MQswCQYDVQQGEwJOTDERMA8G\r\n" "A1UEChMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r\n" "CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\n" "mdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n" "50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\n" "YMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\n" "R7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\n" "KNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\n" "gZUwgZIwDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUtFrkpbPe0lL2udWmlQ/rPrzH\r\n" "/f8wYwYDVR0jBFwwWoAUtFrkpbPe0lL2udWmlQ/rPrzH/f+hP6Q9MDsxCzAJBgNV\r\n" "BAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEZMBcGA1UEAxMQUG9sYXJTU0wgVGVz\r\n" "dCBDQYIBADANBgkqhkiG9w0BAQUFAAOCAQEAuP1U2ABUkIslsCfdlc2i94QHHYeJ\r\n" "SsR4EdgHtdciUI5I62J6Mom+Y0dT/7a+8S6MVMCZP6C5NyNyXw1GWY/YR82XTJ8H\r\n" "DBJiCTok5DbZ6SzaONBzdWHXwWwmi5vg1dxn7YxrM9d0IjxM27WNKs4sDQhZBQkF\r\n" "pjmfs2cb4oPl4Y9T9meTx/lvdkRYEug61Jfn6cA+qHpyPYdTH+UshITnmp5/Ztkf\r\n" "m/UTSLBNFNHesiTZeH31NcxYGdHSme9Nc/gfidRa0FLOCfWxRlFqAI47zG9jAQCZ\r\n" "7Z2mCGDNMhjQc+BYcdnl0lPXjdDK6V0qCg1dVewhUBcW5gZKzV7e9+DpVA==\r\n" "-----END CERTIFICATE-----\r\n"


    "-----BEGIN CERTIFICATE-----\r\n" "MIIDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\n" "MA8GA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\n" "MTcwNTA0MTY1NzAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQYDVQQGEwJOTDERMA8G\r\n" "A1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r\n" "CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\n" "mdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n" "50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\n" "YMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\n" "R7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\n" "KNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\n" "gZUwgZIwHQYDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r\n" "FLRa5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA8GA1UE\r\n" "CgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0GCAQAwDAYDVR0T\r\n" "BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHrTZMnnVMpde1io+voAtql7j\r\n" "4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2LMYoXsOxoL/RQK3iN7UKxV3MKPEr0w\r\n" "XQS+kKQqiT2bsfrjnWMVHZtUOMpm6FNqcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\n" "G6A6tUvQcr2ZyWfVg+mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\n" "ApH0CnB80bYJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\n" "n20NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r\n" "-----END CERTIFICATE-----\r\n"


    "-----BEGIN CERTIFICATE-----\r\n" "MIICUjCCAdegAwIBAgIJAMFD4n5iQ8zoMAoGCCqGSM49BAMCMD4xCzAJBgNVBAYT\r\n" "Ak5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\n" "QyBDQTAeFw0xMzA5MjQxNTQ5NDhaFw0yMzA5MjIxNTQ5NDhaMD4xCzAJBgNVBAYT\r\n" "Ak5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\n" "QyBDQTB2MBAGByqGSM49AgEGBSuBBAAiA2IABMPaKzRBN1gvh1b+/Im6KUNLTuBu\r\n" "ww5XUzM5WNRStJGVOQsj318XJGJI/BqVKc4sLYfCiFKAr9ZqqyHduNMcbli4yuiy\r\n" "aY7zQa0pw7RfdadHb9UZKVVpmlM7ILRmFmAzHqOBoDCBnTAdBgNVHQ4EFgQUnW0g\r\n" "JEkBPyvLeLUZvH4kydv7NnwwbgYDVR0jBGcwZYAUnW0gJEkBPyvLeLUZvH4kydv7\r\n" "NnyhQqRAMD4xCzAJBgNVBAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UE\r\n" "AxMTUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAwGA1UdEwQFMAMBAf8w\r\n" "CgYIKoZIzj0EAwIDaQAwZgIxAMO0YnNWKJUAfXgSJtJxexn4ipg+kv4znuR50v56\r\n" "t4d0PCu412mUC6Nnd7izvtE2MgIxAP1nnJQjZ8BWukszFQDG48wxCCyci9qpdSMv\r\n" "uCjn8pwUOkABXK8Mss90fzCfCEOtIA==\r\n" "-----END CERTIFICATE-----\r\n"

    "";
const size_t mbedtls_test_cas_pem_len = sizeof( mbedtls_test_cas_pem );

const char mbedtls_gmtest_cas_pem[] =
    "-----BEGIN CERTIFICATE-----\r\n"
    "MIIB7zCCAZSgAwIBAgIJAOhF4FmR3U0yMAoGCCqBHM9VAYN1MFIxCzAJBgNVBAYT\r\n"
    "AkNOMQswCQYDVQQIDAJCSjELMAkGA1UEBwwCQkoxDDAKBgNVBAoMA1BLVTELMAkG\r\n"
    "A1UECwwCQ0ExDjAMBgNVBAMMBVBLVUNBMB4XDTE5MTIwNDA3Mjc0MloXDTI5MTIw\r\n"
    "MTA3Mjc0MlowUjELMAkGA1UEBhMCQ04xCzAJBgNVBAgMAkJKMQswCQYDVQQHDAJC\r\n"
    "SjEMMAoGA1UECgwDUEtVMQswCQYDVQQLDAJDQTEOMAwGA1UEAwwFUEtVQ0EwWTAT\r\n"
    "BgcqhkjOPQIBBggqgRzPVQGCLQNCAATP+cgbvvCGWPQXljfsmVWib3dlfpwLvuas\r\n"
    "DUzDgl7oCkbCnVS7b3EW9yJvdM4bg5X9/fOmH8dgisWYVf8UQipYo1MwUTAdBgNV\r\n"
    "HQ4EFgQU/K7ldv2WnD20Ro18bYHZ8F4O1LIwHwYDVR0jBBgwFoAU/K7ldv2WnD20\r\n"
    "Ro18bYHZ8F4O1LIwDwYDVR0TAQH/BAUwAwEB/zAKBggqgRzPVQGDdQNJADBGAiEA\r\n"
    "lqPMTBTugdDlsv1LvGa1gZyGj4feY02E6u9CxbYJczICIQCaXCAKSx5yoogbReiy\r\n"
    "w9nH5oOKub5HEM11vGqOadL4Ew==\r\n"
    "-----END CERTIFICATE-----\r\n";

const size_t mbedtls_gmtest_cas_pem_len = sizeof( mbedtls_gmtest_cas_pem );

const char mbedtls_gmtest_srv_crt_enc[] =
    "-----BEGIN CERTIFICATE-----\r\n"
    "MIICGTCCAcCgAwIBAgIBBDAKBggqgRzPVQGDdTBSMQswCQYDVQQGEwJDTjELMAkG\r\n"
    "A1UECAwCQkoxCzAJBgNVBAcMAkJKMQwwCgYDVQQKDANQS1UxCzAJBgNVBAsMAkNB\r\n"
    "MQ4wDAYDVQQDDAVQS1VDQTAeFw0xOTEyMDQwNzI3NDJaFw0yMDEyMDMwNzI3NDJa\r\n"
    "ME8xCzAJBgNVBAYTAkNOMQswCQYDVQQIDAJCSjEMMAoGA1UECgwDUEtVMQwwCgYD\r\n"
    "VQQLDANFbmMxFzAVBgNVBAMMDnNlcnZlckB0aWguY29tMFkwEwYHKoZIzj0CAQYI\r\n"
    "KoEcz1UBgi0DQgAEMJ4Ud6a+svoMAY4Vly87J5ITEIRgmpnca4FcpmixJY+fnR49\r\n"
    "bdLwvfxM+gqiCQNExivEcHedZAvChucxI/MRMKOBiTCBhjAJBgNVHRMEAjAAMAsG\r\n"
    "A1UdDwQEAwIFIDAsBglghkgBhvhCAQ0EHxYdT3BlblNTTCBHZW5lcmF0ZWQgQ2Vy\r\n"
    "dGlmaWNhdGUwHQYDVR0OBBYEFA8ZI/K18lZU5Nb4+tCENGjkbfIOMB8GA1UdIwQY\r\n"
    "MBaAFPyu5Xb9lpw9tEaNfG2B2fBeDtSyMAoGCCqBHM9VAYN1A0cAMEQCIAavYvtH\r\n"
    "TwIL/r7SWnP9mNpGH10hwfngl8b2eA5NLt92AiBD5bKgEvLrrlUuDcTq6Eei7MAV\r\n"
    "uRQ+8+cd/QVeZg/rbw==\r\n"
    "-----END CERTIFICATE-----\r\n";

const char mbedtls_gmtest_srv_crt_dsa[] =
    "-----BEGIN CERTIFICATE-----\r\n"
    "MIICCzCCAbKgAwIBAgIBAzAKBggqgRzPVQGDdTBSMQswCQYDVQQGEwJDTjELMAkG\r\n"
    "A1UECAwCQkoxCzAJBgNVBAcMAkJKMQwwCgYDVQQKDANQS1UxCzAJBgNVBAsMAkNB\r\n"
    "MQ4wDAYDVQQDDAVQS1VDQTAeFw0xOTEyMDQwNzI3NDJaFw0yMDEyMDMwNzI3NDJa\r\n"
    "MFAxCzAJBgNVBAYTAkNOMQswCQYDVQQIDAJCSjEMMAoGA1UECgwDUEtVMQ0wCwYD\r\n"
    "VQQLDARTaWduMRcwFQYDVQQDDA5zZXJ2ZXJAdGloLmNvbTBZMBMGByqGSM49AgEG\r\n"
    "CCqBHM9VAYItA0IABLk1+qLcLi49qmMh1l93SyNiN250rrOlkiHxC1PcQjSMb7BT\r\n"
    "jq4AccJKBRk5P/F7Q4C4Lsakf89poEFBg6xrPwajezB5MAkGA1UdEwQCMAAwLAYJ\r\n"
    "YIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVkIENlcnRpZmljYXRlMB0GA1Ud\r\n"
    "DgQWBBRYTWSRFXCd/qRuLn1QyxwGiQJ3vDAfBgNVHSMEGDAWgBT8ruV2/ZacPbRG\r\n"
    "jXxtgdnwXg7UsjAKBggqgRzPVQGDdQNHADBEAiAYXuQL3R9j+LsyLvcLKvBIR+WM\r\n"
    "CEYzDN4cPyHR2e5JdQIgaSVlb0mnV1SP7+azzLpJ9Tb3kPQ3UgmHqCcijBKp8C8=\r\n"
    "-----END CERTIFICATE-----\r\n";

const char mbedtls_gmtest_srv_dsa_key_ec[] =
    "-----BEGIN EC PARAMETERS-----\r\n"
    "BggqgRzPVQGCLQ==\r\n"
    "-----END EC PARAMETERS-----\r\n"
    "-----BEGIN EC PRIVATE KEY-----\r\n"
    "MHcCAQEEIPaQnYHq52F5Xdeaw7GPOMH73ss3mC+Xmcs9puAHjBB3oAoGCCqBHM9V\r\n"
    "AYItoUQDQgAEuTX6otwuLj2qYyHWX3dLI2I3bnSus6WSIfELU9xCNIxvsFOOrgBx\r\n"
    "wkoFGTk/8XtDgLguxqR/z2mgQUGDrGs/Bg==\r\n"
    "-----END EC PRIVATE KEY-----\r\n";

const char mbedtls_gmtest_srv_enc_key_ec[] =
    "-----BEGIN EC PARAMETERS-----\r\n"
    "BggqgRzPVQGCLQ==\r\n"
    "-----END EC PARAMETERS-----\r\n"
    "-----BEGIN EC PRIVATE KEY-----\r\n"
    "MHcCAQEEIEj5leWGRWDv7RDCdyUKPl3ROtIWRoTiRyCV6jnUM+k0oAoGCCqBHM9V\r\n"
    "AYItoUQDQgAEMJ4Ud6a+svoMAY4Vly87J5ITEIRgmpnca4FcpmixJY+fnR49bdLw\r\n"
    "vfxM+gqiCQNExivEcHedZAvChucxI/MRMA==\r\n"
    "-----END EC PRIVATE KEY-----\r\n";

const char mbedtls_gmtest_cli_crt_dsa_ec[] =
    "-----BEGIN CERTIFICATE-----\r\n"
    "MIICDTCCAbKgAwIBAgIBATAKBggqgRzPVQGDdTBSMQswCQYDVQQGEwJDTjELMAkG\r\n"
    "A1UECAwCQkoxCzAJBgNVBAcMAkJKMQwwCgYDVQQKDANQS1UxCzAJBgNVBAsMAkNB\r\n"
    "MQ4wDAYDVQQDDAVQS1VDQTAeFw0xOTEyMDQwNzI3NDJaFw0yMDEyMDMwNzI3NDJa\r\n"
    "MFAxCzAJBgNVBAYTAkNOMQswCQYDVQQIDAJCSjEMMAoGA1UECgwDUEtVMQ0wCwYD\r\n"
    "VQQLDARTaWduMRcwFQYDVQQDDA5jbGllbnRAdGloLmNvbTBZMBMGByqGSM49AgEG\r\n"
    "CCqBHM9VAYItA0IABGLJ4wljhdWSBVjSuWUpwl+F2CeNDXuYxrl8ovo9MO8UW8nD\r\n"
    "Bu91RUlpRrN72uIv6fekzb13L7oSYXMfk0xK+n6jezB5MAkGA1UdEwQCMAAwLAYJ\r\n"
    "YIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVkIENlcnRpZmljYXRlMB0GA1Ud\r\n"
    "DgQWBBQNwv2qu+OpIs8+cfG4Cy8wsBsFFzAfBgNVHSMEGDAWgBT8ruV2/ZacPbRG\r\n"
    "jXxtgdnwXg7UsjAKBggqgRzPVQGDdQNJADBGAiEAhw0/8wOSQ9GAevQ9XEJ5BD7w\r\n"
    "vdZTa8KeFk8D5eRbVqQCIQCh04uUmlbG0TaXBynH0cjxYOc25pd/nGBMfZ3K6GYW\r\n"
    "QQ==\r\n"
    "-----END CERTIFICATE-----\r\n";

const char mbedtls_gmtest_cli_crt_enc_ec[] =
    "-----BEGIN CERTIFICATE-----\r\n"
    "MIICGzCCAcCgAwIBAgIBAjAKBggqgRzPVQGDdTBSMQswCQYDVQQGEwJDTjELMAkG\r\n"
    "A1UECAwCQkoxCzAJBgNVBAcMAkJKMQwwCgYDVQQKDANQS1UxCzAJBgNVBAsMAkNB\r\n"
    "MQ4wDAYDVQQDDAVQS1VDQTAeFw0xOTEyMDQwNzI3NDJaFw0yMDEyMDMwNzI3NDJa\r\n"
    "ME8xCzAJBgNVBAYTAkNOMQswCQYDVQQIDAJCSjEMMAoGA1UECgwDUEtVMQwwCgYD\r\n"
    "VQQLDANFbmMxFzAVBgNVBAMMDmNsaWVudEB0aWguY29tMFkwEwYHKoZIzj0CAQYI\r\n"
    "KoEcz1UBgi0DQgAETM+h8Jr939NxYRis5DrwmAyUryY5B7ax1FvBnoL1ZtMSLtRv\r\n"
    "k5s1pMzmC6rh65qCdwu7AuXEl0ZTdzqcN4U9waOBiTCBhjAJBgNVHRMEAjAAMAsG\r\n"
    "A1UdDwQEAwIFIDAsBglghkgBhvhCAQ0EHxYdT3BlblNTTCBHZW5lcmF0ZWQgQ2Vy\r\n"
    "dGlmaWNhdGUwHQYDVR0OBBYEFH4gHmAvbzdkz/ZXmoc5vblDGJ6/MB8GA1UdIwQY\r\n"
    "MBaAFPyu5Xb9lpw9tEaNfG2B2fBeDtSyMAoGCCqBHM9VAYN1A0kAMEYCIQDSJYhM\r\n"
    "K7COqAPENs5WEFL3noZFxpU9QmqaGsTBrFrOLAIhALMGKzDdTQJGphy3B/Q/fpWc\r\n"
    "DM/t6KpGBISfCvF7EaMm\r\n"
    "-----END CERTIFICATE-----\r\n";

const char mbedtls_gmtest_cli_dsa_key_ec[] =
    "-----BEGIN EC PARAMETERS-----\r\n"
    "BggqgRzPVQGCLQ==\r\n"
    "-----END EC PARAMETERS-----\r\n"
    "-----BEGIN EC PRIVATE KEY-----\r\n"
    "MHcCAQEEIOlUTjbC8P0ZCbXDM0bO6PnTdDf/1JBtN6YfAWlsWtuloAoGCCqBHM9V\r\n"
    "AYItoUQDQgAEYsnjCWOF1ZIFWNK5ZSnCX4XYJ40Ne5jGuXyi+j0w7xRbycMG73VF\r\n"
    "SWlGs3va4i/p96TNvXcvuhJhcx+TTEr6fg==\r\n"
    "-----END EC PRIVATE KEY-----\r\n";

const char mbedtls_gmtest_cli_enc_key_ec[] =
    "-----BEGIN EC PARAMETERS-----\r\n"
    "BggqgRzPVQGCLQ==\r\n"
    "-----END EC PARAMETERS-----\r\n"
    "-----BEGIN EC PRIVATE KEY-----\r\n"
    "MHcCAQEEIJfodpT4EI6cRca16MDOr+S9oMjrZy7XdPE7WqyceA78oAoGCCqBHM9V\r\n"
    "AYItoUQDQgAETM+h8Jr939NxYRis5DrwmAyUryY5B7ax1FvBnoL1ZtMSLtRvk5s1\r\n"
    "pMzmC6rh65qCdwu7AuXEl0ZTdzqcN4U9wQ==\r\n"
    "-----END EC PRIVATE KEY-----\r\n";




const char * mbedtls_test_cas[] = {

    mbedtls_test_ca_crt_rsa_sha1,


    mbedtls_test_ca_crt_rsa_sha256,


    mbedtls_test_ca_crt_ec,

    ((void *)0)
};
const size_t mbedtls_test_cas_len[] = {

    sizeof( mbedtls_test_ca_crt_rsa_sha1 ),


    sizeof( mbedtls_test_ca_crt_rsa_sha256 ),


    sizeof( mbedtls_test_ca_crt_ec ),

    0
};


const char *mbedtls_test_ca_crt = mbedtls_test_ca_crt_rsa;
const char *mbedtls_test_ca_key = mbedtls_test_ca_key_rsa;
const char *mbedtls_test_ca_pwd = mbedtls_test_ca_pwd_rsa;
const char *mbedtls_test_srv_crt = mbedtls_test_srv_crt_rsa;
const char *mbedtls_test_srv_key = mbedtls_test_srv_key_rsa;
const char *mbedtls_test_cli_crt = mbedtls_test_cli_crt_rsa;
const char *mbedtls_test_cli_key = mbedtls_test_cli_key_rsa;
const size_t mbedtls_test_ca_crt_len = sizeof( mbedtls_test_ca_crt_rsa );
const size_t mbedtls_test_ca_key_len = sizeof( mbedtls_test_ca_key_rsa );
const size_t mbedtls_test_ca_pwd_len = sizeof( mbedtls_test_ca_pwd_rsa ) - 1;
const size_t mbedtls_test_srv_crt_len = sizeof( mbedtls_test_srv_crt_rsa );
const size_t mbedtls_test_srv_key_len = sizeof( mbedtls_test_srv_key_rsa );
const size_t mbedtls_test_cli_crt_len = sizeof( mbedtls_test_cli_crt_rsa );
const size_t mbedtls_test_cli_key_len = sizeof( mbedtls_test_cli_key_rsa );
# 527 "../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c"
const char *mbedtls_gmtest_srv_crt_1 = mbedtls_gmtest_srv_crt_dsa;
const char *mbedtls_gmtest_srv_crt_2 = mbedtls_gmtest_srv_crt_enc;

const size_t mbedtls_gmtest_srv_crt_len1 = sizeof( mbedtls_gmtest_srv_crt_dsa );
const size_t mbedtls_gmtest_srv_crt_len2 = sizeof( mbedtls_gmtest_srv_crt_enc );

const char *mbedtls_gmtest_srv_dsa_key = mbedtls_gmtest_srv_dsa_key_ec;
const size_t mbedtls_gmtest_srv_dsa_key_len = sizeof( mbedtls_gmtest_srv_dsa_key_ec );
const char *mbedtls_gmtest_srv_enc_key = mbedtls_gmtest_srv_enc_key_ec;
const size_t mbedtls_gmtest_srv_enc_key_len = sizeof( mbedtls_gmtest_srv_enc_key_ec );


const char *mbedtls_gmtest_cli_crt_dsa = mbedtls_gmtest_cli_crt_dsa_ec;
const char *mbedtls_gmtest_cli_crt_enc = mbedtls_gmtest_cli_crt_enc_ec;

const size_t mbedtls_gmtest_cli_crt_dsa_len = sizeof( mbedtls_gmtest_cli_crt_dsa_ec );
const size_t mbedtls_gmtest_cli_crt_enc_len = sizeof( mbedtls_gmtest_cli_crt_enc_ec );

const char *mbedtls_gmtest_cli_dsa_key = mbedtls_gmtest_cli_dsa_key_ec;
const size_t mbedtls_gmtest_cli_dsa_key_len = sizeof( mbedtls_gmtest_cli_dsa_key_ec );
const char *mbedtls_gmtest_cli_enc_key = mbedtls_gmtest_cli_enc_key_ec;
const size_t mbedtls_gmtest_cli_enc_key_len = sizeof( mbedtls_gmtest_cli_enc_key_ec );
