glabel soundPlayBuffer
/* 01772C 8001CCCC 7C0802A6 */  mflr    r0
/* 017730 8001CCD0 90010004 */  stw     r0, 4(r1)
/* 017734 8001CCD4 9421FFF8 */  stwu    r1, -8(r1)
/* 017738 8001CCD8 800300B0 */  lwz     r0, 0xb0(r3)
/* 01773C 8001CCDC 808300AC */  lwz     r4, 0xac(r3)
/* 017740 8001CCE0 7C002000 */  cmpw    r0, r4
/* 017744 8001CCE4 41820050 */  beq     lbl_8001CD34
/* 017748 8001CCE8 800300B4 */  lwz     r0, 0xb4(r3)
/* 01774C 8001CCEC 2C000002 */  cmpwi   r0, 2
/* 017750 8001CCF0 40820010 */  bne     lbl_8001CD00
/* 017754 8001CCF4 808300D4 */  lwz     r4, 0xd4(r3)
/* 017758 8001CCF8 80C300C0 */  lwz     r6, 0xc0(r3)
/* 01775C 8001CCFC 4800002C */  b       lbl_8001CD28
lbl_8001CD00:
/* 017760 8001CD00 38A40001 */  addi    r5, r4, 1
/* 017764 8001CD04 5480103A */  slwi    r0, r4, 2
/* 017768 8001CD08 7CC30214 */  add     r6, r3, r0
/* 01776C 8001CD0C 7CA02670 */  srawi   r0, r5, 4
/* 017770 8001CD10 80860050 */  lwz     r4, 0x50(r6)
/* 017774 8001CD14 7C000194 */  addze   r0, r0
/* 017778 8001CD18 80C60010 */  lwz     r6, 0x10(r6)
/* 01777C 8001CD1C 54002036 */  slwi    r0, r0, 4
/* 017780 8001CD20 7C002810 */  subfc   r0, r0, r5
/* 017784 8001CD24 900300AC */  stw     r0, 0xac(r3)
lbl_8001CD28:
/* 017788 8001CD28 38000000 */  li      r0, 0
/* 01778C 8001CD2C 900300B4 */  stw     r0, 0xb4(r3)
/* 017790 8001CD30 48000040 */  b       lbl_8001CD70
lbl_8001CD34:
/* 017794 8001CD34 800300B4 */  lwz     r0, 0xb4(r3)
/* 017798 8001CD38 2C000001 */  cmpwi   r0, 1
/* 01779C 8001CD3C 41820010 */  beq     lbl_8001CD4C
/* 0177A0 8001CD40 800300B4 */  lwz     r0, 0xb4(r3)
/* 0177A4 8001CD44 2C000002 */  cmpwi   r0, 2
/* 0177A8 8001CD48 40820018 */  bne     lbl_8001CD60
lbl_8001CD4C:
/* 0177AC 8001CD4C 80C300B8 */  lwz     r6, 0xb8(r3)
/* 0177B0 8001CD50 38000002 */  li      r0, 2
/* 0177B4 8001CD54 808300CC */  lwz     r4, 0xcc(r3)
/* 0177B8 8001CD58 900300B4 */  stw     r0, 0xb4(r3)
/* 0177BC 8001CD5C 48000014 */  b       lbl_8001CD70
lbl_8001CD60:
/* 0177C0 8001CD60 80C300C4 */  lwz     r6, 0xc4(r3)
/* 0177C4 8001CD64 38000001 */  li      r0, 1
/* 0177C8 8001CD68 808300D4 */  lwz     r4, 0xd4(r3)
/* 0177CC 8001CD6C 900300B4 */  stw     r0, 0xb4(r3)
lbl_8001CD70:
/* 0177D0 8001CD70 7CC33378 */  mr      r3, r6
/* 0177D4 8001CD74 4809B255 */  bl      AIInitDMA
/* 0177D8 8001CD78 8001000C */  lwz     r0, 0xc(r1)
/* 0177DC 8001CD7C 38600001 */  li      r3, 1
/* 0177E0 8001CD80 38210008 */  addi    r1, r1, 8
/* 0177E4 8001CD84 7C0803A6 */  mtlr    r0
/* 0177E8 8001CD88 4E800020 */  blr     