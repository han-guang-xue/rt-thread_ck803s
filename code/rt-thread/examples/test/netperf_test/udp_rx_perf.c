#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"
#include "drv_eth.h"

#define TEST_UDP_IPV6 0
#define TEST_TIME     6000 //uint is system ticks(10ms)

#define BUFSZ   1500
#define PORT    5000

static char recv_data[BUFSZ];

#if TEST_UDP_IPV6
void __fast udprxperf(void)//(void *paramemter)
{
    int sockfd;
    int bytes_read;
    struct sockaddr_in6 server_addr6;
    struct sockaddr_in6 client_addr6;
    rt_uint32_t addr_len;

    if ((sockfd = socket(AF_INET6, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        rt_free(recv_data);
        return ;
    }

    server_addr6.sin6_family = AF_INET6;
    server_addr6.sin6_port = htons(PORT);
    memcpy(server_addr6.sin6_addr.s6_addr, IP6_ADDR_ANY, 16);

    if (bind(sockfd, (struct sockaddr *)&server_addr6, sizeof(struct sockaddr)) == -1) 
    {
        printf("Bind error\n");
        rt_free(recv_data);
        return ;
    }
    rt_sprintf(recv_data, "%4d", PORT);
    printf("UDPServer Waiting for client on port %s...\n", recv_data);

    addr_len = sizeof(struct sockaddr);
    while (1) 
    {
        bytes_read = recvfrom(sockfd, recv_data, BUFSZ, 0, (struct sockaddr *)&client_addr6, &addr_len);
        printf("rlen=%d\n", bytes_read);
    }

    return ;
}
#else
void __fast udprxperf(void)
{
    int sock;
    int bytes_read;
    uint32_t prio;
    uint64_t read_sum;
    //rt_err_t  res;
    //socklen_t addr_len;
    rt_tick_t end_time;
    struct sockaddr_in server_addr;// client_addr;

    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT);
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Bind error\n");
        return;
    }

    //addr_len = sizeof(struct sockaddr);
    printf("UDPServer Waiting for client on port %d...\n", PORT);

    prio = RT_LWIP_ETHTHREAD_PRIORITY;
    rt_thread_control(rt_thread_self(), RT_THREAD_CTRL_CHANGE_PRIORITY, (void *)&prio);

    read_sum = 0;
    end_time = rt_tick_get() + TEST_TIME;

    while (1) 
    {
        //recvfrom(sock, recv_data, BUFSZ - 1, 0, (struct sockaddr *)&client_addr, &addr_len);
        bytes_read = recv(sock, recv_data, BUFSZ, 0);
        if (bytes_read > 0) 
        {
            read_sum += bytes_read;
            //printf("rlen=%d\n", bytes_read);
        }
       
        if (rt_tick_get() > end_time) 
        {
           printf("read %lld bytes ", read_sum);
           printf("in %d s\n", (TEST_TIME * 10) / 1000);
           printf("average speed = %fMbit/s\n", (float)read_sum * 8 / ((TEST_TIME * 10) / 1000) / (1024 * 1024));
           break;
        }
    }

    closesocket(sock);

    return;
}
#endif

#if 0
static void __fast udprxperf_1(void)//(void *paramemter)
{
    rt_err_t result = RT_EOK;
    
    /* initialize Rx thread. */
    /* initialize mailbox and create Ethernet Rx thread */
    result = rt_mb_init(&udprxperf_thread_mb, "udprxperfmb",
                        &udprxperf_thread_mb_pool[0], sizeof(udprxperf_thread_mb_pool)/4, 
                         RT_IPC_FLAG_FIFO);
    RT_ASSERT(result == RT_EOK);
    
    result = rt_thread_init(&udprxperf_thread, "udprxperf", udprxperf_thread_entry, RT_NULL,
                            &udprxperf_thread_stack[0], sizeof(udprxperf_thread_stack),
                             10, 16);
    RT_ASSERT(result == RT_EOK);
    result = rt_thread_startup(&udprxperf_thread);
    RT_ASSERT(result == RT_EOK);

    rt_thread_yield();

}
#endif
#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(udprxperf, startup udp server for rx performance test);
#endif
