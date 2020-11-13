#include <stdio.h>
#include <rtthread.h>
#include <sys/socket.h> 
#include "netdb.h"

char __exdata send_data[1460*2]; 

void __fast udptxperf(int argc, char **argv)
{
    int32_t  sock, port;
    int32_t  ret;
    uint32_t len;
    const char *url;
    struct hostent *host;
    struct sockaddr_in server_addr;

    if (argc < 4) 
    {
        printf("Usage: udptxperf URL PORT SIZE\n");
        printf("Like: udptxperf 192.168.12.44 5000 1024\n");
        return ;
    }
    
    url  = argv[1];
    port = strtoul(argv[2], 0, 10);
    len  = strtoul(argv[3], 0, 10);

    host = (struct hostent *)gethostbyname(url);

    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) 
    {
        printf("Socket error\n");
        return;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);
    server_addr.sin_addr = *((struct in_addr *)host->h_addr);
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    memset(send_data, 0x01, sizeof(send_data));

    while (1) 
    {
        ret = sendto(sock, send_data, len, 0, (struct sockaddr *)&server_addr, sizeof(struct sockaddr));
        if (ret < 0) 
        {
            //rt_kprintf("Error sendto\n");
            //closesocket(sock);
            //return;
        }
    }

    closesocket(sock);
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(udptxperf, startup udp client for TX performance);
#endif
