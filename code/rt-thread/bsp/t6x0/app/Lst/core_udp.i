# 1 "../../../components/net/lwip-2.0.2/src/core/udp.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../components/net/lwip-2.0.2/src/core/udp.c"
# 48 "../../../components/net/lwip-2.0.2/src/core/udp.c"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 1
# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h"
# 1 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 1



# 1 "./rtconfig.h" 1
# 5 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 2
# 397 "../../../components/net/lwip-2.0.2/src/lwipopts.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 1 3 4
# 20 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\features.h" 1 3 4
# 21 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 2 3 4
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
# 398 "../../../components/net/lwip-2.0.2/src/lwipopts.h" 2
# 52 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 1
# 40 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 1
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
# 1 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 1
# 38 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h"
# 1 "../../../include/rthw.h" 1
# 32 "../../../include/rthw.h"
# 1 "../../../include/rtthread.h" 1
# 36 "../../../include/rtthread.h"
# 1 "../../../include/rtdebug.h" 1
# 37 "../../../include/rtthread.h" 2
# 1 "../../../include/rtdef.h" 1
# 45 "../../../include/rtdef.h"
# 1 "../libraries/inc/tih/sysdep.h" 1
# 46 "../../../include/rtdef.h" 2
# 68 "../../../include/rtdef.h"

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
# 33 "../../../include/rthw.h" 2
# 1 "../libraries/inc/tih/core_ck803.h" 1
# 27 "../libraries/inc/tih/core_ck803.h"
# 1 "../libraries/inc/tih/sysdep.h" 1
# 28 "../libraries/inc/tih/core_ck803.h" 2
# 117 "../libraries/inc/tih/core_ck803.h"
# 1 "../libraries/inc/tih/csi_gcc.h" 1
# 32 "../libraries/inc/tih/csi_gcc.h"
# 1 "../libraries/inc/tih/csi_reg.h" 1
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
# 39 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2


typedef unsigned char u8_t;
typedef signed char s8_t;
typedef unsigned short u16_t;
typedef short s16_t;
typedef unsigned int u32_t;
typedef int s32_t;
typedef u32_t mem_ptr_t;
# 62 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h"
# 1 "../../../components/libc/compilers/minilibc/errno.h" 1



# 1 "../../../include/libc/libc_errno.h" 1
# 5 "../../../components/libc/compilers/minilibc/errno.h" 2
# 63 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2
# 98 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h"
void sys_arch_assert(const char* file, int line);



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
# 103 "../../../components/net/lwip-2.0.2/src/arch/include/arch/cc.h" 2
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 105 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
# 1 "../../../components/libc/compilers/minilibc/stddef.h" 1




typedef signed long ptrdiff_t;
# 106 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 138 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
# 1 "../../../components/libc/compilers/minilibc/inttypes.h" 1



# 1 "../../../components/libc/compilers/minilibc/stdint.h" 1
# 5 "../../../components/libc/compilers/minilibc/inttypes.h" 2
# 139 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 175 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 176 "../../../components/net/lwip-2.0.2/src/include/lwip/arch.h" 2
# 41 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/debug.h" 2
# 53 "../../../components/net/lwip-2.0.2/src/include/lwip/opt.h" 2
# 49 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2



# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 1
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h" 1
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
# 112 "../../../components/net/lwip-2.0.2/src/include/lwip/err.h"
int err_to_errno(err_t err);
# 43 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h" 2
# 72 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
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
# 142 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
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
# 223 "../../../components/net/lwip-2.0.2/src/include/lwip/pbuf.h"
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
# 46 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h" 1
# 46 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 1
# 41 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h" 1
# 85 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 123 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h" 1
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
# 174 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 215 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h" 1
# 46 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/def.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6_addr.h" 2
# 45 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h" 2
# 54 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 244 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
typedef ip4_addr_t ip_addr_t;
# 338 "../../../components/net/lwip-2.0.2/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h" 2



# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/mem.h" 1
# 67 "../../../components/net/lwip-2.0.2/src/include/lwip/mem.h"
typedef u16_t mem_size_t;




