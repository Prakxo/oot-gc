glabel cpuGetMode
/* 030374 80035914 39000002 */  li      r8, 2
/* 030378 80035918 38E00000 */  li      r7, 0
/* 03037C 8003591C 7C804038 */  and     r0, r4, r8
/* 030380 80035920 7C663838 */  and     r6, r3, r7
/* 030384 80035924 7C033A78 */  xor     r3, r0, r7
/* 030388 80035928 7CC03A78 */  xor     r0, r6, r7
/* 03038C 8003592C 7C600379 */  or.     r0, r3, r0
/* 030390 80035930 41820010 */  beq     lbl_80035940
/* 030394 80035934 91050000 */  stw     r8, 0(r5)
/* 030398 80035938 38600001 */  li      r3, 1
/* 03039C 8003593C 4E800020 */  blr     
lbl_80035940:
/* 0303A0 80035940 38000004 */  li      r0, 4
/* 0303A4 80035944 7C800038 */  and     r0, r4, r0
/* 0303A8 80035948 7C033A78 */  xor     r3, r0, r7
/* 0303AC 8003594C 7CC03A78 */  xor     r0, r6, r7
/* 0303B0 80035950 7C600379 */  or.     r0, r3, r0
/* 0303B4 80035954 40820090 */  bne     lbl_800359E4
/* 0303B8 80035958 38000018 */  li      r0, 0x18
/* 0303BC 8003595C 7C840038 */  and     r4, r4, r0
/* 0303C0 80035960 38600008 */  li      r3, 8
/* 0303C4 80035964 7C831A78 */  xor     r3, r4, r3
/* 0303C8 80035968 7CC03A78 */  xor     r0, r6, r7
/* 0303CC 8003596C 7C600379 */  or.     r0, r3, r0
/* 0303D0 80035970 41820050 */  beq     lbl_800359C0
/* 0303D4 80035974 38600008 */  li      r3, 8
/* 0303D8 80035978 7C632010 */  subfc   r3, r3, r4
/* 0303DC 8003597C 7C073110 */  subfe   r0, r7, r6
/* 0303E0 80035980 7C031910 */  subfe   r0, r3, r3
/* 0303E4 80035984 7C0000D1 */  neg.    r0, r0
/* 0303E8 80035988 41820018 */  beq     lbl_800359A0
/* 0303EC 8003598C 7C833A78 */  xor     r3, r4, r7
/* 0303F0 80035990 7CC03A78 */  xor     r0, r6, r7
/* 0303F4 80035994 7C600379 */  or.     r0, r3, r0
/* 0303F8 80035998 41820034 */  beq     lbl_800359CC
/* 0303FC 8003599C 48000038 */  b       lbl_800359D4
lbl_800359A0:
/* 030400 800359A0 38600010 */  li      r3, 0x10
/* 030404 800359A4 7C831A78 */  xor     r3, r4, r3
/* 030408 800359A8 7CC03A78 */  xor     r0, r6, r7
/* 03040C 800359AC 7C600379 */  or.     r0, r3, r0
/* 030410 800359B0 41820008 */  beq     lbl_800359B8
/* 030414 800359B4 48000020 */  b       lbl_800359D4
lbl_800359B8:
/* 030418 800359B8 90E50000 */  stw     r7, 0(r5)
/* 03041C 800359BC 48000020 */  b       lbl_800359DC
lbl_800359C0:
/* 030420 800359C0 38000001 */  li      r0, 1
/* 030424 800359C4 90050000 */  stw     r0, 0(r5)
/* 030428 800359C8 48000014 */  b       lbl_800359DC
lbl_800359CC:
/* 03042C 800359CC 91050000 */  stw     r8, 0(r5)
/* 030430 800359D0 4800000C */  b       lbl_800359DC
lbl_800359D4:
/* 030434 800359D4 38600000 */  li      r3, 0
/* 030438 800359D8 4E800020 */  blr     
lbl_800359DC:
/* 03043C 800359DC 38600001 */  li      r3, 1
/* 030440 800359E0 4E800020 */  blr     
lbl_800359E4:
/* 030444 800359E4 38600000 */  li      r3, 0
/* 030448 800359E8 4E800020 */  blr     
