/*
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

#if defined(MBEDTLS_THREADING_ALT)

#include "mbedtls/threading.h"

void threading_mutex_init_rtt( mbedtls_threading_mutex_t *mutex )
{
    static rt_uint32_t counter = 0;
    char tname[RT_NAME_MAX];

    if(mutex == NULL)
    {
        return;
    }

    rt_snprintf(tname, RT_NAME_MAX, "%s%d", THREADING_MUTEX_NAME, counter);
    counter ++;

    rt_mutex_init(&mutex->mutex, tname, RT_IPC_FLAG_FIFO);
    mutex->is_valid = 1;
}

void threading_mutex_free_rtt( mbedtls_threading_mutex_t *mutex )
{
    if( mutex == NULL || !mutex->is_valid )
    {
        return;
    }

    rt_mutex_detach(&mutex->mutex);
    mutex->is_valid = 0;
}

int threading_mutex_lock_rtt( mbedtls_threading_mutex_t *mutex )
{
    if( mutex == NULL || ! mutex->is_valid )
    {
        return MBEDTLS_ERR_THREADING_BAD_INPUT_DATA;
    }

    if( rt_mutex_take(&mutex->mutex, RT_WAITING_FOREVER) != 0 )
    {
        return MBEDTLS_ERR_THREADING_MUTEX_ERROR;
    }

    return 0;
}

int threading_mutex_unlock_rtt( mbedtls_threading_mutex_t *mutex )
{
    if( mutex == NULL || ! mutex->is_valid )
    {
        return MBEDTLS_ERR_THREADING_BAD_INPUT_DATA;
    }

    if( rt_mutex_release(&mutex->mutex) != 0 )
    {
        return MBEDTLS_ERR_THREADING_MUTEX_ERROR;
    }

    return( 0 );
}

#endif /* MBEDTLS_THREADING_ALT */

