#include <stdio.h>
#include <stdlib.h>
#include <string.h>           
#include <netdb.h>            
#include <sys/socket.h>  
#include <sys/select.h> 
#include <netinet/in.h>       
#include <netinet/udp.h>      
#include <netinet/ip_icmp.h>
#include <arpa/inet.h>        
#include <errno.h>           

#define BUFSIZE     512

static char sendbuf[BUFSIZE];
static char recvbuf[BUFSIZE];

static void data_print(char *data, uint32_t len)
{
    uint32_t i;

    printf("print len = %d\n", len);
    for (i = 0; i < len; i++) 
    {
        printf("%02x ", data[i]);
    }
    printf("\n");
}

static uint16_t checksum(uint16_t *addr, int len)
{
    int nleft = len;
    int sum = 0;
    uint16_t *w = addr;
    uint16_t answer = 0;
    
    while (nleft > 1) 
    {
        sum += *w++;
        nleft -= sizeof(uint16_t);
    }
    
    if (nleft == 1) 
    {
        *(uint8_t *)(&answer) = *(uint8_t *) w;
        sum += answer;
    }
    
    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    answer = ~sum;
    
    return (answer);
}

int iprawtest(int argc, char **argv)
{
    int ret;
    uint8_t len;
    uint8_t count;
    int32_t sock;
    uint32_t bytes_read;
    const char *url;
    struct icmp *icmp;
    struct addrinfo hints, *res;

    if (argc < 4) 
    {
        printf("Usage: iprawtest URL COUNT API_TYPE\n");
        printf("Like: iprawtest 192.168.12.44 100 select\n");
        return 0;
    }

    /* Destination URL or IPv4 address: you need to fill this out */
    url = argv[1];
    
    count = strtoul(argv[2], 0, 10);

    /* Fill out hints for getaddrinfo(). */
    memset(&hints, 0, sizeof (struct addrinfo));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = hints.ai_flags | AI_CANONNAME;
    
    /* Resolve target using getaddrinfo(). */
    if (getaddrinfo(url, NULL, &hints, &res) != 0) 
    {
        perror("getaddrinfo() failed\n");
        return -1;
    }

    memset(sendbuf, 0, sizeof(sendbuf));
    icmp = (struct icmp *)sendbuf;
    icmp->icmp_type  = ICMP_ECHO;
    icmp->icmp_code  = 0;
    icmp->icmp_id    = 0;
    icmp->icmp_seq = 0;
    
    len = 8;
    icmp->icmp_cksum = checksum((uint16 *)icmp, len);
    /* Submit request for a raw socket descriptor. */
    if ((sock = socket(PF_INET, SOCK_RAW, IPPROTO_ICMP)) < 0) 
    {
        perror("socket() failed ");
        /* Free allocated memory. */
        freeaddrinfo(res);

        return -1;
    }

    //prio = RT_LWIP_ETHTHREAD_PRIORITY;
    //rt_thread_control(rt_thread_self(), RT_THREAD_CTRL_CHANGE_PRIORITY, (void *)&prio);

    /* Send ethernet frame to socket. */
    while (count--) 
    {
        if (sendto(sock, sendbuf, len, 0, (struct sockaddr *)res->ai_addr, res->ai_addrlen) <= 0) 
        {
            perror ("sendto() failed");
            ret =  -1;
            goto err;
        }

        if (strcmp(argv[3], "recv") == 0)
        {
            bytes_read = recv(sock, recvbuf, BUFSIZE, 0);
            if (bytes_read > 0)  
            {
                data_print(recvbuf, bytes_read);
            }
        }
        else if (strcmp(argv[3], "recvfrom") == 0)
        {
            struct sockaddr_in server_addr;
            socklen_t len = sizeof(struct sockaddr);
            bytes_read = recvfrom(sock, recvbuf, BUFSIZE, 0, (struct sockaddr *)&server_addr, &len);
            if (bytes_read > 0)  
            {
                data_print(recvbuf, bytes_read);
            }
        }
        else if (strcmp(argv[3], "select") == 0)
        {
            fd_set readset, writeset, excepttset;
            struct timeval timeout;
            int status;
            
            FD_ZERO(&readset);
            FD_ZERO(&writeset);
            FD_ZERO(&excepttset);
            FD_SET(sock, &readset);
            
            timeout.tv_sec = 1;
            timeout.tv_usec = 0;
            printf("select() startup! tick=%ld\n", rt_tick_get() * (1000/RT_TICK_PER_SECOND));  
            if ((status = select(sock+1, &readset, &writeset, &excepttset, &timeout)) < 0) 
            {
                perror("select() failed!");
                ret =  -1;
                goto err;
            } 
            else if (status == 0) 
            {
                printf("select() timeout! tick=%ld\n", rt_tick_get() * (1000/RT_TICK_PER_SECOND)); 
            } 
            else if (status >0) 
            {   
                bytes_read = recv(sock, recvbuf, BUFSIZE, 0);
                if (bytes_read > 0)  
                {
                    data_print(recvbuf, bytes_read);
                }
            }
        }

        rt_thread_mdelay(1000);
    }

    ret = 0;

    err:
    /* Close socket. */
    closesocket(sock);
    
    /* Free allocated memory. */
    freeaddrinfo(res);

    return ret;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(iprawtest, startup AP_INET raw socket);
#endif


