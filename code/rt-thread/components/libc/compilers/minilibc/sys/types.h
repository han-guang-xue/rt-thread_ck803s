#ifndef __TYPES_H__
#define __TYPES_H__

#ifndef size_t
typedef unsigned int size_t;
#endif

#ifndef ssize_t
typedef int ssize_t;                    /* Used for a count of bytes or an error indication. */
#endif

typedef  int __off_t;
typedef __off_t off_t;                  //modified by dortain for the same with compiler c-sky

typedef unsigned char  u_char;
typedef unsigned short u_short;
typedef unsigned int   u_int;
typedef unsigned long  u_long;

typedef int mode_t;

typedef unsigned long clockid_t;
typedef int pid_t;

typedef	unsigned long clock_t; /* clock() */

#ifndef NULL
#define NULL        (0)
#endif

#define __u_char_defined

#endif

