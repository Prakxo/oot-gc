#ifndef _DOLPHIN_OSMEMORY
#define _DOLPHIN_OSMEMORY

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_PROTECT_CHAN0 0
#define OS_PROTECT_CHAN1 1
#define OS_PROTECT_CHAN2 2
#define OS_PROTECT_CHAN3 3

#define OS_PROTECT_CONTROL_NONE 0x00
#define OS_PROTECT_CONTROL_READ 0x01
#define OS_PROTECT_CONTROL_WRITE 0x02
#define OS_PROTECT_CONTROL_RDWR (OS_PROTECT_CONTROL_READ | OS_PROTECT_CONTROL_WRITE)

void Config24MB();
void Config48MB();
void RealMode(register u32 addr);
void __OSInitMemoryProtection();

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSMEMORY