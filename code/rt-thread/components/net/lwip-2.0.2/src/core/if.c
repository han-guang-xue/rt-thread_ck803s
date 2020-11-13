#include "net/if.h"
#include "sys/types.h"
#include "lwip/netif.h"

/**
 * returns the index of the network interface corresponding to the name ifname.
 * on error, 0 is returned and errno is set appropriately.
 */
unsigned int if_nametoindex(const char *ifname)
{
    struct netif * net_if;

    if (ifname != NULL) {
        /* get netif by new name */
        net_if = netif_find_nonum(ifname);
        if (net_if != NULL) {
            return netif_get_index(net_if);
        }
    }

    return 0;
}

/**
 * returns the name of the network interface corresponding to the interface index ifindex. 
 * The name is placed in the buffer pointed to by ifname. The buffer must allow for the storage of 
 * at least IF_NAMESIZE bytes. 
 * on error, NULL is returned and errno is set appropriately. 
 */
char *if_indextoname(unsigned int if_index, char *ifname)
{
    struct netif *net_if;
    
    LWIP_DEBUGF(NETIF_DEBUG, ("try to find name of the netif with index=%d\n", if_index));
    net_if = netif_find_byindex(if_index);
    if (net_if != NULL) {
        if (ifname != NULL) {
            memcpy(ifname, net_if->name, IF_NAMESIZE);
        }
        return net_if->name;
    }

    return NULL;
}


