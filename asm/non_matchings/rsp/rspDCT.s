glabel rspDCT
/* 07A0C8 8007F668 9421FF00 */  stwu    r1, -0x100(r1)
/* 07A0CC 8007F66C BDC100B8 */  stmw    r14, 0xb8(r1)
/* 07A0D0 8007F670 3801001C */  addi    r0, r1, 0x1c
/* 07A0D4 8007F674 900100A8 */  stw     r0, 0xa8(r1)
/* 07A0D8 8007F678 38000000 */  li      r0, 0
/* 07A0DC 8007F67C 900100A4 */  stw     r0, 0xa4(r1)
/* 07A0E0 8007F680 38000000 */  li      r0, 0
/* 07A0E4 8007F684 900100AC */  stw     r0, 0xac(r1)
lbl_8007F688:
/* 07A0E8 8007F688 800100A8 */  lwz     r0, 0xa8(r1)
/* 07A0EC 8007F68C 826100AC */  lwz     r19, 0xac(r1)
/* 07A0F0 8007F690 900100B0 */  stw     r0, 0xb0(r1)
/* 07A0F4 8007F694 38000000 */  li      r0, 0
/* 07A0F8 8007F698 5672103A */  slwi    r18, r19, 2
/* 07A0FC 8007F69C 900100A0 */  stw     r0, 0xa0(r1)
lbl_8007F6A0:
/* 07A100 8007F6A0 38000008 */  li      r0, 8
/* 07A104 8007F6A4 80A100B0 */  lwz     r5, 0xb0(r1)
/* 07A108 8007F6A8 7C0903A6 */  mtctr   r0
/* 07A10C 8007F6AC 38130004 */  addi    r0, r19, 4
/* 07A110 8007F6B0 39930007 */  addi    r12, r19, 7
/* 07A114 8007F6B4 5410103A */  slwi    r16, r0, 2
/* 07A118 8007F6B8 5580103A */  slwi    r0, r12, 2
/* 07A11C 8007F6BC 39330001 */  addi    r9, r19, 1
/* 07A120 8007F6C0 900100B4 */  stw     r0, 0xb4(r1)
/* 07A124 8007F6C4 39130002 */  addi    r8, r19, 2
/* 07A128 8007F6C8 38D30003 */  addi    r6, r19, 3
/* 07A12C 8007F6CC 39530005 */  addi    r10, r19, 5
/* 07A130 8007F6D0 39730006 */  addi    r11, r19, 6
/* 07A134 8007F6D4 38800000 */  li      r4, 0
/* 07A138 8007F6D8 38E40000 */  addi    r7, r4, 0
/* 07A13C 8007F6DC 5534103A */  slwi    r20, r9, 2
/* 07A140 8007F6E0 5515103A */  slwi    r21, r8, 2
/* 07A144 8007F6E4 54D1103A */  slwi    r17, r6, 2
/* 07A148 8007F6E8 554F103A */  slwi    r15, r10, 2
/* 07A14C 8007F6EC 556E103A */  slwi    r14, r11, 2
lbl_8007F6F0:
/* 07A150 8007F6F0 38040001 */  addi    r0, r4, 1
/* 07A154 8007F6F4 816339A8 */  lwz     r11, 0x39a8(r3)
/* 07A158 8007F6F8 5400103A */  slwi    r0, r0, 2
/* 07A15C 8007F6FC 80C339C8 */  lwz     r6, 0x39c8(r3)
/* 07A160 8007F700 39040002 */  addi    r8, r4, 2
/* 07A164 8007F704 7F0B002E */  lwzx    r24, r11, r0
/* 07A168 8007F708 5509103A */  slwi    r9, r8, 2
/* 07A16C 8007F70C 7D4B382E */  lwzx    r10, r11, r7
/* 07A170 8007F710 39040003 */  addi    r8, r4, 3
/* 07A174 8007F714 7F8B482E */  lwzx    r28, r11, r9
/* 07A178 8007F718 38040004 */  addi    r0, r4, 4
/* 07A17C 8007F71C 7D86902E */  lwzx    r12, r6, r18
/* 07A180 8007F720 5508103A */  slwi    r8, r8, 2
/* 07A184 8007F724 7EE6A02E */  lwzx    r23, r6, r20
/* 07A188 8007F728 5400103A */  slwi    r0, r0, 2
/* 07A18C 8007F72C 7F2B402E */  lwzx    r25, r11, r8
/* 07A190 8007F730 39240005 */  addi    r9, r4, 5
/* 07A194 8007F734 7FAB002E */  lwzx    r29, r11, r0
/* 07A198 8007F738 39040006 */  addi    r8, r4, 6
/* 07A19C 8007F73C 7F66A82E */  lwzx    r27, r6, r21
/* 07A1A0 8007F740 38040007 */  addi    r0, r4, 7
/* 07A1A4 8007F744 7EC6882E */  lwzx    r22, r6, r17
/* 07A1A8 8007F748 5529103A */  slwi    r9, r9, 2
/* 07A1AC 8007F74C 7F46802E */  lwzx    r26, r6, r16
/* 07A1B0 8007F750 5400103A */  slwi    r0, r0, 2
/* 07A1B4 8007F754 7FCB482E */  lwzx    r30, r11, r9
/* 07A1B8 8007F758 5508103A */  slwi    r8, r8, 2
/* 07A1BC 8007F75C 7C0B002E */  lwzx    r0, r11, r0
/* 07A1C0 8007F760 7D2B402E */  lwzx    r9, r11, r8
/* 07A1C4 8007F764 7D4A61D6 */  mullw   r10, r10, r12
/* 07A1C8 8007F768 816100B4 */  lwz     r11, 0xb4(r1)
/* 07A1CC 8007F76C 7D06702E */  lwzx    r8, r6, r14
/* 07A1D0 8007F770 7D86582E */  lwzx    r12, r6, r11
/* 07A1D4 8007F774 7FE6782E */  lwzx    r31, r6, r15
/* 07A1D8 8007F778 7CD8B9D6 */  mullw   r6, r24, r23
/* 07A1DC 8007F77C 7CCA3214 */  add     r6, r10, r6
/* 07A1E0 8007F780 7D7CD9D6 */  mullw   r11, r28, r27
/* 07A1E4 8007F784 7CC65A14 */  add     r6, r6, r11
/* 07A1E8 8007F788 7D59B1D6 */  mullw   r10, r25, r22
/* 07A1EC 8007F78C 7CC65214 */  add     r6, r6, r10
/* 07A1F0 8007F790 7D7DD1D6 */  mullw   r11, r29, r26
/* 07A1F4 8007F794 7D5EF9D6 */  mullw   r10, r30, r31
/* 07A1F8 8007F798 7CC65A14 */  add     r6, r6, r11
/* 07A1FC 8007F79C 7D0941D6 */  mullw   r8, r9, r8
/* 07A200 8007F7A0 7CC65214 */  add     r6, r6, r10
/* 07A204 8007F7A4 7C0061D6 */  mullw   r0, r0, r12
/* 07A208 8007F7A8 7CC64214 */  add     r6, r6, r8
/* 07A20C 8007F7AC 7CC60214 */  add     r6, r6, r0
/* 07A210 8007F7B0 38060800 */  addi    r0, r6, 0x800
/* 07A214 8007F7B4 7C006670 */  srawi   r0, r0, 0xc
/* 07A218 8007F7B8 7C000734 */  extsh   r0, r0
/* 07A21C 8007F7BC B0050000 */  sth     r0, 0(r5)
/* 07A220 8007F7C0 38840008 */  addi    r4, r4, 8
/* 07A224 8007F7C4 38E70020 */  addi    r7, r7, 0x20
/* 07A228 8007F7C8 38A50002 */  addi    r5, r5, 2
/* 07A22C 8007F7CC 4200FF24 */  bdnz    lbl_8007F6F0
/* 07A230 8007F7D0 808100A0 */  lwz     r4, 0xa0(r1)
/* 07A234 8007F7D4 3A730008 */  addi    r19, r19, 8
/* 07A238 8007F7D8 3A520020 */  addi    r18, r18, 0x20
/* 07A23C 8007F7DC 38840001 */  addi    r4, r4, 1
/* 07A240 8007F7E0 908100A0 */  stw     r4, 0xa0(r1)
/* 07A244 8007F7E4 808100B0 */  lwz     r4, 0xb0(r1)
/* 07A248 8007F7E8 800100A0 */  lwz     r0, 0xa0(r1)
/* 07A24C 8007F7EC 38840010 */  addi    r4, r4, 0x10
/* 07A250 8007F7F0 2C000008 */  cmpwi   r0, 8
/* 07A254 8007F7F4 908100B0 */  stw     r4, 0xb0(r1)
/* 07A258 8007F7F8 4180FEA8 */  blt     lbl_8007F6A0
/* 07A25C 8007F7FC 80C100A8 */  lwz     r6, 0xa8(r1)
/* 07A260 8007F800 3A400000 */  li      r18, 0
lbl_8007F804:
/* 07A264 8007F804 38000008 */  li      r0, 8
/* 07A268 8007F808 80A100AC */  lwz     r5, 0xac(r1)
/* 07A26C 8007F80C 7C0903A6 */  mtctr   r0
/* 07A270 8007F810 38800000 */  li      r4, 0
/* 07A274 8007F814 39000000 */  li      r8, 0
lbl_8007F818:
/* 07A278 8007F818 38040001 */  addi    r0, r4, 1
/* 07A27C 8007F81C 80E339A8 */  lwz     r7, 0x39a8(r3)
/* 07A280 8007F820 540B103A */  slwi    r11, r0, 2
/* 07A284 8007F824 A9460000 */  lha     r10, 0(r6)
/* 07A288 8007F828 7D87402E */  lwzx    r12, r7, r8
/* 07A28C 8007F82C 38040002 */  addi    r0, r4, 2
/* 07A290 8007F830 5409103A */  slwi    r9, r0, 2
/* 07A294 8007F834 AA660010 */  lha     r19, 0x10(r6)
/* 07A298 8007F838 38040003 */  addi    r0, r4, 3
/* 07A29C 8007F83C 7EC7582E */  lwzx    r22, r7, r11
/* 07A2A0 8007F840 5400103A */  slwi    r0, r0, 2
/* 07A2A4 8007F844 39640004 */  addi    r11, r4, 4
/* 07A2A8 8007F848 AAA60020 */  lha     r21, 0x20(r6)
/* 07A2AC 8007F84C 7F47482E */  lwzx    r26, r7, r9
/* 07A2B0 8007F850 556B103A */  slwi    r11, r11, 2
/* 07A2B4 8007F854 AA860030 */  lha     r20, 0x30(r6)
/* 07A2B8 8007F858 39240005 */  addi    r9, r4, 5
/* 07A2BC 8007F85C 7F27002E */  lwzx    r25, r7, r0
/* 07A2C0 8007F860 5520103A */  slwi    r0, r9, 2
/* 07A2C4 8007F864 AB060040 */  lha     r24, 0x40(r6)
/* 07A2C8 8007F868 39240006 */  addi    r9, r4, 6
/* 07A2CC 8007F86C 7F67582E */  lwzx    r27, r7, r11
/* 07A2D0 8007F870 39640007 */  addi    r11, r4, 7
/* 07A2D4 8007F874 AAE60050 */  lha     r23, 0x50(r6)
/* 07A2D8 8007F878 5529103A */  slwi    r9, r9, 2
/* 07A2DC 8007F87C 7FA7002E */  lwzx    r29, r7, r0
/* 07A2E0 8007F880 5560103A */  slwi    r0, r11, 2
/* 07A2E4 8007F884 AB860060 */  lha     r28, 0x60(r6)
/* 07A2E8 8007F888 7FC7482E */  lwzx    r30, r7, r9
/* 07A2EC 8007F88C 7D6A61D6 */  mullw   r11, r10, r12
/* 07A2F0 8007F890 A9260070 */  lha     r9, 0x70(r6)
/* 07A2F4 8007F894 7C07002E */  lwzx    r0, r7, r0
/* 07A2F8 8007F898 83E339C8 */  lwz     r31, 0x39c8(r3)
/* 07A2FC 8007F89C 7D922A14 */  add     r12, r18, r5
/* 07A300 8007F8A0 7CF3B1D6 */  mullw   r7, r19, r22
/* 07A304 8007F8A4 7D55D1D6 */  mullw   r10, r21, r26
/* 07A308 8007F8A8 7CEB3A14 */  add     r7, r11, r7
/* 07A30C 8007F8AC 7D74C9D6 */  mullw   r11, r20, r25
/* 07A310 8007F8B0 7CE75214 */  add     r7, r7, r10
/* 07A314 8007F8B4 7D58D9D6 */  mullw   r10, r24, r27
/* 07A318 8007F8B8 7CE75A14 */  add     r7, r7, r11
/* 07A31C 8007F8BC 7D77E9D6 */  mullw   r11, r23, r29
/* 07A320 8007F8C0 7CE75214 */  add     r7, r7, r10
/* 07A324 8007F8C4 7D5CF1D6 */  mullw   r10, r28, r30
/* 07A328 8007F8C8 7CE75A14 */  add     r7, r7, r11
/* 07A32C 8007F8CC 7C0901D6 */  mullw   r0, r9, r0
/* 07A330 8007F8D0 7CE75214 */  add     r7, r7, r10
/* 07A334 8007F8D4 7CE70214 */  add     r7, r7, r0
/* 07A338 8007F8D8 38074000 */  addi    r0, r7, 0x4000
/* 07A33C 8007F8DC 7C077E70 */  srawi   r7, r0, 0xf
/* 07A340 8007F8E0 5580103A */  slwi    r0, r12, 2
/* 07A344 8007F8E4 7CFF012E */  stwx    r7, r31, r0
/* 07A348 8007F8E8 38840008 */  addi    r4, r4, 8
/* 07A34C 8007F8EC 39080020 */  addi    r8, r8, 0x20
/* 07A350 8007F8F0 38A50008 */  addi    r5, r5, 8
/* 07A354 8007F8F4 4200FF24 */  bdnz    lbl_8007F818
/* 07A358 8007F8F8 3A520001 */  addi    r18, r18, 1
/* 07A35C 8007F8FC 2C120008 */  cmpwi   r18, 8
/* 07A360 8007F900 38C60002 */  addi    r6, r6, 2
/* 07A364 8007F904 4180FF00 */  blt     lbl_8007F804
/* 07A368 8007F908 808100A4 */  lwz     r4, 0xa4(r1)
/* 07A36C 8007F90C 38840001 */  addi    r4, r4, 1
/* 07A370 8007F910 908100A4 */  stw     r4, 0xa4(r1)
/* 07A374 8007F914 808100AC */  lwz     r4, 0xac(r1)
/* 07A378 8007F918 800100A4 */  lwz     r0, 0xa4(r1)
/* 07A37C 8007F91C 38840040 */  addi    r4, r4, 0x40
/* 07A380 8007F920 2C000006 */  cmpwi   r0, 6
/* 07A384 8007F924 908100AC */  stw     r4, 0xac(r1)
/* 07A388 8007F928 4180FD60 */  blt     lbl_8007F688
/* 07A38C 8007F92C B9C100B8 */  lmw     r14, 0xb8(r1)
/* 07A390 8007F930 38210100 */  addi    r1, r1, 0x100
/* 07A394 8007F934 4E800020 */  blr     