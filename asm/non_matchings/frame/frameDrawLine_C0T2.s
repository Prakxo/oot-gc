glabel frameDrawLine_C0T2
/* 021C94 80027234 7C0802A6 */  mflr    r0
/* 021C98 80027238 90010004 */  stw     r0, 4(r1)
/* 021C9C 8002723C 9421FFC8 */  stwu    r1, -0x38(r1)
/* 021CA0 80027240 93E10034 */  stw     r31, 0x34(r1)
/* 021CA4 80027244 93C10030 */  stw     r30, 0x30(r1)
/* 021CA8 80027248 93A1002C */  stw     r29, 0x2c(r1)
/* 021CAC 8002724C 93810028 */  stw     r28, 0x28(r1)
/* 021CB0 80027250 7C7D1B78 */  mr      r29, r3
/* 021CB4 80027254 7C9E2378 */  mr      r30, r4
/* 021CB8 80027258 807D0120 */  lwz     r3, 0x120(r29)
/* 021CBC 8002725C 3BFE0004 */  addi    r31, r30, 4
/* 021CC0 80027260 881E0006 */  lbz     r0, 6(r30)
/* 021CC4 80027264 7C030000 */  cmpw    r3, r0
/* 021CC8 80027268 41820038 */  beq     lbl_800272A0
/* 021CCC 8002726C 881F0002 */  lbz     r0, 2(r31)
/* 021CD0 80027270 38800000 */  li      r4, 0
/* 021CD4 80027274 901D0120 */  stw     r0, 0x120(r29)
/* 021CD8 80027278 C03D0080 */  lfs     f1, 0x80(r29)
/* 021CDC 8002727C C0028130 */  lfs     f0, D_80135E30@sda21(r2)
/* 021CE0 80027280 881F0002 */  lbz     r0, 2(r31)
/* 021CE4 80027284 EC010032 */  fmuls   f0, f1, f0
/* 021CE8 80027288 1C000003 */  mulli   r0, r0, 3
/* 021CEC 8002728C FC00001E */  fctiwz  f0, f0
/* 021CF0 80027290 D8010020 */  stfd    f0, 0x20(r1)
/* 021CF4 80027294 80610024 */  lwz     r3, 0x24(r1)
/* 021CF8 80027298 7C6301D6 */  mullw   r3, r3, r0
/* 021CFC 8002729C 4808431D */  bl      GXSetLineWidth
lbl_800272A0:
/* 021D00 800272A0 3F9D0004 */  addis   r28, r29, 4
/* 021D04 800272A4 801CD138 */  lwz     r0, -0x2ec8(r28)
/* 021D08 800272A8 28000025 */  cmplwi  r0, 0x25
/* 021D0C 800272AC 41820058 */  beq     lbl_80027304
/* 021D10 800272B0 48082F39 */  bl      GXClearVtxDesc
/* 021D14 800272B4 38600009 */  li      r3, 9
/* 021D18 800272B8 38800001 */  li      r4, 1
/* 021D1C 800272BC 48082AE1 */  bl      GXSetVtxDesc
/* 021D20 800272C0 3860000D */  li      r3, 0xd
/* 021D24 800272C4 38800001 */  li      r4, 1
/* 021D28 800272C8 48082AD5 */  bl      GXSetVtxDesc
/* 021D2C 800272CC 38600000 */  li      r3, 0
/* 021D30 800272D0 38800009 */  li      r4, 9
/* 021D34 800272D4 38A00001 */  li      r5, 1
/* 021D38 800272D8 38C00004 */  li      r6, 4
/* 021D3C 800272DC 38E00000 */  li      r7, 0
/* 021D40 800272E0 48082F41 */  bl      GXSetVtxAttrFmt
/* 021D44 800272E4 38600000 */  li      r3, 0
/* 021D48 800272E8 3880000D */  li      r4, 0xd
/* 021D4C 800272EC 38A00001 */  li      r5, 1
/* 021D50 800272F0 38C00004 */  li      r6, 4
/* 021D54 800272F4 38E00000 */  li      r7, 0
/* 021D58 800272F8 48082F29 */  bl      GXSetVtxAttrFmt
/* 021D5C 800272FC 38000025 */  li      r0, 0x25
/* 021D60 80027300 901CD138 */  stw     r0, -0x2ec8(r28)
lbl_80027304:
/* 021D64 80027304 801E0000 */  lwz     r0, 0(r30)
/* 021D68 80027308 3C605555 */  lis     r3, 0x5555
/* 021D6C 8002730C 38635556 */  addi    r3, r3, 0x5556
/* 021D70 80027310 5400083C */  slwi    r0, r0, 1
/* 021D74 80027314 7C630096 */  mulhw   r3, r3, r0
/* 021D78 80027318 54600FFE */  srwi    r0, r3, 0x1f
/* 021D7C 8002731C 7C030214 */  add     r0, r3, r0
/* 021D80 80027320 5405043E */  clrlwi  r5, r0, 0x10
/* 021D84 80027324 386000A8 */  li      r3, 0xa8
/* 021D88 80027328 38800000 */  li      r4, 0
/* 021D8C 8002732C 48084135 */  bl      GXBegin
/* 021D90 80027330 38C00000 */  li      r6, 0
/* 021D94 80027334 48000004 */  b       lbl_80027338
lbl_80027338:
/* 021D98 80027338 3C80CC01 */  lis     r4, 0xcc01
/* 021D9C 8002733C 48000004 */  b       lbl_80027340
lbl_80027340:
/* 021DA0 80027340 4800007C */  b       lbl_800273BC
lbl_80027344:
/* 021DA4 80027344 7CBF3214 */  add     r5, r31, r6
/* 021DA8 80027348 88050000 */  lbz     r0, 0(r5)
/* 021DAC 8002734C 38C60003 */  addi    r6, r6, 3
/* 021DB0 80027350 1C60001C */  mulli   r3, r0, 0x1c
/* 021DB4 80027354 38630358 */  addi    r3, r3, 0x358
/* 021DB8 80027358 7C7D1A14 */  add     r3, r29, r3
/* 021DBC 8002735C C0430014 */  lfs     f2, 0x14(r3)
/* 021DC0 80027360 C0230010 */  lfs     f1, 0x10(r3)
/* 021DC4 80027364 C003000C */  lfs     f0, 0xc(r3)
/* 021DC8 80027368 D0048000 */  stfs    f0, -0x8000(r4)
/* 021DCC 8002736C D0248000 */  stfs    f1, -0x8000(r4)
/* 021DD0 80027370 D0448000 */  stfs    f2, -0x8000(r4)
/* 021DD4 80027374 C0230008 */  lfs     f1, 8(r3)
/* 021DD8 80027378 C0030004 */  lfs     f0, 4(r3)
/* 021DDC 8002737C D0048000 */  stfs    f0, -0x8000(r4)
/* 021DE0 80027380 D0248000 */  stfs    f1, -0x8000(r4)
/* 021DE4 80027384 88050001 */  lbz     r0, 1(r5)
/* 021DE8 80027388 1C60001C */  mulli   r3, r0, 0x1c
/* 021DEC 8002738C 38630358 */  addi    r3, r3, 0x358
/* 021DF0 80027390 7C7D1A14 */  add     r3, r29, r3
/* 021DF4 80027394 C0430014 */  lfs     f2, 0x14(r3)
/* 021DF8 80027398 C0230010 */  lfs     f1, 0x10(r3)
/* 021DFC 8002739C C003000C */  lfs     f0, 0xc(r3)
/* 021E00 800273A0 D0048000 */  stfs    f0, -0x8000(r4)
/* 021E04 800273A4 D0248000 */  stfs    f1, -0x8000(r4)
/* 021E08 800273A8 D0448000 */  stfs    f2, -0x8000(r4)
/* 021E0C 800273AC C0230008 */  lfs     f1, 8(r3)
/* 021E10 800273B0 C0030004 */  lfs     f0, 4(r3)
/* 021E14 800273B4 D0048000 */  stfs    f0, -0x8000(r4)
/* 021E18 800273B8 D0248000 */  stfs    f1, -0x8000(r4)
lbl_800273BC:
/* 021E1C 800273BC 801E0000 */  lwz     r0, 0(r30)
/* 021E20 800273C0 7C060000 */  cmpw    r6, r0
/* 021E24 800273C4 4180FF80 */  blt     lbl_80027344
/* 021E28 800273C8 38600001 */  li      r3, 1
/* 021E2C 800273CC 8001003C */  lwz     r0, 0x3c(r1)
/* 021E30 800273D0 83E10034 */  lwz     r31, 0x34(r1)
/* 021E34 800273D4 83C10030 */  lwz     r30, 0x30(r1)
/* 021E38 800273D8 7C0803A6 */  mtlr    r0
/* 021E3C 800273DC 83A1002C */  lwz     r29, 0x2c(r1)
/* 021E40 800273E0 83810028 */  lwz     r28, 0x28(r1)
/* 021E44 800273E4 38210038 */  addi    r1, r1, 0x38
/* 021E48 800273E8 4E800020 */  blr     
