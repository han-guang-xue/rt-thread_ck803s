# 1 "../../../packages/webclient-2.0.1/src/webclient_file.c"
# 1 "E:\\YCXGIT\\T6x0_RTOS_SDK_V0.9.3_b1\\T6x0_RTOS_SDK_V0.9.3\\code\\rt-thread\\bsp\\t6x0\\app//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../packages/webclient-2.0.1/src/webclient_file.c"
# 11 "../../../packages/webclient-2.0.1/src/webclient_file.c"
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
# 12 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 1 3 4
# 21 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ansidef.h" 1 3 4
# 22 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdlib.h" 2 3 4

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
# 13 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2

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
# 76 "../../../include/libc/libc_stat.h"
# 1 "../../../components/libc/compilers/minilibc/time.h" 1



# 1 "../../../components/libc/compilers/minilibc/sys/time.h" 1



# 1 "../../../components/libc/compilers/minilibc/sys/types.h" 1




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
# 15 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2
# 1 "../../../packages/webclient-2.0.1/inc/webclient.h" 1
# 23 "../../../packages/webclient-2.0.1/inc/webclient.h"
# 1 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h" 1
# 23 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h" 1
# 29 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 1
# 2820 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h" 1
# 36 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\limits.h" 1 3 4
# 37 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h" 2
# 667 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 2821 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 2

# 1 "../../../include/rthw.h" 1
# 33 "../../../include/rthw.h"
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
# 2823 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls\\/config.h" 2
# 30 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h" 2



# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform_time.h" 1
# 52 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform_time.h"
typedef time_t mbedtls_time_t;
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h" 2
# 49 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 1 3 4
# 25 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 3 4
# 1 "../../../components/libc/compilers/minilibc/stddef.h" 1 3 4





# 5 "../../../components/libc/compilers/minilibc/stddef.h" 3 4
typedef signed long ptrdiff_t;
# 26 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 2 3 4
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdarg.h" 1 3 4
# 40 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 27 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 2 3 4
# 38 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 3 4
typedef signed long fpos_t;


struct __stdio_file;
typedef struct __stdio_file FILE;
# 66 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\lib\\gcc\\csky-elfabiv2\\6.3.0\\include-fixed\\stdio.h" 3 4
extern FILE *stdin, *stdout, *stderr;





extern int remove(char *filename);
extern int rename(const char *oldname, const char *newname);
extern FILE *tmpfile(void);
extern char *tmpnam(char *sptr);
extern FILE *fopen(const char *filename, const char *type);
extern FILE *freopen(const char *filename, const char *type, FILE *fp);
extern int fflush(FILE *stream);
extern int fclose(FILE *stream);
extern void setbuf(FILE *stream, char *buf);
extern int setvbuf(FILE *stream, char *buf, int type, size_t size);
extern int printf(const char *format, ...);
extern int fprintf(FILE *stream, const char *format, ...);
extern int sprintf(char *string, const char *format, ...);
extern int fnprintf(FILE *str,size_t size, const char *format,...);
extern int scanf(const char *format, ...);
extern int fscanf(FILE *stream, const char *format, ...);
extern int sscanf(const char *str, const char *format, ...);
extern int vfscanf(FILE * stream, const char * format, __gnuc_va_list arg_ptr);
extern int vscanf( const char * format, __gnuc_va_list ap);
extern int vsscanf(const char * str, const char * format, __gnuc_va_list arg_ptr);
extern int vprintf(const char *, __gnuc_va_list);
extern int vsprintf( char * str, const char * format, __gnuc_va_list arg_ptr);
extern int vsnprintf(char * str, size_t length, const char * format, __gnuc_va_list arg_ptr);
extern int vfprintf(FILE *stream, const char *format, __gnuc_va_list ap);
extern int snprintf(char *str, size_t size, const char *format, ...);
extern int fgetc(FILE *stream);
extern char *fgets(char *string,int n, FILE *stream);
extern char *gets(char *s);
extern int fputc(int ch, FILE *stream);
extern int fputs(const char *string, FILE *stream);
extern int getc(FILE *stream);
extern int putc(int c, FILE *stream);
extern int putchar(int ch);
extern int puts(const char *string);
extern int ungetc(int c, FILE *stream);
extern size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
extern size_t fwrite(const void *ptr, size_t size, size_t nitems, FILE *stream);
extern int fseek(FILE *stream, long offset, int fromwhere);
extern long ftell(FILE *stream);
extern void rewind(FILE *stream);
extern int fgetpos(FILE *stream, fpos_t *fileops);
extern int fsetpos(FILE *stream, const fpos_t *pos);
extern void clearerr(FILE *stream);
extern int feof(FILE *stream);
extern int ferror(FILE *stream);
extern void perror(const char *string);

extern int __dtostr(double d,char *buf,unsigned int maxlen,unsigned int prec,unsigned int prec2);
extern int __lltostr(char *s, int size, unsigned long long i, int base, char UpCase);
extern int __ltostr(char *s, unsigned int size, unsigned long i, unsigned int base, int UpCase);


extern int getchar (void);
extern FILE *fdopen (int __fd, __const char *__modes);
extern int fileno (FILE *__stream);
# 50 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h" 2
# 299 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"

# 299 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"
typedef struct {
    char dummy;
}
mbedtls_platform_context;
# 323 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"
int mbedtls_platform_setup( mbedtls_platform_context *ctx );
# 337 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/platform.h"
void mbedtls_platform_teardown( mbedtls_platform_context *ctx );
# 24 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net.h" 1
# 27 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 1
# 32 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/bignum.h" 1
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
    if( 
# 348 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 348 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 348 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 348 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->block_size;
}
# 363 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 365 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 365 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 365 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 365 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_MODE_NONE;

    return ctx->cipher_info->mode;
}
# 380 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_iv_size( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 382 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 382 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 382 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 382 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;

    return (int) ctx->cipher_info->iv_size;
}
# 399 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 401 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 401 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 401 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 401 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_CIPHER_NONE;

    return ctx->cipher_info->type;
}
# 414 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline const char *mbedtls_cipher_get_name( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 416 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 416 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 416 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 416 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->name;
}
# 431 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_key_bitlen( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 433 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_KEY_LENGTH_NONE;

    return (int) ctx->cipher_info->key_bitlen;
}
# 448 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_operation_t mbedtls_cipher_get_operation( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 450 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
       0 
# 450 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 450 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h" 3 4
                      0 
# 450 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
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
# 33 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h" 2
# 65 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
typedef struct
{
    int fd;
}
mbedtls_net_context;







void mbedtls_net_init( mbedtls_net_context *ctx );
# 94 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_connect( mbedtls_net_context *ctx, const char *host, const char *port, int proto );
# 113 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_bind( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto );
# 130 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_accept( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len );
# 141 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_set_block( mbedtls_net_context *ctx );
# 150 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_set_nonblock( mbedtls_net_context *ctx );
# 160 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
void mbedtls_net_usleep( unsigned long usec );
# 174 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_recv( void *ctx, unsigned char *buf, size_t len );
# 188 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_send( void *ctx, const unsigned char *buf, size_t len );
# 211 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_recv_timeout( void *ctx, unsigned char *buf, size_t len,
                      uint32_t timeout );






void mbedtls_net_free( mbedtls_net_context *ctx );
# 28 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/net.h" 2
# 25 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/debug.h" 1
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
# 26 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h" 2
# 1 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 1
# 23 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy_poll.h" 1
# 78 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy_poll.h"
int mbedtls_hardclock_poll( void *data,
                    unsigned char *output, size_t len, size_t *olen );
