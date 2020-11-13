#include "netdb.h"
#include "sys/socket.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "memory.h"
#include "unistd.h"
#include <arpa/inet.h>

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        printf("usage:%s ip port \n", argv[0]);
        exit(1);          
    }
    
    int sockfd = socket(AF_INET,SOCK_STREAM, 0);
    if (sockfd < 0)
    {
        perror("socket error");
        exit(1);
    }    
    
    struct sockaddr_in serveraddr;
    memset(&serveraddr, 0, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    serveraddr.sin_port = htons(atoi(argv[2]));
    
    inet_pton(AF_INET, argv[1], &serveraddr.sin_addr.s_addr);
    
    if (connect(sockfd, (struct sockaddr*)&serveraddr, sizeof(serveraddr)) < 0)
    {
        perror("connect error");
        exit(1);
    }
    
    char buffer[1024];
    memset(buffer, 0, sizeof(buffer));
    size_t size;
    
    while (1)
    {
        if ((size = read(sockfd, buffer, sizeof(buffer))) <= 0)
        {
            perror("read error");
        }
        else
            printf("recv = %s\n", buffer);
    
        if (write(sockfd, buffer, size) != size)
        {
            perror("write error");
        }
    }
}

