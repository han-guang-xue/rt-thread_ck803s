# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
# 25 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
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
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c" 2




# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h" 1
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h"
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
# 27 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ecp.h" 2
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
# 31 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c" 2

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
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c" 2
# 89 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
static const mbedtls_mpi_uint secp192r1_p[] = {
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp192r1_a[] = {
    ( (mbedtls_mpi_uint) 0xFC << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};

static const mbedtls_mpi_uint secp192r1_b[] = {
    ( (mbedtls_mpi_uint) 0xB1 << 0 ) | ( (mbedtls_mpi_uint) 0xB9 << 8 ) | ( (mbedtls_mpi_uint) 0x46 << 16 ) | ( (mbedtls_mpi_uint) 0xC1 << 24 ), ( (mbedtls_mpi_uint) 0xEC << 0 ) | ( (mbedtls_mpi_uint) 0xDE << 8 ) | ( (mbedtls_mpi_uint) 0xB8 << 16 ) | ( (mbedtls_mpi_uint) 0xFE << 24 ),
    ( (mbedtls_mpi_uint) 0x49 << 0 ) | ( (mbedtls_mpi_uint) 0x30 << 8 ) | ( (mbedtls_mpi_uint) 0x24 << 16 ) | ( (mbedtls_mpi_uint) 0x72 << 24 ), ( (mbedtls_mpi_uint) 0xAB << 0 ) | ( (mbedtls_mpi_uint) 0xE9 << 8 ) | ( (mbedtls_mpi_uint) 0xA7 << 16 ) | ( (mbedtls_mpi_uint) 0x0F << 24 ),
    ( (mbedtls_mpi_uint) 0xE7 << 0 ) | ( (mbedtls_mpi_uint) 0x80 << 8 ) | ( (mbedtls_mpi_uint) 0x9C << 16 ) | ( (mbedtls_mpi_uint) 0xE5 << 24 ), ( (mbedtls_mpi_uint) 0x19 << 0 ) | ( (mbedtls_mpi_uint) 0x05 << 8 ) | ( (mbedtls_mpi_uint) 0x21 << 16 ) | ( (mbedtls_mpi_uint) 0x64 << 24 ),
};
static const mbedtls_mpi_uint secp192r1_gx[] = {
    ( (mbedtls_mpi_uint) 0x12 << 0 ) | ( (mbedtls_mpi_uint) 0x10 << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0x82 << 24 ), ( (mbedtls_mpi_uint) 0xFD << 0 ) | ( (mbedtls_mpi_uint) 0x0A << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xF4 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x88 << 8 ) | ( (mbedtls_mpi_uint) 0xA1 << 16 ) | ( (mbedtls_mpi_uint) 0x43 << 24 ), ( (mbedtls_mpi_uint) 0xEB << 0 ) | ( (mbedtls_mpi_uint) 0x20 << 8 ) | ( (mbedtls_mpi_uint) 0xBF << 16 ) | ( (mbedtls_mpi_uint) 0x7C << 24 ),
    ( (mbedtls_mpi_uint) 0xF6 << 0 ) | ( (mbedtls_mpi_uint) 0x90 << 8 ) | ( (mbedtls_mpi_uint) 0x30 << 16 ) | ( (mbedtls_mpi_uint) 0xB0 << 24 ), ( (mbedtls_mpi_uint) 0x0E << 0 ) | ( (mbedtls_mpi_uint) 0xA8 << 8 ) | ( (mbedtls_mpi_uint) 0x8D << 16 ) | ( (mbedtls_mpi_uint) 0x18 << 24 ),
};
static const mbedtls_mpi_uint secp192r1_gy[] = {
    ( (mbedtls_mpi_uint) 0x11 << 0 ) | ( (mbedtls_mpi_uint) 0x48 << 8 ) | ( (mbedtls_mpi_uint) 0x79 << 16 ) | ( (mbedtls_mpi_uint) 0x1E << 24 ), ( (mbedtls_mpi_uint) 0xA1 << 0 ) | ( (mbedtls_mpi_uint) 0x77 << 8 ) | ( (mbedtls_mpi_uint) 0xF9 << 16 ) | ( (mbedtls_mpi_uint) 0x73 << 24 ),
    ( (mbedtls_mpi_uint) 0xD5 << 0 ) | ( (mbedtls_mpi_uint) 0xCD << 8 ) | ( (mbedtls_mpi_uint) 0x24 << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ), ( (mbedtls_mpi_uint) 0xED << 0 ) | ( (mbedtls_mpi_uint) 0x11 << 8 ) | ( (mbedtls_mpi_uint) 0x10 << 16 ) | ( (mbedtls_mpi_uint) 0x63 << 24 ),
    ( (mbedtls_mpi_uint) 0x78 << 0 ) | ( (mbedtls_mpi_uint) 0xDA << 8 ) | ( (mbedtls_mpi_uint) 0xC8 << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x95 << 0 ) | ( (mbedtls_mpi_uint) 0x2B << 8 ) | ( (mbedtls_mpi_uint) 0x19 << 16 ) | ( (mbedtls_mpi_uint) 0x07 << 24 ),
};
static const mbedtls_mpi_uint secp192r1_n[] = {
    ( (mbedtls_mpi_uint) 0x31 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0xD2 << 16 ) | ( (mbedtls_mpi_uint) 0xB4 << 24 ), ( (mbedtls_mpi_uint) 0xB1 << 0 ) | ( (mbedtls_mpi_uint) 0xC9 << 8 ) | ( (mbedtls_mpi_uint) 0x6B << 16 ) | ( (mbedtls_mpi_uint) 0x14 << 24 ),
    ( (mbedtls_mpi_uint) 0x36 << 0 ) | ( (mbedtls_mpi_uint) 0xF8 << 8 ) | ( (mbedtls_mpi_uint) 0xDE << 16 ) | ( (mbedtls_mpi_uint) 0x99 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};






static const mbedtls_mpi_uint secp224r1_p[] = {
    ( (mbedtls_mpi_uint) 0x01 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp224r1_a[] = {
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};

static const mbedtls_mpi_uint secp224r1_b[] = {
    ( (mbedtls_mpi_uint) 0xB4 << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0x55 << 16 ) | ( (mbedtls_mpi_uint) 0x23 << 24 ), ( (mbedtls_mpi_uint) 0x43 << 0 ) | ( (mbedtls_mpi_uint) 0x39 << 8 ) | ( (mbedtls_mpi_uint) 0x0B << 16 ) | ( (mbedtls_mpi_uint) 0x27 << 24 ),
    ( (mbedtls_mpi_uint) 0xBA << 0 ) | ( (mbedtls_mpi_uint) 0xD8 << 8 ) | ( (mbedtls_mpi_uint) 0xBF << 16 ) | ( (mbedtls_mpi_uint) 0xD7 << 24 ), ( (mbedtls_mpi_uint) 0xB7 << 0 ) | ( (mbedtls_mpi_uint) 0xB0 << 8 ) | ( (mbedtls_mpi_uint) 0x44 << 16 ) | ( (mbedtls_mpi_uint) 0x50 << 24 ),
    ( (mbedtls_mpi_uint) 0x56 << 0 ) | ( (mbedtls_mpi_uint) 0x32 << 8 ) | ( (mbedtls_mpi_uint) 0x41 << 16 ) | ( (mbedtls_mpi_uint) 0xF5 << 24 ), ( (mbedtls_mpi_uint) 0xAB << 0 ) | ( (mbedtls_mpi_uint) 0xB3 << 8 ) | ( (mbedtls_mpi_uint) 0x04 << 16 ) | ( (mbedtls_mpi_uint) 0x0C << 24 ),
    ( (mbedtls_mpi_uint) 0x85 << 0 ) | ( (mbedtls_mpi_uint) 0x0A << 8 ) | ( (mbedtls_mpi_uint) 0x05 << 16 ) | ( (mbedtls_mpi_uint) 0xB4 << 24 ),
};
static const mbedtls_mpi_uint secp224r1_gx[] = {
    ( (mbedtls_mpi_uint) 0x21 << 0 ) | ( (mbedtls_mpi_uint) 0x1D << 8 ) | ( (mbedtls_mpi_uint) 0x5C << 16 ) | ( (mbedtls_mpi_uint) 0x11 << 24 ), ( (mbedtls_mpi_uint) 0xD6 << 0 ) | ( (mbedtls_mpi_uint) 0x80 << 8 ) | ( (mbedtls_mpi_uint) 0x32 << 16 ) | ( (mbedtls_mpi_uint) 0x34 << 24 ),
    ( (mbedtls_mpi_uint) 0x22 << 0 ) | ( (mbedtls_mpi_uint) 0x11 << 8 ) | ( (mbedtls_mpi_uint) 0xC2 << 16 ) | ( (mbedtls_mpi_uint) 0x56 << 24 ), ( (mbedtls_mpi_uint) 0xD3 << 0 ) | ( (mbedtls_mpi_uint) 0xC1 << 8 ) | ( (mbedtls_mpi_uint) 0x03 << 16 ) | ( (mbedtls_mpi_uint) 0x4A << 24 ),
    ( (mbedtls_mpi_uint) 0xB9 << 0 ) | ( (mbedtls_mpi_uint) 0x90 << 8 ) | ( (mbedtls_mpi_uint) 0x13 << 16 ) | ( (mbedtls_mpi_uint) 0x32 << 24 ), ( (mbedtls_mpi_uint) 0x7F << 0 ) | ( (mbedtls_mpi_uint) 0xBF << 8 ) | ( (mbedtls_mpi_uint) 0xB4 << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ),
    ( (mbedtls_mpi_uint) 0xBD << 0 ) | ( (mbedtls_mpi_uint) 0x0C << 8 ) | ( (mbedtls_mpi_uint) 0x0E << 16 ) | ( (mbedtls_mpi_uint) 0xB7 << 24 ),
};
static const mbedtls_mpi_uint secp224r1_gy[] = {
    ( (mbedtls_mpi_uint) 0x34 << 0 ) | ( (mbedtls_mpi_uint) 0x7E << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x85 << 24 ), ( (mbedtls_mpi_uint) 0x99 << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0xD5 << 16 ) | ( (mbedtls_mpi_uint) 0x44 << 24 ),
    ( (mbedtls_mpi_uint) 0x64 << 0 ) | ( (mbedtls_mpi_uint) 0x47 << 8 ) | ( (mbedtls_mpi_uint) 0x07 << 16 ) | ( (mbedtls_mpi_uint) 0x5A << 24 ), ( (mbedtls_mpi_uint) 0xA0 << 0 ) | ( (mbedtls_mpi_uint) 0x75 << 8 ) | ( (mbedtls_mpi_uint) 0x43 << 16 ) | ( (mbedtls_mpi_uint) 0xCD << 24 ),
    ( (mbedtls_mpi_uint) 0xE6 << 0 ) | ( (mbedtls_mpi_uint) 0xDF << 8 ) | ( (mbedtls_mpi_uint) 0x22 << 16 ) | ( (mbedtls_mpi_uint) 0x4C << 24 ), ( (mbedtls_mpi_uint) 0xFB << 0 ) | ( (mbedtls_mpi_uint) 0x23 << 8 ) | ( (mbedtls_mpi_uint) 0xF7 << 16 ) | ( (mbedtls_mpi_uint) 0xB5 << 24 ),
    ( (mbedtls_mpi_uint) 0x88 << 0 ) | ( (mbedtls_mpi_uint) 0x63 << 8 ) | ( (mbedtls_mpi_uint) 0x37 << 16 ) | ( (mbedtls_mpi_uint) 0xBD << 24 ),
};
static const mbedtls_mpi_uint secp224r1_n[] = {
    ( (mbedtls_mpi_uint) 0x3D << 0 ) | ( (mbedtls_mpi_uint) 0x2A << 8 ) | ( (mbedtls_mpi_uint) 0x5C << 16 ) | ( (mbedtls_mpi_uint) 0x5C << 24 ), ( (mbedtls_mpi_uint) 0x45 << 0 ) | ( (mbedtls_mpi_uint) 0x29 << 8 ) | ( (mbedtls_mpi_uint) 0xDD << 16 ) | ( (mbedtls_mpi_uint) 0x13 << 24 ),
    ( (mbedtls_mpi_uint) 0x3E << 0 ) | ( (mbedtls_mpi_uint) 0xF0 << 8 ) | ( (mbedtls_mpi_uint) 0xB8 << 16 ) | ( (mbedtls_mpi_uint) 0xE0 << 24 ), ( (mbedtls_mpi_uint) 0xA2 << 0 ) | ( (mbedtls_mpi_uint) 0x16 << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};






static const mbedtls_mpi_uint secp256r1_p[] = {
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x01 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp256r1_a[] = {
    ( (mbedtls_mpi_uint) 0xFC << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x01 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp256r1_b[] = {
    ( (mbedtls_mpi_uint) 0x4B << 0 ) | ( (mbedtls_mpi_uint) 0x60 << 8 ) | ( (mbedtls_mpi_uint) 0xD2 << 16 ) | ( (mbedtls_mpi_uint) 0x27 << 24 ), ( (mbedtls_mpi_uint) 0x3E << 0 ) | ( (mbedtls_mpi_uint) 0x3C << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x3B << 24 ),
    ( (mbedtls_mpi_uint) 0xF6 << 0 ) | ( (mbedtls_mpi_uint) 0xB0 << 8 ) | ( (mbedtls_mpi_uint) 0x53 << 16 ) | ( (mbedtls_mpi_uint) 0xCC << 24 ), ( (mbedtls_mpi_uint) 0xB0 << 0 ) | ( (mbedtls_mpi_uint) 0x06 << 8 ) | ( (mbedtls_mpi_uint) 0x1D << 16 ) | ( (mbedtls_mpi_uint) 0x65 << 24 ),
    ( (mbedtls_mpi_uint) 0xBC << 0 ) | ( (mbedtls_mpi_uint) 0x86 << 8 ) | ( (mbedtls_mpi_uint) 0x98 << 16 ) | ( (mbedtls_mpi_uint) 0x76 << 24 ), ( (mbedtls_mpi_uint) 0x55 << 0 ) | ( (mbedtls_mpi_uint) 0xBD << 8 ) | ( (mbedtls_mpi_uint) 0xEB << 16 ) | ( (mbedtls_mpi_uint) 0xB3 << 24 ),
    ( (mbedtls_mpi_uint) 0xE7 << 0 ) | ( (mbedtls_mpi_uint) 0x93 << 8 ) | ( (mbedtls_mpi_uint) 0x3A << 16 ) | ( (mbedtls_mpi_uint) 0xAA << 24 ), ( (mbedtls_mpi_uint) 0xD8 << 0 ) | ( (mbedtls_mpi_uint) 0x35 << 8 ) | ( (mbedtls_mpi_uint) 0xC6 << 16 ) | ( (mbedtls_mpi_uint) 0x5A << 24 ),
};
static const mbedtls_mpi_uint secp256r1_gx[] = {
    ( (mbedtls_mpi_uint) 0x96 << 0 ) | ( (mbedtls_mpi_uint) 0xC2 << 8 ) | ( (mbedtls_mpi_uint) 0x98 << 16 ) | ( (mbedtls_mpi_uint) 0xD8 << 24 ), ( (mbedtls_mpi_uint) 0x45 << 0 ) | ( (mbedtls_mpi_uint) 0x39 << 8 ) | ( (mbedtls_mpi_uint) 0xA1 << 16 ) | ( (mbedtls_mpi_uint) 0xF4 << 24 ),
    ( (mbedtls_mpi_uint) 0xA0 << 0 ) | ( (mbedtls_mpi_uint) 0x33 << 8 ) | ( (mbedtls_mpi_uint) 0xEB << 16 ) | ( (mbedtls_mpi_uint) 0x2D << 24 ), ( (mbedtls_mpi_uint) 0x81 << 0 ) | ( (mbedtls_mpi_uint) 0x7D << 8 ) | ( (mbedtls_mpi_uint) 0x03 << 16 ) | ( (mbedtls_mpi_uint) 0x77 << 24 ),
    ( (mbedtls_mpi_uint) 0xF2 << 0 ) | ( (mbedtls_mpi_uint) 0x40 << 8 ) | ( (mbedtls_mpi_uint) 0xA4 << 16 ) | ( (mbedtls_mpi_uint) 0x63 << 24 ), ( (mbedtls_mpi_uint) 0xE5 << 0 ) | ( (mbedtls_mpi_uint) 0xE6 << 8 ) | ( (mbedtls_mpi_uint) 0xBC << 16 ) | ( (mbedtls_mpi_uint) 0xF8 << 24 ),
    ( (mbedtls_mpi_uint) 0x47 << 0 ) | ( (mbedtls_mpi_uint) 0x42 << 8 ) | ( (mbedtls_mpi_uint) 0x2C << 16 ) | ( (mbedtls_mpi_uint) 0xE1 << 24 ), ( (mbedtls_mpi_uint) 0xF2 << 0 ) | ( (mbedtls_mpi_uint) 0xD1 << 8 ) | ( (mbedtls_mpi_uint) 0x17 << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ),
};
static const mbedtls_mpi_uint secp256r1_gy[] = {
    ( (mbedtls_mpi_uint) 0xF5 << 0 ) | ( (mbedtls_mpi_uint) 0x51 << 8 ) | ( (mbedtls_mpi_uint) 0xBF << 16 ) | ( (mbedtls_mpi_uint) 0x37 << 24 ), ( (mbedtls_mpi_uint) 0x68 << 0 ) | ( (mbedtls_mpi_uint) 0x40 << 8 ) | ( (mbedtls_mpi_uint) 0xB6 << 16 ) | ( (mbedtls_mpi_uint) 0xCB << 24 ),
    ( (mbedtls_mpi_uint) 0xCE << 0 ) | ( (mbedtls_mpi_uint) 0x5E << 8 ) | ( (mbedtls_mpi_uint) 0x31 << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ), ( (mbedtls_mpi_uint) 0x57 << 0 ) | ( (mbedtls_mpi_uint) 0x33 << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x2B << 24 ),
    ( (mbedtls_mpi_uint) 0x16 << 0 ) | ( (mbedtls_mpi_uint) 0x9E << 8 ) | ( (mbedtls_mpi_uint) 0x0F << 16 ) | ( (mbedtls_mpi_uint) 0x7C << 24 ), ( (mbedtls_mpi_uint) 0x4A << 0 ) | ( (mbedtls_mpi_uint) 0xEB << 8 ) | ( (mbedtls_mpi_uint) 0xE7 << 16 ) | ( (mbedtls_mpi_uint) 0x8E << 24 ),
    ( (mbedtls_mpi_uint) 0x9B << 0 ) | ( (mbedtls_mpi_uint) 0x7F << 8 ) | ( (mbedtls_mpi_uint) 0x1A << 16 ) | ( (mbedtls_mpi_uint) 0xFE << 24 ), ( (mbedtls_mpi_uint) 0xE2 << 0 ) | ( (mbedtls_mpi_uint) 0x42 << 8 ) | ( (mbedtls_mpi_uint) 0xE3 << 16 ) | ( (mbedtls_mpi_uint) 0x4F << 24 ),
};
static const mbedtls_mpi_uint secp256r1_n[] = {
    ( (mbedtls_mpi_uint) 0x51 << 0 ) | ( (mbedtls_mpi_uint) 0x25 << 8 ) | ( (mbedtls_mpi_uint) 0x63 << 16 ) | ( (mbedtls_mpi_uint) 0xFC << 24 ), ( (mbedtls_mpi_uint) 0xC2 << 0 ) | ( (mbedtls_mpi_uint) 0xCA << 8 ) | ( (mbedtls_mpi_uint) 0xB9 << 16 ) | ( (mbedtls_mpi_uint) 0xF3 << 24 ),
    ( (mbedtls_mpi_uint) 0x84 << 0 ) | ( (mbedtls_mpi_uint) 0x9E << 8 ) | ( (mbedtls_mpi_uint) 0x17 << 16 ) | ( (mbedtls_mpi_uint) 0xA7 << 24 ), ( (mbedtls_mpi_uint) 0xAD << 0 ) | ( (mbedtls_mpi_uint) 0xFA << 8 ) | ( (mbedtls_mpi_uint) 0xE6 << 16 ) | ( (mbedtls_mpi_uint) 0xBC << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};






static const mbedtls_mpi_uint secp384r1_p[] = {
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp384r1_a[] = {
    ( (mbedtls_mpi_uint) 0xFC << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};

static const mbedtls_mpi_uint secp384r1_b[] = {
    ( (mbedtls_mpi_uint) 0xEF << 0 ) | ( (mbedtls_mpi_uint) 0x2A << 8 ) | ( (mbedtls_mpi_uint) 0xEC << 16 ) | ( (mbedtls_mpi_uint) 0xD3 << 24 ), ( (mbedtls_mpi_uint) 0xED << 0 ) | ( (mbedtls_mpi_uint) 0xC8 << 8 ) | ( (mbedtls_mpi_uint) 0x85 << 16 ) | ( (mbedtls_mpi_uint) 0x2A << 24 ),
    ( (mbedtls_mpi_uint) 0x9D << 0 ) | ( (mbedtls_mpi_uint) 0xD1 << 8 ) | ( (mbedtls_mpi_uint) 0x2E << 16 ) | ( (mbedtls_mpi_uint) 0x8A << 24 ), ( (mbedtls_mpi_uint) 0x8D << 0 ) | ( (mbedtls_mpi_uint) 0x39 << 8 ) | ( (mbedtls_mpi_uint) 0x56 << 16 ) | ( (mbedtls_mpi_uint) 0xC6 << 24 ),
    ( (mbedtls_mpi_uint) 0x5A << 0 ) | ( (mbedtls_mpi_uint) 0x87 << 8 ) | ( (mbedtls_mpi_uint) 0x13 << 16 ) | ( (mbedtls_mpi_uint) 0x50 << 24 ), ( (mbedtls_mpi_uint) 0x8F << 0 ) | ( (mbedtls_mpi_uint) 0x08 << 8 ) | ( (mbedtls_mpi_uint) 0x14 << 16 ) | ( (mbedtls_mpi_uint) 0x03 << 24 ),
    ( (mbedtls_mpi_uint) 0x12 << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0x81 << 16 ) | ( (mbedtls_mpi_uint) 0xFE << 24 ), ( (mbedtls_mpi_uint) 0x6E << 0 ) | ( (mbedtls_mpi_uint) 0x9C << 8 ) | ( (mbedtls_mpi_uint) 0x1D << 16 ) | ( (mbedtls_mpi_uint) 0x18 << 24 ),
    ( (mbedtls_mpi_uint) 0x19 << 0 ) | ( (mbedtls_mpi_uint) 0x2D << 8 ) | ( (mbedtls_mpi_uint) 0xF8 << 16 ) | ( (mbedtls_mpi_uint) 0xE3 << 24 ), ( (mbedtls_mpi_uint) 0x6B << 0 ) | ( (mbedtls_mpi_uint) 0x05 << 8 ) | ( (mbedtls_mpi_uint) 0x8E << 16 ) | ( (mbedtls_mpi_uint) 0x98 << 24 ),
    ( (mbedtls_mpi_uint) 0xE4 << 0 ) | ( (mbedtls_mpi_uint) 0xE7 << 8 ) | ( (mbedtls_mpi_uint) 0x3E << 16 ) | ( (mbedtls_mpi_uint) 0xE2 << 24 ), ( (mbedtls_mpi_uint) 0xA7 << 0 ) | ( (mbedtls_mpi_uint) 0x2F << 8 ) | ( (mbedtls_mpi_uint) 0x31 << 16 ) | ( (mbedtls_mpi_uint) 0xB3 << 24 ),
};
static const mbedtls_mpi_uint secp384r1_gx[] = {
    ( (mbedtls_mpi_uint) 0xB7 << 0 ) | ( (mbedtls_mpi_uint) 0x0A << 8 ) | ( (mbedtls_mpi_uint) 0x76 << 16 ) | ( (mbedtls_mpi_uint) 0x72 << 24 ), ( (mbedtls_mpi_uint) 0x38 << 0 ) | ( (mbedtls_mpi_uint) 0x5E << 8 ) | ( (mbedtls_mpi_uint) 0x54 << 16 ) | ( (mbedtls_mpi_uint) 0x3A << 24 ),
    ( (mbedtls_mpi_uint) 0x6C << 0 ) | ( (mbedtls_mpi_uint) 0x29 << 8 ) | ( (mbedtls_mpi_uint) 0x55 << 16 ) | ( (mbedtls_mpi_uint) 0xBF << 24 ), ( (mbedtls_mpi_uint) 0x5D << 0 ) | ( (mbedtls_mpi_uint) 0xF2 << 8 ) | ( (mbedtls_mpi_uint) 0x02 << 16 ) | ( (mbedtls_mpi_uint) 0x55 << 24 ),
    ( (mbedtls_mpi_uint) 0x38 << 0 ) | ( (mbedtls_mpi_uint) 0x2A << 8 ) | ( (mbedtls_mpi_uint) 0x54 << 16 ) | ( (mbedtls_mpi_uint) 0x82 << 24 ), ( (mbedtls_mpi_uint) 0xE0 << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0xF7 << 16 ) | ( (mbedtls_mpi_uint) 0x59 << 24 ),
    ( (mbedtls_mpi_uint) 0x98 << 0 ) | ( (mbedtls_mpi_uint) 0x9B << 8 ) | ( (mbedtls_mpi_uint) 0xA7 << 16 ) | ( (mbedtls_mpi_uint) 0x8B << 24 ), ( (mbedtls_mpi_uint) 0x62 << 0 ) | ( (mbedtls_mpi_uint) 0x3B << 8 ) | ( (mbedtls_mpi_uint) 0x1D << 16 ) | ( (mbedtls_mpi_uint) 0x6E << 24 ),
    ( (mbedtls_mpi_uint) 0x74 << 0 ) | ( (mbedtls_mpi_uint) 0xAD << 8 ) | ( (mbedtls_mpi_uint) 0x20 << 16 ) | ( (mbedtls_mpi_uint) 0xF3 << 24 ), ( (mbedtls_mpi_uint) 0x1E << 0 ) | ( (mbedtls_mpi_uint) 0xC7 << 8 ) | ( (mbedtls_mpi_uint) 0xB1 << 16 ) | ( (mbedtls_mpi_uint) 0x8E << 24 ),
    ( (mbedtls_mpi_uint) 0x37 << 0 ) | ( (mbedtls_mpi_uint) 0x05 << 8 ) | ( (mbedtls_mpi_uint) 0x8B << 16 ) | ( (mbedtls_mpi_uint) 0xBE << 24 ), ( (mbedtls_mpi_uint) 0x22 << 0 ) | ( (mbedtls_mpi_uint) 0xCA << 8 ) | ( (mbedtls_mpi_uint) 0x87 << 16 ) | ( (mbedtls_mpi_uint) 0xAA << 24 ),
};
static const mbedtls_mpi_uint secp384r1_gy[] = {
    ( (mbedtls_mpi_uint) 0x5F << 0 ) | ( (mbedtls_mpi_uint) 0x0E << 8 ) | ( (mbedtls_mpi_uint) 0xEA << 16 ) | ( (mbedtls_mpi_uint) 0x90 << 24 ), ( (mbedtls_mpi_uint) 0x7C << 0 ) | ( (mbedtls_mpi_uint) 0x1D << 8 ) | ( (mbedtls_mpi_uint) 0x43 << 16 ) | ( (mbedtls_mpi_uint) 0x7A << 24 ),
    ( (mbedtls_mpi_uint) 0x9D << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0x7E << 16 ) | ( (mbedtls_mpi_uint) 0x1D << 24 ), ( (mbedtls_mpi_uint) 0xCE << 0 ) | ( (mbedtls_mpi_uint) 0xB1 << 8 ) | ( (mbedtls_mpi_uint) 0x60 << 16 ) | ( (mbedtls_mpi_uint) 0x0A << 24 ),
    ( (mbedtls_mpi_uint) 0xC0 << 0 ) | ( (mbedtls_mpi_uint) 0xB8 << 8 ) | ( (mbedtls_mpi_uint) 0xF0 << 16 ) | ( (mbedtls_mpi_uint) 0xB5 << 24 ), ( (mbedtls_mpi_uint) 0x13 << 0 ) | ( (mbedtls_mpi_uint) 0x31 << 8 ) | ( (mbedtls_mpi_uint) 0xDA << 16 ) | ( (mbedtls_mpi_uint) 0xE9 << 24 ),
    ( (mbedtls_mpi_uint) 0x7C << 0 ) | ( (mbedtls_mpi_uint) 0x14 << 8 ) | ( (mbedtls_mpi_uint) 0x9A << 16 ) | ( (mbedtls_mpi_uint) 0x28 << 24 ), ( (mbedtls_mpi_uint) 0xBD << 0 ) | ( (mbedtls_mpi_uint) 0x1D << 8 ) | ( (mbedtls_mpi_uint) 0xF4 << 16 ) | ( (mbedtls_mpi_uint) 0xF8 << 24 ),
    ( (mbedtls_mpi_uint) 0x29 << 0 ) | ( (mbedtls_mpi_uint) 0xDC << 8 ) | ( (mbedtls_mpi_uint) 0x92 << 16 ) | ( (mbedtls_mpi_uint) 0x92 << 24 ), ( (mbedtls_mpi_uint) 0xBF << 0 ) | ( (mbedtls_mpi_uint) 0x98 << 8 ) | ( (mbedtls_mpi_uint) 0x9E << 16 ) | ( (mbedtls_mpi_uint) 0x5D << 24 ),
    ( (mbedtls_mpi_uint) 0x6F << 0 ) | ( (mbedtls_mpi_uint) 0x2C << 8 ) | ( (mbedtls_mpi_uint) 0x26 << 16 ) | ( (mbedtls_mpi_uint) 0x96 << 24 ), ( (mbedtls_mpi_uint) 0x4A << 0 ) | ( (mbedtls_mpi_uint) 0xDE << 8 ) | ( (mbedtls_mpi_uint) 0x17 << 16 ) | ( (mbedtls_mpi_uint) 0x36 << 24 ),
};
static const mbedtls_mpi_uint secp384r1_n[] = {
    ( (mbedtls_mpi_uint) 0x73 << 0 ) | ( (mbedtls_mpi_uint) 0x29 << 8 ) | ( (mbedtls_mpi_uint) 0xC5 << 16 ) | ( (mbedtls_mpi_uint) 0xCC << 24 ), ( (mbedtls_mpi_uint) 0x6A << 0 ) | ( (mbedtls_mpi_uint) 0x19 << 8 ) | ( (mbedtls_mpi_uint) 0xEC << 16 ) | ( (mbedtls_mpi_uint) 0xEC << 24 ),
    ( (mbedtls_mpi_uint) 0x7A << 0 ) | ( (mbedtls_mpi_uint) 0xA7 << 8 ) | ( (mbedtls_mpi_uint) 0xB0 << 16 ) | ( (mbedtls_mpi_uint) 0x48 << 24 ), ( (mbedtls_mpi_uint) 0xB2 << 0 ) | ( (mbedtls_mpi_uint) 0x0D << 8 ) | ( (mbedtls_mpi_uint) 0x1A << 16 ) | ( (mbedtls_mpi_uint) 0x58 << 24 ),
    ( (mbedtls_mpi_uint) 0xDF << 0 ) | ( (mbedtls_mpi_uint) 0x2D << 8 ) | ( (mbedtls_mpi_uint) 0x37 << 16 ) | ( (mbedtls_mpi_uint) 0xF4 << 24 ), ( (mbedtls_mpi_uint) 0x81 << 0 ) | ( (mbedtls_mpi_uint) 0x4D << 8 ) | ( (mbedtls_mpi_uint) 0x63 << 16 ) | ( (mbedtls_mpi_uint) 0xC7 << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
# 336 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
static const mbedtls_mpi_uint secp192k1_p[] = {
    ( (mbedtls_mpi_uint) 0x37 << 0 ) | ( (mbedtls_mpi_uint) 0xEE << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp192k1_a[] = {

    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp192k1_b[] = {

    ( (mbedtls_mpi_uint) 0x03 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp192k1_gx[] = {
    ( (mbedtls_mpi_uint) 0x7D << 0 ) | ( (mbedtls_mpi_uint) 0x6C << 8 ) | ( (mbedtls_mpi_uint) 0xE0 << 16 ) | ( (mbedtls_mpi_uint) 0xEA << 24 ), ( (mbedtls_mpi_uint) 0xB1 << 0 ) | ( (mbedtls_mpi_uint) 0xD1 << 8 ) | ( (mbedtls_mpi_uint) 0xA5 << 16 ) | ( (mbedtls_mpi_uint) 0x1D << 24 ),
    ( (mbedtls_mpi_uint) 0x34 << 0 ) | ( (mbedtls_mpi_uint) 0xF4 << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0x80 << 24 ), ( (mbedtls_mpi_uint) 0x02 << 0 ) | ( (mbedtls_mpi_uint) 0x7D << 8 ) | ( (mbedtls_mpi_uint) 0xB0 << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ),
    ( (mbedtls_mpi_uint) 0xAE << 0 ) | ( (mbedtls_mpi_uint) 0xE9 << 8 ) | ( (mbedtls_mpi_uint) 0x57 << 16 ) | ( (mbedtls_mpi_uint) 0xC0 << 24 ), ( (mbedtls_mpi_uint) 0x0E << 0 ) | ( (mbedtls_mpi_uint) 0xF1 << 8 ) | ( (mbedtls_mpi_uint) 0x4F << 16 ) | ( (mbedtls_mpi_uint) 0xDB << 24 ),
};
static const mbedtls_mpi_uint secp192k1_gy[] = {
    ( (mbedtls_mpi_uint) 0x9D << 0 ) | ( (mbedtls_mpi_uint) 0x2F << 8 ) | ( (mbedtls_mpi_uint) 0x5E << 16 ) | ( (mbedtls_mpi_uint) 0xD9 << 24 ), ( (mbedtls_mpi_uint) 0x88 << 0 ) | ( (mbedtls_mpi_uint) 0xAA << 8 ) | ( (mbedtls_mpi_uint) 0x82 << 16 ) | ( (mbedtls_mpi_uint) 0x40 << 24 ),
    ( (mbedtls_mpi_uint) 0x34 << 0 ) | ( (mbedtls_mpi_uint) 0x86 << 8 ) | ( (mbedtls_mpi_uint) 0xBE << 16 ) | ( (mbedtls_mpi_uint) 0x15 << 24 ), ( (mbedtls_mpi_uint) 0xD0 << 0 ) | ( (mbedtls_mpi_uint) 0x63 << 8 ) | ( (mbedtls_mpi_uint) 0x41 << 16 ) | ( (mbedtls_mpi_uint) 0x84 << 24 ),
    ( (mbedtls_mpi_uint) 0xA7 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0x56 << 16 ) | ( (mbedtls_mpi_uint) 0x9C << 24 ), ( (mbedtls_mpi_uint) 0x6D << 0 ) | ( (mbedtls_mpi_uint) 0x2F << 8 ) | ( (mbedtls_mpi_uint) 0x2F << 16 ) | ( (mbedtls_mpi_uint) 0x9B << 24 ),
};
static const mbedtls_mpi_uint secp192k1_n[] = {
    ( (mbedtls_mpi_uint) 0x8D << 0 ) | ( (mbedtls_mpi_uint) 0xFD << 8 ) | ( (mbedtls_mpi_uint) 0xDE << 16 ) | ( (mbedtls_mpi_uint) 0x74 << 24 ), ( (mbedtls_mpi_uint) 0x6A << 0 ) | ( (mbedtls_mpi_uint) 0x46 << 8 ) | ( (mbedtls_mpi_uint) 0x69 << 16 ) | ( (mbedtls_mpi_uint) 0x0F << 24 ),
    ( (mbedtls_mpi_uint) 0x17 << 0 ) | ( (mbedtls_mpi_uint) 0xFC << 8 ) | ( (mbedtls_mpi_uint) 0xF2 << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};



static const mbedtls_mpi_uint secp224k1_p[] = {
    ( (mbedtls_mpi_uint) 0x6D << 0 ) | ( (mbedtls_mpi_uint) 0xE5 << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp224k1_a[] = {

    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp224k1_b[] = {

    ( (mbedtls_mpi_uint) 0x05 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp224k1_gx[] = {
    ( (mbedtls_mpi_uint) 0x5C << 0 ) | ( (mbedtls_mpi_uint) 0xA4 << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0xB6 << 24 ), ( (mbedtls_mpi_uint) 0x0E << 0 ) | ( (mbedtls_mpi_uint) 0x65 << 8 ) | ( (mbedtls_mpi_uint) 0x7E << 16 ) | ( (mbedtls_mpi_uint) 0x0F << 24 ),
    ( (mbedtls_mpi_uint) 0xA9 << 0 ) | ( (mbedtls_mpi_uint) 0x75 << 8 ) | ( (mbedtls_mpi_uint) 0x70 << 16 ) | ( (mbedtls_mpi_uint) 0xE4 << 24 ), ( (mbedtls_mpi_uint) 0xE9 << 0 ) | ( (mbedtls_mpi_uint) 0x67 << 8 ) | ( (mbedtls_mpi_uint) 0xA4 << 16 ) | ( (mbedtls_mpi_uint) 0x69 << 24 ),
    ( (mbedtls_mpi_uint) 0xA1 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0xFC << 16 ) | ( (mbedtls_mpi_uint) 0x30 << 24 ), ( (mbedtls_mpi_uint) 0xDF << 0 ) | ( (mbedtls_mpi_uint) 0x99 << 8 ) | ( (mbedtls_mpi_uint) 0xF0 << 16 ) | ( (mbedtls_mpi_uint) 0x4D << 24 ),
    ( (mbedtls_mpi_uint) 0x33 << 0 ) | ( (mbedtls_mpi_uint) 0x5B << 8 ) | ( (mbedtls_mpi_uint) 0x45 << 16 ) | ( (mbedtls_mpi_uint) 0xA1 << 24 ),
};
static const mbedtls_mpi_uint secp224k1_gy[] = {
    ( (mbedtls_mpi_uint) 0xA5 << 0 ) | ( (mbedtls_mpi_uint) 0x61 << 8 ) | ( (mbedtls_mpi_uint) 0x6D << 16 ) | ( (mbedtls_mpi_uint) 0x55 << 24 ), ( (mbedtls_mpi_uint) 0xDB << 0 ) | ( (mbedtls_mpi_uint) 0x4B << 8 ) | ( (mbedtls_mpi_uint) 0xCA << 16 ) | ( (mbedtls_mpi_uint) 0xE2 << 24 ),
    ( (mbedtls_mpi_uint) 0x59 << 0 ) | ( (mbedtls_mpi_uint) 0xBD << 8 ) | ( (mbedtls_mpi_uint) 0xB0 << 16 ) | ( (mbedtls_mpi_uint) 0xC0 << 24 ), ( (mbedtls_mpi_uint) 0xF7 << 0 ) | ( (mbedtls_mpi_uint) 0x19 << 8 ) | ( (mbedtls_mpi_uint) 0xE3 << 16 ) | ( (mbedtls_mpi_uint) 0xF7 << 24 ),
    ( (mbedtls_mpi_uint) 0xD6 << 0 ) | ( (mbedtls_mpi_uint) 0xFB << 8 ) | ( (mbedtls_mpi_uint) 0xCA << 16 ) | ( (mbedtls_mpi_uint) 0x82 << 24 ), ( (mbedtls_mpi_uint) 0x42 << 0 ) | ( (mbedtls_mpi_uint) 0x34 << 8 ) | ( (mbedtls_mpi_uint) 0xBA << 16 ) | ( (mbedtls_mpi_uint) 0x7F << 24 ),
    ( (mbedtls_mpi_uint) 0xED << 0 ) | ( (mbedtls_mpi_uint) 0x9F << 8 ) | ( (mbedtls_mpi_uint) 0x08 << 16 ) | ( (mbedtls_mpi_uint) 0x7E << 24 ),
};
static const mbedtls_mpi_uint secp224k1_n[] = {
    ( (mbedtls_mpi_uint) 0xF7 << 0 ) | ( (mbedtls_mpi_uint) 0xB1 << 8 ) | ( (mbedtls_mpi_uint) 0x9F << 16 ) | ( (mbedtls_mpi_uint) 0x76 << 24 ), ( (mbedtls_mpi_uint) 0x71 << 0 ) | ( (mbedtls_mpi_uint) 0xA9 << 8 ) | ( (mbedtls_mpi_uint) 0xF0 << 16 ) | ( (mbedtls_mpi_uint) 0xCA << 24 ),
    ( (mbedtls_mpi_uint) 0x84 << 0 ) | ( (mbedtls_mpi_uint) 0x61 << 8 ) | ( (mbedtls_mpi_uint) 0xEC << 16 ) | ( (mbedtls_mpi_uint) 0xD2 << 24 ), ( (mbedtls_mpi_uint) 0xE8 << 0 ) | ( (mbedtls_mpi_uint) 0xDC << 8 ) | ( (mbedtls_mpi_uint) 0x01 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x01 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};



static const mbedtls_mpi_uint secp256k1_p[] = {
    ( (mbedtls_mpi_uint) 0x2F << 0 ) | ( (mbedtls_mpi_uint) 0xFC << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint secp256k1_a[] = {

    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
};
static const mbedtls_mpi_uint secp256k1_b[] = {

    ( (mbedtls_mpi_uint) 0x07 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ),

};
static const mbedtls_mpi_uint secp256k1_gx[] = {
    ( (mbedtls_mpi_uint) 0x98 << 0 ) | ( (mbedtls_mpi_uint) 0x17 << 8 ) | ( (mbedtls_mpi_uint) 0xF8 << 16 ) | ( (mbedtls_mpi_uint) 0x16 << 24 ), ( (mbedtls_mpi_uint) 0x5B << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0xF2 << 16 ) | ( (mbedtls_mpi_uint) 0x59 << 24 ),
    ( (mbedtls_mpi_uint) 0xD9 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x2D << 24 ), ( (mbedtls_mpi_uint) 0xDB << 0 ) | ( (mbedtls_mpi_uint) 0xFC << 8 ) | ( (mbedtls_mpi_uint) 0x9B << 16 ) | ( (mbedtls_mpi_uint) 0x02 << 24 ),
    ( (mbedtls_mpi_uint) 0x07 << 0 ) | ( (mbedtls_mpi_uint) 0x0B << 8 ) | ( (mbedtls_mpi_uint) 0x87 << 16 ) | ( (mbedtls_mpi_uint) 0xCE << 24 ), ( (mbedtls_mpi_uint) 0x95 << 0 ) | ( (mbedtls_mpi_uint) 0x62 << 8 ) | ( (mbedtls_mpi_uint) 0xA0 << 16 ) | ( (mbedtls_mpi_uint) 0x55 << 24 ),
    ( (mbedtls_mpi_uint) 0xAC << 0 ) | ( (mbedtls_mpi_uint) 0xBB << 8 ) | ( (mbedtls_mpi_uint) 0xDC << 16 ) | ( (mbedtls_mpi_uint) 0xF9 << 24 ), ( (mbedtls_mpi_uint) 0x7E << 0 ) | ( (mbedtls_mpi_uint) 0x66 << 8 ) | ( (mbedtls_mpi_uint) 0xBE << 16 ) | ( (mbedtls_mpi_uint) 0x79 << 24 ),
};
static const mbedtls_mpi_uint secp256k1_gy[] = {
    ( (mbedtls_mpi_uint) 0xB8 << 0 ) | ( (mbedtls_mpi_uint) 0xD4 << 8 ) | ( (mbedtls_mpi_uint) 0x10 << 16 ) | ( (mbedtls_mpi_uint) 0xFB << 24 ), ( (mbedtls_mpi_uint) 0x8F << 0 ) | ( (mbedtls_mpi_uint) 0xD0 << 8 ) | ( (mbedtls_mpi_uint) 0x47 << 16 ) | ( (mbedtls_mpi_uint) 0x9C << 24 ),
    ( (mbedtls_mpi_uint) 0x19 << 0 ) | ( (mbedtls_mpi_uint) 0x54 << 8 ) | ( (mbedtls_mpi_uint) 0x85 << 16 ) | ( (mbedtls_mpi_uint) 0xA6 << 24 ), ( (mbedtls_mpi_uint) 0x48 << 0 ) | ( (mbedtls_mpi_uint) 0xB4 << 8 ) | ( (mbedtls_mpi_uint) 0x17 << 16 ) | ( (mbedtls_mpi_uint) 0xFD << 24 ),
    ( (mbedtls_mpi_uint) 0xA8 << 0 ) | ( (mbedtls_mpi_uint) 0x08 << 8 ) | ( (mbedtls_mpi_uint) 0x11 << 16 ) | ( (mbedtls_mpi_uint) 0x0E << 24 ), ( (mbedtls_mpi_uint) 0xFC << 0 ) | ( (mbedtls_mpi_uint) 0xFB << 8 ) | ( (mbedtls_mpi_uint) 0xA4 << 16 ) | ( (mbedtls_mpi_uint) 0x5D << 24 ),
    ( (mbedtls_mpi_uint) 0x65 << 0 ) | ( (mbedtls_mpi_uint) 0xC4 << 8 ) | ( (mbedtls_mpi_uint) 0xA3 << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ), ( (mbedtls_mpi_uint) 0x77 << 0 ) | ( (mbedtls_mpi_uint) 0xDA << 8 ) | ( (mbedtls_mpi_uint) 0x3A << 16 ) | ( (mbedtls_mpi_uint) 0x48 << 24 ),
};
static const mbedtls_mpi_uint secp256k1_n[] = {
    ( (mbedtls_mpi_uint) 0x41 << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0x36 << 16 ) | ( (mbedtls_mpi_uint) 0xD0 << 24 ), ( (mbedtls_mpi_uint) 0x8C << 0 ) | ( (mbedtls_mpi_uint) 0x5E << 8 ) | ( (mbedtls_mpi_uint) 0xD2 << 16 ) | ( (mbedtls_mpi_uint) 0xBF << 24 ),
    ( (mbedtls_mpi_uint) 0x3B << 0 ) | ( (mbedtls_mpi_uint) 0xA0 << 8 ) | ( (mbedtls_mpi_uint) 0x48 << 16 ) | ( (mbedtls_mpi_uint) 0xAF << 24 ), ( (mbedtls_mpi_uint) 0xE6 << 0 ) | ( (mbedtls_mpi_uint) 0xDC << 8 ) | ( (mbedtls_mpi_uint) 0xAE << 16 ) | ( (mbedtls_mpi_uint) 0xBA << 24 ),
    ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};






static const mbedtls_mpi_uint brainpoolP256r1_p[] = {
    ( (mbedtls_mpi_uint) 0x77 << 0 ) | ( (mbedtls_mpi_uint) 0x53 << 8 ) | ( (mbedtls_mpi_uint) 0x6E << 16 ) | ( (mbedtls_mpi_uint) 0x1F << 24 ), ( (mbedtls_mpi_uint) 0x1D << 0 ) | ( (mbedtls_mpi_uint) 0x48 << 8 ) | ( (mbedtls_mpi_uint) 0x13 << 16 ) | ( (mbedtls_mpi_uint) 0x20 << 24 ),
    ( (mbedtls_mpi_uint) 0x28 << 0 ) | ( (mbedtls_mpi_uint) 0x20 << 8 ) | ( (mbedtls_mpi_uint) 0x26 << 16 ) | ( (mbedtls_mpi_uint) 0xD5 << 24 ), ( (mbedtls_mpi_uint) 0x23 << 0 ) | ( (mbedtls_mpi_uint) 0xF6 << 8 ) | ( (mbedtls_mpi_uint) 0x3B << 16 ) | ( (mbedtls_mpi_uint) 0x6E << 24 ),
    ( (mbedtls_mpi_uint) 0x72 << 0 ) | ( (mbedtls_mpi_uint) 0x8D << 8 ) | ( (mbedtls_mpi_uint) 0x83 << 16 ) | ( (mbedtls_mpi_uint) 0x9D << 24 ), ( (mbedtls_mpi_uint) 0x90 << 0 ) | ( (mbedtls_mpi_uint) 0x0A << 8 ) | ( (mbedtls_mpi_uint) 0x66 << 16 ) | ( (mbedtls_mpi_uint) 0x3E << 24 ),
    ( (mbedtls_mpi_uint) 0xBC << 0 ) | ( (mbedtls_mpi_uint) 0xA9 << 8 ) | ( (mbedtls_mpi_uint) 0xEE << 16 ) | ( (mbedtls_mpi_uint) 0xA1 << 24 ), ( (mbedtls_mpi_uint) 0xDB << 0 ) | ( (mbedtls_mpi_uint) 0x57 << 8 ) | ( (mbedtls_mpi_uint) 0xFB << 16 ) | ( (mbedtls_mpi_uint) 0xA9 << 24 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_a[] = {
    ( (mbedtls_mpi_uint) 0xD9 << 0 ) | ( (mbedtls_mpi_uint) 0xB5 << 8 ) | ( (mbedtls_mpi_uint) 0x30 << 16 ) | ( (mbedtls_mpi_uint) 0xF3 << 24 ), ( (mbedtls_mpi_uint) 0x44 << 0 ) | ( (mbedtls_mpi_uint) 0x4B << 8 ) | ( (mbedtls_mpi_uint) 0x4A << 16 ) | ( (mbedtls_mpi_uint) 0xE9 << 24 ),
    ( (mbedtls_mpi_uint) 0x6C << 0 ) | ( (mbedtls_mpi_uint) 0x5C << 8 ) | ( (mbedtls_mpi_uint) 0xDC << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ), ( (mbedtls_mpi_uint) 0xC1 << 0 ) | ( (mbedtls_mpi_uint) 0x55 << 8 ) | ( (mbedtls_mpi_uint) 0x80 << 16 ) | ( (mbedtls_mpi_uint) 0xFB << 24 ),
    ( (mbedtls_mpi_uint) 0xE7 << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0x7A << 16 ) | ( (mbedtls_mpi_uint) 0x41 << 24 ), ( (mbedtls_mpi_uint) 0x30 << 0 ) | ( (mbedtls_mpi_uint) 0x75 << 8 ) | ( (mbedtls_mpi_uint) 0xF6 << 16 ) | ( (mbedtls_mpi_uint) 0xEE << 24 ),
    ( (mbedtls_mpi_uint) 0x57 << 0 ) | ( (mbedtls_mpi_uint) 0x30 << 8 ) | ( (mbedtls_mpi_uint) 0x2C << 16 ) | ( (mbedtls_mpi_uint) 0xFC << 24 ), ( (mbedtls_mpi_uint) 0x75 << 0 ) | ( (mbedtls_mpi_uint) 0x09 << 8 ) | ( (mbedtls_mpi_uint) 0x5A << 16 ) | ( (mbedtls_mpi_uint) 0x7D << 24 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_b[] = {
    ( (mbedtls_mpi_uint) 0xB6 << 0 ) | ( (mbedtls_mpi_uint) 0x07 << 8 ) | ( (mbedtls_mpi_uint) 0x8C << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0x18 << 0 ) | ( (mbedtls_mpi_uint) 0xDC << 8 ) | ( (mbedtls_mpi_uint) 0xCC << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ),
    ( (mbedtls_mpi_uint) 0xCE << 0 ) | ( (mbedtls_mpi_uint) 0xE1 << 8 ) | ( (mbedtls_mpi_uint) 0xF7 << 16 ) | ( (mbedtls_mpi_uint) 0x5C << 24 ), ( (mbedtls_mpi_uint) 0x29 << 0 ) | ( (mbedtls_mpi_uint) 0x16 << 8 ) | ( (mbedtls_mpi_uint) 0x84 << 16 ) | ( (mbedtls_mpi_uint) 0x95 << 24 ),
    ( (mbedtls_mpi_uint) 0xBF << 0 ) | ( (mbedtls_mpi_uint) 0x7C << 8 ) | ( (mbedtls_mpi_uint) 0xD7 << 16 ) | ( (mbedtls_mpi_uint) 0xBB << 24 ), ( (mbedtls_mpi_uint) 0xD9 << 0 ) | ( (mbedtls_mpi_uint) 0xB5 << 8 ) | ( (mbedtls_mpi_uint) 0x30 << 16 ) | ( (mbedtls_mpi_uint) 0xF3 << 24 ),
    ( (mbedtls_mpi_uint) 0x44 << 0 ) | ( (mbedtls_mpi_uint) 0x4B << 8 ) | ( (mbedtls_mpi_uint) 0x4A << 16 ) | ( (mbedtls_mpi_uint) 0xE9 << 24 ), ( (mbedtls_mpi_uint) 0x6C << 0 ) | ( (mbedtls_mpi_uint) 0x5C << 8 ) | ( (mbedtls_mpi_uint) 0xDC << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_gx[] = {
    ( (mbedtls_mpi_uint) 0x62 << 0 ) | ( (mbedtls_mpi_uint) 0x32 << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x9A << 24 ), ( (mbedtls_mpi_uint) 0xBD << 0 ) | ( (mbedtls_mpi_uint) 0x53 << 8 ) | ( (mbedtls_mpi_uint) 0x44 << 16 ) | ( (mbedtls_mpi_uint) 0x3A << 24 ),
    ( (mbedtls_mpi_uint) 0xC2 << 0 ) | ( (mbedtls_mpi_uint) 0x23 << 8 ) | ( (mbedtls_mpi_uint) 0xBD << 16 ) | ( (mbedtls_mpi_uint) 0xE3 << 24 ), ( (mbedtls_mpi_uint) 0xE1 << 0 ) | ( (mbedtls_mpi_uint) 0x27 << 8 ) | ( (mbedtls_mpi_uint) 0xDE << 16 ) | ( (mbedtls_mpi_uint) 0xB9 << 24 ),
    ( (mbedtls_mpi_uint) 0xAF << 0 ) | ( (mbedtls_mpi_uint) 0xB7 << 8 ) | ( (mbedtls_mpi_uint) 0x81 << 16 ) | ( (mbedtls_mpi_uint) 0xFC << 24 ), ( (mbedtls_mpi_uint) 0x2F << 0 ) | ( (mbedtls_mpi_uint) 0x48 << 8 ) | ( (mbedtls_mpi_uint) 0x4B << 16 ) | ( (mbedtls_mpi_uint) 0x2C << 24 ),
    ( (mbedtls_mpi_uint) 0xCB << 0 ) | ( (mbedtls_mpi_uint) 0x57 << 8 ) | ( (mbedtls_mpi_uint) 0x7E << 16 ) | ( (mbedtls_mpi_uint) 0xCB << 24 ), ( (mbedtls_mpi_uint) 0xB9 << 0 ) | ( (mbedtls_mpi_uint) 0xAE << 8 ) | ( (mbedtls_mpi_uint) 0xD2 << 16 ) | ( (mbedtls_mpi_uint) 0x8B << 24 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_gy[] = {
    ( (mbedtls_mpi_uint) 0x97 << 0 ) | ( (mbedtls_mpi_uint) 0x69 << 8 ) | ( (mbedtls_mpi_uint) 0x04 << 16 ) | ( (mbedtls_mpi_uint) 0x2F << 24 ), ( (mbedtls_mpi_uint) 0xC7 << 0 ) | ( (mbedtls_mpi_uint) 0x54 << 8 ) | ( (mbedtls_mpi_uint) 0x1D << 16 ) | ( (mbedtls_mpi_uint) 0x5C << 24 ),
    ( (mbedtls_mpi_uint) 0x54 << 0 ) | ( (mbedtls_mpi_uint) 0x8E << 8 ) | ( (mbedtls_mpi_uint) 0xED << 16 ) | ( (mbedtls_mpi_uint) 0x2D << 24 ), ( (mbedtls_mpi_uint) 0x13 << 0 ) | ( (mbedtls_mpi_uint) 0x45 << 8 ) | ( (mbedtls_mpi_uint) 0x77 << 16 ) | ( (mbedtls_mpi_uint) 0xC2 << 24 ),
    ( (mbedtls_mpi_uint) 0xC9 << 0 ) | ( (mbedtls_mpi_uint) 0x1D << 8 ) | ( (mbedtls_mpi_uint) 0x61 << 16 ) | ( (mbedtls_mpi_uint) 0x14 << 24 ), ( (mbedtls_mpi_uint) 0x1A << 0 ) | ( (mbedtls_mpi_uint) 0x46 << 8 ) | ( (mbedtls_mpi_uint) 0xF8 << 16 ) | ( (mbedtls_mpi_uint) 0x97 << 24 ),
    ( (mbedtls_mpi_uint) 0xFD << 0 ) | ( (mbedtls_mpi_uint) 0xC4 << 8 ) | ( (mbedtls_mpi_uint) 0xDA << 16 ) | ( (mbedtls_mpi_uint) 0xC3 << 24 ), ( (mbedtls_mpi_uint) 0x35 << 0 ) | ( (mbedtls_mpi_uint) 0xF8 << 8 ) | ( (mbedtls_mpi_uint) 0x7E << 16 ) | ( (mbedtls_mpi_uint) 0x54 << 24 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_n[] = {
    ( (mbedtls_mpi_uint) 0xA7 << 0 ) | ( (mbedtls_mpi_uint) 0x56 << 8 ) | ( (mbedtls_mpi_uint) 0x48 << 16 ) | ( (mbedtls_mpi_uint) 0x97 << 24 ), ( (mbedtls_mpi_uint) 0x82 << 0 ) | ( (mbedtls_mpi_uint) 0x0E << 8 ) | ( (mbedtls_mpi_uint) 0x1E << 16 ) | ( (mbedtls_mpi_uint) 0x90 << 24 ),
    ( (mbedtls_mpi_uint) 0xF7 << 0 ) | ( (mbedtls_mpi_uint) 0xA6 << 8 ) | ( (mbedtls_mpi_uint) 0x61 << 16 ) | ( (mbedtls_mpi_uint) 0xB5 << 24 ), ( (mbedtls_mpi_uint) 0xA3 << 0 ) | ( (mbedtls_mpi_uint) 0x7A << 8 ) | ( (mbedtls_mpi_uint) 0x39 << 16 ) | ( (mbedtls_mpi_uint) 0x8C << 24 ),
    ( (mbedtls_mpi_uint) 0x71 << 0 ) | ( (mbedtls_mpi_uint) 0x8D << 8 ) | ( (mbedtls_mpi_uint) 0x83 << 16 ) | ( (mbedtls_mpi_uint) 0x9D << 24 ), ( (mbedtls_mpi_uint) 0x90 << 0 ) | ( (mbedtls_mpi_uint) 0x0A << 8 ) | ( (mbedtls_mpi_uint) 0x66 << 16 ) | ( (mbedtls_mpi_uint) 0x3E << 24 ),
    ( (mbedtls_mpi_uint) 0xBC << 0 ) | ( (mbedtls_mpi_uint) 0xA9 << 8 ) | ( (mbedtls_mpi_uint) 0xEE << 16 ) | ( (mbedtls_mpi_uint) 0xA1 << 24 ), ( (mbedtls_mpi_uint) 0xDB << 0 ) | ( (mbedtls_mpi_uint) 0x57 << 8 ) | ( (mbedtls_mpi_uint) 0xFB << 16 ) | ( (mbedtls_mpi_uint) 0xA9 << 24 ),
};






static const mbedtls_mpi_uint brainpoolP384r1_p[] = {
    ( (mbedtls_mpi_uint) 0x53 << 0 ) | ( (mbedtls_mpi_uint) 0xEC << 8 ) | ( (mbedtls_mpi_uint) 0x07 << 16 ) | ( (mbedtls_mpi_uint) 0x31 << 24 ), ( (mbedtls_mpi_uint) 0x13 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x47 << 16 ) | ( (mbedtls_mpi_uint) 0x87 << 24 ),
    ( (mbedtls_mpi_uint) 0x71 << 0 ) | ( (mbedtls_mpi_uint) 0x1A << 8 ) | ( (mbedtls_mpi_uint) 0x1D << 16 ) | ( (mbedtls_mpi_uint) 0x90 << 24 ), ( (mbedtls_mpi_uint) 0x29 << 0 ) | ( (mbedtls_mpi_uint) 0xA7 << 8 ) | ( (mbedtls_mpi_uint) 0xD3 << 16 ) | ( (mbedtls_mpi_uint) 0xAC << 24 ),
    ( (mbedtls_mpi_uint) 0x23 << 0 ) | ( (mbedtls_mpi_uint) 0x11 << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0x7F << 24 ), ( (mbedtls_mpi_uint) 0x19 << 0 ) | ( (mbedtls_mpi_uint) 0xDA << 8 ) | ( (mbedtls_mpi_uint) 0xB1 << 16 ) | ( (mbedtls_mpi_uint) 0x12 << 24 ),
    ( (mbedtls_mpi_uint) 0xB4 << 0 ) | ( (mbedtls_mpi_uint) 0x56 << 8 ) | ( (mbedtls_mpi_uint) 0x54 << 16 ) | ( (mbedtls_mpi_uint) 0xED << 24 ), ( (mbedtls_mpi_uint) 0x09 << 0 ) | ( (mbedtls_mpi_uint) 0x71 << 8 ) | ( (mbedtls_mpi_uint) 0x2F << 16 ) | ( (mbedtls_mpi_uint) 0x15 << 24 ),
    ( (mbedtls_mpi_uint) 0xDF << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0xE6 << 16 ) | ( (mbedtls_mpi_uint) 0x50 << 24 ), ( (mbedtls_mpi_uint) 0x7E << 0 ) | ( (mbedtls_mpi_uint) 0x6F << 8 ) | ( (mbedtls_mpi_uint) 0x5D << 16 ) | ( (mbedtls_mpi_uint) 0x0F << 24 ),
    ( (mbedtls_mpi_uint) 0x28 << 0 ) | ( (mbedtls_mpi_uint) 0x6D << 8 ) | ( (mbedtls_mpi_uint) 0x38 << 16 ) | ( (mbedtls_mpi_uint) 0xA3 << 24 ), ( (mbedtls_mpi_uint) 0x82 << 0 ) | ( (mbedtls_mpi_uint) 0x1E << 8 ) | ( (mbedtls_mpi_uint) 0xB9 << 16 ) | ( (mbedtls_mpi_uint) 0x8C << 24 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_a[] = {
    ( (mbedtls_mpi_uint) 0x26 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x22 << 24 ), ( (mbedtls_mpi_uint) 0xDD << 0 ) | ( (mbedtls_mpi_uint) 0xC7 << 8 ) | ( (mbedtls_mpi_uint) 0xA8 << 16 ) | ( (mbedtls_mpi_uint) 0x04 << 24 ),
    ( (mbedtls_mpi_uint) 0xEB << 0 ) | ( (mbedtls_mpi_uint) 0xD4 << 8 ) | ( (mbedtls_mpi_uint) 0x3A << 16 ) | ( (mbedtls_mpi_uint) 0x50 << 24 ), ( (mbedtls_mpi_uint) 0x4A << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0xA5 << 16 ) | ( (mbedtls_mpi_uint) 0x8A << 24 ),
    ( (mbedtls_mpi_uint) 0x0F << 0 ) | ( (mbedtls_mpi_uint) 0xF9 << 8 ) | ( (mbedtls_mpi_uint) 0x91 << 16 ) | ( (mbedtls_mpi_uint) 0xBA << 24 ), ( (mbedtls_mpi_uint) 0xEF << 0 ) | ( (mbedtls_mpi_uint) 0x65 << 8 ) | ( (mbedtls_mpi_uint) 0x91 << 16 ) | ( (mbedtls_mpi_uint) 0x13 << 24 ),
    ( (mbedtls_mpi_uint) 0x87 << 0 ) | ( (mbedtls_mpi_uint) 0x27 << 8 ) | ( (mbedtls_mpi_uint) 0xB2 << 16 ) | ( (mbedtls_mpi_uint) 0x4F << 24 ), ( (mbedtls_mpi_uint) 0x8E << 0 ) | ( (mbedtls_mpi_uint) 0xA2 << 8 ) | ( (mbedtls_mpi_uint) 0xBE << 16 ) | ( (mbedtls_mpi_uint) 0xC2 << 24 ),
    ( (mbedtls_mpi_uint) 0xA0 << 0 ) | ( (mbedtls_mpi_uint) 0xAF << 8 ) | ( (mbedtls_mpi_uint) 0x05 << 16 ) | ( (mbedtls_mpi_uint) 0xCE << 24 ), ( (mbedtls_mpi_uint) 0x0A << 0 ) | ( (mbedtls_mpi_uint) 0x08 << 8 ) | ( (mbedtls_mpi_uint) 0x72 << 16 ) | ( (mbedtls_mpi_uint) 0x3C << 24 ),
    ( (mbedtls_mpi_uint) 0x0C << 0 ) | ( (mbedtls_mpi_uint) 0x15 << 8 ) | ( (mbedtls_mpi_uint) 0x8C << 16 ) | ( (mbedtls_mpi_uint) 0x3D << 24 ), ( (mbedtls_mpi_uint) 0xC6 << 0 ) | ( (mbedtls_mpi_uint) 0x82 << 8 ) | ( (mbedtls_mpi_uint) 0xC3 << 16 ) | ( (mbedtls_mpi_uint) 0x7B << 24 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_b[] = {
    ( (mbedtls_mpi_uint) 0x11 << 0 ) | ( (mbedtls_mpi_uint) 0x4C << 8 ) | ( (mbedtls_mpi_uint) 0x50 << 16 ) | ( (mbedtls_mpi_uint) 0xFA << 24 ), ( (mbedtls_mpi_uint) 0x96 << 0 ) | ( (mbedtls_mpi_uint) 0x86 << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0x3A << 24 ),
    ( (mbedtls_mpi_uint) 0x94 << 0 ) | ( (mbedtls_mpi_uint) 0xC9 << 8 ) | ( (mbedtls_mpi_uint) 0xDB << 16 ) | ( (mbedtls_mpi_uint) 0x95 << 24 ), ( (mbedtls_mpi_uint) 0x02 << 0 ) | ( (mbedtls_mpi_uint) 0x39 << 8 ) | ( (mbedtls_mpi_uint) 0xB4 << 16 ) | ( (mbedtls_mpi_uint) 0x7C << 24 ),
    ( (mbedtls_mpi_uint) 0xD5 << 0 ) | ( (mbedtls_mpi_uint) 0x62 << 8 ) | ( (mbedtls_mpi_uint) 0xEB << 16 ) | ( (mbedtls_mpi_uint) 0x3E << 24 ), ( (mbedtls_mpi_uint) 0xA5 << 0 ) | ( (mbedtls_mpi_uint) 0x0E << 8 ) | ( (mbedtls_mpi_uint) 0x88 << 16 ) | ( (mbedtls_mpi_uint) 0x2E << 24 ),
    ( (mbedtls_mpi_uint) 0xA6 << 0 ) | ( (mbedtls_mpi_uint) 0xD2 << 8 ) | ( (mbedtls_mpi_uint) 0xDC << 16 ) | ( (mbedtls_mpi_uint) 0x07 << 24 ), ( (mbedtls_mpi_uint) 0xE1 << 0 ) | ( (mbedtls_mpi_uint) 0x7D << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0x2F << 24 ),
    ( (mbedtls_mpi_uint) 0x7C << 0 ) | ( (mbedtls_mpi_uint) 0x44 << 8 ) | ( (mbedtls_mpi_uint) 0xF0 << 16 ) | ( (mbedtls_mpi_uint) 0x16 << 24 ), ( (mbedtls_mpi_uint) 0x54 << 0 ) | ( (mbedtls_mpi_uint) 0xB5 << 8 ) | ( (mbedtls_mpi_uint) 0x39 << 16 ) | ( (mbedtls_mpi_uint) 0x8B << 24 ),
    ( (mbedtls_mpi_uint) 0x26 << 0 ) | ( (mbedtls_mpi_uint) 0x28 << 8 ) | ( (mbedtls_mpi_uint) 0xCE << 16 ) | ( (mbedtls_mpi_uint) 0x22 << 24 ), ( (mbedtls_mpi_uint) 0xDD << 0 ) | ( (mbedtls_mpi_uint) 0xC7 << 8 ) | ( (mbedtls_mpi_uint) 0xA8 << 16 ) | ( (mbedtls_mpi_uint) 0x04 << 24 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_gx[] = {
    ( (mbedtls_mpi_uint) 0x1E << 0 ) | ( (mbedtls_mpi_uint) 0xAF << 8 ) | ( (mbedtls_mpi_uint) 0xD4 << 16 ) | ( (mbedtls_mpi_uint) 0x47 << 24 ), ( (mbedtls_mpi_uint) 0xE2 << 0 ) | ( (mbedtls_mpi_uint) 0xB2 << 8 ) | ( (mbedtls_mpi_uint) 0x87 << 16 ) | ( (mbedtls_mpi_uint) 0xEF << 24 ),
    ( (mbedtls_mpi_uint) 0xAA << 0 ) | ( (mbedtls_mpi_uint) 0x46 << 8 ) | ( (mbedtls_mpi_uint) 0xD6 << 16 ) | ( (mbedtls_mpi_uint) 0x36 << 24 ), ( (mbedtls_mpi_uint) 0x34 << 0 ) | ( (mbedtls_mpi_uint) 0xE0 << 8 ) | ( (mbedtls_mpi_uint) 0x26 << 16 ) | ( (mbedtls_mpi_uint) 0xE8 << 24 ),
    ( (mbedtls_mpi_uint) 0xE8 << 0 ) | ( (mbedtls_mpi_uint) 0x10 << 8 ) | ( (mbedtls_mpi_uint) 0xBD << 16 ) | ( (mbedtls_mpi_uint) 0x0C << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xCA << 8 ) | ( (mbedtls_mpi_uint) 0x7F << 16 ) | ( (mbedtls_mpi_uint) 0xDB << 24 ),
    ( (mbedtls_mpi_uint) 0xE3 << 0 ) | ( (mbedtls_mpi_uint) 0x4F << 8 ) | ( (mbedtls_mpi_uint) 0xF1 << 16 ) | ( (mbedtls_mpi_uint) 0x7E << 24 ), ( (mbedtls_mpi_uint) 0xE7 << 0 ) | ( (mbedtls_mpi_uint) 0xA3 << 8 ) | ( (mbedtls_mpi_uint) 0x47 << 16 ) | ( (mbedtls_mpi_uint) 0x88 << 24 ),
    ( (mbedtls_mpi_uint) 0x6B << 0 ) | ( (mbedtls_mpi_uint) 0x3F << 8 ) | ( (mbedtls_mpi_uint) 0xC1 << 16 ) | ( (mbedtls_mpi_uint) 0xB7 << 24 ), ( (mbedtls_mpi_uint) 0x81 << 0 ) | ( (mbedtls_mpi_uint) 0x3A << 8 ) | ( (mbedtls_mpi_uint) 0xA6 << 16 ) | ( (mbedtls_mpi_uint) 0xA2 << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0x45 << 8 ) | ( (mbedtls_mpi_uint) 0xCF << 16 ) | ( (mbedtls_mpi_uint) 0x68 << 24 ), ( (mbedtls_mpi_uint) 0xF0 << 0 ) | ( (mbedtls_mpi_uint) 0x64 << 8 ) | ( (mbedtls_mpi_uint) 0x1C << 16 ) | ( (mbedtls_mpi_uint) 0x1D << 24 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_gy[] = {
    ( (mbedtls_mpi_uint) 0x15 << 0 ) | ( (mbedtls_mpi_uint) 0x53 << 8 ) | ( (mbedtls_mpi_uint) 0x3C << 16 ) | ( (mbedtls_mpi_uint) 0x26 << 24 ), ( (mbedtls_mpi_uint) 0x41 << 0 ) | ( (mbedtls_mpi_uint) 0x03 << 8 ) | ( (mbedtls_mpi_uint) 0x82 << 16 ) | ( (mbedtls_mpi_uint) 0x42 << 24 ),
    ( (mbedtls_mpi_uint) 0x11 << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0x91 << 16 ) | ( (mbedtls_mpi_uint) 0x77 << 24 ), ( (mbedtls_mpi_uint) 0x21 << 0 ) | ( (mbedtls_mpi_uint) 0x46 << 8 ) | ( (mbedtls_mpi_uint) 0x46 << 16 ) | ( (mbedtls_mpi_uint) 0x0E << 24 ),
    ( (mbedtls_mpi_uint) 0x28 << 0 ) | ( (mbedtls_mpi_uint) 0x29 << 8 ) | ( (mbedtls_mpi_uint) 0x91 << 16 ) | ( (mbedtls_mpi_uint) 0xF9 << 24 ), ( (mbedtls_mpi_uint) 0x4F << 0 ) | ( (mbedtls_mpi_uint) 0x05 << 8 ) | ( (mbedtls_mpi_uint) 0x9C << 16 ) | ( (mbedtls_mpi_uint) 0xE1 << 24 ),
    ( (mbedtls_mpi_uint) 0x64 << 0 ) | ( (mbedtls_mpi_uint) 0x58 << 8 ) | ( (mbedtls_mpi_uint) 0xEC << 16 ) | ( (mbedtls_mpi_uint) 0xFE << 24 ), ( (mbedtls_mpi_uint) 0x29 << 0 ) | ( (mbedtls_mpi_uint) 0x0B << 8 ) | ( (mbedtls_mpi_uint) 0xB7 << 16 ) | ( (mbedtls_mpi_uint) 0x62 << 24 ),
    ( (mbedtls_mpi_uint) 0x52 << 0 ) | ( (mbedtls_mpi_uint) 0xD5 << 8 ) | ( (mbedtls_mpi_uint) 0xCF << 16 ) | ( (mbedtls_mpi_uint) 0x95 << 24 ), ( (mbedtls_mpi_uint) 0x8E << 0 ) | ( (mbedtls_mpi_uint) 0xEB << 8 ) | ( (mbedtls_mpi_uint) 0xB1 << 16 ) | ( (mbedtls_mpi_uint) 0x5C << 24 ),
    ( (mbedtls_mpi_uint) 0xA4 << 0 ) | ( (mbedtls_mpi_uint) 0xC2 << 8 ) | ( (mbedtls_mpi_uint) 0xF9 << 16 ) | ( (mbedtls_mpi_uint) 0x20 << 24 ), ( (mbedtls_mpi_uint) 0x75 << 0 ) | ( (mbedtls_mpi_uint) 0x1D << 8 ) | ( (mbedtls_mpi_uint) 0xBE << 16 ) | ( (mbedtls_mpi_uint) 0x8A << 24 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_n[] = {
    ( (mbedtls_mpi_uint) 0x65 << 0 ) | ( (mbedtls_mpi_uint) 0x65 << 8 ) | ( (mbedtls_mpi_uint) 0x04 << 16 ) | ( (mbedtls_mpi_uint) 0xE9 << 24 ), ( (mbedtls_mpi_uint) 0x02 << 0 ) | ( (mbedtls_mpi_uint) 0x32 << 8 ) | ( (mbedtls_mpi_uint) 0x88 << 16 ) | ( (mbedtls_mpi_uint) 0x3B << 24 ),
    ( (mbedtls_mpi_uint) 0x10 << 0 ) | ( (mbedtls_mpi_uint) 0xC3 << 8 ) | ( (mbedtls_mpi_uint) 0x7F << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ), ( (mbedtls_mpi_uint) 0xAF << 0 ) | ( (mbedtls_mpi_uint) 0xB6 << 8 ) | ( (mbedtls_mpi_uint) 0x3A << 16 ) | ( (mbedtls_mpi_uint) 0xCF << 24 ),
    ( (mbedtls_mpi_uint) 0xA7 << 0 ) | ( (mbedtls_mpi_uint) 0x25 << 8 ) | ( (mbedtls_mpi_uint) 0x04 << 16 ) | ( (mbedtls_mpi_uint) 0xAC << 24 ), ( (mbedtls_mpi_uint) 0x6C << 0 ) | ( (mbedtls_mpi_uint) 0x6E << 8 ) | ( (mbedtls_mpi_uint) 0x16 << 16 ) | ( (mbedtls_mpi_uint) 0x1F << 24 ),
    ( (mbedtls_mpi_uint) 0xB3 << 0 ) | ( (mbedtls_mpi_uint) 0x56 << 8 ) | ( (mbedtls_mpi_uint) 0x54 << 16 ) | ( (mbedtls_mpi_uint) 0xED << 24 ), ( (mbedtls_mpi_uint) 0x09 << 0 ) | ( (mbedtls_mpi_uint) 0x71 << 8 ) | ( (mbedtls_mpi_uint) 0x2F << 16 ) | ( (mbedtls_mpi_uint) 0x15 << 24 ),
    ( (mbedtls_mpi_uint) 0xDF << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0xE6 << 16 ) | ( (mbedtls_mpi_uint) 0x50 << 24 ), ( (mbedtls_mpi_uint) 0x7E << 0 ) | ( (mbedtls_mpi_uint) 0x6F << 8 ) | ( (mbedtls_mpi_uint) 0x5D << 16 ) | ( (mbedtls_mpi_uint) 0x0F << 24 ),
    ( (mbedtls_mpi_uint) 0x28 << 0 ) | ( (mbedtls_mpi_uint) 0x6D << 8 ) | ( (mbedtls_mpi_uint) 0x38 << 16 ) | ( (mbedtls_mpi_uint) 0xA3 << 24 ), ( (mbedtls_mpi_uint) 0x82 << 0 ) | ( (mbedtls_mpi_uint) 0x1E << 8 ) | ( (mbedtls_mpi_uint) 0xB9 << 16 ) | ( (mbedtls_mpi_uint) 0x8C << 24 ),
};
# 619 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
static const mbedtls_mpi_uint sm2p256v1_p[] = {
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),





};
static const mbedtls_mpi_uint sm2p256v1_a[] = {
    ( (mbedtls_mpi_uint) 0xFC << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0x00 << 0 ) | ( (mbedtls_mpi_uint) 0x00 << 8 ) | ( (mbedtls_mpi_uint) 0x00 << 16 ) | ( (mbedtls_mpi_uint) 0x00 << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
};
static const mbedtls_mpi_uint sm2p256v1_b[] = {
    ( (mbedtls_mpi_uint) 0x93 << 0 ) | ( (mbedtls_mpi_uint) 0x0E << 8 ) | ( (mbedtls_mpi_uint) 0x94 << 16 ) | ( (mbedtls_mpi_uint) 0x4D << 24 ), ( (mbedtls_mpi_uint) 0x41 << 0 ) | ( (mbedtls_mpi_uint) 0xBD << 8 ) | ( (mbedtls_mpi_uint) 0xBC << 16 ) | ( (mbedtls_mpi_uint) 0xDD << 24 ),
    ( (mbedtls_mpi_uint) 0x92 << 0 ) | ( (mbedtls_mpi_uint) 0x8F << 8 ) | ( (mbedtls_mpi_uint) 0xAB << 16 ) | ( (mbedtls_mpi_uint) 0x15 << 24 ), ( (mbedtls_mpi_uint) 0xF5 << 0 ) | ( (mbedtls_mpi_uint) 0x89 << 8 ) | ( (mbedtls_mpi_uint) 0x97 << 16 ) | ( (mbedtls_mpi_uint) 0xF3 << 24 ),
    ( (mbedtls_mpi_uint) 0xA7 << 0 ) | ( (mbedtls_mpi_uint) 0x09 << 8 ) | ( (mbedtls_mpi_uint) 0x65 << 16 ) | ( (mbedtls_mpi_uint) 0xCF << 24 ), ( (mbedtls_mpi_uint) 0x4B << 0 ) | ( (mbedtls_mpi_uint) 0x9E << 8 ) | ( (mbedtls_mpi_uint) 0x5A << 16 ) | ( (mbedtls_mpi_uint) 0x4D << 24 ),
    ( (mbedtls_mpi_uint) 0x34 << 0 ) | ( (mbedtls_mpi_uint) 0x5E << 8 ) | ( (mbedtls_mpi_uint) 0x9F << 16 ) | ( (mbedtls_mpi_uint) 0x9D << 24 ), ( (mbedtls_mpi_uint) 0x9E << 0 ) | ( (mbedtls_mpi_uint) 0xFA << 8 ) | ( (mbedtls_mpi_uint) 0xE9 << 16 ) | ( (mbedtls_mpi_uint) 0x28 << 24 ),
};
static const mbedtls_mpi_uint sm2p256v1_gx[] = {
    ( (mbedtls_mpi_uint) 0xC7 << 0 ) | ( (mbedtls_mpi_uint) 0x74 << 8 ) | ( (mbedtls_mpi_uint) 0x4C << 16 ) | ( (mbedtls_mpi_uint) 0x33 << 24 ), ( (mbedtls_mpi_uint) 0x89 << 0 ) | ( (mbedtls_mpi_uint) 0x45 << 8 ) | ( (mbedtls_mpi_uint) 0x5A << 16 ) | ( (mbedtls_mpi_uint) 0x71 << 24 ),
    ( (mbedtls_mpi_uint) 0xE1 << 0 ) | ( (mbedtls_mpi_uint) 0x0B << 8 ) | ( (mbedtls_mpi_uint) 0x66 << 16 ) | ( (mbedtls_mpi_uint) 0xF2 << 24 ), ( (mbedtls_mpi_uint) 0xBF << 0 ) | ( (mbedtls_mpi_uint) 0x0B << 8 ) | ( (mbedtls_mpi_uint) 0xE3 << 16 ) | ( (mbedtls_mpi_uint) 0x8F << 24 ),
    ( (mbedtls_mpi_uint) 0x94 << 0 ) | ( (mbedtls_mpi_uint) 0xC9 << 8 ) | ( (mbedtls_mpi_uint) 0x39 << 16 ) | ( (mbedtls_mpi_uint) 0x6A << 24 ), ( (mbedtls_mpi_uint) 0x46 << 0 ) | ( (mbedtls_mpi_uint) 0x04 << 8 ) | ( (mbedtls_mpi_uint) 0x99 << 16 ) | ( (mbedtls_mpi_uint) 0x5F << 24 ),
    ( (mbedtls_mpi_uint) 0x19 << 0 ) | ( (mbedtls_mpi_uint) 0x81 << 8 ) | ( (mbedtls_mpi_uint) 0x19 << 16 ) | ( (mbedtls_mpi_uint) 0x1F << 24 ), ( (mbedtls_mpi_uint) 0x2C << 0 ) | ( (mbedtls_mpi_uint) 0xAE << 8 ) | ( (mbedtls_mpi_uint) 0xC4 << 16 ) | ( (mbedtls_mpi_uint) 0x32 << 24 ),
};
static const mbedtls_mpi_uint sm2p256v1_gy[] = {
    ( (mbedtls_mpi_uint) 0xA0 << 0 ) | ( (mbedtls_mpi_uint) 0xF0 << 8 ) | ( (mbedtls_mpi_uint) 0x39 << 16 ) | ( (mbedtls_mpi_uint) 0x21 << 24 ), ( (mbedtls_mpi_uint) 0xE5 << 0 ) | ( (mbedtls_mpi_uint) 0x32 << 8 ) | ( (mbedtls_mpi_uint) 0xDF << 16 ) | ( (mbedtls_mpi_uint) 0x02 << 24 ),
    ( (mbedtls_mpi_uint) 0x40 << 0 ) | ( (mbedtls_mpi_uint) 0x47 << 8 ) | ( (mbedtls_mpi_uint) 0x2A << 16 ) | ( (mbedtls_mpi_uint) 0xC6 << 24 ), ( (mbedtls_mpi_uint) 0x7C << 0 ) | ( (mbedtls_mpi_uint) 0x87 << 8 ) | ( (mbedtls_mpi_uint) 0xA9 << 16 ) | ( (mbedtls_mpi_uint) 0xD0 << 24 ),
    ( (mbedtls_mpi_uint) 0x53 << 0 ) | ( (mbedtls_mpi_uint) 0x21 << 8 ) | ( (mbedtls_mpi_uint) 0x69 << 16 ) | ( (mbedtls_mpi_uint) 0x6B << 24 ), ( (mbedtls_mpi_uint) 0xE3 << 0 ) | ( (mbedtls_mpi_uint) 0xCE << 8 ) | ( (mbedtls_mpi_uint) 0xBD << 16 ) | ( (mbedtls_mpi_uint) 0x59 << 24 ),
    ( (mbedtls_mpi_uint) 0x9C << 0 ) | ( (mbedtls_mpi_uint) 0x77 << 8 ) | ( (mbedtls_mpi_uint) 0xF6 << 16 ) | ( (mbedtls_mpi_uint) 0xF4 << 24 ), ( (mbedtls_mpi_uint) 0xA2 << 0 ) | ( (mbedtls_mpi_uint) 0x36 << 8 ) | ( (mbedtls_mpi_uint) 0x37 << 16 ) | ( (mbedtls_mpi_uint) 0xBC << 24 ),
};
static const mbedtls_mpi_uint sm2p256v1_n[] = {
    ( (mbedtls_mpi_uint) 0x23 << 0 ) | ( (mbedtls_mpi_uint) 0x41 << 8 ) | ( (mbedtls_mpi_uint) 0xD5 << 16 ) | ( (mbedtls_mpi_uint) 0x39 << 24 ), ( (mbedtls_mpi_uint) 0x09 << 0 ) | ( (mbedtls_mpi_uint) 0xF4 << 8 ) | ( (mbedtls_mpi_uint) 0xBB << 16 ) | ( (mbedtls_mpi_uint) 0x53 << 24 ),
    ( (mbedtls_mpi_uint) 0x2B << 0 ) | ( (mbedtls_mpi_uint) 0x05 << 8 ) | ( (mbedtls_mpi_uint) 0xC6 << 16 ) | ( (mbedtls_mpi_uint) 0x21 << 24 ), ( (mbedtls_mpi_uint) 0x6B << 0 ) | ( (mbedtls_mpi_uint) 0xDF << 8 ) | ( (mbedtls_mpi_uint) 0x03 << 16 ) | ( (mbedtls_mpi_uint) 0x72 << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),
    ( (mbedtls_mpi_uint) 0xFF << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ), ( (mbedtls_mpi_uint) 0xFE << 0 ) | ( (mbedtls_mpi_uint) 0xFF << 8 ) | ( (mbedtls_mpi_uint) 0xFF << 16 ) | ( (mbedtls_mpi_uint) 0xFF << 24 ),





};






static inline void ecp_mpi_load( mbedtls_mpi *X, const mbedtls_mpi_uint *p, size_t len )
{
    X->s = 1;
    X->n = len / sizeof( mbedtls_mpi_uint );
    X->p = (mbedtls_mpi_uint *) p;
}




static inline void ecp_mpi_set1( mbedtls_mpi *X )
{
    static mbedtls_mpi_uint one[] = { 1 };
    X->s = 1;
    X->n = 1;
    X->p = one;
}




static int ecp_group_load( mbedtls_ecp_group *grp,
                           const mbedtls_mpi_uint *p, size_t plen,
                           const mbedtls_mpi_uint *a, size_t alen,
                           const mbedtls_mpi_uint *b, size_t blen,
                           const mbedtls_mpi_uint *gx, size_t gxlen,
                           const mbedtls_mpi_uint *gy, size_t gylen,
                           const mbedtls_mpi_uint *n, size_t nlen)
{
    ecp_mpi_load( &grp->P, p, plen );
    if( a != ((void *)0) )
        ecp_mpi_load( &grp->A, a, alen );
    ecp_mpi_load( &grp->B, b, blen );
    ecp_mpi_load( &grp->N, n, nlen );

    ecp_mpi_load( &grp->G.X, gx, gxlen );
    ecp_mpi_load( &grp->G.Y, gy, gylen );
    ecp_mpi_set1( &grp->G.Z );

    grp->pbits = mbedtls_mpi_bitlen( &grp->P );
    grp->nbits = mbedtls_mpi_bitlen( &grp->N );

    grp->h = 1;

    return( 0 );
}
# 770 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id )
{
    mbedtls_ecp_group_free( grp );

    grp->id = id;

    switch( id )
    {

        case MBEDTLS_ECP_DP_SECP192R1:
            return( ecp_group_load( grp, secp192r1_p, sizeof( secp192r1_p ), secp192r1_a, sizeof( secp192r1_a ), secp192r1_b, sizeof( secp192r1_b ), secp192r1_gx, sizeof( secp192r1_gx ), secp192r1_gy, sizeof( secp192r1_gy ), secp192r1_n, sizeof( secp192r1_n ) ) );



        case MBEDTLS_ECP_DP_SECP224R1:
            return( ecp_group_load( grp, secp224r1_p, sizeof( secp224r1_p ), secp224r1_a, sizeof( secp224r1_a ), secp224r1_b, sizeof( secp224r1_b ), secp224r1_gx, sizeof( secp224r1_gx ), secp224r1_gy, sizeof( secp224r1_gy ), secp224r1_n, sizeof( secp224r1_n ) ) );



        case MBEDTLS_ECP_DP_SECP256R1:
            return( ecp_group_load( grp, secp256r1_p, sizeof( secp256r1_p ), secp256r1_a, sizeof( secp256r1_a ), secp256r1_b, sizeof( secp256r1_b ), secp256r1_gx, sizeof( secp256r1_gx ), secp256r1_gy, sizeof( secp256r1_gy ), secp256r1_n, sizeof( secp256r1_n ) ) );



        case MBEDTLS_ECP_DP_SECP384R1:
            return( ecp_group_load( grp, secp384r1_p, sizeof( secp384r1_p ), secp384r1_a, sizeof( secp384r1_a ), secp384r1_b, sizeof( secp384r1_b ), secp384r1_gx, sizeof( secp384r1_gx ), secp384r1_gy, sizeof( secp384r1_gy ), secp384r1_n, sizeof( secp384r1_n ) ) );
# 804 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
        case MBEDTLS_ECP_DP_SECP192K1:
            return( ecp_group_load( grp, secp192k1_p, sizeof( secp192k1_p ), secp192k1_a, sizeof( secp192k1_a ), secp192k1_b, sizeof( secp192k1_b ), secp192k1_gx, sizeof( secp192k1_gx ), secp192k1_gy, sizeof( secp192k1_gy ), secp192k1_n, sizeof( secp192k1_n ) ) );



        case MBEDTLS_ECP_DP_SECP224K1:
            return( ecp_group_load( grp, secp224k1_p, sizeof( secp224k1_p ), secp224k1_a, sizeof( secp224k1_a ), secp224k1_b, sizeof( secp224k1_b ), secp224k1_gx, sizeof( secp224k1_gx ), secp224k1_gy, sizeof( secp224k1_gy ), secp224k1_n, sizeof( secp224k1_n ) ) );



        case MBEDTLS_ECP_DP_SECP256K1:
            return( ecp_group_load( grp, secp256k1_p, sizeof( secp256k1_p ), secp256k1_a, sizeof( secp256k1_a ), secp256k1_b, sizeof( secp256k1_b ), secp256k1_gx, sizeof( secp256k1_gx ), secp256k1_gy, sizeof( secp256k1_gy ), secp256k1_n, sizeof( secp256k1_n ) ) );



        case MBEDTLS_ECP_DP_BP256R1:
            return( ecp_group_load( grp, brainpoolP256r1_p, sizeof( brainpoolP256r1_p ), brainpoolP256r1_a, sizeof( brainpoolP256r1_a ), brainpoolP256r1_b, sizeof( brainpoolP256r1_b ), brainpoolP256r1_gx, sizeof( brainpoolP256r1_gx ), brainpoolP256r1_gy, sizeof( brainpoolP256r1_gy ), brainpoolP256r1_n, sizeof( brainpoolP256r1_n ) ) );



        case MBEDTLS_ECP_DP_BP384R1:
            return( ecp_group_load( grp, brainpoolP384r1_p, sizeof( brainpoolP384r1_p ), brainpoolP384r1_a, sizeof( brainpoolP384r1_a ), brainpoolP384r1_b, sizeof( brainpoolP384r1_b ), brainpoolP384r1_gx, sizeof( brainpoolP384r1_gx ), brainpoolP384r1_gy, sizeof( brainpoolP384r1_gy ), brainpoolP384r1_n, sizeof( brainpoolP384r1_n ) ) );
# 839 "../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c"
        case MBEDTLS_ECP_DP_SM2P256V1:
            return( ecp_group_load( grp, sm2p256v1_p, sizeof( sm2p256v1_p ), sm2p256v1_a, sizeof( sm2p256v1_a ), sm2p256v1_b, sizeof( sm2p256v1_b ), sm2p256v1_gx, sizeof( sm2p256v1_gx ), sm2p256v1_gy, sizeof( sm2p256v1_gy ), sm2p256v1_n, sizeof( sm2p256v1_n ) ) );


        default:
            mbedtls_ecp_group_free( grp );
            return( -0x4E80 );
    }
}
