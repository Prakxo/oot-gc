glabel rspAInterleave2
/* 08005C 800855FC 9421FFC0 */  stwu    r1, -0x40(r1)
/* 080060 80085600 54A6FC7E */  rlwinm  r6, r5, 0x1f, 0x11, 0x1f
/* 080064 80085604 54A7A537 */  rlwinm. r7, r5, 0x14, 0x14, 0x1b
/* 080068 80085608 BEC10018 */  stmw    r22, 0x18(r1)
/* 08006C 8008560C 5480843E */  srwi    r0, r4, 0x10
/* 080070 80085610 7C000E70 */  srawi   r0, r0, 1
/* 080074 80085614 38A70007 */  addi    r5, r7, 7
/* 080078 80085618 38C60008 */  addi    r6, r6, 8
/* 08007C 8008561C 5419083C */  slwi    r25, r0, 1
/* 080080 80085620 54D8083C */  slwi    r24, r6, 1
/* 080084 80085624 5497043C */  rlwinm  r23, r4, 0, 0x10, 0x1e
/* 080088 80085628 54A5E8FE */  srwi    r5, r5, 3
/* 08008C 8008562C 4081020C */  ble     lbl_80085838
/* 080090 80085630 54A0F87F */  rlwinm. r0, r5, 0x1f, 1, 0x1f
/* 080094 80085634 7C0903A6 */  mtctr   r0
/* 080098 80085638 41820154 */  beq     lbl_8008578C
lbl_8008563C:
/* 08009C 8008563C 82C33294 */  lwz     r22, 0x3294(r3)
/* 0800A0 80085640 3B58FFF0 */  addi    r26, r24, -16
/* 0800A4 80085644 3B78FFF2 */  addi    r27, r24, -14
/* 0800A8 80085648 7C96CAAE */  lhax    r4, r22, r25
/* 0800AC 8008564C 3B990002 */  addi    r28, r25, 2
/* 0800B0 80085650 3BB8FFF4 */  addi    r29, r24, -12
/* 0800B4 80085654 7C96D32E */  sthx    r4, r22, r26
/* 0800B8 80085658 3BD70002 */  addi    r30, r23, 2
/* 0800BC 8008565C 3BF8FFF6 */  addi    r31, r24, -10
/* 0800C0 80085660 82C33294 */  lwz     r22, 0x3294(r3)
/* 0800C4 80085664 39990004 */  addi    r12, r25, 4
/* 0800C8 80085668 3978FFF8 */  addi    r11, r24, -8
/* 0800CC 8008566C 7C96BAAE */  lhax    r4, r22, r23
/* 0800D0 80085670 39570004 */  addi    r10, r23, 4
/* 0800D4 80085674 3938FFFA */  addi    r9, r24, -6
/* 0800D8 80085678 7C96DB2E */  sthx    r4, r22, r27
/* 0800DC 8008567C 39190006 */  addi    r8, r25, 6
/* 0800E0 80085680 38F8FFFC */  addi    r7, r24, -4
/* 0800E4 80085684 82C33294 */  lwz     r22, 0x3294(r3)
/* 0800E8 80085688 38D70006 */  addi    r6, r23, 6
/* 0800EC 8008568C 3818FFFE */  addi    r0, r24, -2
/* 0800F0 80085690 7C96E2AE */  lhax    r4, r22, r28
/* 0800F4 80085694 3B99000A */  addi    r28, r25, 0xa
/* 0800F8 80085698 3B580000 */  addi    r26, r24, 0
/* 0800FC 8008569C 7C96EB2E */  sthx    r4, r22, r29
/* 080100 800856A0 3B780002 */  addi    r27, r24, 2
/* 080104 800856A4 3BB80004 */  addi    r29, r24, 4
/* 080108 800856A8 82C33294 */  lwz     r22, 0x3294(r3)
/* 08010C 800856AC 7C96F2AE */  lhax    r4, r22, r30
/* 080110 800856B0 3BD7000A */  addi    r30, r23, 0xa
/* 080114 800856B4 7C96FB2E */  sthx    r4, r22, r31
/* 080118 800856B8 3BF80006 */  addi    r31, r24, 6
/* 08011C 800856BC 82C33294 */  lwz     r22, 0x3294(r3)
/* 080120 800856C0 7C9662AE */  lhax    r4, r22, r12
/* 080124 800856C4 3999000C */  addi    r12, r25, 0xc
/* 080128 800856C8 7C965B2E */  sthx    r4, r22, r11
/* 08012C 800856CC 39780008 */  addi    r11, r24, 8
/* 080130 800856D0 82C33294 */  lwz     r22, 0x3294(r3)
/* 080134 800856D4 7C9652AE */  lhax    r4, r22, r10
/* 080138 800856D8 3957000C */  addi    r10, r23, 0xc
/* 08013C 800856DC 7C964B2E */  sthx    r4, r22, r9
/* 080140 800856E0 3938000A */  addi    r9, r24, 0xa
/* 080144 800856E4 82C33294 */  lwz     r22, 0x3294(r3)
/* 080148 800856E8 7C9642AE */  lhax    r4, r22, r8
/* 08014C 800856EC 3919000E */  addi    r8, r25, 0xe
/* 080150 800856F0 3B390008 */  addi    r25, r25, 8
/* 080154 800856F4 7C963B2E */  sthx    r4, r22, r7
/* 080158 800856F8 38F8000C */  addi    r7, r24, 0xc
/* 08015C 800856FC 82C33294 */  lwz     r22, 0x3294(r3)
/* 080160 80085700 7C9632AE */  lhax    r4, r22, r6
/* 080164 80085704 38D7000E */  addi    r6, r23, 0xe
/* 080168 80085708 3AF70008 */  addi    r23, r23, 8
/* 08016C 8008570C 7C96032E */  sthx    r4, r22, r0
/* 080170 80085710 3818000E */  addi    r0, r24, 0xe
/* 080174 80085714 3B180020 */  addi    r24, r24, 0x20
/* 080178 80085718 82C33294 */  lwz     r22, 0x3294(r3)
/* 08017C 8008571C 7C96CAAE */  lhax    r4, r22, r25
/* 080180 80085720 3B390008 */  addi    r25, r25, 8
/* 080184 80085724 7C96D32E */  sthx    r4, r22, r26
/* 080188 80085728 82C33294 */  lwz     r22, 0x3294(r3)
/* 08018C 8008572C 7C96BAAE */  lhax    r4, r22, r23
/* 080190 80085730 3AF70008 */  addi    r23, r23, 8
/* 080194 80085734 7C96DB2E */  sthx    r4, r22, r27
/* 080198 80085738 82C33294 */  lwz     r22, 0x3294(r3)
/* 08019C 8008573C 7C96E2AE */  lhax    r4, r22, r28
/* 0801A0 80085740 7C96EB2E */  sthx    r4, r22, r29
/* 0801A4 80085744 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801A8 80085748 7C96F2AE */  lhax    r4, r22, r30
/* 0801AC 8008574C 7C96FB2E */  sthx    r4, r22, r31
/* 0801B0 80085750 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801B4 80085754 7C9662AE */  lhax    r4, r22, r12
/* 0801B8 80085758 7C965B2E */  sthx    r4, r22, r11
/* 0801BC 8008575C 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801C0 80085760 7C9652AE */  lhax    r4, r22, r10
/* 0801C4 80085764 7C964B2E */  sthx    r4, r22, r9
/* 0801C8 80085768 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801CC 8008576C 7C9642AE */  lhax    r4, r22, r8
/* 0801D0 80085770 7C963B2E */  sthx    r4, r22, r7
/* 0801D4 80085774 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801D8 80085778 7C9632AE */  lhax    r4, r22, r6
/* 0801DC 8008577C 7C96032E */  sthx    r4, r22, r0
/* 0801E0 80085780 4200FEBC */  bdnz    lbl_8008563C
/* 0801E4 80085784 70A50001 */  andi.   r5, r5, 1
/* 0801E8 80085788 418200B0 */  beq     lbl_80085838
lbl_8008578C:
/* 0801EC 8008578C 7CA903A6 */  mtctr   r5
lbl_80085790:
/* 0801F0 80085790 82C33294 */  lwz     r22, 0x3294(r3)
/* 0801F4 80085794 3B58FFF0 */  addi    r26, r24, -16
/* 0801F8 80085798 3B78FFF2 */  addi    r27, r24, -14
/* 0801FC 8008579C 7C96CAAE */  lhax    r4, r22, r25
/* 080200 800857A0 3B990002 */  addi    r28, r25, 2
/* 080204 800857A4 3BB8FFF4 */  addi    r29, r24, -12
/* 080208 800857A8 7C96D32E */  sthx    r4, r22, r26
/* 08020C 800857AC 3BD70002 */  addi    r30, r23, 2
/* 080210 800857B0 3BF8FFF6 */  addi    r31, r24, -10
/* 080214 800857B4 82C33294 */  lwz     r22, 0x3294(r3)
/* 080218 800857B8 39990004 */  addi    r12, r25, 4
/* 08021C 800857BC 39190006 */  addi    r8, r25, 6
/* 080220 800857C0 7C96BAAE */  lhax    r4, r22, r23
/* 080224 800857C4 3978FFF8 */  addi    r11, r24, -8
/* 080228 800857C8 39570004 */  addi    r10, r23, 4
/* 08022C 800857CC 7C96DB2E */  sthx    r4, r22, r27
/* 080230 800857D0 38D70006 */  addi    r6, r23, 6
/* 080234 800857D4 3938FFFA */  addi    r9, r24, -6
/* 080238 800857D8 82C33294 */  lwz     r22, 0x3294(r3)
/* 08023C 800857DC 38F8FFFC */  addi    r7, r24, -4
/* 080240 800857E0 3818FFFE */  addi    r0, r24, -2
/* 080244 800857E4 7C96E2AE */  lhax    r4, r22, r28
/* 080248 800857E8 3B180010 */  addi    r24, r24, 0x10
/* 08024C 800857EC 3B390008 */  addi    r25, r25, 8
/* 080250 800857F0 7C96EB2E */  sthx    r4, r22, r29
/* 080254 800857F4 3AF70008 */  addi    r23, r23, 8
/* 080258 800857F8 82C33294 */  lwz     r22, 0x3294(r3)
/* 08025C 800857FC 7C96F2AE */  lhax    r4, r22, r30
/* 080260 80085800 7C96FB2E */  sthx    r4, r22, r31
/* 080264 80085804 82C33294 */  lwz     r22, 0x3294(r3)
/* 080268 80085808 7C9662AE */  lhax    r4, r22, r12
/* 08026C 8008580C 7C965B2E */  sthx    r4, r22, r11
/* 080270 80085810 82C33294 */  lwz     r22, 0x3294(r3)
/* 080274 80085814 7C9652AE */  lhax    r4, r22, r10
/* 080278 80085818 7C964B2E */  sthx    r4, r22, r9
/* 08027C 8008581C 82C33294 */  lwz     r22, 0x3294(r3)
/* 080280 80085820 7C9642AE */  lhax    r4, r22, r8
/* 080284 80085824 7C963B2E */  sthx    r4, r22, r7
/* 080288 80085828 82C33294 */  lwz     r22, 0x3294(r3)
/* 08028C 8008582C 7C9632AE */  lhax    r4, r22, r6
/* 080290 80085830 7C96032E */  sthx    r4, r22, r0
/* 080294 80085834 4200FF5C */  bdnz    lbl_80085790
lbl_80085838:
/* 080298 80085838 BAC10018 */  lmw     r22, 0x18(r1)
/* 08029C 8008583C 38600001 */  li      r3, 1
/* 0802A0 80085840 38210040 */  addi    r1, r1, 0x40
/* 0802A4 80085844 4E800020 */  blr     