glabel frameCullDL
/* 0196E0 8001EC80 1CC4001C */  mulli   r6, r4, 0x1c
/* 0196E4 8001EC84 1C85001C */  mulli   r4, r5, 0x1c
/* 0196E8 8001EC88 3CA30004 */  addis   r5, r3, 4
/* 0196EC 8001EC8C 38C60358 */  addi    r6, r6, 0x358
/* 0196F0 8001EC90 38840358 */  addi    r4, r4, 0x358
/* 0196F4 8001EC94 38A5C7A0 */  addi    r5, r5, -14432
/* 0196F8 8001EC98 7CC33214 */  add     r6, r3, r6
/* 0196FC 8001EC9C 7C832214 */  add     r4, r3, r4
/* 019700 8001ECA0 38E000FF */  li      r7, 0xff
/* 019704 8001ECA4 48000004 */  b       lbl_8001ECA8
lbl_8001ECA8:
/* 019708 8001ECA8 3864001C */  addi    r3, r4, 0x1c
/* 01970C 8001ECAC 7C661850 */  subf    r3, r6, r3
/* 019710 8001ECB0 3800001C */  li      r0, 0x1c
/* 019714 8001ECB4 7C630396 */  divwu   r3, r3, r0
/* 019718 8001ECB8 7C062040 */  cmplw   r6, r4
/* 01971C 8001ECBC 7C6903A6 */  mtctr   r3
/* 019720 8001ECC0 41810104 */  bgt     lbl_8001EDC4
/* 019724 8001ECC4 48000004 */  b       lbl_8001ECC8
lbl_8001ECC8:
/* 019728 8001ECC8 C0E60010 */  lfs     f7, 0x10(r6)
/* 01972C 8001ECCC 38000000 */  li      r0, 0
/* 019730 8001ECD0 C005001C */  lfs     f0, 0x1c(r5)
/* 019734 8001ECD4 C0450010 */  lfs     f2, 0x10(r5)
/* 019738 8001ECD8 EC070032 */  fmuls   f0, f7, f0
/* 01973C 8001ECDC C106000C */  lfs     f8, 0xc(r6)
/* 019740 8001ECE0 C025000C */  lfs     f1, 0xc(r5)
/* 019744 8001ECE4 EC4700B2 */  fmuls   f2, f7, f2
/* 019748 8001ECE8 C0650000 */  lfs     f3, 0(r5)
/* 01974C 8001ECEC EC08007A */  fmadds  f0, f8, f1, f0
/* 019750 8001ECF0 C1260014 */  lfs     f9, 0x14(r6)
/* 019754 8001ECF4 C025002C */  lfs     f1, 0x2c(r5)
/* 019758 8001ECF8 ECA810FA */  fmadds  f5, f8, f3, f2
/* 01975C 8001ECFC C0650014 */  lfs     f3, 0x14(r5)
/* 019760 8001ED00 C0450018 */  lfs     f2, 0x18(r5)
/* 019764 8001ED04 EC09007A */  fmadds  f0, f9, f1, f0
/* 019768 8001ED08 C0C50020 */  lfs     f6, 0x20(r5)
/* 01976C 8001ED0C EC6700F2 */  fmuls   f3, f7, f3
/* 019770 8001ED10 C025003C */  lfs     f1, 0x3c(r5)
/* 019774 8001ED14 C0850004 */  lfs     f4, 4(r5)
/* 019778 8001ED18 ED41002A */  fadds   f10, f1, f0
/* 01977C 8001ED1C C0250008 */  lfs     f1, 8(r5)
/* 019780 8001ED20 EC0700B2 */  fmuls   f0, f7, f2
/* 019784 8001ED24 C0E50030 */  lfs     f7, 0x30(r5)
/* 019788 8001ED28 ECA929BA */  fmadds  f5, f9, f6, f5
/* 01978C 8001ED2C EC68193A */  fmadds  f3, f8, f4, f3
/* 019790 8001ED30 C0850024 */  lfs     f4, 0x24(r5)
/* 019794 8001ED34 EC28007A */  fmadds  f1, f8, f1, f0
/* 019798 8001ED38 C0450028 */  lfs     f2, 0x28(r5)
/* 01979C 8001ED3C ECC7282A */  fadds   f6, f7, f5
/* 0197A0 8001ED40 FC005050 */  fneg    f0, f10
/* 0197A4 8001ED44 C0A50034 */  lfs     f5, 0x34(r5)
/* 0197A8 8001ED48 EC89193A */  fmadds  f4, f9, f4, f3
/* 0197AC 8001ED4C C0650038 */  lfs     f3, 0x38(r5)
/* 0197B0 8001ED50 EC2908BA */  fmadds  f1, f9, f2, f1
/* 0197B4 8001ED54 FC060040 */  fcmpo   cr0, f6, f0
/* 0197B8 8001ED58 EC45202A */  fadds   f2, f5, f4
/* 0197BC 8001ED5C EC23082A */  fadds   f1, f3, f1
/* 0197C0 8001ED60 40800008 */  bge     lbl_8001ED68
/* 0197C4 8001ED64 60000001 */  ori     r0, r0, 1
lbl_8001ED68:
/* 0197C8 8001ED68 FC065040 */  fcmpo   cr0, f6, f10
/* 0197CC 8001ED6C 40810008 */  ble     lbl_8001ED74
/* 0197D0 8001ED70 60000002 */  ori     r0, r0, 2
lbl_8001ED74:
/* 0197D4 8001ED74 FC005050 */  fneg    f0, f10
/* 0197D8 8001ED78 FC020040 */  fcmpo   cr0, f2, f0
/* 0197DC 8001ED7C 40800008 */  bge     lbl_8001ED84
/* 0197E0 8001ED80 60000004 */  ori     r0, r0, 4
lbl_8001ED84:
/* 0197E4 8001ED84 FC025040 */  fcmpo   cr0, f2, f10
/* 0197E8 8001ED88 40810008 */  ble     lbl_8001ED90
/* 0197EC 8001ED8C 60000008 */  ori     r0, r0, 8
lbl_8001ED90:
/* 0197F0 8001ED90 FC010040 */  fcmpo   cr0, f1, f0
/* 0197F4 8001ED94 40800008 */  bge     lbl_8001ED9C
/* 0197F8 8001ED98 60000010 */  ori     r0, r0, 0x10
lbl_8001ED9C:
/* 0197FC 8001ED9C FC015040 */  fcmpo   cr0, f1, f10
/* 019800 8001EDA0 40810008 */  ble     lbl_8001EDA8
/* 019804 8001EDA4 60000020 */  ori     r0, r0, 0x20
lbl_8001EDA8:
/* 019808 8001EDA8 7CE70038 */  and     r7, r7, r0
/* 01980C 8001EDAC 2C070000 */  cmpwi   r7, 0
/* 019810 8001EDB0 4082000C */  bne     lbl_8001EDBC
/* 019814 8001EDB4 38600000 */  li      r3, 0
/* 019818 8001EDB8 48000010 */  b       lbl_8001EDC8
lbl_8001EDBC:
/* 01981C 8001EDBC 38C6001C */  addi    r6, r6, 0x1c
/* 019820 8001EDC0 4200FF08 */  bdnz    lbl_8001ECC8
lbl_8001EDC4:
/* 019824 8001EDC4 38600001 */  li      r3, 1
lbl_8001EDC8:
/* 019828 8001EDC8 4E800020 */  blr     
