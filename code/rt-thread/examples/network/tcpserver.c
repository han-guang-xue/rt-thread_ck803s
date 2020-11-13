#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define BUFSZ       (1024)
#define USE_THREAD  0

static const char send_data[] = "This is TCP Server from RT-Thread.";

#if USE_THREAD
#define STACK_SIZE   (BUFSZ * 2)
static struct rt_thread tcp_srv_thread;
static char tcp_srv_thread_stack[STACK_SIZE];
static int  listen_port;
static void tcpserv_do(void *para)
#else
static void __fast tcpserver(int argc, char **argv)
#endif
{
    int ret;
    int port;
    int sock, connected, bytes_received;
    char *recv_data; 
    socklen_t sin_size;
    socklen_t name_len;
    struct sockaddr_in sock_name;
    struct sockaddr_in server_addr;
    struct sockaddr_in client_addr;

    #if USE_THREAD
    port = *((int *)para);
    #else
    if (argc < 2) 
    {
        printf("Usage: %s PORT\n", argv[0]);
        printf("Like: %s 5000\n", argv[0]);
        return;
    }

    port = atol(argv[1]);
    #endif

    recv_data = rt_malloc(BUFSZ + 1); 
    if (recv_data == RT_NULL) 
    {
        printf("No memory\n");
        return;
    }

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");

        rt_free(recv_data);
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port); 
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Unable to bind\n");
        goto __exit;
    }

    if (listen(sock, 5) == -1) 
    {
        printf("Listen error\n");
        goto __exit;
    }

    printf("\nTCPServer Waiting for client on port %d...\n", port);
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

        /* Test getsockname() and getpeername() */
        getsockname(connected, (struct sockaddr *)&sock_name, &name_len);
        printf("Local(%s : %d)\n", inet_ntoa(sock_name.sin_addr), ntohs(sock_name.sin_port));
        getpeername(connected, (struct sockaddr *)&sock_name, &name_len);
        printf("Peer (%s : %d)\n", inet_ntoa(sock_name.sin_addr), ntohs(sock_name.sin_port));

        while (getchar() != 'q') 
        {
            ret = send(connected, send_data, strlen(send_data), 0);
            if (ret < 0) 
            {
                printf("\nsend error,close the socket.\r\n");
                break;
            }
            else if (ret == 0) 
            {
                printf("\n Send warning,send function return 0.\r\n");
            }

            bytes_received = recv(connected, recv_data, BUFSZ, 0);
            if (bytes_received < 0) 
            {
                break;
            }
            else if (bytes_received == 0) 
            {
                printf("\nReceived warning,recv function return 0.\r\n");
                break;
            }

            recv_data[bytes_received] = '\0';

            printf("RECEIVED DATA = %s \n", recv_data);
        }

        closesocket(connected);

        goto __exit;
    }

__exit:
    closesocket(sock);

    rt_free(recv_data);

    return ;
}

#if USE_THREAD
static void tcpserver(int argc, char **argv)
{
    rt_err_t result = RT_EOK;

    if (argc < 2) 
    {
        printf("Usage: %s PORT\n", argv[0]);
        printf("Like: %s 5000\n", argv[0]);
        return;
    }

    result = rt_thread_init(&tcp_srv_thread, "tcpsrv", tcpserv_do, &listen_port,
                            tcp_srv_thread_stack, STACK_SIZE, 20, 16);
    RT_ASSERT(result == RT_EOK);
    result = rt_thread_startup(&tcp_srv_thread);
    RT_ASSERT(result == RT_EOK);
}
#endif

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcpserver, startup tcp server);
#endif
