glabel rdpPut32
/* 06AC8C 8007022C 7C0802A6 */  mflr    r0
/* 06AC90 80070230 90010004 */  stw     r0, 4(r1)
/* 06AC94 80070234 548006FE */  clrlwi  r0, r4, 0x1b
/* 06AC98 80070238 2800001C */  cmplwi  r0, 0x1c
/* 06AC9C 8007023C 9421FFF8 */  stwu    r1, -8(r1)
/* 06ACA0 80070240 418100D4 */  bgt     lbl_80070314
/* 06ACA4 80070244 3C80800F */  lis     r4, jtbl_800EE038@ha
/* 06ACA8 80070248 3884E038 */  addi    r4, r4, jtbl_800EE038@l
/* 06ACAC 8007024C 5400103A */  slwi    r0, r0, 2
/* 06ACB0 80070250 7C04002E */  lwzx    r0, r4, r0
/* 06ACB4 80070254 7C0903A6 */  mtctr   r0
/* 06ACB8 80070258 4E800420 */  bctr    
.global lbl_8007025C
lbl_8007025C:
/* 06ACBC 8007025C 80050000 */  lwz     r0, 0(r5)
/* 06ACC0 80070260 5400023E */  clrlwi  r0, r0, 8
/* 06ACC4 80070264 90030018 */  stw     r0, 0x18(r3)
/* 06ACC8 80070268 480000B4 */  b       lbl_8007031C
.global lbl_8007026C
lbl_8007026C:
/* 06ACCC 8007026C 80050000 */  lwz     r0, 0(r5)
/* 06ACD0 80070270 38801000 */  li      r4, 0x1000
/* 06ACD4 80070274 38A0000A */  li      r5, 0xa
/* 06ACD8 80070278 5400023E */  clrlwi  r0, r0, 8
/* 06ACDC 8007027C 9003001C */  stw     r0, 0x1c(r3)
/* 06ACE0 80070280 80630008 */  lwz     r3, 8(r3)
/* 06ACE4 80070284 4BF979E9 */  bl      xlObjectEvent
/* 06ACE8 80070288 48000094 */  b       lbl_8007031C
.global lbl_8007028C
lbl_8007028C:
/* 06ACEC 8007028C 80850000 */  lwz     r4, 0(r5)
/* 06ACF0 80070290 548007FF */  clrlwi. r0, r4, 0x1f
/* 06ACF4 80070294 548405BE */  clrlwi  r4, r4, 0x16
/* 06ACF8 80070298 41820010 */  beq     lbl_800702A8
/* 06ACFC 8007029C 80030004 */  lwz     r0, 4(r3)
/* 06AD00 800702A0 5400003C */  rlwinm  r0, r0, 0, 0, 0x1e
/* 06AD04 800702A4 90030004 */  stw     r0, 4(r3)
lbl_800702A8:
/* 06AD08 800702A8 548006F7 */  rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 06AD0C 800702AC 41820010 */  beq     lbl_800702BC
/* 06AD10 800702B0 80030004 */  lwz     r0, 4(r3)
/* 06AD14 800702B4 540007B8 */  rlwinm  r0, r0, 0, 0x1e, 0x1c
/* 06AD18 800702B8 90030004 */  stw     r0, 4(r3)
lbl_800702BC:
/* 06AD1C 800702BC 548006B5 */  rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 06AD20 800702C0 41820010 */  beq     lbl_800702D0
/* 06AD24 800702C4 80030004 */  lwz     r0, 4(r3)
/* 06AD28 800702C8 60000004 */  ori     r0, r0, 4
/* 06AD2C 800702CC 90030004 */  stw     r0, 4(r3)
lbl_800702D0:
/* 06AD30 800702D0 54800673 */  rlwinm. r0, r4, 0, 0x19, 0x19
/* 06AD34 800702D4 4182000C */  beq     lbl_800702E0
/* 06AD38 800702D8 38000000 */  li      r0, 0
/* 06AD3C 800702DC 9003002C */  stw     r0, 0x2c(r3)
lbl_800702E0:
/* 06AD40 800702E0 54800631 */  rlwinm. r0, r4, 0, 0x18, 0x18
/* 06AD44 800702E4 4182000C */  beq     lbl_800702F0
/* 06AD48 800702E8 38000000 */  li      r0, 0
/* 06AD4C 800702EC 90030028 */  stw     r0, 0x28(r3)
lbl_800702F0:
/* 06AD50 800702F0 548005EF */  rlwinm. r0, r4, 0, 0x17, 0x17
/* 06AD54 800702F4 4182000C */  beq     lbl_80070300
/* 06AD58 800702F8 38000000 */  li      r0, 0
/* 06AD5C 800702FC 90030024 */  stw     r0, 0x24(r3)
lbl_80070300:
/* 06AD60 80070300 548005AD */  rlwinm. r0, r4, 0, 0x16, 0x16
/* 06AD64 80070304 41820018 */  beq     lbl_8007031C
/* 06AD68 80070308 38000000 */  li      r0, 0
/* 06AD6C 8007030C 90030020 */  stw     r0, 0x20(r3)
/* 06AD70 80070310 4800000C */  b       lbl_8007031C
.global lbl_80070314
lbl_80070314:
/* 06AD74 80070314 38600000 */  li      r3, 0
/* 06AD78 80070318 48000008 */  b       lbl_80070320
.global lbl_8007031C
lbl_8007031C:
/* 06AD7C 8007031C 38600001 */  li      r3, 1
lbl_80070320:
/* 06AD80 80070320 8001000C */  lwz     r0, 0xc(r1)
/* 06AD84 80070324 38210008 */  addi    r1, r1, 8
/* 06AD88 80070328 7C0803A6 */  mtlr    r0
/* 06AD8C 8007032C 4E800020 */  blr     

.section .data

jtbl_800EE038:
    .word lbl_8007025C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007026C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007031C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007028C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007031C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007031C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007031C
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_80070314
    .word lbl_8007031C
