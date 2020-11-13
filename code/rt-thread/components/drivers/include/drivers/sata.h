#ifndef __SATA_H__
#define __SATA_H__

#include <rtthread.h>

#ifdef __cplusplus
extern "C" {
#endif

struct rt_ata_device_ops;

struct rt_ata_device
{
    struct rt_device parent;

    struct rt_device_blk_geometry dev_info;
    struct rt_device_blk_sectors  dev_cap;

    struct rt_mutex dlock;            /* The shared device lock       */

    const struct rt_ata_ops *ops;

    /* SATA disk crypto whether support */
    void   *crypto;
    bool    disk_encrypt;              /* 0:not encrypt  1:encrypt */

#if defined(RT_USING_POSIX)
    /* wait queue pending command */
    volatile int pending_cmds;
#endif
};

typedef struct rt_ata_device rt_ata_device_t;

struct rt_ata_ops
{
    rt_err_t  (*init)(struct rt_ata_device *device);
    rt_err_t  (*probe)(struct rt_ata_device *device, struct rt_device_blk_geometry *dev_info);
    rt_size_t (*read)(struct rt_ata_device *device, rt_off_t pos, void *buffer, rt_size_t size);
    rt_size_t (*write)(struct rt_ata_device *device, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t  (*ioctrl)(struct rt_ata_device *device, int cmd, void *args);
    rt_err_t  (*sync)(struct rt_ata_device *device);
    rt_err_t  (*trim)(struct rt_ata_device *device, void *buffer, rt_size_t size);
};

rt_err_t rt_ata_register(struct rt_ata_device *ata,
                               const char     *name,
                               rt_uint32_t     flag,
                               void           *data);

#ifdef __cplusplus
}
#endif

#endif /*__SATA_H__ */
