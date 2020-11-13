#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define SERV_PORT 10002 
#define SERVADDR "4006:e024:680:c6e:200:eff:fe62:3456"
#define BUF_SIZE  2048 
static const char send_data[] = "This is TCP Client from RT-Thread.";

void tcpclient6(void)
{
    int status = 0;
    int sockfd;
    int bytes_received;
    char* recv_data;
    struct sockaddr_in6 server_addr6;

    recv_data = malloc(BUF_SIZE);
    if (recv_data == RT_NULL) 
    {
        printf("No memory\n");
        return ;
    }

    if ((sockfd = socket(PF_INET6, SOCK_STREAM, 0)) == -1) 
    {
        printf("Socket error\n");
        rt_free(recv_data);
        return ;
    }

    memset(&server_addr6, 0, sizeof(server_addr6));
    server_addr6.sin6_family = AF_INET6;
    server_addr6.sin6_port = htons(SERV_PORT);
    if (inet_pton(AF_INET6, SERVADDR, &server_addr6.sin6_addr.s6_addr) != 1) 
    {
        printf("inet_pton() error\n");
        rt_free(recv_data);
        return ;
    }

    status = connect(sockfd, (struct sockaddr *)&server_addr6, sizeof(server_addr6));
    if (status < 0) 
    {
        printf("Connect error:%d\n", status);
        rt_free(recv_data);
        return ;
    }

    while (1) 
    {
        bytes_received = recv(sockfd, recv_data, BUF_SIZE -1, 0);
        if (bytes_received < 0)
        {
            closesocket(sockfd);
            rt_free(recv_data);
            break;
        }

        recv_data[bytes_received] = '\0';
        if (strcmp(recv_data, "q") == 0 || strcmp(recv_data, "Q") == 0) 
        {
            closesocket(sockfd);
            rt_free(recv_data);
            break;
        }
        else 
        {
            printf("\nReceived data = %s ", recv_data);
        }

        send(sockfd, send_data, strlen(send_data), 0);
    }

    return;     
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcpclient6, startup tcp client via ipv6);
#endif
