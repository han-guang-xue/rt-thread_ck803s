#ifndef __SM3_H__
#define __SM3_H__

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t sm3_init(void);
crypto_errno_t sm3_update(uint8 *indata, uint32 nbytes);
crypto_errno_t sm3_final(uint8 *outdata);

#endif
