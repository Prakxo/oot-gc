glabel frameLoadVertex
/* 01982C 8001EDCC 7C0802A6 */  mflr    r0
/* 019830 8001EDD0 90010004 */  stw     r0, 4(r1)
/* 019834 8001EDD4 9421FF18 */  stwu    r1, -0xe8(r1)
/* 019838 8001EDD8 DBE100E0 */  stfd    f31, 0xe0(r1)
/* 01983C 8001EDDC DBC100D8 */  stfd    f30, 0xd8(r1)
/* 019840 8001EDE0 DBA100D0 */  stfd    f29, 0xd0(r1)
/* 019844 8001EDE4 DB8100C8 */  stfd    f28, 0xc8(r1)
/* 019848 8001EDE8 DB6100C0 */  stfd    f27, 0xc0(r1)
/* 01984C 8001EDEC BE210084 */  stmw    r17, 0x84(r1)
/* 019850 8001EDF0 7C7E1B78 */  mr      r30, r3
/* 019854 8001EDF4 7CB42B78 */  mr      r20, r5
/* 019858 8001EDF8 7CDF3378 */  mr      r31, r6
/* 01985C 8001EDFC 2C140000 */  cmpwi   r20, 0
/* 019860 8001EE00 381FFFFF */  addi    r0, r31, -1
/* 019864 8001EE04 7C982378 */  mr      r24, r4
/* 019868 8001EE08 7C972378 */  mr      r23, r4
/* 01986C 8001EE0C 7C140214 */  add     r0, r20, r0
/* 019870 8001EE10 4180001C */  blt     lbl_8001EE2C
/* 019874 8001EE14 2C140050 */  cmpwi   r20, 0x50
/* 019878 8001EE18 40800014 */  bge     lbl_8001EE2C
/* 01987C 8001EE1C 2C000000 */  cmpwi   r0, 0
/* 019880 8001EE20 4180000C */  blt     lbl_8001EE2C
/* 019884 8001EE24 2C000050 */  cmpwi   r0, 0x50
/* 019888 8001EE28 4180000C */  blt     lbl_8001EE34
lbl_8001EE2C:
/* 01988C 8001EE2C 38600000 */  li      r3, 0
/* 019890 8001EE30 480009F8 */  b       lbl_8001F828
lbl_8001EE34:
/* 019894 8001EE34 3FBE0004 */  addis   r29, r30, 4
/* 019898 8001EE38 801E008C */  lwz     r0, 0x8c(r30)
/* 01989C 8001EE3C 807DC4CC */  lwz     r3, -0x3b34(r29)
/* 0198A0 8001EE40 54000108 */  rlwinm  r0, r0, 0, 4, 4
/* 0198A4 8001EE44 54633032 */  slwi    r3, r3, 6
/* 0198A8 8001EE48 3EA30004 */  addis   r21, r3, 4
/* 0198AC 8001EE4C 3AB5C520 */  addi    r21, r21, -15072
/* 0198B0 8001EE50 28000000 */  cmplwi  r0, 0
/* 0198B4 8001EE54 7EBEAA14 */  add     r21, r30, r21
/* 0198B8 8001EE58 41820080 */  beq     lbl_8001EED8
/* 0198BC 8001EE5C 801E008C */  lwz     r0, 0x8c(r30)
/* 0198C0 8001EE60 54000252 */  rlwinm  r0, r0, 0, 9, 9
/* 0198C4 8001EE64 28000000 */  cmplwi  r0, 0
/* 0198C8 8001EE68 40820064 */  bne     lbl_8001EECC
/* 0198CC 8001EE6C 7FA4EB78 */  mr      r4, r29
/* 0198D0 8001EE70 7FA5EB78 */  mr      r5, r29
/* 0198D4 8001EE74 7EA3AB78 */  mr      r3, r21
/* 0198D8 8001EE78 3884C7E0 */  addi    r4, r4, -14368
/* 0198DC 8001EE7C 38A5C4D4 */  addi    r5, r5, -15148
/* 0198E0 8001EE80 48089301 */  bl      PSMTX44Concat
/* 0198E4 8001EE84 801E008C */  lwz     r0, 0x8c(r30)
/* 0198E8 8001EE88 64000040 */  oris    r0, r0, 0x40
/* 0198EC 8001EE8C 901E008C */  stw     r0, 0x8c(r30)
/* 0198F0 8001EE90 801DC4D0 */  lwz     r0, -0x3b30(r29)
/* 0198F4 8001EE94 2C00FFFF */  cmpwi   r0, -1
/* 0198F8 8001EE98 41820034 */  beq     lbl_8001EECC
/* 0198FC 8001EE9C 1C000024 */  mulli   r0, r0, 0x24
/* 019900 8001EEA0 7C9D0214 */  add     r4, r29, r0
/* 019904 8001EEA4 7FA3EB78 */  mr      r3, r29
/* 019908 8001EEA8 C024C824 */  lfs     f1, -0x37dc(r4)
/* 01990C 8001EEAC 7FA4EB78 */  mr      r4, r29
/* 019910 8001EEB0 3863C4D4 */  addi    r3, r3, -15148
/* 019914 8001EEB4 3884C4D4 */  addi    r4, r4, -15148
/* 019918 8001EEB8 48002285 */  bl      frameScaleMatrix
/* 01991C 8001EEBC 2C030000 */  cmpwi   r3, 0
/* 019920 8001EEC0 4082000C */  bne     lbl_8001EECC
/* 019924 8001EEC4 38600000 */  li      r3, 0
/* 019928 8001EEC8 48000960 */  b       lbl_8001F828
lbl_8001EECC:
/* 01992C 8001EECC 3EDE0004 */  addis   r22, r30, 4
/* 019930 8001EED0 3AD6C4D4 */  addi    r22, r22, -15148
/* 019934 8001EED4 48000064 */  b       lbl_8001EF38
lbl_8001EED8:
/* 019938 8001EED8 801E008C */  lwz     r0, 0x8c(r30)
/* 01993C 8001EEDC 54000252 */  rlwinm  r0, r0, 0, 9, 9
/* 019940 8001EEE0 28000000 */  cmplwi  r0, 0
/* 019944 8001EEE4 40820050 */  bne     lbl_8001EF34
/* 019948 8001EEE8 801DC4D0 */  lwz     r0, -0x3b30(r29)
/* 01994C 8001EEEC 2C00FFFF */  cmpwi   r0, -1
/* 019950 8001EEF0 41820044 */  beq     lbl_8001EF34
/* 019954 8001EEF4 1C000024 */  mulli   r0, r0, 0x24
/* 019958 8001EEF8 7C9D0214 */  add     r4, r29, r0
/* 01995C 8001EEFC 7FA3EB78 */  mr      r3, r29
/* 019960 8001EF00 C024C824 */  lfs     f1, -0x37dc(r4)
/* 019964 8001EF04 7EA4AB78 */  mr      r4, r21
/* 019968 8001EF08 3863C4D4 */  addi    r3, r3, -15148
/* 01996C 8001EF0C 48002231 */  bl      frameScaleMatrix
/* 019970 8001EF10 2C030000 */  cmpwi   r3, 0
/* 019974 8001EF14 4082000C */  bne     lbl_8001EF20
/* 019978 8001EF18 38600000 */  li      r3, 0
/* 01997C 8001EF1C 4800090C */  b       lbl_8001F828
lbl_8001EF20:
/* 019980 8001EF20 801E008C */  lwz     r0, 0x8c(r30)
/* 019984 8001EF24 3ADDC4D4 */  addi    r22, r29, -15148
/* 019988 8001EF28 64000040 */  oris    r0, r0, 0x40
/* 01998C 8001EF2C 901E008C */  stw     r0, 0x8c(r30)
/* 019990 8001EF30 48000008 */  b       lbl_8001EF38
lbl_8001EF34:
/* 019994 8001EF34 7EB6AB78 */  mr      r22, r21
lbl_8001EF38:
/* 019998 8001EF38 807E0094 */  lwz     r3, 0x94(r30)
/* 01999C 8001EF3C 546006B4 */  rlwinm  r0, r3, 0, 0x1a, 0x1a
/* 0199A0 8001EF40 28000000 */  cmplwi  r0, 0
/* 0199A4 8001EF44 41820328 */  beq     lbl_8001F26C
/* 0199A8 8001EF48 839E013C */  lwz     r28, 0x13c(r30)
/* 0199AC 8001EF4C 547B05F0 */  rlwinm  r27, r3, 0, 0x17, 0x18
/* 0199B0 8001EF50 3B5E0140 */  addi    r26, r30, 0x140
/* 0199B4 8001EF54 3BA00000 */  li      r29, 0
/* 0199B8 8001EF58 3A600000 */  li      r19, 0
/* 0199BC 8001EF5C 48000004 */  b       lbl_8001EF60
lbl_8001EF60:
/* 0199C0 8001EF60 3C80800F */  lis     r4, __float_nan@ha
/* 0199C4 8001EF64 C3C28100 */  lfs     f30, D_80135E00@sda21(r2)
/* 0199C8 8001EF68 3C60800F */  lis     r3, __float_huge@ha
/* 0199CC 8001EF6C C3E28130 */  lfs     f31, D_80135E30@sda21(r2)
/* 0199D0 8001EF70 C3628134 */  lfs     f27, D_80135E34@sda21(r2)
/* 0199D4 8001EF74 3A243E78 */  addi    r17, r4, __float_nan@l
/* 0199D8 8001EF78 3A433E7C */  addi    r18, r3, __float_huge@l
/* 0199DC 8001EF7C 48000004 */  b       lbl_8001EF80
lbl_8001EF80:
/* 0199E0 8001EF80 480000D8 */  b       lbl_8001F058
lbl_8001EF84:
/* 0199E4 8001EF84 7F3A9A14 */  add     r25, r26, r19
/* 0199E8 8001EF88 80190000 */  lwz     r0, 0(r25)
/* 0199EC 8001EF8C 2C000000 */  cmpwi   r0, 0
/* 0199F0 8001EF90 41820014 */  beq     lbl_8001EFA4
/* 0199F4 8001EF94 801E008C */  lwz     r0, 0x8c(r30)
/* 0199F8 8001EF98 54000294 */  rlwinm  r0, r0, 0, 0xa, 0xa
/* 0199FC 8001EF9C 28000000 */  cmplwi  r0, 0
/* 019A00 8001EFA0 408200B0 */  bne     lbl_8001F050
lbl_8001EFA4:
/* 019A04 8001EFA4 7EA3AB78 */  mr      r3, r21
/* 019A08 8001EFA8 38990004 */  addi    r4, r25, 4
/* 019A0C 8001EFAC 38A10028 */  addi    r5, r1, 0x28
/* 019A10 8001EFB0 4BFFE39D */  bl      PSMTX44MultVecNoW
/* 019A14 8001EFB4 C001002C */  lfs     f0, 0x2c(r1)
/* 019A18 8001EFB8 C0410028 */  lfs     f2, 0x28(r1)
/* 019A1C 8001EFBC EC000032 */  fmuls   f0, f0, f0
/* 019A20 8001EFC0 C0610030 */  lfs     f3, 0x30(r1)
/* 019A24 8001EFC4 EC0200BA */  fmadds  f0, f2, f2, f0
/* 019A28 8001EFC8 EC6300FA */  fmadds  f3, f3, f3, f0
/* 019A2C 8001EFCC FC03F040 */  fcmpo   cr0, f3, f30
/* 019A30 8001EFD0 40810040 */  ble     lbl_8001F010
/* 019A34 8001EFD4 FC401834 */  frsqrte f2, f3
/* 019A38 8001EFD8 FC401018 */  frsp    f2, f2
/* 019A3C 8001EFDC EC0200B2 */  fmuls   f0, f2, f2
/* 019A40 8001EFE0 EC5F00B2 */  fmuls   f2, f31, f2
/* 019A44 8001EFE4 EC03D83C */  fnmsubs f0, f3, f0, f27
/* 019A48 8001EFE8 EC420032 */  fmuls   f2, f2, f0
/* 019A4C 8001EFEC EC0200B2 */  fmuls   f0, f2, f2
/* 019A50 8001EFF0 EC5F00B2 */  fmuls   f2, f31, f2
/* 019A54 8001EFF4 EC03D83C */  fnmsubs f0, f3, f0, f27
/* 019A58 8001EFF8 EC420032 */  fmuls   f2, f2, f0
/* 019A5C 8001EFFC EC0200B2 */  fmuls   f0, f2, f2
/* 019A60 8001F000 EC5F00B2 */  fmuls   f2, f31, f2
/* 019A64 8001F004 EC03D83C */  fnmsubs f0, f3, f0, f27
/* 019A68 8001F008 EC420032 */  fmuls   f2, f2, f0
/* 019A6C 8001F00C 48000018 */  b       lbl_8001F024
lbl_8001F010:
/* 019A70 8001F010 FC03F000 */  fcmpu   cr0, f3, f30
/* 019A74 8001F014 4182000C */  beq     lbl_8001F020
/* 019A78 8001F018 C0510000 */  lfs     f2, 0(r17)
/* 019A7C 8001F01C 48000008 */  b       lbl_8001F024
lbl_8001F020:
/* 019A80 8001F020 C0520000 */  lfs     f2, 0(r18)
lbl_8001F024:
/* 019A84 8001F024 C0010028 */  lfs     f0, 0x28(r1)
/* 019A88 8001F028 38000001 */  li      r0, 1
/* 019A8C 8001F02C EC0000B2 */  fmuls   f0, f0, f2
/* 019A90 8001F030 D019001C */  stfs    f0, 0x1c(r25)
/* 019A94 8001F034 C001002C */  lfs     f0, 0x2c(r1)
/* 019A98 8001F038 EC0000B2 */  fmuls   f0, f0, f2
/* 019A9C 8001F03C D0190020 */  stfs    f0, 0x20(r25)
/* 019AA0 8001F040 C0010030 */  lfs     f0, 0x30(r1)
/* 019AA4 8001F044 EC0000B2 */  fmuls   f0, f0, f2
/* 019AA8 8001F048 D0190024 */  stfs    f0, 0x24(r25)
/* 019AAC 8001F04C 90190000 */  stw     r0, 0(r25)
lbl_8001F050:
/* 019AB0 8001F050 3BBD0001 */  addi    r29, r29, 1
/* 019AB4 8001F054 3A73003C */  addi    r19, r19, 0x3c
lbl_8001F058:
/* 019AB8 8001F058 7C1DE000 */  cmpw    r29, r28
/* 019ABC 8001F05C 4180FF28 */  blt     lbl_8001EF84
/* 019AC0 8001F060 2C1B0000 */  cmpwi   r27, 0
/* 019AC4 8001F064 418201F8 */  beq     lbl_8001F25C
/* 019AC8 8001F068 801E0320 */  lwz     r0, 0x320(r30)
/* 019ACC 8001F06C 2C000000 */  cmpwi   r0, 0
/* 019AD0 8001F070 41820014 */  beq     lbl_8001F084
/* 019AD4 8001F074 801E008C */  lwz     r0, 0x8c(r30)
/* 019AD8 8001F078 54000294 */  rlwinm  r0, r0, 0, 0xa, 0xa
/* 019ADC 8001F07C 28000000 */  cmplwi  r0, 0
/* 019AE0 8001F080 408201DC */  bne     lbl_8001F25C
lbl_8001F084:
/* 019AE4 8001F084 801E008C */  lwz     r0, 0x8c(r30)
/* 019AE8 8001F088 540001CE */  rlwinm  r0, r0, 0, 7, 7
/* 019AEC 8001F08C 28000000 */  cmplwi  r0, 0
/* 019AF0 8001F090 40820018 */  bne     lbl_8001F0A8
/* 019AF4 8001F094 C0428100 */  lfs     f2, D_80135E00@sda21(r2)
/* 019AF8 8001F098 D05E033C */  stfs    f2, 0x33c(r30)
/* 019AFC 8001F09C C0028138 */  lfs     f0, D_80135E38@sda21(r2)
/* 019B00 8001F0A0 D01E0340 */  stfs    f0, 0x340(r30)
/* 019B04 8001F0A4 D05E0344 */  stfs    f2, 0x344(r30)
lbl_8001F0A8:
/* 019B08 8001F0A8 801E008C */  lwz     r0, 0x8c(r30)
/* 019B0C 8001F0AC 5400018C */  rlwinm  r0, r0, 0, 6, 6
/* 019B10 8001F0B0 28000000 */  cmplwi  r0, 0
/* 019B14 8001F0B4 40820018 */  bne     lbl_8001F0CC
/* 019B18 8001F0B8 C0028138 */  lfs     f0, D_80135E38@sda21(r2)
/* 019B1C 8001F0BC D01E0348 */  stfs    f0, 0x348(r30)
/* 019B20 8001F0C0 C0028100 */  lfs     f0, D_80135E00@sda21(r2)
/* 019B24 8001F0C4 D01E034C */  stfs    f0, 0x34c(r30)
/* 019B28 8001F0C8 D01E0350 */  stfs    f0, 0x350(r30)
lbl_8001F0CC:
/* 019B2C 8001F0CC 7EA3AB78 */  mr      r3, r21
/* 019B30 8001F0D0 389E033C */  addi    r4, r30, 0x33c
/* 019B34 8001F0D4 38BE0324 */  addi    r5, r30, 0x324
/* 019B38 8001F0D8 4BFFE275 */  bl      PSMTX44MultVecNoW
/* 019B3C 8001F0DC 7EA3AB78 */  mr      r3, r21
/* 019B40 8001F0E0 389E0348 */  addi    r4, r30, 0x348
/* 019B44 8001F0E4 38BE0330 */  addi    r5, r30, 0x330
/* 019B48 8001F0E8 4BFFE265 */  bl      PSMTX44MultVecNoW
/* 019B4C 8001F0EC C01E0328 */  lfs     f0, 0x328(r30)
/* 019B50 8001F0F0 C07E0324 */  lfs     f3, 0x324(r30)
/* 019B54 8001F0F4 EC400032 */  fmuls   f2, f0, f0
/* 019B58 8001F0F8 C09E032C */  lfs     f4, 0x32c(r30)
/* 019B5C 8001F0FC C0028100 */  lfs     f0, D_80135E00@sda21(r2)
/* 019B60 8001F100 EC4310FA */  fmadds  f2, f3, f3, f2
/* 019B64 8001F104 ECA4113A */  fmadds  f5, f4, f4, f2
/* 019B68 8001F108 FC050040 */  fcmpo   cr0, f5, f0
/* 019B6C 8001F10C 40810094 */  ble     lbl_8001F1A0
/* 019B70 8001F110 40810048 */  ble     lbl_8001F158
/* 019B74 8001F114 FC402834 */  frsqrte f2, f5
/* 019B78 8001F118 C0828130 */  lfs     f4, D_80135E30@sda21(r2)
/* 019B7C 8001F11C C0628134 */  lfs     f3, D_80135E34@sda21(r2)
/* 019B80 8001F120 FC401018 */  frsp    f2, f2
/* 019B84 8001F124 EC0200B2 */  fmuls   f0, f2, f2
/* 019B88 8001F128 EC4400B2 */  fmuls   f2, f4, f2
/* 019B8C 8001F12C EC05183C */  fnmsubs f0, f5, f0, f3
/* 019B90 8001F130 EC420032 */  fmuls   f2, f2, f0
/* 019B94 8001F134 EC0200B2 */  fmuls   f0, f2, f2
/* 019B98 8001F138 EC4400B2 */  fmuls   f2, f4, f2
/* 019B9C 8001F13C EC05183C */  fnmsubs f0, f5, f0, f3
/* 019BA0 8001F140 EC420032 */  fmuls   f2, f2, f0
/* 019BA4 8001F144 EC0200B2 */  fmuls   f0, f2, f2
/* 019BA8 8001F148 EC4400B2 */  fmuls   f2, f4, f2
/* 019BAC 8001F14C EC05183C */  fnmsubs f0, f5, f0, f3
/* 019BB0 8001F150 EC420032 */  fmuls   f2, f2, f0
/* 019BB4 8001F154 48000028 */  b       lbl_8001F17C
lbl_8001F158:
/* 019BB8 8001F158 FC050000 */  fcmpu   cr0, f5, f0
/* 019BBC 8001F15C 41820014 */  beq     lbl_8001F170
/* 019BC0 8001F160 3C60800F */  lis     r3, __float_nan@ha
/* 019BC4 8001F164 38633E78 */  addi    r3, r3, __float_nan@l
/* 019BC8 8001F168 C0430000 */  lfs     f2, 0(r3)
/* 019BCC 8001F16C 48000010 */  b       lbl_8001F17C
lbl_8001F170:
/* 019BD0 8001F170 3C60800F */  lis     r3, __float_huge@ha
/* 019BD4 8001F174 38633E7C */  addi    r3, r3, __float_huge@l
/* 019BD8 8001F178 C0430000 */  lfs     f2, 0(r3)
lbl_8001F17C:
/* 019BDC 8001F17C C01E0324 */  lfs     f0, 0x324(r30)
/* 019BE0 8001F180 EC0000B2 */  fmuls   f0, f0, f2
/* 019BE4 8001F184 D01E0324 */  stfs    f0, 0x324(r30)
/* 019BE8 8001F188 C01E0328 */  lfs     f0, 0x328(r30)
/* 019BEC 8001F18C EC0000B2 */  fmuls   f0, f0, f2
/* 019BF0 8001F190 D01E0328 */  stfs    f0, 0x328(r30)
/* 019BF4 8001F194 C01E032C */  lfs     f0, 0x32c(r30)
/* 019BF8 8001F198 EC0000B2 */  fmuls   f0, f0, f2
/* 019BFC 8001F19C D01E032C */  stfs    f0, 0x32c(r30)
lbl_8001F1A0:
/* 019C00 8001F1A0 C01E0334 */  lfs     f0, 0x334(r30)
/* 019C04 8001F1A4 C07E0330 */  lfs     f3, 0x330(r30)
/* 019C08 8001F1A8 EC400032 */  fmuls   f2, f0, f0
/* 019C0C 8001F1AC C09E0338 */  lfs     f4, 0x338(r30)
/* 019C10 8001F1B0 C0028100 */  lfs     f0, D_80135E00@sda21(r2)
/* 019C14 8001F1B4 EC4310FA */  fmadds  f2, f3, f3, f2
/* 019C18 8001F1B8 ECA4113A */  fmadds  f5, f4, f4, f2
/* 019C1C 8001F1BC FC050040 */  fcmpo   cr0, f5, f0
/* 019C20 8001F1C0 40810094 */  ble     lbl_8001F254
/* 019C24 8001F1C4 40810048 */  ble     lbl_8001F20C
/* 019C28 8001F1C8 FC402834 */  frsqrte f2, f5
/* 019C2C 8001F1CC C0828130 */  lfs     f4, D_80135E30@sda21(r2)
/* 019C30 8001F1D0 C0628134 */  lfs     f3, D_80135E34@sda21(r2)
/* 019C34 8001F1D4 FC401018 */  frsp    f2, f2
/* 019C38 8001F1D8 EC0200B2 */  fmuls   f0, f2, f2
/* 019C3C 8001F1DC EC4400B2 */  fmuls   f2, f4, f2
/* 019C40 8001F1E0 EC05183C */  fnmsubs f0, f5, f0, f3
/* 019C44 8001F1E4 EC420032 */  fmuls   f2, f2, f0
/* 019C48 8001F1E8 EC0200B2 */  fmuls   f0, f2, f2
/* 019C4C 8001F1EC EC4400B2 */  fmuls   f2, f4, f2
/* 019C50 8001F1F0 EC05183C */  fnmsubs f0, f5, f0, f3
/* 019C54 8001F1F4 EC420032 */  fmuls   f2, f2, f0
/* 019C58 8001F1F8 EC0200B2 */  fmuls   f0, f2, f2
/* 019C5C 8001F1FC EC4400B2 */  fmuls   f2, f4, f2
/* 019C60 8001F200 EC05183C */  fnmsubs f0, f5, f0, f3
/* 019C64 8001F204 EC420032 */  fmuls   f2, f2, f0
/* 019C68 8001F208 48000028 */  b       lbl_8001F230
lbl_8001F20C:
/* 019C6C 8001F20C FC050000 */  fcmpu   cr0, f5, f0
/* 019C70 8001F210 41820014 */  beq     lbl_8001F224
/* 019C74 8001F214 3C60800F */  lis     r3, __float_nan@ha
/* 019C78 8001F218 38633E78 */  addi    r3, r3, __float_nan@l
/* 019C7C 8001F21C C0430000 */  lfs     f2, 0(r3)
/* 019C80 8001F220 48000010 */  b       lbl_8001F230
lbl_8001F224:
/* 019C84 8001F224 3C60800F */  lis     r3, __float_huge@ha
/* 019C88 8001F228 38633E7C */  addi    r3, r3, __float_huge@l
/* 019C8C 8001F22C C0430000 */  lfs     f2, 0(r3)
lbl_8001F230:
/* 019C90 8001F230 C01E0330 */  lfs     f0, 0x330(r30)
/* 019C94 8001F234 EC0000B2 */  fmuls   f0, f0, f2
/* 019C98 8001F238 D01E0330 */  stfs    f0, 0x330(r30)
/* 019C9C 8001F23C C01E0334 */  lfs     f0, 0x334(r30)
/* 019CA0 8001F240 EC0000B2 */  fmuls   f0, f0, f2
/* 019CA4 8001F244 D01E0334 */  stfs    f0, 0x334(r30)
/* 019CA8 8001F248 C01E0338 */  lfs     f0, 0x338(r30)
/* 019CAC 8001F24C EC0000B2 */  fmuls   f0, f0, f2
/* 019CB0 8001F250 D01E0338 */  stfs    f0, 0x338(r30)
lbl_8001F254:
/* 019CB4 8001F254 38000001 */  li      r0, 1
/* 019CB8 8001F258 901E0320 */  stw     r0, 0x320(r30)
lbl_8001F25C:
/* 019CBC 8001F25C 801E008C */  lwz     r0, 0x8c(r30)
/* 019CC0 8001F260 64000020 */  oris    r0, r0, 0x20
/* 019CC4 8001F264 901E008C */  stw     r0, 0x8c(r30)
/* 019CC8 8001F268 4800000C */  b       lbl_8001F274
lbl_8001F26C:
/* 019CCC 8001F26C 3B600000 */  li      r27, 0
/* 019CD0 8001F270 3B800000 */  li      r28, 0
lbl_8001F274:
/* 019CD4 8001F274 1C74001C */  mulli   r3, r20, 0x1c
/* 019CD8 8001F278 39030358 */  addi    r8, r3, 0x358
/* 019CDC 8001F27C 7D1E4214 */  add     r8, r30, r8
/* 019CE0 8001F280 48000004 */  b       lbl_8001F284
lbl_8001F284:
/* 019CE4 8001F284 2C1F0000 */  cmpwi   r31, 0
/* 019CE8 8001F288 7FE903A6 */  mtctr   r31
/* 019CEC 8001F28C C0A28100 */  lfs     f5, D_80135E00@sda21(r2)
/* 019CF0 8001F290 38810040 */  addi    r4, r1, 0x40
/* 019CF4 8001F294 C8828110 */  lfd     f4, D_80135E10@sda21(r2)
/* 019CF8 8001F298 576905EE */  rlwinm  r9, r27, 0, 0x17, 0x17
/* 019CFC 8001F29C C8628140 */  lfd     f3, D_80135E40@sda21(r2)
/* 019D00 8001F2A0 C8428148 */  lfd     f2, D_80135E48@sda21(r2)
/* 019D04 8001F2A4 38610034 */  addi    r3, r1, 0x34
/* 019D08 8001F2A8 C0028138 */  lfs     f0, D_80135E38@sda21(r2)
/* 019D0C 8001F2AC 38A10020 */  addi    r5, r1, 0x20
/* 019D10 8001F2B0 C1828150 */  lfs     f12, D_80135E50@sda21(r2)
/* 019D14 8001F2B4 C1628154 */  lfs     f11, D_80135E54@sda21(r2)
/* 019D18 8001F2B8 38C1001C */  addi    r6, r1, 0x1c
/* 019D1C 8001F2BC C1428130 */  lfs     f10, D_80135E30@sda21(r2)
/* 019D20 8001F2C0 38E10018 */  addi    r7, r1, 0x18
/* 019D24 8001F2C4 3C004330 */  lis     r0, 0x4330
/* 019D28 8001F2C8 4182055C */  beq     lbl_8001F824
/* 019D2C 8001F2CC 48000004 */  b       lbl_8001F2D0
lbl_8001F2D0:
/* 019D30 8001F2D0 E0375000 */  psq_l   f1, 0(r23), 0, qr5
/* 019D34 8001F2D4 F0230000 */  psq_st  f1, 0(r3), 0, qr0
/* 019D38 8001F2D8 39570004 */  addi    r10, r23, 4
/* 019D3C 8001F2DC E0CAD000 */  psq_l   f6, 0(r10), 1, qr5
/* 019D40 8001F2E0 D0C1003C */  stfs    f6, 0x3c(r1)
/* 019D44 8001F2E4 2C1C0000 */  cmpwi   r28, 0
/* 019D48 8001F2E8 C0E10034 */  lfs     f7, 0x34(r1)
/* 019D4C 8001F2EC C0C10038 */  lfs     f6, 0x38(r1)
/* 019D50 8001F2F0 C101003C */  lfs     f8, 0x3c(r1)
/* 019D54 8001F2F4 ECC7302A */  fadds   f6, f7, f6
/* 019D58 8001F2F8 ECC8302A */  fadds   f6, f8, f6
/* 019D5C 8001F2FC D0C80000 */  stfs    f6, 0(r8)
/* 019D60 8001F300 C0D6001C */  lfs     f6, 0x1c(r22)
/* 019D64 8001F304 C1010038 */  lfs     f8, 0x38(r1)
/* 019D68 8001F308 C136000C */  lfs     f9, 0xc(r22)
/* 019D6C 8001F30C ECE60232 */  fmuls   f7, f6, f8
/* 019D70 8001F310 C3610034 */  lfs     f27, 0x34(r1)
/* 019D74 8001F314 C0D60010 */  lfs     f6, 0x10(r22)
/* 019D78 8001F318 C1B6002C */  lfs     f13, 0x2c(r22)
/* 019D7C 8001F31C ECE93EFA */  fmadds  f7, f9, f27, f7
/* 019D80 8001F320 C381003C */  lfs     f28, 0x3c(r1)
/* 019D84 8001F324 ECC801B2 */  fmuls   f6, f8, f6
/* 019D88 8001F328 C3B6003C */  lfs     f29, 0x3c(r22)
/* 019D8C 8001F32C ED2D3F3A */  fmadds  f9, f13, f28, f7
/* 019D90 8001F330 C0F60000 */  lfs     f7, 0(r22)
/* 019D94 8001F334 C1160020 */  lfs     f8, 0x20(r22)
/* 019D98 8001F338 EDBD482A */  fadds   f13, f29, f9
/* 019D9C 8001F33C C1360030 */  lfs     f9, 0x30(r22)
/* 019DA0 8001F340 ECFB31FA */  fmadds  f7, f27, f7, f6
/* 019DA4 8001F344 ECC06824 */  fdivs   f6, f0, f13
/* 019DA8 8001F348 ECFC3A3A */  fmadds  f7, f28, f8, f7
/* 019DAC 8001F34C ECE9382A */  fadds   f7, f9, f7
/* 019DB0 8001F350 ECE601F2 */  fmuls   f7, f6, f7
/* 019DB4 8001F354 D0E8000C */  stfs    f7, 0xc(r8)
/* 019DB8 8001F358 C1010038 */  lfs     f8, 0x38(r1)
/* 019DBC 8001F35C C0F60014 */  lfs     f7, 0x14(r22)
/* 019DC0 8001F360 C1210034 */  lfs     f9, 0x34(r1)
/* 019DC4 8001F364 ECE801F2 */  fmuls   f7, f8, f7
/* 019DC8 8001F368 C1160004 */  lfs     f8, 4(r22)
/* 019DCC 8001F36C C361003C */  lfs     f27, 0x3c(r1)
/* 019DD0 8001F370 C1B60024 */  lfs     f13, 0x24(r22)
/* 019DD4 8001F374 ECE93A3A */  fmadds  f7, f9, f8, f7
/* 019DD8 8001F378 C1160034 */  lfs     f8, 0x34(r22)
/* 019DDC 8001F37C ECFB3B7A */  fmadds  f7, f27, f13, f7
/* 019DE0 8001F380 ECE8382A */  fadds   f7, f8, f7
/* 019DE4 8001F384 ECE601F2 */  fmuls   f7, f6, f7
/* 019DE8 8001F388 D0E80010 */  stfs    f7, 0x10(r8)
/* 019DEC 8001F38C C1010038 */  lfs     f8, 0x38(r1)
/* 019DF0 8001F390 C0F60018 */  lfs     f7, 0x18(r22)
/* 019DF4 8001F394 C1210034 */  lfs     f9, 0x34(r1)
/* 019DF8 8001F398 ECE801F2 */  fmuls   f7, f8, f7
/* 019DFC 8001F39C C1160008 */  lfs     f8, 8(r22)
/* 019E00 8001F3A0 C361003C */  lfs     f27, 0x3c(r1)
/* 019E04 8001F3A4 C1B60028 */  lfs     f13, 0x28(r22)
/* 019E08 8001F3A8 ECE93A3A */  fmadds  f7, f9, f8, f7
/* 019E0C 8001F3AC C1160038 */  lfs     f8, 0x38(r22)
/* 019E10 8001F3B0 ECFB3B7A */  fmadds  f7, f27, f13, f7
/* 019E14 8001F3B4 ECE8382A */  fadds   f7, f8, f7
/* 019E18 8001F3B8 ECC601F2 */  fmuls   f6, f6, f7
/* 019E1C 8001F3BC D0C80014 */  stfs    f6, 0x14(r8)
/* 019E20 8001F3C0 41820370 */  beq     lbl_8001F730
/* 019E24 8001F3C4 3958000C */  addi    r10, r24, 0xc
/* 019E28 8001F3C8 E02A6000 */  psq_l   f1, 0(r10), 0, qr6
/* 019E2C 8001F3CC F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 019E30 8001F3D0 3958000E */  addi    r10, r24, 0xe
/* 019E34 8001F3D4 E02AE000 */  psq_l   f1, 0(r10), 1, qr6
/* 019E38 8001F3D8 D0210048 */  stfs    f1, 0x48(r1)
/* 019E3C 8001F3DC 7F9DE378 */  mr      r29, r28
/* 019E40 8001F3E0 1D7D003C */  mulli   r11, r29, 0x3c
/* 019E44 8001F3E4 814D8920 */  lwz     r10, gpSystem@sda21(r13)
/* 019E48 8001F3E8 814A0020 */  lwz     r10, 0x20(r10)
/* 019E4C 8001F3EC 7F3A5A14 */  add     r25, r26, r11
/* 019E50 8001F3F0 2C0A0003 */  cmpwi   r10, 3
/* 019E54 8001F3F4 4082003C */  bne     lbl_8001F430
/* 019E58 8001F3F8 48000004 */  b       lbl_8001F3FC
lbl_8001F3FC:
/* 019E5C 8001F3FC 48000004 */  b       lbl_8001F400
lbl_8001F400:
/* 019E60 8001F400 48000008 */  b       lbl_8001F408
lbl_8001F404:
/* 019E64 8001F404 3B39003C */  addi    r25, r25, 0x3c
lbl_8001F408:
/* 019E68 8001F408 C0F90010 */  lfs     f7, 0x10(r25)
/* 019E6C 8001F40C C1190014 */  lfs     f8, 0x14(r25)
/* 019E70 8001F410 C1390018 */  lfs     f9, 0x18(r25)
/* 019E74 8001F414 ECC7402A */  fadds   f6, f7, f8
/* 019E78 8001F418 ECC9302A */  fadds   f6, f9, f6
/* 019E7C 8001F41C FC053000 */  fcmpu   cr0, f5, f6
/* 019E80 8001F420 4182FFE4 */  beq     lbl_8001F404
/* 019E84 8001F424 1D5D003C */  mulli   r10, r29, 0x3c
/* 019E88 8001F428 7F3A5214 */  add     r25, r26, r10
/* 019E8C 8001F42C 48000014 */  b       lbl_8001F440
lbl_8001F430:
/* 019E90 8001F430 C0F90010 */  lfs     f7, 0x10(r25)
/* 019E94 8001F434 C1190014 */  lfs     f8, 0x14(r25)
/* 019E98 8001F438 C1390018 */  lfs     f9, 0x18(r25)
/* 019E9C 8001F43C 48000004 */  b       lbl_8001F440
lbl_8001F440:
/* 019EA0 8001F440 48000004 */  b       lbl_8001F444
lbl_8001F444:
/* 019EA4 8001F444 48000228 */  b       lbl_8001F66C
lbl_8001F448:
/* 019EA8 8001F448 815E0094 */  lwz     r10, 0x94(r30)
/* 019EAC 8001F44C 3B39FFC4 */  addi    r25, r25, -60
/* 019EB0 8001F450 554A0528 */  rlwinm  r10, r10, 0, 0x14, 0x14
/* 019EB4 8001F454 280A0000 */  cmplwi  r10, 0
/* 019EB8 8001F458 418201D0 */  beq     lbl_8001F628
/* 019EBC 8001F45C C0D90028 */  lfs     f6, 0x28(r25)
/* 019EC0 8001F460 FC053000 */  fcmpu   cr0, f5, f6
/* 019EC4 8001F464 418201C4 */  beq     lbl_8001F628
/* 019EC8 8001F468 A9590036 */  lha     r10, 0x36(r25)
/* 019ECC 8001F46C A9790034 */  lha     r11, 0x34(r25)
/* 019ED0 8001F470 6D4A8000 */  xoris   r10, r10, 0x8000
/* 019ED4 8001F474 A9990038 */  lha     r12, 0x38(r25)
/* 019ED8 8001F478 9141005C */  stw     r10, 0x5c(r1)
/* 019EDC 8001F47C 6D6B8000 */  xoris   r11, r11, 0x8000
/* 019EE0 8001F480 6D8C8000 */  xoris   r12, r12, 0x8000
/* 019EE4 8001F484 C3610038 */  lfs     f27, 0x38(r1)
/* 019EE8 8001F488 91410054 */  stw     r10, 0x54(r1)
/* 019EEC 8001F48C C3810034 */  lfs     f28, 0x34(r1)
/* 019EF0 8001F490 90010058 */  stw     r0, 0x58(r1)
/* 019EF4 8001F494 C3C1003C */  lfs     f30, 0x3c(r1)
/* 019EF8 8001F498 90010050 */  stw     r0, 0x50(r1)
/* 019EFC 8001F49C C9A10058 */  lfd     f13, 0x58(r1)
/* 019F00 8001F4A0 9161006C */  stw     r11, 0x6c(r1)
/* 019F04 8001F4A4 C8C10050 */  lfd     f6, 0x50(r1)
/* 019F08 8001F4A8 EDAD2028 */  fsubs   f13, f13, f4
/* 019F0C 8001F4AC 91610064 */  stw     r11, 0x64(r1)
/* 019F10 8001F4B0 ECC62028 */  fsubs   f6, f6, f4
/* 019F14 8001F4B4 90010068 */  stw     r0, 0x68(r1)
/* 019F18 8001F4B8 EDADD828 */  fsubs   f13, f13, f27
/* 019F1C 8001F4BC 90010060 */  stw     r0, 0x60(r1)
/* 019F20 8001F4C0 ECC6D828 */  fsubs   f6, f6, f27
/* 019F24 8001F4C4 CBA10068 */  lfd     f29, 0x68(r1)
/* 019F28 8001F4C8 9181007C */  stw     r12, 0x7c(r1)
/* 019F2C 8001F4CC CB610060 */  lfd     f27, 0x60(r1)
/* 019F30 8001F4D0 EFBD2028 */  fsubs   f29, f29, f4
/* 019F34 8001F4D4 91810074 */  stw     r12, 0x74(r1)
/* 019F38 8001F4D8 ECCD01B2 */  fmuls   f6, f13, f6
/* 019F3C 8001F4DC EDBB2028 */  fsubs   f13, f27, f4
/* 019F40 8001F4E0 90010078 */  stw     r0, 0x78(r1)
/* 019F44 8001F4E4 EF7DE028 */  fsubs   f27, f29, f28
/* 019F48 8001F4E8 90010070 */  stw     r0, 0x70(r1)
/* 019F4C 8001F4EC EDADE028 */  fsubs   f13, f13, f28
/* 019F50 8001F4F0 CBA10078 */  lfd     f29, 0x78(r1)
/* 019F54 8001F4F4 CB810070 */  lfd     f28, 0x70(r1)
/* 019F58 8001F4F8 EFBD2028 */  fsubs   f29, f29, f4
/* 019F5C 8001F4FC EF9C2028 */  fsubs   f28, f28, f4
/* 019F60 8001F500 ECDB337A */  fmadds  f6, f27, f13, f6
/* 019F64 8001F504 EF7DF028 */  fsubs   f27, f29, f30
/* 019F68 8001F508 EDBCF028 */  fsubs   f13, f28, f30
/* 019F6C 8001F50C ECDB337A */  fmadds  f6, f27, f13, f6
/* 019F70 8001F510 FC062840 */  fcmpo   cr0, f6, f5
/* 019F74 8001F514 4081004C */  ble     lbl_8001F560
/* 019F78 8001F518 FF603034 */  frsqrte f27, f6
/* 019F7C 8001F51C FDBB06F2 */  fmul    f13, f27, f27
/* 019F80 8001F520 FF6306F2 */  fmul    f27, f3, f27
/* 019F84 8001F524 FDA6137C */  fnmsub  f13, f6, f13, f2
/* 019F88 8001F528 FF7B0372 */  fmul    f27, f27, f13
/* 019F8C 8001F52C FDBB06F2 */  fmul    f13, f27, f27
/* 019F90 8001F530 FF6306F2 */  fmul    f27, f3, f27
/* 019F94 8001F534 FDA6137C */  fnmsub  f13, f6, f13, f2
/* 019F98 8001F538 FF7B0372 */  fmul    f27, f27, f13
/* 019F9C 8001F53C FDBB06F2 */  fmul    f13, f27, f27
/* 019FA0 8001F540 FF6306F2 */  fmul    f27, f3, f27
/* 019FA4 8001F544 FDA6137C */  fnmsub  f13, f6, f13, f2
/* 019FA8 8001F548 FF7B0372 */  fmul    f27, f27, f13
/* 019FAC 8001F54C FCC606F2 */  fmul    f6, f6, f27
/* 019FB0 8001F550 FCC03018 */  frsp    f6, f6
/* 019FB4 8001F554 D0C10024 */  stfs    f6, 0x24(r1)
/* 019FB8 8001F558 C0C10024 */  lfs     f6, 0x24(r1)
/* 019FBC 8001F55C 48000004 */  b       lbl_8001F560
lbl_8001F560:
/* 019FC0 8001F560 A9590034 */  lha     r10, 0x34(r25)
/* 019FC4 8001F564 C1A10034 */  lfs     f13, 0x34(r1)
/* 019FC8 8001F568 6D4A8000 */  xoris   r10, r10, 0x8000
/* 019FCC 8001F56C 91410054 */  stw     r10, 0x54(r1)
/* 019FD0 8001F570 90010050 */  stw     r0, 0x50(r1)
/* 019FD4 8001F574 CB610050 */  lfd     f27, 0x50(r1)
/* 019FD8 8001F578 EF7B2028 */  fsubs   f27, f27, f4
/* 019FDC 8001F57C EDBB6828 */  fsubs   f13, f27, f13
/* 019FE0 8001F580 EDAD3024 */  fdivs   f13, f13, f6
/* 019FE4 8001F584 D1B9001C */  stfs    f13, 0x1c(r25)
/* 019FE8 8001F588 A9590036 */  lha     r10, 0x36(r25)
/* 019FEC 8001F58C C1A10038 */  lfs     f13, 0x38(r1)
/* 019FF0 8001F590 6D4A8000 */  xoris   r10, r10, 0x8000
/* 019FF4 8001F594 9141005C */  stw     r10, 0x5c(r1)
/* 019FF8 8001F598 90010058 */  stw     r0, 0x58(r1)
/* 019FFC 8001F59C CB610058 */  lfd     f27, 0x58(r1)
/* 01A000 8001F5A0 EF7B2028 */  fsubs   f27, f27, f4
/* 01A004 8001F5A4 EDBB6828 */  fsubs   f13, f27, f13
/* 01A008 8001F5A8 EDAD3024 */  fdivs   f13, f13, f6
/* 01A00C 8001F5AC D1B90020 */  stfs    f13, 0x20(r25)
/* 01A010 8001F5B0 A9590038 */  lha     r10, 0x38(r25)
/* 01A014 8001F5B4 C1A1003C */  lfs     f13, 0x3c(r1)
/* 01A018 8001F5B8 6D4A8000 */  xoris   r10, r10, 0x8000
/* 01A01C 8001F5BC 91410064 */  stw     r10, 0x64(r1)
/* 01A020 8001F5C0 90010060 */  stw     r0, 0x60(r1)
/* 01A024 8001F5C4 CB610060 */  lfd     f27, 0x60(r1)
/* 01A028 8001F5C8 EF7B2028 */  fsubs   f27, f27, f4
/* 01A02C 8001F5CC EDBB6828 */  fsubs   f13, f27, f13
/* 01A030 8001F5D0 EDAD3024 */  fdivs   f13, f13, f6
/* 01A034 8001F5D4 D1B90024 */  stfs    f13, 0x24(r25)
/* 01A038 8001F5D8 C3D90020 */  lfs     f30, 0x20(r25)
/* 01A03C 8001F5DC C3A10044 */  lfs     f29, 0x44(r1)
/* 01A040 8001F5E0 C1B90030 */  lfs     f13, 0x30(r25)
/* 01A044 8001F5E4 EFFE0772 */  fmuls   f31, f30, f29
/* 01A048 8001F5E8 C379001C */  lfs     f27, 0x1c(r25)
/* 01A04C 8001F5EC C3810040 */  lfs     f28, 0x40(r1)
/* 01A050 8001F5F0 EFCD01B2 */  fmuls   f30, f13, f6
/* 01A054 8001F5F4 C3B9002C */  lfs     f29, 0x2c(r25)
/* 01A058 8001F5F8 C1B90028 */  lfs     f13, 0x28(r25)
/* 01A05C 8001F5FC EFFBFF3A */  fmadds  f31, f27, f28, f31
/* 01A060 8001F600 C3990024 */  lfs     f28, 0x24(r25)
/* 01A064 8001F604 EDBD69BA */  fmadds  f13, f29, f6, f13
/* 01A068 8001F608 C3610048 */  lfs     f27, 0x48(r1)
/* 01A06C 8001F60C EFBCFEFA */  fmadds  f29, f28, f27, f31
/* 01A070 8001F610 ECC66FBA */  fmadds  f6, f6, f30, f13
/* 01A074 8001F614 EF7D3024 */  fdivs   f27, f29, f6
/* 01A078 8001F618 FC1B0040 */  fcmpo   cr0, f27, f0
/* 01A07C 8001F61C 40810030 */  ble     lbl_8001F64C
/* 01A080 8001F620 FF600090 */  fmr     f27, f0
/* 01A084 8001F624 48000028 */  b       lbl_8001F64C
lbl_8001F628:
/* 01A088 8001F628 C1B90020 */  lfs     f13, 0x20(r25)
/* 01A08C 8001F62C C0C10044 */  lfs     f6, 0x44(r1)
/* 01A090 8001F630 C3D9001C */  lfs     f30, 0x1c(r25)
/* 01A094 8001F634 ECCD01B2 */  fmuls   f6, f13, f6
/* 01A098 8001F638 C1A10040 */  lfs     f13, 0x40(r1)
/* 01A09C 8001F63C C3B90024 */  lfs     f29, 0x24(r25)
/* 01A0A0 8001F640 C3E10048 */  lfs     f31, 0x48(r1)
/* 01A0A4 8001F644 ECDE337A */  fmadds  f6, f30, f13, f6
/* 01A0A8 8001F648 EF7D37FA */  fmadds  f27, f29, f31, f6
lbl_8001F64C:
/* 01A0AC 8001F64C FC1B2840 */  fcmpo   cr0, f27, f5
/* 01A0B0 8001F650 4081001C */  ble     lbl_8001F66C
/* 01A0B4 8001F654 C3D90010 */  lfs     f30, 0x10(r25)
/* 01A0B8 8001F658 C1B90014 */  lfs     f13, 0x14(r25)
/* 01A0BC 8001F65C C0D90018 */  lfs     f6, 0x18(r25)
/* 01A0C0 8001F660 ECFE3EFA */  fmadds  f7, f30, f27, f7
/* 01A0C4 8001F664 ED0D46FA */  fmadds  f8, f13, f27, f8
/* 01A0C8 8001F668 ED264EFA */  fmadds  f9, f6, f27, f9
lbl_8001F66C:
/* 01A0CC 8001F66C 3BBDFFFF */  addi    r29, r29, -1
/* 01A0D0 8001F670 2C1D0000 */  cmpwi   r29, 0
/* 01A0D4 8001F674 4080FDD4 */  bge     lbl_8001F448
/* 01A0D8 8001F678 F0E5A000 */  psq_st  f7, 0(r5), 1, qr2
/* 01A0DC 8001F67C 89410020 */  lbz     r10, 0x20(r1)
/* 01A0E0 8001F680 99480018 */  stb     r10, 0x18(r8)
/* 01A0E4 8001F684 F106A000 */  psq_st  f8, 0(r6), 1, qr2
/* 01A0E8 8001F688 8941001C */  lbz     r10, 0x1c(r1)
/* 01A0EC 8001F68C 99480019 */  stb     r10, 0x19(r8)
/* 01A0F0 8001F690 F127A000 */  psq_st  f9, 0(r7), 1, qr2
/* 01A0F4 8001F694 89410018 */  lbz     r10, 0x18(r1)
/* 01A0F8 8001F698 2C1B0000 */  cmpwi   r27, 0
/* 01A0FC 8001F69C 9948001A */  stb     r10, 0x1a(r8)
/* 01A100 8001F6A0 8958000F */  lbz     r10, 0xf(r24)
/* 01A104 8001F6A4 9948001B */  stb     r10, 0x1b(r8)
/* 01A108 8001F6A8 41820154 */  beq     lbl_8001F7FC
/* 01A10C 8001F6AC C1210044 */  lfs     f9, 0x44(r1)
/* 01A110 8001F6B0 2C090000 */  cmpwi   r9, 0
/* 01A114 8001F6B4 C0FE0328 */  lfs     f7, 0x328(r30)
/* 01A118 8001F6B8 C0DE0334 */  lfs     f6, 0x334(r30)
/* 01A11C 8001F6BC ED0901F2 */  fmuls   f8, f9, f7
/* 01A120 8001F6C0 C3C10040 */  lfs     f30, 0x40(r1)
/* 01A124 8001F6C4 C1BE0324 */  lfs     f13, 0x324(r30)
/* 01A128 8001F6C8 ECC901B2 */  fmuls   f6, f9, f6
/* 01A12C 8001F6CC C0FE0330 */  lfs     f7, 0x330(r30)
/* 01A130 8001F6D0 ED1E437A */  fmadds  f8, f30, f13, f8
/* 01A134 8001F6D4 C1A10048 */  lfs     f13, 0x48(r1)
/* 01A138 8001F6D8 C13E032C */  lfs     f9, 0x32c(r30)
/* 01A13C 8001F6DC ECDE31FA */  fmadds  f6, f30, f7, f6
/* 01A140 8001F6E0 C0FE0338 */  lfs     f7, 0x338(r30)
/* 01A144 8001F6E4 ED0D427A */  fmadds  f8, f13, f9, f8
/* 01A148 8001F6E8 ED2D31FA */  fmadds  f9, f13, f7, f6
/* 01A14C 8001F6EC 41820028 */  beq     lbl_8001F714
/* 01A150 8001F6F0 ECE80232 */  fmuls   f7, f8, f8
/* 01A154 8001F6F4 ECC90272 */  fmuls   f6, f9, f9
/* 01A158 8001F6F8 ECE801F2 */  fmuls   f7, f8, f7
/* 01A15C 8001F6FC ECC901B2 */  fmuls   f6, f9, f6
/* 01A160 8001F700 ECEC39FA */  fmadds  f7, f12, f7, f7
/* 01A164 8001F704 ECCC31BA */  fmadds  f6, f12, f6, f6
/* 01A168 8001F708 ED0B3A3A */  fmadds  f8, f11, f8, f7
/* 01A16C 8001F70C ED2B327A */  fmadds  f9, f11, f9, f6
/* 01A170 8001F710 4800000C */  b       lbl_8001F71C
lbl_8001F714:
/* 01A174 8001F714 ED0802B2 */  fmuls   f8, f8, f10
/* 01A178 8001F718 ED2902B2 */  fmuls   f9, f9, f10
lbl_8001F71C:
/* 01A17C 8001F71C ECEA402A */  fadds   f7, f10, f8
/* 01A180 8001F720 ECCA482A */  fadds   f6, f10, f9
/* 01A184 8001F724 D0E80004 */  stfs    f7, 4(r8)
/* 01A188 8001F728 D0C80008 */  stfs    f6, 8(r8)
/* 01A18C 8001F72C 480000D0 */  b       lbl_8001F7FC
lbl_8001F730:
/* 01A190 8001F730 8198000C */  lwz     r12, 0xc(r24)
/* 01A194 8001F734 2C1B0000 */  cmpwi   r27, 0
/* 01A198 8001F738 558B463E */  srwi    r11, r12, 0x18
/* 01A19C 8001F73C 558A843E */  srwi    r10, r12, 0x10
/* 01A1A0 8001F740 99680018 */  stb     r11, 0x18(r8)
/* 01A1A4 8001F744 554B063E */  clrlwi  r11, r10, 0x18
/* 01A1A8 8001F748 558AC23E */  srwi    r10, r12, 8
/* 01A1AC 8001F74C 99680019 */  stb     r11, 0x19(r8)
/* 01A1B0 8001F750 554A063E */  clrlwi  r10, r10, 0x18
/* 01A1B4 8001F754 9948001A */  stb     r10, 0x1a(r8)
/* 01A1B8 8001F758 558A063E */  clrlwi  r10, r12, 0x18
/* 01A1BC 8001F75C 9948001B */  stb     r10, 0x1b(r8)
/* 01A1C0 8001F760 4182009C */  beq     lbl_8001F7FC
/* 01A1C4 8001F764 3958000C */  addi    r10, r24, 0xc
/* 01A1C8 8001F768 E02A6000 */  psq_l   f1, 0(r10), 0, qr6
/* 01A1CC 8001F76C F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 01A1D0 8001F770 3958000E */  addi    r10, r24, 0xe
/* 01A1D4 8001F774 E02AE000 */  psq_l   f1, 0(r10), 1, qr6
/* 01A1D8 8001F778 D0210048 */  stfs    f1, 0x48(r1)
/* 01A1DC 8001F77C 2C090000 */  cmpwi   r9, 0
/* 01A1E0 8001F780 C1210044 */  lfs     f9, 0x44(r1)
/* 01A1E4 8001F784 C0FE0328 */  lfs     f7, 0x328(r30)
/* 01A1E8 8001F788 C0DE0334 */  lfs     f6, 0x334(r30)
/* 01A1EC 8001F78C ED0901F2 */  fmuls   f8, f9, f7
/* 01A1F0 8001F790 C3C10040 */  lfs     f30, 0x40(r1)
/* 01A1F4 8001F794 C1BE0324 */  lfs     f13, 0x324(r30)
/* 01A1F8 8001F798 ECC901B2 */  fmuls   f6, f9, f6
/* 01A1FC 8001F79C C0FE0330 */  lfs     f7, 0x330(r30)
/* 01A200 8001F7A0 ED1E437A */  fmadds  f8, f30, f13, f8
/* 01A204 8001F7A4 C1A10048 */  lfs     f13, 0x48(r1)
/* 01A208 8001F7A8 C13E032C */  lfs     f9, 0x32c(r30)
/* 01A20C 8001F7AC ECDE31FA */  fmadds  f6, f30, f7, f6
/* 01A210 8001F7B0 C0FE0338 */  lfs     f7, 0x338(r30)
/* 01A214 8001F7B4 ED0D427A */  fmadds  f8, f13, f9, f8
/* 01A218 8001F7B8 ED2D31FA */  fmadds  f9, f13, f7, f6
/* 01A21C 8001F7BC 41820028 */  beq     lbl_8001F7E4
/* 01A220 8001F7C0 ECE80232 */  fmuls   f7, f8, f8
/* 01A224 8001F7C4 ECC90272 */  fmuls   f6, f9, f9
/* 01A228 8001F7C8 ECE801F2 */  fmuls   f7, f8, f7
/* 01A22C 8001F7CC ECC901B2 */  fmuls   f6, f9, f6
/* 01A230 8001F7D0 ECEC39FA */  fmadds  f7, f12, f7, f7
/* 01A234 8001F7D4 ECCC31BA */  fmadds  f6, f12, f6, f6
/* 01A238 8001F7D8 ED0B3A3A */  fmadds  f8, f11, f8, f7
/* 01A23C 8001F7DC ED2B327A */  fmadds  f9, f11, f9, f6
/* 01A240 8001F7E0 4800000C */  b       lbl_8001F7EC
lbl_8001F7E4:
/* 01A244 8001F7E4 ED0802B2 */  fmuls   f8, f8, f10
/* 01A248 8001F7E8 ED2902B2 */  fmuls   f9, f9, f10
lbl_8001F7EC:
/* 01A24C 8001F7EC ECEA402A */  fadds   f7, f10, f8
/* 01A250 8001F7F0 ECCA482A */  fadds   f6, f10, f9
/* 01A254 8001F7F4 D0E80004 */  stfs    f7, 4(r8)
/* 01A258 8001F7F8 D0C80008 */  stfs    f6, 8(r8)
lbl_8001F7FC:
/* 01A25C 8001F7FC 2C1B0000 */  cmpwi   r27, 0
/* 01A260 8001F800 40820014 */  bne     lbl_8001F814
/* 01A264 8001F804 39680004 */  addi    r11, r8, 4
/* 01A268 8001F808 39570008 */  addi    r10, r23, 8
/* 01A26C 8001F80C E02A7000 */  psq_l   f1, 0(r10), 0, qr7
/* 01A270 8001F810 F02B0000 */  psq_st  f1, 0(r11), 0, qr0
lbl_8001F814:
/* 01A274 8001F814 3908001C */  addi    r8, r8, 0x1c
/* 01A278 8001F818 3B180010 */  addi    r24, r24, 0x10
/* 01A27C 8001F81C 3AF70010 */  addi    r23, r23, 0x10
/* 01A280 8001F820 4200FAB0 */  bdnz    lbl_8001F2D0
lbl_8001F824:
/* 01A284 8001F824 38600001 */  li      r3, 1
lbl_8001F828:
/* 01A288 8001F828 BA210084 */  lmw     r17, 0x84(r1)
/* 01A28C 8001F82C 800100EC */  lwz     r0, 0xec(r1)
/* 01A290 8001F830 CBE100E0 */  lfd     f31, 0xe0(r1)
/* 01A294 8001F834 CBC100D8 */  lfd     f30, 0xd8(r1)
/* 01A298 8001F838 7C0803A6 */  mtlr    r0
/* 01A29C 8001F83C CBA100D0 */  lfd     f29, 0xd0(r1)
/* 01A2A0 8001F840 CB8100C8 */  lfd     f28, 0xc8(r1)
/* 01A2A4 8001F844 CB6100C0 */  lfd     f27, 0xc0(r1)
/* 01A2A8 8001F848 382100E8 */  addi    r1, r1, 0xe8
/* 01A2AC 8001F84C 4E800020 */  blr     
