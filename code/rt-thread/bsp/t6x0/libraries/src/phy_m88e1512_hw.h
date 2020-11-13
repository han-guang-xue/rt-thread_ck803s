#ifndef __M88E1512_H__
#define __M88E1512_H__

/**
 * Vendor PHY related registers 
 */
#define MARVELL_OUI                    0x005043
#define MARVELL_MDL_NUM                0xC         
#define MARVELL_88E1512_MDL_NUM        0x1D 

#define M88E1512_COPPER_PAGE           0x00
#define M88E1512_FIBER_PAGE            0x01
#define M88E1512_MSCR_PAGE             0x02
#define M88E1512_LED_PAGE              0x03
#define M88E1512_MISC_TEST_PAGE        0x06

#define M88E1512_REG_BMCR              0
#define M88E1512_REG_BMSR              1
#define M88E1512_REG_ID1               2
#define M88E1512_REG_ID2               3
#define M88E1512_REG_ANAR              4
#define M88E1512_REG_ANLPAR            5
#define M88E1512_REG_ANER              6
#define M88E1512_REG_ANNPTR            7
#define M88E1512_REG_ANLPNP            8
#define M88E1512_REG_1000_CR           9
#define M88E1512_REG_1000_SR           10
#define M88E1512_REG_MMD_REGCR         13
#define M88E1512_REG_MMD_ADDAR         14

#define M88E1512_REG_SSR               17
#define M88E1512_REG_IER               18
#define M88E1512_REG_ISR               19
#define M88E1512_REG_ESCR              20
#define M88E1512_REG_PAGE_SEL          22

/**
 * Basic mode control register (00)
 */
#define M88E1512_BMCR_SPEED_M          (1 << 6)
#define M88E1512_BMCR_COLLISION        (1 << 7)
#define M88E1512_BMCR_DUPLEX           (1 << 8)
#define M88E1512_BMCR_RESTART_AUTO_NEG (1 << 9)
#define M88E1512_BMCR_ISOLATE          (1 << 10)
#define M88E1512_BMCR_POWER_DOWN       (1 << 11)
#define M88E1512_BMCR_AUTO_NEG_EN      (1 << 12)
#define M88E1512_BMCR_SPEED_L          (1 << 13)
#define M88E1512_BMCR_LOOPBACK         (1 << 14)
#define M88E1512_BMCR_RESET            (1 << 15)

/**
 * Auto-neg advertise register (04)
 */
#define M88E1512_ANAR_10_HALF          (1 << 5)
#define M88E1512_ANAR_10_FULL          (1 << 6)
#define M88E1512_ANAR_100_HALF         (1 << 7)
#define M88E1512_ANAR_100_FULL         (1 << 8)

/**
 * 1000M control register (09)
 */
#define M88E1512_ANAR_1000_HALF        (1 << 8)
#define M88E1512_ANAR_1000_FULL        (1 << 9)

/**
 * PHY LED status register
 */
#define M88E1512_REG_LED_TCR            18
#define M88E1512_LED_TCR_FORCE_INT      (1<<15)
#define M88E1512_LED_TCR_INTn_ENABLE    (1<<7)
#define M88E1512_LED_TCR_INT_ACTIVE_LOW (1<<11)

/**
 * PHY LED functon control register
 */
#define M88E1512_REG_LED_FCTRL         16
#define M88E1512_LED_DEF               0x0040

/**
 * PHY specific status register (17)
 */
#define M88E1512_PHYSR_DUPLEX(x)       ((x >> 13) & 1)
#define M88E1512_PHYSR_SPEED(x)        ((x >> 14) & 3)
#define M88E1512_SSR_PAGE_RX           (1 << 12)
#define M88E1512_SSR_RESOLVED          (1 << 11)
#define M88E1512_SSR_LINK              (1 << 10)
#define M88E1512_SSR_CABLE_LEN(x)      ((x & (0x7 << 7)) >> 7)
#define M88E1512_SSR_MDI_STATUS        (1 << 6)
#define M88E1512_SSR_DOWNSHIFT         (1 << 5)
#define M88E1512_SSR_ENERGY            (1 << 4)
#define M88E1512_SSR_TX_PAUSE          (1 << 3)
#define M88E1512_SSR_RX_PAUSE          (1 << 2)
#define M88E1512_SSR_POLARITY          (1 << 1)
#define M88E1512_SSR_JABBER            (1 << 0)

/**
 * Interrupt enable register and status (18 and 19)
 */
#define M88E1512_INT_JABBER            (1 << 0)
#define M88E1512_INT_POLARITY_CHANGE   (1 << 1)
#define M88E1512_INT_DTE_DETECT        (1 << 2)
#define M88E1512_INT_ENERGY_DETECT     (1 << 4)
#define M88E1512_INT_DOWNSHIT          (1 << 5)
#define M88E1512_INT_MDI_CROSS_CHG     (1 << 6)
#define M88E1512_INT_FIFO_OVER_UND     (1 << 7)
#define M88E1512_INT_FALSECARRIER      (1 << 8)
#define M88E1512_INT_SYMBOL_ERR        (1 << 9)
#define M88E1512_INT_LINK_CHG          (1 << 10)
#define M88E1512_INT_AUTO_NEO          (1 << 11)
#define M88E1512_INT_PAGE_RX           (1 << 12)
#define M88E1512_INT_DUP_CHG           (1 << 13)
#define M88E1512_INT_SPEED_CHG         (1 << 14)
#define M88E1512_INT_AUTO_NEO_ERR      (1 << 15)

/**
 * Extended PHY Specific Control Register (20)
 */
#define M88E1512_ESCR_TX_DISABLE       (1 << 0)
#define M88E1512_ESCR_TX_TIME          (1 << 1)
#define M88E1512_ESCR_RX_TIME          (1 << 7)

/**
 * Extended phy specific status register (27)
 */
#define M88E1512_ESSR_HWCFG(x)         (x & 0xf)

/**
 * HWCFG values
 */
#define M88E1512_RGMII_COPPER          0x0
#define M88E1512_RGMII_1000FIBER       0x2
#define M88E1512_RGMII_100FIBER        0x3
#define M88E1512_RGMII_COPPORSGMII     0x6
#define M88E1512_RESERVED              0x5
#define M88E1512_RGMII_COPPORFIBER     0x7  
#endif

