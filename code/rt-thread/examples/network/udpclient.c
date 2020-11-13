#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

static char send_data[100] = "This is UDP Client from RT-Thread.\n"; 
static char recv_data[100]; 
void udpclient(int argc, char **argv)
{
    int sock, port, count;
    struct hostent *host;
    struct sockaddr_in server_addr;
    const char *url;
    uint32_t bytes_received;

    if (argc < 3) 
    {
        printf("Usage: udpclient URL PORT [COUNT = 10]\n");
        printf("Like: udpclient 192.168.12.44 5000 100\n");
        return;
    }
    
    url = argv[1];
    port = strtoul(argv[2], 0, 10);
    
    if (argc > 3)
        count = strtoul(argv[3], 0, 10);
    else
        count = 10;

    host = (struct hostent *) gethostbyname(url);

    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr = *((struct in_addr *)host->h_addr);
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    while (count) 
    {
        sendto(sock, send_data, strlen(send_data), 0, (struct sockaddr *)&server_addr, sizeof(struct sockaddr));

        bytes_received = recv(sock, recv_data, sizeof(recv_data), 0);
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

        printf("RECEIVED DATA = %s \n", recv_data);

        count --;
    }

    closesocket(sock);
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(udpclient, startup udp client);
#endif
