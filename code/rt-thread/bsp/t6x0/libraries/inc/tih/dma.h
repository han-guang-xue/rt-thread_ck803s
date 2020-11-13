#ifndef __DMA_H__
#define __DMA_H__

#include <sysdep.h>

/* DMA IRQ num */
#define DMA_IRQ_NUM            9

/* DMA interrupt event list */
#define DMA_INTR_TC            (1 << 0) // intr event transfer complete
#define DMA_INTR_ERR           (1 << 1) // intr event error
#define DMA_INTR_ABT           (1 << 2) // intr event abort

/* DMA dma_config_t options */
/* transfer_width */
#define DMA_TRANSFER_WIDTH_8   0
#define DMA_TRANSFER_WIDTH_16  1
#define DMA_TRANSFER_WIDTH_32  2

/* burst_size */
#define DMA_BURST_SIZE_1       0
#define DMA_BURST_SIZE_4       1
#define DMA_BURST_SIZE_8       2
#define DMA_BURST_SIZE_16      3
#define DMA_BURST_SIZE_32      4
#define DMA_BURST_SIZE_64      5
#define DMA_BURST_SIZE_128     6
#define DMA_BURST_SIZE_256     7

/* struct/enum */
typedef struct dma_config {
    uint32 src_transfer_width;  // src transfer width
    uint32 dst_transfer_width;  // dst transfer width
    uint32 burst_size;          // burst size
} dma_config_t;

/* functions */
int32 dma_hw_init(dma_config_t *config);
void dma_intr_enable(uint32 intr_src);
void dma_intr_disable(uint32 intr_src);
uint32 dma_intr_status(void);
void dma_intr_clear(uint32 intr_src);
void dma_start(uint32 dst_addr, uint32 src_addr, uint32 dst_addr_mode, uint32 src_addr_mode, uint32 nbytes);
void dma_abort(void);
bool dma_is_busy(void);

#endif /* __DMA_H__ */
