glabel osGetMemSize
/* 0905A8 80095B48 7C0802A6 */  mflr    r0
/* 0905AC 80095B4C 90010004 */  stw     r0, 4(r1)
/* 0905B0 80095B50 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0905B4 80095B54 93E10014 */  stw     r31, 0x14(r1)
/* 0905B8 80095B58 7C7F1B78 */  mr      r31, r3
/* 0905BC 80095B5C 3881000C */  addi    r4, r1, 0xc
/* 0905C0 80095B60 80630008 */  lwz     r3, 8(r3)
/* 0905C4 80095B64 8063002C */  lwz     r3, 0x2c(r3)
/* 0905C8 80095B68 4BFD7469 */  bl      ramGetSize
/* 0905CC 80095B6C 2C030000 */  cmpwi   r3, 0
/* 0905D0 80095B70 4082000C */  bne     lbl_80095B7C
/* 0905D4 80095B74 38600000 */  li      r3, 0
/* 0905D8 80095B78 48000010 */  b       lbl_80095B88
lbl_80095B7C:
/* 0905DC 80095B7C 8001000C */  lwz     r0, 0xc(r1)
/* 0905E0 80095B80 38600001 */  li      r3, 1
/* 0905E4 80095B84 901F0054 */  stw     r0, 0x54(r31)
lbl_80095B88:
/* 0905E8 80095B88 8001001C */  lwz     r0, 0x1c(r1)
/* 0905EC 80095B8C 83E10014 */  lwz     r31, 0x14(r1)
/* 0905F0 80095B90 38210018 */  addi    r1, r1, 0x18
/* 0905F4 80095B94 7C0803A6 */  mtlr    r0
/* 0905F8 80095B98 4E800020 */  blr     
