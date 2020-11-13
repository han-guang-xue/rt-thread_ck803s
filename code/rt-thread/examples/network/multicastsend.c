#include <stdio.h>
#include <stdlib.h>  
#include <string.h>          
#include <sys/types.h>    
#include <sys/socket.h>     
 
#define MCAST_PORT 8888
#define MCAST_ADDR "224.0.5.100"          //一个局部连接多播地址，路由器不进行转发
#define MCAST_DATA "BROADCAST TEST DATA"  //多播发送的数据
#define MCAST_INTERVAL 5                  //发送间隔时间

int mtcastsend(int argc, char*argv)
{
    int s;
    struct sockaddr_in mcast_addr; 

    s = socket(AF_INET, SOCK_DGRAM, 0);         
    if (s == -1)
    {
        perror("socket()");
        return -1;
    }

    uint8_t ttl = 255;
    setsockopt(s, IPPROTO_IP, IP_MULTICAST_TTL, &ttl, sizeof(ttl));

    memset(&mcast_addr, 0, sizeof(mcast_addr));   
    mcast_addr.sin_family = AF_INET;               
    mcast_addr.sin_addr.s_addr = inet_addr(MCAST_ADDR);
    mcast_addr.sin_port = htons(MCAST_PORT);           
   
    /* 向多播地址发送数据 */
    while(1) {
        int n = sendto(s, MCAST_DATA, strlen(MCAST_DATA), 0, (struct sockaddr*)&mcast_addr, sizeof(mcast_addr));
        if (n < 0)
        {
            perror("sendto()");
            return -2;
        }      
       
        //sleep(MCAST_INTERVAL);                      
    }
   
    return 0;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(mtcastsend, startup multicast server);
#endif