# 91 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy_poll.h"
int mbedtls_hardware_poll( void *data,
                           unsigned char *output, size_t len, size_t *olen );
# 103 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy_poll.h"
int mbedtls_hardware_random( void *p_rng, unsigned char *output, size_t output_len );
# 24 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h" 1
# 40 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
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
# 41 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h" 2
# 103 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
typedef int (*mbedtls_entropy_f_source_ptr)(void *data, unsigned char *output, size_t len,
                            size_t *olen);




typedef struct
{
    mbedtls_entropy_f_source_ptr f_source;
    void * p_source;
    size_t size;
    size_t threshold;
    int strong;
}
mbedtls_entropy_source_state;




typedef struct
{



    mbedtls_sha256_context accumulator;

    int source_count;
    mbedtls_entropy_source_state source[3];




    mbedtls_threading_mutex_t mutex;




}
mbedtls_entropy_context;






void mbedtls_entropy_init( mbedtls_entropy_context *ctx );






void mbedtls_entropy_free( mbedtls_entropy_context *ctx );
# 174 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_add_source( mbedtls_entropy_context *ctx,
                        mbedtls_entropy_f_source_ptr f_source, void *p_source,
                        size_t threshold, int strong );
# 186 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_gather( mbedtls_entropy_context *ctx );
# 199 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_func( void *data, unsigned char *output, size_t len );
# 211 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_update_manual( mbedtls_entropy_context *ctx,
                           const unsigned char *data, size_t len );
# 263 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_self_test( int verbose );
# 279 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_source_self_test( int verbose );
# 25 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h" 1
# 26 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes.h" 1
# 325 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes.h"
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h" 1
# 42 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
typedef struct
{
    uint32_t keybytes;
    uint8_t key[32];
}
mbedtls_aes_context;






void mbedtls_aes_init( mbedtls_aes_context *ctx );






void mbedtls_aes_free( mbedtls_aes_context *ctx );
# 72 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_setkey_enc( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
# 84 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_setkey_dec( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
# 97 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_crypt_ecb( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
# 125 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_crypt_cbc( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
# 159 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_crypt_cfb128( mbedtls_aes_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
# 191 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_crypt_cfb8( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
# 222 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_aes_crypt_ctr( mbedtls_aes_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output );
# 242 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_internal_aes_encrypt( mbedtls_aes_context *ctx,
                                  const unsigned char input[16],
                                  unsigned char output[16] );
# 257 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
int mbedtls_internal_aes_decrypt( mbedtls_aes_context *ctx,
                                  const unsigned char input[16],
                                  unsigned char output[16] );
# 277 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
 void mbedtls_aes_encrypt( mbedtls_aes_context *ctx,
                                             const unsigned char input[16],
                                             unsigned char output[16] );
# 291 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes_alt.h"
 void mbedtls_aes_decrypt( mbedtls_aes_context *ctx,
                                             const unsigned char input[16],
                                             unsigned char output[16] );
# 326 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes.h" 2
# 337 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_self_test( int verbose );
# 27 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h" 2
# 87 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
typedef struct
{
    unsigned char counter[16];
    int reseed_counter;
    int prediction_resistance;

    size_t entropy_len;

    int reseed_interval;

    mbedtls_aes_context aes_ctx;




    int (*f_entropy)(void *, unsigned char *, size_t);

    void *p_entropy;


    mbedtls_threading_mutex_t mutex;

}
mbedtls_ctr_drbg_context;
# 119 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_init( mbedtls_ctr_drbg_context *ctx );
# 139 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_seed( mbedtls_ctr_drbg_context *ctx,
                   int (*f_entropy)(void *, unsigned char *, size_t),
                   void *p_entropy,
                   const unsigned char *custom,
                   size_t len );






void mbedtls_ctr_drbg_free( mbedtls_ctr_drbg_context *ctx );
# 161 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_prediction_resistance( mbedtls_ctr_drbg_context *ctx,
                                         int resistance );
# 171 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_entropy_len( mbedtls_ctr_drbg_context *ctx,
                               size_t len );
# 181 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_reseed_interval( mbedtls_ctr_drbg_context *ctx,
                                   int interval );
# 194 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_reseed( mbedtls_ctr_drbg_context *ctx,
                     const unsigned char *additional, size_t len );
# 208 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_update( mbedtls_ctr_drbg_context *ctx,
                      const unsigned char *additional, size_t add_len );
# 226 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random_with_add( void *p_rng,
                              unsigned char *output, size_t output_len,
                              const unsigned char *additional, size_t add_len );
# 243 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random( void *p_rng,
                     unsigned char *output, size_t output_len );
# 279 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_self_test( int verbose );


int mbedtls_ctr_drbg_seed_entropy_len( mbedtls_ctr_drbg_context *,
                               int (*)(void *, unsigned char *, size_t), void *,
                               const unsigned char *, size_t, size_t );
# 26 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/certs.h" 1
# 34 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/certs.h"
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
# 27 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/x509.h" 1
# 28 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl.h" 1
# 29 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 1 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h" 1
# 54 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h"
typedef struct mbedtls_ssl_cache_context mbedtls_ssl_cache_context;
typedef struct mbedtls_ssl_cache_entry mbedtls_ssl_cache_entry;




struct mbedtls_ssl_cache_entry
{

    mbedtls_time_t timestamp;

    mbedtls_ssl_session session;

    mbedtls_x509_buf peer_cert;

    mbedtls_ssl_cache_entry *next;
};




struct mbedtls_ssl_cache_context
{
    mbedtls_ssl_cache_entry *chain;
    int timeout;
    int max_entries;

    mbedtls_threading_mutex_t mutex;

};






void mbedtls_ssl_cache_init( mbedtls_ssl_cache_context *cache );
# 99 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h"
int mbedtls_ssl_cache_get( void *data, mbedtls_ssl_session *session );
# 108 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h"
int mbedtls_ssl_cache_set( void *data, const mbedtls_ssl_session *session );
# 120 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h"
void mbedtls_ssl_cache_set_timeout( mbedtls_ssl_cache_context *cache, int timeout );
# 130 "../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls/ssl_cache.h"
void mbedtls_ssl_cache_set_max_entries( mbedtls_ssl_cache_context *cache, int max );






void mbedtls_ssl_cache_free( mbedtls_ssl_cache_context *cache );
# 30 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h" 2
# 38 "../../../packages/mbedtls-2.6.0/ports/inc/tls_session.h"
typedef struct tls_cli_session {
    char *host;
    char *port;

    unsigned char *buffer;
    size_t buf_size;

    int suite_preset;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_net_context srv_fd;

    mbedtls_x509_crt crt;
    mbedtls_pk_context pkey;

    mbedtls_x509_crt gm_crt;
    mbedtls_pk_context gm_pkey_enc;
    mbedtls_pk_context gm_pkey_dsa;

} tls_cli_session;

typedef struct tls_srv_session {
    char *host;
    char *port;

    int suite_preset;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_net_context cli_fd;
    mbedtls_x509_crt *srv_crt;
    mbedtls_pk_context *pkey;


    mbedtls_x509_crt *gm_srv_crt;
    mbedtls_pk_context *gm_pkey_enc;
    mbedtls_pk_context *gm_pkey_dsa;



    mbedtls_ssl_cache_context *cache;

} tls_srv_session;

