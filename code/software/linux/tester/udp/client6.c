#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

#define SERVER_ADDR "4006:e024:680:c6e:200:eff:fe22:3456" 
#define SERVER_PORT 10012
#define BUF_SIZE    1024

#define ERR_EXIT(m) \
   do \
   { \
       perror(m); \
       exit(EXIT_FAILURE); \
   } while(0)

static const char text[]="This is Ubuntu UDP client!";
static void echo_cli(int sock)
{
    char recvbuf[BUF_SIZE] = {0};
    struct sockaddr_in6 servaddr;

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin6_family = AF_INET6;
    servaddr.sin6_port = htons(SERVER_PORT);
    //servaddr.sin6_addr.s6_addr = inet6_addr(SERVER_ADDR);
    inet_pton(AF_INET6, SERVER_ADDR, &servaddr.sin6_addr.s6_addr);

    while (1)
    {   
        sendto(sock, text, strlen(text), 0, (struct sockaddr *)&servaddr, sizeof(servaddr));
        usleep(1000);
    }

    close(sock);
}

 

int main(void)
{
    int sock;

    if ((sock = socket(PF_INET6, SOCK_DGRAM, 0)) < 0)
        ERR_EXIT("socket");

    echo_cli(sock);

    return 0;
}
