#ifndef _XL_LIST_H
#define _XL_LIST_H

#include "dolphin.h"

typedef struct tXL_NODE tXL_NODE;

struct tXL_NODE {
    /* 0x0 */ tXL_NODE* next;
    /* 0x4 */ u8 data[];
}; // size = 0x4

typedef struct tXL_LIST {
    /* 0x0 */ s32 nItemSize;
    /* 0x4 */ s32 nItemCount;
    /* 0x8 */ void* pNodeHead;
    /* 0xC */ void* pNodeNext;
} tXL_LIST; // size = 0x10

bool xlListMake(tXL_LIST** ppList, s32 nItemSize);
bool xlListFree(tXL_LIST** ppList);
bool xlListMakeItem(tXL_LIST* pList, void** ppItem);
bool xlListFreeItem(tXL_LIST* pList, void** ppItem);
bool xlListTestItem(tXL_LIST* pList, void* pItem);
bool xlListSetup(void);
bool xlListReset(void);

#endif
