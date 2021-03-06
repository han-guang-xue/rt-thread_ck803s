/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-08-03    chenyong      the first version
 */
#include <string.h>
#include <rtthread.h>
#include <webclient.h>

#define GET_HEADER_BUFSZ               1024
#define GET_RESP_BUFSZ                 1024

//#define GET_LOCAL_URI                  "https://www.rt-thread.com/service/rt-thread.txt"
#define GET_LOCAL_URI                  "https://192.168.100.167/test.txt"

int webclient_get_test(int argc, char **argv)
{
    struct webclient_session* session = RT_NULL;
    unsigned char *buffer = RT_NULL;
    char *URI = RT_NULL;
    int index, ret = 0;
    int bytes_read, resp_status;
    int content_length = -1;

    if (argc == 1)
    {
        URI = web_strdup(GET_LOCAL_URI);
        if(URI == RT_NULL)
        {
            rt_kprintf("no memory for create URI buffer.\n");
            return -1;
        }
    }
    else if (argc == 2)
    {
        URI = web_strdup(argv[1]);
        if(URI == RT_NULL)
        {
            rt_kprintf("no memory for create URI buffer.\n");
            return -1;
        }
    }
    else
    {
        rt_kprintf("webclient_get_test [URI]  - webclient GET request test.\n");
        return -1;
    }

    buffer = (unsigned char *) web_malloc(GET_HEADER_BUFSZ);
    if (buffer == RT_NULL)
    {
        rt_kprintf("no memory for receive buffer.\n");
        ret = -RT_ENOMEM;
        goto __exit;

    }

    /* create webclient session and set header response size */
    session = webclient_session_create(GET_HEADER_BUFSZ);
    if (session == RT_NULL)
    {
        ret = -RT_ENOMEM;
        goto __exit;
    }

    /* send GET request by default header */
    if ((resp_status = webclient_get(session, URI)) != 200)
    {
        if (resp_status == 302 || resp_status == 301)
        {
            const char *location = webclient_header_fields_get(session, "Location");
            
            /* relocation */
            if (location)
            {
                char *new_url = rt_malloc(strlen(URI) + strlen(location) + 1);
                if (new_url == RT_NULL)
                {
                    rt_kprintf("creat new URL failed.\n");
                    ret = -RT_ERROR;
                    goto __exit;
                }
                
                memcpy(new_url, URI, strlen(URI) + 1);
                
                char *host_start = strstr(new_url, "//") + 2;
                char *host_end = strstr(host_start, "/");
                
                if (host_end == RT_NULL)
                    strcat(new_url, location);
                else
                    memcpy(host_end, location, strlen(location) + 1);
                
                webclient_close(session);
                
                /* create webclient session and set header response size */
                session = webclient_session_create(GET_HEADER_BUFSZ);
                if (session == RT_NULL)
                {
                    rt_free(new_url);
                    rt_kprintf("creat new session failed.\n");
                    ret = -RT_ERROR;
                    goto __exit;
                }

                rt_free(URI);
                URI = new_url;
                
                if (webclient_get(session, URI) != 200)
                {
                    rt_kprintf("webclient GET request failed, response(%d) error.\n", resp_status);
                    ret = -RT_ERROR;
                    goto __exit;
                }
            }
            else 
            {
                rt_kprintf("webclient GET Location failed.\n");
                ret = -RT_ERROR;
                goto __exit;
            }
        }
        else
        {
            rt_kprintf("webclient GET request failed, response(%d) error.\n", resp_status);
            ret = -RT_ERROR;
            goto __exit;
        }
    }

    rt_kprintf("webclient GET request response data :\n");

    content_length = webclient_content_length_get(session);
    if (content_length < 0)
    {
        rt_kprintf("webclient GET request type is chunked.\n");
        do
        {
            bytes_read = webclient_read(session, buffer, GET_RESP_BUFSZ);
            if (bytes_read <= 0)
            {
                break;
            }

            for (index = 0; index < bytes_read; index++)
            {
                rt_kprintf("%c", buffer[index]);
            }
        } while (1);

        rt_kprintf("\n");
    }
    else
    {
        int content_pos = 0;

        do
        {
            bytes_read = webclient_read(session, buffer, 
                    content_length - content_pos > GET_RESP_BUFSZ ?
                            GET_RESP_BUFSZ : content_length - content_pos);
            if (bytes_read <= 0)
            {
                break;
            }

            for (index = 0; index < bytes_read; index++)
            {
                rt_kprintf("%c", buffer[index]);
            }

            content_pos += bytes_read;
        } while (content_pos < content_length);

        rt_kprintf("\n");
    }

__exit:
    if (session)
    {
        webclient_close(session);
    }

    if (buffer)
    {
        web_free(buffer);
    }

    if (URI)
    {
        web_free(URI);
    }

    return ret;
}

#ifdef FINSH_USING_MSH
#include <finsh.h>
MSH_CMD_EXPORT_ALIAS(webclient_get_test, web_get_test, web_get_test [URI]  webclient GET request test);
#endif /* FINSH_USING_MSH */