void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h" 1
# 42 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"



























# 87 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"













# 126 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h"


# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2


typedef enum {

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_std.h" 1
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
# 53 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h" 1
# 91 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
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
# 169 "../../../components/net/lwip-2.0.2/src/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 57 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 1
# 58 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 139 "../../../components/net/lwip-2.0.2/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "../../../components/net/lwip-2.0.2/src/include/lwip/stats.h" 2
# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h" 2
# 107 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
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
# 225 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
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
# 353 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
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
# 396 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);






void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
# 447 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
err_t netif_input(struct pbuf *p, struct netif *inp);
# 470 "../../../components/net/lwip-2.0.2/src/include/lwip/netif.h"
struct netif *netif_find_nonum(const char *name);
u8_t netif_get_index(struct netif *target);
struct netif *netif_find_byindex(u8_t index);
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h" 1
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip4.h" 1
# 52 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip4.h"

struct ip4_addr_packed {
  u32_t addr;
} __attribute__((packed));





typedef struct ip4_addr_packed ip4_addr_p_t;









struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;





  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip4_addr_p_t src;
  ip4_addr_p_t dest;
} __attribute__((packed));

# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h" 2
# 65 "../../../components/net/lwip-2.0.2/src/include/lwip/ip4.h"
struct netif *ip4_route(const ip4_addr_t *dest);





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
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/ip6.h" 1
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/ip.h" 1
# 50 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h" 2
# 89 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};
# 105 "../../../components/net/lwip-2.0.2/src/include/lwip/ip.h"
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
# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/udp.h" 1
# 52 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/udp.h"

struct udp_hdr {
  u16_t src;
  u16_t dest;
  u16_t len;
  u16_t chksum;
} __attribute__((packed));

# 51 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h" 2
# 61 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
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
# 154 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
void udp_input (struct pbuf *p, struct netif *inp);

void udp_init (void);
# 174 "../../../components/net/lwip-2.0.2/src/include/lwip/udp.h"
void udp_netif_ip_addr_changed(const ip_addr_t* old_addr, const ip_addr_t* new_addr);
# 53 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2


# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/inet_chksum.h" 1
# 74 "../../../components/net/lwip-2.0.2/src/include/lwip/inet_chksum.h"
u16_t inet_chksum(const void *dataptr, u16_t len);
u16_t inet_chksum_pbuf(struct pbuf *p);





u16_t inet_chksum_pseudo(struct pbuf *p, u8_t proto, u16_t proto_len,
       const ip4_addr_t *src, const ip4_addr_t *dest);
u16_t inet_chksum_pseudo_partial(struct pbuf *p, u8_t proto,
       u16_t proto_len, u16_t chksum_len, const ip4_addr_t *src, const ip4_addr_t *dest);
# 95 "../../../components/net/lwip-2.0.2/src/include/lwip/inet_chksum.h"
u16_t ip_chksum_pseudo(struct pbuf *p, u8_t proto, u16_t proto_len,
       const ip_addr_t *src, const ip_addr_t *dest);
u16_t ip_chksum_pseudo_partial(struct pbuf *p, u8_t proto, u16_t proto_len,
       u16_t chksum_len, const ip_addr_t *src, const ip_addr_t *dest);
# 56 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2




# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h" 1
# 44 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp.h" 1
# 68 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));

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
# 61 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp6.h" 1
# 48 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp6.h"
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp6.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp6.h"
enum icmp6_type {

  ICMP6_TYPE_DUR = 1,

  ICMP6_TYPE_PTB = 2,

  ICMP6_TYPE_TE = 3,

  ICMP6_TYPE_PP = 4,

  ICMP6_TYPE_PE1 = 100,

  ICMP6_TYPE_PE2 = 101,

  ICMP6_TYPE_RSV_ERR = 127,


  ICMP6_TYPE_EREQ = 128,

  ICMP6_TYPE_EREP = 129,

  ICMP6_TYPE_MLQ = 130,

  ICMP6_TYPE_MLR = 131,

  ICMP6_TYPE_MLD = 132,

  ICMP6_TYPE_RS = 133,

