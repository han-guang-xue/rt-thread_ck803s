#ifndef __H2X_H__
#define __H2X_H__

#include <sysdep.h>

/* bridge module id name */
#define H2X_ID_AHB_TO_AXI                       0x0
#define H2X_ID_GMAC0_TO_AXI                     0x1
#define H2X_ID_GMAC1_TO_AXI                     0x2

/* H2X bridge queue config options */
#define H2X_QUEUE_DATA_CTRL_BY_HPROT            0x0 // cache/buffer ctrl by AHB hprot attribute
#define H2X_QUEUE_DATA_CTRL_FORCE               0x1 // cache/buffer force setting
#define H2X_QUEUE_DATA_CTRL_NONE                0x2 // no cache/buffer setting

/* functions define */
int32 h2x_hw_init(void);
void h2x_read_queue_set(uint32 h2x_id, uint32 option);
void h2x_write_queue_set(uint32 h2x_id, uint32 option);

#endif /* __H2X_H__ */