typedef struct tls_srv_context {
    char *host;
    char *port;

    int suite_preset;
    mbedtls_net_context listen_fd;
    mbedtls_x509_crt crt;
    mbedtls_pk_context pkey;

    mbedtls_x509_crt gm_crt;
    mbedtls_pk_context gm_pkey_enc;
    mbedtls_pk_context gm_pkey_dsa;



    mbedtls_ssl_cache_context cache;

} tls_srv_context;
# 27 "../../../packages/mbedtls-2.6.0/ports/inc/tls_client.h" 2

tls_cli_session *tls_cli_session_create(char *host, char *port, int buf_size);
int tls_cli_session_destroy(tls_cli_session *session);
int tls_cli_session_init(tls_cli_session *session, int suite_preset);
int tls_cli_session_close(tls_cli_session *session);
int tls_cli_session_config(tls_cli_session *session);
int tls_cli_session_connect(tls_cli_session *session);
int tls_cli_session_read(tls_cli_session *session, unsigned char *buf , size_t len);
int tls_cli_session_write(tls_cli_session *session, const unsigned char *buf , size_t len);
# 24 "../../../packages/webclient-2.0.1/inc/webclient.h" 2
# 56 "../../../packages/webclient-2.0.1/inc/webclient.h"
enum WEBCLIENT_STATUS
{
    WEBCLIENT_OK,
    WEBCLIENT_ERROR,
    WEBCLIENT_TIMEOUT,
    WEBCLIENT_NOMEM,
    WEBCLIENT_NOSOCKET,
    WEBCLIENT_NOBUFFER,
    WEBCLIENT_CONNECT_FAILED,
    WEBCLIENT_DISCONNECT,
    WEBCLIENT_FILE_ERROR,
};

enum WEBCLIENT_METHOD
{
    WEBCLIENT_USER_METHOD,
    WEBCLIENT_GET,
    WEBCLIENT_POST,
};

struct webclient_header
{
    char *buffer;
    size_t length;

    size_t size;
};

struct webclient_session
{
    struct webclient_header *header;
    int socket;
    int resp_status;

    char *host;
    char *req_url;

    int chunk_sz;
    int chunk_offset;

    int content_length;
    size_t content_remainder;


    tls_cli_session *tls_session;

};


struct webclient_session *webclient_session_create(size_t header_sz);


int webclient_get(struct webclient_session *session, const char *URI);
int webclient_get_position(struct webclient_session *session, const char *URI, int position);


int webclient_post(struct webclient_session *session, const char *URI, const char *post_data);


int webclient_close(struct webclient_session *session);

int webclient_set_timeout(struct webclient_session *session, int millisecond);


int webclient_read(struct webclient_session *session, unsigned char *buffer, size_t size);
int webclient_write(struct webclient_session *session, const unsigned char *buffer, size_t size);


int webclient_header_fields_add(struct webclient_session *session, const char *fmt, ...);
const char *webclient_header_fields_get(struct webclient_session *session, const char *fields);


int webclient_response(struct webclient_session *session, unsigned char **response);
int webclient_request(const char *URI, const char *header, const char *post_data, unsigned char **response);
int webclient_resp_status_get(struct webclient_session *session);
int webclient_content_length_get(struct webclient_session *session);



int webclient_get_file(const char *URI, const char *filename);
int webclient_post_file(const char *URI, const char *filename, const char *form_data);
# 16 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2


# 1 "../../../components/dfs/include/dfs_posix.h" 1
# 32 "../../../components/dfs/include/dfs_posix.h"
# 1 "../../../components/dfs/include/dfs_file.h" 1
# 28 "../../../components/dfs/include/dfs_file.h"
# 1 "../../../components/dfs/include/dfs.h" 1
# 31 "../../../components/dfs/include/dfs.h"
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
# 32 "../../../components/dfs/include/dfs.h" 2




# 1 "../../../components/drivers/include/rtdevice.h" 1
# 31 "../../../components/drivers/include/rtdevice.h"
# 1 "../../../components/drivers/include/ipc/ringbuffer.h" 1
# 11 "../../../components/drivers/include/ipc/ringbuffer.h"
struct rt_ringbuffer
{
    rt_uint8_t *buffer_ptr;
# 36 "../../../components/drivers/include/ipc/ringbuffer.h"
    rt_uint16_t read_mirror : 1;
    rt_uint16_t read_index : 15;
    rt_uint16_t write_mirror : 1;
    rt_uint16_t write_index : 15;


    rt_int16_t buffer_size;
};

enum rt_ringbuffer_state
{
    RT_RINGBUFFER_EMPTY,
    RT_RINGBUFFER_FULL,

    RT_RINGBUFFER_HALFFULL,
};







void rt_ringbuffer_init(struct rt_ringbuffer *rb, rt_uint8_t *pool, rt_int16_t size);
void rt_ringbuffer_reset(struct rt_ringbuffer *rb);
rt_size_t rt_ringbuffer_put(struct rt_ringbuffer *rb, const rt_uint8_t *ptr, rt_uint16_t length);
rt_size_t rt_ringbuffer_put_force(struct rt_ringbuffer *rb, const rt_uint8_t *ptr, rt_uint16_t length);
rt_size_t rt_ringbuffer_putchar(struct rt_ringbuffer *rb, const rt_uint8_t ch);
rt_size_t rt_ringbuffer_putchar_force(struct rt_ringbuffer *rb, const rt_uint8_t ch);
rt_size_t rt_ringbuffer_get(struct rt_ringbuffer *rb, rt_uint8_t *ptr, rt_uint16_t length);
rt_size_t rt_ringbuffer_getchar(struct rt_ringbuffer *rb, rt_uint8_t *ch);
rt_size_t rt_ringbuffer_data_len(struct rt_ringbuffer *rb);


struct rt_ringbuffer* rt_ringbuffer_create(rt_uint16_t length);
void rt_ringbuffer_destroy(struct rt_ringbuffer *rb);


static __inline rt_uint16_t rt_ringbuffer_get_size(struct rt_ringbuffer *rb)
{
    if (!(rb != (0))) { rt_assert_handler("rb != RT_NULL", __FUNCTION__, 76); };
    return rb->buffer_size;
}
# 32 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/completion.h" 1
# 10 "../../../components/drivers/include/ipc/completion.h"
struct rt_completion
{
    rt_uint32_t flag;


    rt_list_t suspended_list;
};

void rt_completion_init(struct rt_completion *completion);
rt_err_t rt_completion_wait(struct rt_completion *completion,
                            rt_int32_t timeout);
void rt_completion_done(struct rt_completion *completion);
# 33 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/dataqueue.h" 1
# 11 "../../../components/drivers/include/ipc/dataqueue.h"
struct rt_data_item;



struct rt_data_queue
{
    rt_uint16_t size;
    rt_uint16_t lwm;
    rt_bool_t waiting_lwm;

    rt_uint16_t get_index;
    rt_uint16_t put_index;

    struct rt_data_item *queue;

    rt_list_t suspended_push_list;
    rt_list_t suspended_pop_list;


    void (*evt_notify)(struct rt_data_queue *queue, rt_uint32_t event);
};




rt_err_t rt_data_queue_init(struct rt_data_queue *queue,
                            rt_uint16_t size,
                            rt_uint16_t lwm,
                            void (*evt_notify)(struct rt_data_queue *queue, rt_uint32_t event));
rt_err_t rt_data_queue_push(struct rt_data_queue *queue,
                            const void *data_ptr,
                            rt_size_t data_size,
                            rt_int32_t timeout);
rt_err_t rt_data_queue_pop(struct rt_data_queue *queue,
                           const void **data_ptr,
                           rt_size_t *size,
                           rt_int32_t timeout);
