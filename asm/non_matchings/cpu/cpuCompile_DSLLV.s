glabel cpuCompile_DSLLV
/* 0666E0 8006BC80 7C0802A6 */  mflr    r0
/* 0666E4 8006BC84 90010004 */  stw     r0, 4(r1)
/* 0666E8 8006BC88 38000010 */  li      r0, 0x10
/* 0666EC 8006BC8C 5400103A */  slwi    r0, r0, 2
/* 0666F0 8006BC90 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0666F4 8006BC94 93E1001C */  stw     r31, 0x1c(r1)
/* 0666F8 8006BC98 3BE40000 */  addi    r31, r4, 0
/* 0666FC 8006BC9C 38610010 */  addi    r3, r1, 0x10
/* 066700 8006BCA0 64043000 */  oris    r4, r0, 0x3000
/* 066704 8006BCA4 4BF9B511 */  bl      xlHeapTake
/* 066708 8006BCA8 2C030000 */  cmpwi   r3, 0
/* 06670C 8006BCAC 4082000C */  bne     lbl_8006BCB8
/* 066710 8006BCB0 38600000 */  li      r3, 0
/* 066714 8006BCB4 480001A0 */  b       lbl_8006BE54
lbl_8006BCB8:
/* 066718 8006BCB8 80010010 */  lwz     r0, 0x10(r1)
/* 06671C 8006BCBC 3D007CA5 */  lis     r8, 0x7ca5
/* 066720 8006BCC0 3D807CC8 */  lis     r12, 0x7cc8
/* 066724 8006BCC4 901F0000 */  stw     r0, 0(r31)
/* 066728 8006BCC8 3CA09422 */  lis     r5, 0x9422
/* 06672C 8006BCCC 38000000 */  li      r0, 0
/* 066730 8006BCD0 80610010 */  lwz     r3, 0x10(r1)
/* 066734 8006BCD4 3C8070E7 */  lis     r4, 0x70e7
/* 066738 8006BCD8 38A5FFE8 */  addi    r5, r5, -24
/* 06673C 8006BCDC 5400103A */  slwi    r0, r0, 2
/* 066740 8006BCE0 7CA3012E */  stwx    r5, r3, r0
/* 066744 8006BCE4 38000001 */  li      r0, 1
/* 066748 8006BCE8 3CA09121 */  lis     r5, 0x9121
/* 06674C 8006BCEC 80610010 */  lwz     r3, 0x10(r1)
/* 066750 8006BCF0 3884003F */  addi    r4, r4, 0x3f
/* 066754 8006BCF4 5400103A */  slwi    r0, r0, 2
/* 066758 8006BCF8 7C83012E */  stwx    r4, r3, r0
/* 06675C 8006BCFC 38000002 */  li      r0, 2
/* 066760 8006BD00 3C802127 */  lis     r4, 0x2127
/* 066764 8006BD04 80610010 */  lwz     r3, 0x10(r1)
/* 066768 8006BD08 38A50010 */  addi    r5, r5, 0x10
/* 06676C 8006BD0C 5400103A */  slwi    r0, r0, 2
/* 066770 8006BD10 7CA3012E */  stwx    r5, r3, r0
/* 066774 8006BD14 38000003 */  li      r0, 3
/* 066778 8006BD18 3CA09101 */  lis     r5, 0x9101
/* 06677C 8006BD1C 80610010 */  lwz     r3, 0x10(r1)
/* 066780 8006BD20 38840020 */  addi    r4, r4, 0x20
/* 066784 8006BD24 5400103A */  slwi    r0, r0, 2
/* 066788 8006BD28 7C83012E */  stwx    r4, r3, r0
/* 06678C 8006BD2C 38000004 */  li      r0, 4
/* 066790 8006BD30 38800005 */  li      r4, 5
/* 066794 8006BD34 80610010 */  lwz     r3, 0x10(r1)
/* 066798 8006BD38 38A50008 */  addi    r5, r5, 8
/* 06679C 8006BD3C 5400103A */  slwi    r0, r0, 2
/* 0667A0 8006BD40 7CA3012E */  stwx    r5, r3, r0
/* 0667A4 8006BD44 38600006 */  li      r3, 6
/* 0667A8 8006BD48 38000007 */  li      r0, 7
/* 0667AC 8006BD4C 80A10010 */  lwz     r5, 0x10(r1)
/* 0667B0 8006BD50 38C83830 */  addi    r6, r8, 0x3830
/* 0667B4 8006BD54 5484103A */  slwi    r4, r4, 2
/* 0667B8 8006BD58 7CC5212E */  stwx    r6, r5, r4
/* 0667BC 8006BD5C 3CE03928 */  lis     r7, 0x3928
/* 0667C0 8006BD60 38A00008 */  li      r5, 8
/* 0667C4 8006BD64 80810010 */  lwz     r4, 0x10(r1)
/* 0667C8 8006BD68 38CC4C30 */  addi    r6, r12, 0x4c30
/* 0667CC 8006BD6C 5463103A */  slwi    r3, r3, 2
/* 0667D0 8006BD70 7CC4192E */  stwx    r6, r4, r3
/* 0667D4 8006BD74 38800009 */  li      r4, 9
/* 0667D8 8006BD78 3860000A */  li      r3, 0xa
/* 0667DC 8006BD7C 80C10010 */  lwz     r6, 0x10(r1)
/* 0667E0 8006BD80 39284378 */  addi    r9, r8, 0x4378
/* 0667E4 8006BD84 5400103A */  slwi    r0, r0, 2
/* 0667E8 8006BD88 7D26012E */  stwx    r9, r6, r0
/* 0667EC 8006BD8C 3D607CC6 */  lis     r11, 0x7cc6
/* 0667F0 8006BD90 3800000B */  li      r0, 0xb
/* 0667F4 8006BD94 80C10010 */  lwz     r6, 0x10(r1)
/* 0667F8 8006BD98 38E7FFE0 */  addi    r7, r7, -32
/* 0667FC 8006BD9C 54A5103A */  slwi    r5, r5, 2
/* 066800 8006BDA0 7CE6292E */  stwx    r7, r6, r5
/* 066804 8006BDA4 3D408101 */  lis     r10, 0x8101
/* 066808 8006BDA8 3900000C */  li      r8, 0xc
/* 06680C 8006BDAC 80A10010 */  lwz     r5, 0x10(r1)
/* 066810 8006BDB0 38CC4830 */  addi    r6, r12, 0x4830
/* 066814 8006BDB4 5484103A */  slwi    r4, r4, 2
/* 066818 8006BDB8 7CC5212E */  stwx    r6, r5, r4
/* 06681C 8006BDBC 3CE08121 */  lis     r7, 0x8121
/* 066820 8006BDC0 38C0000D */  li      r6, 0xd
/* 066824 8006BDC4 80810010 */  lwz     r4, 0x10(r1)
/* 066828 8006BDC8 5463103A */  slwi    r3, r3, 2
/* 06682C 8006BDCC 3CA03821 */  lis     r5, 0x3821
/* 066830 8006BDD0 7D24192E */  stwx    r9, r4, r3
/* 066834 8006BDD4 3880000E */  li      r4, 0xe
/* 066838 8006BDD8 3C604E80 */  lis     r3, 0x4e80
/* 06683C 8006BDDC 81210010 */  lwz     r9, 0x10(r1)
/* 066840 8006BDE0 396B3830 */  addi    r11, r11, 0x3830
/* 066844 8006BDE4 5400103A */  slwi    r0, r0, 2
/* 066848 8006BDE8 7D69012E */  stwx    r11, r9, r0
/* 06684C 8006BDEC 3800000F */  li      r0, 0xf
/* 066850 8006BDF0 39600010 */  li      r11, 0x10
/* 066854 8006BDF4 81210010 */  lwz     r9, 0x10(r1)
/* 066858 8006BDF8 394A0008 */  addi    r10, r10, 8
/* 06685C 8006BDFC 5508103A */  slwi    r8, r8, 2
/* 066860 8006BE00 7D49412E */  stwx    r10, r9, r8
/* 066864 8006BE04 557F103A */  slwi    r31, r11, 2
/* 066868 8006BE08 39270010 */  addi    r9, r7, 0x10
/* 06686C 8006BE0C 81010010 */  lwz     r8, 0x10(r1)
/* 066870 8006BE10 54C6103A */  slwi    r6, r6, 2
/* 066874 8006BE14 38E50018 */  addi    r7, r5, 0x18
/* 066878 8006BE18 7D28312E */  stwx    r9, r8, r6
/* 06687C 8006BE1C 5486103A */  slwi    r6, r4, 2
/* 066880 8006BE20 38A30020 */  addi    r5, r3, 0x20
/* 066884 8006BE24 80610010 */  lwz     r3, 0x10(r1)
/* 066888 8006BE28 5400103A */  slwi    r0, r0, 2
/* 06688C 8006BE2C 389F0000 */  addi    r4, r31, 0
/* 066890 8006BE30 7CE3312E */  stwx    r7, r3, r6
/* 066894 8006BE34 80610010 */  lwz     r3, 0x10(r1)
/* 066898 8006BE38 7CA3012E */  stwx    r5, r3, r0
/* 06689C 8006BE3C 80610010 */  lwz     r3, 0x10(r1)
/* 0668A0 8006BE40 4803196D */  bl      DCStoreRange
/* 0668A4 8006BE44 80610010 */  lwz     r3, 0x10(r1)
/* 0668A8 8006BE48 7FE4FB78 */  mr      r4, r31
/* 0668AC 8006BE4C 480319E9 */  bl      ICInvalidateRange
/* 0668B0 8006BE50 38600001 */  li      r3, 1
lbl_8006BE54:
/* 0668B4 8006BE54 80010024 */  lwz     r0, 0x24(r1)
/* 0668B8 8006BE58 83E1001C */  lwz     r31, 0x1c(r1)
/* 0668BC 8006BE5C 38210020 */  addi    r1, r1, 0x20
/* 0668C0 8006BE60 7C0803A6 */  mtlr    r0
/* 0668C4 8006BE64 4E800020 */  blr     
