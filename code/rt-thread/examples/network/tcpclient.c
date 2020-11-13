#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h>
#include "netdb.h"

#define BUFSZ   1024

static char recv_data[BUFSZ]; 
static const char send_data[] = "This is TCP Client from RT-Thread."; 
void tcpclient(int argc, char **argv)
{
    int ret;
    int port;
    int sock, bytes_received;
    const char *url;
    struct hostent *host;
    struct sockaddr_in server_addr;

    if (argc < 3) 
    {
        printf("Usage: tcpclient URL PORT\n");
        printf("Like: tcpclient 192.168.12.44 5000\n");
        return;
    }
    
    url = argv[1];
    port = strtoul(argv[2], 0, 10);

    host = gethostbyname(url);

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr = *((struct in_addr *)host->h_addr);
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Connect fail!\n");
        closesocket(sock);
        return;
    }

    //prio = RT_LWIP_ETHTHREAD_PRIORITY;
    //rt_thread_control(rt_thread_self(), RT_THREAD_CTRL_CHANGE_PRIORITY, (void *)&prio);

    while (getchar() != 'q') 
    {
        bytes_received = recv(sock, recv_data, BUFSZ - 1, 0);
        if (bytes_received < 0) 
        {
            printf("\nreceived error,close the socket.\r\n");
            break;
        }
        else if (bytes_received == 0) 
        {
            printf("\nReceived warning,recv function return 0.\r\n");
            break;
        }

        recv_data[bytes_received] = '\0';

        printf("\nReceived data = %s\n", recv_data);

        ret = send(sock, send_data, strlen(send_data), 0);
        if (ret < 0) 
        {
            printf("\nsend error,close the socket.\r\n");
            break;
        }
        else if (ret == 0) 
        {
            printf("\n Send warning,send function return 0.\r\n");
        }
    }

    closesocket(sock);

    return;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcpclient, startup tcp client);
#endif
