    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_sync_Mutex_lock
_lb_sync_Mutex_lock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    str x20, [sp, #0]
    mov x19, x0
    mov x10, #0
    movz x11, #1
    mov x17, x19
1:
    ldaxr w9, [x17]
    cmp w9, w10
    b.ne 2f
    stlxr w16, w11, [x17]
    cbnz w16, 1b
2:
    clrex
    mov w14, w9
    cmp w14, #0
    b.ne Le5d21c91994b_2
Le5d21c91994b_1:
    ldr x19, [sp, #8]
    ldr x20, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le5d21c91994b_2:
Le5d21c91994b_3:
    cmp w14, #2
    b.eq Le5d21c91994b_6
Le5d21c91994b_5:
    movz x10, #2
    mov x17, x19
1:
    ldaxr w9, [x17]
    mov w11, w10
    stxr w16, w11, [x17]
    cbnz w16, 1b
    mov w14, w9
    b Le5d21c91994b_7
Le5d21c91994b_6:
Le5d21c91994b_7:
    mov w20, w14
Le5d21c91994b_8:
    cmp w20, #0
    b.eq Le5d21c91994b_10
    .p2align 4
Le5d21c91994b_9:
    mov x1, x19
    movz x0, #1
    movz x2, #2
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
    ldr w14, [x19]
    cmp w14, #2
    b.ne Le5d21c91994b_12
Le5d21c91994b_11:
    cmp w20, #0
    b.ne Le5d21c91994b_9
    b Le5d21c91994b_10
Le5d21c91994b_12:
Le5d21c91994b_13:
    movz x10, #2
    mov x17, x19
1:
    ldaxr w9, [x17]
    mov w11, w10
    stxr w16, w11, [x17]
    cbnz w16, 1b
    mov w20, w9
    cmp w20, #0
    b.ne Le5d21c91994b_9
Le5d21c91994b_10:
    ldr x19, [sp, #8]
    ldr x20, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_sync_Mutex_unlock
_lb_sync_Mutex_unlock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x10, #0
    mov x17, x14
1:
    ldxr w9, [x17]
    mov w11, w10
    stlxr w16, w11, [x17]
    cbnz w16, 1b
    mov w15, w9
    cmp w15, #2
    b.ne Lf969ed7745f0_2
Lf969ed7745f0_1:
    mov x1, x14
    movz x0, #1
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
Lf969ed7745f0_2:
Lf969ed7745f0_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_paper_8as_print
_lb_10film_paper_8as_print:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #12880
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #12864]
    mov x19, x0
    movz x16, #8592
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4288
    bl _memset
    movz x16, #8592
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    movz x10, #12472
    add x14, x19, x10
    mov x10, x14
    movz x16, #8576
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    add x14, x19, #24
    ldr q24, [x14]
    movz x16, #6632
    sub x9, x29, x16
    str q24, [x9]
    ldr x14, [x19, #40]
    str x14, [sp, #6264]
    movz x16, #8592
    sub x10, x29, x16
    movz x16, #4304
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    add x14, x19, #184
    movz x15, #288
    movz x12, #1
    movz x13, #1
    and w12, w12, w13
    movz x13, #2304
    sub x10, x29, #2320
    sub x7, x14, x10
    sub x9, x29, #2320
    sub x6, x9, x14
    cmp x7, x13
    cset w7, hs
    cmp x6, x13
    cset w13, hs
    and w13, w7, w13
    sub x10, x29, #2320
    cmp x14, x10
    cset w7, eq
    orr w13, w13, w7
    and w12, w12, w13
    cbnz w12, L32af3238e195_7
L32af3238e195_12:
    mov x15, #0
    b L32af3238e195_11
L32af3238e195_7:
    mov x12, #0
L32af3238e195_8:
    cmp x12, x15
    b.hs L32af3238e195_10
    .p2align 4
L32af3238e195_9:
    add x13, x14, x12, lsl #3
    ldr q24, [x13]
    sub x9, x29, #2320
    add x13, x9, x12, lsl #3
    str q24, [x13]
    add x12, x12, #2
    cmp x12, x15
    b.lo L32af3238e195_9
L32af3238e195_10:
L32af3238e195_11:
L32af3238e195_1:
    cmp x15, #288
    b.hs L32af3238e195_4
    .p2align 4
L32af3238e195_2:
    lsl x12, x15, #3
    sub x9, x29, #2320
    add x13, x9, x12
    ldr d24, [x12, x14]
    str d24, [x13]
    add x15, x15, #1
    cmp x15, #288
    b.lo L32af3238e195_2
L32af3238e195_4:
    movz x16, #4304
    sub x10, x29, x16
    movz x16, #12880
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    movz x16, #12880
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #4288
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #12864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_12
_lb_test_12:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    str d8, [sp, #264]
    str d9, [sp, #256]
    str d10, [sp, #248]
    str d11, [sp, #240]
    sub x11, x29, #104
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    movz x9, #3
    str x9, [sp, #168]
    fmov d24, #2.0000000
    str d24, [sp, #176]
    mov x9, #0
    str x9, [sp, #184]
    mov x9, #0
    str x9, [sp, #192]
    fmov d8, xzr
    str d8, [sp, #200]
    str d8, [sp, #208]
    str d8, [sp, #216]
    str d8, [sp, #224]
    movz x9, #1
    strb w9, [sp, #232]
    sub x10, x29, #104
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d9, L12f410b4fb9c_k0
    str d9, [sp, #72]
    str d9, [sp, #80]
    str d9, [sp, #88]
    sub x9, x29, #200
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #176
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d10, d1
    fmov d11, d2
    fadd d25, d24, d10
    fadd d25, d25, d11
    fdiv d24, d24, d25
    fdiv d25, d10, d25
    ldr d26, L12f410b4fb9c_k1
    fsub d24, d24, d26
    fabs d24, d24
    ldr d26, L12f410b4fb9c_k2
    fcmp d24, d26
    b.pl L12f410b4fb9c_2
L12f410b4fb9c_3:
    ldr d24, L12f410b4fb9c_k3
    fsub d24, d25, d24
    fabs d24, d24
    fcmp d24, d26
    b.mi L12f410b4fb9c_1
L12f410b4fb9c_2:
    mov x9, #0
    str x9, [sp, #56]
    mov x9, #0
    str x9, [sp, #64]
    adrp x14, _lb_text_5473b0dc4b12@PAGE
    add x14, x14, _lb_text_5473b0dc4b12@PAGEOFF
    adrp x15, _lb_text_5a9b9ae11932@PAGE
    add x15, x15, _lb_text_5a9b9ae11932@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #216
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #264]
    ldr d9, [sp, #256]
    ldr d10, [sp, #248]
    ldr d11, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12f410b4fb9c_1:
    ldr d24, L12f410b4fb9c_k4
    fcmp d10, d24
    b.le L12f410b4fb9c_6
L12f410b4fb9c_7:
    ldr d24, L12f410b4fb9c_k5
    fcmp d10, d24
    b.mi L12f410b4fb9c_5
L12f410b4fb9c_6:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_7e84959a54bc@PAGE
    add x14, x14, _lb_text_7e84959a54bc@PAGEOFF
    adrp x15, _lb_text_52fff7ebc095@PAGE
    add x15, x15, _lb_text_52fff7ebc095@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #232
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #264]
    ldr d9, [sp, #256]
    ldr d10, [sp, #248]
    ldr d11, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12f410b4fb9c_5:
    fmov d24, #20.0000000
    str d24, [sp, #136]
    str d8, [sp, #144]
    str d8, [sp, #152]
    str d9, [sp, #16]
    str d9, [sp, #24]
    str d9, [sp, #32]
    sub x9, x29, #256
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #176
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fdiv d24, d26, d25
    fdiv d25, d11, d10
    fcmp d24, d25
    b.gt L12f410b4fb9c_9
L12f410b4fb9c_10:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_1f581cd199b2@PAGE
    add x14, x14, _lb_text_1f581cd199b2@PAGEOFF
    adrp x15, _lb_text_cb3b138f29c9@PAGE
    add x15, x15, _lb_text_cb3b138f29c9@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #272
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #264]
    ldr d9, [sp, #256]
    ldr d10, [sp, #248]
    ldr d11, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12f410b4fb9c_9:
    mov x0, #0
    ldr d8, [sp, #264]
    ldr d9, [sp, #256]
    ldr d10, [sp, #248]
    ldr d11, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L12f410b4fb9c_k0:
    .quad 4595653203753948938
L12f410b4fb9c_k1:
    .quad 4599304722331820936
L12f410b4fb9c_k2:
    .quad 4584304132692975288
L12f410b4fb9c_k3:
    .quad 4599598357027525493
L12f410b4fb9c_k4:
    .quad 4591870180066957722
L12f410b4fb9c_k5:
    .quad 4599976659396224614


    .p2align 2
    .globl _lb_test_13
_lb_test_13:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    str d8, [sp, #296]
    sub x11, x29, #80
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    movz x9, #2
    str x9, [sp, #224]
    fmov d24, #3.0000000
    str d24, [sp, #232]
    mov x9, #0
    str x9, [sp, #240]
    mov x9, #0
    str x9, [sp, #248]
    fmov d25, xzr
    str d25, [sp, #256]
    str d25, [sp, #264]
    str d25, [sp, #272]
    str d25, [sp, #280]
    movz x9, #1
    strb w9, [sp, #288]
    sub x10, x29, #80
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x11, x29, #80
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    movz x9, #2
    str x9, [sp, #224]
    str d24, [sp, #232]
    movz x9, #2
    str x9, [sp, #248]
    mov x9, #0
    str x9, [sp, #240]
    str d25, [sp, #256]
    str d25, [sp, #264]
    str d25, [sp, #272]
    str d25, [sp, #280]
    movz x9, #1
    strb w9, [sp, #288]
    sub x10, x29, #80
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, Laa573f5b191e_k0
    str d24, [sp, #56]
    str d24, [sp, #64]
    str d24, [sp, #72]
    sub x9, x29, #248
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #152
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d0, d25
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d8, d24
    sub x9, x29, #248
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #224
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d0, d25
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d24, d24
    fsub d24, d8, d24
    ldr d25, Laa573f5b191e_k1
    fcmp d24, d25
    b.le Laa573f5b191e_2
Laa573f5b191e_3:
    ldr d25, Laa573f5b191e_k2
    fcmp d24, d25
    b.mi Laa573f5b191e_1
Laa573f5b191e_2:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_a14275de7ed7@PAGE
    add x14, x14, _lb_text_a14275de7ed7@PAGEOFF
    adrp x15, _lb_text_fc59a4a06c9c@PAGE
    add x15, x15, _lb_text_fc59a4a06c9c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #264
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Laa573f5b191e_1:
    ldr d24, Laa573f5b191e_k3
    str d24, [sp, #16]
    str d24, [sp, #24]
    str d24, [sp, #32]
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #152
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d8, d1
    fmov d25, d2
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #224
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fsub d24, d8, d25
    fabs d24, d24
    ldr d25, Laa573f5b191e_k4
    fcmp d24, d25
    b.mi Laa573f5b191e_5
Laa573f5b191e_6:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_b59c8bead66f@PAGE
    add x14, x14, _lb_text_b59c8bead66f@PAGEOFF
    adrp x15, _lb_text_b0461f58af14@PAGE
    add x15, x15, _lb_text_b0461f58af14@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #304
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Laa573f5b191e_5:
    mov x0, #0
    ldr d8, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Laa573f5b191e_k0:
    .quad 4551510721646314285
Laa573f5b191e_k1:
    .quad 4594572339843380019
Laa573f5b191e_k2:
    .quad 4599976659396224614
Laa573f5b191e_k3:
    .quad 4632233691727265792
Laa573f5b191e_k4:
    .quad 4581421828931458171


    .p2align 2
    .globl _lb_test_14
_lb_test_14:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    str d8, [sp, #600]
    str d9, [sp, #592]
    str d10, [sp, #584]
    str d11, [sp, #576]
    mov x0, #0
    sub x8, x29, #104
    bl _lb_view_17working_to_output
    sub x10, x29, #104
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #176
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #104
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, Lff365867c427_k0
    str d24, [sp, #336]
    str d24, [sp, #344]
    str d24, [sp, #352]
    fmov d8, xzr
    sub x11, x29, #344
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #264]
    fmov d9, #2.0000000
    str d9, [sp, #272]
    mov x9, #0
    str x9, [sp, #280]
    mov x9, #0
    str x9, [sp, #288]
    str d8, [sp, #296]
    str d8, [sp, #304]
    str d8, [sp, #312]
    str d8, [sp, #320]
    movz x9, #1
    strb w9, [sp, #328]
    sub x9, x29, #272
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #1
    sub x9, x29, #248
    mov x1, x9
    mov x2, #0
    sub x9, x29, #344
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #80
    str d0, [x16, #0]
    sub x16, x29, #80
    str d1, [x16, #8]
    sub x16, x29, #80
    str d2, [x16, #16]
    sub x10, x29, #80
    sub x11, x29, #56
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #552]
    fmov d25, #0.2500000
    fsub d24, d24, d25
    fabs d24, d24
    ldr d25, Lff365867c427_k1
    fcmp d24, d25
    b.pl Lff365867c427_2
Lff365867c427_3:
    ldr d24, [sp, #560]
    ldr d25, [sp, #568]
    fsub d24, d24, d25
    fabs d24, d24
    ldr d10, Lff365867c427_k2
    fcmp d24, d10
    b.mi Lff365867c427_1
Lff365867c427_2:
    mov x9, #0
    str x9, [sp, #248]
    mov x9, #0
    str x9, [sp, #256]
    adrp x14, _lb_text_1dc6d41ef0e3@PAGE
    add x14, x14, _lb_text_1dc6d41ef0e3@PAGEOFF
    adrp x15, _lb_text_22cc66d9daed@PAGE
    add x15, x15, _lb_text_22cc66d9daed@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #360
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff365867c427_1:
    ldr d24, Lff365867c427_k3
    str d24, [sp, #224]
    str d24, [sp, #232]
    str d24, [sp, #240]
    sub x11, x29, #456
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #152]
    str d9, [sp, #160]
    mov x9, #0
    str x9, [sp, #168]
    mov x9, #0
    str x9, [sp, #176]
    str d8, [sp, #184]
    str d8, [sp, #192]
    str d8, [sp, #200]
    str d8, [sp, #208]
    movz x9, #1
    strb w9, [sp, #216]
    sub x9, x29, #384
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #1
    sub x9, x29, #248
    mov x1, x9
    mov x2, #0
    sub x9, x29, #456
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #80
    str d0, [x16, #0]
    sub x16, x29, #80
    str d1, [x16, #8]
    sub x16, x29, #80
    str d2, [x16, #16]
    sub x10, x29, #80
    sub x11, x29, #56
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #552]
    ldr d11, Lff365867c427_k4
    fcmp d24, d11
    b.le Lff365867c427_6
Lff365867c427_7:
    ldr d25, [sp, #568]
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d10
    b.mi Lff365867c427_5
Lff365867c427_6:
    mov x9, #0
    str x9, [sp, #136]
    mov x9, #0
    str x9, [sp, #144]
    adrp x14, _lb_text_7e8244c82dab@PAGE
    add x14, x14, _lb_text_7e8244c82dab@PAGEOFF
    adrp x15, _lb_text_58a0cf09b473@PAGE
    add x15, x15, _lb_text_58a0cf09b473@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #472
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff365867c427_5:
    fmov d24, #30.0000000
    str d24, [sp, #112]
    fmov d24, #0.5000000
    str d24, [sp, #120]
    str d24, [sp, #128]
    sub x11, x29, #568
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #40]
    str d9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    mov x9, #0
    str x9, [sp, #64]
    str d8, [sp, #72]
    str d8, [sp, #80]
    str d8, [sp, #88]
    str d8, [sp, #96]
    movz x9, #1
    strb w9, [sp, #104]
    sub x9, x29, #496
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #1
    sub x9, x29, #248
    mov x1, x9
    mov x2, #0
    sub x9, x29, #568
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #80
    str d0, [x16, #0]
    sub x16, x29, #80
    str d1, [x16, #8]
    sub x16, x29, #80
    str d2, [x16, #16]
    sub x10, x29, #80
    sub x11, x29, #56
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #552]
    fcmp d24, d11
    b.le Lff365867c427_10
Lff365867c427_11:
    ldr d24, [sp, #560]
    ldr d25, Lff365867c427_k5
    fcmp d24, d25
    b.gt Lff365867c427_9
Lff365867c427_10:
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    adrp x14, _lb_text_539904108963@PAGE
    add x14, x14, _lb_text_539904108963@PAGEOFF
    adrp x15, _lb_text_615889622aeb@PAGE
    add x15, x15, _lb_text_615889622aeb@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #584
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff365867c427_9:
    ldr d8, Lff365867c427_k6
    fmov d0, d8
    bl _lb_view_unshape
    fmov d24, d0
    fmov d0, d24
    bl _lb_view_shape
    fmov d24, d0
    fsub d24, d24, d8
    fabs d24, d24
    ldr d25, Lff365867c427_k7
    fcmp d24, d25
    b.mi Lff365867c427_13
Lff365867c427_14:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_581f7e5788e1@PAGE
    add x14, x14, _lb_text_581f7e5788e1@PAGEOFF
    adrp x15, _lb_text_96fd4dd82658@PAGE
    add x15, x15, _lb_text_96fd4dd82658@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #600
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff365867c427_13:
    mov x0, #0
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lff365867c427_k0:
    .quad 4595653203753948938
Lff365867c427_k1:
    .quad 4566758108544739836
Lff365867c427_k2:
    .quad 4517329193108106637
Lff365867c427_k3:
    .quad 4630826316843712512
Lff365867c427_k4:
    .quad 4607092346807469998
Lff365867c427_k5:
    .quad 4599075939470750515
Lff365867c427_k6:
    .quad 4600336947366414254
Lff365867c427_k7:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_view_display
_lb_view_display:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1424
    str x19, [sp, #1416]
    str x20, [sp, #1408]
    str d8, [sp, #1400]
    str d9, [sp, #1392]
    str d10, [sp, #1384]
    str d11, [sp, #1376]
    str d12, [sp, #1368]
    str d13, [sp, #1360]
    str d14, [sp, #1352]
    sub x16, x29, #752
    str d0, [x16, #0]
    sub x16, x29, #752
    str d1, [x16, #8]
    sub x16, x29, #752
    str d2, [x16, #16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #824
    str x3, [x16]
    sub x9, x29, #160
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    ldr x16, [x10, #64]
    str x16, [x9, #64]
    sub x9, x29, #824
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    ldr x16, [x10, #64]
    str x16, [x9, #64]
    fmov d24, d3
    mov x14, x0
    mov x19, x2
    mov x15, x4
    cmp x14, #0
    b.ne Lffbe26d91fa1_2
Lffbe26d91fa1_1:
    adrp x14, _lb_view_9aces_lift@PAGE
    add x14, x14, _lb_view_9aces_lift@PAGEOFF
    ldr d24, [x14]
    sub x9, x29, #752
    ldr q25, [x9]
    dup v26.2d, v24.d[0]
    fmul v25.2d, v25.2d, v26.2d
    ldr d26, [sp, #688]
    fmul d24, d24, d26
    sub x9, x29, #848
    str q25, [x9]
    str d24, [sp, #592]
    cmp x19, #1
    b.ne Lffbe26d91fa1_5
Lffbe26d91fa1_4:
    adrp x14, _lb_view_12aces_p3_once@PAGE
    add x14, x14, _lb_view_12aces_p3_once@PAGEOFF
    adrp x15, _lb_view_13build_aces_p3@GOTPAGE
    ldr x15, [x15, _lb_view_13build_aces_p3@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_view_7aces_p3@PAGE
    add x14, x14, _lb_view_7aces_p3@PAGEOFF
    sub x9, x29, #848
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    bl _lb_15luce_color_aces_OutputTransform_9apply_ap1
    sub x16, x29, #184
    str d0, [x16, #0]
    sub x16, x29, #184
    str d1, [x16, #8]
    sub x16, x29, #184
    str d2, [x16, #16]
    sub x10, x29, #184
    sub x11, x29, #728
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_5:
    adrp x14, _lb_view_9aces_once@PAGE
    add x14, x14, _lb_view_9aces_once@PAGEOFF
    adrp x15, _lb_view_10build_aces@GOTPAGE
    ldr x15, [x15, _lb_view_10build_aces@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_view_8aces_sdr@PAGE
    add x14, x14, _lb_view_8aces_sdr@PAGEOFF
    sub x9, x29, #848
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    bl _lb_15luce_color_aces_OutputTransform_9apply_ap1
    sub x16, x29, #184
    str d0, [x16, #0]
    sub x16, x29, #184
    str d1, [x16, #8]
    sub x16, x29, #184
    str d2, [x16, #16]
    sub x10, x29, #184
    sub x11, x29, #728
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_2:
    cmp x14, #3
    cset w20, eq
    cbnz w20, Lffbe26d91fa1_9
Lffbe26d91fa1_12:
    cmp x14, #4
    b.ne Lffbe26d91fa1_10
Lffbe26d91fa1_9:
    adrp x12, _lb_view_9aces_lift@PAGE
    add x12, x12, _lb_view_9aces_lift@PAGEOFF
    ldr d25, [x12]
    sub x9, x29, #752
    ldr q26, [x9]
    dup v27.2d, v25.d[0]
    fmul v26.2d, v26.2d, v27.2d
    ldr d27, [sp, #688]
    fmul d25, d25, d27
    sub x9, x29, #872
    str q26, [x9]
    str d25, [sp, #568]
    cmp x14, #4
    b.ne Lffbe26d91fa1_14
Lffbe26d91fa1_13:
    sub x9, x29, #872
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #824
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d8, d24
    fmov d9, d25
    fmov d10, d26
    b Lffbe26d91fa1_15
Lffbe26d91fa1_14:
    sub x9, x29, #872
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    mov x0, x15
    bl _lb_10film_print_projected
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
Lffbe26d91fa1_15:
    fmov d11, xzr
    ldr d24, Lffbe26d91fa1_k0
    ldr d12, Lffbe26d91fa1_k1
    ldr d25, Lffbe26d91fa1_k2
    str d24, [sp, #504]
    str d12, [sp, #512]
    str d25, [sp, #520]
    cbz w20, Lffbe26d91fa1_41
Lffbe26d91fa1_40:
    adrp x14, _lb_view_12screen_white@PAGE
    add x14, x14, _lb_view_12screen_white@PAGEOFF
    ldr d24, [x14]
    fmov d13, d24
    b Lffbe26d91fa1_42
Lffbe26d91fa1_41:
    adrp x14, _lb_view_8room_lux@PAGE
    add x14, x14, _lb_view_8room_lux@PAGEOFF
    ldr d24, [x14]
    adrp x14, _lb_view_23paper_white_reflectance@PAGE
    add x14, x14, _lb_view_23paper_white_reflectance@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d25, [x14]
    fdiv d13, d24, d25
Lffbe26d91fa1_42:
    sub x0, x29, #432
    mov x1, #0
    movz x2, #272
    bl _memset
    ldr d14, Lffbe26d91fa1_k3
    fmul d24, d14, d13
    fmov d13, #20.0000000
    fmov d25, #2.0000000
    cmp w20, #0
    fcsel d25, d11, d25, ne
    sub x9, x29, #920
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    fmov d4, d13
    fmov d5, d25
    sub x8, x29, #568
    bl _lb_16luce_color_cam16_viewing
    sub x10, x29, #568
    sub x0, x29, #432
    mov x1, x10
    movz x2, #136
    bl _memcpy
    adrp x14, _lb_view_13display_white@PAGE
    add x14, x14, _lb_view_13display_white@PAGEOFF
    ldr d24, [x14]
    fmul d24, d14, d24
    fmov d14, #1.0000000
    sub x9, x29, #920
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    fmov d4, d13
    fmov d5, d14
    sub x8, x29, #568
    bl _lb_16luce_color_cam16_viewing
    sub x10, x29, #568
    sub x0, x29, #296
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x10, x29, #432
    sub x0, x29, #704
    mov x1, x10
    movz x2, #272
    bl _memcpy
    sub x10, x29, #704
    sub x0, x29, #432
    mov x1, x10
    movz x2, #272
    bl _memcpy
    sub x10, x29, #432
    sub x0, x29, #1192
    mov x1, x10
    movz x2, #272
    bl _memcpy
    sub x11, x29, #1216
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmul d24, d8, d12
    str d24, [sp, #208]
    fmul d24, d9, d12
    str d24, [sp, #216]
    fmul d24, d10, d12
    str d24, [sp, #224]
    sub x9, x29, #1216
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x9, x29, #1192
    mov x0, x9
    sub x9, x29, #1056
    mov x1, x9
    movz x2, #1
    bl _lb_16luce_color_cam16_corresponding
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fdiv d8, d24, d12
    fdiv d9, d25, d12
    fdiv d10, d26, d12
    cmp x19, #1
    b.ne Lffbe26d91fa1_51
Lffbe26d91fa1_50:
    adrp x14, _lb_14luce_color_xyz_10display_p3@PAGE
    add x14, x14, _lb_14luce_color_xyz_10display_p3@PAGEOFF
    sub x11, x29, #296
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    b Lffbe26d91fa1_52
Lffbe26d91fa1_51:
    adrp x14, _lb_14luce_color_xyz_srgb@PAGE
    add x14, x14, _lb_14luce_color_xyz_srgb@PAGEOFF
    sub x11, x29, #296
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
Lffbe26d91fa1_52:
    sub x10, x29, #296
    sub x11, x29, #360
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #360
    sub x11, x29, #296
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #296
    sub x11, x29, #1280
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #1280
    mov x0, x9
    sub x8, x29, #1352
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x9, x29, #1352
    mov x0, x9
    sub x8, x29, #304
    bl _lb_14luce_color_xyz_invert
    sub x10, x29, #304
    sub x11, x29, #376
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #376
    sub x11, x29, #304
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #304
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #232
    sub x11, x29, #304
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #1120]
    fmul d24, d24, d8
    ldr d25, [sp, #1128]
    fmul d25, d25, d9
    fadd d24, d24, d25
    ldr d25, [sp, #1136]
    fmul d25, d25, d10
    fadd d24, d24, d25
    ldr d25, [sp, #1144]
    fmul d25, d25, d8
    ldr d26, [sp, #1152]
    fmul d26, d26, d9
    fadd d25, d25, d26
    ldr d26, [sp, #1160]
    fmul d26, d26, d10
    fadd d25, d25, d26
    ldr d26, [sp, #1168]
    fmul d26, d26, d8
    ldr d27, [sp, #1176]
    fmul d27, d27, d9
    fadd d26, d26, d27
    ldr d27, [sp, #1184]
    fmul d27, d27, d10
    fadd d26, d26, d27
    fcmp d11, d14
    cset w14, ls
    cbz w14, Lffbe26d91fa1_86
Lffbe26d91fa1_85:
    fmov x15, d24
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_88
Lffbe26d91fa1_87:
    b Lffbe26d91fa1_100
Lffbe26d91fa1_88:
    fcmp d24, d11
    cset w15, mi
    fcmp d24, d14
    fcsel d24, d14, d24, gt
    cmp w15, #0
    fcsel d24, d11, d24, ne
Lffbe26d91fa1_100:
    cbz w14, Lffbe26d91fa1_102
Lffbe26d91fa1_101:
    fmov x15, d25
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_104
Lffbe26d91fa1_103:
    b Lffbe26d91fa1_116
Lffbe26d91fa1_104:
    fcmp d25, d11
    cset w15, mi
    fcmp d25, d14
    fcsel d25, d14, d25, gt
    cmp w15, #0
    fcsel d25, d11, d25, ne
Lffbe26d91fa1_116:
    cbz w14, Lffbe26d91fa1_118
Lffbe26d91fa1_117:
    fmov x14, d26
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Lffbe26d91fa1_120
Lffbe26d91fa1_119:
    b Lffbe26d91fa1_132
Lffbe26d91fa1_120:
    fcmp d26, d11
    cset w14, mi
    fcmp d26, d14
    fcsel d26, d14, d26, gt
    cmp w14, #0
    fcsel d26, d11, d26, ne
Lffbe26d91fa1_132:
    str d24, [sp, #696]
    str d25, [sp, #704]
    str d26, [sp, #712]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_10:
    ldr d24, [sp, #672]
    ldr d25, [sp, #680]
    ldr d26, [sp, #688]
    sub x10, x29, #160
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d27, [sp, #1192]
    fmul d27, d24, d27
    ldr d28, [sp, #1200]
    fmul d28, d25, d28
    fadd d27, d27, d28
    ldr d28, [sp, #1208]
    fmul d28, d26, d28
    fadd d27, d27, d28
    ldr d28, [sp, #1216]
    fmul d28, d24, d28
    ldr d29, [sp, #1224]
    fmul d29, d25, d29
    fadd d28, d28, d29
    ldr d29, [sp, #1232]
    fmul d29, d26, d29
    fadd d28, d28, d29
    ldr d29, [sp, #1240]
    fmul d24, d24, d29
    ldr d29, [sp, #1248]
    fmul d25, d25, d29
    fadd d24, d24, d25
    ldr d25, [sp, #1256]
    fmul d25, d26, d25
    fadd d24, d24, d25
    str d27, [sp, #528]
    str d28, [sp, #536]
    str d24, [sp, #544]
    cmp x14, #2
    b.ne Lffbe26d91fa1_18
Lffbe26d91fa1_17:
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    cset w14, ls
    cbz w14, Lffbe26d91fa1_136
Lffbe26d91fa1_135:
    fmov x15, d27
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_138
Lffbe26d91fa1_137:
    b Lffbe26d91fa1_150
Lffbe26d91fa1_138:
    fcmp d27, d25
    cset w15, mi
    fcmp d27, d26
    fcsel d27, d26, d27, gt
    cmp w15, #0
    fcsel d27, d25, d27, ne
Lffbe26d91fa1_150:
    cbz w14, Lffbe26d91fa1_152
Lffbe26d91fa1_151:
    fmov x15, d28
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_154
Lffbe26d91fa1_153:
    b Lffbe26d91fa1_166
Lffbe26d91fa1_154:
    fcmp d28, d25
    cset w15, mi
    fcmp d28, d26
    fcsel d28, d26, d28, gt
    cmp w15, #0
    fcsel d28, d25, d28, ne
Lffbe26d91fa1_166:
    cbz w14, Lffbe26d91fa1_168
Lffbe26d91fa1_167:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Lffbe26d91fa1_170
Lffbe26d91fa1_169:
    b Lffbe26d91fa1_182
Lffbe26d91fa1_170:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
Lffbe26d91fa1_182:
    str d27, [sp, #696]
    str d28, [sp, #704]
    str d24, [sp, #712]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_18:
    cmp x19, #0
    b.eq Lffbe26d91fa1_22
Lffbe26d91fa1_21:
    cmp x19, #1
    b.ne Lffbe26d91fa1_59
Lffbe26d91fa1_58:
    adrp x14, _lb_14luce_color_xyz_10display_p3@PAGE
    add x14, x14, _lb_14luce_color_xyz_10display_p3@PAGEOFF
    sub x11, x29, #208
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    b Lffbe26d91fa1_60
Lffbe26d91fa1_59:
    adrp x14, _lb_14luce_color_xyz_srgb@PAGE
    add x14, x14, _lb_14luce_color_xyz_srgb@PAGEOFF
    sub x11, x29, #208
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
Lffbe26d91fa1_60:
    sub x10, x29, #208
    sub x11, x29, #272
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #272
    sub x11, x29, #1416
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #1416
    mov x0, x9
    sub x8, x29, #216
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #216
    sub x11, x29, #144
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #1304]
    ldr d25, [sp, #1312]
    ldr d26, [sp, #1320]
    b Lffbe26d91fa1_23
Lffbe26d91fa1_22:
    ldr d24, Lffbe26d91fa1_k4
    ldr d25, Lffbe26d91fa1_k5
    ldr d26, Lffbe26d91fa1_k6
Lffbe26d91fa1_23:
    ldr d27, [sp, #528]
    fmul d24, d24, d27
    ldr d28, [sp, #536]
    fmul d25, d25, d28
    fadd d24, d24, d25
    ldr d25, [sp, #544]
    fmul d26, d26, d25
    fadd d24, d24, d26
    fmov d8, xzr
    fcmp d24, d8
    b.gt Lffbe26d91fa1_25
Lffbe26d91fa1_24:
    str d8, [sp, #696]
    str d8, [sp, #704]
    str d8, [sp, #712]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_25:
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_184
Lffbe26d91fa1_183:
    b Lffbe26d91fa1_204
Lffbe26d91fa1_184:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_188
Lffbe26d91fa1_187:
    fmov d28, d25
    b Lffbe26d91fa1_204
Lffbe26d91fa1_188:
    fcmp d28, d8
    b.ne Lffbe26d91fa1_192
Lffbe26d91fa1_194:
    fcmp d25, d8
    b.ne Lffbe26d91fa1_192
Lffbe26d91fa1_191:
    orr x14, x14, x15
    fmov d28, x14
    b Lffbe26d91fa1_204
Lffbe26d91fa1_192:
    fcmp d28, d25
    fcsel d28, d28, d25, mi
Lffbe26d91fa1_204:
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_206
Lffbe26d91fa1_205:
    b Lffbe26d91fa1_226
Lffbe26d91fa1_206:
    fmov x15, d28
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_210
Lffbe26d91fa1_209:
    fmov d27, d28
    b Lffbe26d91fa1_226
Lffbe26d91fa1_210:
    fcmp d27, d8
    b.ne Lffbe26d91fa1_214
Lffbe26d91fa1_216:
    fcmp d8, d28
    b.ne Lffbe26d91fa1_214
Lffbe26d91fa1_213:
    orr x14, x14, x15
    fmov d27, x14
    b Lffbe26d91fa1_226
Lffbe26d91fa1_214:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
Lffbe26d91fa1_226:
    fcmp d27, d8
    b.pl Lffbe26d91fa1_29
Lffbe26d91fa1_28:
    fsub d25, d24, d27
    fdiv d25, d24, d25
    dup v26.2d, v24.d[0]
    dup v27.2d, v25.d[0]
    mov x14, #0
Lffbe26d91fa1_78:
    cmp x14, #2
    b.hs Lffbe26d91fa1_80
    .p2align 4
Lffbe26d91fa1_79:
    sub x9, x29, #896
    add x15, x9, x14, lsl #3
    ldr q28, [x15]
    fsub v28.2d, v28.2d, v26.2d
    fmul v28.2d, v27.2d, v28.2d
    fadd v28.2d, v26.2d, v28.2d
    str q28, [x15]
    add x14, x14, #2
    cmp x14, #2
    b.lo Lffbe26d91fa1_79
Lffbe26d91fa1_80:
    movz x14, #2
Lffbe26d91fa1_31:
    cmp x14, #3
    b.hs Lffbe26d91fa1_34
    .p2align 4
Lffbe26d91fa1_32:
    sub x9, x29, #896
    add x15, x9, x14, lsl #3
    ldr d26, [x15]
    fsub d26, d26, d24
    fmul d26, d26, d25
    fadd d26, d26, d24
    str d26, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo Lffbe26d91fa1_32
Lffbe26d91fa1_34:
Lffbe26d91fa1_29:
Lffbe26d91fa1_30:
    ldr d24, [sp, #528]
    ldr d25, [sp, #536]
    ldr d26, [sp, #544]
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_228
Lffbe26d91fa1_227:
    b Lffbe26d91fa1_248
Lffbe26d91fa1_228:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_232
Lffbe26d91fa1_231:
    fmov d25, d26
    b Lffbe26d91fa1_248
Lffbe26d91fa1_232:
    fcmp d25, d8
    b.ne Lffbe26d91fa1_236
Lffbe26d91fa1_238:
    fcmp d26, d8
    b.ne Lffbe26d91fa1_236
Lffbe26d91fa1_235:
    and x14, x14, x15
    fmov d25, x14
    b Lffbe26d91fa1_248
Lffbe26d91fa1_236:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
Lffbe26d91fa1_248:
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_250
Lffbe26d91fa1_249:
    fmov d9, d24
    b Lffbe26d91fa1_270
Lffbe26d91fa1_250:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_254
Lffbe26d91fa1_253:
    fmov d9, d25
    b Lffbe26d91fa1_270
Lffbe26d91fa1_254:
    fcmp d8, d24
    b.ne Lffbe26d91fa1_258
Lffbe26d91fa1_260:
    fcmp d8, d25
    b.ne Lffbe26d91fa1_258
Lffbe26d91fa1_257:
    and x14, x14, x15
    fmov d9, x14
    b Lffbe26d91fa1_270
Lffbe26d91fa1_258:
    fcmp d24, d25
    fcsel d9, d24, d25, gt
Lffbe26d91fa1_270:
    fcmp d9, d8
    b.gt Lffbe26d91fa1_65
Lffbe26d91fa1_64:
    fmov d10, d8
    b Lffbe26d91fa1_71
Lffbe26d91fa1_65:
    fmov d10, #1.0000000
    ldr d11, Lffbe26d91fa1_k7
    ldr d24, Lffbe26d91fa1_k8
    fadd d24, d24, d9
    fdiv d24, d9, d24
    ldr d25, Lffbe26d91fa1_k9
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d11, d24
    fmov x14, d10
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lffbe26d91fa1_272
Lffbe26d91fa1_271:
    b Lffbe26d91fa1_292
Lffbe26d91fa1_272:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_276
Lffbe26d91fa1_275:
    fmov d10, d24
    b Lffbe26d91fa1_292
Lffbe26d91fa1_276:
    fcmp d8, d10
    b.ne Lffbe26d91fa1_280
Lffbe26d91fa1_282:
    fcmp d24, d8
    b.ne Lffbe26d91fa1_280
Lffbe26d91fa1_279:
    orr x14, x14, x15
    fmov d10, x14
    b Lffbe26d91fa1_292
Lffbe26d91fa1_280:
    fcmp d10, d24
    fcsel d10, d10, d24, mi
Lffbe26d91fa1_292:
Lffbe26d91fa1_71:
    fmov d0, d9
    bl _lb_13luce_std_math_10log2_value
    fmov d24, d0
    fmov d25, #5.0000000
    fdiv d24, d24, d25
    fmov d11, #1.0000000
    fcmp d8, d11
    cset w19, ls
    cbz w19, Lffbe26d91fa1_294
Lffbe26d91fa1_293:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Lffbe26d91fa1_296
Lffbe26d91fa1_295:
    b Lffbe26d91fa1_308
Lffbe26d91fa1_296:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d11
    fcsel d24, d11, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
Lffbe26d91fa1_308:
    fmov d25, #1.5000000
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Lffbe26d91fa1_35:
    cmp x14, #3
    b.hs Lffbe26d91fa1_38
    .p2align 4
Lffbe26d91fa1_36:
    lsl x15, x14, #3
    sub x11, x29, #896
    ldr d25, [x15, x11]
    fmul d25, d25, d10
    fdiv d25, d25, d9
    sub x10, x29, #96
    add x15, x15, x10
    fsub d26, d10, d25
    fmul d26, d26, d24
    fadd d25, d25, d26
    cbz w19, Lffbe26d91fa1_310
Lffbe26d91fa1_309:
    fmov x12, d25
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lffbe26d91fa1_312
Lffbe26d91fa1_311:
    b Lffbe26d91fa1_324
Lffbe26d91fa1_312:
    fcmp d25, d8
    cset w12, mi
    fcmp d25, d11
    fcsel d25, d11, d25, gt
    cmp w12, #0
    fcsel d25, d8, d25, ne
Lffbe26d91fa1_324:
    str d25, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo Lffbe26d91fa1_36
Lffbe26d91fa1_38:
    sub x10, x29, #96
    sub x11, x29, #728
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #728
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr d8, [sp, #1400]
    ldr d9, [sp, #1392]
    ldr d10, [sp, #1384]
    ldr d11, [sp, #1376]
    ldr d12, [sp, #1368]
    ldr d13, [sp, #1360]
    ldr d14, [sp, #1352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lffbe26d91fa1_86:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_102:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_118:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_136:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_152:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_168:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_294:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lffbe26d91fa1_310:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lffbe26d91fa1_k0:
    .quad 4636388754964724318
Lffbe26d91fa1_k1:
    .quad 4636737291354636288
Lffbe26d91fa1_k2:
    .quad 4637362376909166477
Lffbe26d91fa1_k3:
    .quad 4596373779694328218
Lffbe26d91fa1_k4:
    .quad 4596827742536767164
Lffbe26d91fa1_k5:
    .quad 4604617168452267173
Lffbe26d91fa1_k6:
    .quad 4589866978952703325
Lffbe26d91fa1_k7:
    .quad 4607407598781385933
Lffbe26d91fa1_k8:
    .quad 4600207243697145984
Lffbe26d91fa1_k9:
    .quad 4608533498688228557


    .p2align 2
    .globl _lb_view_unshape
_lb_view_unshape:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    ldr d8, L4493a7c8278d_k0
    adrp x14, _lb_view_10shaper_low@PAGE
    add x14, x14, _lb_view_10shaper_low@PAGEOFF
    ldr d25, [x14]
    adrp x14, _lb_view_11shaper_high@PAGE
    add x14, x14, _lb_view_11shaper_high@PAGEOFF
    ldr d26, [x14]
    fsub d26, d26, d25
    fmul d24, d26, d24
    fadd d24, d25, d24
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d24, d0
    fmul d24, d24, d8
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4493a7c8278d_k0:
    .quad 4595653203753948938


    .p2align 2
    .globl _lb_view_shape
_lb_view_shape:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    fmov d8, xzr
    fcmp d24, d8
    b.gt Lafa4fa155d78_2
Lafa4fa155d78_1:
    fmov d0, d8
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafa4fa155d78_2:
Lafa4fa155d78_3:
    ldr d25, Lafa4fa155d78_k0
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_10log2_value
    fmov d24, d0
    adrp x14, _lb_view_10shaper_low@PAGE
    add x14, x14, _lb_view_10shaper_low@PAGEOFF
    ldr d25, [x14]
    fsub d24, d24, d25
    adrp x14, _lb_view_11shaper_high@PAGE
    add x14, x14, _lb_view_11shaper_high@PAGEOFF
    ldr d26, [x14]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    fmov d25, #1.0000000
    fcmp d8, d25
    b.hi Lafa4fa155d78_9
Lafa4fa155d78_8:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Lafa4fa155d78_11
Lafa4fa155d78_10:
    b Lafa4fa155d78_23
Lafa4fa155d78_11:
Lafa4fa155d78_12:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
Lafa4fa155d78_23:
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafa4fa155d78_9:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lafa4fa155d78_k0:
    .quad 4595653203753948938


    .p2align 2
    .globl _lb_view_17working_to_output
_lb_view_17working_to_output:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #816
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #800]
    str d8, [sp, #792]
    str d9, [sp, #784]
    mov x14, x0
    cmp x14, #1
    b.ne L97d7a9cab500_3
L97d7a9cab500_2:
    adrp x14, _lb_14luce_color_xyz_10display_p3@PAGE
    add x14, x14, _lb_14luce_color_xyz_10display_p3@PAGEOFF
    sub x11, x29, #96
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    b L97d7a9cab500_4
L97d7a9cab500_3:
    adrp x14, _lb_14luce_color_xyz_srgb@PAGE
    add x14, x14, _lb_14luce_color_xyz_srgb@PAGEOFF
    sub x11, x29, #96
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
L97d7a9cab500_4:
    sub x10, x29, #96
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #160
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #96
    sub x11, x29, #672
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    adrp x19, _lb_14luce_color_xyz_8aces_ap1@PAGE
    add x19, x19, _lb_14luce_color_xyz_8aces_ap1@PAGEOFF
    mov x0, x19
    sub x8, x29, #176
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #176
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    add x14, x19, #48
    ldr d0, [x14, #0]
    ldr d1, [x14, #8]
    sub x9, x29, #624
    ldr d2, [x9, #0]
    ldr d3, [x9, #8]
    sub x8, x29, #248
    bl _lb_14luce_color_xyz_adapt
    sub x10, x29, #248
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #104
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x11, x29, #392
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d8, #1.0000000
    str d8, [sp, #352]
    fmov d9, xzr
    str d9, [sp, #360]
    str d9, [sp, #368]
    str d9, [sp, #376]
    str d8, [sp, #384]
    str d9, [sp, #392]
    str d9, [sp, #400]
    str d9, [sp, #408]
    str d8, [sp, #416]
    sub x10, x29, #464
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    mov x14, #0
L97d7a9cab500_9:
    cmp x14, #3
    b.hs L97d7a9cab500_12
    .p2align 4
L97d7a9cab500_10:
    add x15, x14, x14, lsl #1
    mov x12, #0
L97d7a9cab500_13:
    cmp x12, #3
    b.hs L97d7a9cab500_16
    .p2align 4
L97d7a9cab500_14:
    fmov d24, d9
    mov x13, #0
L97d7a9cab500_17:
    cmp x13, #3
    b.hs L97d7a9cab500_20
    .p2align 4
L97d7a9cab500_18:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L97d7a9cab500_c1
    sub x10, x29, #320
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L97d7a9cab500_c2
    sub x10, x29, #248
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L97d7a9cab500_18
L97d7a9cab500_20:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L97d7a9cab500_c3
    sub x10, x29, #104
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L97d7a9cab500_14
L97d7a9cab500_16:
    add x14, x14, #1
    cmp x14, #3
    b.lo L97d7a9cab500_10
L97d7a9cab500_12:
    sub x10, x29, #104
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #248
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #320
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #672
    sub x11, x29, #736
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #736
    mov x0, x9
    sub x8, x29, #808
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x9, x29, #808
    mov x0, x9
    sub x8, x29, #320
    bl _lb_14luce_color_xyz_invert
    sub x10, x29, #320
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #536
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #320
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #176
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x11, x29, #392
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d8, [sp, #352]
    str d9, [sp, #360]
    str d9, [sp, #368]
    str d9, [sp, #376]
    str d8, [sp, #384]
    str d9, [sp, #392]
    str d9, [sp, #400]
    str d9, [sp, #408]
    str d8, [sp, #416]
    sub x10, x29, #464
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    mov x14, #0
L97d7a9cab500_23:
    cmp x14, #3
    b.hs L97d7a9cab500_26
    .p2align 4
L97d7a9cab500_24:
    add x15, x14, x14, lsl #1
    mov x12, #0
L97d7a9cab500_27:
    cmp x12, #3
    b.hs L97d7a9cab500_30
    .p2align 4
L97d7a9cab500_28:
    fmov d24, d9
    mov x13, #0
L97d7a9cab500_31:
    cmp x13, #3
    b.hs L97d7a9cab500_34
    .p2align 4
L97d7a9cab500_32:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L97d7a9cab500_c4
    sub x10, x29, #536
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L97d7a9cab500_c5
    sub x10, x29, #320
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L97d7a9cab500_32
L97d7a9cab500_34:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L97d7a9cab500_c6
    sub x10, x29, #104
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L97d7a9cab500_28
L97d7a9cab500_30:
    add x14, x14, #1
    cmp x14, #3
    b.lo L97d7a9cab500_24
L97d7a9cab500_26:
    sub x10, x29, #104
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #248
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #104
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x1, x29, #608
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldp x16, x17, [x1, #32]
    stp x16, x17, [x0, #32]
    ldp x16, x17, [x1, #48]
    stp x16, x17, [x0, #48]
    ldr x16, [x1, #64]
    str x16, [x0, #64]
    ldr x19, [sp, #800]
    ldr d8, [sp, #792]
    ldr d9, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L97d7a9cab500_c1:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97d7a9cab500_c2:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97d7a9cab500_c3:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97d7a9cab500_c4:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97d7a9cab500_c5:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97d7a9cab500_c6:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_view_13build_aces_p3
_lb_view_13build_aces_p3:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #31120
    sub sp, sp, x16
    str x19, [sp, #31112]
    adrp x19, _lb_view_7aces_p3@PAGE
    add x19, x19, _lb_view_7aces_p3@PAGEOFF
    ldr d24, La82f90815d4f_k0
    adrp x14, _lb_14luce_color_xyz_10display_p3@PAGE
    add x14, x14, _lb_14luce_color_xyz_10display_p3@PAGEOFF
    fmov d0, d24
    mov x0, x14
    movz x16, #15544
    sub x8, x29, x16
    bl _lb_15luce_color_aces_OutputTransform_create
    ldrb w14, [x29, #-16]
    cbz w14, La82f90815d4f_3
La82f90815d4f_4:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_c354f7b2cc2e@PAGE
    add x15, x15, _lb_text_c354f7b2cc2e@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x16, #31096
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b La82f90815d4f_1
La82f90815d4f_3:
    movz x16, #15544
    sub x10, x29, x16
    movz x16, #31072
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    b La82f90815d4f_2
La82f90815d4f_1:
    adrp x14, _lb_text_c974d66813c4@PAGE
    add x14, x14, _lb_text_c974d66813c4@PAGEOFF
    str x14, [sp, #8]
    movz x9, #48
    str x9, [sp, #16]
    adrp x14, _lb_text_e92c2ff35f61@PAGE
    add x14, x14, _lb_text_e92c2ff35f61@PAGEOFF
    mov x0, x14
    movz x16, #31112
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    movz x16, #31088
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
La82f90815d4f_2:
    movz x16, #31072
    sub x10, x29, x16
    mov x0, x19
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    ldr x19, [sp, #31112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
La82f90815d4f_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_15luce_color_aces_OutputTransform_9apply_ap1
_lb_15luce_color_aces_OutputTransform_9apply_ap1:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #32
    str d0, [x16, #0]
    sub x16, x29, #32
    str d1, [x16, #8]
    sub x16, x29, #32
    str d2, [x16, #16]
    mov x14, x0
    sub x11, x29, #56
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmov d24, xzr
    mov x15, #0
L65695260aedc_1:
    cmp x15, #3
    b.hs L65695260aedc_4
    .p2align 4
L65695260aedc_2:
    lsl x12, x15, #3
    sub x10, x29, #56
    add x13, x12, x10
    sub x11, x29, #32
    ldr d25, [x12, x11]
    ldr d26, [x14, #688]
    fcmp d24, d26
    b.hi L65695260aedc_7
L65695260aedc_6:
    fmov x12, d25
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L65695260aedc_9
L65695260aedc_8:
    b L65695260aedc_21
L65695260aedc_9:
L65695260aedc_10:
    fcmp d25, d24
    cset w12, mi
    fcmp d25, d26
    fcsel d25, d26, d25, gt
    cmp w12, #0
    fcsel d25, d24, d25, ne
L65695260aedc_21:
    str d25, [x13]
    add x15, x15, #1
    cmp x15, #3
    b.lo L65695260aedc_2
L65695260aedc_4:
    movz x10, #15384
    add x15, x14, x10
    sub x11, x29, #128
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x15, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x15, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x15, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #120]
    ldr d25, [sp, #128]
    ldr d26, [sp, #136]
    ldr d27, [sp, #48]
    fmul d27, d27, d24
    ldr d28, [sp, #56]
    fmul d28, d28, d25
    fadd d27, d27, d28
    ldr d28, [sp, #64]
    fmul d28, d28, d26
    fadd d27, d27, d28
    ldr d28, [sp, #72]
    fmul d28, d28, d24
    ldr d29, [sp, #80]
    fmul d29, d29, d25
    fadd d28, d28, d29
    ldr d29, [sp, #88]
    fmul d29, d29, d26
    fadd d28, d28, d29
    ldr d29, [sp, #96]
    fmul d24, d29, d24
    ldr d29, [sp, #104]
    fmul d25, d29, d25
    fadd d24, d24, d25
    ldr d25, [sp, #112]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d27, [sp, #0]
    sub x9, x29, #176
    add x15, x9, #8
    str d28, [x15]
    sub x9, x29, #176
    add x15, x9, #16
    str d24, [x15]
    sub x9, x29, #176
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    bl _lb_15luce_color_aces_OutputTransform_render
    sub x16, x29, #24
    str d0, [x16, #0]
    sub x16, x29, #24
    str d1, [x16, #8]
    sub x16, x29, #24
    str d2, [x16, #16]
    sub x10, x29, #24
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #152
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65695260aedc_7:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_view_10build_aces
_lb_view_10build_aces:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #31120
    sub sp, sp, x16
    str x19, [sp, #31112]
    adrp x19, _lb_view_8aces_sdr@PAGE
    add x19, x19, _lb_view_8aces_sdr@PAGEOFF
    ldr d24, L285791477845_k0
    adrp x14, _lb_14luce_color_xyz_srgb@PAGE
    add x14, x14, _lb_14luce_color_xyz_srgb@PAGEOFF
    fmov d0, d24
    mov x0, x14
    movz x16, #15544
    sub x8, x29, x16
    bl _lb_15luce_color_aces_OutputTransform_create
    ldrb w14, [x29, #-16]
    cbz w14, L285791477845_3
L285791477845_4:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_35f03c8abb10@PAGE
    add x15, x15, _lb_text_35f03c8abb10@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x16, #31096
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b L285791477845_1
L285791477845_3:
    movz x16, #15544
    sub x10, x29, x16
    movz x16, #31072
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    b L285791477845_2
L285791477845_1:
    adrp x14, _lb_text_0aae1650f695@PAGE
    add x14, x14, _lb_text_0aae1650f695@PAGEOFF
    str x14, [sp, #8]
    movz x9, #45
    str x9, [sp, #16]
    adrp x14, _lb_text_97d6760f6a48@PAGE
    add x14, x14, _lb_text_97d6760f6a48@PAGEOFF
    mov x0, x14
    movz x16, #31112
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    movz x16, #31088
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
L285791477845_2:
    movz x16, #31072
    sub x10, x29, x16
    mov x0, x19
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    ldr x19, [sp, #31112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L285791477845_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_view_apply
_lb_view_apply:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    ldr x16, [x10, #64]
    str x16, [x9, #64]
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr d27, [sp, #72]
    fmul d27, d27, d24
    ldr d28, [sp, #80]
    fmul d28, d28, d25
    fadd d27, d27, d28
    ldr d28, [sp, #88]
    fmul d28, d28, d26
    fadd d27, d27, d28
    ldr d28, [sp, #96]
    fmul d28, d28, d24
    ldr d29, [sp, #104]
    fmul d29, d29, d25
    fadd d28, d28, d29
    ldr d29, [sp, #112]
    fmul d29, d29, d26
    fadd d28, d28, d29
    ldr d29, [sp, #120]
    fmul d24, d29, d24
    ldr d29, [sp, #128]
    fmul d25, d29, d25
    fadd d24, d24, d25
    ldr d25, [sp, #136]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d27, [sp, #0]
    str d28, [sp, #8]
    str d24, [sp, #16]
    sub x9, x29, #144
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_14luce_color_xyz_10rgb_to_xyz
_lb_14luce_color_xyz_10rgb_to_xyz:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #432]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    ldr d24, [sp, #368]
    ldr d25, [sp, #376]
    fmov d26, xzr
    fdiv d27, d24, d25
    fmov d8, #1.0000000
    fsub d24, d8, d24
    fsub d24, d24, d25
    fdiv d24, d24, d25
    ldr d25, [sp, #384]
    ldr d28, [sp, #392]
    fdiv d29, d25, d28
    fsub d25, d8, d25
    fsub d25, d25, d28
    fdiv d25, d25, d28
    ldr d28, [sp, #400]
    ldr d30, [sp, #408]
    fdiv d31, d28, d30
    fsub d28, d8, d28
    fsub d28, d28, d30
    fdiv d28, d28, d30
    sub x11, x29, #152
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d8, [sp, #224]
    str d26, [sp, #232]
    str d26, [sp, #240]
    str d26, [sp, #248]
    str d8, [sp, #256]
    str d26, [sp, #264]
    str d26, [sp, #272]
    str d26, [sp, #280]
    str d8, [sp, #288]
    sub x10, x29, #224
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #152
    sub x11, x29, #368
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    str d27, [sp, #296]
    str d29, [sp, #304]
    str d31, [sp, #312]
    str d8, [sp, #320]
    str d8, [sp, #328]
    str d8, [sp, #336]
    str d24, [sp, #344]
    str d25, [sp, #352]
    str d28, [sp, #360]
    sub x10, x29, #152
    sub x11, x29, #368
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x9, x29, #368
    mov x0, x9
    sub x8, x29, #152
    bl _lb_14luce_color_xyz_invert
    sub x10, x29, #152
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #416]
    ldr d25, [sp, #424]
    fdiv d26, d24, d25
    fsub d24, d8, d24
    fsub d24, d24, d25
    fdiv d24, d24, d25
    sub x10, x29, #224
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d25, [sp, #360]
    fmul d25, d26, d25
    ldr d27, [sp, #368]
    fmul d27, d8, d27
    fadd d25, d25, d27
    ldr d27, [sp, #376]
    fmul d27, d24, d27
    fadd d25, d25, d27
    ldr d27, [sp, #384]
    fmul d27, d26, d27
    ldr d28, [sp, #392]
    fmul d28, d8, d28
    fadd d27, d27, d28
    ldr d28, [sp, #400]
    fmul d28, d24, d28
    fadd d27, d27, d28
    ldr d28, [sp, #408]
    fmul d26, d26, d28
    ldr d28, [sp, #416]
    fmul d28, d8, d28
    fadd d26, d26, d28
    ldr d28, [sp, #424]
    fmul d24, d24, d28
    fadd d24, d26, d24
    sub x10, x29, #368
    sub x11, x29, #440
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d26, [sp, #56]
    fmul d26, d26, d25
    str d26, [sp, #56]
    sub x9, x29, #440
    ldr q26, [x9]
    fmov d28, d25
    mov v28.d[1], v27.d[0]
    fmul v26.2d, v26.2d, v28.2d
    sub x9, x29, #440
    str q26, [x9]
    ldr d26, [sp, #64]
    fmul d26, d26, d27
    str d26, [sp, #64]
    sub x9, x29, #424
    ldr q26, [x9]
    fmov d28, d24
    fmov d17, d25
    mov v25.16b, v28.16b
    mov v25.d[1], v17.d[0]
    fmul v25.2d, v26.2d, v25.2d
    sub x9, x29, #424
    str q25, [x9]
    sub x9, x29, #408
    ldr q25, [x9]
    fmov d26, d27
    mov v26.d[1], v24.d[0]
    fmul v25.2d, v25.2d, v26.2d
    sub x9, x29, #408
    str q25, [x9]
    ldr d25, [sp, #72]
    fmul d24, d25, d24
    str d24, [sp, #72]
    sub x10, x29, #440
    sub x11, x29, #296
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x1, x29, #296
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldp x16, x17, [x1, #32]
    stp x16, x17, [x0, #32]
    ldp x16, x17, [x1, #48]
    stp x16, x17, [x0, #48]
    ldr x16, [x1, #64]
    str x16, [x0, #64]
    ldr d8, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_OutputTransform_create
_lb_15luce_color_aces_OutputTransform_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #47872
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #16
    str x19, [x16]
    sub x16, x29, #24
    str x20, [x16]
    sub x16, x29, #32
    str x21, [x16]
    sub x16, x29, #40
    str d8, [x16]
    sub x16, x29, #48
    str d9, [x16]
    sub x16, x29, #56
    str d10, [x16]
    sub x16, x29, #64
    str d11, [x16]
    movz x16, #31192
    sub x16, x29, x16
    str x0, [x16]
    movz x16, #31192
    sub x9, x29, x16
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    fmov d8, d0
    ldr d24, L840fa2c5ada7_k0
    fcmp d8, d24
    b.lt L840fa2c5ada7_1
L840fa2c5ada7_4:
    ldr d24, L840fa2c5ada7_k1
    fcmp d8, d24
    b.ls L840fa2c5ada7_2
L840fa2c5ada7_1:
    adrp x14, _lb_15luce_color_aces_invalid@PAGE
    add x14, x14, _lb_15luce_color_aces_invalid@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_e4048db1ea66@PAGE
    add x20, x20, _lb_text_e4048db1ea66@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #61
    str x9, [x14, #16]
    adrp x15, _lb_text_892675a24ebb@PAGE
    add x15, x15, _lb_text_892675a24ebb@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    movz x16, #15600
    sub x16, x29, x16
    strb w9, [x16]
    movz x16, #31128
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15536
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr d8, [x16]
    sub x16, x29, #48
    ldr d9, [x16]
    sub x16, x29, #56
    ldr d10, [x16]
    sub x16, x29, #64
    ldr d11, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L840fa2c5ada7_2:
L840fa2c5ada7_3:
    movz x16, #15592
    sub x0, x29, x16
    mov x1, #0
    movz x2, #15528
    bl _memset
    str d8, [sp, #32280]
    movz x16, #15592
    sub x10, x29, x16
    movz x16, #46720
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    adrp x19, _lb_14luce_color_xyz_8aces_ap0@PAGE
    add x19, x19, _lb_14luce_color_xyz_8aces_ap0@PAGEOFF
    mov x0, x19
    sub x8, x29, #376
    bl _lb_15luce_color_aces_6cam_of
    sub x10, x29, #376
    movz x16, #46712
    sub x0, x29, x16
    mov x1, x10
    movz x2, #312
    bl _memcpy
    movz x16, #31192
    sub x9, x29, x16
    mov x0, x9
    sub x8, x29, #376
    bl _lb_15luce_color_aces_6cam_of
    sub x10, x29, #376
    movz x16, #46400
    sub x0, x29, x16
    mov x1, x10
    movz x2, #312
    bl _memcpy
    adrp x20, _lb_14luce_color_xyz_8aces_ap1@PAGE
    add x20, x20, _lb_14luce_color_xyz_8aces_ap1@PAGEOFF
    mov x0, x20
    sub x8, x29, #376
    bl _lb_15luce_color_aces_6cam_of
    sub x10, x29, #376
    movz x16, #47032
    sub x0, x29, x16
    mov x1, x10
    movz x2, #312
    bl _memcpy
    fmov d0, d8
    sub x8, x29, #136
    bl _lb_15luce_color_aces_8tones_of
    sub x10, x29, #136
    movz x16, #46088
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, L840fa2c5ada7_k2
    ldr d25, L840fa2c5ada7_k3
    fmov d26, xzr
    ldr d27, L840fa2c5ada7_k4
    ldr d28, L840fa2c5ada7_k5
    fmul d28, d25, d28
    ldr d29, [sp, #1848]
    fmul d28, d28, d29
    fsub d25, d25, d28
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L840fa2c5ada7_26
L840fa2c5ada7_25:
    fmov d9, d27
    b L840fa2c5ada7_46
L840fa2c5ada7_26:
L840fa2c5ada7_27:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L840fa2c5ada7_30
L840fa2c5ada7_29:
    fmov d9, d25
    b L840fa2c5ada7_46
L840fa2c5ada7_30:
L840fa2c5ada7_31:
    fcmp d27, d26
    b.ne L840fa2c5ada7_34
L840fa2c5ada7_36:
    fcmp d25, d26
    b.ne L840fa2c5ada7_34
L840fa2c5ada7_33:
    and x14, x14, x15
    fmov d9, x14
    b L840fa2c5ada7_46
L840fa2c5ada7_34:
L840fa2c5ada7_35:
    fcmp d27, d25
    fcsel d9, d27, d25, gt
L840fa2c5ada7_46:
    fmov d25, #0.5000000
    ldr d26, [sp, #1784]
    fdiv d10, d25, d26
    ldr d25, L840fa2c5ada7_k6
    fmul d25, d25, d24
    fmul d25, d29, d25
    fadd d11, d25, d24
    ldr d24, L840fa2c5ada7_k7
    fmul d24, d24, d8
    ldr d25, L840fa2c5ada7_k8
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr d25, L840fa2c5ada7_k9
    fsub d24, d24, d25
    str d9, [sp, #1856]
    str d10, [sp, #1864]
    str d11, [sp, #1872]
    str d24, [sp, #1880]
    fmov d0, d8
    movz x16, #46712
    sub x0, x29, x16
    bl _lb_15luce_color_aces_6y_to_j
    fmov d24, d0
    str d24, [sp, #1888]
    fmov d9, #1.0000000
    adrp x14, _lb_15luce_color_aces_10surround_c@PAGE
    add x14, x14, _lb_15luce_color_aces_10surround_c@PAGEOFF
    ldr d25, [x14]
    ldr d26, L840fa2c5ada7_k10
    adrp x14, _lb_15luce_color_aces_20background_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_20background_luminance@PAGEOFF
    ldr d27, [x14]
    adrp x21, _lb_15luce_color_aces_19reference_luminance@PAGE
    add x21, x21, _lb_15luce_color_aces_19reference_luminance@PAGEOFF
    ldr d28, [x21]
    fdiv d27, d27, d28
    fsqrt d27, d27
    fadd d26, d26, d27
    fmul d25, d26, d25
    fdiv d25, d9, d25
    str d25, [sp, #1896]
    fmov d0, d24
    movz x16, #45968
    sub x9, x29, x16
    mov x0, x9
    movz x16, #47032
    sub x1, x29, x16
    sub x8, x29, #2968
    bl _lb_15luce_color_aces_16fill_reach_table
    sub x10, x29, #2968
    movz x16, #45968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #2904
    bl _memcpy
    ldr d24, [sp, #1816]
    ldr d25, [x21]
    fmul d24, d24, d25
    fmov d0, d24
    movz x16, #46712
    sub x0, x29, x16
    bl _lb_15luce_color_aces_6y_to_j
    fmov d24, d0
    str d24, [sp, #4808]
    adrp x14, _lb_15luce_color_aces_14focus_distance@PAGE
    add x14, x14, _lb_15luce_color_aces_14focus_distance@PAGEOFF
    ldr d24, [x14]
    adrp x14, _lb_15luce_color_aces_22focus_distance_scaling@PAGE
    add x14, x14, _lb_15luce_color_aces_22focus_distance_scaling@PAGEOFF
    ldr d25, [x14]
    fmul d25, d24, d25
    ldr d26, [sp, #1848]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [sp, #4816]
    ldr d24, L840fa2c5ada7_k11
    ldr d25, L840fa2c5ada7_k12
    fmul d25, d26, d25
    fadd d24, d24, d25
    fdiv d24, d9, d24
    str d24, [sp, #4824]
    ldr d24, [sp, #1888]
    ldr d25, [sp, #1840]
    fmov d0, d24
    fmov d1, d25
    movz x16, #47032
    sub x0, x29, x16
    sub x8, x29, #448
    bl _lb_15luce_color_aces_13reach_corners
    sub x10, x29, #448
    movz x16, #47416
    sub x0, x29, x16
    mov x1, x10
    movz x2, #384
    bl _memcpy
    fmov d0, d8
    movz x16, #46400
    sub x0, x29, x16
    sub x8, x29, #448
    bl _lb_15luce_color_aces_16limiting_corners
    sub x10, x29, #448
    movz x16, #47800
    sub x0, x29, x16
    mov x1, x10
    movz x2, #384
    bl _memcpy
    movz x16, #47416
    sub x0, x29, x16
    movz x16, #47800
    sub x1, x29, x16
    sub x8, x29, #2968
    bl _lb_15luce_color_aces_15build_hue_table
    sub x10, x29, #2968
    movz x16, #43024
    sub x0, x29, x16
    mov x1, x10
    movz x2, #2904
    bl _memcpy
    movz x16, #43024
    sub x0, x29, x16
    movz x16, #47800
    sub x1, x29, x16
    movz x16, #46400
    sub x2, x29, x16
    movz x16, #8776
    sub x8, x29, x16
    bl _lb_15luce_color_aces_16build_cusp_table
    movz x16, #8776
    sub x10, x29, x16
    movz x16, #40120
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8712
    bl _memcpy
    movz x14, #1
    mov x15, #0
    movz x12, #1
L840fa2c5ada7_11:
    cmp x14, #361
    b.hs L840fa2c5ada7_14
    .p2align 4
L840fa2c5ada7_12:
    add x13, x14, x14, lsl #1
    add x13, x13, #2
    movz x10, #1089
    cmp x13, x10
    b.hs L840fa2c5ada7_c1
    movz x16, #40120
    sub x10, x29, x16
    ldr d24, [x10, x13, lsl #3]
    fcvtzs x13, d24
    adds x13, x13, #1
    b.vs L840fa2c5ada7_c2
    subs x13, x14, x13
    b.vs L840fa2c5ada7_c3
    cmp x13, x15
    csel x15, x13, x15, lt
    adds x13, x13, #1
    b.vs L840fa2c5ada7_c4
    cmp x13, x12
    csel x12, x13, x12, gt
    add x14, x14, #1
    cmp x14, #361
    b.lo L840fa2c5ada7_12
L840fa2c5ada7_14:
L840fa2c5ada7_22:
    str x15, [sp, #4832]
    str x12, [sp, #4840]
    ldr d24, [sp, #1888]
    fmov d0, d8
    fmov d1, d24
    movz x16, #43064
    sub x0, x29, x16
    movz x16, #46400
    sub x1, x29, x16
    bl _lb_15luce_color_aces_14fit_upper_hull
    mov x0, x19
    mov x1, x20
    sub x8, x29, #136
    bl _lb_15luce_color_aces_10rgb_to_rgb
    sub x10, x29, #136
    movz x16, #31408
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    movz x16, #31408
    sub x10, x29, x16
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [x29, #-104]
    ldr d25, [x29, #-72]
    fmul d26, d24, d25
    ldr d27, [x29, #-96]
    ldr d28, [x29, #-80]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [x29, #-88]
    fmul d30, d27, d29
    ldr d31, [x29, #-112]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [x29, #-136]
    fmul d21, d26, d20
    ldr d22, [x29, #-128]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [x29, #-120]
    fmul d8, d19, d23
    fadd d21, d21, d8
    fdiv d21, d9, d21
    fmul d26, d26, d21
    str d26, [x29, #-136]
    fmul d26, d28, d23
    fmul d8, d25, d22
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [x29, #-128]
    fmul d26, d27, d22
    fmul d8, d24, d23
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [x29, #-120]
    fmul d26, d30, d21
    str d26, [x29, #-112]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [x29, #-104]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [x29, #-96]
    fmul d25, d19, d21
    str d25, [x29, #-88]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [x29, #-80]
    fmul d24, d24, d20
    fmul d25, d31, d22
    fsub d24, d24, d25
    fmul d24, d21, d24
    str d24, [x29, #-72]
    sub x10, x29, #136
    sub x11, x29, #208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #208
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #136
    movz x16, #31336
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    movz x16, #31192
    sub x10, x29, x16
    movz x16, #47864
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    movz x16, #47864
    sub x9, x29, x16
    mov x0, x9
    sub x8, x29, #136
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #136
    sub x11, x29, #208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #208
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #136
    movz x16, #31264
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    movz x16, #46720
    sub x10, x29, x16
    movz x16, #31128
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15528
    bl _memcpy
    mov x9, #0
    movz x16, #15600
    sub x16, x29, x16
    strb w9, [x16]
    movz x16, #31128
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15536
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr d8, [x16]
    sub x16, x29, #48
    ldr d9, [x16]
    sub x16, x29, #56
    ldr d10, [x16]
    sub x16, x29, #64
    ldr d11, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L840fa2c5ada7_c1:
    adrp x0, _lb_text_37d1149de87a@PAGE
    add x0, x0, _lb_text_37d1149de87a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L840fa2c5ada7_c2:
    adrp x0, _lb_text_37d1149de87a@PAGE
    add x0, x0, _lb_text_37d1149de87a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L840fa2c5ada7_c3:
    adrp x0, _lb_text_0fb8cfb15ffd@PAGE
    add x0, x0, _lb_text_0fb8cfb15ffd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L840fa2c5ada7_c4:
    adrp x0, _lb_text_44747609ce74@PAGE
    add x0, x0, _lb_text_44747609ce74@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L840fa2c5ada7_k0:
    .quad 4631952216750555136
L840fa2c5ada7_k1:
    .quad 4666723172467343360
L840fa2c5ada7_k2:
    .quad 4612586738352862003
L840fa2c5ada7_k3:
    .quad 4608533498688228557
L840fa2c5ada7_k4:
    .quad 4596373779694328218
L840fa2c5ada7_k5:
    .quad 4604390187031047700
L840fa2c5ada7_k6:
    .quad 4614613358185178726
L840fa2c5ada7_k7:
    .quad 4585030473240877602
L840fa2c5ada7_k8:
    .quad 4599183305285867028
L840fa2c5ada7_k9:
    .quad 4601802418685160613
L840fa2c5ada7_k10:
    .quad 4609344146621155246
L840fa2c5ada7_k11:
    .quad 4607812922747849277
L840fa2c5ada7_k12:
    .quad 4589708452245819884


    .p2align 2
    .globl _lb_15luce_color_aces_times
_lb_15luce_color_aces_times:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x9, x29, #72
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    ldr x16, [x10, #64]
    str x16, [x9, #64]
    ldr d24, [sp, #56]
    ldr d25, [sp, #32]
    fmul d24, d24, d25
    ldr d26, [sp, #64]
    ldr d27, [sp, #40]
    fmul d26, d26, d27
    fadd d24, d24, d26
    ldr d26, [sp, #72]
    ldr d28, [sp, #48]
    fmul d26, d26, d28
    fadd d24, d24, d26
    ldr d26, [sp, #80]
    fmul d26, d25, d26
    ldr d29, [sp, #88]
    fmul d29, d27, d29
    fadd d26, d26, d29
    ldr d29, [sp, #96]
    fmul d29, d28, d29
    fadd d26, d26, d29
    ldr d29, [sp, #104]
    fmul d25, d25, d29
    ldr d29, [sp, #112]
    fmul d27, d27, d29
    fadd d25, d25, d27
    ldr d27, [sp, #120]
    fmul d27, d28, d27
    fadd d25, d25, d27
    str d24, [sp, #8]
    str d26, [sp, #16]
    str d25, [sp, #24]
    sub x9, x29, #120
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_OutputTransform_render
_lb_15luce_color_aces_OutputTransform_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #344]
    str x20, [sp, #336]
    str x21, [sp, #328]
    str x22, [sp, #320]
    str d8, [sp, #312]
    str d9, [sp, #304]
    str d10, [sp, #296]
    str d11, [sp, #288]
    str d12, [sp, #280]
    str d13, [sp, #272]
    str d14, [sp, #264]
    str d15, [sp, #256]
    sub x16, x29, #208
    str d0, [x16, #0]
    sub x16, x29, #208
    str d1, [x16, #8]
    sub x16, x29, #208
    str d2, [x16, #16]
    mov x19, x0
    add x20, x19, #8
    sub x9, x29, #208
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x20
    bl _lb_15luce_color_aces_10rgb_to_aab
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    sub x10, x29, #120
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #232
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x20
    bl _lb_15luce_color_aces_10aab_to_jmh
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    ldr d8, [sp, #232]
    ldr d9, [sp, #240]
    ldr d10, [sp, #248]
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d24, [x14]
    fmul d24, d24, d10
    ldr d25, Lc04e35be6607_k0
    fdiv d11, d24, d25
    fmov d0, d11
    bl _lb_13luce_std_math_9cos_value
    fmov d12, d0
    fmov d0, d11
    bl _lb_13luce_std_math_9sin_value
    fmov d11, d0
    add x14, x19, #752
    fcvtzu x15, d10
    ucvtf d24, x15
    fsub d24, d10, d24
    adds x15, x15, #1
    b.cs Lc04e35be6607_c1
    movz x10, #363
    cmp x15, x10
    b.hs Lc04e35be6607_c2
    add x14, x14, x15, lsl #3
    ldr d25, [x14]
    add x15, x15, #1
    movz x10, #363
    cmp x15, x10
    b.hs Lc04e35be6607_c3
    ldr d26, [x14, #8]
    fsub d26, d26, d25
    fmul d24, d24, d26
    fadd d13, d25, d24
Lc04e35be6607_42:
    ldr d24, [x19, #728]
    fmov d25, #2.0000000
    fmul d25, d25, d12
    fmul d26, d25, d12
    fmov d14, #1.0000000
    fsub d26, d26, d14
    fmul d25, d25, d11
    fmov d27, #4.0000000
    fmul d28, d27, d12
    fmul d28, d28, d12
    fmul d28, d28, d12
    fmov d29, #3.0000000
    fmul d30, d29, d12
    fsub d28, d28, d30
    fmul d29, d29, d11
    fmul d27, d27, d11
    fmul d27, d27, d11
    fmul d27, d27, d11
    fsub d27, d29, d27
    ldr d29, Lc04e35be6607_k1
    fmul d29, d29, d12
    ldr d30, Lc04e35be6607_k2
    fmul d26, d26, d30
    fadd d26, d29, d26
    ldr d29, Lc04e35be6607_k3
    fmul d28, d28, d29
    fadd d26, d26, d28
    ldr d28, Lc04e35be6607_k4
    fmul d28, d28, d11
    fadd d26, d26, d28
    ldr d28, Lc04e35be6607_k5
    fmul d25, d25, d28
    fsub d25, d26, d25
    ldr d26, Lc04e35be6607_k6
    fmul d26, d27, d26
    fadd d25, d25, d26
    ldr d26, Lc04e35be6607_k7
    fadd d25, d25, d26
    fmul d15, d24, d25
    ldr d24, [sp, #120]
    ldr d25, [x19, #312]
    fmul d25, d25, d24
    str d24, [sp, #248]
    fmov d0, d25
    bl _lb_15luce_color_aces_11expand_cone
    fmov d25, d0
    ldr d24, [sp, #248]
    ldr d26, [x19, #296]
    fdiv d25, d25, d26
    ldr d26, [x19, #680]
    ldr d27, [x19, #672]
    fadd d27, d27, d25
    fdiv d25, d25, d27
    ldr d27, [x19, #648]
    str d24, [sp, #248]
    str d26, [sp, #240]
    fmov d0, d25
    fmov d1, d27
    bl _lb_13luce_std_math_9pow_value
    fmov d25, d0
    ldr d24, [sp, #248]
    ldr d26, [sp, #240]
    fmul d25, d26, d25
    fmov d26, xzr
    fmul d27, d25, d25
    ldr d28, [x19, #656]
    fadd d25, d25, d28
    fdiv d25, d27, d25
    fmov x21, d26
    and x14, x21, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w22, hi
    cbz w22, Lc04e35be6607_46
Lc04e35be6607_45:
    fmov d25, d26
    b Lc04e35be6607_66
Lc04e35be6607_46:
Lc04e35be6607_47:
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lc04e35be6607_50
Lc04e35be6607_49:
    b Lc04e35be6607_66
Lc04e35be6607_50:
Lc04e35be6607_51:
    fcmp d26, d26
    b.ne Lc04e35be6607_54
Lc04e35be6607_56:
    fcmp d25, d26
    b.ne Lc04e35be6607_54
Lc04e35be6607_53:
    and x14, x21, x14
    fmov d25, x14
    b Lc04e35be6607_66
Lc04e35be6607_54:
Lc04e35be6607_55:
    fcmp d26, d25
    fcsel d25, d26, d25, gt
Lc04e35be6607_66:
    ldr d27, [x19, #640]
    fmul d25, d27, d25
    str d24, [sp, #248]
    str d26, [sp, #240]
    fmov d0, d25
    mov x0, x20
    bl _lb_15luce_color_aces_6y_to_j
    fmov d25, d0
    ldr d24, [sp, #248]
    ldr d26, [sp, #240]
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
Lc04e35be6607_15:
    ldr d25, [x19, #736]
    ldr d27, [x19, #744]
    fcmp d9, d26
    b.ne Lc04e35be6607_17
Lc04e35be6607_16:
    fmov d25, d26
    b Lc04e35be6607_27
Lc04e35be6607_17:
Lc04e35be6607_18:
    fdiv d25, d24, d25
    fsub d28, d14, d25
    cbz w22, Lc04e35be6607_68
Lc04e35be6607_67:
    fmov d14, d26
    b Lc04e35be6607_88
Lc04e35be6607_68:
Lc04e35be6607_69:
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lc04e35be6607_72
Lc04e35be6607_71:
    fmov d14, d28
    b Lc04e35be6607_88
Lc04e35be6607_72:
Lc04e35be6607_73:
    fcmp d26, d26
    b.ne Lc04e35be6607_76
Lc04e35be6607_78:
    fcmp d28, d26
    b.ne Lc04e35be6607_76
Lc04e35be6607_75:
    and x14, x21, x14
    fmov d14, x14
    b Lc04e35be6607_88
Lc04e35be6607_76:
Lc04e35be6607_77:
    fcmp d26, d28
    fcsel d14, d26, d28, gt
Lc04e35be6607_88:
    str d27, [sp, #232]
    str d26, [sp, #240]
    str d24, [sp, #248]
    str d25, [sp, #224]
    fmov d0, d25
    fmov d1, d27
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d27, [sp, #232]
    ldr d26, [sp, #240]
    ldr d24, [sp, #248]
    ldr d25, [sp, #224]
    fmul d28, d13, d28
    fdiv d28, d28, d15
    fdiv d29, d24, d8
    str d26, [sp, #240]
    str d24, [sp, #248]
    str d25, [sp, #224]
    str d28, [sp, #216]
    fmov d0, d29
    fmov d1, d27
    bl _lb_13luce_std_math_9pow_value
    fmov d27, d0
    ldr d26, [sp, #240]
    ldr d24, [sp, #248]
    ldr d25, [sp, #224]
    ldr d28, [sp, #216]
    fmul d27, d9, d27
    fdiv d27, d27, d15
    fsub d27, d28, d27
    ldr d29, Lc04e35be6607_k8
    fsub d29, d28, d29
    ldr d30, [x19, #704]
    fmul d30, d30, d14
    fmul d31, d25, d25
    ldr d19, [x19, #712]
    fadd d31, d31, d19
    fsqrt d31, d31
    str d26, [sp, #240]
    str d24, [sp, #248]
    str d25, [sp, #224]
    str d28, [sp, #216]
    fmov d0, d27
    fmov d1, d29
    fmov d2, d30
    fmov d3, d31
    bl _lb_15luce_color_aces_toe
    fmov d27, d0
    ldr d26, [sp, #240]
    ldr d24, [sp, #248]
    ldr d25, [sp, #224]
    ldr d28, [sp, #216]
    fsub d27, d28, d27
    ldr d29, [x19, #720]
    fmul d25, d29, d25
    str d26, [sp, #240]
    str d24, [sp, #248]
    fmov d0, d27
    fmov d1, d28
    fmov d2, d25
    fmov d3, d14
    bl _lb_15luce_color_aces_toe
    fmov d25, d0
    ldr d26, [sp, #240]
    ldr d24, [sp, #248]
    fmul d25, d25, d15
Lc04e35be6607_27:
    ldr d8, [x19, #736]
    ldr d9, [x19, #744]
    add x20, x19, #3656
    str d24, [sp, #48]
    sub x9, x29, #304
    add x14, x9, #8
    str d25, [x14]
    sub x9, x29, #304
    add x14, x9, #16
    str d10, [x14]
    fcmp d24, d26
    b.hi Lc04e35be6607_29
Lc04e35be6607_28:
    fmov d24, d26
    fmov d25, d26
    b Lc04e35be6607_38
Lc04e35be6607_29:
Lc04e35be6607_30:
    fcmp d25, d26
    b.ls Lc04e35be6607_32
Lc04e35be6607_35:
    fcmp d24, d8
    b.le Lc04e35be6607_33
Lc04e35be6607_32:
    fmov d25, d26
    b Lc04e35be6607_38
Lc04e35be6607_33:
Lc04e35be6607_34:
    str d26, [sp, #240]
    fmov d0, d10
    fmov d1, d8
    mov x0, x20
    sub x8, x29, #160
    bl _lb_15luce_color_aces_9hue_gamut
    ldr d26, [sp, #240]
    sub x10, x29, #160
    sub x11, x29, #352
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr d24, [sp, #48]
    str d26, [sp, #240]
    sub x9, x29, #304
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    fmov d4, d8
    fmov d5, d9
    fmov d6, d13
    mov x0, x20
    sub x1, x29, #352
    mov x2, #0
    bl _lb_15luce_color_aces_compress
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    ldr d26, [sp, #240]
    ldr d24, [sp, #216]
    ldr d25, [sp, #224]
    ldr d10, [sp, #232]
Lc04e35be6607_38:
    str d24, [sp, #96]
    str d25, [sp, #104]
    str d10, [sp, #112]
    add x20, x19, #320
    str d26, [sp, #240]
    sub x9, x29, #256
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d12
    fmov d4, d11
    mov x0, x20
    bl _lb_15luce_color_aces_10jmh_to_aab
    sub x16, x29, #280
    str d0, [x16, #0]
    sub x16, x29, #280
    str d1, [x16, #8]
    sub x16, x29, #280
    str d2, [x16, #16]
    ldr d26, [sp, #240]
    str d26, [sp, #240]
    sub x9, x29, #280
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x20
    bl _lb_15luce_color_aces_10aab_to_rgb
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    ldr d26, [sp, #240]
    ldr d24, [sp, #216]
    ldr d25, [sp, #224]
    ldr d27, [sp, #232]
    ldr d28, [x19]
    adrp x14, _lb_15luce_color_aces_19reference_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_19reference_luminance@PAGEOFF
    ldr d29, [x14]
    fdiv d28, d28, d29
    fcmp d26, d28
    cset w14, ls
    cbz w14, Lc04e35be6607_90
Lc04e35be6607_89:
    fmov x15, d24
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lc04e35be6607_92
Lc04e35be6607_91:
    b Lc04e35be6607_104
Lc04e35be6607_92:
Lc04e35be6607_93:
    fcmp d24, d26
    cset w15, mi
    fcmp d24, d28
    fcsel d24, d28, d24, gt
    cmp w15, #0
    fcsel d24, d26, d24, ne
Lc04e35be6607_104:
    cbz w14, Lc04e35be6607_106
Lc04e35be6607_105:
    fmov x15, d25
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lc04e35be6607_108
Lc04e35be6607_107:
    b Lc04e35be6607_120
Lc04e35be6607_108:
Lc04e35be6607_109:
    fcmp d25, d26
    cset w15, mi
    fcmp d25, d28
    fcsel d25, d28, d25, gt
    cmp w15, #0
    fcsel d25, d26, d25, ne
Lc04e35be6607_120:
    cbz w14, Lc04e35be6607_122
Lc04e35be6607_121:
    fmov x14, d27
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Lc04e35be6607_124
Lc04e35be6607_123:
    b Lc04e35be6607_136
Lc04e35be6607_124:
Lc04e35be6607_125:
    fcmp d27, d26
    cset w14, mi
    fcmp d27, d28
    fcsel d27, d28, d27, gt
    cmp w14, #0
    fcsel d26, d26, d27, ne
    fmov d27, d26
Lc04e35be6607_136:
    str d24, [sp, #168]
    str d25, [sp, #176]
    str d27, [sp, #184]
    sub x9, x29, #184
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    ldr x22, [sp, #320]
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    ldr d10, [sp, #296]
    ldr d11, [sp, #288]
    ldr d12, [sp, #280]
    ldr d13, [sp, #272]
    ldr d14, [sp, #264]
    ldr d15, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc04e35be6607_90:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lc04e35be6607_106:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lc04e35be6607_122:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lc04e35be6607_c1:
    adrp x0, _lb_text_9ff977f6c234@PAGE
    add x0, x0, _lb_text_9ff977f6c234@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc04e35be6607_c2:
    adrp x0, _lb_text_9ff977f6c234@PAGE
    add x0, x0, _lb_text_9ff977f6c234@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc04e35be6607_c3:
    adrp x0, _lb_text_9ff977f6c234@PAGE
    add x0, x0, _lb_text_9ff977f6c234@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lc04e35be6607_k0:
    .quad 4640537203540230144
Lc04e35be6607_k1:
    .quad 4622573875850522541
Lc04e35be6607_k2:
    .quad 4625328826258826923
Lc04e35be6607_k3:
    .quad 4620562388112953783
Lc04e35be6607_k4:
    .quad 4624444946981209422
Lc04e35be6607_k5:
    .quad 4618860522849766746
Lc04e35be6607_k6:
    .quad 4621365177264530711
Lc04e35be6607_k7:
    .quad 4635127884991799168
Lc04e35be6607_k8:
    .quad 4562254508917369340


    .p2align 2
    .globl _lb_16luce_color_cam16_viewing
_lb_16luce_color_cam16_viewing:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #544]
    str d9, [sp, #536]
    str d10, [sp, #528]
    str d11, [sp, #520]
    str d12, [sp, #512]
    str d13, [sp, #504]
    str d14, [sp, #496]
    str d15, [sp, #488]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    fmov d8, d3
    fmov d9, d4
    fmov d10, d5
    sub x0, x29, #416
    mov x1, #0
    movz x2, #136
    bl _memset
    sub x10, x29, #96
    sub x11, x29, #416
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    str d8, [sp, #168]
    str d9, [sp, #176]
    str d10, [sp, #184]
    fmov d11, xzr
    str d11, [sp, #192]
    str d11, [sp, #200]
    str d11, [sp, #208]
    str d11, [sp, #216]
    str d11, [sp, #224]
    str d11, [sp, #232]
    str d11, [sp, #240]
    str d11, [sp, #248]
    fmov d12, #1.0000000
    str d12, [sp, #256]
    str d12, [sp, #264]
    str d12, [sp, #272]
    sub x10, x29, #416
    sub x0, x29, #280
    mov x1, x10
    movz x2, #136
    bl _memcpy
    adrp x14, _lb_16luce_color_cam16_m16@PAGE
    add x14, x14, _lb_16luce_color_cam16_m16@PAGEOFF
    sub x11, x29, #352
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x14, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #464]
    ldr d13, [sp, #472]
    ldr d25, [sp, #480]
    ldr d26, [sp, #208]
    fmul d26, d26, d24
    ldr d27, [sp, #216]
    fmul d27, d27, d13
    fadd d26, d26, d27
    ldr d27, [sp, #224]
    fmul d27, d27, d25
    fadd d14, d26, d27
    ldr d26, [sp, #232]
    fmul d26, d26, d24
    ldr d27, [sp, #240]
    fmul d27, d27, d13
    fadd d26, d26, d27
    ldr d27, [sp, #248]
    fmul d27, d27, d25
    fadd d15, d26, d27
    ldr d26, [sp, #256]
    fmul d24, d26, d24
    ldr d26, [sp, #264]
    fmul d26, d26, d13
    fadd d24, d24, d26
    ldr d26, [sp, #272]
    fmul d25, d26, d25
    fadd d24, d24, d25
    ldr d25, Ld861ce6c127b_k0
    fmov d26, #2.0000000
    fcmp d11, d26
    b.hi Ld861ce6c127b_20
Ld861ce6c127b_19:
    fmov x14, d10
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld861ce6c127b_22
Ld861ce6c127b_21:
    b Ld861ce6c127b_34
Ld861ce6c127b_22:
Ld861ce6c127b_23:
    fcmp d10, d11
    cset w14, mi
    fcmp d10, d26
    fcsel d27, d26, d10, gt
    cmp w14, #0
    fcsel d27, d11, d27, ne
    fmov d10, d27
Ld861ce6c127b_34:
    fmov d27, #10.0000000
    fdiv d28, d10, d27
    fadd d10, d28, d25
    ldr d28, Ld861ce6c127b_k1
    fcmp d10, d28
    b.lt Ld861ce6c127b_2
Ld861ce6c127b_1:
    ldr d25, Ld861ce6c127b_k2
    ldr d29, Ld861ce6c127b_k3
    fsub d28, d10, d28
    fmul d27, d28, d27
    fsub d28, d29, d25
    fmul d27, d27, d28
    fadd d25, d25, d27
    b Ld861ce6c127b_3
Ld861ce6c127b_2:
    ldr d28, Ld861ce6c127b_k4
    ldr d29, Ld861ce6c127b_k2
    fsub d25, d10, d25
    fmul d25, d25, d27
    fsub d27, d29, d28
    fmul d25, d25, d27
    fadd d25, d28, d25
Ld861ce6c127b_3:
    str d25, [sp, #360]
    str d10, [sp, #368]
    ldr d25, Ld861ce6c127b_k5
    fdiv d25, d12, d25
    fneg d27, d8
    ldr d28, Ld861ce6c127b_k6
    fsub d27, d27, d28
    ldr d28, Ld861ce6c127b_k7
    fdiv d27, d27, d28
    str d24, [sp, #480]
    str d26, [sp, #472]
    str d25, [sp, #464]
    fmov d0, d27
    bl _lb_13luce_std_math_9exp_value
    fmov d27, d0
    ldr d24, [sp, #480]
    ldr d26, [sp, #472]
    ldr d25, [sp, #464]
    fmul d25, d25, d27
    fsub d25, d12, d25
    fmul d25, d25, d10
    fcmp d11, d12
    b.hi Ld861ce6c127b_36
Ld861ce6c127b_35:
    fmov x14, d25
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld861ce6c127b_38
Ld861ce6c127b_37:
    b Ld861ce6c127b_50
Ld861ce6c127b_38:
Ld861ce6c127b_39:
    fcmp d25, d11
    cset w14, mi
    fcmp d25, d12
    fcsel d25, d12, d25, gt
    cmp w14, #0
    fcsel d25, d11, d25, ne
Ld861ce6c127b_50:
    ldr d10, Ld861ce6c127b_k8
    fdiv d27, d10, d14
    fmul d27, d27, d25
    fadd d27, d27, d12
    fsub d11, d27, d25
    fdiv d27, d10, d15
    fmul d27, d27, d25
    fadd d27, d27, d12
    fsub d27, d27, d25
    fdiv d28, d10, d24
    fmul d28, d28, d25
    fadd d28, d28, d12
    fsub d25, d28, d25
    str d11, [sp, #392]
    str d27, [sp, #400]
    str d25, [sp, #408]
    fmov d28, #5.0000000
    fmul d28, d28, d8
    fadd d29, d28, d12
    fdiv d29, d12, d29
    fmul d30, d29, d29
    fmul d30, d29, d30
    fmul d29, d29, d30
    fmul d8, d29, d8
    ldr d30, Ld861ce6c127b_k9
    fsub d29, d12, d29
    fmul d30, d30, d29
    fmul d12, d29, d30
    str d24, [sp, #480]
    str d26, [sp, #472]
    str d27, [sp, #464]
    str d25, [sp, #456]
    fmov d0, d28
    bl _lb_13luce_std_math_10cbrt_value
    fmov d28, d0
    ldr d24, [sp, #480]
    ldr d26, [sp, #472]
    ldr d27, [sp, #464]
    ldr d25, [sp, #456]
    fmul d28, d12, d28
    fadd d8, d28, d8
    str d8, [sp, #376]
    fdiv d28, d9, d13
    str d28, [sp, #328]
    ldr d29, Ld861ce6c127b_k10
    fsqrt d30, d28
    fadd d29, d29, d30
    str d29, [sp, #336]
    ldr d9, Ld861ce6c127b_k11
    ldr d29, Ld861ce6c127b_k12
    str d24, [sp, #480]
    str d26, [sp, #472]
    str d27, [sp, #464]
    str d25, [sp, #456]
    fmov d0, d28
    fmov d1, d29
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d24, [sp, #480]
    ldr d26, [sp, #472]
    ldr d27, [sp, #464]
    ldr d25, [sp, #456]
    fdiv d9, d9, d28
    str d9, [sp, #344]
    str d9, [sp, #352]
    fmul d28, d11, d8
    fmul d28, d28, d14
    fdiv d28, d28, d10
    str d24, [sp, #480]
    str d26, [sp, #472]
    str d27, [sp, #464]
    str d25, [sp, #456]
    fmov d0, d28
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d11, d0
    ldr d24, [sp, #480]
    ldr d26, [sp, #472]
    ldr d27, [sp, #464]
    ldr d25, [sp, #456]
    fmul d27, d27, d8
    fmul d27, d27, d15
    fdiv d27, d27, d10
    str d24, [sp, #480]
    str d26, [sp, #472]
    str d25, [sp, #456]
    fmov d0, d27
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d12, d0
    ldr d24, [sp, #480]
    ldr d26, [sp, #472]
    ldr d25, [sp, #456]
    fmul d25, d25, d8
    fmul d24, d25, d24
    fdiv d24, d24, d10
    str d26, [sp, #472]
    fmov d0, d24
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d24, d0
    ldr d26, [sp, #472]
    fmul d25, d11, d26
    fadd d25, d12, d25
    ldr d26, Ld861ce6c127b_k13
    fmul d24, d24, d26
    fadd d24, d25, d24
    fmul d24, d9, d24
    str d24, [sp, #384]
    sub x10, x29, #280
    sub x0, x29, #552
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x1, x29, #552
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #136
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr d8, [sp, #544]
    ldr d9, [sp, #536]
    ldr d10, [sp, #528]
    ldr d11, [sp, #520]
    ldr d12, [sp, #512]
    ldr d13, [sp, #504]
    ldr d14, [sp, #496]
    ldr d15, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld861ce6c127b_20:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld861ce6c127b_36:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld861ce6c127b_k0:
    .quad 4605380978949069210
Ld861ce6c127b_k1:
    .quad 4606281698874543309
Ld861ce6c127b_k2:
    .quad 4603489467105573601
Ld861ce6c127b_k3:
    .quad 4604390187031047700
Ld861ce6c127b_k4:
    .quad 4602903999154015437
Ld861ce6c127b_k5:
    .quad 4615288898129284301
Ld861ce6c127b_k6:
    .quad 4631107791820423168
Ld861ce6c127b_k7:
    .quad 4636174341401214976
Ld861ce6c127b_k8:
    .quad 4636737291354636288
Ld861ce6c127b_k9:
    .quad 4591870180066957722
Ld861ce6c127b_k10:
    .quad 4609344146621155246
Ld861ce6c127b_k11:
    .quad 4604705439004963635
Ld861ce6c127b_k12:
    .quad 4596373779694328218
Ld861ce6c127b_k13:
    .quad 4587366580439587226


    .p2align 2
    .globl _lb_16luce_color_cam16_corresponding
_lb_16luce_color_cam16_corresponding:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    str x19, [sp, #392]
    str d8, [sp, #384]
    str d9, [sp, #376]
    str d10, [sp, #368]
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    sub x16, x29, #256
    str x0, [x16]
    sub x16, x29, #392
    str x1, [x16]
    sub x16, x29, #48
    str w2, [x16]
    sub x0, x29, #256
    ldr x1, [x0]
    movz x2, #136
    bl _memcpy
    sub x0, x29, #392
    ldr x1, [x0]
    movz x2, #136
    bl _memcpy
    ldrb w19, [sp, #352]
    sub x9, x29, #120
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x9, x29, #256
    mov x0, x9
    sub x8, x29, #96
    bl _lb_16luce_color_cam16_appearance
    ldr d8, [sp, #304]
    ldr d24, [sp, #320]
    ldr d9, [sp, #328]
    ldr d10, [sp, #344]
    cbz w19, Lc78858773acf_2
Lc78858773acf_1:
    ldr d24, [sp, #104]
    fmov d25, #0.2500000
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fdiv d24, d9, d24
    b Lc78858773acf_3
Lc78858773acf_2:
Lc78858773acf_3:
    fmov d0, d8
    fmov d1, d24
    fmov d2, d10
    sub x9, x29, #392
    mov x0, x9
    bl _lb_16luce_color_cam16_8from_jch
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    ldr x19, [sp, #392]
    ldr d8, [sp, #384]
    ldr d9, [sp, #376]
    ldr d10, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_10log2_value
_lb_13luce_std_math_10log2_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    movz x10, #16, lsl #48
    sub x15, x14, x10
    movz x10, #32736, lsl #48
    cmp x15, x10
    b.hs L54a43d7eb951_2
L54a43d7eb951_1:
    movz x10, #16358, lsl #48
    sub x15, x14, x10
    lsr x12, x15, #45
    and x12, x12, #127
    asr x13, x15, #52
    scvtf d25, x13
    and x15, x15, #18442240474082181120
    sub x14, x14, x15
    fmov d26, x14
    adrp x14, _lb_20luce_std_math_tables_9log_point@PAGE
    add x14, x14, _lb_20luce_std_math_tables_9log_point@PAGEOFF
    lsl x15, x12, #3
    ldr x14, [x14, x15]
    fmov d27, x14
    adrp x14, _lb_20luce_std_math_tables_11log_inverse@PAGE
    add x14, x14, _lb_20luce_std_math_tables_11log_inverse@PAGEOFF
    ldr x14, [x15, x14]
    fmov d28, x14
    fsub d26, d26, d27
    fmul d29, d28, d26
    fneg d30, d29
    fmadd d26, d30, d27, d26
    fmul d26, d28, d26
    ldr d27, L54a43d7eb951_k0
    fmul d27, d25, d27
    adrp x14, _lb_20luce_std_math_tables_14log_table_high@PAGE
    add x14, x14, _lb_20luce_std_math_tables_14log_table_high@PAGEOFF
    ldr x14, [x15, x14]
    fmov d28, x14
    fadd d27, d27, d28
    fadd d28, d29, d27
    fsub d27, d28, d27
    fsub d27, d29, d27
    fmul d30, d29, d29
    fneg d31, d30
    fmadd d31, d29, d29, d31
    fmov d19, #0.5000000
    fmov d20, #-0.5000000
    fmul d20, d20, d30
    fadd d21, d20, d28
    fsub d28, d21, d28
    fsub d28, d20, d28
    ldr d20, L54a43d7eb951_k1
    fmul d25, d25, d20
    adrp x14, _lb_20luce_std_math_tables_13log_table_low@PAGE
    add x14, x14, _lb_20luce_std_math_tables_13log_table_low@PAGEOFF
    ldr x14, [x15, x14]
    fmov d20, x14
    fadd d25, d25, d20
    fadd d27, d27, d28
    fadd d25, d25, d27
    fmul d27, d29, d26
    fsub d26, d26, d27
    fmul d27, d19, d31
    fsub d26, d26, d27
    fmov d27, #-0.2500000
    ldr d28, L54a43d7eb951_k2
    fmadd d27, d29, d27, d28
    ldr d28, L54a43d7eb951_k3
    ldr d31, L54a43d7eb951_k4
    fmadd d28, d29, d28, d31
    fmov d31, #-0.1250000
    ldr d19, L54a43d7eb951_k5
    fmadd d31, d29, d31, d19
    ldr d19, L54a43d7eb951_k6
    ldr d20, L54a43d7eb951_k7
    fmadd d19, d29, d19, d20
    fmul d20, d30, d30
    fmadd d31, d30, d19, d31
    fmadd d27, d30, d28, d27
    fmadd d27, d20, d31, d27
    fmul d28, d29, d30
    fmul d27, d27, d28
    fadd d26, d27, d26
    fadd d25, d26, d25
    ldr d26, L54a43d7eb951_k8
    ldr d27, L54a43d7eb951_k9
    fmul d28, d26, d21
    fneg d29, d28
    fmadd d29, d21, d26, d29
    fmul d27, d27, d21
    fmul d25, d26, d25
    fadd d25, d27, d25
    fadd d25, d25, d29
    fadd d26, d25, d28
    fsub d27, d26, d28
    fsub d25, d25, d27
    ldr d27, L54a43d7eb951_k10
    fabs d28, d26
    fmul d27, d27, d28
    fsub d28, d25, d27
    fadd d28, d26, d28
    fadd d27, d25, d27
    fadd d27, d26, d27
    fcmp d28, d27
    b.ne L54a43d7eb951_5
L54a43d7eb951_4:
    fadd d24, d26, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L54a43d7eb951_5:
L54a43d7eb951_2:
L54a43d7eb951_3:
    fmov d0, d24
    bl _lb_13luce_std_math_13log2_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L54a43d7eb951_k0:
    .quad 4604418534313441280
L54a43d7eb951_k1:
    .quad 4408728642709317424
L54a43d7eb951_k2:
    .quad 4599676419421066581
L54a43d7eb951_k3:
    .quad 13818544856648471893
L54a43d7eb951_k4:
    .quad 4596373779694328218
L54a43d7eb951_k5:
    .quad 4594314991293244562
L54a43d7eb951_k6:
    .quad 13815242216921733530
L54a43d7eb951_k7:
    .quad 4592670820000712476
L54a43d7eb951_k8:
    .quad 4609176140021203710
L54a43d7eb951_k9:
    .quad 4357082904033627428
L54a43d7eb951_k10:
    .quad 4327959241903046656


    .p2align 2
    .globl _lb_15luce_color_aces_6cam_of
_lb_15luce_color_aces_6cam_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1280
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1264]
    str x20, [sp, #1256]
    str d8, [sp, #1248]
    str d9, [sp, #1240]
    str d10, [sp, #1232]
    str d11, [sp, #1224]
    str d12, [sp, #1216]
    str d13, [sp, #1208]
    str d14, [sp, #1200]
    str d15, [sp, #1192]
    sub x16, x29, #1152
    str x0, [x16]
    sub x9, x29, #1152
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x9, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x9, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x9, #48]
    fmov d24, #2.0000000
    str d24, [sp, #1048]
    fmov d8, #1.0000000
    str d8, [sp, #1056]
    fmov d24, #20.0000000
    fdiv d24, d8, d24
    str d24, [sp, #1064]
    str d8, [sp, #1072]
    fmov d24, #-12.0000000
    fmov d25, #11.0000000
    fdiv d24, d24, d25
    str d24, [sp, #1080]
    fdiv d24, d8, d25
    str d24, [sp, #1088]
    fmov d24, #9.0000000
    fdiv d25, d8, d24
    str d25, [sp, #1096]
    str d25, [sp, #1104]
    fmov d25, #-2.0000000
    fdiv d24, d25, d24
    str d24, [sp, #1112]
    sub x10, x29, #232
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    adrp x19, _lb_15luce_color_aces_15cam16_primaries@PAGE
    add x19, x19, _lb_15luce_color_aces_15cam16_primaries@PAGEOFF
    sub x11, x29, #296
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x19, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x19, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x19, #48]
    stp x16, x17, [x11, #48]
    sub x10, x29, #296
    sub x11, x29, #1216
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #1216
    mov x0, x9
    sub x8, x29, #304
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #304
    sub x11, x29, #376
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #376
    sub x11, x29, #304
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #304
    sub x11, x29, #376
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #936]
    ldr d25, [sp, #968]
    fmul d26, d24, d25
    ldr d27, [sp, #944]
    ldr d28, [sp, #960]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [sp, #952]
    fmul d30, d27, d29
    ldr d31, [sp, #928]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [sp, #904]
    fmul d21, d26, d20
    ldr d22, [sp, #912]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [sp, #920]
    fmul d9, d19, d23
    fadd d21, d21, d9
    fdiv d21, d8, d21
    fmul d9, d26, d21
    str d9, [sp, #976]
    fmul d26, d28, d23
    fmul d10, d25, d22
    fsub d26, d26, d10
    fmul d10, d21, d26
    str d10, [sp, #984]
    fmul d26, d27, d22
    fmul d11, d24, d23
    fsub d26, d26, d11
    fmul d11, d21, d26
    str d11, [sp, #992]
    fmul d12, d30, d21
    str d12, [sp, #1000]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d13, d21, d25
    str d13, [sp, #1008]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d14, d21, d25
    str d14, [sp, #1016]
    fmul d15, d19, d21
    str d15, [sp, #1024]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1032]
    fmul d24, d24, d20
    fmul d26, d31, d22
    fsub d24, d24, d26
    fmul d24, d21, d24
    str d24, [sp, #1040]
    sub x10, x29, #304
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
    sub x11, x29, #464
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #464
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #536
    sub x11, x29, #464
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #464
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #1152
    sub x11, x29, #1280
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    str d25, [sp, #968]
    str d24, [sp, #960]
    sub x9, x29, #1280
    mov x0, x9
    sub x8, x29, #464
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    ldr d25, [sp, #968]
    ldr d24, [sp, #960]
    sub x10, x29, #464
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #536
    sub x11, x29, #464
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    adrp x20, _lb_15luce_color_aces_19reference_luminance@PAGE
    add x20, x20, _lb_15luce_color_aces_19reference_luminance@PAGEOFF
    ldr d26, [x20]
    sub x10, x29, #464
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d27, [sp, #744]
    fmul d27, d26, d27
    ldr d28, [sp, #752]
    fmul d28, d26, d28
    fadd d27, d27, d28
    ldr d28, [sp, #760]
    fmul d28, d26, d28
    fadd d27, d27, d28
    ldr d28, [sp, #768]
    fmul d28, d26, d28
    ldr d29, [sp, #776]
    fmul d29, d26, d29
    fadd d28, d28, d29
    ldr d29, [sp, #784]
    fmul d29, d26, d29
    fadd d28, d28, d29
    ldr d29, [sp, #792]
    fmul d29, d26, d29
    ldr d30, [sp, #800]
    fmul d30, d26, d30
    fadd d29, d29, d30
    ldr d30, [sp, #808]
    fmul d26, d26, d30
    fadd d26, d29, d26
    sub x10, x29, #232
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    fmul d29, d9, d27
    fmul d30, d10, d28
    fadd d29, d29, d30
    fmul d30, d11, d26
    fadd d9, d29, d30
    fmul d29, d12, d27
    fmul d30, d13, d28
    fadd d29, d29, d30
    fmul d30, d14, d26
    fadd d10, d29, d30
    fmul d27, d15, d27
    fmul d25, d25, d28
    fadd d25, d27, d25
    fmul d24, d24, d26
    fadd d11, d25, d24
    fmov d24, #5.0000000
    adrp x14, _lb_15luce_color_aces_18adapting_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_18adapting_luminance@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    fadd d25, d24, d8
    fdiv d25, d8, d25
    fmul d26, d25, d25
    fmul d26, d25, d26
    fmul d25, d25, d26
    ldr d26, Lbddd14b65dab_k0
    fmul d26, d25, d26
    fmul d12, d24, d26
    ldr d26, Lbddd14b65dab_k1
    fsub d25, d8, d25
    fmul d26, d26, d25
    fmul d13, d25, d26
    str d28, [sp, #880]
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    ldr d28, [sp, #880]
    fmul d24, d13, d24
    fadd d12, d24, d12
    ldr d24, [x20]
    fdiv d13, d12, d24
    fmul d24, d28, d13
    fdiv d14, d24, d9
    fdiv d15, d24, d10
    fdiv d24, d24, d11
    fmul d25, d14, d9
    str d24, [sp, #1112]
    fmov d0, d25
    bl _lb_15luce_color_aces_15compress_signed
    fmov d9, d0
    ldr d24, [sp, #1112]
    fmul d25, d15, d10
    str d24, [sp, #1112]
    fmov d0, d25
    bl _lb_15luce_color_aces_15compress_signed
    fmov d10, d0
    ldr d24, [sp, #1112]
    fmul d25, d24, d11
    str d24, [sp, #1112]
    fmov d0, d25
    bl _lb_15luce_color_aces_15compress_signed
    fmov d25, d0
    ldr d24, [sp, #1112]
    sub x11, x29, #464
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    adrp x14, _lb_15luce_color_aces_17compression_scale@PAGE
    add x14, x14, _lb_15luce_color_aces_17compression_scale@PAGEOFF
    mov x15, #0
Lbddd14b65dab_1:
    cmp x15, #9
    b.hs Lbddd14b65dab_4
    .p2align 4
Lbddd14b65dab_2:
    lsl x12, x15, #3
    sub x10, x29, #464
    add x13, x12, x10
    sub x11, x29, #160
    ldr d26, [x12, x11]
    ldr d27, [x14]
    fmul d26, d26, d27
    str d26, [x13]
    add x15, x15, #1
    cmp x15, #9
    b.lo Lbddd14b65dab_2
Lbddd14b65dab_4:
    ldr d26, [sp, #816]
    fmul d26, d26, d9
    ldr d27, [sp, #824]
    fmul d27, d27, d10
    fadd d26, d26, d27
    ldr d27, [sp, #832]
    fmul d25, d27, d25
    fadd d25, d26, d25
    mov x14, #0
Lbddd14b65dab_5:
    cmp x14, #3
    b.hs Lbddd14b65dab_8
    .p2align 4
Lbddd14b65dab_6:
    sub x9, x29, #464
    add x15, x9, x14, lsl #3
    ldr d26, [x15]
    fdiv d26, d26, d25
    str d26, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo Lbddd14b65dab_6
Lbddd14b65dab_8:
    ldr d25, Lbddd14b65dab_k2
    adrp x14, _lb_15luce_color_aces_10surround_n@PAGE
    add x14, x14, _lb_15luce_color_aces_10surround_n@PAGEOFF
    movz x15, #3
Lbddd14b65dab_9:
    cmp x15, #9
    b.hs Lbddd14b65dab_12
    .p2align 4
Lbddd14b65dab_10:
    sub x9, x29, #464
    add x12, x9, x15, lsl #3
    ldr d26, [x12]
    ldr d27, [x14]
    fmul d27, d27, d25
    fmul d26, d26, d27
    str d26, [x12]
    add x15, x15, #1
    cmp x15, #9
    b.lo Lbddd14b65dab_10
Lbddd14b65dab_12:
    str d14, [sp, #744]
    fmov d9, xzr
    str d9, [sp, #752]
    str d9, [sp, #760]
    str d9, [sp, #768]
    str d15, [sp, #776]
    str d9, [sp, #784]
    str d9, [sp, #792]
    str d9, [sp, #800]
    str d24, [sp, #808]
    sub x10, x29, #536
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #608
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #232
    sub x11, x29, #680
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    mov x1, x19
    sub x9, x29, #1152
    mov x0, x9
    sub x8, x29, #232
    bl _lb_15luce_color_aces_10rgb_to_rgb
    sub x10, x29, #232
    sub x11, x29, #752
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [x20]
    str d24, [sp, #744]
    str d9, [sp, #752]
    str d9, [sp, #760]
    str d9, [sp, #768]
    str d24, [sp, #776]
    str d9, [sp, #784]
    str d9, [sp, #792]
    str d9, [sp, #800]
    str d24, [sp, #808]
    sub x10, x29, #536
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #608
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #752
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #232
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x11, x29, #232
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
Lbddd14b65dab_32:
    cmp x14, #3
    b.hs Lbddd14b65dab_35
    .p2align 4
Lbddd14b65dab_33:
    add x15, x14, x14, lsl #1
    sub x9, x29, #536
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
Lbddd14b65dab_36:
    cmp x6, #3
    b.hs Lbddd14b65dab_39
    .p2align 4
Lbddd14b65dab_37:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs Lbddd14b65dab_c1
    sub x9, x29, #232
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #608
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs Lbddd14b65dab_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs Lbddd14b65dab_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs Lbddd14b65dab_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs Lbddd14b65dab_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo Lbddd14b65dab_37
Lbddd14b65dab_39:
    add x14, x14, #1
    cmp x14, #3
    b.lo Lbddd14b65dab_33
Lbddd14b65dab_35:
    sub x10, x29, #232
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #536
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #680
    sub x11, x29, #752
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #608
    sub x11, x29, #680
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x11, x29, #232
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
Lbddd14b65dab_42:
    cmp x14, #3
    b.hs Lbddd14b65dab_45
    .p2align 4
Lbddd14b65dab_43:
    add x15, x14, x14, lsl #1
    sub x9, x29, #752
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
Lbddd14b65dab_46:
    cmp x6, #3
    b.hs Lbddd14b65dab_49
    .p2align 4
Lbddd14b65dab_47:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs Lbddd14b65dab_c6
    sub x9, x29, #232
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #680
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs Lbddd14b65dab_c7
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs Lbddd14b65dab_c8
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs Lbddd14b65dab_c9
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs Lbddd14b65dab_c10
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo Lbddd14b65dab_47
Lbddd14b65dab_49:
    add x14, x14, #1
    cmp x14, #3
    b.lo Lbddd14b65dab_43
Lbddd14b65dab_45:
    sub x10, x29, #232
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #536
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #232
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x0, x29, #776
    mov x1, #0
    movz x2, #312
    bl _memset
    sub x10, x29, #160
    sub x11, x29, #776
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #160
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #1080]
    ldr d25, [sp, #1112]
    fmul d26, d24, d25
    ldr d27, [sp, #1088]
    ldr d28, [sp, #1104]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [sp, #1096]
    fmul d30, d27, d29
    ldr d31, [sp, #1072]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [sp, #1048]
    fmul d21, d26, d20
    ldr d22, [sp, #1056]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [sp, #1064]
    fmul d9, d19, d23
    fadd d21, d21, d9
    fdiv d21, d8, d21
    fmul d26, d26, d21
    str d26, [sp, #976]
    fmul d26, d28, d23
    fmul d9, d25, d22
    fsub d26, d26, d9
    fmul d26, d21, d26
    str d26, [sp, #984]
    fmul d26, d27, d22
    fmul d9, d24, d23
    fsub d26, d26, d9
    fmul d26, d21, d26
    str d26, [sp, #992]
    fmul d26, d30, d21
    str d26, [sp, #1000]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1008]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1016]
    fmul d25, d19, d21
    str d25, [sp, #1024]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1032]
    fmul d24, d24, d20
    fmul d25, d31, d22
    fsub d24, d24, d25
    fmul d24, d21, d24
    str d24, [sp, #1040]
    sub x10, x29, #304
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #160
    sub x11, x29, #704
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #464
    sub x11, x29, #632
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #464
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    ldr d24, [sp, #1152]
    ldr d25, [sp, #1184]
    fmul d26, d24, d25
    ldr d27, [sp, #1160]
    ldr d28, [sp, #1176]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [sp, #1168]
    fmul d30, d27, d29
    ldr d31, [sp, #1144]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [sp, #1120]
    fmul d21, d26, d20
    ldr d22, [sp, #1128]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [sp, #1136]
    fmul d9, d19, d23
    fadd d21, d21, d9
    fdiv d21, d8, d21
    fmul d26, d26, d21
    str d26, [sp, #976]
    fmul d26, d28, d23
    fmul d8, d25, d22
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #984]
    fmul d26, d27, d22
    fmul d8, d24, d23
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #992]
    fmul d26, d30, d21
    str d26, [sp, #1000]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1008]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1016]
    fmul d25, d19, d21
    str d25, [sp, #1024]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #1032]
    fmul d24, d24, d20
    fmul d25, d31, d22
    fsub d24, d24, d25
    fmul d24, d21, d24
    str d24, [sp, #1040]
    sub x10, x29, #304
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #160
    sub x11, x29, #560
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    str d13, [sp, #792]
    adrp x14, _lb_15luce_color_aces_10surround_c@PAGE
    add x14, x14, _lb_15luce_color_aces_10surround_c@PAGEOFF
    ldr d24, [x14]
    ldr d25, Lbddd14b65dab_k3
    adrp x14, _lb_15luce_color_aces_20background_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_20background_luminance@PAGEOFF
    ldr d26, [x14]
    ldr d27, [x20]
    fdiv d26, d26, d27
    fsqrt d26, d26
    fadd d25, d25, d26
    fmul d24, d25, d24
    str d24, [sp, #800]
    fmov d0, d12
    bl _lb_15luce_color_aces_13compress_cone
    fmov d24, d0
    str d24, [sp, #808]
    sub x10, x29, #776
    sub x0, x29, #1088
    mov x1, x10
    movz x2, #312
    bl _memcpy
    sub x1, x29, #1088
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #312
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr d8, [sp, #1248]
    ldr d9, [sp, #1240]
    ldr d10, [sp, #1232]
    ldr d11, [sp, #1224]
    ldr d12, [sp, #1216]
    ldr d13, [sp, #1208]
    ldr d14, [sp, #1200]
    ldr d15, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbddd14b65dab_c1:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c2:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c3:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c4:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c5:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c6:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c7:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c8:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c9:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbddd14b65dab_c10:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lbddd14b65dab_k0:
    .quad 4596373779694328218
Lbddd14b65dab_k1:
    .quad 4591870180066957722
Lbddd14b65dab_k2:
    .quad 4631248529308778496
Lbddd14b65dab_k3:
    .quad 4609344146621155246

.subsections_via_symbols
