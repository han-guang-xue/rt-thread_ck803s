#ifndef __PHY_H__
#define __PHY_H__

#include <sysdep.h>

typedef enum {
    SPEED_1000 = 0,
    SPEED_100  = 1,
    SPEED_10   = 2,
    SPEED_AUTO = 3
}speed_t;

typedef enum {
    DUPLEX_FULL = 0,
    DUPLEX_HALF = 1
}duplex_t;

typedef struct {
    bool     linked;
    duplex_t duplex;
    speed_t  speed;
}link_status_t;

typedef struct {
    /* control functions */
    int32         (*phy_init)(uint32 gmac_id);
    uint32        (*phy_mmd_max_fre_get)(uint32 gmac_id);
    void          (*phy_intr_enable)(uint32 gmac_id, uint32 intr_src);
    void          (*phy_intr_disable)(uint32 gmac_id, uint32 intr_src);
    uint32        (*phy_intr_status)(uint32 gmac_id);
    void          (*phy_intr_clear)(uint32 gmac_id, uint32 intr_src);
    int           (*phy_speed_duplex_change)(uint32 gmac_id, duplex_t duplex, speed_t speed);
    link_status_t (*phy_link_status_get)(uint32 gmac_id);
} phy_ops_t;

extern const phy_ops_t rtl8211_phy_ops;
extern const phy_ops_t m88e1512_phy_ops;
#endif

