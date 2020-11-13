/*
 * Copyright (c) 2006-2019, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2019-01-16     MurphyZhao   the first version
 */

#include <rtthread.h>
#include "utest.h"

extern void writespeed(const char* filename, int total_length, int block_size);

static void test_writespeed(void)
{
    writespeed("/test",20971520,4096);
    uassert_true(1);
}

static rt_err_t utest_tc_init(void)
{
    utest_log_lv_set(1u);
    return RT_EOK;
}

static rt_err_t utest_tc_cleanup(void)
{
    return RT_EOK;
}

static void testcase(void)
{
    UTEST_UNIT_RUN(test_writespeed);
}
UTEST_TC_EXPORT(testcase, "longrun_test", utest_tc_init, utest_tc_cleanup, 10);