
/*
 * File      : clock.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006 - 2012, RT-Thread Development Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Change Logs:
 * Date           Author       Notes
 * 2017-10-10     Tanek        first version
 */

#include <rtthread.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    printf("RT-Thread test main entry\n");

/* Note:
 * Run test from main() or shell command line in case of duplicate.
 *
 */
#ifdef PKG_USING_MBEDTLS_EXAMPLE
extern int mbedtls_crypto_test( int argc, char *argv[] );
extern int mbedlts_client_start(void);
//    mbedtls_crypto_test(1, NULL);
//    mbedlts_client_start();
#endif

#ifdef WEBCLIENT_USING_SAMPLES
extern int webclient_get_test(int argc, char **argv);
extern int webclient_post_test(int argc, char **argv);
//    webclient_get_test(1, NULL);
//    webclient_post_test(1, NULL);
#endif

#ifdef WEBNET_USING_SAMPLES
extern void webnet_test(void);
//    webnet_test();
#endif

    return 0;
}