  ICMP6_TYPE_RA = 134,

  ICMP6_TYPE_NS = 135,

  ICMP6_TYPE_NA = 136,

  ICMP6_TYPE_RD = 137,

  ICMP6_TYPE_MRA = 151,

  ICMP6_TYPE_MRS = 152,

  ICMP6_TYPE_MRT = 153,

  ICMP6_TYPE_PE3 = 200,

  ICMP6_TYPE_PE4 = 201,

  ICMP6_TYPE_RSV_INF = 255
};


enum icmp6_dur_code {

  ICMP6_DUR_NO_ROUTE = 0,

  ICMP6_DUR_PROHIBITED = 1,

  ICMP6_DUR_SCOPE = 2,

  ICMP6_DUR_ADDRESS = 3,

  ICMP6_DUR_PORT = 4,

  ICMP6_DUR_POLICY = 5,

  ICMP6_DUR_REJECT_ROUTE = 6
};


enum icmp6_te_code {

  ICMP6_TE_HL = 0,

  ICMP6_TE_FRAG = 1
};


enum icmp6_pp_code {

  ICMP6_PP_FIELD = 0,

  ICMP6_PP_HEADER = 1,

  ICMP6_PP_OPTION = 2
};






struct icmp6_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u32_t data;
} __attribute__((packed));

# 153 "../../../components/net/lwip-2.0.2/src/include/lwip/prot/icmp6.h"

struct icmp6_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));

# 49 "../../../components/net/lwip-2.0.2/src/include/lwip/icmp6.h" 2
# 62 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2

# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/snmp.h" 1
# 47 "../../../components/net/lwip-2.0.2/src/include/lwip/snmp.h"
struct udp_pcb;
struct netif;
# 64 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2
# 1 "../../../components/net/lwip-2.0.2/src/include/lwip/dhcp.h" 1
# 62 "../../../components/net/lwip-2.0.2/src/include/lwip/dhcp.h"
typedef enum {
  DHCP_AUTOIP_COOP_STATE_OFF = 0,
  DHCP_AUTOIP_COOP_STATE_ON = 1
} dhcp_autoip_coop_state_enum_t;

struct dhcp
{

  u32_t xid;

  struct dhcp_msg *msg_in;

  u8_t pcb_allocated;

  u8_t state;

  u8_t tries;



  u8_t subnet_mask_given;

  struct pbuf *p_out;
  struct dhcp_msg *msg_out;
  u16_t options_out_len;
  u16_t request_timeout;
  u16_t t1_timeout;
  u16_t t2_timeout;
  u16_t t1_renew_time;
  u16_t t2_rebind_time;
  u16_t lease_used;
  u16_t t0_timeout;
  ip_addr_t server_ip_addr;
  ip4_addr_t offered_ip_addr;
  ip4_addr_t offered_sn_mask;
  ip4_addr_t offered_gw_addr;

  u32_t offered_t0_lease;
  u32_t offered_t1_renew;
  u32_t offered_t2_rebind;




};


void dhcp_set_struct(struct netif *netif, struct dhcp *dhcp);


void dhcp_cleanup(struct netif *netif);
err_t dhcp_start(struct netif *netif);
err_t dhcp_renew(struct netif *netif);
err_t dhcp_release(struct netif *netif);
void dhcp_stop(struct netif *netif);
void dhcp_inform(struct netif *netif);
void dhcp_network_changed(struct netif *netif);

void dhcp_arp_reply(struct netif *netif, const ip4_addr_t *addr);

u8_t dhcp_supplied_address(const struct netif *netif);

void dhcp_coarse_tmr(void);

void dhcp_fine_tmr(void);
# 65 "../../../components/net/lwip-2.0.2/src/core/udp.c" 2
# 77 "../../../components/net/lwip-2.0.2/src/core/udp.c"
static u16_t udp_port = 0xc000;



struct udp_pcb *udp_pcbs;




void
udp_init(void)
{



}






