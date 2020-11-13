#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define BUFSZ   (1024*2)

static void udpserver(int argc, char **argv)
{
    int sock;
    int bytes_read;
    char *recv_data;
    socklen_t addr_len;
    struct sockaddr_in server_addr, client_addr;

    if (argc < 2) 
    {
        printf("Usage: %s PORT\n", argv[0]);
        printf("Like: %s 5000\n", argv[0]);
        return;
    }

    recv_data = rt_malloc(BUFSZ);
    if (recv_data == RT_NULL) 
    {
        printf("No memory\n");
        return;
    }

    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");

        rt_free(recv_data);
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(atol(argv[1]));
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) 
    {
        printf("Bind error\n");
        goto __exit;
    }

    addr_len = sizeof(struct sockaddr);
    printf("UDPServer Waiting for client on port %s...\n", argv[1]);

    while (getchar() != 'q') 
    {
        bytes_read = recvfrom(sock, recv_data, BUFSZ - 1, 0, (struct sockaddr *)&client_addr, &addr_len);

        recv_data[bytes_read] = '\0'; 
        printf("RECEIVED DATA = %s\n", recv_data);
    }

__exit:
    closesocket(sock);
    rt_free(recv_data);

    return;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(udpserver, startup udp server);
#endif
