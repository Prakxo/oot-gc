glabel SetTableTevStages
/* 092E00 800983A0 7C0802A6 */  mflr    r0
/* 092E04 800983A4 90010004 */  stw     r0, 4(r1)
/* 092E08 800983A8 9421FF88 */  stwu    r1, -0x78(r1)
/* 092E0C 800983AC BE810048 */  stmw    r20, 0x48(r1)
/* 092E10 800983B0 7C7E1B78 */  mr      r30, r3
/* 092E14 800983B4 3BE40000 */  addi    r31, r4, 0
/* 092E18 800983B8 806300A0 */  lwz     r3, 0xa0(r3)
/* 092E1C 800983BC 546017BE */  srwi    r0, r3, 0x1e
/* 092E20 800983C0 28000003 */  cmplwi  r0, 3
/* 092E24 800983C4 4082002C */  bne     lbl_800983F0
/* 092E28 800983C8 546037BE */  rlwinm  r0, r3, 6, 0x1e, 0x1f
/* 092E2C 800983CC 28000001 */  cmplwi  r0, 1
/* 092E30 800983D0 40820020 */  bne     lbl_800983F0
/* 092E34 800983D4 801F0014 */  lwz     r0, 0x14(r31)
/* 092E38 800983D8 5400077B */  rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 092E3C 800983DC 40820014 */  bne     lbl_800983F0
/* 092E40 800983E0 887F0011 */  lbz     r3, 0x11(r31)
/* 092E44 800983E4 38630001 */  addi    r3, r3, 1
/* 092E48 800983E8 48015B31 */  bl      GXSetNumTevStages
/* 092E4C 800983EC 4800000C */  b       lbl_800983F8
lbl_800983F0:
/* 092E50 800983F0 887F0011 */  lbz     r3, 0x11(r31)
/* 092E54 800983F4 48015B25 */  bl      GXSetNumTevStages
lbl_800983F8:
/* 092E58 800983F8 887F0012 */  lbz     r3, 0x12(r31)
/* 092E5C 800983FC 480126B9 */  bl      GXSetNumTexGens
/* 092E60 80098400 881F0012 */  lbz     r0, 0x12(r31)
/* 092E64 80098404 28000000 */  cmplwi  r0, 0
/* 092E68 80098408 4182000C */  beq     lbl_80098414
/* 092E6C 8009840C 881F0013 */  lbz     r0, 0x13(r31)
/* 092E70 80098410 48000008 */  b       lbl_80098418
lbl_80098414:
/* 092E74 80098414 38000001 */  li      r0, 1
lbl_80098418:
/* 092E78 80098418 5403063E */  clrlwi  r3, r0, 0x18
/* 092E7C 8009841C 480141C1 */  bl      GXSetNumChans
/* 092E80 80098420 801F0014 */  lwz     r0, 0x14(r31)
/* 092E84 80098424 540007BD */  rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 092E88 80098428 4182001C */  beq     lbl_80098444
/* 092E8C 8009842C 3C7E0004 */  addis   r3, r30, 4
/* 092E90 80098430 8003D130 */  lwz     r0, -0x2ed0(r3)
/* 092E94 80098434 3881001C */  addi    r4, r1, 0x1c
/* 092E98 80098438 38600002 */  li      r3, 2
/* 092E9C 8009843C 9001001C */  stw     r0, 0x1c(r1)
/* 092EA0 80098440 48015581 */  bl      GXSetTevColor
lbl_80098444:
/* 092EA4 80098444 801F0014 */  lwz     r0, 0x14(r31)
/* 092EA8 80098448 540007FF */  clrlwi. r0, r0, 0x1f
/* 092EAC 8009844C 4182001C */  beq     lbl_80098468
/* 092EB0 80098450 3C7E0004 */  addis   r3, r30, 4
/* 092EB4 80098454 8003D134 */  lwz     r0, -0x2ecc(r3)
/* 092EB8 80098458 38810018 */  addi    r4, r1, 0x18
/* 092EBC 8009845C 38600003 */  li      r3, 3
/* 092EC0 80098460 90010018 */  stw     r0, 0x18(r1)
/* 092EC4 80098464 4801555D */  bl      GXSetTevColor
lbl_80098468:
/* 092EC8 80098468 801F0014 */  lwz     r0, 0x14(r31)
/* 092ECC 8009846C 5400077B */  rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 092ED0 80098470 41820034 */  beq     lbl_800984A4
/* 092ED4 80098474 3C7E0004 */  addis   r3, r30, 4
/* 092ED8 80098478 8803D121 */  lbz     r0, -0x2edf(r3)
/* 092EDC 8009847C 38810014 */  addi    r4, r1, 0x14
/* 092EE0 80098480 38600001 */  li      r3, 1
/* 092EE4 80098484 98010032 */  stb     r0, 0x32(r1)
/* 092EE8 80098488 98010031 */  stb     r0, 0x31(r1)
/* 092EEC 8009848C 98010030 */  stb     r0, 0x30(r1)
/* 092EF0 80098490 98010033 */  stb     r0, 0x33(r1)
/* 092EF4 80098494 80010030 */  lwz     r0, 0x30(r1)
/* 092EF8 80098498 90010014 */  stw     r0, 0x14(r1)
/* 092EFC 8009849C 48015525 */  bl      GXSetTevColor
/* 092F00 800984A0 48000038 */  b       lbl_800984D8
lbl_800984A4:
/* 092F04 800984A4 807E00A0 */  lwz     r3, 0xa0(r30)
/* 092F08 800984A8 546017BE */  srwi    r0, r3, 0x1e
/* 092F0C 800984AC 28000003 */  cmplwi  r0, 3
/* 092F10 800984B0 40820028 */  bne     lbl_800984D8
/* 092F14 800984B4 546037BE */  rlwinm  r0, r3, 6, 0x1e, 0x1f
/* 092F18 800984B8 28000001 */  cmplwi  r0, 1
/* 092F1C 800984BC 4082001C */  bne     lbl_800984D8
/* 092F20 800984C0 3C7E0004 */  addis   r3, r30, 4
/* 092F24 800984C4 8003D124 */  lwz     r0, -0x2edc(r3)
/* 092F28 800984C8 38810010 */  addi    r4, r1, 0x10
/* 092F2C 800984CC 38600001 */  li      r3, 1
/* 092F30 800984D0 90010010 */  stw     r0, 0x10(r1)
/* 092F34 800984D4 480154ED */  bl      GXSetTevColor
lbl_800984D8:
/* 092F38 800984D8 38000000 */  li      r0, 0
/* 092F3C 800984DC 3C60800F */  lis     r3, ganNameTevStage@ha
/* 092F40 800984E0 3B7F0000 */  addi    r27, r31, 0
/* 092F44 800984E4 3B5F0000 */  addi    r26, r31, 0
/* 092F48 800984E8 3B3F0000 */  addi    r25, r31, 0
/* 092F4C 800984EC 3B8301B8 */  addi    r28, r3, ganNameTevStage@l
/* 092F50 800984F0 541D103A */  slwi    r29, r0, 2
/* 092F54 800984F4 3AE00000 */  li      r23, 0
/* 092F58 800984F8 480000C0 */  b       lbl_800985B8
lbl_800984FC:
/* 092F5C 800984FC 38DB0018 */  addi    r6, r27, 0x18
/* 092F60 80098500 7F1CEA14 */  add     r24, r28, r29
/* 092F64 80098504 809B0018 */  lwz     r4, 0x18(r27)
/* 092F68 80098508 80780000 */  lwz     r3, 0(r24)
/* 092F6C 8009850C 3ADA0078 */  addi    r22, r26, 0x78
/* 092F70 80098510 80BB001C */  lwz     r5, 0x1c(r27)
/* 092F74 80098514 3AB901B8 */  addi    r21, r25, 0x1b8
/* 092F78 80098518 80C60008 */  lwz     r6, 8(r6)
/* 092F7C 8009851C 3A990238 */  addi    r20, r25, 0x238
/* 092F80 80098520 4801585D */  bl      GXSetTevOrder
/* 092F84 80098524 80780000 */  lwz     r3, 0(r24)
/* 092F88 80098528 80960000 */  lwz     r4, 0(r22)
/* 092F8C 8009852C 80B60004 */  lwz     r5, 4(r22)
/* 092F90 80098530 80D60008 */  lwz     r6, 8(r22)
/* 092F94 80098534 88F6000C */  lbz     r7, 0xc(r22)
/* 092F98 80098538 81160010 */  lwz     r8, 0x10(r22)
/* 092F9C 8009853C 480153B5 */  bl      GXSetTevColorOp
/* 092FA0 80098540 80780000 */  lwz     r3, 0(r24)
/* 092FA4 80098544 80960014 */  lwz     r4, 0x14(r22)
/* 092FA8 80098548 80B60018 */  lwz     r5, 0x18(r22)
/* 092FAC 8009854C 80D6001C */  lwz     r6, 0x1c(r22)
/* 092FB0 80098550 88F60020 */  lbz     r7, 0x20(r22)
/* 092FB4 80098554 81160024 */  lwz     r8, 0x24(r22)
/* 092FB8 80098558 48015401 */  bl      GXSetTevAlphaOp
/* 092FBC 8009855C 80780000 */  lwz     r3, 0(r24)
/* 092FC0 80098560 80950000 */  lwz     r4, 0(r21)
/* 092FC4 80098564 80B50004 */  lwz     r5, 4(r21)
/* 092FC8 80098568 80D50008 */  lwz     r6, 8(r21)
/* 092FCC 8009856C 80F5000C */  lwz     r7, 0xc(r21)
/* 092FD0 80098570 480152F9 */  bl      GXSetTevColorIn
/* 092FD4 80098574 80780000 */  lwz     r3, 0(r24)
/* 092FD8 80098578 80940000 */  lwz     r4, 0(r20)
/* 092FDC 8009857C 80B40004 */  lwz     r5, 4(r20)
/* 092FE0 80098580 80D40008 */  lwz     r6, 8(r20)
/* 092FE4 80098584 80F4000C */  lwz     r7, 0xc(r20)
/* 092FE8 80098588 48015325 */  bl      GXSetTevAlphaIn
/* 092FEC 8009858C 80780000 */  lwz     r3, 0(r24)
/* 092FF0 80098590 38800000 */  li      r4, 0
/* 092FF4 80098594 48015599 */  bl      GXSetTevKColorSel
/* 092FF8 80098598 80780000 */  lwz     r3, 0(r24)
/* 092FFC 8009859C 38800000 */  li      r4, 0
/* 093000 800985A0 480155E9 */  bl      GXSetTevKAlphaSel
/* 093004 800985A4 3B7B000C */  addi    r27, r27, 0xc
/* 093008 800985A8 3B5A0028 */  addi    r26, r26, 0x28
/* 09300C 800985AC 3B390010 */  addi    r25, r25, 0x10
/* 093010 800985B0 3BBD0004 */  addi    r29, r29, 4
/* 093014 800985B4 3AF70001 */  addi    r23, r23, 1
lbl_800985B8:
/* 093018 800985B8 881F0011 */  lbz     r0, 0x11(r31)
/* 09301C 800985BC 7C170000 */  cmpw    r23, r0
/* 093020 800985C0 4180FF3C */  blt     lbl_800984FC
/* 093024 800985C4 807E00A0 */  lwz     r3, 0xa0(r30)
/* 093028 800985C8 546017BE */  srwi    r0, r3, 0x1e
/* 09302C 800985CC 28000003 */  cmplwi  r0, 3
/* 093030 800985D0 408200C0 */  bne     lbl_80098690
/* 093034 800985D4 546037BE */  rlwinm  r0, r3, 6, 0x1e, 0x1f
/* 093038 800985D8 28000001 */  cmplwi  r0, 1
/* 09303C 800985DC 408200B4 */  bne     lbl_80098690
/* 093040 800985E0 801F0014 */  lwz     r0, 0x14(r31)
/* 093044 800985E4 5400077B */  rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 093048 800985E8 408200A8 */  bne     lbl_80098690
/* 09304C 800985EC 3C60800F */  lis     r3, ganNameTevStage@ha
/* 093050 800985F0 56E4103A */  slwi    r4, r23, 2
/* 093054 800985F4 380301B8 */  addi    r0, r3, ganNameTevStage@l
/* 093058 800985F8 7F002214 */  add     r24, r0, r4
/* 09305C 800985FC 80780000 */  lwz     r3, 0(r24)
/* 093060 80098600 388000FF */  li      r4, 0xff
/* 093064 80098604 38A000FF */  li      r5, 0xff
/* 093068 80098608 38C000FF */  li      r6, 0xff
/* 09306C 8009860C 48015771 */  bl      GXSetTevOrder
/* 093070 80098610 80780000 */  lwz     r3, 0(r24)
/* 093074 80098614 38800000 */  li      r4, 0
/* 093078 80098618 38A00000 */  li      r5, 0
/* 09307C 8009861C 38C00000 */  li      r6, 0
/* 093080 80098620 38E00001 */  li      r7, 1
/* 093084 80098624 39000000 */  li      r8, 0
/* 093088 80098628 480152C9 */  bl      GXSetTevColorOp
/* 09308C 8009862C 80780000 */  lwz     r3, 0(r24)
/* 093090 80098630 38800000 */  li      r4, 0
/* 093094 80098634 38A00000 */  li      r5, 0
/* 093098 80098638 38C00000 */  li      r6, 0
/* 09309C 8009863C 38E00001 */  li      r7, 1
/* 0930A0 80098640 39000000 */  li      r8, 0
/* 0930A4 80098644 48015315 */  bl      GXSetTevAlphaOp
/* 0930A8 80098648 80780000 */  lwz     r3, 0(r24)
/* 0930AC 8009864C 38800000 */  li      r4, 0
/* 0930B0 80098650 38A00002 */  li      r5, 2
/* 0930B4 80098654 38C00003 */  li      r6, 3
/* 0930B8 80098658 38E0000F */  li      r7, 0xf
/* 0930BC 8009865C 4801520D */  bl      GXSetTevColorIn
/* 0930C0 80098660 80780000 */  lwz     r3, 0(r24)
/* 0930C4 80098664 38800007 */  li      r4, 7
/* 0930C8 80098668 38A00007 */  li      r5, 7
/* 0930CC 8009866C 38C00007 */  li      r6, 7
/* 0930D0 80098670 38E00000 */  li      r7, 0
/* 0930D4 80098674 48015239 */  bl      GXSetTevAlphaIn
/* 0930D8 80098678 80780000 */  lwz     r3, 0(r24)
/* 0930DC 8009867C 3880000E */  li      r4, 0xe
/* 0930E0 80098680 480154AD */  bl      GXSetTevKColorSel
/* 0930E4 80098684 80780000 */  lwz     r3, 0(r24)
/* 0930E8 80098688 3880001E */  li      r4, 0x1e
/* 0930EC 8009868C 480154FD */  bl      GXSetTevKAlphaSel
lbl_80098690:
/* 0930F0 80098690 BA810048 */  lmw     r20, 0x48(r1)
/* 0930F4 80098694 8001007C */  lwz     r0, 0x7c(r1)
/* 0930F8 80098698 38210078 */  addi    r1, r1, 0x78
/* 0930FC 8009869C 7C0803A6 */  mtlr    r0
/* 093100 800986A0 4E800020 */  blr     