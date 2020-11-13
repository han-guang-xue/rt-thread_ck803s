#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<errno.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>
#include <arpa/inet.h>

#define MYPORT 10011
#define ERR_EXIT(m) \
    do { \
        perror(m); \
        exit(EXIT_FAILURE); \
    } while (0)

const char text[] = "This is from Ubuntu UDP server!";
void echo_ser(int sock)
{

    int n;
    char recvbuf[2000] = {0};

    struct sockaddr_in6 peeraddr;
    socklen_t peerlen;

    while (1)
    {      
        n = recvfrom(sock, recvbuf, sizeof(recvbuf), 0, (struct sockaddr *)&peeraddr, &peerlen);
        if (n <= 0)
        {
            if (errno == EINTR)
            {
                continue;
            }
        }
        else if (n > 0)
        {
            if (write(STDOUT_FILENO, recvbuf, n) != n)
            {
                perror("show error");
            }
            printf("len = %d\n", n);

            sendto(sock, text, strlen(text), 0, (struct sockaddr *)&peeraddr, peerlen);
        }
    }

    close(sock);
}


int main(void)
{
    int sock;
    struct sockaddr_in6 servaddr;

    if ((sock = socket(PF_INET6, SOCK_DGRAM, 0)) < 0)
    {
        ERR_EXIT("socket error");
    }

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin6_family = AF_INET6;
    servaddr.sin6_port = htons(MYPORT);
    servaddr.sin6_addr = in6addr_any;
    if (bind(sock, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0)
    {
        ERR_EXIT("bind error");  
    } 

    printf("Listening port: %d\n", MYPORT);

    echo_ser(sock);

    return 0;
}
