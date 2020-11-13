#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h>
#include "netdb.h"

#define MCAST_PORT 8888 
#define MCAST_ADDR "FF02::1"
static const char send_data[] = "This is Multicast from RT-Thread.";

void mtcastsend6(void)
{
    int sockfd;
    struct sockaddr_in6 server_addr6;
    struct sockaddr_in6 local_addr6;

    if ((sockfd = socket(PF_INET6, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return ;
    }

    uint32_t ttl = 255;
    setsockopt(sockfd, IPPROTO_IPV6, IPV6_MULTICAST_HOPS, &ttl, sizeof(ttl));

    local_addr6.sin6_family = AF_INET6;
    local_addr6.sin6_port = htons(1000);
    memcpy(local_addr6.sin6_addr.s6_addr, IP6_ADDR_ANY, 16);

    if (bind(sockfd, (const struct sockaddr *)&local_addr6, sizeof(local_addr6)) == -1) 
    {
        printf("Bind error\n");
        closesocket(sockfd);
        return;
    }

    memset(&server_addr6, 0, sizeof(server_addr6));
    server_addr6.sin6_family = AF_INET6;
    server_addr6.sin6_port = htons(MCAST_PORT);
    if(inet_pton(AF_INET6, MCAST_ADDR, &server_addr6.sin6_addr.s6_addr) != 1) 
    {
        printf("inet_pton() error\n");
        return ;
    }

    while (1) 
    {
        if (sendto(sockfd, send_data, strlen(send_data), 0, (struct sockaddr *)&server_addr6, sizeof(server_addr6)) < 0) 
        {
            printf("Sendto error\n");
            return;
        }
    }

    closesocket(sockfd);
}
#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(mtcastsend6, start multicast sending via ipv6);
#endif

