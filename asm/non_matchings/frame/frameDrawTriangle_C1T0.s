glabel frameDrawTriangle_C1T0
/* 0239DC 80028F7C 7C0802A6 */  mflr    r0
/* 0239E0 80028F80 90010004 */  stw     r0, 4(r1)
/* 0239E4 80028F84 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0239E8 80028F88 93E10034 */  stw     r31, 0x34(r1)
/* 0239EC 80028F8C 93C10030 */  stw     r30, 0x30(r1)
/* 0239F0 80028F90 93A1002C */  stw     r29, 0x2c(r1)
/* 0239F4 80028F94 7C7E1B78 */  mr      r30, r3
/* 0239F8 80028F98 7C9F2378 */  mr      r31, r4
/* 0239FC 80028F9C 3FBE0004 */  addis   r29, r30, 4
/* 023A00 80028FA0 801DD138 */  lwz     r0, -0x2ec8(r29)
/* 023A04 80028FA4 28000013 */  cmplwi  r0, 0x13
/* 023A08 80028FA8 41820058 */  beq     lbl_80029000
/* 023A0C 80028FAC 4808123D */  bl      GXClearVtxDesc
/* 023A10 80028FB0 38600009 */  li      r3, 9
/* 023A14 80028FB4 38800001 */  li      r4, 1
/* 023A18 80028FB8 48080DE5 */  bl      GXSetVtxDesc
/* 023A1C 80028FBC 3860000B */  li      r3, 0xb
/* 023A20 80028FC0 38800001 */  li      r4, 1
/* 023A24 80028FC4 48080DD9 */  bl      GXSetVtxDesc
/* 023A28 80028FC8 38600000 */  li      r3, 0
/* 023A2C 80028FCC 38800009 */  li      r4, 9
/* 023A30 80028FD0 38A00001 */  li      r5, 1
/* 023A34 80028FD4 38C00004 */  li      r6, 4
/* 023A38 80028FD8 38E00000 */  li      r7, 0
/* 023A3C 80028FDC 48081245 */  bl      GXSetVtxAttrFmt
/* 023A40 80028FE0 38600000 */  li      r3, 0
/* 023A44 80028FE4 3880000B */  li      r4, 0xb
/* 023A48 80028FE8 38A00001 */  li      r5, 1
/* 023A4C 80028FEC 38C00005 */  li      r6, 5
/* 023A50 80028FF0 38E00000 */  li      r7, 0
/* 023A54 80028FF4 4808122D */  bl      GXSetVtxAttrFmt
/* 023A58 80028FF8 38000013 */  li      r0, 0x13
/* 023A5C 80028FFC 901DD138 */  stw     r0, -0x2ec8(r29)
lbl_80029000:
/* 023A60 80029000 801F0000 */  lwz     r0, 0(r31)
/* 023A64 80029004 38600090 */  li      r3, 0x90
/* 023A68 80029008 38800000 */  li      r4, 0
/* 023A6C 8002900C 5405043E */  clrlwi  r5, r0, 0x10
/* 023A70 80029010 48082451 */  bl      GXBegin
/* 023A74 80029014 397F0004 */  addi    r11, r31, 4
/* 023A78 80029018 39400000 */  li      r10, 0
/* 023A7C 8002901C 48000004 */  b       lbl_80029020
lbl_80029020:
/* 023A80 80029020 3CA0CC01 */  lis     r5, 0xcc01
/* 023A84 80029024 48000004 */  b       lbl_80029028
lbl_80029028:
/* 023A88 80029028 480000C4 */  b       lbl_800290EC
lbl_8002902C:
/* 023A8C 8002902C 7D2B5214 */  add     r9, r11, r10
/* 023A90 80029030 88090000 */  lbz     r0, 0(r9)
/* 023A94 80029034 394A0003 */  addi    r10, r10, 3
/* 023A98 80029038 1C60001C */  mulli   r3, r0, 0x1c
/* 023A9C 8002903C 38630358 */  addi    r3, r3, 0x358
/* 023AA0 80029040 7C7E1A14 */  add     r3, r30, r3
/* 023AA4 80029044 C0430014 */  lfs     f2, 0x14(r3)
/* 023AA8 80029048 C0230010 */  lfs     f1, 0x10(r3)
/* 023AAC 8002904C C003000C */  lfs     f0, 0xc(r3)
/* 023AB0 80029050 D0058000 */  stfs    f0, -0x8000(r5)
/* 023AB4 80029054 D0258000 */  stfs    f1, -0x8000(r5)
/* 023AB8 80029058 D0458000 */  stfs    f2, -0x8000(r5)
/* 023ABC 8002905C 8903001B */  lbz     r8, 0x1b(r3)
/* 023AC0 80029060 88E3001A */  lbz     r7, 0x1a(r3)
/* 023AC4 80029064 88C30019 */  lbz     r6, 0x19(r3)
/* 023AC8 80029068 88830018 */  lbz     r4, 0x18(r3)
/* 023ACC 8002906C 98858000 */  stb     r4, -0x8000(r5)
/* 023AD0 80029070 98C58000 */  stb     r6, -0x8000(r5)
/* 023AD4 80029074 98E58000 */  stb     r7, -0x8000(r5)
/* 023AD8 80029078 99058000 */  stb     r8, -0x8000(r5)
/* 023ADC 8002907C 88090001 */  lbz     r0, 1(r9)
/* 023AE0 80029080 1C60001C */  mulli   r3, r0, 0x1c
/* 023AE4 80029084 38630358 */  addi    r3, r3, 0x358
/* 023AE8 80029088 7C7E1A14 */  add     r3, r30, r3
/* 023AEC 8002908C C0430014 */  lfs     f2, 0x14(r3)
/* 023AF0 80029090 C0230010 */  lfs     f1, 0x10(r3)
/* 023AF4 80029094 C003000C */  lfs     f0, 0xc(r3)
/* 023AF8 80029098 D0058000 */  stfs    f0, -0x8000(r5)
/* 023AFC 8002909C D0258000 */  stfs    f1, -0x8000(r5)
/* 023B00 800290A0 D0458000 */  stfs    f2, -0x8000(r5)
/* 023B04 800290A4 98858000 */  stb     r4, -0x8000(r5)
/* 023B08 800290A8 98C58000 */  stb     r6, -0x8000(r5)
/* 023B0C 800290AC 98E58000 */  stb     r7, -0x8000(r5)
/* 023B10 800290B0 99058000 */  stb     r8, -0x8000(r5)
/* 023B14 800290B4 88090002 */  lbz     r0, 2(r9)
/* 023B18 800290B8 1C60001C */  mulli   r3, r0, 0x1c
/* 023B1C 800290BC 38630358 */  addi    r3, r3, 0x358
/* 023B20 800290C0 7C7E1A14 */  add     r3, r30, r3
/* 023B24 800290C4 C0430014 */  lfs     f2, 0x14(r3)
/* 023B28 800290C8 C0230010 */  lfs     f1, 0x10(r3)
/* 023B2C 800290CC C003000C */  lfs     f0, 0xc(r3)
/* 023B30 800290D0 D0058000 */  stfs    f0, -0x8000(r5)
/* 023B34 800290D4 D0258000 */  stfs    f1, -0x8000(r5)
/* 023B38 800290D8 D0458000 */  stfs    f2, -0x8000(r5)
/* 023B3C 800290DC 98858000 */  stb     r4, -0x8000(r5)
/* 023B40 800290E0 98C58000 */  stb     r6, -0x8000(r5)
/* 023B44 800290E4 98E58000 */  stb     r7, -0x8000(r5)
/* 023B48 800290E8 99058000 */  stb     r8, -0x8000(r5)
lbl_800290EC:
/* 023B4C 800290EC 801F0000 */  lwz     r0, 0(r31)
/* 023B50 800290F0 7C0A0000 */  cmpw    r10, r0
/* 023B54 800290F4 4180FF38 */  blt     lbl_8002902C
/* 023B58 800290F8 38600001 */  li      r3, 1
/* 023B5C 800290FC 8001003C */  lwz     r0, 0x3c(r1)
/* 023B60 80029100 83E10034 */  lwz     r31, 0x34(r1)
/* 023B64 80029104 83C10030 */  lwz     r30, 0x30(r1)
/* 023B68 80029108 7C0803A6 */  mtlr    r0
/* 023B6C 8002910C 83A1002C */  lwz     r29, 0x2c(r1)
/* 023B70 80029110 38210038 */  addi    r1, r1, 0x38
/* 023B74 80029114 4E800020 */  blr     
