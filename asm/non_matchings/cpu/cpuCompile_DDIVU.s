glabel cpuCompile_DDIVU
/* 065104 8006A6A4 7C0802A6 */  mflr    r0
/* 065108 8006A6A8 90010004 */  stw     r0, 4(r1)
/* 06510C 8006A6AC 3800002B */  li      r0, 0x2b
/* 065110 8006A6B0 5400103A */  slwi    r0, r0, 2
/* 065114 8006A6B4 9421FFC8 */  stwu    r1, -0x38(r1)
/* 065118 8006A6B8 BF010018 */  stmw    r24, 0x18(r1)
/* 06511C 8006A6BC 3BE30000 */  addi    r31, r3, 0
/* 065120 8006A6C0 3B040000 */  addi    r24, r4, 0
/* 065124 8006A6C4 38610010 */  addi    r3, r1, 0x10
/* 065128 8006A6C8 64043000 */  oris    r4, r0, 0x3000
/* 06512C 8006A6CC 4BF9CAE9 */  bl      xlHeapTake
/* 065130 8006A6D0 2C030000 */  cmpwi   r3, 0
/* 065134 8006A6D4 4082000C */  bne     lbl_8006A6E0
/* 065138 8006A6D8 38600000 */  li      r3, 0
/* 06513C 8006A6DC 480003D0 */  b       lbl_8006AAAC
lbl_8006A6E0:
/* 065140 8006A6E0 80610010 */  lwz     r3, 0x10(r1)
/* 065144 8006A6E4 3CC038A0 */  lis     r6, 0x38a0
/* 065148 8006A6E8 38000000 */  li      r0, 0
/* 06514C 8006A6EC 90780000 */  stw     r3, 0(r24)
/* 065150 8006A6F0 38800001 */  li      r4, 1
/* 065154 8006A6F4 38600002 */  li      r3, 2
/* 065158 8006A6F8 80A10010 */  lwz     r5, 0x10(r1)
/* 06515C 8006A6FC 3D003D81 */  lis     r8, 0x3d81
/* 065160 8006A700 38C60040 */  addi    r6, r6, 0x40
/* 065164 8006A704 5400103A */  slwi    r0, r0, 2
/* 065168 8006A708 7CC5012E */  stwx    r6, r5, r0
/* 06516C 8006A70C 38000003 */  li      r0, 3
/* 065170 8006A710 3CE0618D */  lis     r7, 0x618d
/* 065174 8006A714 80A10010 */  lwz     r5, 0x10(r1)
/* 065178 8006A718 5484103A */  slwi    r4, r4, 2
/* 06517C 8006A71C 3CC038C0 */  lis     r6, 0x38c0
/* 065180 8006A720 7CC5212E */  stwx    r6, r5, r4
/* 065184 8006A724 38A00004 */  li      r5, 4
/* 065188 8006A728 38800005 */  li      r4, 5
/* 06518C 8006A72C 80C10010 */  lwz     r6, 0x10(r1)
/* 065190 8006A730 5463103A */  slwi    r3, r3, 2
/* 065194 8006A734 3D2038E0 */  lis     r9, 0x38e0
/* 065198 8006A738 7D26192E */  stwx    r9, r6, r3
/* 06519C 8006A73C 3D404180 */  lis     r10, 0x4180
/* 0651A0 8006A740 38600006 */  li      r3, 6
/* 0651A4 8006A744 80C10010 */  lwz     r6, 0x10(r1)
/* 0651A8 8006A748 3908FFFF */  addi    r8, r8, -1
/* 0651AC 8006A74C 5400103A */  slwi    r0, r0, 2
/* 0651B0 8006A750 7D06012E */  stwx    r8, r6, r0
/* 0651B4 8006A754 3D2054C6 */  lis     r9, 0x54c6
/* 0651B8 8006A758 38000007 */  li      r0, 7
/* 0651BC 8006A75C 80C10010 */  lwz     r6, 0x10(r1)
/* 0651C0 8006A760 38E7FFFE */  addi    r7, r7, -2
/* 0651C4 8006A764 54A5103A */  slwi    r5, r5, 2
/* 0651C8 8006A768 7CE6292E */  stwx    r7, r6, r5
/* 0651CC 8006A76C 3D0050E6 */  lis     r8, 0x50e6
/* 0651D0 8006A770 39800008 */  li      r12, 8
/* 0651D4 8006A774 80A10010 */  lwz     r5, 0x10(r1)
/* 0651D8 8006A778 5484103A */  slwi    r4, r4, 2
/* 0651DC 8006A77C 3D602C06 */  lis     r11, 0x2c06
/* 0651E0 8006A780 7D65212E */  stwx    r11, r5, r4
/* 0651E4 8006A784 3CE054E7 */  lis     r7, 0x54e7
/* 0651E8 8006A788 38A00009 */  li      r5, 9
/* 0651EC 8006A78C 80810010 */  lwz     r4, 0x10(r1)
/* 0651F0 8006A790 38CA002C */  addi    r6, r10, 0x2c
/* 0651F4 8006A794 5463103A */  slwi    r3, r3, 2
/* 0651F8 8006A798 7CC4192E */  stwx    r6, r4, r3
/* 0651FC 8006A79C 3CC05107 */  lis     r6, 0x5107
/* 065200 8006A7A0 3880000A */  li      r4, 0xa
/* 065204 8006A7A4 80610010 */  lwz     r3, 0x10(r1)
/* 065208 8006A7A8 3929083C */  addi    r9, r9, 0x83c
/* 06520C 8006A7AC 5400103A */  slwi    r0, r0, 2
/* 065210 8006A7B0 7D23012E */  stwx    r9, r3, r0
/* 065214 8006A7B4 3C605508 */  lis     r3, 0x5508
/* 065218 8006A7B8 3800000B */  li      r0, 0xb
/* 06521C 8006A7BC 83010010 */  lwz     r24, 0x10(r1)
/* 065220 8006A7C0 39080FFE */  addi    r8, r8, 0xffe
/* 065224 8006A7C4 558C103A */  slwi    r12, r12, 2
/* 065228 8006A7C8 7D18612E */  stwx    r8, r24, r12
/* 06522C 8006A7CC 3F405128 */  lis     r26, 0x5128
/* 065230 8006A7D0 3B20000C */  li      r25, 0xc
/* 065234 8006A7D4 81810010 */  lwz     r12, 0x10(r1)
/* 065238 8006A7D8 38E7083C */  addi    r7, r7, 0x83c
/* 06523C 8006A7DC 54A5103A */  slwi    r5, r5, 2
/* 065240 8006A7E0 7CEC292E */  stwx    r7, r12, r5
/* 065244 8006A7E4 3CA05529 */  lis     r5, 0x5529
/* 065248 8006A7E8 3B00000D */  li      r24, 0xd
/* 06524C 8006A7EC 81810010 */  lwz     r12, 0x10(r1)
/* 065250 8006A7F0 38C60FFE */  addi    r6, r6, 0xffe
/* 065254 8006A7F4 5484103A */  slwi    r4, r4, 2
/* 065258 8006A7F8 7CCC212E */  stwx    r6, r12, r4
/* 06525C 8006A7FC 3D807CEB */  lis     r12, 0x7ceb
/* 065260 8006A800 3880000E */  li      r4, 0xe
/* 065264 8006A804 83610010 */  lwz     r27, 0x10(r1)
/* 065268 8006A808 3863083C */  addi    r3, r3, 0x83c
/* 06526C 8006A80C 5400103A */  slwi    r0, r0, 2
/* 065270 8006A810 7C7B012E */  stwx    r3, r27, r0
/* 065274 8006A814 381A0FFE */  addi    r0, r26, 0xffe
/* 065278 8006A818 573A103A */  slwi    r26, r25, 2
/* 06527C 8006A81C 83610010 */  lwz     r27, 0x10(r1)
/* 065280 8006A820 38A5083C */  addi    r5, r5, 0x83c
/* 065284 8006A824 5719103A */  slwi    r25, r24, 2
/* 065288 8006A828 7C1BD12E */  stwx    r0, r27, r26
/* 06528C 8006A82C 3B0C3810 */  addi    r24, r12, 0x3810
/* 065290 8006A830 5484103A */  slwi    r4, r4, 2
/* 065294 8006A834 81810010 */  lwz     r12, 0x10(r1)
/* 065298 8006A838 7CACC92E */  stwx    r5, r12, r25
/* 06529C 8006A83C 81810010 */  lwz     r12, 0x10(r1)
/* 0652A0 8006A840 7F0C212E */  stwx    r24, r12, r4
/* 0652A4 8006A844 3D807CCA */  lis     r12, 0x7cca
/* 0652A8 8006A848 83010010 */  lwz     r24, 0x10(r1)
/* 0652AC 8006A84C 3880000F */  li      r4, 0xf
/* 0652B0 8006A850 3B2C3110 */  addi    r25, r12, 0x3110
/* 0652B4 8006A854 548C103A */  slwi    r12, r4, 2
/* 0652B8 8006A858 3C804280 */  lis     r4, 0x4280
/* 0652BC 8006A85C 7F38612E */  stwx    r25, r24, r12
/* 0652C0 8006A860 39800010 */  li      r12, 0x10
/* 0652C4 8006A864 83010010 */  lwz     r24, 0x10(r1)
/* 0652C8 8006A868 3B240028 */  addi    r25, r4, 0x28
/* 0652CC 8006A86C 558C103A */  slwi    r12, r12, 2
/* 0652D0 8006A870 7F38612E */  stwx    r25, r24, r12
/* 0652D4 8006A874 39800011 */  li      r12, 0x11
/* 0652D8 8006A878 5599103A */  slwi    r25, r12, 2
/* 0652DC 8006A87C 83410010 */  lwz     r26, 0x10(r1)
/* 0652E0 8006A880 3B000012 */  li      r24, 0x12
/* 0652E4 8006A884 39800013 */  li      r12, 0x13
/* 0652E8 8006A888 7D3AC92E */  stwx    r9, r26, r25
/* 0652EC 8006A88C 39200014 */  li      r9, 0x14
/* 0652F0 8006A890 571A103A */  slwi    r26, r24, 2
/* 0652F4 8006A894 83610010 */  lwz     r27, 0x10(r1)
/* 0652F8 8006A898 3B000015 */  li      r24, 0x15
/* 0652FC 8006A89C 3B200016 */  li      r25, 0x16
/* 065300 8006A8A0 7D1BD12E */  stwx    r8, r27, r26
/* 065304 8006A8A4 3B400017 */  li      r26, 0x17
/* 065308 8006A8A8 5588103A */  slwi    r8, r12, 2
/* 06530C 8006A8AC 81810010 */  lwz     r12, 0x10(r1)
/* 065310 8006A8B0 3F607CE7 */  lis     r27, 0x7ce7
/* 065314 8006A8B4 3B800018 */  li      r28, 0x18
/* 065318 8006A8B8 7CEC412E */  stwx    r7, r12, r8
/* 06531C 8006A8BC 3FA07CC6 */  lis     r29, 0x7cc6
/* 065320 8006A8C0 5527103A */  slwi    r7, r9, 2
/* 065324 8006A8C4 81010010 */  lwz     r8, 0x10(r1)
/* 065328 8006A8C8 3BC00019 */  li      r30, 0x19
/* 06532C 8006A8CC 3980001A */  li      r12, 0x1a
/* 065330 8006A8D0 7CC8392E */  stwx    r6, r8, r7
/* 065334 8006A8D4 3920001B */  li      r9, 0x1b
/* 065338 8006A8D8 5706103A */  slwi    r6, r24, 2
/* 06533C 8006A8DC 83010010 */  lwz     r24, 0x10(r1)
/* 065340 8006A8E0 3D006129 */  lis     r8, 0x6129
/* 065344 8006A8E4 38E0001C */  li      r7, 0x1c
/* 065348 8006A8E8 7C78312E */  stwx    r3, r24, r6
/* 06534C 8006A8EC 38C0001D */  li      r6, 0x1d
/* 065350 8006A8F0 5739103A */  slwi    r25, r25, 2
/* 065354 8006A8F4 83010010 */  lwz     r24, 0x10(r1)
/* 065358 8006A8F8 575A103A */  slwi    r26, r26, 2
/* 06535C 8006A8FC 387B5814 */  addi    r3, r27, 0x5814
/* 065360 8006A900 7C18C92E */  stwx    r0, r24, r25
/* 065364 8006A904 579C103A */  slwi    r28, r28, 2
/* 065368 8006A908 381D5114 */  addi    r0, r29, 0x5114
/* 06536C 8006A90C 83610010 */  lwz     r27, 0x10(r1)
/* 065370 8006A910 57DE103A */  slwi    r30, r30, 2
/* 065374 8006A914 558C103A */  slwi    r12, r12, 2
/* 065378 8006A918 7CBBD12E */  stwx    r5, r27, r26
/* 06537C 8006A91C 394A000C */  addi    r10, r10, 0xc
/* 065380 8006A920 5529103A */  slwi    r9, r9, 2
/* 065384 8006A924 83A10010 */  lwz     r29, 0x10(r1)
/* 065388 8006A928 39080001 */  addi    r8, r8, 1
/* 06538C 8006A92C 54E5103A */  slwi    r5, r7, 2
/* 065390 8006A930 7C7DE12E */  stwx    r3, r29, r28
/* 065394 8006A934 38E40008 */  addi    r7, r4, 8
/* 065398 8006A938 54C4103A */  slwi    r4, r6, 2
/* 06539C 8006A93C 80C10010 */  lwz     r6, 0x10(r1)
/* 0653A0 8006A940 7C06F12E */  stwx    r0, r6, r30
/* 0653A4 8006A944 80C10010 */  lwz     r6, 0x10(r1)
/* 0653A8 8006A948 7D66612E */  stwx    r11, r6, r12
/* 0653AC 8006A94C 80C10010 */  lwz     r6, 0x10(r1)
/* 0653B0 8006A950 7D46492E */  stwx    r10, r6, r9
/* 0653B4 8006A954 80C10010 */  lwz     r6, 0x10(r1)
/* 0653B8 8006A958 7D06292E */  stwx    r8, r6, r5
/* 0653BC 8006A95C 80A10010 */  lwz     r5, 0x10(r1)
/* 0653C0 8006A960 7CE5212E */  stwx    r7, r5, r4
/* 0653C4 8006A964 3CC07D29 */  lis     r6, 0x7d29
/* 0653C8 8006A968 80A10010 */  lwz     r5, 0x10(r1)
/* 0653CC 8006A96C 3880001E */  li      r4, 0x1e
/* 0653D0 8006A970 38C66038 */  addi    r6, r6, 0x6038
/* 0653D4 8006A974 5484103A */  slwi    r4, r4, 2
/* 0653D8 8006A978 7CC5212E */  stwx    r6, r5, r4
/* 0653DC 8006A97C 3CC038A6 */  lis     r6, 0x38a6
/* 0653E0 8006A980 3880001F */  li      r4, 0x1f
/* 0653E4 8006A984 80A10010 */  lwz     r5, 0x10(r1)
/* 0653E8 8006A988 38C6FFFF */  addi    r6, r6, -1
/* 0653EC 8006A98C 5484103A */  slwi    r4, r4, 2
/* 0653F0 8006A990 7CC5212E */  stwx    r6, r5, r4
/* 0653F4 8006A994 38800020 */  li      r4, 0x20
/* 0653F8 8006A998 5484103A */  slwi    r4, r4, 2
/* 0653FC 8006A99C 80C10010 */  lwz     r6, 0x10(r1)
/* 065400 8006A9A0 3CE02C05 */  lis     r7, 0x2c05
/* 065404 8006A9A4 3CA04083 */  lis     r5, 0x4083
/* 065408 8006A9A8 7CE6212E */  stwx    r7, r6, r4
/* 06540C 8006A9AC 38800021 */  li      r4, 0x21
/* 065410 8006A9B0 38E5FF90 */  addi    r7, r5, -112
/* 065414 8006A9B4 80C10010 */  lwz     r6, 0x10(r1)
/* 065418 8006A9B8 5485103A */  slwi    r5, r4, 2
/* 06541C 8006A9BC 38800022 */  li      r4, 0x22
/* 065420 8006A9C0 7CE6292E */  stwx    r7, r6, r5
/* 065424 8006A9C4 3CE04080 */  lis     r7, 0x4080
/* 065428 8006A9C8 5485103A */  slwi    r5, r4, 2
/* 06542C 8006A9CC 81010010 */  lwz     r8, 0x10(r1)
/* 065430 8006A9D0 38800023 */  li      r4, 0x23
/* 065434 8006A9D4 38C00024 */  li      r6, 0x24
/* 065438 8006A9D8 7D68292E */  stwx    r11, r8, r5
/* 06543C 8006A9DC 38A00025 */  li      r5, 0x25
/* 065440 8006A9E0 3927000C */  addi    r9, r7, 0xc
/* 065444 8006A9E4 81010010 */  lwz     r8, 0x10(r1)
/* 065448 8006A9E8 5487103A */  slwi    r7, r4, 2
/* 06544C 8006A9EC 389F0010 */  addi    r4, r31, 0x10
/* 065450 8006A9F0 7D28392E */  stwx    r9, r8, r7
/* 065454 8006A9F4 7D3F2050 */  subf    r9, r31, r4
/* 065458 8006A9F8 54C6103A */  slwi    r6, r6, 2
/* 06545C 8006A9FC 80E10010 */  lwz     r7, 0x10(r1)
/* 065460 8006AA00 38800026 */  li      r4, 0x26
/* 065464 8006AA04 3D099123 */  addis   r8, r9, 0x9123
/* 065468 8006AA08 7C67312E */  stwx    r3, r7, r6
/* 06546C 8006AA0C 38E00027 */  li      r7, 0x27
/* 065470 8006AA10 54A5103A */  slwi    r5, r5, 2
/* 065474 8006AA14 80C10010 */  lwz     r6, 0x10(r1)
/* 065478 8006AA18 387F0018 */  addi    r3, r31, 0x18
/* 06547C 8006AA1C 7D5F1850 */  subf    r10, r31, r3
/* 065480 8006AA20 7C06292E */  stwx    r0, r6, r5
/* 065484 8006AA24 38C00028 */  li      r6, 0x28
/* 065488 8006AA28 3D299103 */  addis   r9, r9, 0x9103
/* 06548C 8006AA2C 80610010 */  lwz     r3, 0x10(r1)
/* 065490 8006AA30 5480103A */  slwi    r0, r4, 2
/* 065494 8006AA34 3CAA90E3 */  addis   r5, r10, 0x90e3
/* 065498 8006AA38 7D23012E */  stwx    r9, r3, r0
/* 06549C 8006AA3C 38800029 */  li      r4, 0x29
/* 0654A0 8006AA40 39280004 */  addi    r9, r8, 4
/* 0654A4 8006AA44 81010010 */  lwz     r8, 0x10(r1)
/* 0654A8 8006AA48 54E0103A */  slwi    r0, r7, 2
/* 0654AC 8006AA4C 3C604E80 */  lis     r3, 0x4e80
/* 0654B0 8006AA50 7D28012E */  stwx    r9, r8, r0
/* 0654B4 8006AA54 3800002A */  li      r0, 0x2a
/* 0654B8 8006AA58 3D0A90C3 */  addis   r8, r10, 0x90c3
/* 0654BC 8006AA5C 80E10010 */  lwz     r7, 0x10(r1)
/* 0654C0 8006AA60 54C6103A */  slwi    r6, r6, 2
/* 0654C4 8006AA64 3920002B */  li      r9, 0x2b
/* 0654C8 8006AA68 7D07312E */  stwx    r8, r7, r6
/* 0654CC 8006AA6C 5538103A */  slwi    r24, r9, 2
/* 0654D0 8006AA70 38E50004 */  addi    r7, r5, 4
/* 0654D4 8006AA74 80C10010 */  lwz     r6, 0x10(r1)
/* 0654D8 8006AA78 5484103A */  slwi    r4, r4, 2
/* 0654DC 8006AA7C 38A30020 */  addi    r5, r3, 0x20
/* 0654E0 8006AA80 7CE6212E */  stwx    r7, r6, r4
/* 0654E4 8006AA84 5400103A */  slwi    r0, r0, 2
/* 0654E8 8006AA88 38980000 */  addi    r4, r24, 0
/* 0654EC 8006AA8C 80610010 */  lwz     r3, 0x10(r1)
/* 0654F0 8006AA90 7CA3012E */  stwx    r5, r3, r0
/* 0654F4 8006AA94 80610010 */  lwz     r3, 0x10(r1)
/* 0654F8 8006AA98 48032D15 */  bl      DCStoreRange
/* 0654FC 8006AA9C 80610010 */  lwz     r3, 0x10(r1)
/* 065500 8006AAA0 7F04C378 */  mr      r4, r24
/* 065504 8006AAA4 48032D91 */  bl      ICInvalidateRange
/* 065508 8006AAA8 38600001 */  li      r3, 1
lbl_8006AAAC:
/* 06550C 8006AAAC BB010018 */  lmw     r24, 0x18(r1)
/* 065510 8006AAB0 8001003C */  lwz     r0, 0x3c(r1)
/* 065514 8006AAB4 38210038 */  addi    r1, r1, 0x38
/* 065518 8006AAB8 7C0803A6 */  mtlr    r0
/* 06551C 8006AABC 4E800020 */  blr     
