#ifndef __INTERRUPT_H__
#define __INTERRUPT_H__

#include <sysdep.h>

/* INTR priority  */
/* For Interrupt priority number, please refer to spec. */

/* functions */
int32 intr_hw_init(void);
int32 intr_connect(uint32 nintr, uint32 prio, void *isr);
int32 intr_disconnect(uint32 nintr);
bool intr_is_connected(uint32 nintr);
void intr_enable(uint32 nintr);
void intr_disable(uint32 nintr);
void intr_clear(uint32 nintr);
uint32 intr_status_get(void);

#endif /* __INTERRUPT_H__ */
