#ifndef __SHA256_H__
#define __SHA256_H__

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t sha256_init(void);
crypto_errno_t sha256_update(uint8 *indata, uint32 nbytes);
crypto_errno_t sha256_final(uint8 *outdata);

#endif
