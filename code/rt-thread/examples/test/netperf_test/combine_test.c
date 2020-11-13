/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-08-03    chenyong      the first version
 */
#include <stdio.h>
#include <rtthread.h>
#include <webclient.h>
#include <sys/socket.h>
#include <unistd.h>
#include <dfs_fs.h>
#include <netdb.h>
#include "dfs_posix.h"

#define FILE_NAME_LEN_MAX              32
#define BOUNDARY                       "AaB03x"
#define GET_HEADER_BUFSZ               1024
#define GET_RESP_BUFSZ                 4096

__exdata unsigned char resp_buffer[GET_RESP_BUFSZ];
__exdata unsigned char file_buffer[GET_RESP_BUFSZ];

#ifdef WEBCLIENT_USING_TLS
#define GET_LOCAL_URI                  "https://192.168.10.1:8443/ck803_test_app/test.txt"
#else
#define GET_LOCAL_URI                  "http://192.168.10.1:8080/ck803_test_app/test.txt"
#endif

static uint32 proc_num = 0;
struct rt_mailbox *comb_https_srv_mb;

int comb_file_verify(unsigned char *data, uint32_t len, char *addr, int port)
{
    int ret;
    int sock, bytes_received;
    struct hostent *host;
    struct sockaddr_in server_addr;
    char recv_data[10]; 

    host = gethostbyname(addr);
    
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return -1;
    }
    
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr = *((struct in_addr *)host->h_addr);
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));
    
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Connect fail!\n");
        closesocket(sock);
        return -1;
    }

    printf("send %d\n", len);
    ret = send(sock, data, len, 0);
    if (ret < 0) 
    {
        closesocket(sock);
        printf("\nsend error,close the socket.\r\n");
        return -1;
    }
    else if (ret == 0) 
    {
        printf("\n Send warning,send function return 0.\r\n");
        return -1;
    }
    printf("recving result....\n");
    bytes_received = recv(sock, recv_data, 10, 0);
    if (bytes_received < 0) 
    {
        closesocket(sock);
        printf("\nreceived error,close the socket.\r\n");
        return -1;
    }
    else if (bytes_received == 0) 
    {
        closesocket(sock);
        printf("\nReceived warning,recv function return 0.\r\n");
        return -1;
    }
        
    recv_data[bytes_received] = '\0';
    closesocket(sock);

    if (strcmp(recv_data, "true") == 0)
       return 0;
    else
       return 1;

    return -1;
}

int comb_write_fs(unsigned char *file_name, unsigned char *data, uint32_t len)
{
    int fd, length;


    fd = open((const char *)file_name, O_WRONLY | O_CREAT | O_TRUNC, 0);
    
    if (fd < 0)
    {
        rt_kprintf("open file:%s failed\n", file_name);
        return -1;
    }

    length = write(fd, data, len);
    
    if (length != len)
    {
        rt_kprintf("write failed\n");
        close(fd);
        return -1;
    }

    /* close file and release memory */
    close(fd);

    rt_kprintf("File write ok\n");
    
    return 0;
}

int comb_read_fs(unsigned char *file_name, unsigned char *data)
{
    uint32_t file_sz = 0;
    int fd;

    fd = open((const char *)file_name, 0, O_RDONLY);
    if (fd < 0)
    {
        rt_kprintf("open file:%s failed\n", file_name);
        return -1;
    }
    
    while (1)
    {
        int length;
        length = read(fd, data, 4096);

        if (length <= 0) break;
        file_sz += length;
    }

    /* close file and release memory */
    close(fd);

    /* calculate read speed */
    rt_kprintf("File read ok \n");

    return file_sz;
}

int comb_delete_file(unsigned char *file_name)
{
    int result;
    
    result = unlink((const char *)file_name);
    if (0 != result)
        return -1;
    
    return 0;
}

