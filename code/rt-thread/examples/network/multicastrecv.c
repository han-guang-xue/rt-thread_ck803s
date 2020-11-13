#include <stdio.h>
#include <stdlib.h>  
#include <string.h>          
#include <sys/types.h>    
#include <sys/socket.h>     
#include <unistd.h>  
 
#define MCAST_PORT 8888
#define MCAST_ADDR "224.1.2.1"  
#define MCAST_INTERVAL 5          
#define BUF_SZ 256               

int mtcastrecv(int argc, char*argv[])
{  
    int s;    
    int err = -1;
    int addr_len = 0;
    char buff[BUF_SZ];
    int n = 0;
    struct sockaddr_in local_addr;             
   
    if (argc < 2) 
    {
        printf("Usage: mtcastclient COUNT\n");
        printf("Like: mtcastclient 100\n");
        return -1;
    }

    int times = strtoul(argv[1], 0, 10);

    s = socket(AF_INET, SOCK_DGRAM, 0);         
    if (s == -1)
    {
        perror("socket()");
        return -1;
    }   

    memset(&local_addr, 0, sizeof(local_addr));
    local_addr.sin_family = AF_INET;
    local_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    local_addr.sin_port = htons(MCAST_PORT);
   
    err = bind(s, (struct sockaddr*)&local_addr, sizeof(local_addr));
    if (err < 0)
    {
        perror("bind()");
        close(s);
        return -2;
    }
   
    int loop = 1;
    err = setsockopt(s, IPPROTO_IP, IP_MULTICAST_LOOP, &loop, sizeof(loop));
    if (err < 0)
    {
        perror("setsockopt():IP_MULTICAST_LOOP");
        close(s);
        return -3;
    }
   
    struct ip_mreq mreq;                                
    mreq.imr_multiaddr.s_addr = inet_addr(MCAST_ADDR);  
    mreq.imr_interface.s_addr = htonl(INADDR_ANY);      

    err = setsockopt(s, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq, sizeof(mreq));
    if (err < 0)
    {
        perror("setsockopt():IP_ADD_MEMBERSHIP");
        close(s);
        return -4;
    }

    for (uint32_t i = 0; i < times; i++)
    {
        addr_len = sizeof(local_addr);
        memset(buff, 0, BUF_SZ);                 

        n = recvfrom(s, buff, BUF_SZ, 0, (struct sockaddr*)&local_addr, (socklen_t *)&addr_len);
        if (n == -1)
        {
            perror("recvfrom()");
        }

        printf("Recv %dst message:%s\n", i, buff);
        //usleep(MCAST_INTERVAL);
    }

    err = setsockopt(s, IPPROTO_IP, IP_DROP_MEMBERSHIP, &mreq, sizeof(mreq));
       
    close(s);
    return 0;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(mtcastrecv, startup multicast client);
#endif
