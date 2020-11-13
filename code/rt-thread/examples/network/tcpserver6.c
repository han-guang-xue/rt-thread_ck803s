#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define SERV_PORT 10001   
#define BUF_SIZE  1024    
#define BACKLOG   5       

static const char send_data[] = "This is TCP Server from RT-Thread.\n";

void tcpserver6(void)
{
    int sockfd, clientfd;
    struct sockaddr_in6 server_addr6, client_addr6;
    int bytes_received;
    char *recv_data;
    rt_uint32_t sin_size;
    rt_bool_t stop = RT_FALSE;

    recv_data = rt_malloc(BUF_SIZE);
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

    server_addr6.sin6_family = AF_INET6;
    memcpy(server_addr6.sin6_addr.s6_addr, IP6_ADDR_ANY, 16);
    server_addr6.sin6_port = htons(SERV_PORT);

    if (bind(sockfd, (struct sockaddr *)&server_addr6, sizeof(struct sockaddr)) == -1) 
    {
        printf("Bind error\n");
        rt_free(recv_data);
        return ;
    }

    if (listen(sockfd, BACKLOG) == -1) 
    {
        printf("Listen error\n");
        rt_free(recv_data);
        return ;
    }

    rt_sprintf(recv_data, "%4d", SERV_PORT);
    printf("\nTCPServer Waiting for client on port %s...\n", recv_data);

    while (stop != RT_TRUE) 
    { 
        sin_size = sizeof(struct sockaddr_in6);
        clientfd = accept(sockfd, (struct sockaddr *)&client_addr6, (socklen_t *)&sin_size);
        printf("I got a connection from (IP:%s, PORT:%d\n)", inet6_ntoa(client_addr6.sin6_addr), 
                                                                 ntohs(client_addr6.sin6_port));
        while (1) 
        {
            send(clientfd, send_data, strlen(send_data), 0);

            bytes_received = recv(clientfd, recv_data, BUF_SIZE, 0);
            if (bytes_received <= 0) 
            {
                closesocket(clientfd);
                break;
            }
            recv_data[bytes_received] = '\0';
            if (strcmp(recv_data, "q") == 0 || strcmp(recv_data, "Q") == 0) 
            {
                closesocket(clientfd);
                break;
            }
            else if (strcmp(recv_data, "exit") == 0) 
            {
                closesocket(clientfd);
                stop = RT_TRUE;
                break;
            }
            else 
            {
                printf("RECEIVED DATA = %s\n", recv_data);
            }
        }
    }

    closesocket(sockfd);
    rt_free(recv_data);

    return ;
}
#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcpserver6, start tcp server via ipv6);
#endif
