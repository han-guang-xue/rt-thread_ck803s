/**
 * (C) Copyright 2018 TIH Microelectronic
 * Rison Wung <zhongxiao.wang@tihchip.com>
 */

#include <phy.h>
#include <phy_m88e1512_hw.h>
#include <gmac.h>

int32 marvell_phy_init(uint32 gmac_id)
{
    uint16 value = 0x0;
    uint32 times;

    /* Perefer COPPER for debug */
    gmac_phy_mmd_write16(gmac_id, 20, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, 18);
    value |= (1<<4);
    gmac_phy_mmd_write16(gmac_id, value, 18);
    
    /* Enable flow control */
    gmac_phy_mmd_write16(gmac_id, 0, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
    value &= ~(1<<11);
    value |= (1<<10);
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);

    /* Reset PHY COPPER */
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_BMCR);
    value |= M88E1512_BMCR_RESET;
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_BMCR);
    
    /* Wait reset done */
    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_BMCR);
        if (!(value & M88E1512_BMCR_RESET)) {
            break;
        }
    } while (1);
    
    /* Reset PHY FIBER */
    gmac_phy_mmd_write16(gmac_id, M88E1512_FIBER_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_BMCR);
    value |= M88E1512_BMCR_RESET;
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_BMCR);
    
    /* Wait reset done */
    times = 0;
    do {
        if (++times > 100) {
            return -1;
        }
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_BMCR);
        if (!(value & M88E1512_BMCR_RESET)) {
            break;
        }
    } while (1);
    
    gmac_phy_mmd_write16(gmac_id, M88E1512_LED_PAGE, M88E1512_REG_PAGE_SEL);

    /* Set LED2 for intr */
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_LED_TCR);
    value |= (M88E1512_LED_TCR_INTn_ENABLE | M88E1512_LED_TCR_INT_ACTIVE_LOW);
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_LED_TCR);

    /* Default PHY LED config: LED[0] ..ON-Link, LED[1] .. Blink-Activity */
    gmac_phy_mmd_write16(gmac_id, M88E1512_LED_DEF, M88E1512_REG_LED_FCTRL);

    /* impedance calibration */
    gmac_phy_mmd_write16(gmac_id, M88E1512_MSCR_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, 25);
    value = 0x00;
    gmac_phy_mmd_write16(gmac_id, value, 25);

    value = gmac_phy_mmd_read16(gmac_id, 24);
    value &= ~0xf0f;
    value |= 0xf0f;
    gmac_phy_mmd_write16(gmac_id, value, 24);

    return 0;
}

uint32 marvell_phy_mmd_fre_get(uint32 gmac_id)
{
    /* max frequency is 12M for 88e1512 */
    return 10 * 1000 * 1000;
}

void marvell_phy_intr_enable(uint32 gmac_id, uint32 intr_src)
{
    /* set for copper */
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    gmac_phy_mmd_write16(gmac_id, M88E1512_INT_LINK_CHG, M88E1512_REG_IER);
    
    /* set for fiber */
    gmac_phy_mmd_write16(gmac_id, M88E1512_FIBER_PAGE, M88E1512_REG_PAGE_SEL);
    gmac_phy_mmd_write16(gmac_id, M88E1512_INT_LINK_CHG, M88E1512_REG_IER);
 }
 
void marvell_phy_intr_disable(uint32 gmac_id, uint32 intr_src)
{
    uint16 value;

    /* set for copper */
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_IER);
    value &= ~M88E1512_INT_LINK_CHG;
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_IER);
    
    /* set for fiber */
    gmac_phy_mmd_write16(gmac_id, M88E1512_FIBER_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_IER);
    value &= ~M88E1512_INT_LINK_CHG;
    gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_IER);
}

