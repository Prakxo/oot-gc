glabel videoForceRetrace
/* 089454 8008E9F4 7C0802A6 */  mflr    r0
/* 089458 8008E9F8 38800008 */  li      r4, 8
/* 08945C 8008E9FC 90010004 */  stw     r0, 4(r1)
/* 089460 8008EA00 9421FFE8 */  stwu    r1, -0x18(r1)
/* 089464 8008EA04 93E10014 */  stw     r31, 0x14(r1)
/* 089468 8008EA08 7C7F1B78 */  mr      r31, r3
/* 08946C 8008EA0C 80630010 */  lwz     r3, 0x10(r3)
/* 089470 8008EA10 4BF9E8DD */  bl      systemExceptionPending
/* 089474 8008EA14 2C030000 */  cmpwi   r3, 0
/* 089478 8008EA18 40820030 */  bne     lbl_8008EA48
/* 08947C 8008EA1C 801F0014 */  lwz     r0, 0x14(r31)
/* 089480 8008EA20 540007BF */  clrlwi. r0, r0, 0x1e
/* 089484 8008EA24 41820024 */  beq     lbl_8008EA48
/* 089488 8008EA28 801F0020 */  lwz     r0, 0x20(r31)
/* 08948C 8008EA2C 38801000 */  li      r4, 0x1000
/* 089490 8008EA30 38A00008 */  li      r5, 8
/* 089494 8008EA34 901F0000 */  stw     r0, 0(r31)
/* 089498 8008EA38 807F0010 */  lwz     r3, 0x10(r31)
/* 08949C 8008EA3C 4BF79231 */  bl      xlObjectEvent
/* 0894A0 8008EA40 38600001 */  li      r3, 1
/* 0894A4 8008EA44 48000008 */  b       lbl_8008EA4C
lbl_8008EA48:
/* 0894A8 8008EA48 38600000 */  li      r3, 0
lbl_8008EA4C:
/* 0894AC 8008EA4C 8001001C */  lwz     r0, 0x1c(r1)
/* 0894B0 8008EA50 83E10014 */  lwz     r31, 0x14(r1)
/* 0894B4 8008EA54 38210018 */  addi    r1, r1, 0x18
/* 0894B8 8008EA58 7C0803A6 */  mtlr    r0
/* 0894BC 8008EA5C 4E800020 */  blr     
