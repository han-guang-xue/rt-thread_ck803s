#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

#define BUFSZ   1460

static char send_data[BUFSZ] = "This is TCP Client from RT-Thread."; 
void __fast tcptxperf(int argc, char **argv)
{
    int ret;
    int port;
    int sock;
    const char *url;
    struct hostent *host;
    struct sockaddr_in server_addr;

    if (argc < 3) 
    {
        printf("Usage: tcptxperf URL PORT\n");
        printf("Like: tcptxperf 192.168.12.44 5000\n");
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

    memset(send_data, 0x01, sizeof(send_data));

    while (1) 
    {
        ret = send(sock, send_data, BUFSZ, 0);
        if (ret < 0) 
        {
            printf("\nsend error,close the socket.\r\n");
            closesocket(sock);
            break;
        } 
        else if (ret == 0) 
        {
            printf("\n Send warning,send function return 0.\r\n");
        }
    }

    return;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(tcptxperf,startup tcp client for tx performance);
#endif
