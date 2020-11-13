#include "netdb.h"
#include "stdio.h"
#include "stdlib.h"
#include "sys/socket.h"
#include "unistd.h"
#include "arpa/inet.h"
#include "string.h"
#include "memory.h"
#include "signal.h"
#include "time.h"

static int sockfd;
static char buffer[1500]; 

static void out_addr(struct sockaddr_in *clientaddr)
{
    int port = ntohs(clientaddr->sin_port);    
    char ip[16];

    memset(ip,0,sizeof(ip));
    inet_ntop(AF_INET, &clientaddr->sin_addr.s_addr, ip, sizeof(ip));
    printf("client:%s(%d)connected\n", ip, port);
}

static void do_service(int fd)
{  
    size_t size;

    if ((size = read(fd, buffer, sizeof(buffer))) < 0)
    {
        perror("read error");
    } 
    else 
    {
        if (write(STDOUT_FILENO, buffer, size) != size)
        {
            perror("show error");
        }
        printf("len = %ld\n", size);
    }
    
    long t = time(0);
    char *s  =ctime(&t);
    size = strlen(s) * sizeof(char);

    if (write(fd, s, size) != size)
    {
        perror("write error");
    }
}

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf("usage:%s #port\n", argv[0]);
        exit(1);
    }

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0){
        perror("socket error");
        exit(1);    
    }

    int val = 1;
    int ret = setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, (void *)&val, sizeof(int));
    if (ret == -1)
    {
        perror("setsockopt error");
        exit(1);
    }

    struct sockaddr_in localaddr;
    memset(&localaddr, 0, sizeof(localaddr));

    localaddr.sin_family = AF_INET;  //ipv4
    localaddr.sin_port = htons(atoi(argv[1]));
    localaddr.sin_addr.s_addr = INADDR_ANY;
    if (bind(sockfd, (struct sockaddr*)&localaddr, sizeof(localaddr)) < 0)
    {
        perror("bind error");
        exit(1);
    }

    if (listen(sockfd, 10) < 0)
    {
        perror("listen error");
    }
    
    struct sockaddr_in clientaddr;
    socklen_t clientaddr_len = sizeof(clientaddr);
    while (1) 
    {
        int fd = accept(sockfd, (struct sockaddr*)&clientaddr, &clientaddr_len);
        if (fd < 0) {
            perror("accept error");
            continue;
        }
        
        out_addr(&clientaddr);

        long t = time(0);
        char *s = ctime(&t);
        size_t size = strlen(s) * sizeof(char);
        if (write(fd, s, size) != size)
        {
            perror("write error");
        }

        while (1) {
            do_service(fd);
        }
        
        close(fd);
    }
    
    close(sockfd);
    return 0;
}
