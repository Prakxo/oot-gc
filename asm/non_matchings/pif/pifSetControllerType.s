glabel pifSetControllerType
/* 0673F4 8006C994 7C0802A6 */  mflr    r0
/* 0673F8 8006C998 90010004 */  stw     r0, 4(r1)
/* 0673FC 8006C99C 9421FFD8 */  stwu    r1, -0x28(r1)
/* 067400 8006C9A0 93E10024 */  stw     r31, 0x24(r1)
/* 067404 8006C9A4 3BE50000 */  addi    r31, r5, 0
/* 067408 8006C9A8 93C10020 */  stw     r30, 0x20(r1)
/* 06740C 8006C9AC 3BC40000 */  addi    r30, r4, 0
/* 067410 8006C9B0 93A1001C */  stw     r29, 0x1c(r1)
/* 067414 8006C9B4 3BA30000 */  addi    r29, r3, 0
/* 067418 8006C9B8 387E0000 */  addi    r3, r30, 0
/* 06741C 8006C9BC 4BF9C6F9 */  bl      simulatorDetectController
/* 067420 8006C9C0 2C030000 */  cmpwi   r3, 0
/* 067424 8006C9C4 40820008 */  bne     lbl_8006C9CC
/* 067428 8006C9C8 3BE00000 */  li      r31, 0
lbl_8006C9CC:
/* 06742C 8006C9CC 38800000 */  li      r4, 0
/* 067430 8006C9D0 7CBDF214 */  add     r5, r29, r30
/* 067434 8006C9D4 9C850016 */  stbu    r4, 0x16(r5)
/* 067438 8006C9D8 57C0103A */  slwi    r0, r30, 2
/* 06743C 8006C9DC 7C7D0214 */  add     r3, r29, r0
/* 067440 8006C9E0 2C1F0004 */  cmpwi   r31, 4
/* 067444 8006C9E4 93E3001C */  stw     r31, 0x1c(r3)
/* 067448 8006C9E8 4182006C */  beq     lbl_8006CA54
/* 06744C 8006C9EC 4080001C */  bge     lbl_8006CA08
/* 067450 8006C9F0 2C1F0001 */  cmpwi   r31, 1
/* 067454 8006C9F4 41820030 */  beq     lbl_8006CA24
/* 067458 8006C9F8 40800040 */  bge     lbl_8006CA38
/* 06745C 8006C9FC 2C1F0000 */  cmpwi   r31, 0
/* 067460 8006CA00 40800014 */  bge     lbl_8006CA14
/* 067464 8006CA04 48000078 */  b       lbl_8006CA7C
lbl_8006CA08:
/* 067468 8006CA08 2C1F0006 */  cmpwi   r31, 6
/* 06746C 8006CA0C 40800070 */  bge     lbl_8006CA7C
/* 067470 8006CA10 48000058 */  b       lbl_8006CA68
lbl_8006CA14:
/* 067474 8006CA14 57C0083C */  slwi    r0, r30, 1
/* 067478 8006CA18 7C7D0214 */  add     r3, r29, r0
/* 06747C 8006CA1C B083000C */  sth     r4, 0xc(r3)
/* 067480 8006CA20 48000064 */  b       lbl_8006CA84
lbl_8006CA24:
/* 067484 8006CA24 57C0083C */  slwi    r0, r30, 1
/* 067488 8006CA28 7C7D0214 */  add     r3, r29, r0
/* 06748C 8006CA2C 38000500 */  li      r0, 0x500
/* 067490 8006CA30 B003000C */  sth     r0, 0xc(r3)
/* 067494 8006CA34 48000050 */  b       lbl_8006CA84
lbl_8006CA38:
/* 067498 8006CA38 57C0083C */  slwi    r0, r30, 1
/* 06749C 8006CA3C 7C7D0214 */  add     r3, r29, r0
/* 0674A0 8006CA40 38000500 */  li      r0, 0x500
/* 0674A4 8006CA44 B003000C */  sth     r0, 0xc(r3)
/* 0674A8 8006CA48 38000001 */  li      r0, 1
/* 0674AC 8006CA4C 98050000 */  stb     r0, 0(r5)
/* 0674B0 8006CA50 48000034 */  b       lbl_8006CA84
lbl_8006CA54:
/* 0674B4 8006CA54 57C0083C */  slwi    r0, r30, 1
/* 0674B8 8006CA58 7C7D0214 */  add     r3, r29, r0
/* 0674BC 8006CA5C 38000200 */  li      r0, 0x200
/* 0674C0 8006CA60 B003000C */  sth     r0, 0xc(r3)
/* 0674C4 8006CA64 48000020 */  b       lbl_8006CA84
lbl_8006CA68:
/* 0674C8 8006CA68 57C0083C */  slwi    r0, r30, 1
/* 0674CC 8006CA6C 7C7D0214 */  add     r3, r29, r0
/* 0674D0 8006CA70 38000001 */  li      r0, 1
/* 0674D4 8006CA74 B003000C */  sth     r0, 0xc(r3)
/* 0674D8 8006CA78 4800000C */  b       lbl_8006CA84
lbl_8006CA7C:
/* 0674DC 8006CA7C 38600000 */  li      r3, 0
/* 0674E0 8006CA80 48000008 */  b       lbl_8006CA88
lbl_8006CA84:
/* 0674E4 8006CA84 38600001 */  li      r3, 1
lbl_8006CA88:
/* 0674E8 8006CA88 8001002C */  lwz     r0, 0x2c(r1)
/* 0674EC 8006CA8C 83E10024 */  lwz     r31, 0x24(r1)
/* 0674F0 8006CA90 83C10020 */  lwz     r30, 0x20(r1)
/* 0674F4 8006CA94 7C0803A6 */  mtlr    r0
/* 0674F8 8006CA98 83A1001C */  lwz     r29, 0x1c(r1)
/* 0674FC 8006CA9C 38210028 */  addi    r1, r1, 0x28
/* 067500 8006CAA0 4E800020 */  blr     
