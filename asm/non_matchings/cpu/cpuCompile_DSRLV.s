glabel cpuCompile_DSRLV
/* 0664F8 8006BA98 7C0802A6 */  mflr    r0
/* 0664FC 8006BA9C 90010004 */  stw     r0, 4(r1)
/* 066500 8006BAA0 38000010 */  li      r0, 0x10
/* 066504 8006BAA4 5400103A */  slwi    r0, r0, 2
/* 066508 8006BAA8 9421FFE0 */  stwu    r1, -0x20(r1)
/* 06650C 8006BAAC 93E1001C */  stw     r31, 0x1c(r1)
/* 066510 8006BAB0 3BE40000 */  addi    r31, r4, 0
/* 066514 8006BAB4 38610010 */  addi    r3, r1, 0x10
/* 066518 8006BAB8 64043000 */  oris    r4, r0, 0x3000
/* 06651C 8006BABC 4BF9B6F9 */  bl      xlHeapTake
/* 066520 8006BAC0 2C030000 */  cmpwi   r3, 0
/* 066524 8006BAC4 4082000C */  bne     lbl_8006BAD0
/* 066528 8006BAC8 38600000 */  li      r3, 0
/* 06652C 8006BACC 480001A0 */  b       lbl_8006BC6C
lbl_8006BAD0:
/* 066530 8006BAD0 80010010 */  lwz     r0, 0x10(r1)
/* 066534 8006BAD4 3D007CC6 */  lis     r8, 0x7cc6
/* 066538 8006BAD8 3D807CA8 */  lis     r12, 0x7ca8
/* 06653C 8006BADC 901F0000 */  stw     r0, 0(r31)
/* 066540 8006BAE0 3CA09422 */  lis     r5, 0x9422
/* 066544 8006BAE4 38000000 */  li      r0, 0
/* 066548 8006BAE8 80610010 */  lwz     r3, 0x10(r1)
/* 06654C 8006BAEC 3C8070E7 */  lis     r4, 0x70e7
/* 066550 8006BAF0 38A5FFE8 */  addi    r5, r5, -24
/* 066554 8006BAF4 5400103A */  slwi    r0, r0, 2
/* 066558 8006BAF8 7CA3012E */  stwx    r5, r3, r0
/* 06655C 8006BAFC 38000001 */  li      r0, 1
/* 066560 8006BB00 3CA09121 */  lis     r5, 0x9121
/* 066564 8006BB04 80610010 */  lwz     r3, 0x10(r1)
/* 066568 8006BB08 3884003F */  addi    r4, r4, 0x3f
/* 06656C 8006BB0C 5400103A */  slwi    r0, r0, 2
/* 066570 8006BB10 7C83012E */  stwx    r4, r3, r0
/* 066574 8006BB14 38000002 */  li      r0, 2
/* 066578 8006BB18 3C802127 */  lis     r4, 0x2127
/* 06657C 8006BB1C 80610010 */  lwz     r3, 0x10(r1)
/* 066580 8006BB20 38A50010 */  addi    r5, r5, 0x10
/* 066584 8006BB24 5400103A */  slwi    r0, r0, 2
/* 066588 8006BB28 7CA3012E */  stwx    r5, r3, r0
/* 06658C 8006BB2C 38000003 */  li      r0, 3
/* 066590 8006BB30 3CA09101 */  lis     r5, 0x9101
/* 066594 8006BB34 80610010 */  lwz     r3, 0x10(r1)
/* 066598 8006BB38 38840020 */  addi    r4, r4, 0x20
/* 06659C 8006BB3C 5400103A */  slwi    r0, r0, 2
/* 0665A0 8006BB40 7C83012E */  stwx    r4, r3, r0
/* 0665A4 8006BB44 38000004 */  li      r0, 4
/* 0665A8 8006BB48 38800005 */  li      r4, 5
/* 0665AC 8006BB4C 80610010 */  lwz     r3, 0x10(r1)
/* 0665B0 8006BB50 38A50008 */  addi    r5, r5, 8
/* 0665B4 8006BB54 5400103A */  slwi    r0, r0, 2
/* 0665B8 8006BB58 7CA3012E */  stwx    r5, r3, r0
/* 0665BC 8006BB5C 38600006 */  li      r3, 6
/* 0665C0 8006BB60 38000007 */  li      r0, 7
/* 0665C4 8006BB64 80A10010 */  lwz     r5, 0x10(r1)
/* 0665C8 8006BB68 38C83C30 */  addi    r6, r8, 0x3c30
/* 0665CC 8006BB6C 5484103A */  slwi    r4, r4, 2
/* 0665D0 8006BB70 7CC5212E */  stwx    r6, r5, r4
/* 0665D4 8006BB74 3CE03928 */  lis     r7, 0x3928
/* 0665D8 8006BB78 38A00008 */  li      r5, 8
/* 0665DC 8006BB7C 80810010 */  lwz     r4, 0x10(r1)
/* 0665E0 8006BB80 38CC4830 */  addi    r6, r12, 0x4830
/* 0665E4 8006BB84 5463103A */  slwi    r3, r3, 2
/* 0665E8 8006BB88 7CC4192E */  stwx    r6, r4, r3
/* 0665EC 8006BB8C 38800009 */  li      r4, 9
/* 0665F0 8006BB90 3860000A */  li      r3, 0xa
/* 0665F4 8006BB94 80C10010 */  lwz     r6, 0x10(r1)
/* 0665F8 8006BB98 39284378 */  addi    r9, r8, 0x4378
/* 0665FC 8006BB9C 5400103A */  slwi    r0, r0, 2
/* 066600 8006BBA0 7D26012E */  stwx    r9, r6, r0
/* 066604 8006BBA4 3D607CA5 */  lis     r11, 0x7ca5
/* 066608 8006BBA8 3800000B */  li      r0, 0xb
/* 06660C 8006BBAC 80C10010 */  lwz     r6, 0x10(r1)
/* 066610 8006BBB0 38E7FFE0 */  addi    r7, r7, -32
/* 066614 8006BBB4 54A5103A */  slwi    r5, r5, 2
/* 066618 8006BBB8 7CE6292E */  stwx    r7, r6, r5
/* 06661C 8006BBBC 3D408101 */  lis     r10, 0x8101
/* 066620 8006BBC0 3900000C */  li      r8, 0xc
/* 066624 8006BBC4 80A10010 */  lwz     r5, 0x10(r1)
/* 066628 8006BBC8 38CC4C30 */  addi    r6, r12, 0x4c30
/* 06662C 8006BBCC 5484103A */  slwi    r4, r4, 2
/* 066630 8006BBD0 7CC5212E */  stwx    r6, r5, r4
/* 066634 8006BBD4 3CE08121 */  lis     r7, 0x8121
/* 066638 8006BBD8 38C0000D */  li      r6, 0xd
/* 06663C 8006BBDC 80810010 */  lwz     r4, 0x10(r1)
/* 066640 8006BBE0 5463103A */  slwi    r3, r3, 2
/* 066644 8006BBE4 3CA03821 */  lis     r5, 0x3821
/* 066648 8006BBE8 7D24192E */  stwx    r9, r4, r3
/* 06664C 8006BBEC 3880000E */  li      r4, 0xe
/* 066650 8006BBF0 3C604E80 */  lis     r3, 0x4e80
/* 066654 8006BBF4 81210010 */  lwz     r9, 0x10(r1)
/* 066658 8006BBF8 396B3C30 */  addi    r11, r11, 0x3c30
/* 06665C 8006BBFC 5400103A */  slwi    r0, r0, 2
/* 066660 8006BC00 7D69012E */  stwx    r11, r9, r0
/* 066664 8006BC04 3800000F */  li      r0, 0xf
/* 066668 8006BC08 39600010 */  li      r11, 0x10
/* 06666C 8006BC0C 81210010 */  lwz     r9, 0x10(r1)
/* 066670 8006BC10 394A0008 */  addi    r10, r10, 8
/* 066674 8006BC14 5508103A */  slwi    r8, r8, 2
/* 066678 8006BC18 7D49412E */  stwx    r10, r9, r8
/* 06667C 8006BC1C 557F103A */  slwi    r31, r11, 2
/* 066680 8006BC20 39270010 */  addi    r9, r7, 0x10
/* 066684 8006BC24 81010010 */  lwz     r8, 0x10(r1)
/* 066688 8006BC28 54C6103A */  slwi    r6, r6, 2
/* 06668C 8006BC2C 38E50018 */  addi    r7, r5, 0x18
/* 066690 8006BC30 7D28312E */  stwx    r9, r8, r6
/* 066694 8006BC34 5486103A */  slwi    r6, r4, 2
/* 066698 8006BC38 38A30020 */  addi    r5, r3, 0x20
/* 06669C 8006BC3C 80610010 */  lwz     r3, 0x10(r1)
/* 0666A0 8006BC40 5400103A */  slwi    r0, r0, 2
/* 0666A4 8006BC44 389F0000 */  addi    r4, r31, 0
/* 0666A8 8006BC48 7CE3312E */  stwx    r7, r3, r6
/* 0666AC 8006BC4C 80610010 */  lwz     r3, 0x10(r1)
/* 0666B0 8006BC50 7CA3012E */  stwx    r5, r3, r0
/* 0666B4 8006BC54 80610010 */  lwz     r3, 0x10(r1)
/* 0666B8 8006BC58 48031B55 */  bl      DCStoreRange
/* 0666BC 8006BC5C 80610010 */  lwz     r3, 0x10(r1)
/* 0666C0 8006BC60 7FE4FB78 */  mr      r4, r31
/* 0666C4 8006BC64 48031BD1 */  bl      ICInvalidateRange
/* 0666C8 8006BC68 38600001 */  li      r3, 1
lbl_8006BC6C:
/* 0666CC 8006BC6C 80010024 */  lwz     r0, 0x24(r1)
/* 0666D0 8006BC70 83E1001C */  lwz     r31, 0x1c(r1)
/* 0666D4 8006BC74 38210020 */  addi    r1, r1, 0x20
/* 0666D8 8006BC78 7C0803A6 */  mtlr    r0
/* 0666DC 8006BC7C 4E800020 */  blr     