rt_err_t rt_data_queue_peak(struct rt_data_queue *queue,
                            const void **data_ptr,
                            rt_size_t *size);
void rt_data_queue_reset(struct rt_data_queue *queue);
# 34 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/workqueue.h" 1






struct rt_workqueue
{
    rt_list_t work_list;
    struct rt_work *work_current;

    struct rt_semaphore sem;
    rt_thread_t work_thread;
};

struct rt_work
{
    rt_list_t list;

    void (*work_func)(struct rt_work* work, void* work_data);
    void *work_data;
};





struct rt_workqueue *rt_workqueue_create(const char* name, rt_uint16_t stack_size, rt_uint8_t priority);
rt_err_t rt_workqueue_destroy(struct rt_workqueue* queue);
rt_err_t rt_workqueue_dowork(struct rt_workqueue* queue, struct rt_work* work);
rt_err_t rt_workqueue_cancel_work(struct rt_workqueue* queue, struct rt_work* work);
rt_err_t rt_workqueue_cancel_work_sync(struct rt_workqueue* queue, struct rt_work* work);

static __inline void rt_work_init(struct rt_work* work, void (*work_func)(struct rt_work* work, void* work_data),
    void* work_data)
{
    rt_list_init(&(work->list));
    work->work_func = work_func;
    work->work_data = work_data;
}
# 35 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/waitqueue.h" 1
# 34 "../../../components/drivers/include/ipc/waitqueue.h"
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
# 36 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/pipe.h" 1







# 1 "../../../components/drivers/include/rtdevice.h" 1
# 9 "../../../components/drivers/include/ipc/pipe.h" 2







struct rt_pipe_device
{
    struct rt_device parent;


    struct rt_ringbuffer *fifo;
    rt_uint16_t bufsz;

    rt_uint8_t readers;
    rt_uint8_t writers;

    rt_wqueue_t reader_queue;
    rt_wqueue_t writer_queue;

    struct rt_mutex lock;
};
typedef struct rt_pipe_device rt_pipe_t;

rt_pipe_t *rt_pipe_create(const char *name, int bufsz);
int rt_pipe_delete(const char *name);
# 37 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/ipc/poll.h" 1
# 32 "../../../components/drivers/include/ipc/poll.h"
struct rt_pollreq;
typedef void (*poll_queue_proc)(rt_wqueue_t *, struct rt_pollreq *);

typedef struct rt_pollreq
{
    poll_queue_proc _proc;
    short _key;
} rt_pollreq_t;

static __inline void rt_poll_add(rt_wqueue_t *wq, rt_pollreq_t *req)
{
    if (req && req->_proc && wq)
    {
        req->_proc(wq, req);
    }
}
# 38 "../../../components/drivers/include/rtdevice.h" 2
# 46 "../../../components/drivers/include/rtdevice.h"
# 1 "../../../components/drivers/include/drivers/rtc.h" 1
# 28 "../../../components/drivers/include/drivers/rtc.h"
rt_err_t set_date(rt_uint32_t year, rt_uint32_t month, rt_uint32_t day);
rt_err_t set_time(rt_uint32_t hour, rt_uint32_t minute, rt_uint32_t second);

int rt_soft_rtc_init(void);
int rt_rtc_ntp_sync_init(void);
# 47 "../../../components/drivers/include/rtdevice.h" 2






# 1 "../../../components/drivers/include/drivers/spi.h" 1
# 70 "../../../components/drivers/include/drivers/spi.h"
struct rt_spi_message
{
    const void *send_buf;
    void *recv_buf;
    rt_size_t length;
    struct rt_spi_message *next;

    unsigned cs_take : 1;
    unsigned cs_release : 1;
};




struct rt_spi_configuration
{
    rt_uint8_t mode;
    rt_uint8_t data_width;
    rt_uint16_t reserved;

    rt_uint32_t max_hz;
};

struct rt_spi_ops;
struct rt_spi_bus
{
    struct rt_device parent;
    const struct rt_spi_ops *ops;

    struct rt_mutex lock;
    struct rt_spi_device *owner;
};




struct rt_spi_ops
{
    rt_err_t (*configure)(struct rt_spi_device *device, struct rt_spi_configuration *configuration);
    rt_uint32_t (*xfer)(struct rt_spi_device *device, struct rt_spi_message *message);
};




struct rt_spi_device
{
    struct rt_device parent;
    struct rt_spi_bus *bus;

    struct rt_spi_configuration config;
};



rt_err_t rt_spi_bus_register(struct rt_spi_bus *bus,
                             const char *name,
                             const struct rt_spi_ops *ops);


rt_err_t rt_spi_bus_attach_device(struct rt_spi_device *device,
                                  const char *name,
                                  const char *bus_name,
                                  void *user_data);
# 142 "../../../components/drivers/include/drivers/spi.h"
rt_err_t rt_spi_take_bus(struct rt_spi_device *device);
# 151 "../../../components/drivers/include/drivers/spi.h"
rt_err_t rt_spi_release_bus(struct rt_spi_device *device);
# 160 "../../../components/drivers/include/drivers/spi.h"
rt_err_t rt_spi_take(struct rt_spi_device *device);
# 169 "../../../components/drivers/include/drivers/spi.h"
rt_err_t rt_spi_release(struct rt_spi_device *device);


rt_err_t rt_spi_configure(struct rt_spi_device *device,
                          struct rt_spi_configuration *cfg);


rt_err_t rt_spi_send_then_recv(struct rt_spi_device *device,
                               const void *send_buf,
                               rt_size_t send_length,
                               void *recv_buf,
                               rt_size_t recv_length);

rt_err_t rt_spi_send_then_send(struct rt_spi_device *device,
                               const void *send_buf1,
                               rt_size_t send_length1,
                               const void *send_buf2,
                               rt_size_t send_length2);
# 198 "../../../components/drivers/include/drivers/spi.h"
rt_size_t rt_spi_transfer(struct rt_spi_device *device,
                          const void *send_buf,
                          void *recv_buf,
                          rt_size_t length);
# 212 "../../../components/drivers/include/drivers/spi.h"
struct rt_spi_message *rt_spi_transfer_message(struct rt_spi_device *device,
                                               struct rt_spi_message *message);

static __inline rt_size_t rt_spi_recv(struct rt_spi_device *device,
                                void *recv_buf,
                                rt_size_t length)
{
    return rt_spi_transfer(device, (0), recv_buf, length);
}

static __inline rt_size_t rt_spi_send(struct rt_spi_device *device,
                                const void *send_buf,
                                rt_size_t length)
{
    return rt_spi_transfer(device, send_buf, (0), length);
}

static __inline rt_uint8_t rt_spi_sendrecv8(struct rt_spi_device *device,
                                      rt_uint8_t data)
{
    rt_uint8_t value;

    rt_spi_send_then_recv(device, &data, 1, &value, 1);

    return value;
}

static __inline rt_uint16_t rt_spi_sendrecv16(struct rt_spi_device *device,
                                        rt_uint16_t data)
{
    rt_uint16_t value;

    rt_spi_send_then_recv(device, &data, 2, &value, 2);

    return value;
}







static __inline void rt_spi_message_append(struct rt_spi_message *list,
                                     struct rt_spi_message *message)
{
    if (!(list != (0))) { rt_assert_handler("list != RT_NULL", __FUNCTION__, 258); };
    if (message == (0))
        return;

    while (list->next != (0))
    {
        list = list->next;
    }

