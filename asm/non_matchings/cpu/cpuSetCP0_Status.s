glabel cpuSetCP0_Status
/* 03019C 8003573C 7C0802A6 */  mflr    r0
/* 0301A0 80035740 90010004 */  stw     r0, 4(r1)
/* 0301A4 80035744 9421FFC0 */  stwu    r1, -0x40(r1)
/* 0301A8 80035748 93E1003C */  stw     r31, 0x3c(r1)
/* 0301AC 8003574C 3BE50000 */  addi    r31, r5, 0
/* 0301B0 80035750 38A10020 */  addi    r5, r1, 0x20
/* 0301B4 80035754 93C10038 */  stw     r30, 0x38(r1)
/* 0301B8 80035758 3BC60000 */  addi    r30, r6, 0
/* 0301BC 8003575C 389E0000 */  addi    r4, r30, 0
/* 0301C0 80035760 93A10034 */  stw     r29, 0x34(r1)
/* 0301C4 80035764 3BA30000 */  addi    r29, r3, 0
/* 0301C8 80035768 387F0000 */  addi    r3, r31, 0
/* 0301CC 8003576C 38C10028 */  addi    r6, r1, 0x28
/* 0301D0 80035770 48000061 */  bl      cpuGetSize
/* 0301D4 80035774 2C030000 */  cmpwi   r3, 0
/* 0301D8 80035778 4082000C */  bne     lbl_80035784
/* 0301DC 8003577C 38600000 */  li      r3, 0
/* 0301E0 80035780 48000034 */  b       lbl_800357B4
lbl_80035784:
/* 0301E4 80035784 807D0AA0 */  lwz     r3, 0xaa0(r29)
/* 0301E8 80035788 38A1001C */  addi    r5, r1, 0x1c
/* 0301EC 8003578C 809D0AA4 */  lwz     r4, 0xaa4(r29)
/* 0301F0 80035790 38C10024 */  addi    r6, r1, 0x24
/* 0301F4 80035794 4800003D */  bl      cpuGetSize
/* 0301F8 80035798 2C030000 */  cmpwi   r3, 0
/* 0301FC 8003579C 4082000C */  bne     lbl_800357A8
/* 030200 800357A0 38600000 */  li      r3, 0
/* 030204 800357A4 48000010 */  b       lbl_800357B4
lbl_800357A8:
/* 030208 800357A8 93DD0AA4 */  stw     r30, 0xaa4(r29)
/* 03020C 800357AC 38600001 */  li      r3, 1
/* 030210 800357B0 93FD0AA0 */  stw     r31, 0xaa0(r29)
lbl_800357B4:
/* 030214 800357B4 80010044 */  lwz     r0, 0x44(r1)
/* 030218 800357B8 83E1003C */  lwz     r31, 0x3c(r1)
/* 03021C 800357BC 83C10038 */  lwz     r30, 0x38(r1)
/* 030220 800357C0 7C0803A6 */  mtlr    r0
/* 030224 800357C4 83A10034 */  lwz     r29, 0x34(r1)
/* 030228 800357C8 38210040 */  addi    r1, r1, 0x40
/* 03022C 800357CC 4E800020 */  blr     