static u16_t
udp_new_port(void)
{
  u16_t n = 0;
  struct udp_pcb *pcb;

again:
  if (udp_port++ == 0xffff) {
    udp_port = 0xc000;
  }

  for (pcb = udp_pcbs; pcb != 
# 110 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                             0
# 110 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                 ; pcb = pcb->next) {
    if (pcb->local_port == udp_port) {
      if (++n > (0xffff - 0xc000)) {
        return 0;
      }
      goto again;
    }
  }
  return udp_port;
}
# 129 "../../../components/net/lwip-2.0.2/src/core/udp.c"
static u8_t
__attribute__((section(".fast"))) udp_input_local_match(struct udp_pcb *pcb, struct netif *inp, u8_t broadcast)
{
  (void)inp;
  (void)broadcast;


  if (0) {

    if ((broadcast != 0) && !((pcb)->so_options & (0x20U))) {
      return 0;
    }

    return 1;
  }


  if (1) {



    if (broadcast != 0) {

      if (((pcb)->so_options & (0x20U)))

      {
        if ((((&pcb->local_ip)) == 
# 155 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
           0 
# 155 "../../../components/net/lwip-2.0.2/src/core/udp.c"
           || ((*((&pcb->local_ip))).addr == ((u32_t)0x00000000UL))) ||
          (((&ip_data.current_iphdr_dest)->addr == ((u32_t)0xffffffffUL))) ||
           ((((&pcb->local_ip))->addr & (((const ip4_addr_t*)(&((inp)->netmask))))->addr) == (((&ip_data.current_iphdr_dest))->addr & (((const ip4_addr_t*)(&((inp)->netmask))))->addr))) {
          return 1;
        }
      }
    } else


    if (((&pcb->local_ip) == 
# 164 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
       0 
# 164 "../../../components/net/lwip-2.0.2/src/core/udp.c"
       || ((*(&pcb->local_ip)).addr == ((u32_t)0x00000000UL))) || ((&pcb->local_ip)->addr == ((&ip_data.current_iphdr_dest))->addr)) {
      return 1;
    }
  }

  return 0;
}
# 184 "../../../components/net/lwip-2.0.2/src/core/udp.c"
void
__attribute__((section(".fast"))) udp_input(struct pbuf *p, struct netif *inp)
{
  struct udp_hdr *udphdr;
  struct udp_pcb *pcb, *prev;
  struct udp_pcb *uncon_pcb;
  u16_t src, dest;
  u8_t broadcast;
  u8_t for_us = 0;

  (void)inp;

  ;

  ;


  if (p->len < 8) {

   
                                                                                           ;
    ;
    ;
    ;
    pbuf_free(p);
    goto end;
  }

  udphdr = (struct udp_hdr *)p->payload;


  broadcast = ip4_addr_isbroadcast_u32(((&ip_data.current_iphdr_dest))->addr, (ip_data.current_netif));

  ;


  src = lwip_htons(udphdr->src);
  dest = lwip_htons(udphdr->dest);

  ;


  ;
  ;
  ;
  ;
  ;

  pcb = 
# 232 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
       0
# 232 "../../../components/net/lwip-2.0.2/src/core/udp.c"
           ;
  prev = 
# 233 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
        0
# 233 "../../../components/net/lwip-2.0.2/src/core/udp.c"
            ;
  uncon_pcb = 
# 234 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 234 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ;




  for (pcb = udp_pcbs; pcb != 
# 239 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                             0
# 239 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                 ; pcb = pcb->next) {

    ;
    ;
    ;
    ;
    ;


    if ((pcb->local_port == dest) &&
        (udp_input_local_match(pcb, inp, broadcast) != 0)) {
      if (((pcb->flags & 0x04U) == 0) &&
          ((uncon_pcb == 
# 251 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                        0
# 251 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                            )


          || !((&pcb->local_ip) == 
# 254 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0 
# 254 "../../../components/net/lwip-2.0.2/src/core/udp.c"
             || ((*(&pcb->local_ip)).addr == ((u32_t)0x00000000UL)))

          )) {

        uncon_pcb = pcb;
      }


      if ((pcb->remote_port == src) &&
          (((pcb->remote_ip).addr == ((u32_t)0x00000000UL)) ||
          ((&pcb->remote_ip)->addr == ((&ip_data.current_iphdr_src))->addr))) {

        if (prev != 
# 266 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                   0
# 266 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                       ) {


          prev->next = pcb->next;
          pcb->next = udp_pcbs;
          udp_pcbs = pcb;
        } else {
          ;
        }
        break;
      }
    }

    prev = pcb;
  }

  if (pcb == 
# 282 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
            0
# 282 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                ) {
    pcb = uncon_pcb;
  }


  if (pcb != 
# 287 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
            0
# 287 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                ) {
    for_us = 1;
  } else {






    if (!0) {
      for_us = ((((const ip4_addr_t*)(&((inp)->ip_addr))))->addr == ((&ip_data.current_iphdr_dest))->addr);
    }

  }

  if (for_us) {
    ;
# 339 "../../../components/net/lwip-2.0.2/src/core/udp.c"
    if (pbuf_header(p, -8)) {

      do { if (!(0)) { do {rt_kprintf("pbuf_header failed\n"); sys_arch_assert("../../../components/net/lwip-2.0.2/src/core/udp.c", 341);}while(0); }} while(0);
      ;
      ;
      pbuf_free(p);
      goto end;
    }

    if (pcb != 
# 348 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
              0
# 348 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                  ) {
      ;
# 391 "../../../components/net/lwip-2.0.2/src/core/udp.c"
      if (pcb->recv != 
# 391 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                      0
# 391 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                          ) {

        pcb->recv(pcb->recv_arg, pcb, p, (&ip_data.current_iphdr_src), src);
      } else {

        pbuf_free(p);
        goto end;
      }
    } else {
      ;




      if (!broadcast && !((((&ip_data.current_iphdr_dest))->addr & ((((0xf0000000UL) & 0x000000ffUL) << 24) | (((0xf0000000UL) & 0x0000ff00UL) << 8) | (((0xf0000000UL) & 0x00ff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0x000000ffUL) << 24) | (((0xe0000000UL) & 0x0000ff00UL) << 8) | (((0xe0000000UL) & 0x00ff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {

        pbuf_header_force(p, (s16_t)((ip_data.current_ip_header_tot_len) + 8));
        icmp_dest_unreach(p, ICMP_DUR_PORT);
      }

      ;
      ;
      ;
      pbuf_free(p);
    }
  } else {
    pbuf_free(p);
  }
end:
  ;
  return;
# 432 "../../../components/net/lwip-2.0.2/src/core/udp.c"
}
# 454 "../../../components/net/lwip-2.0.2/src/core/udp.c"
err_t
__attribute__((section(".fast"))) udp_send(struct udp_pcb *pcb, struct pbuf *p)
{
  if ((pcb == 
# 457 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 457 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || 0) {
    return ERR_VAL;
  }


  return udp_sendto(pcb, p, &pcb->remote_ip, pcb->remote_port);
}
# 501 "../../../components/net/lwip-2.0.2/src/core/udp.c"
err_t
__attribute__((section(".fast"))) udp_sendto(struct udp_pcb *pcb, struct pbuf *p,
  const ip_addr_t *dst_ip, u16_t dst_port)
{
# 516 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  struct netif *netif;
  const ip_addr_t *dst_ip_route = dst_ip;

  if ((pcb == 
# 519 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 519 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || (dst_ip == 
# 519 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 519 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ) || !1) {
    return ERR_VAL;
  }

  ;


  if ((((dst_ip_route)->addr & ((((0xf0000000UL) & 0x000000ffUL) << 24) | (((0xf0000000UL) & 0x0000ff00UL) << 8) | (((0xf0000000UL) & 0x00ff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0x000000ffUL) << 24) | (((0xe0000000UL) & 0x0000ff00UL) << 8) | (((0xe0000000UL) & 0x00ff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {






    {





      if (!((pcb->multicast_ip).addr == ((u32_t)0x00000000UL)) &&
          !(((&pcb->multicast_ip))->addr == (((&ip_addr_broadcast)))->addr)) {
        dst_ip_route = &pcb->multicast_ip;
      }

    }
  }



  if(0) {







    netif = ip4_route(dst_ip_route);
  } else {
    netif = ip4_route(dst_ip_route);
  }


  if (netif == 
# 563 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
              0
# 563 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                  ) {
    ;
    ;
    ;
    ;
    return ERR_RTE;
  }



  return udp_sendto_if(pcb, p, dst_ip, dst_port, netif);

}
# 597 "../../../components/net/lwip-2.0.2/src/core/udp.c"
err_t
__attribute__((section(".fast"))) udp_sendto_if(struct udp_pcb *pcb, struct pbuf *p,
  const ip_addr_t *dst_ip, u16_t dst_port, struct netif *netif)
{
# 612 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  const ip_addr_t *src_ip;

  if ((pcb == 
# 614 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 614 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || (dst_ip == 
# 614 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 614 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ) || !1) {
    return ERR_VAL;
  }
# 641 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  if ((((&pcb->local_ip)) == 
# 641 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
     0 
# 641 "../../../components/net/lwip-2.0.2/src/core/udp.c"
     || ((*((&pcb->local_ip))).addr == ((u32_t)0x00000000UL))) ||
      ((((&pcb->local_ip))->addr & ((((0xf0000000UL) & 0x000000ffUL) << 24) | (((0xf0000000UL) & 0x0000ff00UL) << 8) | (((0xf0000000UL) & 0x00ff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0x000000ffUL) << 24) | (((0xe0000000UL) & 0x0000ff00UL) << 8) | (((0xe0000000UL) & 0x00ff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {


    src_ip = ((const ip_addr_t*)&((netif)->ip_addr));
  } else {


    if (!(((&(pcb->local_ip)))->addr == (((const ip4_addr_t*)(&((netif)->ip_addr))))->addr)) {

      return ERR_RTE;
    }

    src_ip = &pcb->local_ip;
  }




  return udp_sendto_if_src(pcb, p, dst_ip, dst_port, netif, src_ip);

}



err_t
__attribute__((section(".fast"))) udp_sendto_if_src(struct udp_pcb *pcb, struct pbuf *p,
  const ip_addr_t *dst_ip, u16_t dst_port, struct netif *netif, const ip_addr_t *src_ip)
{
# 681 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  struct udp_hdr *udphdr;
  err_t err;
  struct pbuf *q;
  u8_t ip_proto;
  u8_t ttl;

  if ((pcb == 
# 687 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 687 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || (dst_ip == 
# 687 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 687 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ) || !1 ||
      !1) {
    return ERR_VAL;
  }



  if (!((pcb)->so_options & (0x20U)) &&



      ip4_addr_isbroadcast_u32((dst_ip)->addr, netif)) {
   
                                                                            ;
    return ERR_VAL;
  }



  if (pcb->local_port == 0) {
    ;
    err = udp_bind(pcb, &pcb->local_ip, pcb->local_port);
    if (err != ERR_OK) {
      ;
      return err;
    }
  }


  if (pbuf_header(p, 8)) {

    q = pbuf_alloc(PBUF_IP, 8, PBUF_RAM);

    if (q == 
# 720 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
            0
# 720 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                ) {
      ;
      return ERR_MEM;
    }
    if (p->tot_len != 0) {

      pbuf_chain(q, p);
    }

   
                                                                                                ;
  } else {


    q = p;
    ;
  }
  do { if (!((q->len >= sizeof(struct udp_hdr)))) { do {rt_kprintf("check that first pbuf can hold struct udp_hdr"); sys_arch_assert(
                                                "../../../components/net/lwip-2.0.2/src/core/udp.c"
# 737 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  ,
                                                738
# 737 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  );}while(0); }} while(0)
                                                 ;

  udphdr = (struct udp_hdr *)q->payload;
  udphdr->src = lwip_htons(pcb->local_port);
  udphdr->dest = lwip_htons(dst_port);

  udphdr->chksum = 0x0000;



  if (((pcb->flags & 0x08U) != 0) && (((dst_ip)->addr & ((((0xf0000000UL) & 0x000000ffUL) << 24) | (((0xf0000000UL) & 0x0000ff00UL) << 8) | (((0xf0000000UL) & 0x00ff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0x000000ffUL) << 24) | (((0xe0000000UL) & 0x0000ff00UL) << 8) | (((0xe0000000UL) & 0x00ff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    q->flags |= 0x04U;
  }


  ;
# 835 "../../../components/net/lwip-2.0.2/src/core/udp.c"
  {
    ;
    udphdr->len = lwip_htons(q->tot_len);
# 870 "../../../components/net/lwip-2.0.2/src/core/udp.c"
    if (netif->mtu && (p->tot_len > netif->mtu)) {
        {

            if (0 || (pcb->flags & 0x01U) == 0) {
                u16_t udpchksum;
# 884 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                {
                    udpchksum = ip_chksum_pseudo(q, 17, q->tot_len,
                    src_ip, dst_ip);
                }


                if (udpchksum == 0x0000) {
                    udpchksum = 0xffff;
                }
                udphdr->chksum = udpchksum;
            }
        }
    }



    ip_proto = 17;
  }



  ttl = ((((dst_ip)->addr & ((((0xf0000000UL) & 0x000000ffUL) << 24) | (((0xf0000000UL) & 0x0000ff00UL) << 8) | (((0xf0000000UL) & 0x00ff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0x000000ffUL) << 24) | (((0xe0000000UL) & 0x0000ff00UL) << 8) | (((0xe0000000UL) & 0x00ff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24))) ? ((pcb)->mcast_ttl) : pcb->ttl);




  ;
  ;

  ;
  err = ip4_output_if_src(q, src_ip, dst_ip, ttl, pcb->tos, ip_proto, netif);
  ;


  ;


  if (q != p) {

    pbuf_free(q);
    q = 
# 924 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
       0
# 924 "../../../components/net/lwip-2.0.2/src/core/udp.c"
           ;

  }

  ;
  return err;
}
# 952 "../../../components/net/lwip-2.0.2/src/core/udp.c"
err_t
udp_bind(struct udp_pcb *pcb, const ip_addr_t *ipaddr, u16_t port)
{
  struct udp_pcb *ipcb;
  u8_t rebind;



  if (ipaddr == 
# 960 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
               0
# 960 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                   ) {
    ipaddr = (&ip_addr_any);
  }



  if ((pcb == 
# 966 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 966 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || (ipaddr == 
# 966 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 966 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     )) {
    return ERR_VAL;
  }

  ;
  ;
  ;

  rebind = 0;

  for (ipcb = udp_pcbs; ipcb != 
# 976 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                               0
# 976 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                   ; ipcb = ipcb->next) {

    if (pcb == ipcb) {
      rebind = 1;
      break;
    }
  }


  if (port == 0) {
    port = udp_new_port();
    if (port == 0) {

      ;
      return ERR_USE;
    }
  } else {
    for (ipcb = udp_pcbs; ipcb != 
# 993 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 993 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ; ipcb = ipcb->next) {
      if (pcb != ipcb) {




        if (!((pcb)->so_options & (0x04U)) ||
            !((ipcb)->so_options & (0x04U)))

        {

          if ((ipcb->local_port == port) &&

              ((&ipcb->local_ip)->addr == (ipaddr)->addr)) {

           
                                                                                               ;
            return ERR_USE;
          }
        }
      }
    }
  }

  ((&pcb->local_ip)->addr = ((ipaddr) == 
# 1017 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
 0 
# 1017 "../../../components/net/lwip-2.0.2/src/core/udp.c"
 ? 0 : (ipaddr)->addr));

  pcb->local_port = port;
  ;

  if (rebind == 0) {

    pcb->next = udp_pcbs;
    udp_pcbs = pcb;
  }
  ;
  ;
  ;
  return ERR_OK;
}
# 1051 "../../../components/net/lwip-2.0.2/src/core/udp.c"
err_t
udp_connect(struct udp_pcb *pcb, const ip_addr_t *ipaddr, u16_t port)
{
  struct udp_pcb *ipcb;

  if ((pcb == 
# 1056 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
             0
# 1056 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                 ) || (ipaddr == 
# 1056 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 1056 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     )) {
    return ERR_VAL;
  }

  if (pcb->local_port == 0) {
    err_t err = udp_bind(pcb, &pcb->local_ip, pcb->local_port);
    if (err != ERR_OK) {
      return err;
    }
  }

  ((&pcb->remote_ip)->addr = ((ipaddr) == 
# 1067 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
 0 
# 1067 "../../../components/net/lwip-2.0.2/src/core/udp.c"
 ? 0 : (ipaddr)->addr));
  pcb->remote_port = port;
  pcb->flags |= 0x04U;

  ;
 
                                      ;
  ;


  for (ipcb = udp_pcbs; ipcb != 
# 1077 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                               0
# 1077 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                   ; ipcb = ipcb->next) {
    if (pcb == ipcb) {

      return ERR_OK;
    }
  }

  pcb->next = udp_pcbs;
  udp_pcbs = pcb;
  return ERR_OK;
}







void
udp_disconnect(struct udp_pcb *pcb)
{






    ((&pcb->remote_ip)->addr = ((u32_t)0x00000000UL));



  pcb->remote_port = 0;

  pcb->flags &= ~0x04U;
}
# 1123 "../../../components/net/lwip-2.0.2/src/core/udp.c"
void
__attribute__((section(".fast"))) udp_recv(struct udp_pcb *pcb, udp_recv_fn recv, void *recv_arg)
{

  pcb->recv = recv;
  pcb->recv_arg = recv_arg;
}
# 1140 "../../../components/net/lwip-2.0.2/src/core/udp.c"
void
udp_remove(struct udp_pcb *pcb)
{
  struct udp_pcb *pcb2;

  ;

  if (udp_pcbs == pcb) {

    udp_pcbs = udp_pcbs->next;

  } else {
    for (pcb2 = udp_pcbs; pcb2 != 
# 1152 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 1152 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ; pcb2 = pcb2->next) {

      if (pcb2->next != 
# 1154 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                       0 
# 1154 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                            && pcb2->next == pcb) {

        pcb2->next = pcb->next;
        break;
      }
    }
  }
  memp_free(MEMP_UDP_PCB, pcb);
}
# 1173 "../../../components/net/lwip-2.0.2/src/core/udp.c"
struct udp_pcb *
udp_new(void)
{
  struct udp_pcb *pcb;
  pcb = (struct udp_pcb *)memp_malloc(MEMP_UDP_PCB);

  if (pcb != 
# 1179 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
            0
# 1179 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                ) {




    memset(pcb, 0, sizeof(struct udp_pcb));
    pcb->ttl = 255;

    do { (pcb)->mcast_ttl = 255; } while(0);

  }
  return pcb;
}
# 1205 "../../../components/net/lwip-2.0.2/src/core/udp.c"
struct udp_pcb *
udp_new_ip_type(u8_t type)
{
  struct udp_pcb *pcb;
  pcb = udp_new();






  (void)type;

  return pcb;
}






void udp_netif_ip_addr_changed(const ip_addr_t* old_addr, const ip_addr_t* new_addr)
{
  struct udp_pcb* upcb;

  if (!((old_addr) == 
# 1230 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
      0 
# 1230 "../../../components/net/lwip-2.0.2/src/core/udp.c"
      || ((*(old_addr)).addr == ((u32_t)0x00000000UL))) && !((new_addr) == 
# 1230 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                  0 
# 1230 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                  || ((*(new_addr)).addr == ((u32_t)0x00000000UL)))) {
    for (upcb = udp_pcbs; upcb != 
# 1231 "../../../components/net/lwip-2.0.2/src/core/udp.c" 3 4
                                 0
# 1231 "../../../components/net/lwip-2.0.2/src/core/udp.c"
                                     ; upcb = upcb->next) {

      if (((&upcb->local_ip)->addr == (old_addr)->addr)) {


        ((upcb->local_ip).addr = (*new_addr).addr);
      }
    }
  }
}
