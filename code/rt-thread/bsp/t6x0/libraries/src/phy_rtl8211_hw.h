#ifndef __RTL8211_H__
#define __RTL8211_H__

#define RTL8211_REG_BMCR                 0
#define RTL8211_REG_BMSR                 1
#define RTL8211_REG_ID1                  2
#define RTL8211_REG_ID2                  3
#define RTL8211_REG_ANAR                 4
#define RTL8211_REG_ANLPAR               5
#define RTL8211_REG_ANER                 6
#define RTL8211_REG_ANNPTR               7
#define RTL8211_REG_ANLPNP               8
#define RTL8211_REG_1000_CR              9
#define RTL8211_REG_1000_SR              10
#define RTL8211_REG_MMD_REGCR            13
#define RTL8211_REG_MMD_ADDAR            14

#define RTL8211_REG_PHYCR                0x10
#define RTL8211_REG_PHYSR                0x11
#define RTL8211_REG_INER                 0x12
#define RTL8211_REG_INSR                 0x13

#define RTL8211_REG_EEEAR                0x3c

/*
 * Basic mode control register (00)
 */
#define RTL8211_BMCR_SPEED_M             (1 << 6)
#define RTL8211_BMCR_COLLISION           (1 << 7)
#define RTL8211_BMCR_DUPLEX              (1 << 8)
#define RTL8211_BMCR_RESTART_AUTO_NEG    (1 << 9)
#define RTL8211_BMCR_ISOLATE             (1 << 10)
#define RTL8211_BMCR_POWER_DOWN          (1 << 11)
#define RTL8211_BMCR_AUTO_NEG_EN         (1 << 12)
#define RTL8211_BMCR_SPEED_L             (1 << 13)
#define RTL8211_BMCR_LOOPBACK            (1 << 14)
#define RTL8211_BMCR_RESET               (1 << 15)

/*
 * Basic mode status register (01)
 */
#define RTL8211_BMSR_EXTENDED            (1 << 0)
#define RTL8211_BMSR_JABBER              (1 << 1)
#define RTL8211_BMSR_LINK_STATUS         (1 << 2)
#define RTL8211_BMSR_AUTO_NEG            (1 << 3)
#define RTL8211_BMSR_REMOTE_FAULT        (1 << 4)
#define RTL8211_BMSR_AUTO_NEG_COMPLETE   (1 << 5)
#define RTL8211_BMSR_MF_PREAMBLE         (1 << 6)
#define RTL8211_BMSR_10_T_HALF           (1 << 11)
#define RTL8211_BMSR_10_T_FULL           (1 << 12)
#define RTL8211_BMSR_100_TX_HALF         (1 << 13)
#define RTL8211_BMSR_100_TX_FULL         (1 << 14)
#define RTL8211_BMSR_100_T4              (1 << 15)

/*
 * Auto negotiation advertisement register (04)
 */
#define RTL8211_ANAR_SELECTOR(x)         ((x & 0x1f) << 0)
#define RTL8211_ANAR_10_HD               (1 << 5)
#define RTL8211_ANAR_10_FD               (1 << 6)
#define RTL8211_ANAR_100_HD              (1 << 7)
#define RTL8211_ANAR_100_FD              (1 << 8)
#define RTL8211_ANAR_T4                  (1 << 9)
#define RTL8211_ANAR_ASM(x)              ((x & 0x3) << 10)
#define RTL8211_ANAR_RF                  (1 << 13)
#define RTL8211_ANAR_ACK                 (1 << 14)
#define RTL8211_ANAR_NP                  (1 << 15)

/*
 * Auto negotiation link partner ability register (05)
 */
#define RTL8211_ANLPAR_SELECTOR(x)       ((x & 0x1f) << 0)
#define RTL8211_ANLPAR_10_HD             (1 << 5)
#define RTL8211_ANLPAR_10_FD             (1 << 6)
#define RTL8211_ANLPAR_100_HD            (1 << 7)
#define RTL8211_ANLPAR_100_FD            (1 << 8)
#define RTL8211_ANLPAR_T4                (1 << 9)
#define RTL8211_ANLPAR_PAUSE             (1 << 10)
#define RTL8211_ANLPAR_LP_DIR            (1 << 11)
#define RTL8211_ANLPAR_RF                (1 << 13)
#define RTL8211_ANLPAR_ACK               (1 << 14)
#define RTL8211_ANLPAR_NP                (1 << 15)

/*
 * Auto-Nego Expansion Register (06)
 */
#define RTL8211_ANER_PAGE_RX             (1 << 1)

/*
 * 1000 Base-T control register (09)
 */
#define RTL8211_1000_CR_HD               (1 << 8)
#define RTL8211_1000_CR_FD               (1 << 9)

/*
 * 1000 Base-T status register (10)
 */
#define RTL8211_1000_SR_HD               (1 << 10)
#define RTL8211_1000_SR_FD               (1 << 11)

/*
 * MMD access control register (13)
 */
#define RTL8211_MMD_REGCR_DEVAD(x)       ((x & 0x1f) << 0)
#define RTL8211_MMD_REGCR_MODE(x)        ((x & 0x3) << 14)
#define RTL8211_MMD_MODE_ADDR            0x0
#define RTL8211_MMD_MODE_NO_POST         0x1
#define RTL8211_MMD_MODE_READ_WRITE      0x2
#define RTL8211_MMD_MODE_WRITE_ONLY      0x3

/*
 * PHY Specific Control Register (0x10)
 */
#define RTL8211_PHYCR_JABBER             (1 << 0)
#define RTL8211_PHYCR_CLK125             (1 << 4)
#define RTL8211_PHYCR_MDI                (1 << 5)
#define RTL8211_PHYCR_CROSSOVER          (1 << 6)
#define RTL8211_PHYCR_FORCE_LINK         (1 << 10)
#define RTL8211_PHYCR_ASSERT_CRS         (1 << 11)
#define RTL8211_PHYCR_FPR(x)             ((x & 7) << 12)
#define RTL8211_PHYCR_RXC                (1 << 15)

/*
 * PHY Specific Status Register (0x11)
 */
#define RTL8211_PHYSR_JABBER(x)          (x & 1)
#define RTL8211_PHYSR_PRE_LINK(x)        ((x >> 1) & 1)
#define RTL8211_PHYSR_MDI(x)             ((x >> 6) & 1)
#define RTL8211_PHYSR_LINK               (1 << 10)
#define RTL8211_PHYSR_DUPLEX(x)          ((x >> 13) & 1)
#define RTL8211_PHYSR_SPEED(x)           ((x >> 14) & 3)

/*
 * Interrupt Enable Register (0x12)
 * Interrupt Status Register (0x13)
 */
#define RTL8211_INSR_JABBER              (1 << 0)
#define RTL8211_INSR_FALSECARRIER        (1 << 8)
#define RTL8211_INSR_SYMBOL_ERR          (1 << 9)
#define RTL8211_INSR_LINK_CHG            (1 << 10)
#define RTL8211_INSR_AUTO_NEO            (1 << 11)
#define RTL8211_INSR_PAGE_RX             (1 << 12)
#define RTL8211_INSR_AUTO_NEO_ERR        (1 << 15)
#endif

