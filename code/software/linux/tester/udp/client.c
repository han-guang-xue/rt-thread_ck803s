#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

#define SERVER_PORT 5000

static char* SERVERIP = "192.168.10.22";

#define ERR_EXIT(m) \
   do \
   { \
       perror(m); \
       exit(EXIT_FAILURE); \
   } while(0)

static void echo_cli(int sock, char *ip, char *port)
{
    char sendbuf[4500] = "This is UDP client from Ubuntu.";
    struct sockaddr_in servaddr;

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(atol(port));
    servaddr.sin_addr.s_addr = inet_addr(ip);

    while (1)
    {   
        sendto(sock, sendbuf, 100, 0, (struct sockaddr *)&servaddr, sizeof(servaddr));
        
        usleep(1000);
    }

    close(sock);
}

 

int main(int argc, char **argv)
{
    int sock;

    if (argc < 3)
    {
        printf("usage:%s ip port \n", argv[0]);
        exit(1);          
    }

    if ((sock = socket(PF_INET, SOCK_DGRAM, 0)) < 0)
        ERR_EXIT("socket");

    echo_cli(sock, argv[1], argv[2]);

    return 0;
}
