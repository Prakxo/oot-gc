glabel cpuGetFunctionChecksum
/* 02ED84 80034324 7C0802A6 */  mflr    r0
/* 02ED88 80034328 90010004 */  stw     r0, 4(r1)
/* 02ED8C 8003432C 9421FFD8 */  stwu    r1, -0x28(r1)
/* 02ED90 80034330 93E10024 */  stw     r31, 0x24(r1)
/* 02ED94 80034334 7CBF2B78 */  mr      r31, r5
/* 02ED98 80034338 93C10020 */  stw     r30, 0x20(r1)
/* 02ED9C 8003433C 3BC40000 */  addi    r30, r4, 0
/* 02EDA0 80034340 80050024 */  lwz     r0, 0x24(r5)
/* 02EDA4 80034344 28000000 */  cmplwi  r0, 0
/* 02EDA8 80034348 41820010 */  beq     lbl_80034358
/* 02EDAC 8003434C 901E0000 */  stw     r0, 0(r30)
/* 02EDB0 80034350 38600001 */  li      r3, 1
/* 02EDB4 80034354 480001F8 */  b       lbl_8003454C
lbl_80034358:
/* 02EDB8 80034358 80DF0010 */  lwz     r6, 0x10(r31)
/* 02EDBC 8003435C 80830008 */  lwz     r4, 8(r3)
/* 02EDC0 80034360 54C0843E */  srwi    r0, r6, 0x10
/* 02EDC4 80034364 7CA30214 */  add     r5, r3, r0
/* 02EDC8 80034368 8084002C */  lwz     r4, 0x2c(r4)
/* 02EDCC 8003436C 88050F64 */  lbz     r0, 0xf64(r5)
/* 02EDD0 80034370 5400103A */  slwi    r0, r0, 2
/* 02EDD4 80034374 7C630214 */  add     r3, r3, r0
/* 02EDD8 80034378 80630B64 */  lwz     r3, 0xb64(r3)
/* 02EDDC 8003437C 80030004 */  lwz     r0, 4(r3)
/* 02EDE0 80034380 7C002040 */  cmplw   r0, r4
/* 02EDE4 80034384 40820034 */  bne     lbl_800343B8
/* 02EDE8 80034388 80030008 */  lwz     r0, 8(r3)
/* 02EDEC 8003438C 38640000 */  addi    r3, r4, 0
/* 02EDF0 80034390 38810018 */  addi    r4, r1, 0x18
/* 02EDF4 80034394 7CA60214 */  add     r5, r6, r0
/* 02EDF8 80034398 38C00000 */  li      r6, 0
/* 02EDFC 8003439C 48038D05 */  bl      ramGetBuffer
/* 02EE00 800343A0 2C030000 */  cmpwi   r3, 0
/* 02EE04 800343A4 4082000C */  bne     lbl_800343B0
/* 02EE08 800343A8 38000000 */  li      r0, 0
/* 02EE0C 800343AC 48000010 */  b       lbl_800343BC
lbl_800343B0:
/* 02EE10 800343B0 38000001 */  li      r0, 1
/* 02EE14 800343B4 48000008 */  b       lbl_800343BC
lbl_800343B8:
/* 02EE18 800343B8 38000000 */  li      r0, 0
lbl_800343BC:
/* 02EE1C 800343BC 2C000000 */  cmpwi   r0, 0
/* 02EE20 800343C0 4082000C */  bne     lbl_800343CC
/* 02EE24 800343C4 38600000 */  li      r3, 0
/* 02EE28 800343C8 48000184 */  b       lbl_8003454C
lbl_800343CC:
/* 02EE2C 800343CC 809F0010 */  lwz     r4, 0x10(r31)
/* 02EE30 800343D0 3C606666 */  lis     r3, 0x6666
/* 02EE34 800343D4 801F0014 */  lwz     r0, 0x14(r31)
/* 02EE38 800343D8 39036667 */  addi    r8, r3, 0x6667
/* 02EE3C 800343DC 39600000 */  li      r11, 0
/* 02EE40 800343E0 7C040050 */  subf    r0, r4, r0
/* 02EE44 800343E4 7C031670 */  srawi   r3, r0, 2
/* 02EE48 800343E8 35430001 */  addic.  r10, r3, 1
/* 02EE4C 800343EC 386A0000 */  addi    r3, r10, 0
/* 02EE50 800343F0 40810150 */  ble     lbl_80034540
/* 02EE54 800343F4 5460F0BF */  rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 02EE58 800343F8 7C0903A6 */  mtctr   r0
/* 02EE5C 800343FC 41820100 */  beq     lbl_800344FC
lbl_80034400:
/* 02EE60 80034400 394AFFFF */  addi    r10, r10, -1
/* 02EE64 80034404 81210018 */  lwz     r9, 0x18(r1)
/* 02EE68 80034408 7C085096 */  mulhw   r0, r8, r10
/* 02EE6C 8003440C 81890000 */  lwz     r12, 0(r9)
/* 02EE70 80034410 7C050E70 */  srawi   r5, r0, 1
/* 02EE74 80034414 54A70FFE */  srwi    r7, r5, 0x1f
/* 02EE78 80034418 7CA53A14 */  add     r5, r5, r7
/* 02EE7C 8003441C 1CA50005 */  mulli   r5, r5, 5
/* 02EE80 80034420 7CC55050 */  subf    r6, r5, r10
/* 02EE84 80034424 394AFFFF */  addi    r10, r10, -1
/* 02EE88 80034428 7C085096 */  mulhw   r0, r8, r10
/* 02EE8C 8003442C 7C050E70 */  srawi   r5, r0, 1
/* 02EE90 80034430 54A70FFE */  srwi    r7, r5, 0x1f
/* 02EE94 80034434 7CA53A14 */  add     r5, r5, r7
/* 02EE98 80034438 1CA50005 */  mulli   r5, r5, 5
/* 02EE9C 8003443C 1C860006 */  mulli   r4, r6, 6
/* 02EEA0 80034440 7CC55050 */  subf    r6, r5, r10
/* 02EEA4 80034444 394AFFFF */  addi    r10, r10, -1
/* 02EEA8 80034448 7C085096 */  mulhw   r0, r8, r10
/* 02EEAC 8003444C 7C050E70 */  srawi   r5, r0, 1
/* 02EEB0 80034450 38090004 */  addi    r0, r9, 4
/* 02EEB4 80034454 54A70FFE */  srwi    r7, r5, 0x1f
/* 02EEB8 80034458 90010018 */  stw     r0, 0x18(r1)
/* 02EEBC 8003445C 7CA53A14 */  add     r5, r5, r7
/* 02EEC0 80034460 558C36BE */  srwi    r12, r12, 0x1a
/* 02EEC4 80034464 81210018 */  lwz     r9, 0x18(r1)
/* 02EEC8 80034468 7D8C2030 */  slw     r12, r12, r4
/* 02EECC 8003446C 7D6B6214 */  add     r11, r11, r12
/* 02EED0 80034470 81890000 */  lwz     r12, 0(r9)
/* 02EED4 80034474 38090004 */  addi    r0, r9, 4
/* 02EED8 80034478 90010018 */  stw     r0, 0x18(r1)
/* 02EEDC 8003447C 1CA50005 */  mulli   r5, r5, 5
/* 02EEE0 80034480 81210018 */  lwz     r9, 0x18(r1)
/* 02EEE4 80034484 1C860006 */  mulli   r4, r6, 6
/* 02EEE8 80034488 7CC55050 */  subf    r6, r5, r10
/* 02EEEC 8003448C 394AFFFF */  addi    r10, r10, -1
/* 02EEF0 80034490 7C085096 */  mulhw   r0, r8, r10
/* 02EEF4 80034494 7C050E70 */  srawi   r5, r0, 1
/* 02EEF8 80034498 558C36BE */  srwi    r12, r12, 0x1a
/* 02EEFC 8003449C 7D8C2030 */  slw     r12, r12, r4
/* 02EF00 800344A0 7D6B6214 */  add     r11, r11, r12
/* 02EF04 800344A4 81890000 */  lwz     r12, 0(r9)
/* 02EF08 800344A8 54A70FFE */  srwi    r7, r5, 0x1f
/* 02EF0C 800344AC 38090004 */  addi    r0, r9, 4
/* 02EF10 800344B0 7CA53A14 */  add     r5, r5, r7
/* 02EF14 800344B4 90010018 */  stw     r0, 0x18(r1)
/* 02EF18 800344B8 1C860006 */  mulli   r4, r6, 6
/* 02EF1C 800344BC 81210018 */  lwz     r9, 0x18(r1)
/* 02EF20 800344C0 1CA50005 */  mulli   r5, r5, 5
/* 02EF24 800344C4 558C36BE */  srwi    r12, r12, 0x1a
/* 02EF28 800344C8 7D8C2030 */  slw     r12, r12, r4
/* 02EF2C 800344CC 7CC55050 */  subf    r6, r5, r10
/* 02EF30 800344D0 7D6B6214 */  add     r11, r11, r12
/* 02EF34 800344D4 81890000 */  lwz     r12, 0(r9)
/* 02EF38 800344D8 38090004 */  addi    r0, r9, 4
/* 02EF3C 800344DC 1C860006 */  mulli   r4, r6, 6
/* 02EF40 800344E0 90010018 */  stw     r0, 0x18(r1)
/* 02EF44 800344E4 558C36BE */  srwi    r12, r12, 0x1a
/* 02EF48 800344E8 7D8C2030 */  slw     r12, r12, r4
/* 02EF4C 800344EC 7D6B6214 */  add     r11, r11, r12
/* 02EF50 800344F0 4200FF10 */  bdnz    lbl_80034400
/* 02EF54 800344F4 70630003 */  andi.   r3, r3, 3
/* 02EF58 800344F8 41820048 */  beq     lbl_80034540
lbl_800344FC:
/* 02EF5C 800344FC 7C6903A6 */  mtctr   r3
lbl_80034500:
/* 02EF60 80034500 394AFFFF */  addi    r10, r10, -1
/* 02EF64 80034504 81210018 */  lwz     r9, 0x18(r1)
/* 02EF68 80034508 7C085096 */  mulhw   r0, r8, r10
/* 02EF6C 8003450C 81890000 */  lwz     r12, 0(r9)
/* 02EF70 80034510 7C050E70 */  srawi   r5, r0, 1
/* 02EF74 80034514 54A70FFE */  srwi    r7, r5, 0x1f
/* 02EF78 80034518 7CA53A14 */  add     r5, r5, r7
/* 02EF7C 8003451C 1CA50005 */  mulli   r5, r5, 5
/* 02EF80 80034520 7CC55050 */  subf    r6, r5, r10
/* 02EF84 80034524 1C860006 */  mulli   r4, r6, 6
/* 02EF88 80034528 558C36BE */  srwi    r12, r12, 0x1a
/* 02EF8C 8003452C 38090004 */  addi    r0, r9, 4
/* 02EF90 80034530 7D8C2030 */  slw     r12, r12, r4
/* 02EF94 80034534 90010018 */  stw     r0, 0x18(r1)
/* 02EF98 80034538 7D6B6214 */  add     r11, r11, r12
/* 02EF9C 8003453C 4200FFC4 */  bdnz    lbl_80034500
lbl_80034540:
/* 02EFA0 80034540 917E0000 */  stw     r11, 0(r30)
/* 02EFA4 80034544 38600001 */  li      r3, 1
/* 02EFA8 80034548 917F0024 */  stw     r11, 0x24(r31)
lbl_8003454C:
/* 02EFAC 8003454C 8001002C */  lwz     r0, 0x2c(r1)
/* 02EFB0 80034550 83E10024 */  lwz     r31, 0x24(r1)
/* 02EFB4 80034554 83C10020 */  lwz     r30, 0x20(r1)
/* 02EFB8 80034558 7C0803A6 */  mtlr    r0
/* 02EFBC 8003455C 38210028 */  addi    r1, r1, 0x28
/* 02EFC0 80034560 4E800020 */  blr     