    list->next = message;
    message->next = (0);
}
# 54 "../../../components/drivers/include/rtdevice.h" 2
# 65 "../../../components/drivers/include/rtdevice.h"
# 1 "../../../components/drivers/include/drivers/serial.h" 1
# 107 "../../../components/drivers/include/drivers/serial.h"
struct serial_configure
{
    rt_uint32_t baud_rate;

    rt_uint32_t data_bits :4;
    rt_uint32_t stop_bits :2;
    rt_uint32_t parity :2;
    rt_uint32_t bit_order :1;
    rt_uint32_t invert :1;
    rt_uint32_t bufsz :16;
    rt_uint32_t reserved :4;
};




struct rt_serial_rx_fifo
{

    rt_uint8_t *buffer;

    rt_uint16_t put_index, get_index;

    rt_bool_t is_full;
};

struct rt_serial_tx_fifo
{
    struct rt_completion completion;
};




struct rt_serial_rx_dma
{
    rt_bool_t activated;
};

struct rt_serial_tx_dma
{
    rt_bool_t activated;
    struct rt_data_queue data_queue;
};

struct rt_serial_device
{
    struct rt_device parent;

    const struct rt_uart_ops *ops;
    struct serial_configure config;

    void *serial_rx;
    void *serial_tx;
};
typedef struct rt_serial_device rt_serial_t;




struct rt_uart_ops
{
    rt_err_t (*configure)(struct rt_serial_device *serial, struct serial_configure *cfg);
    rt_err_t (*control)(struct rt_serial_device *serial, int cmd, void *arg);

    int (*putc)(struct rt_serial_device *serial, char c);
    int (*getc)(struct rt_serial_device *serial);

    rt_size_t (*dma_transmit)(struct rt_serial_device *serial, rt_uint8_t *buf, rt_size_t size, int direction);
};

void rt_hw_serial_isr(struct rt_serial_device *serial, int event);

rt_err_t rt_hw_serial_register(struct rt_serial_device *serial,
                               const char *name,
                               rt_uint32_t flag,
                               void *data);
# 66 "../../../components/drivers/include/rtdevice.h" 2



# 1 "../../../components/drivers/include/drivers/i2c.h" 1
# 41 "../../../components/drivers/include/drivers/i2c.h"
struct rt_i2c_msg
{
    rt_uint16_t addr;
    rt_uint16_t flags;
    rt_uint16_t len;
    rt_uint8_t *buf;
};

struct rt_i2c_bus_device;

struct rt_i2c_bus_device_ops
{
    rt_size_t (*master_xfer)(struct rt_i2c_bus_device *bus,
                             struct rt_i2c_msg msgs[],
                             rt_uint32_t num);
    rt_size_t (*slave_xfer)(struct rt_i2c_bus_device *bus,
                            struct rt_i2c_msg msgs[],
                            rt_uint32_t num);
    rt_err_t (*i2c_bus_control)(struct rt_i2c_bus_device *bus,
                                rt_uint32_t,
                                rt_uint32_t);
};


struct rt_i2c_bus_device
{
    struct rt_device parent;
    const struct rt_i2c_bus_device_ops *ops;
    rt_uint16_t flags;
    rt_uint16_t addr;
    struct rt_mutex lock;
    rt_uint32_t timeout;
    rt_uint32_t retries;
    void *priv;
};







rt_err_t rt_i2c_bus_device_register(struct rt_i2c_bus_device *bus,
                                    const char *bus_name);
struct rt_i2c_bus_device *rt_i2c_bus_device_find(const char *bus_name);
rt_size_t rt_i2c_transfer(struct rt_i2c_bus_device *bus,
                          struct rt_i2c_msg msgs[],
                          rt_uint32_t num);
rt_size_t rt_i2c_master_send(struct rt_i2c_bus_device *bus,
                             rt_uint16_t addr,
                             rt_uint16_t flags,
                             const rt_uint8_t *buf,
                             rt_uint32_t count);
rt_size_t rt_i2c_master_recv(struct rt_i2c_bus_device *bus,
                             rt_uint16_t addr,
                             rt_uint16_t flags,
                             rt_uint8_t *buf,
                             rt_uint32_t count);
int rt_i2c_core_init(void);
# 70 "../../../components/drivers/include/rtdevice.h" 2
# 1 "../../../components/drivers/include/drivers/i2c_dev.h" 1
# 39 "../../../components/drivers/include/drivers/i2c_dev.h"
struct rt_i2c_priv_data
{
    struct rt_i2c_msg *msgs;
    rt_size_t number;
};

rt_err_t rt_i2c_bus_device_device_init(struct rt_i2c_bus_device *bus,
                                       const char *name);
# 71 "../../../components/drivers/include/rtdevice.h" 2


# 1 "../../../components/drivers/include/drivers/i2c-bit-ops.h" 1
# 32 "../../../components/drivers/include/drivers/i2c-bit-ops.h"
struct rt_i2c_bit_ops
{
    void *data;
    void (*set_sda)(void *data, rt_int32_t state);
    void (*set_scl)(void *data, rt_int32_t state);
    rt_int32_t (*get_sda)(void *data);
    rt_int32_t (*get_scl)(void *data);

    void (*udelay)(rt_uint32_t us);

    rt_uint32_t delay_us;
    rt_uint32_t timeout;
};

rt_err_t rt_i2c_bit_add_bus(struct rt_i2c_bus_device *bus,
                            const char *bus_name);
# 74 "../../../components/drivers/include/rtdevice.h" 2
# 84 "../../../components/drivers/include/rtdevice.h"
# 1 "../../../components/drivers/include/drivers/watchdog.h" 1
# 37 "../../../components/drivers/include/drivers/watchdog.h"
struct rt_watchdog_ops;
struct rt_watchdog_device
{
    struct rt_device parent;
    const struct rt_watchdog_ops *ops;
};
typedef struct rt_watchdog_device rt_watchdog_t;

struct rt_watchdog_ops
{
    rt_err_t (*init)(rt_watchdog_t *wdt);
    rt_err_t (*control)(rt_watchdog_t *wdt, int cmd, void *arg);
};

rt_err_t rt_hw_watchdog_register(rt_watchdog_t *wdt,
                                 const char *name,
                                 rt_uint32_t flag,
                                 void *data);
# 85 "../../../components/drivers/include/rtdevice.h" 2



# 1 "../../../components/drivers/include/drivers/pin.h" 1
# 37 "../../../components/drivers/include/drivers/pin.h"
struct rt_device_pin
{
    struct rt_device parent;
    const struct rt_pin_ops *ops;
};
# 63 "../../../components/drivers/include/drivers/pin.h"
struct rt_device_pin_mode
{
    rt_uint16_t pin;
    rt_uint16_t mode;
};
struct rt_device_pin_status
{
    rt_uint16_t pin;
    rt_uint16_t status;
};
struct rt_pin_irq_hdr
{
    rt_int16_t pin;
    rt_uint16_t mode;
    void (*hdr)(void *args);
    void *args;
};
struct rt_pin_ops
{
    void (*pin_mode)(struct rt_device *device, rt_base_t pin, rt_base_t mode);
    void (*pin_write)(struct rt_device *device, rt_base_t pin, rt_base_t value);
    int (*pin_read)(struct rt_device *device, rt_base_t pin);


    rt_err_t (*pin_attach_irq)(struct rt_device *device, rt_int32_t pin,
                      rt_uint32_t mode, void (*hdr)(void *args), void *args);
    rt_err_t (*pin_detach_irq)(struct rt_device *device, rt_int32_t pin);
    rt_err_t (*pin_irq_enable)(struct rt_device *device, rt_base_t pin, rt_uint32_t enabled);
};

