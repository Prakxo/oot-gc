glabel THPPlayerDrawDone
/* 00B278 80010818 7C0802A6 */  mflr    r0
/* 00B27C 8001081C 90010004 */  stw     r0, 4(r1)
/* 00B280 80010820 9421FFE8 */  stwu    r1, -0x18(r1)
/* 00B284 80010824 93E10014 */  stw     r31, 0x14(r1)
/* 00B288 80010828 800D8938 */  lwz     r0, Initialized@sda21(r13)
/* 00B28C 8001082C 2C000000 */  cmpwi   r0, 0
/* 00B290 80010830 41820044 */  beq     lbl_80010874
/* 00B294 80010834 3C608010 */  lis     r3, UsedTextureSetQueue@ha
/* 00B298 80010838 3BE39740 */  addi    r31, r3, UsedTextureSetQueue@l
lbl_8001083C:
/* 00B29C 8001083C 387F0000 */  addi    r3, r31, 0
/* 00B2A0 80010840 38810008 */  addi    r4, r1, 8
/* 00B2A4 80010844 38A00000 */  li      r5, 0
/* 00B2A8 80010848 4808EE61 */  bl      OSReceiveMessage
/* 00B2AC 8001084C 2C030001 */  cmpwi   r3, 1
/* 00B2B0 80010850 4082000C */  bne     lbl_8001085C
/* 00B2B4 80010854 80010008 */  lwz     r0, 8(r1)
/* 00B2B8 80010858 48000008 */  b       lbl_80010860
lbl_8001085C:
/* 00B2BC 8001085C 38000000 */  li      r0, 0
lbl_80010860:
/* 00B2C0 80010860 28000000 */  cmplwi  r0, 0
/* 00B2C4 80010864 7C030378 */  mr      r3, r0
/* 00B2C8 80010868 4182000C */  beq     lbl_80010874
/* 00B2CC 8001086C 48002B31 */  bl      PushFreeTextureSet
/* 00B2D0 80010870 4BFFFFCC */  b       lbl_8001083C
lbl_80010874:
/* 00B2D4 80010874 8001001C */  lwz     r0, 0x1c(r1)
/* 00B2D8 80010878 83E10014 */  lwz     r31, 0x14(r1)
/* 00B2DC 8001087C 38210018 */  addi    r1, r1, 0x18
/* 00B2E0 80010880 7C0803A6 */  mtlr    r0
/* 00B2E4 80010884 4E800020 */  blr     