uint32 marvell_phy_intr_status(uint32 gmac_id)
{
    uint16 isr0;
    uint16 isr1;

    /* clear copper  */
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    isr0 = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ISR);
    
    /* clear fiber */
    gmac_phy_mmd_write16(gmac_id, M88E1512_FIBER_PAGE, M88E1512_REG_PAGE_SEL);
    isr1 = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ISR);

    return (isr1 << 16 | isr0);
}

void marvell_phy_intr_clear(uint32 gmac_id, uint32 intr_src)
{
    /* clear copper  */
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ISR);
    
    /* clear fiber */
    gmac_phy_mmd_write16(gmac_id, M88E1512_FIBER_PAGE, M88E1512_REG_PAGE_SEL);
    gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ISR);
}

link_status_t __fast marvell_phy_link_status_get(uint32 gmac_id)
{
    uint16 value;
    link_status_t status;

    status.linked = FALSE;
    
    gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
    value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_SSR);
    if (value != 0xFFFF) {
        if (value & M88E1512_SSR_LINK) {
            status.linked = TRUE;

            if (0 == M88E1512_PHYSR_DUPLEX(value)) {
                status.duplex = DUPLEX_HALF;
            } else {
                status.duplex = DUPLEX_FULL;
            }

            switch (M88E1512_PHYSR_SPEED(value)) {
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
int32 marvell_phy_speed_duplex_change(uint32 gmac_id, duplex_t duplex, speed_t speed)
{
    uint16 value  = 0;

    if (speed == SPEED_AUTO) {
        /* enable 100M and 10M advertise */
        gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
        value |= (M88E1512_ANAR_10_HALF | M88E1512_ANAR_10_FULL | M88E1512_ANAR_100_HALF | M88E1512_ANAR_100_FULL);
        gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
    
        /* enable 1000M advertise */
        gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_1000_CR);
        value |= (M88E1512_ANAR_1000_HALF | M88E1512_ANAR_1000_FULL);
        gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_1000_CR);
    } else {
        /* disable 100M and 10M advertise */
        gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
        value &= ~(M88E1512_ANAR_10_HALF | M88E1512_ANAR_10_FULL | M88E1512_ANAR_100_HALF | M88E1512_ANAR_100_FULL);
        gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
    
        /* disable 1000M advertise */
        gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
        value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_1000_CR);
        value &= ~(M88E1512_ANAR_1000_HALF | M88E1512_ANAR_1000_FULL);
        gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_1000_CR);
    
        if (duplex == DUPLEX_FULL) {
            if (speed == SPEED_1000) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_1000_CR);
                value |= M88E1512_ANAR_1000_FULL;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_1000_CR);
            } else if (speed == SPEED_100) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
                value |= M88E1512_ANAR_100_FULL;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
            } else if (speed == SPEED_10) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
                value |= M88E1512_ANAR_10_FULL;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
            } 
        } else {
            if (speed == SPEED_1000) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_1000_CR);
                value |= M88E1512_ANAR_1000_HALF;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_1000_CR);
            } else if (speed == SPEED_100) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
                value |= M88E1512_ANAR_100_HALF;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
            } else if (speed == SPEED_10) {
                gmac_phy_mmd_write16(gmac_id, M88E1512_COPPER_PAGE, M88E1512_REG_PAGE_SEL);
                value = gmac_phy_mmd_read16(gmac_id, M88E1512_REG_ANAR);
                value |= M88E1512_ANAR_10_HALF;
                gmac_phy_mmd_write16(gmac_id, value, M88E1512_REG_ANAR);
            } 
        }
    }

    marvell_phy_init(gmac_id);

    return 0;
}

/* PHY related functions */
const phy_ops_t m88e1512_phy_ops =
{
    marvell_phy_init,
    marvell_phy_mmd_fre_get,
    marvell_phy_intr_enable,
    marvell_phy_intr_disable,
    marvell_phy_intr_status,
    marvell_phy_intr_clear,
    marvell_phy_speed_duplex_change,
    marvell_phy_link_status_get,
};

