glabel frameHackCIMG_Zelda2
/* 01E444 800239E4 7C0802A6 */  mflr    r0
/* 01E448 800239E8 90010004 */  stw     r0, 4(r1)
/* 01E44C 800239EC 9421FFC0 */  stwu    r1, -0x40(r1)
/* 01E450 800239F0 93E1003C */  stw     r31, 0x3c(r1)
/* 01E454 800239F4 93C10038 */  stw     r30, 0x38(r1)
/* 01E458 800239F8 93A10034 */  stw     r29, 0x34(r1)
/* 01E45C 800239FC 7C7E1B78 */  mr      r30, r3
/* 01E460 80023A00 7C9F2378 */  mr      r31, r4
/* 01E464 80023A04 807F0010 */  lwz     r3, 0x10(r31)
/* 01E468 80023A08 801E00D8 */  lwz     r0, 0xd8(r30)
/* 01E46C 80023A0C 7C030000 */  cmpw    r3, r0
/* 01E470 80023A10 40820010 */  bne     lbl_80023A20
/* 01E474 80023A14 807E002C */  lwz     r3, 0x2c(r30)
/* 01E478 80023A18 38030001 */  addi    r0, r3, 1
/* 01E47C 80023A1C 901E002C */  stw     r0, 0x2c(r30)
lbl_80023A20:
/* 01E480 80023A20 807E0054 */  lwz     r3, 0x54(r30)
/* 01E484 80023A24 38030001 */  addi    r0, r3, 1
/* 01E488 80023A28 901E0054 */  stw     r0, 0x54(r30)
/* 01E48C 80023A2C 801E002C */  lwz     r0, 0x2c(r30)
/* 01E490 80023A30 2C000001 */  cmpwi   r0, 1
/* 01E494 80023A34 40810184 */  ble     lbl_80023BB8
/* 01E498 80023A38 3C60800F */  lis     r3, sCommandCodes_1702@ha
/* 01E49C 80023A3C 3905FFD8 */  addi    r8, r5, -40
/* 01E4A0 80023A40 3883AA58 */  addi    r4, r3, sCommandCodes_1702@l
/* 01E4A4 80023A44 7D064378 */  mr      r6, r8
/* 01E4A8 80023A48 38E00000 */  li      r7, 0
/* 01E4AC 80023A4C 48000004 */  b       lbl_80023A50
lbl_80023A50:
/* 01E4B0 80023A50 38000002 */  li      r0, 2
/* 01E4B4 80023A54 7C0903A6 */  mtctr   r0
/* 01E4B8 80023A58 48000004 */  b       lbl_80023A5C
lbl_80023A5C:
/* 01E4BC 80023A5C 48000004 */  b       lbl_80023A60
lbl_80023A60:
/* 01E4C0 80023A60 80660000 */  lwz     r3, 0(r6)
/* 01E4C4 80023A64 80040000 */  lwz     r0, 0(r4)
/* 01E4C8 80023A68 7C030040 */  cmplw   r3, r0
/* 01E4CC 80023A6C 41820024 */  beq     lbl_80023A90
/* 01E4D0 80023A70 28070009 */  cmplwi  r7, 9
/* 01E4D4 80023A74 4082011C */  bne     lbl_80023B90
/* 01E4D8 80023A78 80680024 */  lwz     r3, 0x24(r8)
/* 01E4DC 80023A7C 3C037FC8 */  addis   r0, r3, 0x7fc8
/* 01E4E0 80023A80 28003C80 */  cmplwi  r0, 0x3c80
/* 01E4E4 80023A84 4182000C */  beq     lbl_80023A90
/* 01E4E8 80023A88 28003AC0 */  cmplwi  r0, 0x3ac0
/* 01E4EC 80023A8C 40820104 */  bne     lbl_80023B90
lbl_80023A90:
/* 01E4F0 80023A90 38840004 */  addi    r4, r4, 4
/* 01E4F4 80023A94 38C60004 */  addi    r6, r6, 4
/* 01E4F8 80023A98 38E70001 */  addi    r7, r7, 1
/* 01E4FC 80023A9C 80660000 */  lwz     r3, 0(r6)
/* 01E500 80023AA0 80040000 */  lwz     r0, 0(r4)
/* 01E504 80023AA4 7C030040 */  cmplw   r3, r0
/* 01E508 80023AA8 41820024 */  beq     lbl_80023ACC
/* 01E50C 80023AAC 28070009 */  cmplwi  r7, 9
/* 01E510 80023AB0 408200E0 */  bne     lbl_80023B90
/* 01E514 80023AB4 80680024 */  lwz     r3, 0x24(r8)
/* 01E518 80023AB8 3C037FC8 */  addis   r0, r3, 0x7fc8
/* 01E51C 80023ABC 28003C80 */  cmplwi  r0, 0x3c80
/* 01E520 80023AC0 4182000C */  beq     lbl_80023ACC
/* 01E524 80023AC4 28003AC0 */  cmplwi  r0, 0x3ac0
/* 01E528 80023AC8 408200C8 */  bne     lbl_80023B90
lbl_80023ACC:
/* 01E52C 80023ACC 38840004 */  addi    r4, r4, 4
/* 01E530 80023AD0 38C60004 */  addi    r6, r6, 4
/* 01E534 80023AD4 38E70001 */  addi    r7, r7, 1
/* 01E538 80023AD8 80660000 */  lwz     r3, 0(r6)
/* 01E53C 80023ADC 80040000 */  lwz     r0, 0(r4)
/* 01E540 80023AE0 7C030040 */  cmplw   r3, r0
/* 01E544 80023AE4 41820024 */  beq     lbl_80023B08
/* 01E548 80023AE8 28070009 */  cmplwi  r7, 9
/* 01E54C 80023AEC 408200A4 */  bne     lbl_80023B90
/* 01E550 80023AF0 80680024 */  lwz     r3, 0x24(r8)
/* 01E554 80023AF4 3C037FC8 */  addis   r0, r3, 0x7fc8
/* 01E558 80023AF8 28003C80 */  cmplwi  r0, 0x3c80
/* 01E55C 80023AFC 4182000C */  beq     lbl_80023B08
/* 01E560 80023B00 28003AC0 */  cmplwi  r0, 0x3ac0
/* 01E564 80023B04 4082008C */  bne     lbl_80023B90
lbl_80023B08:
/* 01E568 80023B08 38840004 */  addi    r4, r4, 4
/* 01E56C 80023B0C 38C60004 */  addi    r6, r6, 4
/* 01E570 80023B10 38E70001 */  addi    r7, r7, 1
/* 01E574 80023B14 80660000 */  lwz     r3, 0(r6)
/* 01E578 80023B18 80040000 */  lwz     r0, 0(r4)
/* 01E57C 80023B1C 7C030040 */  cmplw   r3, r0
/* 01E580 80023B20 41820024 */  beq     lbl_80023B44
/* 01E584 80023B24 28070009 */  cmplwi  r7, 9
/* 01E588 80023B28 40820068 */  bne     lbl_80023B90
/* 01E58C 80023B2C 80680024 */  lwz     r3, 0x24(r8)
/* 01E590 80023B30 3C037FC8 */  addis   r0, r3, 0x7fc8
/* 01E594 80023B34 28003C80 */  cmplwi  r0, 0x3c80
/* 01E598 80023B38 4182000C */  beq     lbl_80023B44
/* 01E59C 80023B3C 28003AC0 */  cmplwi  r0, 0x3ac0
/* 01E5A0 80023B40 40820050 */  bne     lbl_80023B90
lbl_80023B44:
/* 01E5A4 80023B44 38840004 */  addi    r4, r4, 4
/* 01E5A8 80023B48 38C60004 */  addi    r6, r6, 4
/* 01E5AC 80023B4C 38E70001 */  addi    r7, r7, 1
/* 01E5B0 80023B50 80660000 */  lwz     r3, 0(r6)
/* 01E5B4 80023B54 80040000 */  lwz     r0, 0(r4)
/* 01E5B8 80023B58 7C030040 */  cmplw   r3, r0
/* 01E5BC 80023B5C 41820024 */  beq     lbl_80023B80
/* 01E5C0 80023B60 28070009 */  cmplwi  r7, 9
/* 01E5C4 80023B64 4082002C */  bne     lbl_80023B90
/* 01E5C8 80023B68 80680024 */  lwz     r3, 0x24(r8)
/* 01E5CC 80023B6C 3C037FC8 */  addis   r0, r3, 0x7fc8
/* 01E5D0 80023B70 28003C80 */  cmplwi  r0, 0x3c80
/* 01E5D4 80023B74 4182000C */  beq     lbl_80023B80
/* 01E5D8 80023B78 28003AC0 */  cmplwi  r0, 0x3ac0
/* 01E5DC 80023B7C 40820014 */  bne     lbl_80023B90
lbl_80023B80:
/* 01E5E0 80023B80 38840004 */  addi    r4, r4, 4
/* 01E5E4 80023B84 38C60004 */  addi    r6, r6, 4
/* 01E5E8 80023B88 38E70001 */  addi    r7, r7, 1
/* 01E5EC 80023B8C 4200FED4 */  bdnz    lbl_80023A60
lbl_80023B90:
/* 01E5F0 80023B90 2807000A */  cmplwi  r7, 0xa
/* 01E5F4 80023B94 4082001C */  bne     lbl_80023BB0
/* 01E5F8 80023B98 801E0028 */  lwz     r0, 0x28(r30)
/* 01E5FC 80023B9C 2C000000 */  cmpwi   r0, 0
/* 01E600 80023BA0 40820018 */  bne     lbl_80023BB8
/* 01E604 80023BA4 38000001 */  li      r0, 1
/* 01E608 80023BA8 900D89F0 */  stw     r0, nCopyFrame@sda21(r13)
/* 01E60C 80023BAC 4800000C */  b       lbl_80023BB8
lbl_80023BB0:
/* 01E610 80023BB0 38000000 */  li      r0, 0
/* 01E614 80023BB4 901E0034 */  stw     r0, 0x34(r30)
lbl_80023BB8:
/* 01E618 80023BB8 800D89F0 */  lwz     r0, nCopyFrame@sda21(r13)
/* 01E61C 80023BBC 2C000000 */  cmpwi   r0, 0
/* 01E620 80023BC0 41820234 */  beq     lbl_80023DF4
/* 01E624 80023BC4 3C60800F */  lis     r3, sCommandCodes2@ha
/* 01E628 80023BC8 3883AA80 */  addi    r4, r3, sCommandCodes2@l
/* 01E62C 80023BCC 38A5FFD8 */  addi    r5, r5, -40
/* 01E630 80023BD0 38C00000 */  li      r6, 0
/* 01E634 80023BD4 48000004 */  b       lbl_80023BD8
lbl_80023BD8:
/* 01E638 80023BD8 48000004 */  b       lbl_80023BDC
lbl_80023BDC:
/* 01E63C 80023BDC 80650000 */  lwz     r3, 0(r5)
/* 01E640 80023BE0 80040000 */  lwz     r0, 0(r4)
/* 01E644 80023BE4 7C030040 */  cmplw   r3, r0
/* 01E648 80023BE8 40820104 */  bne     lbl_80023CEC
/* 01E64C 80023BEC 38840004 */  addi    r4, r4, 4
/* 01E650 80023BF0 38A50004 */  addi    r5, r5, 4
/* 01E654 80023BF4 38C00001 */  li      r6, 1
/* 01E658 80023BF8 80650000 */  lwz     r3, 0(r5)
/* 01E65C 80023BFC 80040000 */  lwz     r0, 0(r4)
/* 01E660 80023C00 7C030040 */  cmplw   r3, r0
/* 01E664 80023C04 408200E8 */  bne     lbl_80023CEC
/* 01E668 80023C08 38840004 */  addi    r4, r4, 4
/* 01E66C 80023C0C 38A50004 */  addi    r5, r5, 4
/* 01E670 80023C10 38C00002 */  li      r6, 2
/* 01E674 80023C14 80650000 */  lwz     r3, 0(r5)
/* 01E678 80023C18 80040000 */  lwz     r0, 0(r4)
/* 01E67C 80023C1C 7C030040 */  cmplw   r3, r0
/* 01E680 80023C20 408200CC */  bne     lbl_80023CEC
/* 01E684 80023C24 38840004 */  addi    r4, r4, 4
/* 01E688 80023C28 38A50004 */  addi    r5, r5, 4
/* 01E68C 80023C2C 38C00003 */  li      r6, 3
/* 01E690 80023C30 80650000 */  lwz     r3, 0(r5)
/* 01E694 80023C34 80040000 */  lwz     r0, 0(r4)
/* 01E698 80023C38 7C030040 */  cmplw   r3, r0
/* 01E69C 80023C3C 408200B0 */  bne     lbl_80023CEC
/* 01E6A0 80023C40 38840004 */  addi    r4, r4, 4
/* 01E6A4 80023C44 38A50004 */  addi    r5, r5, 4
/* 01E6A8 80023C48 38C00004 */  li      r6, 4
/* 01E6AC 80023C4C 80650000 */  lwz     r3, 0(r5)
/* 01E6B0 80023C50 80040000 */  lwz     r0, 0(r4)
/* 01E6B4 80023C54 7C030040 */  cmplw   r3, r0
/* 01E6B8 80023C58 40820094 */  bne     lbl_80023CEC
/* 01E6BC 80023C5C 38840004 */  addi    r4, r4, 4
/* 01E6C0 80023C60 38A50004 */  addi    r5, r5, 4
/* 01E6C4 80023C64 38C00005 */  li      r6, 5
/* 01E6C8 80023C68 80650000 */  lwz     r3, 0(r5)
/* 01E6CC 80023C6C 80040000 */  lwz     r0, 0(r4)
/* 01E6D0 80023C70 7C030040 */  cmplw   r3, r0
/* 01E6D4 80023C74 40820078 */  bne     lbl_80023CEC
/* 01E6D8 80023C78 38840004 */  addi    r4, r4, 4
/* 01E6DC 80023C7C 38A50004 */  addi    r5, r5, 4
/* 01E6E0 80023C80 38C00006 */  li      r6, 6
/* 01E6E4 80023C84 80650000 */  lwz     r3, 0(r5)
/* 01E6E8 80023C88 80040000 */  lwz     r0, 0(r4)
/* 01E6EC 80023C8C 7C030040 */  cmplw   r3, r0
/* 01E6F0 80023C90 4082005C */  bne     lbl_80023CEC
/* 01E6F4 80023C94 38840004 */  addi    r4, r4, 4
/* 01E6F8 80023C98 38A50004 */  addi    r5, r5, 4
/* 01E6FC 80023C9C 38C00007 */  li      r6, 7
/* 01E700 80023CA0 80650000 */  lwz     r3, 0(r5)
/* 01E704 80023CA4 80040000 */  lwz     r0, 0(r4)
/* 01E708 80023CA8 7C030040 */  cmplw   r3, r0
/* 01E70C 80023CAC 40820040 */  bne     lbl_80023CEC
/* 01E710 80023CB0 38840004 */  addi    r4, r4, 4
/* 01E714 80023CB4 38A50004 */  addi    r5, r5, 4
/* 01E718 80023CB8 38C00008 */  li      r6, 8
/* 01E71C 80023CBC 80650000 */  lwz     r3, 0(r5)
/* 01E720 80023CC0 80040000 */  lwz     r0, 0(r4)
/* 01E724 80023CC4 7C030040 */  cmplw   r3, r0
/* 01E728 80023CC8 40820024 */  bne     lbl_80023CEC
/* 01E72C 80023CCC 38840004 */  addi    r4, r4, 4
/* 01E730 80023CD0 38A50004 */  addi    r5, r5, 4
/* 01E734 80023CD4 38C00009 */  li      r6, 9
/* 01E738 80023CD8 80650000 */  lwz     r3, 0(r5)
/* 01E73C 80023CDC 80040000 */  lwz     r0, 0(r4)
/* 01E740 80023CE0 7C030040 */  cmplw   r3, r0
/* 01E744 80023CE4 40820008 */  bne     lbl_80023CEC
/* 01E748 80023CE8 38C0000A */  li      r6, 0xa
lbl_80023CEC:
/* 01E74C 80023CEC 2806000A */  cmplwi  r6, 0xa
/* 01E750 80023CF0 408200FC */  bne     lbl_80023DEC
/* 01E754 80023CF4 801E0028 */  lwz     r0, 0x28(r30)
/* 01E758 80023CF8 2C000000 */  cmpwi   r0, 0
/* 01E75C 80023CFC 408200D4 */  bne     lbl_80023DD0
/* 01E760 80023D00 38800000 */  li      r4, 0
/* 01E764 80023D04 48000004 */  b       lbl_80023D08
lbl_80023D08:
/* 01E768 80023D08 3C600001 */  lis     r3, 1
/* 01E76C 80023D0C 38632C00 */  addi    r3, r3, 0x2c00
/* 01E770 80023D10 38030007 */  addi    r0, r3, 7
/* 01E774 80023D14 5400E8FE */  srwi    r0, r0, 3
/* 01E778 80023D18 28030000 */  cmplwi  r3, 0
/* 01E77C 80023D1C 7C0903A6 */  mtctr   r0
/* 01E780 80023D20 3C7E0004 */  addis   r3, r30, 4
/* 01E784 80023D24 408100AC */  ble     lbl_80023DD0
/* 01E788 80023D28 48000004 */  b       lbl_80023D2C
lbl_80023D2C:
/* 01E78C 80023D2C 80C3D13C */  lwz     r6, -0x2ec4(r3)
/* 01E790 80023D30 39840002 */  addi    r12, r4, 2
/* 01E794 80023D34 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E798 80023D38 39640004 */  addi    r11, r4, 4
/* 01E79C 80023D3C 7C06222E */  lhzx    r0, r6, r4
/* 01E7A0 80023D40 39440006 */  addi    r10, r4, 6
/* 01E7A4 80023D44 7C05232E */  sthx    r0, r5, r4
/* 01E7A8 80023D48 39240008 */  addi    r9, r4, 8
/* 01E7AC 80023D4C 3904000A */  addi    r8, r4, 0xa
/* 01E7B0 80023D50 83A3D13C */  lwz     r29, -0x2ec4(r3)
/* 01E7B4 80023D54 38E4000C */  addi    r7, r4, 0xc
/* 01E7B8 80023D58 38C4000E */  addi    r6, r4, 0xe
/* 01E7BC 80023D5C 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E7C0 80023D60 7C1D622E */  lhzx    r0, r29, r12
/* 01E7C4 80023D64 38840010 */  addi    r4, r4, 0x10
/* 01E7C8 80023D68 7C05632E */  sthx    r0, r5, r12
/* 01E7CC 80023D6C 8183D13C */  lwz     r12, -0x2ec4(r3)
/* 01E7D0 80023D70 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E7D4 80023D74 7C0C5A2E */  lhzx    r0, r12, r11
/* 01E7D8 80023D78 7C055B2E */  sthx    r0, r5, r11
/* 01E7DC 80023D7C 8163D13C */  lwz     r11, -0x2ec4(r3)
/* 01E7E0 80023D80 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E7E4 80023D84 7C0B522E */  lhzx    r0, r11, r10
/* 01E7E8 80023D88 7C05532E */  sthx    r0, r5, r10
/* 01E7EC 80023D8C 8143D13C */  lwz     r10, -0x2ec4(r3)
/* 01E7F0 80023D90 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E7F4 80023D94 7C0A4A2E */  lhzx    r0, r10, r9
/* 01E7F8 80023D98 7C054B2E */  sthx    r0, r5, r9
/* 01E7FC 80023D9C 8123D13C */  lwz     r9, -0x2ec4(r3)
/* 01E800 80023DA0 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E804 80023DA4 7C09422E */  lhzx    r0, r9, r8
/* 01E808 80023DA8 7C05432E */  sthx    r0, r5, r8
/* 01E80C 80023DAC 8103D13C */  lwz     r8, -0x2ec4(r3)
/* 01E810 80023DB0 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E814 80023DB4 7C083A2E */  lhzx    r0, r8, r7
/* 01E818 80023DB8 7C053B2E */  sthx    r0, r5, r7
/* 01E81C 80023DBC 80E3D13C */  lwz     r7, -0x2ec4(r3)
/* 01E820 80023DC0 80A3D140 */  lwz     r5, -0x2ec0(r3)
/* 01E824 80023DC4 7C07322E */  lhzx    r0, r7, r6
/* 01E828 80023DC8 7C05332E */  sthx    r0, r5, r6
/* 01E82C 80023DCC 4200FF60 */  bdnz    lbl_80023D2C
lbl_80023DD0:
/* 01E830 80023DD0 38600001 */  li      r3, 1
/* 01E834 80023DD4 907E0028 */  stw     r3, 0x28(r30)
/* 01E838 80023DD8 38000000 */  li      r0, 0
/* 01E83C 80023DDC 901E002C */  stw     r0, 0x2c(r30)
/* 01E840 80023DE0 907E0034 */  stw     r3, 0x34(r30)
/* 01E844 80023DE4 900D89F0 */  stw     r0, nCopyFrame@sda21(r13)
/* 01E848 80023DE8 4800000C */  b       lbl_80023DF4
lbl_80023DEC:
/* 01E84C 80023DEC 38000000 */  li      r0, 0
/* 01E850 80023DF0 901E0034 */  stw     r0, 0x34(r30)
lbl_80023DF4:
/* 01E854 80023DF4 801E0028 */  lwz     r0, 0x28(r30)
/* 01E858 80023DF8 2C000000 */  cmpwi   r0, 0
/* 01E85C 80023DFC 41820030 */  beq     lbl_80023E2C
/* 01E860 80023E00 800D89EC */  lwz     r0, nLastFrame@sda21(r13)
/* 01E864 80023E04 807E0030 */  lwz     r3, 0x30(r30)
/* 01E868 80023E08 7C001850 */  subf    r0, r0, r3
/* 01E86C 80023E0C 2C000002 */  cmpwi   r0, 2
/* 01E870 80023E10 41800010 */  blt     lbl_80023E20
/* 01E874 80023E14 38000001 */  li      r0, 1
/* 01E878 80023E18 906D89EC */  stw     r3, nLastFrame@sda21(r13)
/* 01E87C 80023E1C 900D89DC */  stw     r0, gNoSwapBuffer@sda21(r13)
lbl_80023E20:
/* 01E880 80023E20 38000000 */  li      r0, 0
/* 01E884 80023E24 901E0028 */  stw     r0, 0x28(r30)
/* 01E888 80023E28 48000134 */  b       lbl_80023F5C
lbl_80023E2C:
/* 01E88C 80023E2C 807E0040 */  lwz     r3, 0x40(r30)
/* 01E890 80023E30 5460043E */  clrlwi  r0, r3, 0x10
/* 01E894 80023E34 2C000000 */  cmpwi   r0, 0
/* 01E898 80023E38 418200A8 */  beq     lbl_80023EE0
/* 01E89C 80023E3C 801E0024 */  lwz     r0, 0x24(r30)
/* 01E8A0 80023E40 2C000000 */  cmpwi   r0, 0
/* 01E8A4 80023E44 4182000C */  beq     lbl_80023E50
/* 01E8A8 80023E48 60600010 */  ori     r0, r3, 0x10
/* 01E8AC 80023E4C 901E0040 */  stw     r0, 0x40(r30)
lbl_80023E50:
/* 01E8B0 80023E50 801E0024 */  lwz     r0, 0x24(r30)
/* 01E8B4 80023E54 2C000000 */  cmpwi   r0, 0
/* 01E8B8 80023E58 40820104 */  bne     lbl_80023F5C
/* 01E8BC 80023E5C 801E0040 */  lwz     r0, 0x40(r30)
/* 01E8C0 80023E60 54000636 */  rlwinm  r0, r0, 0, 0x18, 0x1b
/* 01E8C4 80023E64 2C000000 */  cmpwi   r0, 0
/* 01E8C8 80023E68 408200F4 */  bne     lbl_80023F5C
/* 01E8CC 80023E6C 3C7E0004 */  addis   r3, r30, 4
/* 01E8D0 80023E70 83A3D13C */  lwz     r29, -0x2ec4(r3)
/* 01E8D4 80023E74 38600000 */  li      r3, 0
/* 01E8D8 80023E78 38800000 */  li      r4, 0
/* 01E8DC 80023E7C 38A00280 */  li      r5, 0x280
/* 01E8E0 80023E80 38C001E0 */  li      r6, 0x1e0
/* 01E8E4 80023E84 48087A59 */  bl      GXSetTexCopySrc
/* 01E8E8 80023E88 38600140 */  li      r3, 0x140
/* 01E8EC 80023E8C 388000F0 */  li      r4, 0xf0
/* 01E8F0 80023E90 38A00004 */  li      r5, 4
/* 01E8F4 80023E94 38C00001 */  li      r6, 1
/* 01E8F8 80023E98 48087AF5 */  bl      GXSetTexCopyDst
/* 01E8FC 80023E9C 3C800002 */  lis     r4, 2
/* 01E900 80023EA0 7FA3EB78 */  mr      r3, r29
/* 01E904 80023EA4 38845800 */  addi    r4, r4, 0x5800
/* 01E908 80023EA8 480798A9 */  bl      DCInvalidateRange
/* 01E90C 80023EAC 7FA3EB78 */  mr      r3, r29
/* 01E910 80023EB0 38800000 */  li      r4, 0
/* 01E914 80023EB4 48088385 */  bl      GXCopyTex
/* 01E918 80023EB8 38000000 */  li      r0, 0
/* 01E91C 80023EBC 900D89C4 */  stw     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01E920 80023EC0 38607D00 */  li      r3, 0x7d00
/* 01E924 80023EC4 48086FF9 */  bl      GXSetDrawSync
/* 01E928 80023EC8 48000004 */  b       lbl_80023ECC
lbl_80023ECC:
/* 01E92C 80023ECC 48000004 */  b       lbl_80023ED0
lbl_80023ED0:
/* 01E930 80023ED0 800D89C4 */  lwz     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01E934 80023ED4 2C000000 */  cmpwi   r0, 0
/* 01E938 80023ED8 4182FFF8 */  beq     lbl_80023ED0
/* 01E93C 80023EDC 48000080 */  b       lbl_80023F5C
lbl_80023EE0:
/* 01E940 80023EE0 801E0024 */  lwz     r0, 0x24(r30)
/* 01E944 80023EE4 2C000000 */  cmpwi   r0, 0
/* 01E948 80023EE8 40820074 */  bne     lbl_80023F5C
/* 01E94C 80023EEC 3C7E0004 */  addis   r3, r30, 4
/* 01E950 80023EF0 83A3D13C */  lwz     r29, -0x2ec4(r3)
/* 01E954 80023EF4 38600000 */  li      r3, 0
/* 01E958 80023EF8 38800000 */  li      r4, 0
/* 01E95C 80023EFC 38A00280 */  li      r5, 0x280
/* 01E960 80023F00 38C001E0 */  li      r6, 0x1e0
/* 01E964 80023F04 480879D9 */  bl      GXSetTexCopySrc
/* 01E968 80023F08 38600140 */  li      r3, 0x140
/* 01E96C 80023F0C 388000F0 */  li      r4, 0xf0
/* 01E970 80023F10 38A00004 */  li      r5, 4
/* 01E974 80023F14 38C00001 */  li      r6, 1
/* 01E978 80023F18 48087A75 */  bl      GXSetTexCopyDst
/* 01E97C 80023F1C 3C800002 */  lis     r4, 2
/* 01E980 80023F20 7FA3EB78 */  mr      r3, r29
/* 01E984 80023F24 38845800 */  addi    r4, r4, 0x5800
/* 01E988 80023F28 48079829 */  bl      DCInvalidateRange
/* 01E98C 80023F2C 7FA3EB78 */  mr      r3, r29
/* 01E990 80023F30 38800000 */  li      r4, 0
/* 01E994 80023F34 48088305 */  bl      GXCopyTex
/* 01E998 80023F38 38000000 */  li      r0, 0
/* 01E99C 80023F3C 900D89C4 */  stw     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01E9A0 80023F40 38607D00 */  li      r3, 0x7d00
/* 01E9A4 80023F44 48086F79 */  bl      GXSetDrawSync
/* 01E9A8 80023F48 48000004 */  b       lbl_80023F4C
lbl_80023F4C:
/* 01E9AC 80023F4C 48000004 */  b       lbl_80023F50
lbl_80023F50:
/* 01E9B0 80023F50 800D89C4 */  lwz     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01E9B4 80023F54 2C000000 */  cmpwi   r0, 0
/* 01E9B8 80023F58 4182FFF8 */  beq     lbl_80023F50
lbl_80023F5C:
/* 01E9BC 80023F5C 807F0010 */  lwz     r3, 0x10(r31)
/* 01E9C0 80023F60 3C03FFBE */  addis   r0, r3, 0xffbe
/* 01E9C4 80023F64 2800EEC0 */  cmplwi  r0, 0xeec0
/* 01E9C8 80023F68 41820018 */  beq     lbl_80023F80
/* 01E9CC 80023F6C 3C03FFC6 */  addis   r0, r3, 0xffc6
/* 01E9D0 80023F70 28009480 */  cmplwi  r0, 0x9480
/* 01E9D4 80023F74 4182000C */  beq     lbl_80023F80
/* 01E9D8 80023F78 280092C0 */  cmplwi  r0, 0x92c0
/* 01E9DC 80023F7C 408200A0 */  bne     lbl_8002401C
lbl_80023F80:
/* 01E9E0 80023F80 801E0024 */  lwz     r0, 0x24(r30)
/* 01E9E4 80023F84 2C000000 */  cmpwi   r0, 0
/* 01E9E8 80023F88 41820094 */  beq     lbl_8002401C
/* 01E9EC 80023F8C 801E0050 */  lwz     r0, 0x50(r30)
/* 01E9F0 80023F90 2C000000 */  cmpwi   r0, 0
/* 01E9F4 80023F94 40820088 */  bne     lbl_8002401C
/* 01E9F8 80023F98 3FFE0004 */  addis   r31, r30, 4
/* 01E9FC 80023F9C 809FD13C */  lwz     r4, -0x2ec4(r31)
/* 01EA00 80023FA0 7FC3F378 */  mr      r3, r30
/* 01EA04 80023FA4 48001415 */  bl      ZeldaDrawFrameBlur
/* 01EA08 80023FA8 83BFD13C */  lwz     r29, -0x2ec4(r31)
/* 01EA0C 80023FAC 38600000 */  li      r3, 0
/* 01EA10 80023FB0 38800000 */  li      r4, 0
/* 01EA14 80023FB4 38A00280 */  li      r5, 0x280
/* 01EA18 80023FB8 38C001E0 */  li      r6, 0x1e0
/* 01EA1C 80023FBC 48087921 */  bl      GXSetTexCopySrc
/* 01EA20 80023FC0 38600140 */  li      r3, 0x140
/* 01EA24 80023FC4 388000F0 */  li      r4, 0xf0
/* 01EA28 80023FC8 38A00004 */  li      r5, 4
/* 01EA2C 80023FCC 38C00001 */  li      r6, 1
/* 01EA30 80023FD0 480879BD */  bl      GXSetTexCopyDst
/* 01EA34 80023FD4 3C800002 */  lis     r4, 2
/* 01EA38 80023FD8 7FA3EB78 */  mr      r3, r29
/* 01EA3C 80023FDC 38845800 */  addi    r4, r4, 0x5800
/* 01EA40 80023FE0 48079771 */  bl      DCInvalidateRange
/* 01EA44 80023FE4 7FA3EB78 */  mr      r3, r29
/* 01EA48 80023FE8 38800000 */  li      r4, 0
/* 01EA4C 80023FEC 4808824D */  bl      GXCopyTex
/* 01EA50 80023FF0 38000000 */  li      r0, 0
/* 01EA54 80023FF4 900D89C4 */  stw     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01EA58 80023FF8 38607D00 */  li      r3, 0x7d00
/* 01EA5C 80023FFC 48086EC1 */  bl      GXSetDrawSync
/* 01EA60 80024000 48000004 */  b       lbl_80024004
lbl_80024004:
/* 01EA64 80024004 48000004 */  b       lbl_80024008
lbl_80024008:
/* 01EA68 80024008 800D89C4 */  lwz     r0, sCopyFrameSyncReceived@sda21(r13)
/* 01EA6C 8002400C 2C000000 */  cmpwi   r0, 0
/* 01EA70 80024010 4182FFF8 */  beq     lbl_80024008
/* 01EA74 80024014 38000001 */  li      r0, 1
/* 01EA78 80024018 901E0050 */  stw     r0, 0x50(r30)
lbl_8002401C:
/* 01EA7C 8002401C 38600001 */  li      r3, 1
/* 01EA80 80024020 80010044 */  lwz     r0, 0x44(r1)
/* 01EA84 80024024 83E1003C */  lwz     r31, 0x3c(r1)
/* 01EA88 80024028 83C10038 */  lwz     r30, 0x38(r1)
/* 01EA8C 8002402C 7C0803A6 */  mtlr    r0
/* 01EA90 80024030 83A10034 */  lwz     r29, 0x34(r1)
/* 01EA94 80024034 38210040 */  addi    r1, r1, 0x40
/* 01EA98 80024038 4E800020 */  blr     
