glabel frameDrawTriangle_C1T3
/* 0234A4 80028A44 7C0802A6 */  mflr    r0
/* 0234A8 80028A48 90010004 */  stw     r0, 4(r1)
/* 0234AC 80028A4C 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0234B0 80028A50 93E10044 */  stw     r31, 0x44(r1)
/* 0234B4 80028A54 93C10040 */  stw     r30, 0x40(r1)
/* 0234B8 80028A58 93A1003C */  stw     r29, 0x3c(r1)
/* 0234BC 80028A5C 7C7E1B78 */  mr      r30, r3
/* 0234C0 80028A60 7C9F2378 */  mr      r31, r4
/* 0234C4 80028A64 3FBE0004 */  addis   r29, r30, 4
/* 0234C8 80028A68 801DD138 */  lwz     r0, -0x2ec8(r29)
/* 0234CC 80028A6C 28000017 */  cmplwi  r0, 0x17
/* 0234D0 80028A70 4182007C */  beq     lbl_80028AEC
/* 0234D4 80028A74 48081775 */  bl      GXClearVtxDesc
/* 0234D8 80028A78 38600009 */  li      r3, 9
/* 0234DC 80028A7C 38800001 */  li      r4, 1
/* 0234E0 80028A80 4808131D */  bl      GXSetVtxDesc
/* 0234E4 80028A84 3860000B */  li      r3, 0xb
/* 0234E8 80028A88 38800001 */  li      r4, 1
/* 0234EC 80028A8C 48081311 */  bl      GXSetVtxDesc
/* 0234F0 80028A90 3860000D */  li      r3, 0xd
/* 0234F4 80028A94 38800001 */  li      r4, 1
/* 0234F8 80028A98 48081305 */  bl      GXSetVtxDesc
/* 0234FC 80028A9C 38600000 */  li      r3, 0
/* 023500 80028AA0 38800009 */  li      r4, 9
/* 023504 80028AA4 38A00001 */  li      r5, 1
/* 023508 80028AA8 38C00004 */  li      r6, 4
/* 02350C 80028AAC 38E00000 */  li      r7, 0
/* 023510 80028AB0 48081771 */  bl      GXSetVtxAttrFmt
/* 023514 80028AB4 38600000 */  li      r3, 0
/* 023518 80028AB8 3880000B */  li      r4, 0xb
/* 02351C 80028ABC 38A00001 */  li      r5, 1
/* 023520 80028AC0 38C00005 */  li      r6, 5
/* 023524 80028AC4 38E00000 */  li      r7, 0
/* 023528 80028AC8 48081759 */  bl      GXSetVtxAttrFmt
/* 02352C 80028ACC 38600000 */  li      r3, 0
/* 023530 80028AD0 3880000D */  li      r4, 0xd
/* 023534 80028AD4 38A00001 */  li      r5, 1
/* 023538 80028AD8 38C00004 */  li      r6, 4
/* 02353C 80028ADC 38E00000 */  li      r7, 0
/* 023540 80028AE0 48081741 */  bl      GXSetVtxAttrFmt
/* 023544 80028AE4 38000017 */  li      r0, 0x17
/* 023548 80028AE8 901DD138 */  stw     r0, -0x2ec8(r29)
lbl_80028AEC:
/* 02354C 80028AEC 801F0000 */  lwz     r0, 0(r31)
/* 023550 80028AF0 38600090 */  li      r3, 0x90
/* 023554 80028AF4 38800000 */  li      r4, 0
/* 023558 80028AF8 5405043E */  clrlwi  r5, r0, 0x10
/* 02355C 80028AFC 48082965 */  bl      GXBegin
/* 023560 80028B00 397F0004 */  addi    r11, r31, 4
/* 023564 80028B04 39400000 */  li      r10, 0
/* 023568 80028B08 48000004 */  b       lbl_80028B0C
lbl_80028B0C:
/* 02356C 80028B0C 3CA0CC01 */  lis     r5, 0xcc01
/* 023570 80028B10 48000004 */  b       lbl_80028B14
lbl_80028B14:
/* 023574 80028B14 480000F4 */  b       lbl_80028C08
lbl_80028B18:
/* 023578 80028B18 7D2B5214 */  add     r9, r11, r10
/* 02357C 80028B1C 88090000 */  lbz     r0, 0(r9)
/* 023580 80028B20 394A0003 */  addi    r10, r10, 3
/* 023584 80028B24 1C60001C */  mulli   r3, r0, 0x1c
/* 023588 80028B28 38630358 */  addi    r3, r3, 0x358
/* 02358C 80028B2C 7C7E1A14 */  add     r3, r30, r3
/* 023590 80028B30 C0430014 */  lfs     f2, 0x14(r3)
/* 023594 80028B34 C0230010 */  lfs     f1, 0x10(r3)
/* 023598 80028B38 C003000C */  lfs     f0, 0xc(r3)
/* 02359C 80028B3C D0058000 */  stfs    f0, -0x8000(r5)
/* 0235A0 80028B40 D0258000 */  stfs    f1, -0x8000(r5)
/* 0235A4 80028B44 D0458000 */  stfs    f2, -0x8000(r5)
/* 0235A8 80028B48 8903001B */  lbz     r8, 0x1b(r3)
/* 0235AC 80028B4C 88E3001A */  lbz     r7, 0x1a(r3)
/* 0235B0 80028B50 88C30019 */  lbz     r6, 0x19(r3)
/* 0235B4 80028B54 88830018 */  lbz     r4, 0x18(r3)
/* 0235B8 80028B58 98858000 */  stb     r4, -0x8000(r5)
/* 0235BC 80028B5C 98C58000 */  stb     r6, -0x8000(r5)
/* 0235C0 80028B60 98E58000 */  stb     r7, -0x8000(r5)
/* 0235C4 80028B64 99058000 */  stb     r8, -0x8000(r5)
/* 0235C8 80028B68 C0230008 */  lfs     f1, 8(r3)
/* 0235CC 80028B6C C0030004 */  lfs     f0, 4(r3)
/* 0235D0 80028B70 D0058000 */  stfs    f0, -0x8000(r5)
/* 0235D4 80028B74 D0258000 */  stfs    f1, -0x8000(r5)
/* 0235D8 80028B78 88090001 */  lbz     r0, 1(r9)
/* 0235DC 80028B7C 1C60001C */  mulli   r3, r0, 0x1c
/* 0235E0 80028B80 38630358 */  addi    r3, r3, 0x358
/* 0235E4 80028B84 7C7E1A14 */  add     r3, r30, r3
/* 0235E8 80028B88 C0430014 */  lfs     f2, 0x14(r3)
/* 0235EC 80028B8C C0230010 */  lfs     f1, 0x10(r3)
/* 0235F0 80028B90 C003000C */  lfs     f0, 0xc(r3)
/* 0235F4 80028B94 D0058000 */  stfs    f0, -0x8000(r5)
/* 0235F8 80028B98 D0258000 */  stfs    f1, -0x8000(r5)
/* 0235FC 80028B9C D0458000 */  stfs    f2, -0x8000(r5)
/* 023600 80028BA0 98858000 */  stb     r4, -0x8000(r5)
/* 023604 80028BA4 98C58000 */  stb     r6, -0x8000(r5)
/* 023608 80028BA8 98E58000 */  stb     r7, -0x8000(r5)
/* 02360C 80028BAC 99058000 */  stb     r8, -0x8000(r5)
/* 023610 80028BB0 C0230008 */  lfs     f1, 8(r3)
/* 023614 80028BB4 C0030004 */  lfs     f0, 4(r3)
/* 023618 80028BB8 D0058000 */  stfs    f0, -0x8000(r5)
/* 02361C 80028BBC D0258000 */  stfs    f1, -0x8000(r5)
/* 023620 80028BC0 88090002 */  lbz     r0, 2(r9)
/* 023624 80028BC4 1C60001C */  mulli   r3, r0, 0x1c
/* 023628 80028BC8 38630358 */  addi    r3, r3, 0x358
/* 02362C 80028BCC 7C7E1A14 */  add     r3, r30, r3
/* 023630 80028BD0 C0430014 */  lfs     f2, 0x14(r3)
/* 023634 80028BD4 C0230010 */  lfs     f1, 0x10(r3)
/* 023638 80028BD8 C003000C */  lfs     f0, 0xc(r3)
/* 02363C 80028BDC D0058000 */  stfs    f0, -0x8000(r5)
/* 023640 80028BE0 D0258000 */  stfs    f1, -0x8000(r5)
/* 023644 80028BE4 D0458000 */  stfs    f2, -0x8000(r5)
/* 023648 80028BE8 98858000 */  stb     r4, -0x8000(r5)
/* 02364C 80028BEC 98C58000 */  stb     r6, -0x8000(r5)
/* 023650 80028BF0 98E58000 */  stb     r7, -0x8000(r5)
/* 023654 80028BF4 99058000 */  stb     r8, -0x8000(r5)
/* 023658 80028BF8 C0230008 */  lfs     f1, 8(r3)
/* 02365C 80028BFC C0030004 */  lfs     f0, 4(r3)
/* 023660 80028C00 D0058000 */  stfs    f0, -0x8000(r5)
/* 023664 80028C04 D0258000 */  stfs    f1, -0x8000(r5)
lbl_80028C08:
/* 023668 80028C08 801F0000 */  lwz     r0, 0(r31)
/* 02366C 80028C0C 7C0A0000 */  cmpw    r10, r0
/* 023670 80028C10 4180FF08 */  blt     lbl_80028B18
/* 023674 80028C14 38600001 */  li      r3, 1
/* 023678 80028C18 8001004C */  lwz     r0, 0x4c(r1)
/* 02367C 80028C1C 83E10044 */  lwz     r31, 0x44(r1)
/* 023680 80028C20 83C10040 */  lwz     r30, 0x40(r1)
/* 023684 80028C24 7C0803A6 */  mtlr    r0
/* 023688 80028C28 83A1003C */  lwz     r29, 0x3c(r1)
/* 02368C 80028C2C 38210048 */  addi    r1, r1, 0x48
/* 023690 80028C30 4E800020 */  blr     