int rt_device_pin_register(const char *name, const struct rt_pin_ops *ops, void *user_data);

void rt_pin_mode(rt_base_t pin, rt_base_t mode);
void rt_pin_write(rt_base_t pin, rt_base_t value);
int rt_pin_read(rt_base_t pin);
rt_err_t rt_pin_attach_irq(rt_int32_t pin, rt_uint32_t mode,
                             void (*hdr)(void *args), void *args);
rt_err_t rt_pin_detach_irq(rt_int32_t pin);
rt_err_t rt_pin_irq_enable(rt_base_t pin, rt_uint32_t enabled);
# 89 "../../../components/drivers/include/rtdevice.h" 2



# 1 "../../../components/drivers/include/drivers/hwtimer.h" 1
# 12 "../../../components/drivers/include/drivers/hwtimer.h"
typedef enum
{
    HWTIMER_CTRL_FREQ_SET = 0x01,
    HWTIMER_CTRL_STOP,
    HWTIMER_CTRL_INFO_GET,
    HWTIMER_CTRL_MODE_SET
} rt_hwtimer_ctrl_t;


typedef enum
{
    HWTIMER_MODE_ONESHOT = 0x01,
    HWTIMER_MODE_PERIOD
} rt_hwtimer_mode_t;


typedef struct rt_hwtimerval
{
    rt_int32_t sec;
    rt_int32_t usec;
} rt_hwtimerval_t;




struct rt_hwtimer_device;

struct rt_hwtimer_ops
{
    void (*init)(struct rt_hwtimer_device *timer, rt_uint32_t state);
    rt_err_t (*start)(struct rt_hwtimer_device *timer, rt_uint32_t cnt, rt_hwtimer_mode_t mode);
    void (*stop)(struct rt_hwtimer_device *timer);
    rt_uint32_t (*count_get)(struct rt_hwtimer_device *timer);
    rt_err_t (*control)(struct rt_hwtimer_device *timer, rt_uint32_t cmd, void *args);
};


struct rt_hwtimer_info
{
    rt_int32_t maxfreq;
    rt_int32_t minfreq;
    rt_uint32_t maxcnt;
    rt_uint8_t cntmode;
};

typedef struct rt_hwtimer_device
{
    struct rt_device parent;
    const struct rt_hwtimer_ops *ops;
    const struct rt_hwtimer_info *info;

    rt_int32_t freq;
    rt_int32_t overflow;
    float period_sec;
    rt_int32_t cycles;
    rt_int32_t reload;
    rt_hwtimer_mode_t mode;
} rt_hwtimer_t;

rt_err_t rt_device_hwtimer_register(rt_hwtimer_t *timer, const char *name, void *user_data);
void rt_device_hwtimer_isr(rt_hwtimer_t *timer);
# 93 "../../../components/drivers/include/rtdevice.h" 2



# 1 "../../../components/drivers/include/drivers/cputime.h" 1
# 28 "../../../components/drivers/include/drivers/cputime.h"
struct rt_clock_cputime_ops
{
    float (*cputime_getres) (void);
    uint32_t (*cputime_gettime)(void);
};

float clock_cpu_getres(void);
uint32_t clock_cpu_gettime(void);

uint32_t clock_cpu_microsecond(uint32_t cpu_tick);
uint32_t clock_cpu_millisecond(uint32_t cpu_tick);

int clock_cpu_setops(const struct rt_clock_cputime_ops *ops);
# 97 "../../../components/drivers/include/rtdevice.h" 2
# 108 "../../../components/drivers/include/rtdevice.h"
# 1 "../../../components/drivers/include/drivers/sata.h" 1
# 10 "../../../components/drivers/include/drivers/sata.h"
struct rt_ata_device_ops;

struct rt_ata_device
{
    struct rt_device parent;

    struct rt_device_blk_geometry dev_info;
    struct rt_device_blk_sectors dev_cap;

    struct rt_mutex dlock;

    const struct rt_ata_ops *ops;


    void *crypto;
    int disk_encrypt;



    volatile int pending_cmds;

};

typedef struct rt_ata_device rt_ata_device_t;

struct rt_ata_ops
{
    rt_err_t (*init)(struct rt_ata_device *device);
    rt_err_t (*probe)(struct rt_ata_device *device, struct rt_device_blk_geometry *dev_info);
    rt_size_t (*read)(struct rt_ata_device *device, rt_off_t pos, void *buffer, rt_size_t size);
    rt_size_t (*write)(struct rt_ata_device *device, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t (*ioctrl)(struct rt_ata_device *device, int cmd, void *args);
    rt_err_t (*sync)(struct rt_ata_device *device);
    rt_err_t (*trim)(struct rt_ata_device *device, void *buffer, rt_size_t size);
};

rt_err_t rt_ata_register(struct rt_ata_device *ata,
                               const char *name,
                               rt_uint32_t flag,
                               void *data);
# 109 "../../../components/drivers/include/rtdevice.h" 2



# 1 "../../../components/drivers/include/drivers/crypto_dev.h" 1




struct rt_crypto_device
{
    struct rt_device parent;

    struct rt_mutex lock_cipher;
    struct rt_mutex lock_pk;
    struct rt_mutex lock_hash;
    struct rt_mutex lock_rng;

    const struct rt_crypto_ops *ops;
};

typedef struct rt_crypto_device rt_crypto_device_t;

struct rt_crypto_ops
{
    rt_err_t (*reset)(rt_crypto_device_t *dev);
    rt_err_t (*ioctl)(rt_crypto_device_t *dev, int cmd, void *args);
};

rt_err_t rt_crypto_register(rt_crypto_device_t *crypto,
                               const char *name,
                               rt_uint32_t flag,
                               void *data);
# 113 "../../../components/drivers/include/rtdevice.h" 2
# 37 "../../../components/dfs/include/dfs.h" 2
# 84 "../../../components/dfs/include/dfs.h"
struct statfs
{
    size_t f_bsize;
    size_t f_blocks;
    size_t f_bfree;
};

struct dirent
{
    uint8_t d_type;
    uint8_t d_namlen;
    uint16_t d_reclen;
    char d_name[256];
};

struct dfs_fdtable
{
    uint32_t maxfd;
    struct dfs_fd **fds;
};


int dfs_init(void);

char *dfs_normalize_path(const char *directory, const char *filename);
const char *dfs_subdir(const char *directory, const char *filename);

void dfs_lock(void);
void dfs_unlock(void);


int fd_new(void);
struct dfs_fd *fd_get(int fd);
void fd_put(struct dfs_fd *fd);
int fd_is_open(const char *pathname);

struct dfs_fdtable* dfs_fdtable_get(void);
# 29 "../../../components/dfs/include/dfs_file.h" 2
# 1 "../../../components/dfs/include/dfs_fs.h" 1
# 35 "../../../components/dfs/include/dfs_fs.h"
struct dfs_filesystem;
struct dfs_fd;


struct dfs_filesystem_ops
{
    char *name;
    uint32_t flags;


    const struct dfs_file_ops *fops;


    int (*mount) (struct dfs_filesystem *fs, unsigned long rwflag, const void *data);
    int (*unmount) (struct dfs_filesystem *fs);


    int (*mkfs) (rt_device_t devid);
    int (*statfs) (struct dfs_filesystem *fs, struct statfs *buf);

