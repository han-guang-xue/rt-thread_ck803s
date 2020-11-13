#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h>
#include <net/if.h>
#include <unistd.h>

#define SERV_PORT 8888
#define BUF_SIZE  1024
#define MCAST_ADDR "FF02::1"

void mtcastrecv6(int argc, char*argv[])
{
    int sockfd;
    int bytes_read;
    char *recv_data;
    struct sockaddr_in6 server_addr6;
    struct sockaddr_in6 client_addr6;
    uint32_t addr_len;
    int err = -1;

    int times = strtoul(argv[1], 0, 10);

    if (argc < 2) 
    {
        printf("Usage: mtcastrecv6 COUNT\n");
        printf("Like: mtcastrecv6 100\n");
        return;
    }

    recv_data = rt_malloc(BUF_SIZE);
    if (recv_data == NULL) 
    {
        printf("No memory\n");
        return;
    }

    if ((sockfd = socket(AF_INET6, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        rt_free(recv_data);
        return;
    }

    server_addr6.sin6_family = AF_INET6;
    server_addr6.sin6_port = htons(SERV_PORT);
    memcpy(server_addr6.sin6_addr.s6_addr, IP6_ADDR_ANY, 16);

    if (bind(sockfd, (struct sockaddr *)&server_addr6, sizeof(server_addr6)) == -1) 
    {
        printf("Bind error\n");
        closesocket(sockfd);
        rt_free(recv_data);
        return;
    }
    sprintf(recv_data, "%4d", SERV_PORT);
    printf("UDPServer Waiting for client on port %s...\n", recv_data);

    struct ipv6_mreq mreq;
    inet_pton(AF_INET6, MCAST_ADDR, &mreq.ipv6mr_multiaddr);
    mreq.ipv6mr_interface = if_nametoindex("e1");

    /* 将本机加入多播组 */
    err = setsockopt(sockfd, IPPROTO_IPV6, IPV6_JOIN_GROUP, &mreq, sizeof(mreq));
    if (err < 0)
    {
        perror("setsockopt():IP_ADD_MEMBERSHIP");
        close(sockfd);
        return;
    }

    addr_len = sizeof(struct sockaddr);

    /* 循环接收多播组的消息 */
    for (uint32_t i = 0; i < times; i++)
    {
        bytes_read = recvfrom(sockfd, recv_data, BUF_SIZE - 1, 0, (struct sockaddr *)&client_addr6, (socklen_t *)&addr_len);

        recv_data[bytes_read] = '\0'; 
        printf("RECEIVED DATA = %s\n", recv_data);
    }

    /* 退出多播组 */
    err = setsockopt(sockfd, IPPROTO_IPV6, IPV6_LEAVE_GROUP, &mreq, sizeof(mreq));

    closesocket(sockfd);
    rt_free(recv_data);

    return;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(mtcastrecv6, startup multicast receiving via ipv6);
#endif

