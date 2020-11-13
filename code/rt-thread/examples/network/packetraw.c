/**
 * Send an IPv4 UDP packet via raw socket at the link layer (ethernet frame).
 * Need to have destination MAC address.
 * Includes some UDP data.
 */
#include <stdio.h>         
#include <netdb.h>            
#include <sys/types.h>        
#include <sys/socket.h>       
#include <sys/select.h>
#include <netinet/in.h>       
#include <netinet/udp.h>      
#include <netinet/ip.h>
#include <arpa/inet.h>        
#include <net/if.h>
#include <unistd.h>
#include "posix/if_ether.h"
#include "dfs_posix.h"

#define SEV_PORT     555
#define ETH_HDRLEN   14  // Ethernet header length
#define IP4_HDRLEN   20  // IPv4 header length
#define UDP_HDRLEN   8   // UDP header length, excludes data
#define IP_MAXPACKET 1600

#define IP_LOCAL     "192.168.10.22"
#define IP_DEST      "192.168.10.66"

#define BUFSIZE      (1024*2)
static char sendbuf[BUFSIZE];
static char recvbuf[BUFSIZE];
static char buf[IP_MAXPACKET];

static void header_print(void)
{
    printf("pktrawtest ip port eth_name [select/bind]  - Link layer raw socket test\n");
    printf("                             select        - Call select()\n");
    printf("                             bind          - Call bind()\n");
}

// Checksum function
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

// Build IPv4 UDP pseudo-header and call checksum function.
uint16_t udp4_checksum(struct ip iphdr, struct udphdr udphdr, uint8_t *payload, int payloadlen)
{
    char *ptr;
    int   chksumlen = 0;
    int   i;
  
    ptr = &buf[0];  // ptr points to beginning of buffer buf
  
    // Copy source IP address into buf (32 bits)
    memcpy(ptr, &iphdr.ip_src.s_addr, sizeof(iphdr.ip_src.s_addr));
    ptr += sizeof(iphdr.ip_src.s_addr);
    chksumlen += sizeof(iphdr.ip_src.s_addr);
  
    // Copy destination IP address into buf (32 bits)
    memcpy(ptr, &iphdr.ip_dst.s_addr, sizeof(iphdr.ip_dst.s_addr));
    ptr += sizeof(iphdr.ip_dst.s_addr);
    chksumlen += sizeof(iphdr.ip_dst.s_addr);
  
    // Copy zero field to buf (8 bits)
    *ptr = 0; ptr++;
    chksumlen += 1;
  
    // Copy transport layer protocol to buf (8 bits)
    memcpy(ptr, &iphdr.ip_p, sizeof(iphdr.ip_p));
    ptr += sizeof(iphdr.ip_p);
    chksumlen += sizeof(iphdr.ip_p);
  
    // Copy UDP length to buf (16 bits)
    memcpy(ptr, &udphdr.len, sizeof(udphdr.len));
    ptr += sizeof(udphdr.len);
    chksumlen += sizeof(udphdr.len);
  
    // Copy UDP source port to buf (16 bits)
    memcpy(ptr, &udphdr.source, sizeof(udphdr.source));
    ptr += sizeof(udphdr.source);
    chksumlen += sizeof(udphdr.source);
  
    // Copy UDP destination port to buf (16 bits)
    memcpy(ptr, &udphdr.dest, sizeof(udphdr.dest));
    ptr += sizeof(udphdr.dest);
    chksumlen += sizeof(udphdr.dest);
  
    // Copy UDP length again to buf (16 bits)
    memcpy(ptr, &udphdr.len, sizeof(udphdr.len));
    ptr += sizeof(udphdr.len);
    chksumlen += sizeof(udphdr.len);
  
    // Copy UDP checksum to buf (16 bits)
    // Zero, since we don't know it yet
    *ptr = 0; ptr++;
    *ptr = 0; ptr++;
    chksumlen += 2;
  
    // Copy payload to buf
    memcpy(ptr, payload, payloadlen);
    ptr += payloadlen;
    chksumlen += payloadlen;
  
    // Pad to the next 16-bit boundary
    for (i = 0; i < payloadlen % 2; i++, ptr++) 
    {
        *ptr = 0;
        ptr++;
        chksumlen++;
    }
  
    return checksum((uint16_t *) buf, chksumlen);
}

// Allocate memory for an array of chars.
char *allocate_strmem(int len)
{
    void *tmp;
    
    if (len <= 0) 
    {
        perror("ERROR: Cannot allocate memory because len in allocate_strmem().\n");
        return NULL;
    }
    
    tmp = (char *)malloc(len * sizeof(char));
    if (tmp != NULL) 
    {
        memset(tmp, 0, len * sizeof(char));
        return (tmp);
    } 
    else 
    {
        perror("ERROR: Cannot allocate memory for array allocate_strmem().\n");
        return NULL;
    }
}

