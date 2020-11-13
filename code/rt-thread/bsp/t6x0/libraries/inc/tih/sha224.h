#ifndef __SHA224_H__
#define __SHA224_H__

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t sha224_init(void);
crypto_errno_t sha224_update(uint8 *indata, uint32 nbytes);
crypto_errno_t sha224_final(uint8 *outdata);

#endif
