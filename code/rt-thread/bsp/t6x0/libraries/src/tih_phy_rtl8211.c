/**
 * (C) Copyright 2019 TIH Microelectronic
 * Rison Wung <zhongxiao.wang@tihchip.com>
 */

#include <phy.h>
#include <phy_rtl8211_hw.h>
#include <gmac.h>

int32 rtl8211_phy_speed_duplex_change(uint32 gmac_id, duplex_t duplex, speed_t speed);

static int32 rtl8211_phy_auto_neo(uint32 gmac_id)
{
    uint16 tmp16;
    uint32 times;

    /* diable EEE*/
    gmac_phy_mmd_write16(gmac_id, 0x0007, RTL8211_REG_MMD_REGCR);
    gmac_phy_mmd_write16(gmac_id, 0x003C, RTL8211_REG_MMD_ADDAR);
    gmac_phy_mmd_write16(gmac_id, 0x4007, RTL8211_REG_MMD_REGCR);
    gmac_phy_mmd_write16(gmac_id, 0x0, RTL8211_REG_MMD_ADDAR);

    /* diable green energy */
    gmac_phy_mmd_write16(gmac_id, 0x0003, 31);
    gmac_phy_mmd_write16(gmac_id, 0x3246, 25);
    gmac_phy_mmd_write16(gmac_id, 0x0000, 31);

    tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_ANAR);
    tmp16 &= ~(1<<11);
    tmp16 |= (1<<10);
    gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_ANAR);
    
    /* restart Auto-neg */
    tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_BMCR);
    tmp16 |= (RTL8211_BMCR_RESTART_AUTO_NEG | RTL8211_BMCR_AUTO_NEG_EN);
    gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_BMCR);
    
    /* check for Auto-neg finished */
    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        for (uint32 i = 0; i < 100; i++) {};
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_BMCR);
    } while ((tmp16 & RTL8211_BMCR_RESTART_AUTO_NEG) > 0) ;
    
    return 0;
}

int32 rtl8211_phy_init(uint32 gmac_id)
{
    int32 ret;
    
    ret = rtl8211_phy_speed_duplex_change(gmac_id, DUPLEX_FULL, SPEED_AUTO);

    return ret;
}

uint32 rtl8211_phy_mmd_fre_get(uint32 gmac_id)
{
    /* MDC frequency period is 400ns */
    return 1000 * 1000 * 1000 / 400;
}

void rtl8211_phy_intr_enable(uint32 gmac_id, uint32 intr_src)
{
    gmac_phy_mmd_write16(gmac_id, 0x0, RTL8211_REG_INER);
    gmac_phy_mmd_write16(gmac_id, RTL8211_INSR_LINK_CHG, RTL8211_REG_INER);
 }
 
void rtl8211_phy_intr_disable(uint32 gmac_id, uint32 intr_src)
{
    uint16 value;

    /* set for copper */
    value = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_INER);
    value &= ~RTL8211_INSR_LINK_CHG;
    gmac_phy_mmd_write16(gmac_id, value, RTL8211_REG_INER);
}

uint32 rtl8211_phy_intr_status(uint32 gmac_id)
{
    uint16 isr;

    isr = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_INSR);

    return isr;
}

void rtl8211_phy_intr_clear(uint32 gmac_id, uint32 intr_src)
{
    /* read RTL8211_REG_INSR (0x13) to clear interrupt of phy */
    gmac_phy_mmd_read16(gmac_id, RTL8211_REG_INSR);
}

link_status_t __fast rtl8211_phy_link_status_get(uint32 gmac_id)
{
    uint16 value;
    link_status_t status;

    status.linked = FALSE;
    
    value = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_PHYSR);
    if (value != 0xFFFF) {
        if (value & RTL8211_PHYSR_LINK) {
            status.linked = TRUE;

            if (0 == RTL8211_PHYSR_DUPLEX(value)) {
                status.duplex = DUPLEX_HALF;
            } else {
                status.duplex = DUPLEX_FULL;
            }

            switch (RTL8211_PHYSR_SPEED(value)) {
                 case 0x2:
                     status.speed = SPEED_1000;
                     break;
                 case 0x1:
                     status.speed = SPEED_100;
                     break;
                 case 0x0:
                     status.speed = SPEED_10;
                     break;
                 default:
                     break;
            }
            
            return status;
        }
    }

    return status;
}

/**
 * Change advitisement to chage speed and duplex
 * 10/100 using register 4, 1000 using register 9
 */
int32 rtl8211_phy_speed_duplex_change(uint32 gmac_id, duplex_t duplex, speed_t speed)
{
    uint16 tmp16 = 0x0;
    int32 ret;

    /* turn off 1000Mbps capability */
    tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_1000_CR);
    tmp16 &= ~(RTL8211_1000_CR_HD | RTL8211_1000_CR_FD);
    gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_1000_CR);
    
    /* turn off 100Mbps and 10Mbps capability */
    tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_ANAR);
    tmp16 &= ~(RTL8211_ANAR_10_HD | RTL8211_ANAR_10_FD | RTL8211_ANAR_100_HD | RTL8211_ANAR_100_FD);
    gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_ANAR);
    
    if (SPEED_1000 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_1000_CR);
        
        if (DUPLEX_FULL == duplex) {
            tmp16 |= RTL8211_1000_CR_FD;
        }
        else if (DUPLEX_HALF == duplex) {
            tmp16 |= RTL8211_1000_CR_HD;
        }
        
        gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_1000_CR);
    } else if (SPEED_100 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_ANAR);
        if (DUPLEX_FULL == duplex) {
            tmp16 |= RTL8211_ANAR_100_FD;
        } else if (DUPLEX_HALF == duplex) {
            tmp16 |= RTL8211_ANAR_100_HD;
        }

        gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_ANAR);
    } else if (SPEED_10 == speed) {
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_ANAR);
        if (DUPLEX_FULL == duplex) {
            tmp16 |= RTL8211_ANAR_10_FD;
        } else if (DUPLEX_HALF == duplex) {
            tmp16 |= RTL8211_ANAR_10_HD;
        }
        
        gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_ANAR);
    } else {
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_1000_CR);
        tmp16 |= (RTL8211_1000_CR_FD | RTL8211_1000_CR_HD);
        gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_1000_CR);
        
        tmp16 = gmac_phy_mmd_read16(gmac_id, RTL8211_REG_ANAR);
        tmp16 |= (RTL8211_ANAR_10_HD | RTL8211_ANAR_10_FD | RTL8211_ANAR_100_HD | RTL8211_ANAR_100_FD);
        gmac_phy_mmd_write16(gmac_id, tmp16, RTL8211_REG_ANAR);
    }
    
    /* Restart auto negotiation */
    ret = rtl8211_phy_auto_neo(gmac_id);
    
    return ret;
}

/* PHY related functions */
const phy_ops_t rtl8211_phy_ops =
{
    rtl8211_phy_init,
    rtl8211_phy_mmd_fre_get,
    rtl8211_phy_intr_enable,
    rtl8211_phy_intr_disable,
    rtl8211_phy_intr_status,
    rtl8211_phy_intr_clear,
    rtl8211_phy_speed_duplex_change,
    rtl8211_phy_link_status_get,
};

