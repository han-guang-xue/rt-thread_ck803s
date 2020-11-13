# 1 "../../../components/dfs/filesystems/elmfat/ff.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../components/dfs/filesystems/elmfat/ff.c"
# 20 "../../../components/dfs/filesystems/elmfat/ff.c"
# 1 "../../../components/libc/compilers/minilibc/string.h" 1
# 17 "../../../components/libc/compilers/minilibc/string.h"
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
# 18 "../../../components/libc/compilers/minilibc/string.h" 2
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
# 21 "../../../components/dfs/filesystems/elmfat/ff.c" 2
# 1 "../../../components/dfs/filesystems/elmfat/ff.h" 1
# 29 "../../../components/dfs/filesystems/elmfat/ff.h"
# 1 "../../../components/dfs/filesystems/elmfat/integer.h" 1
# 18 "../../../components/dfs/filesystems/elmfat/integer.h"
typedef int INT;
typedef unsigned int UINT;


typedef unsigned char BYTE;


typedef short SHORT;
typedef unsigned short WORD;
typedef unsigned short WCHAR;


typedef long LONG;
typedef unsigned long DWORD;


typedef unsigned long long QWORD;
# 30 "../../../components/dfs/filesystems/elmfat/ff.h" 2
# 1 "../../../components/dfs/filesystems/elmfat/ffconf.h" 1
# 31 "../../../components/dfs/filesystems/elmfat/ff.h" 2
# 70 "../../../components/dfs/filesystems/elmfat/ff.h"
typedef char TCHAR;
# 84 "../../../components/dfs/filesystems/elmfat/ff.h"
typedef QWORD FSIZE_t;
# 93 "../../../components/dfs/filesystems/elmfat/ff.h"
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
# 126 "../../../components/dfs/filesystems/elmfat/ff.h"
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
# 303 "../../../components/dfs/filesystems/elmfat/ff.h"
DWORD get_fattime (void);




WCHAR ff_convert (WCHAR chr, UINT dir);
WCHAR ff_wtoupper (WCHAR chr);

void* ff_memalloc (UINT msize);
void ff_memfree (void* mblock);





int ff_cre_syncobj (BYTE vol, rt_mutex_t* sobj);
int ff_req_grant (rt_mutex_t sobj);
void ff_rel_grant (rt_mutex_t sobj);
int ff_del_syncobj (rt_mutex_t sobj);
# 22 "../../../components/dfs/filesystems/elmfat/ff.c" 2
# 1 "../../../components/dfs/filesystems/elmfat/diskio.h" 1
# 16 "../../../components/dfs/filesystems/elmfat/diskio.h"
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
# 23 "../../../components/dfs/filesystems/elmfat/ff.c" 2
# 525 "../../../components/dfs/filesystems/elmfat/ff.c"
static FATFS *FatFs[2];
static WORD Fsid;
# 582 "../../../components/dfs/filesystems/elmfat/ff.c"
static const BYTE ExCvt[] = {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF};
# 601 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 681 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 731 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 872 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 933 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 972 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 990 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1066 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1132 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1236 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1401 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1431 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1480 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1550 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1593 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1631 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1750 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1809 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1830 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1888 "../../../components/dfs/filesystems/elmfat/ff.c"
static
void get_xdir_info (
 BYTE* dirb,
 FILINFO* fno
)
{
 UINT di, si;
 WCHAR w;

 UINT nc;
# 1912 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 1941 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2093 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2170 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2249 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2352 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2388 "../../../components/dfs/filesystems/elmfat/ff.c"
 return res;
}
# 2400 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2487 "../../../components/dfs/filesystems/elmfat/ff.c"
 fno->fattrib = dp->dir[11];
 fno->fsize = ld_dword(dp->dir + 28);
 tm = ld_dword(dp->dir + 22);
 fno->ftime = (WORD)tm; fno->fdate = (WORD)(tm >> 16);
}
# 2574 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2621 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2760 "../../../components/dfs/filesystems/elmfat/ff.c"
}
# 2769 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2804 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2857 "../../../components/dfs/filesystems/elmfat/ff.c"
static
int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 UINT i;
 int vol = -1;
# 2873 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2900 "../../../components/dfs/filesystems/elmfat/ff.c"
   return vol;
  }



  vol = 0;

 }
 return vol;
}
# 2918 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 2946 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3157 "../../../components/dfs/filesystems/elmfat/ff.c"
 return FR_OK;
}
# 3167 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3202 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3250 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3384 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3451 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3551 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3672 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3751 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 3939 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4093 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4146 "../../../components/dfs/filesystems/elmfat/ff.c"
   }
  }
  ff_memfree(lfn);
  if (res == FR_NO_FILE) res = FR_NO_PATH;
 }
 if (res != FR_OK) obj->fs = 0;

 { unlock_fs(fs, res); return res; };
}
# 4163 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4196 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4301 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4336 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4423 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4473 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4568 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 4661 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 5234 "../../../components/dfs/filesystems/elmfat/ff.c"
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
# 6068 "../../../components/dfs/filesystems/elmfat/ff.c"
int elm_get_vol(FATFS *fat)
{
 int vol;

 for (vol = 0; vol < 2; vol ++)
 {
  if (FatFs[vol] == fat) return vol;
 }

 return -1;
}
