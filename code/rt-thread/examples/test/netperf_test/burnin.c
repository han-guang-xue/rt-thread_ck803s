#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define TCP_BURNIN_TEST    1
#define UDP_BURNIN_TEST    1
#define TCP_KEEPALIVE_TEST 0
#define TCP_RECEIVE_TEST   1
#define UDP_RECEIVE_TEST   1
#define MEM_MONITOR        0
#define TEST_TIME          12000 //uint is system ticks(10ms)
#define USING_SELECT       0
#define BUF_SIZE           1460
#define STACK_SIZE         (BUF_SIZE * 2 + 1024)
#define THREAD_PRIO        20
#define THREAD_NUM         4

static int burnin_thread_count = 0;
struct sockaddr_in __exdata server_addr[THREAD_NUM];
struct rt_thread __exdata burnin_thread[THREAD_NUM];
static char __exdata burnin_thread_stack[THREAD_NUM][STACK_SIZE];
static uint32 __exdata data_verify[THREAD_NUM];
extern uint32 data_transmit;

void data_verify_do(char *data_recv, uint32 len)
{
    uint32 elem_len = strlen("0123456789abcdefghij");
    int ret = 0;

    if (len != BUF_SIZE)
    {

    }
    else 
    {
        for (uint32 i = 0; i < BUF_SIZE; ) 
        {
            ret = memcmp(data_recv + i, "0123456789abcdefghij", elem_len);
            if (ret != 0)
            {
                printf("ERR##:recv data error\n");
            }
            i += elem_len;
        }
    }
}

