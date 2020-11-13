#include "netdb.h"
#include "sys/socket.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "memory.h"
#include "unistd.h"
#include <arpa/inet.h>

#define SERVER_ADDR "4006:e024:680:c6e:200:eff:fe22:3456" 
#define SERVER_PORT 10001

static const char text[] = "This is Ubuntu TCP client!\n";

int main(int argc, char *argv[])
{
    int sockfd = socket(AF_INET6, SOCK_STREAM, 0);
    if (sockfd < 0)
    {
        perror("socket error");
        exit(1);
    }    
    
    struct sockaddr_in6 serveraddr;
    memset(&serveraddr, 0, sizeof(serveraddr));
    serveraddr.sin6_family = AF_INET6;
    serveraddr.sin6_port = htons(SERVER_PORT);
  
    inet_pton(AF_INET6, SERVER_ADDR, &serveraddr.sin6_addr.s6_addr);
 
    if (connect(sockfd, (struct sockaddr*)&serveraddr, sizeof(serveraddr)) < 0)
    {
        perror("connect error");
        exit(1);
    }

    char buffer[1024];
    memset(buffer, 0, sizeof(buffer));
    size_t size;
    
    while(1)
    {
        if ((size = read(sockfd, buffer, sizeof(buffer))) < 0)
        {
            perror("read error");
        }
    
        if (write(STDOUT_FILENO, buffer, size) != size)
        {
           perror("show error");
        }

        if (write(sockfd, text, strlen(text)) != strlen(text))
        {
            perror("write error");
        }
    }
}

