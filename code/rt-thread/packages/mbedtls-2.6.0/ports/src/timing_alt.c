/*
 *  Portable interface to the CPU cycle counter
 *
 *  Copyright (C) 2006-2015, ARM Limited, All Rights Reserved
 *  SPDX-License-Identifier: Apache-2.0
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may
 *  not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 *  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  This file is part of mbed TLS (https://tls.mbed.org)
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_SELF_TEST) && defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf     printf
#endif

#if defined(MBEDTLS_TIMING_C)

#include <sys/types.h>
#include <unistd.h>
#include <rthw.h>
#include "timing_alt.h"

struct _hr_time
{
    struct timeval start;
};

unsigned long mbedtls_timing_hardclock( void )
{
    return rt_hw_hardclock_get();
}

volatile int mbedtls_timing_alarmed = 0;

unsigned long mbedtls_timing_get_timer( struct mbedtls_timing_hr_time *val, int reset )
{
    unsigned long delta;
    uint32_t offset;
    uint32_t *t = (uint32_t *)val;

    offset = rt_hw_hardclock_get();
    if( reset )
    {
        *t = offset;
        return( 0 );
    }

    /* Make sure that max timing interval = 21s at 200MHz */
extern int system_clock;
    delta = (offset - (*t)) / (system_clock / 1000);
    return( delta );
}

static void mbedtls_alarm_entry(void *parameter)
{
    mbedtls_timing_alarmed = 1;
}

void mbedtls_set_alarm( int seconds )
{
    static rt_timer_t timer = NULL;

    if (timer) {
        rt_timer_delete(timer);
    }

    mbedtls_timing_alarmed = 0;
    timer = rt_timer_create("malarm", mbedtls_alarm_entry, RT_NULL,
                            seconds * RT_TICK_PER_SECOND,
                            RT_TIMER_FLAG_ONE_SHOT);
    if (timer != RT_NULL)
    {
        rt_timer_start(timer);
    }
}

/*
 * Set delays to watch
 */
void mbedtls_timing_set_delay( void *data, uint32_t int_ms, uint32_t fin_ms )
{
    mbedtls_timing_delay_context *ctx = (mbedtls_timing_delay_context *) data;

    ctx->int_ms = int_ms;
    ctx->fin_ms = fin_ms;

    if( fin_ms != 0 )
        (void) mbedtls_timing_get_timer( &ctx->timer, 1 );
}

/*
 * Get number of delays expired
 */
int mbedtls_timing_get_delay( void *data )
{
    mbedtls_timing_delay_context *ctx = (mbedtls_timing_delay_context *) data;
    unsigned long elapsed_ms;

    if( ctx->fin_ms == 0 )
        return( -1 );

    elapsed_ms = mbedtls_timing_get_timer( &ctx->timer, 0 );

    if( elapsed_ms >= ctx->fin_ms )
        return( 2 );

    if( elapsed_ms >= ctx->int_ms )
        return( 1 );

    return( 0 );
}

#endif /* MBEDTLS_TIMING_C */