// Allocate memory for an array of unsigned chars.
uint8_t *allocate_ustrmem(int len)
{
    void *tmp;
    
    if (len <= 0) 
    {
        perror("ERROR: Cannot allocate memory because len in allocate_ustrmem().\n");
        return NULL;
    }
    
    tmp = (uint8_t *)malloc(len * sizeof(uint8_t));
    
    if (tmp != NULL) 
    {
        memset(tmp, 0, len * sizeof(uint8_t));
        return (tmp);
    } 
    else 
    {
        perror("ERROR: Cannot allocate memory for array allocate_ustrmem().\n");
        return NULL;
    }
}

// Allocate memory for an array of ints.
int *allocate_intmem(int len)
{
    void *tmp;
    
    if (len <= 0) 
    {
        perror("ERROR: Cannot allocate memory because len in allocate_intmem().\n");
        return NULL;
    }
    
    tmp = (int *)malloc(len * sizeof(int));
    
    if (tmp != NULL) 
    {
        memset(tmp, 0, len * sizeof(int));
        return (tmp);
    }
    else 
    {
        perror("ERROR: Cannot allocate memory for array allocate_intmem().\n");
        return NULL;
    }
}

int pktraw_rx(int socket, uint8 recv_api)
{
    int      res;
    uint32_t fromlen = sizeof(struct sockaddr_ll); 
    struct sockaddr_ll from;
    char   netif_name[IF_NAMESIZE];

    if (recv_api == 0) 
    {
        res = recvfrom(socket, recvbuf, BUFSIZE, 0, (struct sockaddr *)&from, (socklen_t *)&fromlen);
        if (res < 0) 
        {
            perror("raw_ll_rx recvfrom error!");
        }
        else 
        {
            if_indextoname(from.sll_ifindex, netif_name);
    
            printf("\nraw_ll_rx len = %d from %c%c\n", res, netif_name[0], netif_name[1]);
        }
    } 
    else 
    {
        res = recv(socket, recvbuf, BUFSIZE, 0);
        if (res < 0) 
        {
            perror("raw_ll_rx recvfrom error!");
        }
        else 
        {
            printf("\nraw_ll_rx len = %d\n", res);
        }
    }

    return res;
}