    int (*unlink) (struct dfs_filesystem *fs, const char *pathname);
    int (*stat) (struct dfs_filesystem *fs, const char *filename, struct stat *buf);
    int (*rename) (struct dfs_filesystem *fs, const char *oldpath, const char *newpath);
};


struct dfs_filesystem
{
    rt_device_t dev_id;

    char *path;
    const struct dfs_filesystem_ops *ops;

    void *data;
};


struct dfs_partition
{
    uint8_t type;
    off_t offset;
    size_t size;
    rt_sem_t lock;
};


struct dfs_mount_tbl
{
    const char *device_name;
    const char *path;
    const char *filesystemtype;
    unsigned long rwflag;
    const void *data;
};

int dfs_register(const struct dfs_filesystem_ops *ops);
struct dfs_filesystem *dfs_filesystem_lookup(const char *path);
const char* dfs_filesystem_get_mounted_path(struct rt_device* device);

int dfs_filesystem_get_partition(struct dfs_partition *part,
                                      uint8_t *buf,
                                      uint32_t pindex);

int dfs_mount(const char *device_name,
              const char *path,
              const char *filesystemtype,
              unsigned long rwflag,
              const void *data);
int dfs_unmount(const char *specialfile);

int dfs_mkfs(const char *fs_name, const char *device_name);
int dfs_statfs(const char *path, struct statfs *buffer);
# 30 "../../../components/dfs/include/dfs_file.h" 2





struct rt_pollreq;

struct dfs_file_ops
{
    int (*open) (struct dfs_fd *fd);
    int (*close) (struct dfs_fd *fd);
    int (*ioctl) (struct dfs_fd *fd, int cmd, void *args);
    int (*read) (struct dfs_fd *fd, void *buf, size_t count);
    int (*write) (struct dfs_fd *fd, const void *buf, size_t count);
    int (*flush) (struct dfs_fd *fd);
    int (*lseek) (struct dfs_fd *fd, off_t offset);
    int (*getdents) (struct dfs_fd *fd, struct dirent *dirp, uint32_t count);

    int (*poll) (struct dfs_fd *fd, struct rt_pollreq *req);
};



struct dfs_fd
{
    uint16_t magic;
    uint16_t type;

    char *path;
    int ref_count;

    const struct dfs_file_ops *fops;

    uint32_t flags;
    size_t size;
    off_t pos;

    void *data;
};

int dfs_file_open(struct dfs_fd *fd, const char *path, int flags);
int dfs_file_close(struct dfs_fd *fd);
int dfs_file_ioctl(struct dfs_fd *fd, int cmd, void *args);
int dfs_file_read(struct dfs_fd *fd, void *buf, size_t len);
int dfs_file_getdents(struct dfs_fd *fd, struct dirent *dirp, size_t nbytes);
int dfs_file_unlink(const char *path);
int dfs_file_write(struct dfs_fd *fd, const void *buf, size_t len);
int dfs_file_flush(struct dfs_fd *fd);
int dfs_file_lseek(struct dfs_fd *fd, off_t offset);

int dfs_file_stat(const char *path, struct stat *buf);
int dfs_file_rename(const char *oldpath, const char *newpath);
# 33 "../../../components/dfs/include/dfs_posix.h" 2





typedef struct
{
    int fd;
    char buf[512];
    int num;
    int cur;
} DIR;


int mkdir(const char *path, mode_t mode);
DIR *opendir(const char *name);
struct dirent *readdir(DIR *d);
long telldir(DIR *d);
void seekdir(DIR *d, off_t offset);
void rewinddir(DIR *d);
int closedir(DIR* d);


int open(const char *file, int flags, ...);
int close(int d);

int write(int fd, const void *buf, int len);
int read(int fd, void *buf,int len);




off_t lseek(int fd, off_t offset, int whence);
int rename(const char *from, const char *to);
int unlink(const char *pathname);
int stat(const char *file, struct stat *buf);
int fstat(int fildes, struct stat *buf);
int fsync(int fildes);
int fcntl(int fildes, int cmd, ...);
int ioctl(int fildes, int cmd, ...);


int rmdir(const char *path);
int chdir(const char *path);
char *getcwd(char *buf, size_t size);


int statfs(const char *path, struct statfs *buf);

int access(const char *path, int amode);
int pipe(int fildes[2]);
int mkfifo(const char *path, mode_t mode);
# 19 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2
# 28 "../../../packages/webclient-2.0.1/src/webclient_file.c"
# 1 "../../../include/rtdbg.h" 1
# 29 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2
# 39 "../../../packages/webclient-2.0.1/src/webclient_file.c"
int webclient_get_file(const char* URI, const char* filename)
{
    int fd = -1, rc = WEBCLIENT_OK;
    size_t offset;
    size_t length, total_length = 0;
    unsigned char *ptr = (0);
    struct webclient_session* session = (0);
    int resp_status = 0;

    session = webclient_session_create(4096);
    if(session == (0))
    {
        rc = -WEBCLIENT_NOMEM;
        goto __exit;
    }

    if ((resp_status = webclient_get(session, URI)) != 200)
    {
        if ((3) >= 1) { switch(3) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "get file failed, wrong response: %d.", resp_status); rt_kprintf("\033[""0""m"); }; if ((3) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_ERROR;
        goto __exit;
    }

    fd = open(filename, 01 | 0100 | 01000, 0);
    if (fd < 0)
    {
        if ((3) >= 1) { switch(3) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "get file failed, open file(%s) error.", filename); rt_kprintf("\033[""0""m"); }; if ((3) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_ERROR;
        goto __exit;
    }

    ptr = (unsigned char *) rt_malloc(4096);
    if (ptr == (0))
    {
        if ((3) >= 1) { switch(3) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "get file failed, no memory for response buffer."); rt_kprintf("\033[""0""m"); }; if ((3) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_NOMEM;
        goto __exit;
    }

    if (session->content_length < 0)
    {
        while (1)
        {
            length = webclient_read(session, ptr, 4096);
            if (length > 0)
            {
                write(fd, ptr, length);
                total_length += length;

            }
            else
            {
                break;
            }
        }
    }
    else
    {
        for (offset = 0; offset < (size_t) session->content_length;)
        {
            length = webclient_read(session, ptr,
                    session->content_length - offset > 4096 ?
                            4096 : session->content_length - offset);

            if (length > 0)
            {
                write(fd, ptr, length);
                total_length += length;

            }
            else
            {
                break;
            }

            offset += length;
        }
    }

    if (total_length)
    {
        if ((0) >= 1) { switch(0) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "save %d bytes.", total_length); rt_kprintf("\033[""0""m"); }; if ((0) >= 1) { rt_kprintf("\n"); };
    }

__exit:
    if (fd >= 0)
    {
        close(fd);
    }

    if (session != (0))
    {
        webclient_close(session);
    }

    if (ptr != (0))
    {
        rt_free(ptr);
    }

