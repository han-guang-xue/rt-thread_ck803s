#ifndef __SHA1_H__
#define __SHA1_H__

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t sha1_init(void);
crypto_errno_t sha1_update(uint8 *indata, uint32 nbytes);
crypto_errno_t sha1_final(uint8 *outdata);

#endif
