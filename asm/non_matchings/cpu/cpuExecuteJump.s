glabel cpuExecuteJump
/* 033E18 800393B8 7C0802A6 */  mflr    r0
/* 033E1C 800393BC 90010004 */  stw     r0, 4(r1)
/* 033E20 800393C0 9421FFD8 */  stwu    r1, -0x28(r1)
/* 033E24 800393C4 93E10024 */  stw     r31, 0x24(r1)
/* 033E28 800393C8 3BE50000 */  addi    r31, r5, 0
/* 033E2C 800393CC 93C10020 */  stw     r30, 0x20(r1)
/* 033E30 800393D0 93A1001C */  stw     r29, 0x1c(r1)
/* 033E34 800393D4 3BA30000 */  addi    r29, r3, 0
/* 033E38 800393D8 90C10014 */  stw     r6, 0x14(r1)
/* 033E3C 800393DC 48068EE5 */  bl      OSGetTick
/* 033E40 800393E0 801D002C */  lwz     r0, 0x2c(r29)
/* 033E44 800393E4 3BC30000 */  addi    r30, r3, 0
/* 033E48 800393E8 28000000 */  cmplwi  r0, 0
/* 033E4C 800393EC 41820014 */  beq     lbl_80039400
/* 033E50 800393F0 801D0000 */  lwz     r0, 0(r29)
/* 033E54 800393F4 60000008 */  ori     r0, r0, 8
/* 033E58 800393F8 901D0000 */  stw     r0, 0(r29)
/* 033E5C 800393FC 48000010 */  b       lbl_8003940C
lbl_80039400:
/* 033E60 80039400 801D0000 */  lwz     r0, 0(r29)
/* 033E64 80039404 54000776 */  rlwinm  r0, r0, 0, 0x1d, 0x1b
/* 033E68 80039408 901D0000 */  stw     r0, 0(r29)
lbl_8003940C:
/* 033E6C 8003940C 801D0000 */  lwz     r0, 0(r29)
/* 033E70 80039410 60000004 */  ori     r0, r0, 4
/* 033E74 80039414 901D0000 */  stw     r0, 0(r29)
/* 033E78 80039418 93FD0028 */  stw     r31, 0x28(r29)
/* 033E7C 8003941C 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 033E80 80039420 80030020 */  lwz     r0, 0x20(r3)
/* 033E84 80039424 2C000004 */  cmpwi   r0, 4
/* 033E88 80039428 40820018 */  bne     lbl_80039440
/* 033E8C 8003942C 807D0028 */  lwz     r3, 0x28(r29)
/* 033E90 80039430 3C037F00 */  addis   r0, r3, 0x7f00
/* 033E94 80039434 28000000 */  cmplwi  r0, 0
/* 033E98 80039438 40820008 */  bne     lbl_80039440
/* 033E9C 8003943C 4BFD5865 */  bl      simulatorPlayMovie
lbl_80039440:
/* 033EA0 80039440 387D0000 */  addi    r3, r29, 0
/* 033EA4 80039444 38BE0000 */  addi    r5, r30, 0
/* 033EA8 80039448 38810014 */  addi    r4, r1, 0x14
/* 033EAC 8003944C 48004ABD */  bl      cpuExecuteUpdate
/* 033EB0 80039450 2C030000 */  cmpwi   r3, 0
/* 033EB4 80039454 4082000C */  bne     lbl_80039460
/* 033EB8 80039458 38600000 */  li      r3, 0
/* 033EBC 8003945C 48000010 */  b       lbl_8003946C
lbl_80039460:
/* 033EC0 80039460 48068E61 */  bl      OSGetTick
/* 033EC4 80039464 907D0B58 */  stw     r3, 0xb58(r29)
/* 033EC8 80039468 80610014 */  lwz     r3, 0x14(r1)
lbl_8003946C:
/* 033ECC 8003946C 8001002C */  lwz     r0, 0x2c(r1)
/* 033ED0 80039470 83E10024 */  lwz     r31, 0x24(r1)
/* 033ED4 80039474 83C10020 */  lwz     r30, 0x20(r1)
/* 033ED8 80039478 7C0803A6 */  mtlr    r0
/* 033EDC 8003947C 83A1001C */  lwz     r29, 0x1c(r1)
/* 033EE0 80039480 38210028 */  addi    r1, r1, 0x28
/* 033EE4 80039484 4E800020 */  blr     
