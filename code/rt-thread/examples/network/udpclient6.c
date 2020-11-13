#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h>
#include "netdb.h"

#define SERV_PORT 10011 
#define SERVADDR "4006:e024:680:c6e:200:eff:fe62:3456"
#define BUF_SIZE  1024 
static const char send_data[] = "This is UDP Client from RT-Thread.";

void udpclient6(void)
{
    int sockfd;
    int n;
    char *recv_data;
    struct sockaddr_in6 server_addr6, client_addr6;
    socklen_t clientlen;

    recv_data = rt_malloc(BUF_SIZE);
    if (recv_data == RT_NULL) 
    {
        printf("No memory\n");
        return ;
    }

    if ((sockfd = socket(PF_INET6, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        rt_free(recv_data);
        return ;
    }

    memset(&server_addr6, 0, sizeof(server_addr6));
    server_addr6.sin6_family = AF_INET6;
    server_addr6.sin6_port = htons(SERV_PORT);
    if(inet_pton(AF_INET6, SERVADDR, &server_addr6.sin6_addr.s6_addr) != 1) 
    {
        printf("inet_pton() error\n");
        rt_free(recv_data);
        return ;
    }

    while (1) 
    {
        if (sendto(sockfd, send_data, strlen(send_data), 0, (struct sockaddr *)&server_addr6, sizeof(server_addr6)) < 0) 
        {
            printf("Sendto error\n");
            rt_free(recv_data);
            return ;
        }
    
        clientlen = sizeof(client_addr6);
        if ((n = recvfrom(sockfd, recv_data, BUF_SIZE, 0, (struct sockaddr *)&client_addr6, &clientlen)) < 0) 
        {
            printf("Recvfrom error\n");
            rt_free(recv_data);
            return ;
        }
        recv_data[n] = '\0';
        printf("RECEIVED DATA = %s\n", recv_data);
    }

    closesocket(sockfd);
}
#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(udpclient6, start udp client via ipv6);
#endif