void __fast burnin_do(void * server_addr_para)
{
    int i;
    int ret;
    int tcp_sock;
    int udp_sock;
    int bytes_read;
    struct sockaddr_in server_addr = *((struct sockaddr_in *)server_addr_para);
    char data_send[BUF_SIZE] = "0123456789abcdefghij"; 
    char data_recv[BUF_SIZE]; 
    #if USING_SELECT
    fd_set readset, writeset, excepttset;
    int status;
    #endif
    struct timeval timeout;
    rt_thread_t thread;
    uint32 do_data_verify;

    if ((tcp_sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        rt_kprintf("Socket error\n");
        return;
    }

    if ((udp_sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) 
    {
        rt_kprintf("Socket error\n");
        return;
    }

    #if TCP_BURNIN_TEST 
    if (connect(tcp_sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        rt_kprintf("Connect fail!\n");
        closesocket(tcp_sock);
        closesocket(udp_sock);
        return;
    }

    timeout.tv_sec = 30;
    timeout.tv_usec = 0;
    setsockopt(tcp_sock, SOL_SOCKET, SO_RCVTIMEO, (void *)&timeout, sizeof(timeout));
    #endif

    for (uint32 i = 0; i < BUF_SIZE; ) 
    {
       memcpy(data_send + i, "0123456789abcdefghij", strlen("0123456789abcdefghij"));
       i += strlen("0123456789abcdefghij");
    }

    thread = rt_thread_self();
    i = strtoul(thread->name + strlen("brn"), 0, 10);
    if (i >= THREAD_NUM)
    {
        rt_kprintf("thread number error!\n");
    }
    else
    {
        do_data_verify = data_verify[i];
        if (do_data_verify != 0)
            rt_kprintf("Required to do data verify...\n");
    }

    #if MEM_MONITOR
    rt_tick_t end_time;
    end_time = rt_tick_get() + TEST_TIME;
    #endif

    //thread = rt_thread_self();

    while (1) 
    {
        /* tcp */
        #if TCP_BURNIN_TEST
        #if TCP_KEEPALIVE_TEST
        int opt_tmp = 1;
        setsockopt(tcp_sock, SOL_SOCKET, SO_KEEPALIVE, &opt_tmp, sizeof(int));
        opt_tmp = 60;
        setsockopt(tcp_sock, IPPROTO_TCP, TCP_KEEPIDLE, &opt_tmp, sizeof(int));
        opt_tmp = 3;
        setsockopt(tcp_sock, IPPROTO_TCP, TCP_KEEPCNT, &opt_tmp, sizeof(int));
        opt_tmp = 5;
        setsockopt(tcp_sock, IPPROTO_TCP, TCP_KEEPINTVL, &opt_tmp, sizeof(int));
        if (data_transmit == 0)
        {
            //continue;
        }
        #endif
        ret = send(tcp_sock, data_send, BUF_SIZE, 0);
        if (ret < 0) 
        {
            //rt_kprintf("\nsend error,close the socket.\r\n");
            //closesocket(tcp_sock);
            //closesocket(udp_sock);
            //return 0;
        } 
        else if (ret == 0) 
        {
            rt_kprintf("\n Send warning,send function return 0.\r\n");
        }

        //rt_thread_sleep(1000);
        ///printf("+++burnin wakeup+++\n");
        //break;

        #if TCP_RECEIVE_TEST
        bytes_read = recv(tcp_sock, data_recv, BUF_SIZE, 0);
        if (bytes_read > 0) 
        {
            //printf("t%d\n", bytes_read);
            if (do_data_verify)
                data_verify_do(data_recv, bytes_read);
        }
        else 
        {
            //printf("recv error\n");
            //closesocket(tcp_sock);
            //closesocket(udp_sock);
            //return 0;
        }
        #endif
        #endif

        /* udp */
        #if UDP_BURNIN_TEST
        ret = sendto(udp_sock, data_send, BUF_SIZE, MSG_DONTWAIT, (struct sockaddr *)&server_addr, sizeof(struct sockaddr));

        #if UDP_RECEIVE_TEST
        #if USING_SELECT
        FD_ZERO(&readset);
        FD_ZERO(&writeset);
        FD_ZERO(&excepttset);
        FD_SET(udp_sock, &readset);
        
        timeout.tv_sec = 1;
        timeout.tv_usec = 0;
        if ((status = select(udp_sock + 1, &readset, &writeset, &excepttset, &timeout)) < 0) 
        {
            rt_kprintf("\nselect error,close the socket.\r\n");
            closesocket(tcp_sock);
            closesocket(udp_sock);
            return 0;
        } 
        else if (status == 0) 
        {
            rt_kprintf("timeout!\n"); 
        } 
        else if (status >0) 
        {   
            bytes_read = recv(udp_sock, data_recv, BUF_SIZE, MSG_DONTWAIT);
            if (bytes_read > 0) 
            {
                printf("r%d\n", bytes_read);
            }
        }
        #else
        bytes_read = recv(udp_sock, data_recv, BUF_SIZE, MSG_DONTWAIT);
        if (bytes_read > 0) 
        {
            //printf("u%d\n", bytes_read);
            if (do_data_verify)
                data_verify_do(data_recv, bytes_read);
        }
        #endif
        #endif
        #endif

        #if MEM_MONITOR
        if (rt_tick_get() > end_time) 
        {
           break;
        }
        #endif
    }

    closesocket(tcp_sock);
    closesocket(udp_sock);

    return;
}

void __fast burnin(int argc, char **argv)
{
    int port;
    const char *url;
    struct hostent *host;
    struct sockaddr_in *server;
    char thread_name[10];
    char *thread_stack;
    rt_thread_t thread;
    rt_err_t result = RT_EOK;

    if (argc < 3) 
    {
        rt_kprintf("Usage: burnin URL PORT\n");
        rt_kprintf("Like: burnin 192.168.12.44 5000\n");
        return;
    }
    
    url = argv[1];
    port = strtoul(argv[2], 0, 10);

    if (argc > 3) 
    {
        data_verify[burnin_thread_count] = strtoul(argv[3], 0, 10);
    }

    host = gethostbyname(url);

    thread_stack = burnin_thread_stack[burnin_thread_count]; 
    server = &server_addr[burnin_thread_count];
    thread = &burnin_thread[burnin_thread_count];

    server->sin_family = AF_INET;
    server->sin_port = htons(port);
    server->sin_addr = *((struct in_addr *)host->h_addr);
    rt_memset(&(server->sin_zero), 0, sizeof(server->sin_zero));

    //burnin_do((void *)server_addr);

    sprintf(thread_name, "brn%d", burnin_thread_count);

    if (thread_stack != NULL) 
    {
        result = rt_thread_init(thread, thread_name, burnin_do, server, thread_stack, STACK_SIZE, THREAD_PRIO-2, 1);
        RT_ASSERT(result == RT_EOK);
        result = rt_thread_startup(thread);
        RT_ASSERT(result == RT_EOK);
    } 
    else 
    {
        printf("malloc stack space error for new thread!\n");
    }

    burnin_thread_count++;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(burnin,startup burnin test);
#endif