int pktrawtest(int argc, char **argv)
{
    char *if_name, *target, *src_ip, *dst_ip;
    int status, datalen, frame_length, sock, bytes, *ip_flags; 
    uint8_t *data, *src_mac, *dst_mac, *ether_frame;

    struct ifreq ifr;
    struct ip           iphdr;
    struct udphdr       udphdr;
    struct addrinfo     hints, *res;
    struct sockaddr_in *ipv4;
    struct sockaddr_ll  device;

    if (argc < 4) 
    {
        header_print();
        return -1;
    }

    // Allocate memory for various arrays.
    src_mac     = allocate_ustrmem(6);
    dst_mac     = allocate_ustrmem(6);
    data        = allocate_ustrmem(IP_MAXPACKET);
    if_name     = allocate_strmem(40);
    target      = allocate_strmem(40);
    src_ip      = allocate_strmem(INET_ADDRSTRLEN);
    dst_ip      = allocate_strmem(INET_ADDRSTRLEN);
    ip_flags    = allocate_intmem(4);
    ether_frame = (uint8_t *)sendbuf;

    // Interface to send packet through.
    strcpy(if_name, argv[3]);
    
    // Submit request for a socket descriptor to look up interface.
    if ((sock = socket (PF_PACKET, SOCK_RAW, htons(ETH_P_ALL))) < 0) 
    {
        perror("socket() failed to get socket descriptor for using ioctl() ");
        goto __exit;
    }

    // Use ioctl() to look up interface name and get its MAC address.
    memset(&ifr, 0, sizeof(ifr));
    snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s", if_name);
    if (ioctl(sock, SIOCGIFHWADDR, &ifr) < 0) 
    {
        perror("ioctl() failed to get source MAC address ");
        goto __exit;
    }

    // Copy source MAC address.
    memcpy(src_mac, ifr.ifr_hwaddr.sa_data, 6 * sizeof(uint8_t));

    printf ("MAC address for interface %s is ", if_name);
    printf ("%02x:%02x:%02x:%02x:%02x:%02x\n", src_mac[0], src_mac[1], src_mac[2], src_mac[3], src_mac[4], src_mac[5]);

    if (ioctl(sock, SIOCGIFADDR, &ifr) < 0) 
    {
        perror("ioctl() failed to get source IP address ");
        goto __exit;
    }

    // Source IPv4 address: you need to fill this out
    strcpy(src_ip, inet_ntoa(((struct sockaddr_in*)&ifr.ifr_addr)->sin_addr));
    printf ("IP for interface %s is %s\n", if_name, src_ip);

    close(sock);
    sock = -1;

    // Find interface index from interface name and store index in
    // struct sockaddr_ll device, which will be used as an argument of sendto().
    // Fill out sockaddr_ll.
    memset(&device, 0, sizeof(device));
    if ((device.sll_ifindex = if_nametoindex(if_name)) == 0) 
    {
        perror("if_nametoindex() failed to obtain interface index ");
        goto __exit;
    }

    device.sll_family = AF_PACKET;
    memcpy(device.sll_addr, src_mac, 6 * sizeof(uint8_t));
    device.sll_halen = htons(6);

    printf ("Index for interface %s is %d\n", if_name, device.sll_ifindex);

    // Set destination MAC address: you need to fill these out
    dst_mac[0] = 0xff;
    dst_mac[1] = 0xff;
    dst_mac[2] = 0xff;
    dst_mac[3] = 0xff;
    dst_mac[4] = 0xff;
    dst_mac[5] = 0xff;
    
    // Destination URL or IPv4 address: you need to fill this out
    strcpy(target, argv[1]);
    
    // Fill out hints for getaddrinfo().
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family   = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags    = hints.ai_flags | AI_CANONNAME;
    
    // Resolve target using getaddrinfo().
    if ((status = getaddrinfo(target, NULL, &hints, &res)) != 0) 
    {
        perror("getaddrinfo() failed\n");
        goto __exit;
    }
    
    ipv4 = (struct sockaddr_in *)res->ai_addr;
    
    if (inet_ntop(AF_INET, &(ipv4->sin_addr), dst_ip, INET_ADDRSTRLEN) == NULL) 
    {
        status = errno;
        perror("inet_ntop() failed.\nError message");
        goto __exit;
    }
    
    freeaddrinfo(res);
    
    // UDP data
    datalen = 1460;
    memset(data, '1', datalen);
    
    // IPv4 header
    // IPv4 header length (4 bits): Number of 32-bit words in header = 5
    iphdr.ip_hl = IP4_HDRLEN / sizeof (uint32);//(4 << 4) | (IP4_HDRLEN / sizeof (uint32));
    
    // Internet Protocol version (4 bits): IPv4
    iphdr.ip_v = 4;
    
    // Type of service (8 bits)
    iphdr.ip_tos = 0;
    
    // Total length of datagram (16 bits): IP header + UDP header + datalen
    iphdr.ip_len = htons(IP4_HDRLEN + UDP_HDRLEN + datalen);
    
    // ID sequence number (16 bits): unused, since single datagram
    //////iphdr.ip_id = htons (0x2e20+temp_i);
    iphdr.ip_id = htons(0);   //the ip_id can be constant or variable 
    
    // Flags, and Fragmentation offset (3, 13 bits): 0 since single datagram
    // Zero (1 bit)
    ip_flags[0] = 0;
    
    // Do not fragment flag (1 bit)
    ip_flags[1] = 1;
    
    // More fragments following flag (1 bit)
    ip_flags[2] = 0;
    
    // Fragmentation offset (13 bits)
    ip_flags[3] = 0;
    
    iphdr.ip_off = htons((ip_flags[0] << 15)
                       + (ip_flags[1] << 14)
                       + (ip_flags[2] << 13)
                       +  ip_flags[3]);
    
    // Time-to-Live (8 bits): default to maximum value
    iphdr.ip_ttl = 64;
    
    // Transport layer protocol (8 bits): 17 for UDP
    iphdr.ip_p = IPPROTO_UDP;
    
    // Source IPv4 address (32 bits)
    if (inet_pton(AF_INET, src_ip, &(iphdr.ip_src)) != 1) 
    {
        perror("inet_pton() failed.\nError message");
        goto __exit;
    }
    
    // Destination IPv4 address (32 bits)
    if (inet_pton(AF_INET, dst_ip, &(iphdr.ip_dst)) != 1) 
    {
        perror("inet_pton() failed.\nError message");
        goto __exit;
    }
    
    // IPv4 header checksum (16 bits): set to 0 when calculating checksum
    iphdr.ip_sum = 0;
    iphdr.ip_sum = checksum((uint16_t *) &iphdr, IP4_HDRLEN);
    
    // UDP header
    // Source port number (16 bits): pick a number
    udphdr.source = htons(40622);
    
    // Destination port number (16 bits): pick a number
    udphdr.dest = htons(atol(argv[2]));
    
    // Length of UDP datagram (16 bits): UDP header + UDP data
    udphdr.len = htons(UDP_HDRLEN + datalen);
    
    // UDP checksum (16 bits)
    udphdr.check = udp4_checksum(iphdr, udphdr, data, datalen);
    
    // Fill out ethernet frame header.
    // Ethernet frame length = ethernet header (MAC + MAC + ethernet type) + 
    //                         ethernet data (IP header + UDP header + UDP data)
    frame_length = 6 + 6 + 2 + IP4_HDRLEN + UDP_HDRLEN + datalen;
    
    
    // Destination and Source MAC addresses
    memcpy (ether_frame, dst_mac, 6 * sizeof(uint8));
    
    memcpy (ether_frame + 6, src_mac, 6 * sizeof(uint8));
    
    // Next is ethernet type code (ETH_P_IP for IPv4).
    // http://www.iana.org/assignments/ethernet-numbers
    ether_frame[12] = ETH_P_IP / 256;
    ether_frame[13] = ETH_P_IP % 256;
    
    // Next is ethernet frame data (IPv4 header + UDP header + UDP data).
    // IPv4 header
    memcpy(ether_frame + ETH_HDRLEN, &iphdr, IP4_HDRLEN * sizeof (uint8));
    
    // UDP header
    memcpy(ether_frame + ETH_HDRLEN + IP4_HDRLEN, &udphdr, UDP_HDRLEN * sizeof (uint8));
    
    // UDP data
    memcpy(ether_frame + ETH_HDRLEN + IP4_HDRLEN + UDP_HDRLEN, data, datalen * sizeof (uint8));
    
    // Submit request for a raw socket descriptor.
    if ((sock = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_ALL))) < 0) 
    {
       perror("socket() failed ");
       goto __exit;
    }

    // User cmd
    if (argc == 4)
    {
        while (getchar() != 'q')
        {
            /* tx test */
            if ((bytes = sendto(sock, ether_frame, frame_length, 0, (struct sockaddr *)&device, sizeof(device))) <= 0) 
            {
                perror("sendto() failed");
                goto __exit;
            }

            #if 0
            //can't use send() as it can't specify which net interface to be used
            if ((bytes = send(sock, ether_frame, frame_length, 0)) <= 0) 
            {
                perror("send() failed");
                return -1;
            }
            #endif

            /* rx test */
            pktraw_rx(sock, 0);
        }
    }  
    else if (strcmp(argv[4], "bind") == 0) 
    {
        if (bind(sock, (struct sockaddr *)&device, sizeof(device)) < 0) 
        {
           perror("bind() failed ");
           goto __exit;
        }
    
        while (getchar() != 'q') 
        {
            /* tx test */
            if ((bytes = send(sock, ether_frame, frame_length, 0)) <= 0) 
            {
                perror("sendto() failed");
                goto __exit;
            }
            
            /* rx test */
            pktraw_rx(sock, 0);
        }
    } 
    else if (strcmp(argv[4], "select") == 0) 
    {
        fd_set readset, writeset, excepttset;
        struct timeval timeout;
        
        while (getchar() != 'q') 
        {
            /* tx test */
            if ((bytes = sendto(sock, ether_frame, frame_length, 0, (struct sockaddr *)&device, sizeof(device))) <= 0) 
            {
                perror("sendto() failed");
                goto __exit;
            }
            
            FD_ZERO(&readset);
            FD_ZERO(&writeset);
            FD_ZERO(&excepttset);
            FD_SET(sock, &readset);
            
            timeout.tv_sec  = 10;
            timeout.tv_usec = 0;
            printf("select() startup! tick=%ld\n", rt_tick_get() * (1000/RT_TICK_PER_SECOND));  
            if ((status = select(sock+1, &readset, &writeset, &excepttset, &timeout)) < 0) 
            {
                perror("select() failed!");
                goto __exit;
            } 
            else if (status == 0) 
            {
                printf("select() timeout! tick=%ld\n", rt_tick_get() * (1000/RT_TICK_PER_SECOND));            
            } 
            else if (status > 0) 
            {      
                pktraw_rx(sock, 0);
                printf("select() readed! tick=%ld\n", rt_tick_get() * (1000/RT_TICK_PER_SECOND));            
            }
        }
    }
    else 
    {
        header_print();
    }

__exit:
    // Close socket descriptor.
    if (sock != -1)
        close(sock);

    // Free allocated memory.
    free(src_mac);
    free(dst_mac);
    free(data);
    free(if_name);
    free(target);
    free(src_ip);
    free(dst_ip);
    free(ip_flags);
    
    return 0;
}

#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(pktrawtest, startup AP_PACKET raw socket);
#endif

