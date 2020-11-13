#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<errno.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>
#include <arpa/inet.h>

#define MYPORT 8080
#define ERR_EXIT(m) \
    do { \
        perror(m); \
        exit(EXIT_FAILURE); \
    } while (0)

static void echo_ser(int sock)
{
    int n;
    char sendbuf[] = "This is UDP server from Ubuntu";
    char recvbuf[2000] = {0};
    struct sockaddr_in peeraddr;
    socklen_t peerlen;

    while (1)
    {      
        peerlen = sizeof(peeraddr);
        memset(recvbuf, 0, sizeof(recvbuf));

        n = recvfrom(sock, recvbuf, sizeof(recvbuf), 0, (struct sockaddr *)&peeraddr, &peerlen);
        if (n <= 0)
        {
            if (errno == EINTR)
            {
                continue;
            }
            ERR_EXIT("recvfrom error");
        }
        else if (n > 0)
        {
            if (write(STDOUT_FILENO, recvbuf, n) != n)
            {
                perror("show error");
            }

            sendto(sock, sendbuf, strlen(sendbuf), 0, (struct sockaddr *)&peeraddr, peerlen);
        }
    }

    close(sock);
}


int main(int argc, char *argv[])
{
    int sock;
    struct sockaddr_in localaddr;

	if (argc < 2)
    {
    	printf("usage:%s #port\n", argv[0]);
    	exit(1);
    }

    if ((sock = socket(PF_INET, SOCK_DGRAM, 0)) < 0)
        ERR_EXIT("socket error");
 
    memset(&localaddr, 0, sizeof(localaddr));

    localaddr.sin_family = AF_INET;
    localaddr.sin_port = htons(atol(argv[1]));
    localaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    if (bind(sock, (struct sockaddr *)&localaddr, sizeof(localaddr)) < 0)
    {   
        close(sock);
        ERR_EXIT("bind error");
    }   

    printf("Listening port: %s\n", argv[1]);

    echo_ser(sock);

    return 0;
}