int comb_client_test(int argc, char **argv)
{
    struct webclient_session* session = RT_NULL;
    char *URI = RT_NULL;
    int index, ret = 0;
    int bytes_read, resp_status;
    int content_length = -1;
    unsigned char file_name[FILE_NAME_LEN_MAX];

    if (argc < 4)
    {
        rt_kprintf("Usage: %s host port url\n", argv[0]);
        return -1;
    }

    while (1) 
    {
        URI = web_strdup(argv[3]);
        if(URI == RT_NULL)
        {
            rt_kprintf("no memory for create URI buffer.\n");
            return -1;
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
            rt_kprintf("webclient GET request failed, response(%d) error.\n", resp_status);
            ret = -RT_ERROR;
            goto __exit;
        }
    
        //rt_kprintf("webclient GET request response data :\n");
    
        content_length = webclient_content_length_get(session);
        if (content_length < 0)
        {
            rt_kprintf("webclient GET request type is chunked.\n");
            do
            {
                bytes_read = webclient_read(session, resp_buffer, GET_RESP_BUFSZ);
                if (bytes_read <= 0)
                {
                    break;
                }
    
                for (index = 0; index < bytes_read; index++)
                {
                    rt_kprintf("%c", resp_buffer[index]);
                }
            } while (1);
    
            rt_kprintf("\n");
        }
        else
        {
            
            /* 1. fetch data from https server */
            int content_pos = 0;
            //rt_kprintf("content_length = %d\n", content_length);
            do
            {
                bytes_read = webclient_read(session, resp_buffer, 
                        content_length - content_pos > GET_RESP_BUFSZ ?
                                GET_RESP_BUFSZ : content_length - content_pos);
                if (bytes_read <= 0)
                {
                    break;
                }
    
                //for (index = 0; index < bytes_read; index++)
                //{
                //    rt_kprintf("%c", resp_buffer[index]);
                //}
    
                content_pos += bytes_read;
            } while (content_pos < content_length);
            //rt_kprintf("\n");
    
            /* 2. generate file name */
            sprintf((char *)file_name, "%d.txt", proc_num++);
            printf(" file_name = %s\n", file_name);

            /* 3. write file to external FS */
            comb_write_fs(file_name, resp_buffer, content_length);
    
            /* 4. read file back to RAM from external FS */
            ret = comb_read_fs(file_name, file_buffer);
    
            /* 5. verify length */
            if (content_length != ret)
            {
                //printf("ERR## length unequal ret = %d!\n", ret);
                goto __get_resp;
            }
    
            /* 6. upload file to verify content */
            ret = comb_file_verify(file_buffer, content_length, argv[1], atoi(argv[2]));
            if (ret != 0)
            {
                printf("ERR## content inconsistent!\n");
            }
            else
            {
                printf("##Verify OK##\n");
                comb_delete_file(file_name);
            }
    
__get_resp:
            do
            {
                bytes_read = webclient_read(session, resp_buffer, GET_RESP_BUFSZ);
                if (bytes_read <= 0)
                {
                    break;
                }
                
                //for (index = 0; index < bytes_read; index++)
                //{
                //    rt_kprintf("%c", resp_buffer[index]);
                //}
            } while (1);
            //rt_kprintf("\n");
        }
    
__exit:
        if (session)
        {
            webclient_close(session);
        }
    
        if (URI)
        {
            web_free(URI);
        }
    }

    return ret;
}

int comb_server_test(int argc, char **argv)
{
    int ret = 0;
    int content_length = -1;
    unsigned char file_name[FILE_NAME_LEN_MAX];
    rt_uint32_t mbval;

    if (argc < 3)
    {
        rt_kprintf("Usage: %s host port\n", argv[0]);
        return -1;
    }

    comb_https_srv_mb = rt_mb_create("comb", 2, RT_IPC_FLAG_FIFO);
    if (comb_https_srv_mb == RT_NULL)
    {
        printf("ERR##: combine mailbox creat error!\n");
    }

    printf("comb_https_srv_test_main\n");
    while (1) 
    {
        if (rt_mb_recv(comb_https_srv_mb, &mbval, RT_WAITING_FOREVER) == RT_EOK)
        {
            printf("=====got new uploaded file!=====\n");

            #if 1
            /* 1. read file back to RAM from external FS */
            int fd = open("/ram/file1.txt", 0, O_RDONLY);
            if (fd < 0)
            {
                rt_kprintf("open file: /ram/file1.txt failed\n");
                continue;
            }
            else
            {
                content_length = read(fd, resp_buffer, GET_RESP_BUFSZ);
                /* close file and release memory */
                close(fd);

                //for (index = 0; index < content_length; index++)
                //{
                //    rt_kprintf("%c", resp_buffer[index]);
                //}
            }
            #endif

            /* 2. generate new file name */
            sprintf((char *)file_name, "%d.txt", proc_num++);
            printf(" file_name = %s\n", file_name);

            /* 3. write file to external FS */
            comb_write_fs(file_name, resp_buffer, content_length);

            /* 4. read back */
            ret = comb_read_fs(file_name, file_buffer);

            /* 2. verify length */
            if (content_length != ret)
            {
                printf("ERR## length unequal ret = %d!\n", ret);
                continue;
            }

            /* 5. upload file to verify content */
            ret = comb_file_verify(file_buffer, content_length, argv[1], atoi(argv[2]));
            if (ret != 0)
            {
                printf("ERR## content inconsistent!\n");
            }
            else
            {
                printf("##Verify OK##\n");
                comb_delete_file(file_name);
            }
        }
    }
    
    return ret;
}

#ifdef FINSH_USING_MSH
#include <finsh.h>
MSH_CMD_EXPORT_ALIAS(comb_client_test, comb_client, https client + fs + socket test);
MSH_CMD_EXPORT_ALIAS(comb_server_test, comb_server, https server + fs + socket test);
#endif /* FINSH_USING_MSH */
