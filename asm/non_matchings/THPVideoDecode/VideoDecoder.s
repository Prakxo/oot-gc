glabel VideoDecoder
/* 00DA98 80013038 7C0802A6 */  mflr    r0
/* 00DA9C 8001303C 3C608010 */  lis     r3, ActivePlayer@ha
/* 00DAA0 80013040 90010004 */  stw     r0, 4(r1)
/* 00DAA4 80013044 9421FFE0 */  stwu    r1, -0x20(r1)
/* 00DAA8 80013048 93E1001C */  stw     r31, 0x1c(r1)
/* 00DAAC 8001304C 3BE39C80 */  addi    r31, r3, ActivePlayer@l
/* 00DAB0 80013050 93C10018 */  stw     r30, 0x18(r1)
/* 00DAB4 80013054 3BDF00D8 */  addi    r30, r31, 0xd8
/* 00DAB8 80013058 93A10014 */  stw     r29, 0x14(r1)
/* 00DABC 8001305C 3BBF00A7 */  addi    r29, r31, 0xa7
/* 00DAC0 80013060 93810010 */  stw     r28, 0x10(r1)
lbl_80013064:
/* 00DAC4 80013064 881D0000 */  lbz     r0, 0(r29)
/* 00DAC8 80013068 28000000 */  cmplwi  r0, 0
/* 00DACC 8001306C 41820074 */  beq     lbl_800130E0
/* 00DAD0 80013070 48000064 */  b       lbl_800130D4
lbl_80013074:
/* 00DAD4 80013074 4BFFE8F5 */  bl      PopReadedBuffer2
/* 00DAD8 80013078 7C7C1B78 */  mr      r28, r3
/* 00DADC 8001307C 80BF0050 */  lwz     r5, 0x50(r31)
/* 00DAE0 80013080 807F00C0 */  lwz     r3, 0xc0(r31)
/* 00DAE4 80013084 809C0004 */  lwz     r4, 4(r28)
/* 00DAE8 80013088 3805FFFF */  addi    r0, r5, -1
/* 00DAEC 8001308C 7C841A14 */  add     r4, r4, r3
/* 00DAF0 80013090 7C642B96 */  divwu   r3, r4, r5
/* 00DAF4 80013094 7C6329D6 */  mullw   r3, r3, r5
/* 00DAF8 80013098 7C632050 */  subf    r3, r3, r4
/* 00DAFC 8001309C 7C030040 */  cmplw   r3, r0
/* 00DB00 800130A0 40820018 */  bne     lbl_800130B8
/* 00DB04 800130A4 881F00A6 */  lbz     r0, 0xa6(r31)
/* 00DB08 800130A8 540007FF */  clrlwi. r0, r0, 0x1f
/* 00DB0C 800130AC 4082000C */  bne     lbl_800130B8
/* 00DB10 800130B0 7F83E378 */  mr      r3, r28
/* 00DB14 800130B4 48000195 */  bl      VideoDecode
lbl_800130B8:
/* 00DB18 800130B8 7F83E378 */  mr      r3, r28
/* 00DB1C 800130BC 4BFFE8E1 */  bl      PushFreeReadBuffer
/* 00DB20 800130C0 4808BC3D */  bl      OSDisableInterrupts
/* 00DB24 800130C4 809E0000 */  lwz     r4, 0(r30)
/* 00DB28 800130C8 38040001 */  addi    r0, r4, 1
/* 00DB2C 800130CC 901E0000 */  stw     r0, 0(r30)
/* 00DB30 800130D0 4808BC55 */  bl      OSRestoreInterrupts
lbl_800130D4:
/* 00DB34 800130D4 801E0000 */  lwz     r0, 0(r30)
/* 00DB38 800130D8 2C000000 */  cmpwi   r0, 0
/* 00DB3C 800130DC 4180FF98 */  blt     lbl_80013074
lbl_800130E0:
/* 00DB40 800130E0 881D0000 */  lbz     r0, 0(r29)
/* 00DB44 800130E4 28000000 */  cmplwi  r0, 0
/* 00DB48 800130E8 41820010 */  beq     lbl_800130F8
/* 00DB4C 800130EC 4BFFE87D */  bl      PopReadedBuffer2
/* 00DB50 800130F0 7C7C1B78 */  mr      r28, r3
/* 00DB54 800130F4 4800000C */  b       lbl_80013100
lbl_800130F8:
/* 00DB58 800130F8 4BFFE8D5 */  bl      PopReadedBuffer
/* 00DB5C 800130FC 7C7C1B78 */  mr      r28, r3
lbl_80013100:
/* 00DB60 80013100 7F83E378 */  mr      r3, r28
/* 00DB64 80013104 48000145 */  bl      VideoDecode
/* 00DB68 80013108 7F83E378 */  mr      r3, r28
/* 00DB6C 8001310C 4BFFE891 */  bl      PushFreeReadBuffer
/* 00DB70 80013110 4BFFFF54 */  b       lbl_80013064
