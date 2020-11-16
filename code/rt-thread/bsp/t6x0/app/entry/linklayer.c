
#include <rtthread.h>
#include <stdio.h>




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

#define BUFSIZE     512

static char sendbuf[BUFSIZE];
static char recvbuf[BUFSIZE];
static void entry_main(void) {
	
	printf("entry_main startting succeeded \n");
//	
//	int32_t sock;
//	sock = socket(PF_INET, SOCK_RAW, IPPROTO_ICMP);		
//	printf("sock %d \n", sock);
//	
//	
//	
//	while(1){		
//		bytes_read = recv(sock, recvbuf, BUFSIZE, 0);
//		
//		if (bytes_read > 0)  
//		{
//			data_print(recvbuf, bytes_read);
//		}		
//		rt_thread_delay(RT_TICK_PER_SECOND*10);
//	}
}