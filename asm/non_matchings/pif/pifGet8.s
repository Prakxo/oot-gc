glabel pifGet8
/* 067258 8006C7F8 5484057E */  clrlwi  r4, r4, 0x15
/* 06725C 8006C7FC 280407C0 */  cmplwi  r4, 0x7c0
/* 067260 8006C800 40800014 */  bge     lbl_8006C814
/* 067264 8006C804 80630000 */  lwz     r3, 0(r3)
/* 067268 8006C808 7C0320AE */  lbzx    r0, r3, r4
/* 06726C 8006C80C 98050000 */  stb     r0, 0(r5)
/* 067270 8006C810 48000014 */  b       lbl_8006C824
lbl_8006C814:
/* 067274 8006C814 80630000 */  lwz     r3, 0(r3)
/* 067278 8006C818 3804F840 */  addi    r0, r4, -1984
/* 06727C 8006C81C 7C0300AE */  lbzx    r0, r3, r0
/* 067280 8006C820 98050000 */  stb     r0, 0(r5)
lbl_8006C824:
/* 067284 8006C824 38600001 */  li      r3, 1
/* 067288 8006C828 4E800020 */  blr     
