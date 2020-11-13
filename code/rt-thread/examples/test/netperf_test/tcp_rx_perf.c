#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"
#include "drv_eth.h"

#define TEST_TCP_IPV6 0
#define TEST_TIME     6000 //uint is system ticks(10ms)

#define BUFSZ   1460
#define PORT    5000

static char recv_data[BUFSZ];

#if TEST_TCP_IPV6
void __fast tcprxperf(void)//(void *paramemter)
{
    int ret;
    uint32_t prio;
    uint64_t read_sum;
    int sock, connected, bytes_received;
    socklen_t sin_size;
    rt_tick_t end_time;
    struct sockaddr_in server_addr, client_addr;
    
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");
        
        rt_free(recv_data);
        return;
    }
    
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT); 
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));
    
    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Unable to bind\n");
        
        rt_free(recv_data);
        return;
    }
    
    if (listen(sock, 1) == -1) 
    {
        printf("Listen error\n");
        
        rt_free(recv_data);
        return;
    }
    
    printf("\nTCPServer Waiting for client on port 5000...\n");
    
    prio = 9;
    rt_thread_control(rt_thread_self(), RT_THREAD_CTRL_CHANGE_PRIORITY, (void *)&prio);
    
    while (1) 
    {
        sin_size = sizeof(struct sockaddr_in);
        
        connected = accept(sock, (struct sockaddr *)&client_addr, &sin_size);
        if (connected < 0) 
        {
            printf("accept connection failed! errno = %d\n", errno);
            continue;
        }
        
        printf("I got a connection from (%s , %d)\n", inet_ntoa(client_addr.sin_addr), ntohs(client_addr.sin_port));
        
        read_sum = 0;
        end_time = rt_tick_get() + TEST_TIME;
        
        while (1) 
        {
            bytes_received = recv(connected, recv_data, BUFSZ, 0);
            if (bytes_received < 0) 
            {
                closesocket(connected);
                break;
            }
            else if (bytes_received == 0) 
            {
                printf("\nReceived warning,recv function return 0.\r\n");
                closesocket(connected);
                break;
            }
            else
            {
                read_sum += bytes_received;
            }
            
            if (rt_tick_get() > end_time) 
            {
                closesocket(connected);
                closesocket(sock);
                printf("read %lld bytes ", read_sum);
                printf("in %d s\n", (TEST_TIME * 10) / 1000);
                printf("average speed = %fMbit/s\n", (float)read_sum * 8 / ((TEST_TIME * 10) / 1000) / (1024 * 1024));
                return;
            }
        }
    }
    
    closesocket(sock);
    return ;
}
#else
void __fast tcprxperf(void)
{
    //int ret;
    uint32_t prio;
    uint64_t read_sum;
    int sock, connected, bytes_received;
    socklen_t sin_size;
    rt_tick_t end_time;
    struct sockaddr_in server_addr, client_addr;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");

        rt_free(recv_data);
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT); 
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Unable to bind\n");

        rt_free(recv_data);
        return;
    }

    if (listen(sock, 1) == -1) 
    {
        printf("Listen error\n");

        rt_free(recv_data);
        return;
    }

    printf("\nTCPServer Waiting for client on port 5000...\n");

    prio = 9;
    rt_thread_control(rt_thread_self(), RT_THREAD_CTRL_CHANGE_PRIORITY, (void *)&prio);

    while (1) 
    {
        sin_size = sizeof(struct sockaddr_in);

        connected = accept(sock, (struct sockaddr *)&client_addr, &sin_size);
        if (connected < 0) 
        {
            printf("accept connection failed! errno = %d\n", errno);
            continue;
        }

        printf("I got a connection from (%s , %d)\n", inet_ntoa(client_addr.sin_addr), ntohs(client_addr.sin_port));

        read_sum = 0;
        end_time = rt_tick_get() + TEST_TIME;

        while (1) 
        {
            bytes_received = recv(connected, recv_data, BUFSZ, 0);
            if (bytes_received < 0) 
            {
                closesocket(connected);
                break;
            }
            else if (bytes_received == 0) 
            {
                printf("\nReceived warning,recv function return 0.\r\n");
                closesocket(connected);
                break;
            }
            else
            {
                read_sum += bytes_received;
            }

            if (rt_tick_get() > end_time) 
            {
                closesocket(connected);
                closesocket(sock);
                printf("read %lld bytes ", read_sum);
                printf("in %d s\n", (TEST_TIME * 10) / 1000);
                printf("average speed = %fMbit/s\n", (float)read_sum * 8 / ((TEST_TIME * 10) / 1000) / (1024 * 1024));
                return;
            }
        }
    }

    closesocket(sock);
    return ;
}

#endif

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcprxperf, startup tcp server for rx performance test);
#endif