    return rc;
}
# 152 "../../../packages/webclient-2.0.1/src/webclient_file.c"
int webclient_post_file(const char* URI, const char* filename,
        const char* form_data)
{
    size_t length;
    char boundary[60];
    int fd = -1, rc = WEBCLIENT_OK;
    char *header = (0), *header_ptr;
    unsigned char *buffer = (0), *buffer_ptr;
    struct webclient_session* session = (0);

    fd = open(filename, 00, 0);
    if (fd < 0)
    {
        if ((0) >= 1) { switch(0) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "post file failed, open file(%s) error.", filename); rt_kprintf("\033[""0""m"); }; if ((0) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_FILE_ERROR;
        goto __exit;
    }


    length = lseek(fd, 0, 
# 171 "../../../packages/webclient-2.0.1/src/webclient_file.c" 3 4
                         2
# 171 "../../../packages/webclient-2.0.1/src/webclient_file.c"
                                 );
    lseek(fd, 0, 
# 172 "../../../packages/webclient-2.0.1/src/webclient_file.c" 3 4
                0
# 172 "../../../packages/webclient-2.0.1/src/webclient_file.c"
                        );

    buffer = (unsigned char *) rt_malloc(4096);
    if (buffer == (0))
    {
        if ((0) >= 1) { switch(0) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "post file failed, no memory for response buffer."); rt_kprintf("\033[""0""m"); }; if ((0) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_NOMEM;
        goto __exit;
    }

    header = (char *) rt_malloc(4096);
    if (header == (0))
    {
        if ((0) >= 1) { switch(0) { case 3: rt_kprintf("\033[""31""m"); break; case 2: rt_kprintf("\033[""33""m"); break; case 1: rt_kprintf("\033[""32""m"); break; default: break; } rt_kprintf("web.file" "post file failed, no memory for header buffer."); rt_kprintf("\033[""0""m"); }; if ((0) >= 1) { rt_kprintf("\n"); };
        rc = -WEBCLIENT_NOMEM;
        goto __exit;
    }
    header_ptr = header;


    rt_snprintf(boundary, sizeof(boundary), "----------------------------%012d", rt_tick_get());


    buffer_ptr = buffer;

    buffer_ptr += rt_snprintf((char*) buffer_ptr,
            4096 - (buffer_ptr - buffer), "--%s\r\n", boundary);
    buffer_ptr += rt_snprintf((char*) buffer_ptr,
            4096 - (buffer_ptr - buffer),
            "Content-Disposition: form-data; %s\r\n", form_data);
    buffer_ptr += rt_snprintf((char*) buffer_ptr,
            4096 - (buffer_ptr - buffer),
            "Content-Type: application/octet-stream\r\n\r\n");

    length += buffer_ptr - buffer;
    length += rt_strlen(boundary) + 6;


    header_ptr += rt_snprintf(header_ptr,
            4096 - (header_ptr - header),
            "Content-Length: %d\r\n", length);
    header_ptr += rt_snprintf(header_ptr,
            4096 - (header_ptr - header),
            "Content-Type: multipart/form-data; boundary=%s\r\n", boundary);

    session = webclient_session_create(4096);
    if(session == (0))
    {
        rc = -WEBCLIENT_NOMEM;
        goto __exit;
    }

    session->header->buffer = rt_strdup(header);

    rc = webclient_post(session, URI, 
# 226 "../../../packages/webclient-2.0.1/src/webclient_file.c" 3 4
                                     0
# 226 "../../../packages/webclient-2.0.1/src/webclient_file.c"
                                         );
    if( rc< 0)
    {
        goto __exit;
    }


    webclient_write(session, buffer, buffer_ptr - buffer);


    while (1)
    {
        length = read(fd, buffer, 4096);
        if (length <= 0)
        {
            break;
        }

        webclient_write(session, buffer, length);
    }


    rt_snprintf((char*) buffer, 4096, "\r\n--%s--\r\n", boundary);
    webclient_write(session, buffer, rt_strlen(boundary) + 6);

__exit:
    if (fd >= 0)
    {
        close(fd);
    }

    if (session != (0))
    {
        webclient_close(session);
    }

    if (buffer != (0))
    {
        rt_free(buffer);
    }

    if (header != (0))
    {
        rt_free(header);
    }

    return 0;
}


int wget(int argc, char** argv)
{
    if (argc != 3)
    {
        rt_kprintf("Please using: wget <URI> <filename>");
        return -1;
    }

    webclient_get_file(argv[1], argv[2]);
    return 0;
}


# 1 "../../../components/finsh/finsh.h" 1
# 27 "../../../components/finsh/finsh.h"
# 1 "../../../components/finsh/finsh_api.h" 1
# 28 "../../../components/finsh/finsh.h" 2
# 66 "../../../components/finsh/finsh.h"
# 1 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ctype.h" 1 3 4
# 17 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ctype.h" 3 4

# 17 "d:\\c-sky\\cdk\\csky\\mingw\\csky-abiv2-elf-toolchain\\csky-elfabiv2\\sys-include\\ctype.h" 3 4
extern int isalnum (int);
extern int isalpha (int);
extern int iscntrl (int);
extern int isdigit(int);
extern int isgraph (int);
extern int islower (int);
extern int isprint(int);
extern int ispunct (int);
extern int isspace (int);
extern int isupper (int);
extern int isxdigit (int);


extern int isblank (int);

extern int tolower (int);
extern int toupper (int);
# 67 "../../../components/finsh/finsh.h" 2
# 96 "../../../components/finsh/finsh.h"

# 96 "../../../components/finsh/finsh.h"
struct finsh_syscall_item
{
    struct finsh_syscall_item* next;
    struct finsh_syscall syscall;
};
extern struct finsh_syscall_item *global_syscall_list;


struct finsh_sysvar
{
    const char* name;

    const char* desc;

    uint8_t type;
    void* var ;
};
# 125 "../../../components/finsh/finsh.h"
struct finsh_sysvar_item
{
    struct finsh_sysvar_item *next;
    struct finsh_sysvar sysvar;
};
extern struct finsh_sysvar *_sysvar_table_begin, *_sysvar_table_end;
extern struct finsh_sysvar_item* global_sysvar_list;


struct finsh_sysvar* finsh_sysvar_lookup(const char* name);


struct finsh_token
{
    char eof;
    char replay;

    int position;
    uint8_t current_token;

    union {
        char char_value;
        int int_value;
        long long_value;
    } value;
    uint8_t string[128];

    uint8_t* line;
};





struct finsh_node
{
    uint8_t node_type;
    uint8_t data_type;
    uint8_t idtype;

    union {
        char char_value;
        short short_value;
        int int_value;
        long long_value;
        void* ptr;
    } value;
    union
    {

        struct finsh_var *var;
        struct finsh_sysvar *sysvar;
        struct finsh_syscall*syscall;
    }id;


    struct finsh_node *sibling, *child;
};

struct finsh_parser
{
    uint8_t* parser_string;

    struct finsh_token token;
    struct finsh_node* root;
};






enum finsh_type {
    finsh_type_unknown = 0,
    finsh_type_void,
    finsh_type_voidp,
    finsh_type_char,
    finsh_type_uchar,
    finsh_type_charp,
    finsh_type_short,
    finsh_type_ushort,
    finsh_type_shortp,
    finsh_type_int,
    finsh_type_uint,
    finsh_type_intp,
    finsh_type_long,
    finsh_type_ulong,
    finsh_type_longp
};


int finsh_init(struct finsh_parser* parser);

int finsh_flush(struct finsh_parser* parser);

int finsh_reset(struct finsh_parser* parser);

void finsh_set_device(const char* device_name);



void finsh_parser_run (struct finsh_parser* parser, const unsigned char* string);

int finsh_compiler_run(struct finsh_node* node);

void finsh_vm_run(void);


struct finsh_var* finsh_var_lookup(const char* name);

long finsh_stack_bottom(void);


uint8_t finsh_errno(void);

const char* finsh_error_string(uint8_t type);
# 250 "../../../components/finsh/finsh.h"
void finsh_syscall_append(const char* name, syscall_func func);
# 260 "../../../components/finsh/finsh.h"
void finsh_sysvar_append(const char* name, uint8_t type, void* addr);
# 290 "../../../packages/webclient-2.0.1/src/webclient_file.c" 2
