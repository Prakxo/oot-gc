glabel rspVMADN
/* 08796C 8008CF0C 7C0802A6 */  mflr    r0
/* 087970 8008CF10 3C60800F */  lis     r3, cmask_tab@ha
/* 087974 8008CF14 90010004 */  stw     r0, 4(r1)
/* 087978 8008CF18 3803E230 */  addi    r0, r3, cmask_tab@l
/* 08797C 8008CF1C 9421FF68 */  stwu    r1, -0x98(r1)
/* 087980 8008CF20 BE010058 */  stmw    r16, 0x58(r1)
/* 087984 8008CF24 3BE70000 */  addi    r31, r7, 0
/* 087988 8008CF28 3CE0800F */  lis     r7, emask_tab@ha
/* 08798C 8008CF2C 3F800001 */  lis     r28, 1
/* 087990 8008CF30 57E90EFA */  rlwinm  r9, r31, 1, 0x1b, 0x1d
/* 087994 8008CF34 38E7E250 */  addi    r7, r7, emask_tab@l
/* 087998 8008CF38 3BC50000 */  addi    r30, r5, 0
/* 08799C 8008CF3C 3B240000 */  addi    r25, r4, 0
/* 0879A0 8008CF40 3B080000 */  addi    r24, r8, 0
/* 0879A4 8008CF44 3AE60000 */  addi    r23, r6, 0
/* 0879A8 8008CF48 7EC74A14 */  add     r22, r7, r9
/* 0879AC 8008CF4C 7EA04A14 */  add     r21, r0, r9
/* 0879B0 8008CF50 3B7CFFFF */  addi    r27, r28, -1
/* 0879B4 8008CF54 3E008000 */  lis     r16, 0x8000
/* 0879B8 8008CF58 3A20FFFF */  li      r17, -1
/* 0879BC 8008CF5C 3A800000 */  li      r20, 0
/* 0879C0 8008CF60 3FA0FFFF */  lis     r29, 0xffff
lbl_8008CF64:
/* 0879C4 8008CF64 80750000 */  lwz     r3, 0(r21)
/* 0879C8 8008CF68 3B400000 */  li      r26, 0
/* 0879CC 8008CF6C 80160000 */  lwz     r0, 0(r22)
/* 0879D0 8008CF70 38A0002F */  li      r5, 0x2f
/* 0879D4 8008CF74 7E831838 */  and     r3, r20, r3
/* 0879D8 8008CF78 7FE00038 */  and     r0, r31, r0
/* 0879DC 8008CF7C A1390000 */  lhz     r9, 0(r25)
/* 0879E0 8008CF80 7C030214 */  add     r0, r3, r0
/* 0879E4 8008CF84 80780004 */  lwz     r3, 4(r24)
/* 0879E8 8008CF88 5404083C */  slwi    r4, r0, 1
/* 0879EC 8008CF8C 80180000 */  lwz     r0, 0(r24)
/* 0879F0 8008CF90 7D1E22AE */  lhax    r8, r30, r4
/* 0879F4 8008CF94 7CDA41D6 */  mullw   r6, r26, r8
/* 0879F8 8008CF98 7C894016 */  mulhwu  r4, r9, r8
/* 0879FC 8008CF9C 7D07FE70 */  srawi   r7, r8, 0x1f
/* 087A00 8008CFA0 7CC62214 */  add     r6, r6, r4
/* 087A04 8008CFA4 7C8939D6 */  mullw   r4, r9, r7
/* 087A08 8008CFA8 7E4941D6 */  mullw   r18, r9, r8
/* 087A0C 8008CFAC 7E521814 */  addc    r18, r18, r3
/* 087A10 8008CFB0 7C662214 */  add     r3, r6, r4
/* 087A14 8008CFB4 7E630114 */  adde    r19, r3, r0
/* 087A18 8008CFB8 38730000 */  addi    r3, r19, 0
/* 087A1C 8008CFBC 38920000 */  addi    r4, r18, 0
/* 087A20 8008CFC0 48040DCD */  bl      __shr2i
/* 087A24 8008CFC4 38000001 */  li      r0, 1
/* 087A28 8008CFC8 7C840038 */  and     r4, r4, r0
/* 087A2C 8008CFCC 7C60D038 */  and     r0, r3, r26
/* 087A30 8008CFD0 7C83D278 */  xor     r3, r4, r26
/* 087A34 8008CFD4 7C00D278 */  xor     r0, r0, r26
/* 087A38 8008CFD8 7C600379 */  or.     r0, r3, r0
/* 087A3C 8008CFDC 41820020 */  beq     lbl_8008CFFC
/* 087A40 8008CFE0 7E60D838 */  and     r0, r19, r27
/* 087A44 8008CFE4 3860FFFF */  li      r3, -1
/* 087A48 8008CFE8 7E431838 */  and     r3, r18, r3
/* 087A4C 8008CFEC 7C00EB78 */  or      r0, r0, r29
/* 087A50 8008CFF0 3A430000 */  addi    r18, r3, 0
/* 087A54 8008CFF4 7C130378 */  mr      r19, r0
/* 087A58 8008CFF8 48000010 */  b       lbl_8008D008
lbl_8008CFFC:
/* 087A5C 8008CFFC 3800FFFF */  li      r0, -1
/* 087A60 8008D000 7E520038 */  and     r18, r18, r0
/* 087A64 8008D004 7E73D838 */  and     r19, r19, r27
lbl_8008D008:
/* 087A68 8008D008 38A00000 */  li      r5, 0
/* 087A6C 8008D00C 92580004 */  stw     r18, 4(r24)
/* 087A70 8008D010 6E648000 */  xoris   r4, r19, 0x8000
/* 087A74 8008D014 6CA38000 */  xoris   r3, r5, 0x8000
/* 087A78 8008D018 92780000 */  stw     r19, 0(r24)
/* 087A7C 8008D01C 7C059010 */  subfc   r0, r5, r18
/* 087A80 8008D020 7C632110 */  subfe   r3, r3, r4
/* 087A84 8008D024 7C642110 */  subfe   r3, r4, r4
/* 087A88 8008D028 7C6300D1 */  neg.    r3, r3
/* 087A8C 8008D02C 4182002C */  beq     lbl_8008D058
/* 087A90 8008D030 7E4390F8 */  nor     r3, r18, r18
/* 087A94 8008D034 7E6098F8 */  nor     r0, r19, r19
/* 087A98 8008D038 7C638038 */  and     r3, r3, r16
/* 087A9C 8008D03C 7C008838 */  and     r0, r0, r17
/* 087AA0 8008D040 7C632A78 */  xor     r3, r3, r5
/* 087AA4 8008D044 7C002A78 */  xor     r0, r0, r5
/* 087AA8 8008D048 7C600379 */  or.     r0, r3, r0
/* 087AAC 8008D04C 41820028 */  beq     lbl_8008D074
/* 087AB0 8008D050 3A400000 */  li      r18, 0
/* 087AB4 8008D054 48000020 */  b       lbl_8008D074
lbl_8008D058:
/* 087AB8 8008D058 7E438038 */  and     r3, r18, r16
/* 087ABC 8008D05C 7E608838 */  and     r0, r19, r17
/* 087AC0 8008D060 7C632A78 */  xor     r3, r3, r5
/* 087AC4 8008D064 7C002A78 */  xor     r0, r0, r5
/* 087AC8 8008D068 7C600379 */  or.     r0, r3, r0
/* 087ACC 8008D06C 41820008 */  beq     lbl_8008D074
/* 087AD0 8008D070 3A5CFFFF */  addi    r18, r28, -1
lbl_8008D074:
/* 087AD4 8008D074 7E40D838 */  and     r0, r18, r27
/* 087AD8 8008D078 3A940001 */  addi    r20, r20, 1
/* 087ADC 8008D07C 5400043E */  clrlwi  r0, r0, 0x10
/* 087AE0 8008D080 B0170000 */  sth     r0, 0(r23)
/* 087AE4 8008D084 2C140008 */  cmpwi   r20, 8
/* 087AE8 8008D088 3B390002 */  addi    r25, r25, 2
/* 087AEC 8008D08C 3B180008 */  addi    r24, r24, 8
/* 087AF0 8008D090 3AF70002 */  addi    r23, r23, 2
/* 087AF4 8008D094 4180FED0 */  blt     lbl_8008CF64
/* 087AF8 8008D098 BA010058 */  lmw     r16, 0x58(r1)
/* 087AFC 8008D09C 38600001 */  li      r3, 1
/* 087B00 8008D0A0 8001009C */  lwz     r0, 0x9c(r1)
/* 087B04 8008D0A4 38210098 */  addi    r1, r1, 0x98
/* 087B08 8008D0A8 7C0803A6 */  mtlr    r0
/* 087B0C 8008D0AC 4E800020 */  blr     
