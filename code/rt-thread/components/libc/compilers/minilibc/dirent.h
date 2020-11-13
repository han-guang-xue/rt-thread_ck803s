#ifndef __RTT_DIRENT_H__
#define __RTT_DIRENT_H__

//#include <rtthread.h>
//#include <rtlibc.h>

/*
* dirent.h - format of directory entries
 * Ref: http://www.opengroup.org/onlinepubs/009695399/basedefs/dirent.h.html
 */

/* File types */
//#define FT_REGULAR      0   /* regular file */
//#define FT_SOCKET       1   /* socket file  */
//#define FT_DIRECTORY    2   /* directory    */
//#define FT_USER         3   /* user defined */

#ifdef __cplusplus
extern "C" {
#endif

#ifdef RT_USING_DFS
#include <dfs_posix.h>
#endif

#ifdef __cplusplus
}
#endif

#endif
