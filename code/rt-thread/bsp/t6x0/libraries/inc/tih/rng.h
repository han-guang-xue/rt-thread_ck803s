#ifndef _RNG_H_
#define _RNG_H_

#include <sysdep.h>
#include <crypto_errno.h>

crypto_errno_t rand_get(uint8 *rand, uint32 nbyte);

#endif
