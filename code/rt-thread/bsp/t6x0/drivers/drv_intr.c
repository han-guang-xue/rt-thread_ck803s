#include <string.h>
#include <rthw.h>
#include <tih/core_ck803.h>
#include <tih/interrupt.h>

/* intr isr and irq_num array */
struct rt_irq_desc irqs[__VIC_IRQ_NUMS];

void rt_hw_interrupt_init(void)
{
    /* intr hw init  */
    intr_hw_init();

    for (int i = 0; i < 32; ++i) {
        irqs[i].handler = NULL;
        irqs[i].param   = NULL;

        /* default set intr priority = 1 group */
        csi_vic_set_prio(i, 1);
    }

    /* Markup irq stack valid check flag '#' */
    extern uint32 irq_stack_offset;
    rt_memset((void *)((uint32)&irq_stack_offset - 0xfff), 0x23, 0x10);
}

void __fast rt_hw_interrupt_mask(int vector)
{
    intr_disable(vector);
}

void __fast rt_hw_interrupt_umask(int vector)
{
    intr_enable(vector);
}

void __fast rt_hw_interrupt_clear(int vevtor)
{
    csi_vic_clear_pending_irq(vevtor);
}

rt_isr_handler_t __fast rt_hw_interrupt_install(int              vector,
                                                rt_isr_handler_t handler,
                                                void            *param,
                                                char            *name)
{
    if (vector > __VIC_IRQ_NUMS) {
        return NULL;
    }

    if (handler == NULL) {
        return NULL;
    }

    irqs[vector].handler = handler;
    irqs[vector].param   = param;
#ifdef RT_USING_INTERRUPT_INFO
    irqs[vector].counter = vector;
    memcpy(irqs[vector].name, name, strlen(name));
#endif

    extern void interrupt_handler(void);

    intr_disconnect(vector);
    intr_connect(vector, 1, interrupt_handler);
    csi_vic_set_prio(vector, 1);

    return handler;
}

void __fast rt_hw_interrupt_dispatch(uint32 nintr)
{
    rt_isr_handler_t handler;

    if (nintr > __VIC_IRQ_NUMS) {
        return;
    }

    if (irqs[nintr].handler) {
        handler = irqs[nintr].handler;
        handler(nintr, irqs[nintr].param);
    }
}
