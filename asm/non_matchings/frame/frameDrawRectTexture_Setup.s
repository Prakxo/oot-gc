glabel frameDrawRectTexture_Setup
/* 020B84 80026124 7C0802A6 */  mflr    r0
/* 020B88 80026128 90010004 */  stw     r0, 4(r1)
/* 020B8C 8002612C 9421FEC0 */  stwu    r1, -0x140(r1)
/* 020B90 80026130 DBE10138 */  stfd    f31, 0x138(r1)
/* 020B94 80026134 DBC10130 */  stfd    f30, 0x130(r1)
/* 020B98 80026138 DBA10128 */  stfd    f29, 0x128(r1)
/* 020B9C 8002613C DB810120 */  stfd    f28, 0x120(r1)
/* 020BA0 80026140 DB610118 */  stfd    f27, 0x118(r1)
/* 020BA4 80026144 BE8100E8 */  stmw    r20, 0xe8(r1)
/* 020BA8 80026148 7C761B78 */  mr      r22, r3
/* 020BAC 8002614C 7C972378 */  mr      r23, r4
/* 020BB0 80026150 880D89C8 */  lbz     r0, sSpecialZeldaHackON@sda21(r13)
/* 020BB4 80026154 80770004 */  lwz     r3, 4(r23)
/* 020BB8 80026158 28000000 */  cmplwi  r0, 0
/* 020BBC 8002615C 7C791B78 */  mr      r25, r3
/* 020BC0 80026160 4182000C */  beq     lbl_8002616C
/* 020BC4 80026164 38600001 */  li      r3, 1
/* 020BC8 80026168 48000384 */  b       lbl_800264EC
lbl_8002616C:
/* 020BCC 8002616C 7EC3B378 */  mr      r3, r22
/* 020BD0 80026170 4800418D */  bl      frameDrawSetup2D
/* 020BD4 80026174 2C030000 */  cmpwi   r3, 0
/* 020BD8 80026178 4082000C */  bne     lbl_80026184
/* 020BDC 8002617C 38600000 */  li      r3, 0
/* 020BE0 80026180 4800036C */  b       lbl_800264EC
lbl_80026184:
/* 020BE4 80026184 3B000000 */  li      r24, 0
/* 020BE8 80026188 3AA00001 */  li      r21, 1
/* 020BEC 8002618C 93010010 */  stw     r24, 0x10(r1)
/* 020BF0 80026190 7EC3B378 */  mr      r3, r22
/* 020BF4 80026194 92A10014 */  stw     r21, 0x14(r1)
/* 020BF8 80026198 38810010 */  addi    r4, r1, 0x10
/* 020BFC 8002619C 38A10014 */  addi    r5, r1, 0x14
/* 020C00 800261A0 38C00001 */  li      r6, 1
/* 020C04 800261A4 480030AD */  bl      frameDrawSetupDP
/* 020C08 800261A8 2C030000 */  cmpwi   r3, 0
/* 020C0C 800261AC 4082000C */  bne     lbl_800261B8
/* 020C10 800261B0 38600000 */  li      r3, 0
/* 020C14 800261B4 48000338 */  b       lbl_800264EC
lbl_800261B8:
/* 020C18 800261B8 2C190007 */  cmpwi   r25, 7
/* 020C1C 800261BC 40800020 */  bge     lbl_800261DC
/* 020C20 800261C0 1C19002C */  mulli   r0, r25, 0x2c
/* 020C24 800261C4 3C760004 */  addis   r3, r22, 4
/* 020C28 800261C8 7C630214 */  add     r3, r3, r0
/* 020C2C 800261CC 8003C390 */  lwz     r0, -0x3c70(r3)
/* 020C30 800261D0 2C000000 */  cmpwi   r0, 0
/* 020C34 800261D4 41820008 */  beq     lbl_800261DC
/* 020C38 800261D8 7EB8AB78 */  mr      r24, r21
lbl_800261DC:
/* 020C3C 800261DC 2C180000 */  cmpwi   r24, 0
/* 020C40 800261E0 4182000C */  beq     lbl_800261EC
/* 020C44 800261E4 38600001 */  li      r3, 1
/* 020C48 800261E8 48000008 */  b       lbl_800261F0
lbl_800261EC:
/* 020C4C 800261EC 38600000 */  li      r3, 0
lbl_800261F0:
/* 020C50 800261F0 80010014 */  lwz     r0, 0x14(r1)
/* 020C54 800261F4 7F191A14 */  add     r24, r25, r3
/* 020C58 800261F8 28000000 */  cmplwi  r0, 0
/* 020C5C 800261FC 418202EC */  beq     lbl_800264E8
/* 020C60 80026200 38C00000 */  li      r6, 0
/* 020C64 80026204 1CB9002C */  mulli   r5, r25, 0x2c
/* 020C68 80026208 3C60800F */  lis     r3, ganNameTexMtx@ha
/* 020C6C 8002620C 54C4103A */  slwi    r4, r6, 2
/* 020C70 80026210 3803A898 */  addi    r0, r3, ganNameTexMtx@l
/* 020C74 80026214 7F402214 */  add     r26, r0, r4
/* 020C78 80026218 5720103A */  slwi    r0, r25, 2
/* 020C7C 8002621C 3B810018 */  addi    r28, r1, 0x18
/* 020C80 80026220 54DD2036 */  slwi    r29, r6, 4
/* 020C84 80026224 7F9C0214 */  add     r28, r28, r0
/* 020C88 80026228 7F762A14 */  add     r27, r22, r5
/* 020C8C 8002622C 48000004 */  b       lbl_80026230
lbl_80026230:
/* 020C90 80026230 C3C28138 */  lfs     f30, D_80135E38@sda21(r2)
/* 020C94 80026234 3FD60004 */  addis   r30, r22, 4
/* 020C98 80026238 CBE28110 */  lfd     f31, D_80135E10@sda21(r2)
/* 020C9C 8002623C 3FE04330 */  lis     r31, 0x4330
/* 020CA0 80026240 C3628104 */  lfs     f27, D_80135E04@sda21(r2)
/* 020CA4 80026244 48000004 */  b       lbl_80026248
lbl_80026248:
/* 020CA8 80026248 48000268 */  b       lbl_800264B0
lbl_8002624C:
/* 020CAC 8002624C 7EC3B378 */  mr      r3, r22
/* 020CB0 80026250 7F84E378 */  mr      r4, r28
/* 020CB4 80026254 7F25EB78 */  or      r5, r25, r29
/* 020CB8 80026258 4BFFA0E9 */  bl      frameLoadTile
/* 020CBC 8002625C 2C030000 */  cmpwi   r3, 0
/* 020CC0 80026260 4182023C */  beq     lbl_8002649C
/* 020CC4 80026264 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 020CC8 80026268 80030020 */  lwz     r0, 0x20(r3)
/* 020CCC 8002626C 2C000005 */  cmpwi   r0, 5
/* 020CD0 80026270 4082005C */  bne     lbl_800262CC
/* 020CD4 80026274 807C0000 */  lwz     r3, 0(r28)
/* 020CD8 80026278 80630014 */  lwz     r3, 0x14(r3)
/* 020CDC 8002627C 3C03FF88 */  addis   r0, r3, 0xff88
/* 020CE0 80026280 28004600 */  cmplwi  r0, 0x4600
/* 020CE4 80026284 40820048 */  bne     lbl_800262CC
/* 020CE8 80026288 80170010 */  lwz     r0, 0x10(r23)
/* 020CEC 8002628C 2C000500 */  cmpwi   r0, 0x500
/* 020CF0 80026290 4082003C */  bne     lbl_800262CC
/* 020CF4 80026294 3AA00001 */  li      r21, 1
/* 020CF8 80026298 92AD89E8 */  stw     r21, bSkip@sda21(r13)
/* 020CFC 8002629C 80160068 */  lwz     r0, 0x68(r22)
/* 020D00 800262A0 2C000000 */  cmpwi   r0, 0
/* 020D04 800262A4 40820028 */  bne     lbl_800262CC
/* 020D08 800262A8 8A96004C */  lbz     r20, 0x4c(r22)
/* 020D0C 800262AC 380000DC */  li      r0, 0xdc
/* 020D10 800262B0 7EC3B378 */  mr      r3, r22
/* 020D14 800262B4 9816004C */  stb     r0, 0x4c(r22)
/* 020D18 800262B8 809ED140 */  lwz     r4, -0x2ec0(r30)
/* 020D1C 800262BC 4BFFEE1D */  bl      ZeldaDrawFrame
/* 020D20 800262C0 9A96004C */  stb     r20, 0x4c(r22)
/* 020D24 800262C4 92B60068 */  stw     r21, 0x68(r22)
/* 020D28 800262C8 92AD89E8 */  stw     r21, bSkip@sda21(r13)
lbl_800262CC:
/* 020D2C 800262CC 800D89E8 */  lwz     r0, bSkip@sda21(r13)
/* 020D30 800262D0 2C000000 */  cmpwi   r0, 0
/* 020D34 800262D4 41820028 */  beq     lbl_800262FC
/* 020D38 800262D8 80170014 */  lwz     r0, 0x14(r23)
/* 020D3C 800262DC 2C0003C0 */  cmpwi   r0, 0x3c0
/* 020D40 800262E0 40820014 */  bne     lbl_800262F4
/* 020D44 800262E4 38000000 */  li      r0, 0
/* 020D48 800262E8 900D89E8 */  stw     r0, bSkip@sda21(r13)
/* 020D4C 800262EC 38600001 */  li      r3, 1
/* 020D50 800262F0 480001FC */  b       lbl_800264EC
lbl_800262F4:
/* 020D54 800262F4 38600001 */  li      r3, 1
/* 020D58 800262F8 480001F4 */  b       lbl_800264EC
lbl_800262FC:
/* 020D5C 800262FC 80BC0000 */  lwz     r5, 0(r28)
/* 020D60 80026300 3C7B0004 */  addis   r3, r27, 4
/* 020D64 80026304 A883C374 */  lha     r4, -0x3c8c(r3)
/* 020D68 80026308 A8050010 */  lha     r0, 0x10(r5)
/* 020D6C 8002630C 2C04000B */  cmpwi   r4, 0xb
/* 020D70 80026310 6C038000 */  xoris   r3, r0, 0x8000
/* 020D74 80026314 906100E4 */  stw     r3, 0xe4(r1)
/* 020D78 80026318 93E100E0 */  stw     r31, 0xe0(r1)
/* 020D7C 8002631C C80100E0 */  lfd     f0, 0xe0(r1)
/* 020D80 80026320 EC00F828 */  fsubs   f0, f0, f31
/* 020D84 80026324 EFBE0024 */  fdivs   f29, f30, f0
/* 020D88 80026328 40800028 */  bge     lbl_80026350
/* 020D8C 8002632C 38600001 */  li      r3, 1
/* 020D90 80026330 7C632030 */  slw     r3, r3, r4
/* 020D94 80026334 6C638000 */  xoris   r3, r3, 0x8000
/* 020D98 80026338 906100E4 */  stw     r3, 0xe4(r1)
/* 020D9C 8002633C 93E100E0 */  stw     r31, 0xe0(r1)
/* 020DA0 80026340 C80100E0 */  lfd     f0, 0xe0(r1)
/* 020DA4 80026344 EC00F828 */  fsubs   f0, f0, f31
/* 020DA8 80026348 EFBD0024 */  fdivs   f29, f29, f0
/* 020DAC 8002634C 48000028 */  b       lbl_80026374
lbl_80026350:
/* 020DB0 80026350 20640010 */  subfic  r3, r4, 0x10
/* 020DB4 80026354 38800001 */  li      r4, 1
/* 020DB8 80026358 7C831830 */  slw     r3, r4, r3
/* 020DBC 8002635C 6C638000 */  xoris   r3, r3, 0x8000
/* 020DC0 80026360 906100E4 */  stw     r3, 0xe4(r1)
/* 020DC4 80026364 93E100E0 */  stw     r31, 0xe0(r1)
/* 020DC8 80026368 C80100E0 */  lfd     f0, 0xe0(r1)
/* 020DCC 8002636C EC00F828 */  fsubs   f0, f0, f31
/* 020DD0 80026370 EFBD0032 */  fmuls   f29, f29, f0
lbl_80026374:
/* 020DD4 80026374 A8C50012 */  lha     r6, 0x12(r5)
/* 020DD8 80026378 3C7B0004 */  addis   r3, r27, 4
/* 020DDC 8002637C A883C376 */  lha     r4, -0x3c8a(r3)
/* 020DE0 80026380 6CC38000 */  xoris   r3, r6, 0x8000
/* 020DE4 80026384 906100E4 */  stw     r3, 0xe4(r1)
/* 020DE8 80026388 2C04000B */  cmpwi   r4, 0xb
/* 020DEC 8002638C 93E100E0 */  stw     r31, 0xe0(r1)
/* 020DF0 80026390 C80100E0 */  lfd     f0, 0xe0(r1)
/* 020DF4 80026394 EC00F828 */  fsubs   f0, f0, f31
/* 020DF8 80026398 EF9E0024 */  fdivs   f28, f30, f0
/* 020DFC 8002639C 40800028 */  bge     lbl_800263C4
/* 020E00 800263A0 38600001 */  li      r3, 1
/* 020E04 800263A4 7C632030 */  slw     r3, r3, r4
/* 020E08 800263A8 6C638000 */  xoris   r3, r3, 0x8000
/* 020E0C 800263AC 906100E4 */  stw     r3, 0xe4(r1)
/* 020E10 800263B0 93E100E0 */  stw     r31, 0xe0(r1)
/* 020E14 800263B4 C80100E0 */  lfd     f0, 0xe0(r1)
/* 020E18 800263B8 EC00F828 */  fsubs   f0, f0, f31
/* 020E1C 800263BC EF9C0024 */  fdivs   f28, f28, f0
/* 020E20 800263C0 48000028 */  b       lbl_800263E8
lbl_800263C4:
/* 020E24 800263C4 20640010 */  subfic  r3, r4, 0x10
/* 020E28 800263C8 38800001 */  li      r4, 1
/* 020E2C 800263CC 7C831830 */  slw     r3, r4, r3
/* 020E30 800263D0 6C638000 */  xoris   r3, r3, 0x8000
/* 020E34 800263D4 906100E4 */  stw     r3, 0xe4(r1)
/* 020E38 800263D8 93E100E0 */  stw     r31, 0xe0(r1)
/* 020E3C 800263DC C80100E0 */  lfd     f0, 0xe0(r1)
/* 020E40 800263E0 EC00F828 */  fsubs   f0, f0, f31
/* 020E44 800263E4 EF9C0032 */  fmuls   f28, f28, f0
lbl_800263E8:
/* 020E48 800263E8 3C7B0004 */  addis   r3, r27, 4
/* 020E4C 800263EC C0628100 */  lfs     f3, D_80135E00@sda21(r2)
/* 020E50 800263F0 A883C378 */  lha     r4, -0x3c88(r3)
/* 020E54 800263F4 6C058000 */  xoris   r5, r0, 0x8000
/* 020E58 800263F8 A863C37A */  lha     r3, -0x3c86(r3)
/* 020E5C 800263FC 6CC08000 */  xoris   r0, r6, 0x8000
/* 020E60 80026400 6C868000 */  xoris   r6, r4, 0x8000
/* 020E64 80026404 6C648000 */  xoris   r4, r3, 0x8000
/* 020E68 80026408 90C100E4 */  stw     r6, 0xe4(r1)
/* 020E6C 8002640C 38610068 */  addi    r3, r1, 0x68
/* 020E70 80026410 908100D4 */  stw     r4, 0xd4(r1)
/* 020E74 80026414 93E100E0 */  stw     r31, 0xe0(r1)
/* 020E78 80026418 93E100D0 */  stw     r31, 0xd0(r1)
/* 020E7C 8002641C C82100E0 */  lfd     f1, 0xe0(r1)
/* 020E80 80026420 90A100DC */  stw     r5, 0xdc(r1)
/* 020E84 80026424 C80100D0 */  lfd     f0, 0xd0(r1)
/* 020E88 80026428 EC21F828 */  fsubs   f1, f1, f31
/* 020E8C 8002642C 900100CC */  stw     r0, 0xcc(r1)
/* 020E90 80026430 EC00F828 */  fsubs   f0, f0, f31
/* 020E94 80026434 93E100D8 */  stw     r31, 0xd8(r1)
/* 020E98 80026438 EC8106F2 */  fmuls   f4, f1, f27
/* 020E9C 8002643C 93E100C8 */  stw     r31, 0xc8(r1)
/* 020EA0 80026440 EC2006F2 */  fmuls   f1, f0, f27
/* 020EA4 80026444 C84100D8 */  lfd     f2, 0xd8(r1)
/* 020EA8 80026448 C80100C8 */  lfd     f0, 0xc8(r1)
/* 020EAC 8002644C EC42F828 */  fsubs   f2, f2, f31
/* 020EB0 80026450 EC00F828 */  fsubs   f0, f0, f31
/* 020EB4 80026454 EC441024 */  fdivs   f2, f4, f2
/* 020EB8 80026458 EC010024 */  fdivs   f0, f1, f0
/* 020EBC 8002645C FC201050 */  fneg    f1, f2
/* 020EC0 80026460 FC400050 */  fneg    f2, f0
/* 020EC4 80026464 48081A61 */  bl      PSMTXTrans
/* 020EC8 80026468 FC20E890 */  fmr     f1, f29
/* 020ECC 8002646C C0628100 */  lfs     f3, D_80135E00@sda21(r2)
/* 020ED0 80026470 FC40E090 */  fmr     f2, f28
/* 020ED4 80026474 38610038 */  addi    r3, r1, 0x38
/* 020ED8 80026478 48081ACD */  bl      PSMTXScale
/* 020EDC 8002647C 38610068 */  addi    r3, r1, 0x68
/* 020EE0 80026480 38810038 */  addi    r4, r1, 0x38
/* 020EE4 80026484 38A10098 */  addi    r5, r1, 0x98
/* 020EE8 80026488 48081971 */  bl      PSMTXConcat
/* 020EEC 8002648C 809A0000 */  lwz     r4, 0(r26)
/* 020EF0 80026490 38610098 */  addi    r3, r1, 0x98
/* 020EF4 80026494 38A00001 */  li      r5, 1
/* 020EF8 80026498 480884A5 */  bl      GXLoadTexMtxImm
lbl_8002649C:
/* 020EFC 8002649C 3B9C0004 */  addi    r28, r28, 4
/* 020F00 800264A0 3B7B002C */  addi    r27, r27, 0x2c
/* 020F04 800264A4 3B390001 */  addi    r25, r25, 1
/* 020F08 800264A8 3BBD0010 */  addi    r29, r29, 0x10
/* 020F0C 800264AC 3B5A0004 */  addi    r26, r26, 4
lbl_800264B0:
/* 020F10 800264B0 7C19C000 */  cmpw    r25, r24
/* 020F14 800264B4 4081FD98 */  ble     lbl_8002624C
/* 020F18 800264B8 3C608002 */  lis     r3, frameDrawRectTexture@ha
/* 020F1C 800264BC 38036514 */  addi    r0, r3, frameDrawRectTexture@l
/* 020F20 800264C0 90160138 */  stw     r0, 0x138(r22)
/* 020F24 800264C4 7EC3B378 */  mr      r3, r22
/* 020F28 800264C8 7EE4BB78 */  mr      r4, r23
/* 020F2C 800264CC 81960138 */  lwz     r12, 0x138(r22)
/* 020F30 800264D0 7D8803A6 */  mtlr    r12
/* 020F34 800264D4 4E800021 */  blrl    
/* 020F38 800264D8 2C030000 */  cmpwi   r3, 0
/* 020F3C 800264DC 4082000C */  bne     lbl_800264E8
/* 020F40 800264E0 38600000 */  li      r3, 0
/* 020F44 800264E4 48000008 */  b       lbl_800264EC
lbl_800264E8:
/* 020F48 800264E8 38600001 */  li      r3, 1
lbl_800264EC:
/* 020F4C 800264EC BA8100E8 */  lmw     r20, 0xe8(r1)
/* 020F50 800264F0 80010144 */  lwz     r0, 0x144(r1)
/* 020F54 800264F4 CBE10138 */  lfd     f31, 0x138(r1)
/* 020F58 800264F8 CBC10130 */  lfd     f30, 0x130(r1)
/* 020F5C 800264FC 7C0803A6 */  mtlr    r0
/* 020F60 80026500 CBA10128 */  lfd     f29, 0x128(r1)
/* 020F64 80026504 CB810120 */  lfd     f28, 0x120(r1)
/* 020F68 80026508 CB610118 */  lfd     f27, 0x118(r1)
/* 020F6C 8002650C 38210140 */  addi    r1, r1, 0x140
/* 020F70 80026510 4E800020 */  blr     
