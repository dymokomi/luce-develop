    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_test_9
_lb_test_9:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str d8, [sp, #120]
    str d9, [sp, #112]
    ldr d8, L1eeba38f8c78_k0
    str d8, [sp, #88]
    str d8, [sp, #96]
    str d8, [sp, #104]
    fmov d24, xzr
    sub x9, x29, #40
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d9, d1
    fmov d25, d2
    str d8, [sp, #64]
    str d8, [sp, #72]
    str d8, [sp, #80]
    fmov d8, #1.0000000
    sub x9, x29, #64
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr d24, L1eeba38f8c78_k1
    fmul d24, d24, d9
    fcmp d25, d24
    b.mi L1eeba38f8c78_1
L1eeba38f8c78_2:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_4411b5a985f7@PAGE
    add x14, x14, _lb_text_4411b5a985f7@PAGEOFF
    adrp x15, _lb_text_8a8ac48857ae@PAGE
    add x15, x15, _lb_text_8a8ac48857ae@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #80
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1eeba38f8c78_1:
    fmov d24, #20.0000000
    str d24, [sp, #24]
    str d24, [sp, #32]
    str d24, [sp, #40]
    sub x9, x29, #104
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d24, #0.7500000
    fcmp d25, d24
    b.gt L1eeba38f8c78_4
L1eeba38f8c78_5:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_68047005bfdf@PAGE
    add x14, x14, _lb_text_68047005bfdf@PAGEOFF
    adrp x15, _lb_text_e307c0e95a51@PAGE
    add x15, x15, _lb_text_e307c0e95a51@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #120
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1eeba38f8c78_4:
    mov x0, #0
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L1eeba38f8c78_k0:
    .quad 4587366580439587226
L1eeba38f8c78_k1:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_test_10
_lb_test_10:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str d8, [sp, #120]
    str d9, [sp, #112]
    str d10, [sp, #104]
    ldr d24, L101adafdb25d_k0
    str d24, [sp, #80]
    str d24, [sp, #88]
    str d24, [sp, #96]
    fmov d8, xzr
    sub x9, x29, #48
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #1
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fadd d27, d24, d25
    fadd d26, d27, d26
    fdiv d24, d24, d26
    fdiv d25, d25, d26
    ldr d26, L101adafdb25d_k1
    fsub d24, d24, d26
    fabs d24, d24
    ldr d26, L101adafdb25d_k2
    fcmp d24, d26
    b.pl L101adafdb25d_2
L101adafdb25d_3:
    ldr d24, L101adafdb25d_k3
    fsub d24, d25, d24
    fabs d24, d24
    fcmp d24, d26
    b.mi L101adafdb25d_1
L101adafdb25d_2:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_be17fa2350b7@PAGE
    add x14, x14, _lb_text_be17fa2350b7@PAGEOFF
    adrp x15, _lb_text_6b2e31ee590c@PAGE
    add x15, x15, _lb_text_6b2e31ee590c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #64
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L101adafdb25d_1:
    ldr d9, L101adafdb25d_k4
    str d9, [sp, #40]
    str d9, [sp, #48]
    str d9, [sp, #56]
    sub x9, x29, #88
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #1
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d10, d1
    fmov d25, d2
    str d9, [sp, #16]
    str d9, [sp, #24]
    str d9, [sp, #32]
    sub x9, x29, #112
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fcmp d10, d25
    b.mi L101adafdb25d_5
L101adafdb25d_6:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_87e3b0257fba@PAGE
    add x14, x14, _lb_text_87e3b0257fba@PAGEOFF
    adrp x15, _lb_text_0412bb4b166e@PAGE
    add x15, x15, _lb_text_0412bb4b166e@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #128
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L101adafdb25d_5:
    mov x0, #0
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L101adafdb25d_k0:
    .quad 4595653203753948938
L101adafdb25d_k1:
    .quad 4599304722331820936
L101adafdb25d_k2:
    .quad 4585925428558828667
L101adafdb25d_k3:
    .quad 4599598357027525493
L101adafdb25d_k4:
    .quad 4584304132692975288


    .p2align 2
    .globl _lb_test_11
_lb_test_11:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    str d8, [sp, #312]
    str d9, [sp, #304]
    str d10, [sp, #296]
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #224]
    fmov d8, #2.0000000
    str d8, [sp, #232]
    mov x9, #0
    str x9, [sp, #240]
    mov x9, #0
    str x9, [sp, #248]
    fmov d24, xzr
    str d24, [sp, #256]
    str d24, [sp, #264]
    str d24, [sp, #272]
    str d24, [sp, #280]
    movz x9, #1
    strb w9, [sp, #288]
    sub x10, x29, #96
    sub x11, x29, #168
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
    ldr d24, L3a46a7dc0ea4_k0
    str d24, [sp, #128]
    str d24, [sp, #136]
    str d24, [sp, #144]
    sub x9, x29, #192
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #168
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d0, d25
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d24, d24
    adrp x14, _lb_10film_paper_12grey_density@PAGE
    add x14, x14, _lb_10film_paper_12grey_density@PAGEOFF
    ldr d25, [x14]
    fsub d24, d24, d25
    fabs d24, d24
    ldr d25, L3a46a7dc0ea4_k1
    fcmp d24, d25
    b.mi L3a46a7dc0ea4_1
L3a46a7dc0ea4_2:
    mov x9, #0
    str x9, [sp, #112]
    mov x9, #0
    str x9, [sp, #120]
    adrp x14, _lb_text_0399d31a0beb@PAGE
    add x14, x14, _lb_text_0399d31a0beb@PAGEOFF
    adrp x15, _lb_text_0e7c4b27304c@PAGE
    add x15, x15, _lb_text_0e7c4b27304c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #208
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    ldr d10, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3a46a7dc0ea4_1:
    ldr d9, L3a46a7dc0ea4_k2
    str d9, [sp, #88]
    str d9, [sp, #96]
    str d9, [sp, #104]
    sub x9, x29, #232
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #168
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d10, d1
    fmov d25, d2
    fmov d24, #5.0000000
    str d24, [sp, #160]
    str d9, [sp, #64]
    str d9, [sp, #72]
    str d9, [sp, #80]
    sub x9, x29, #256
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #168
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fcmp d25, d10
    b.mi L3a46a7dc0ea4_4
L3a46a7dc0ea4_5:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_9f76e0b62db0@PAGE
    add x14, x14, _lb_text_9f76e0b62db0@PAGEOFF
    adrp x15, _lb_text_dd6c2e3e1053@PAGE
    add x15, x15, _lb_text_dd6c2e3e1053@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #272
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    ldr d10, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3a46a7dc0ea4_4:
    str d8, [sp, #160]
    movz x9, #1
    str x9, [sp, #168]
    str d9, [sp, #24]
    str d9, [sp, #32]
    str d9, [sp, #40]
    sub x9, x29, #296
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #168
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fcmp d25, d10
    b.mi L3a46a7dc0ea4_7
L3a46a7dc0ea4_8:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_e586cf0e4af5@PAGE
    add x14, x14, _lb_text_e586cf0e4af5@PAGEOFF
    adrp x15, _lb_text_cfe0843bbd43@PAGE
    add x15, x15, _lb_text_cfe0843bbd43@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #312
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    ldr d10, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3a46a7dc0ea4_7:
    mov x0, #0
    ldr d8, [sp, #312]
    ldr d9, [sp, #304]
    ldr d10, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3a46a7dc0ea4_k0:
    .quad 4595653203753948938
L3a46a7dc0ea4_k1:
    .quad 4581421828931458171
L3a46a7dc0ea4_k2:
    .quad 4586646004499207946


    .p2align 2
    .globl _lb_10film_paper_printed
_lb_10film_paper_printed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #32896
    sub sp, sp, x16
    sub x16, x29, #8
    str x19, [x16]
    sub x16, x29, #16
    str x20, [x16]
    sub x16, x29, #24
    str x21, [x16]
    sub x16, x29, #32
    str x22, [x16]
    sub x16, x29, #40
    str x23, [x16]
    sub x16, x29, #48
    str x24, [x16]
    sub x16, x29, #56
    str x25, [x16]
    sub x16, x29, #64
    str x26, [x16]
    sub x16, x29, #72
    str x27, [x16]
    sub x16, x29, #80
    str x28, [x16]
    sub x16, x29, #88
    str d8, [x16]
    sub x16, x29, #96
    str d9, [x16]
    sub x16, x29, #104
    str d10, [x16]
    sub x16, x29, #112
    str d11, [x16]
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    mov x19, x0
    ldr x14, [x19]
    mov x0, x14
    movz x16, #16512
    sub x8, x29, x16
    bl _lb_11film_stocks_8paper_at
    movz x16, #16512
    sub x10, x29, x16
    movz x16, #32872
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    ldr x14, [sp, #40]
    cmp x14, #1
    b.ne L3b0bbc5e7e36_2
L3b0bbc5e7e36_1:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_10film_paper_11color_model
    mov x20, x0
    movz x16, #32896
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr d24, [x19, #56]
    ldr d25, L3b0bbc5e7e36_k0
    fdiv d24, d24, d25
    ldr d26, [x19, #48]
    fdiv d26, d26, d25
    ldr d27, [x19, #40]
    fdiv d25, d27, d25
    str d24, [sp, #32736]
    str d26, [sp, #32744]
    str d25, [sp, #32752]
    adrp x21, _lb_10film_paper_14negative_gamma@PAGE
    add x21, x21, _lb_10film_paper_14negative_gamma@PAGEOFF
    ldr d8, L3b0bbc5e7e36_k1
    ldr d9, L3b0bbc5e7e36_k2
    movz x10, #28896
    add x22, x20, x10
    fmov x23, d8
    and x14, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w24, hi
    fmov d10, xzr
    fcmp d8, d10
    cset w25, eq
    mov x26, #0
L3b0bbc5e7e36_4:
    cmp x26, #3
    b.hs L3b0bbc5e7e36_7
    .p2align 4
L3b0bbc5e7e36_5:
    ldr d11, [x21]
    lsl x27, x26, #3
    sub x10, x29, #136
    ldr d24, [x10, x27]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L3b0bbc5e7e36_40
L3b0bbc5e7e36_39:
    b L3b0bbc5e7e36_60
L3b0bbc5e7e36_40:
L3b0bbc5e7e36_41:
L3b0bbc5e7e36_59:
    cbz w24, L3b0bbc5e7e36_44
L3b0bbc5e7e36_43:
    fmov d24, d8
    b L3b0bbc5e7e36_60
L3b0bbc5e7e36_44:
L3b0bbc5e7e36_45:
    fcmp d24, d10
    b.ne L3b0bbc5e7e36_48
L3b0bbc5e7e36_50:
    cbz w25, L3b0bbc5e7e36_48
L3b0bbc5e7e36_47:
    and x14, x14, x23
    fmov d24, x14
    b L3b0bbc5e7e36_60
L3b0bbc5e7e36_48:
L3b0bbc5e7e36_49:
    fcmp d24, d8
    fcsel d24, d24, d8, gt
L3b0bbc5e7e36_60:
    fdiv d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fmul d24, d11, d24
    ldr d25, [x22, x27]
    movz x16, #32896
    sub x9, x29, x16
    add x28, x9, x27
    sub x10, x29, #160
    ldr d26, [x10, x27]
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    mov x0, x19
    bl _lb_10film_paper_exposure
    fmov d24, d0
    fmov d0, d24
    mov x0, x20
    mov x1, x26
    bl _lb_10film_print_PrintModel_amount
    fmov d24, d0
    str d24, [x28]
    add x26, x26, #1
    cmp x26, #3
    b.lo L3b0bbc5e7e36_5
L3b0bbc5e7e36_7:
    fmov d8, xzr
    movz x16, #32896
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, x20
    bl _lb_10film_print_seen
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr x14, [x19, #24]
    scvtf d27, x14
    fmov d28, #2.0000000
    fcmp d8, d28
    b.hi L3b0bbc5e7e36_62
L3b0bbc5e7e36_61:
    fmov x14, d27
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3b0bbc5e7e36_64
L3b0bbc5e7e36_63:
    b L3b0bbc5e7e36_76
L3b0bbc5e7e36_64:
L3b0bbc5e7e36_65:
    fcmp d27, d8
    cset w14, mi
    fcmp d27, d28
    fcsel d27, d28, d27, gt
    cmp w14, #0
    fcsel d27, d8, d27, ne
L3b0bbc5e7e36_76:
    fcvtzu x14, d27
    adrp x15, _lb_10film_paper_18surface_reflection@PAGE
    add x15, x15, _lb_10film_paper_18surface_reflection@PAGEOFF
    movz x10, #3
    cmp x14, x10
    b.hs L3b0bbc5e7e36_c1
    ldr d27, [x15, x14, lsl #3]
    adrp x14, _lb_10film_paper_13viewing_flare@PAGE
    add x14, x14, _lb_10film_paper_13viewing_flare@PAGEOFF
    ldr d28, [x14]
    fadd d27, d27, d28
    ldr d28, L3b0bbc5e7e36_k3
    fmul d28, d28, d27
    fadd d24, d28, d24
    fmov d28, #1.0000000
    fadd d28, d28, d27
    fdiv d24, d24, d28
    fadd d25, d25, d27
    fdiv d25, d25, d28
    ldr d29, L3b0bbc5e7e36_k4
    fmul d27, d29, d27
    fadd d26, d27, d26
    fdiv d26, d26, d28
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr x24, [x16]
    sub x16, x29, #56
    ldr x25, [x16]
    sub x16, x29, #64
    ldr x26, [x16]
    sub x16, x29, #72
    ldr x27, [x16]
    sub x16, x29, #80
    ldr x28, [x16]
    sub x16, x29, #88
    ldr d8, [x16]
    sub x16, x29, #96
    ldr d9, [x16]
    sub x16, x29, #104
    ldr d10, [x16]
    sub x16, x29, #112
    ldr d11, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3b0bbc5e7e36_2:
L3b0bbc5e7e36_3:
    ldr d24, L3b0bbc5e7e36_k5
    ldr d25, [sp, #32760]
    fmul d24, d24, d25
    ldr d25, L3b0bbc5e7e36_k6
    ldr d26, [x29, #-128]
    fmul d25, d25, d26
    fadd d24, d24, d25
    ldr d25, L3b0bbc5e7e36_k7
    ldr d26, [x29, #-120]
    fmul d25, d25, d26
    fadd d24, d24, d25
    adrp x14, _lb_10film_paper_14negative_gamma@PAGE
    add x14, x14, _lb_10film_paper_14negative_gamma@PAGEOFF
    ldr d8, [x14]
    ldr d25, L3b0bbc5e7e36_k1
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L3b0bbc5e7e36_78
L3b0bbc5e7e36_77:
    b L3b0bbc5e7e36_98
L3b0bbc5e7e36_78:
L3b0bbc5e7e36_79:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L3b0bbc5e7e36_82
L3b0bbc5e7e36_81:
    fmov d24, d25
    b L3b0bbc5e7e36_98
L3b0bbc5e7e36_82:
L3b0bbc5e7e36_83:
    fmov d26, xzr
    fcmp d24, d26
    b.ne L3b0bbc5e7e36_86
L3b0bbc5e7e36_88:
    fcmp d25, d26
    b.ne L3b0bbc5e7e36_86
L3b0bbc5e7e36_85:
    and x14, x14, x15
    fmov d24, x14
    b L3b0bbc5e7e36_98
L3b0bbc5e7e36_86:
L3b0bbc5e7e36_87:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
L3b0bbc5e7e36_98:
    ldr d25, L3b0bbc5e7e36_k2
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fmul d8, d8, d24
    ldr x14, [sp, #72]
    mov x20, #0
    mov x15, #0
L3b0bbc5e7e36_9:
    cmp x15, x14
    b.hs L3b0bbc5e7e36_12
    .p2align 4
L3b0bbc5e7e36_10:
    movz x10, #16
    cmp x15, x10
    b.hs L3b0bbc5e7e36_c2
    movz x16, #32816
    sub x10, x29, x16
    ldr d24, [x10, x15, lsl #3]
    ldr d25, [x19, #8]
    fcmp d24, d25
    csel x20, x15, x20, ls
    add x15, x15, #1
    cmp x15, x14
    b.lo L3b0bbc5e7e36_10
L3b0bbc5e7e36_12:
    adds x15, x20, #1
    b.cs L3b0bbc5e7e36_c3
    cmp x15, x14
    csel x21, x15, x20, lo
    movz x10, #16
    cmp x21, x10
    b.hs L3b0bbc5e7e36_c4
    movz x16, #32816
    sub x10, x29, x16
    ldr d24, [x10, x21, lsl #3]
    movz x10, #16
    cmp x20, x10
    b.hs L3b0bbc5e7e36_c5
    movz x16, #32816
    sub x10, x29, x16
    ldr d25, [x10, x20, lsl #3]
    fsub d24, d24, d25
    fmov d9, xzr
    fcmp d24, d9
    b.le L3b0bbc5e7e36_20
L3b0bbc5e7e36_19:
    ldr d26, [x19, #8]
    fsub d25, d26, d25
    fdiv d24, d25, d24
    fmov d25, #1.0000000
    fcmp d9, d25
    b.hi L3b0bbc5e7e36_100
L3b0bbc5e7e36_99:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3b0bbc5e7e36_102
L3b0bbc5e7e36_101:
    b L3b0bbc5e7e36_114
L3b0bbc5e7e36_102:
L3b0bbc5e7e36_103:
    fcmp d24, d9
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d9, d24, ne
L3b0bbc5e7e36_114:
    fmov d10, d24
    b L3b0bbc5e7e36_21
L3b0bbc5e7e36_20:
    fmov d10, d9
L3b0bbc5e7e36_21:
    mov x1, x20
    movz x16, #32872
    sub x0, x29, x16
    bl _lb_10film_paper_13grey_exposure
    fmov d24, d0
    fmov d0, d8
    fmov d1, d24
    fmov d2, d9
    mov x0, x19
    bl _lb_10film_paper_exposure
    fmov d24, d0
    fmov d0, d24
    mov x1, x20
    movz x16, #32872
    sub x0, x29, x16
    bl _lb_10film_paper_density
    fmov d11, d0
    mov x1, x21
    movz x16, #32872
    sub x0, x29, x16
    bl _lb_10film_paper_13grey_exposure
    fmov d24, d0
    fmov d0, d8
    fmov d1, d24
    fmov d2, d9
    mov x0, x19
    bl _lb_10film_paper_exposure
    fmov d24, d0
    fmov d0, d24
    mov x1, x21
    movz x16, #32872
    sub x0, x29, x16
    bl _lb_10film_paper_density
    fmov d24, d0
    fmov d25, #10.0000000
    fmov d8, #1.0000000
    fsub d26, d8, d10
    fmul d26, d11, d26
    fmul d24, d24, d10
    fadd d24, d26, d24
    fneg d24, d24
    fmov d0, d25
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr x14, [x19, #24]
    scvtf d25, x14
    fmov d26, #2.0000000
    fcmp d9, d26
    b.hi L3b0bbc5e7e36_116
L3b0bbc5e7e36_115:
    fmov x14, d25
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3b0bbc5e7e36_118
L3b0bbc5e7e36_117:
    b L3b0bbc5e7e36_130
L3b0bbc5e7e36_118:
L3b0bbc5e7e36_119:
    fcmp d25, d9
    cset w14, mi
    fcmp d25, d26
    fcsel d25, d26, d25, gt
    cmp w14, #0
    fcsel d25, d9, d25, ne
L3b0bbc5e7e36_130:
    fcvtzu x14, d25
    adrp x15, _lb_10film_paper_18surface_reflection@PAGE
    add x15, x15, _lb_10film_paper_18surface_reflection@PAGEOFF
    movz x10, #3
    cmp x14, x10
    b.hs L3b0bbc5e7e36_c6
    ldr d25, [x15, x14, lsl #3]
    adrp x14, _lb_10film_paper_13viewing_flare@PAGE
    add x14, x14, _lb_10film_paper_13viewing_flare@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fadd d24, d24, d25
    fadd d25, d8, d25
    fdiv d24, d24, d25
    ldr d25, L3b0bbc5e7e36_k3
    fmul d25, d25, d24
    ldr d26, L3b0bbc5e7e36_k4
    fmul d26, d26, d24
    fmov d0, d25
    fmov d1, d24
    fmov d2, d26
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr x24, [x16]
    sub x16, x29, #56
    ldr x25, [x16]
    sub x16, x29, #64
    ldr x26, [x16]
    sub x16, x29, #72
    ldr x27, [x16]
    sub x16, x29, #80
    ldr x28, [x16]
    sub x16, x29, #88
    ldr d8, [x16]
    sub x16, x29, #96
    ldr d9, [x16]
    sub x16, x29, #104
    ldr d10, [x16]
    sub x16, x29, #112
    ldr d11, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3b0bbc5e7e36_62:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_100:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_116:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c1:
    adrp x0, _lb_text_d062303bb767@PAGE
    add x0, x0, _lb_text_d062303bb767@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c2:
    adrp x0, _lb_text_e6aeab36f4c8@PAGE
    add x0, x0, _lb_text_e6aeab36f4c8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c3:
    adrp x0, _lb_text_f75d12cadfdb@PAGE
    add x0, x0, _lb_text_f75d12cadfdb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c4:
    adrp x0, _lb_text_4e3520c44df0@PAGE
    add x0, x0, _lb_text_4e3520c44df0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c5:
    adrp x0, _lb_text_4e3520c44df0@PAGE
    add x0, x0, _lb_text_4e3520c44df0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3b0bbc5e7e36_c6:
    adrp x0, _lb_text_d062303bb767@PAGE
    add x0, x0, _lb_text_d062303bb767@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L3b0bbc5e7e36_k0:
    .quad 4636737291354636288
L3b0bbc5e7e36_k1:
    .quad 4517329193108106637
L3b0bbc5e7e36_k2:
    .quad 4595653203753948938
L3b0bbc5e7e36_k3:
    .quad 4606736292220930087
L3b0bbc5e7e36_k4:
    .quad 4607582473554916729
L3b0bbc5e7e36_k5:
    .quad 4598575656511668913
L3b0bbc5e7e36_k6:
    .quad 4604246808325626108
L3b0bbc5e7e36_k7:
    .quad 4587898295875951293


    .p2align 2
    .globl _lb_11film_stocks_8paper_at
_lb_11film_stocks_8paper_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #49104
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #16
    str x19, [x16]
    mov x19, x0
    movz x16, #16376
    sub x0, x29, x16
    mov x1, #0
    movz x2, #16360
    bl _memset
    cmp x19, #5
    b.hs Lf4bd44528d42_7
    adr x10, Lf4bd44528d42_jt0
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
Lf4bd44528d42_jt0:
    .long Lf4bd44528d42_2 - Lf4bd44528d42_jt0
    .long Lf4bd44528d42_3 - Lf4bd44528d42_jt0
    .long Lf4bd44528d42_4 - Lf4bd44528d42_jt0
    .long Lf4bd44528d42_5 - Lf4bd44528d42_jt0
    .long Lf4bd44528d42_6 - Lf4bd44528d42_jt0
Lf4bd44528d42_2:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_23ilford_multigrade_iv_rc
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    b Lf4bd44528d42_1
Lf4bd44528d42_3:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_19kodak_polymax_ii_rc
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    b Lf4bd44528d42_1
Lf4bd44528d42_4:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_24kodak_polycontrast_iv_rc
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    b Lf4bd44528d42_1
Lf4bd44528d42_5:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_20kodak_endura_premier
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    b Lf4bd44528d42_1
Lf4bd44528d42_6:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_19kodak_portra_endura
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    b Lf4bd44528d42_1
Lf4bd44528d42_7:
    movz x16, #32736
    sub x8, x29, x16
    bl _lb_11film_stocks_18kodak_supra_endura
    movz x16, #32736
    sub x10, x29, x16
    movz x16, #16376
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
Lf4bd44528d42_1:
    movz x16, #16376
    sub x10, x29, x16
    movz x16, #49096
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    movz x16, #49096
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #16360
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_paper_11color_model
_lb_10film_paper_11color_model:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #37056
    sub sp, sp, x16
    sub x16, x29, #8
    str x19, [x16]
    sub x16, x29, #16
    str x20, [x16]
    sub x16, x29, #24
    str x21, [x16]
    sub x16, x29, #32
    str x22, [x16]
    sub x16, x29, #40
    str d8, [x16]
    mov x19, x0
    adrp x20, _lb_10film_paper_11models_lock@PAGE
    add x20, x20, _lb_10film_paper_11models_lock@PAGEOFF
    mov x0, x20
    bl _lb_sync_Mutex_lock
    adrp x14, _lb_10film_paper_models@PAGE
    add x14, x14, _lb_10film_paper_models@PAGEOFF
    movz x10, #16
    cmp x19, x10
    b.hs Lcc50eec0c713_c1
    add x21, x14, x19, lsl #3
    ldr x22, [x21]
    cbz x22, Lcc50eec0c713_2
Lcc50eec0c713_4:
    mov x0, x20
    bl _lb_sync_Mutex_unlock
    mov x0, x22
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcc50eec0c713_2:
Lcc50eec0c713_3:
    mov x0, x19
    movz x16, #16400
    sub x8, x29, x16
    bl _lb_11film_stocks_8paper_at
    movz x16, #16400
    sub x10, x29, x16
    movz x16, #32760
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    ldr d24, [sp, #4320]
    ldr d25, [sp, #4328]
    ldr x14, [sp, #4336]
    subs x14, x14, #1
    b.cc Lcc50eec0c713_c2
    ucvtf d26, x14
    fmul d25, d25, d26
    fadd d8, d24, d25
    movz x16, #32760
    sub x0, x29, x16
    movz x16, #37048
    sub x8, x29, x16
    bl _lb_10film_paper_8as_print
    ldr d24, Lcc50eec0c713_k0
    ldr d25, [sp, #4320]
    adrp x14, _lb_10film_paper_12grey_density@PAGE
    add x14, x14, _lb_10film_paper_12grey_density@PAGEOFF
    ldr d26, [x14]
    fmov d27, xzr
    fmov d0, d24
    fmov d1, d25
    fmov d2, d8
    fmov d3, d26
    fmov d4, d27
    movz x16, #37048
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_10film_print_make
    mov x19, x0
    str x19, [x21]
    mov x0, x20
    bl _lb_sync_Mutex_unlock
    mov x0, x19
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcc50eec0c713_c1:
    adrp x0, _lb_text_f988d9ab0486@PAGE
    add x0, x0, _lb_text_f988d9ab0486@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcc50eec0c713_c2:
    adrp x0, _lb_text_64d50a9c5f3b@PAGE
    add x0, x0, _lb_text_64d50a9c5f3b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lcc50eec0c713_k0:
    .quad 4662219572839972864


    .p2align 2
    .globl _lb_10film_paper_exposure
_lb_10film_paper_exposure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str d8, [sp, #24]
    str d9, [sp, #16]
    str d10, [sp, #8]
    str d11, [sp, #0]
    fmov d24, d0
    fmov d8, d1
    fmov d25, d2
    mov x14, x0
    ldr x15, [x14, #16]
    cmp x15, #1
    cset w12, eq
    cbnz w12, L6f29ba45113c_4
L6f29ba45113c_13:
    b L6f29ba45113c_5
L6f29ba45113c_4:
    ldrb w12, [x14, #64]
L6f29ba45113c_5:
    and w12, w12, #255
    cbz w12, L6f29ba45113c_2
L6f29ba45113c_1:
    adrp x12, _lb_10film_paper_callier@PAGE
    add x12, x12, _lb_10film_paper_callier@PAGEOFF
    ldr d26, [x12]
    b L6f29ba45113c_3
L6f29ba45113c_2:
    fmov d26, #1.0000000
L6f29ba45113c_3:
    scvtf d27, x15
    fmov d28, xzr
    fmov d29, #2.0000000
    fcmp d28, d29
    b.hi L6f29ba45113c_15
L6f29ba45113c_14:
    fmov x15, d27
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L6f29ba45113c_17
L6f29ba45113c_16:
    b L6f29ba45113c_29
L6f29ba45113c_17:
L6f29ba45113c_18:
    fcmp d27, d28
    cset w15, mi
    fcmp d27, d29
    fcsel d27, d29, d27, gt
    cmp w15, #0
    fcsel d27, d28, d27, ne
L6f29ba45113c_29:
    fcvtzu x15, d27
    adrp x12, _lb_10film_paper_flares@PAGE
    add x12, x12, _lb_10film_paper_flares@PAGEOFF
    movz x10, #3
    cmp x15, x10
    b.hs L6f29ba45113c_c1
    ldr d9, [x12, x15, lsl #3]
    fmul d24, d24, d26
    fsub d24, d8, d24
    ldr d26, [x14, #32]
    ldr d27, L6f29ba45113c_k0
    fmul d26, d26, d27
    fadd d24, d24, d26
    fsub d24, d24, d25
    fmov d10, #10.0000000
    fmov d0, d10
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmov d25, #1.0000000
    fsub d25, d25, d9
    fmul d11, d25, d24
    fmov d0, d10
    fmov d1, d8
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d9, d24
    fadd d24, d24, d11
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6f29ba45113c_15:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L6f29ba45113c_c1:
    adrp x0, _lb_text_5deebcc3e78b@PAGE
    add x0, x0, _lb_text_5deebcc3e78b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L6f29ba45113c_k0:
    .quad 4599094494301215282


    .p2align 2
    .globl _lb_10film_paper_13grey_exposure
_lb_10film_paper_13grey_exposure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    str d8, [sp, #16]
    str d9, [sp, #8]
    mov x19, x0
    mov x20, x1
    ldr x21, [x19, #40]
    ldr d24, [x19, #24]
    fmov d0, d24
    mov x0, x19
    mov x1, x20
    bl _lb_10film_paper_density
    fmov d24, d0
    adrp x22, _lb_10film_paper_12grey_density@PAGE
    add x22, x22, _lb_10film_paper_12grey_density@PAGEOFF
    fmov d8, d24
    movz x23, #1
L8e67a296bcbd_1:
    cmp x23, x21
    b.hs L8e67a296bcbd_4
    .p2align 4
L8e67a296bcbd_2:
    ldr d24, [x19, #24]
    ldr d25, [x19, #32]
    ucvtf d26, x23
    fmul d25, d25, d26
    fadd d9, d24, d25
    fmov d0, d9
    mov x0, x19
    mov x1, x20
    bl _lb_10film_paper_density
    fmov d24, d0
    ldr d25, [x22]
    fcmp d24, d25
    b.lt L8e67a296bcbd_6
L8e67a296bcbd_5:
    fsub d25, d25, d8
    fsub d24, d24, d8
    ldr d26, L8e67a296bcbd_k0
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8e67a296bcbd_11
L8e67a296bcbd_10:
    b L8e67a296bcbd_31
L8e67a296bcbd_11:
L8e67a296bcbd_12:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8e67a296bcbd_15
L8e67a296bcbd_14:
    fmov d24, d26
    b L8e67a296bcbd_31
L8e67a296bcbd_15:
L8e67a296bcbd_16:
    fmov d27, xzr
    fcmp d24, d27
    b.ne L8e67a296bcbd_19
L8e67a296bcbd_21:
    fcmp d26, d27
    b.ne L8e67a296bcbd_19
L8e67a296bcbd_18:
    and x14, x14, x15
    fmov d24, x14
    b L8e67a296bcbd_31
L8e67a296bcbd_19:
L8e67a296bcbd_20:
    fcmp d24, d26
    fcsel d24, d24, d26, gt
L8e67a296bcbd_31:
    fdiv d24, d25, d24
    ldr d25, [x19, #32]
    fmov d26, #1.0000000
    fsub d24, d26, d24
    fmul d24, d25, d24
    fsub d24, d9, d24
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr d8, [sp, #16]
    ldr d9, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8e67a296bcbd_6:
L8e67a296bcbd_7:
    add x23, x23, #1
    fmov d8, d24
    cmp x23, x21
    b.lo L8e67a296bcbd_2
L8e67a296bcbd_4:
    ldr d24, [x19, #24]
    ldr d25, [x19, #32]
    subs x14, x21, #1
    b.cc L8e67a296bcbd_c1
    ucvtf d26, x14
    fmul d25, d25, d26
    fadd d24, d24, d25
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr d8, [sp, #16]
    ldr d9, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8e67a296bcbd_c1:
    adrp x0, _lb_text_cc327f7e563b@PAGE
    add x0, x0, _lb_text_cc327f7e563b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8e67a296bcbd_k0:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_10film_paper_density
_lb_10film_paper_density:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    mov x14, x0
    mov x15, x1
    ldr x12, [x14, #40]
    movz x10, #96
    umulh x11, x15, x10
    mul x15, x15, x10
    cbnz x11, La55de01a8a58_c1
    add x13, x14, #184
    movz x10, #1536
    cmp x15, x10
    b.hs La55de01a8a58_c2
    ldr d25, [x13, x15, lsl #3]
    fmov d26, xzr
    mov x7, #0
La55de01a8a58_1:
    cmp x7, x12
    b.hs La55de01a8a58_4
    .p2align 4
La55de01a8a58_2:
    adds x6, x15, x7
    b.cs La55de01a8a58_c3
    movz x10, #1536
    cmp x6, x10
    b.hs La55de01a8a58_c4
    ldr d27, [x13, x6, lsl #3]
    fmov x6, d25
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls La55de01a8a58_9
La55de01a8a58_8:
    b La55de01a8a58_29
La55de01a8a58_9:
La55de01a8a58_10:
    fmov x5, d27
    and x4, x5, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x4, x10
    b.ls La55de01a8a58_13
La55de01a8a58_12:
    fmov d25, d27
    b La55de01a8a58_29
La55de01a8a58_13:
La55de01a8a58_14:
    fcmp d25, d26
    b.ne La55de01a8a58_17
La55de01a8a58_19:
    fcmp d27, d26
    b.ne La55de01a8a58_17
La55de01a8a58_16:
    orr x6, x6, x5
    fmov d25, x6
    b La55de01a8a58_29
La55de01a8a58_17:
La55de01a8a58_18:
    fcmp d25, d27
    fcsel d25, d25, d27, mi
La55de01a8a58_29:
    add x7, x7, #1
    cmp x7, x12
    b.lo La55de01a8a58_2
La55de01a8a58_4:
    ldr d26, [x14, #24]
    fsub d24, d24, d26
    ldr d26, [x14, #32]
    fdiv d24, d24, d26
    fmov d26, xzr
    subs x14, x12, #1
    b.cc La55de01a8a58_c5
    ucvtf d27, x14
    fcmp d26, d27
    b.hi La55de01a8a58_31
La55de01a8a58_30:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls La55de01a8a58_33
La55de01a8a58_32:
    b La55de01a8a58_45
La55de01a8a58_33:
La55de01a8a58_34:
    fcmp d24, d26
    cset w14, mi
    fcmp d24, d27
    fcsel d24, d27, d24, gt
    cmp w14, #0
    fcsel d24, d26, d24, ne
La55de01a8a58_45:
    frintm d27, d24
    subs x14, x12, #2
    b.cc La55de01a8a58_c6
    ucvtf d28, x14
    fmov x14, d27
    and x12, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls La55de01a8a58_47
La55de01a8a58_46:
    b La55de01a8a58_67
La55de01a8a58_47:
La55de01a8a58_48:
    fmov x12, d28
    and x7, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls La55de01a8a58_51
La55de01a8a58_50:
    fmov d27, d28
    b La55de01a8a58_67
La55de01a8a58_51:
La55de01a8a58_52:
    fcmp d26, d27
    b.ne La55de01a8a58_55
La55de01a8a58_57:
    fcmp d26, d28
    b.ne La55de01a8a58_55
La55de01a8a58_54:
    orr x14, x14, x12
    fmov d27, x14
    b La55de01a8a58_67
La55de01a8a58_55:
La55de01a8a58_56:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
La55de01a8a58_67:
    fcvtzu x14, d27
    ucvtf d26, x14
    fsub d24, d24, d26
    adds x14, x14, x15
    b.cs La55de01a8a58_c7
    movz x10, #1536
    cmp x14, x10
    b.hs La55de01a8a58_c8
    add x15, x13, x14, lsl #3
    ldr d26, [x15]
    fmov d27, #1.0000000
    fsub d27, d27, d24
    fmul d26, d26, d27
    add x14, x14, #1
    movz x10, #1536
    cmp x14, x10
    b.hs La55de01a8a58_c9
    ldr d27, [x15, #8]
    fmul d24, d24, d27
    fadd d24, d26, d24
    fsub d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La55de01a8a58_31:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c1:
    adrp x0, _lb_text_c75da5a5e4a9@PAGE
    add x0, x0, _lb_text_c75da5a5e4a9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c2:
    adrp x0, _lb_text_4fa582dbd0ea@PAGE
    add x0, x0, _lb_text_4fa582dbd0ea@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c3:
    adrp x0, _lb_text_d50ef2d5ac31@PAGE
    add x0, x0, _lb_text_d50ef2d5ac31@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c4:
    adrp x0, _lb_text_d50ef2d5ac31@PAGE
    add x0, x0, _lb_text_d50ef2d5ac31@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c5:
    adrp x0, _lb_text_7076c878c048@PAGE
    add x0, x0, _lb_text_7076c878c048@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c6:
    adrp x0, _lb_text_272fc45d69e3@PAGE
    add x0, x0, _lb_text_272fc45d69e3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c7:
    adrp x0, _lb_text_f617bf4cc10b@PAGE
    add x0, x0, _lb_text_f617bf4cc10b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c8:
    adrp x0, _lb_text_f617bf4cc10b@PAGE
    add x0, x0, _lb_text_f617bf4cc10b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La55de01a8a58_c9:
    adrp x0, _lb_text_f617bf4cc10b@PAGE
    add x0, x0, _lb_text_f617bf4cc10b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_11film_stocks_23ilford_multigrade_iv_rc
_lb_11film_stocks_23ilford_multigrade_iv_rc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #45040
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #16
    str d8, [x16]
    sub x16, x29, #24
    str d9, [x16]
    movz x16, #16384
    sub x0, x29, x16
    mov x1, #0
    movz x2, #16360
    bl _memset
    adrp x14, _lb_text_1f754459d9e4@PAGE
    add x14, x14, _lb_text_1f754459d9e4@PAGEOFF
    str x14, [sp, #28656]
    movz x9, #23
    str x9, [sp, #28664]
    mov x9, #0
    str x9, [sp, #28672]
    fmov d24, #1.5000000
    str d24, [sp, #28680]
    ldr d24, Lae64d000f20a_k0
    str d24, [sp, #28688]
    movz x9, #59
    str x9, [sp, #28696]
    movz x9, #7
    str x9, [sp, #28704]
    fmov d8, #1.0000000
    fmov d24, #-1.0000000
    str d24, [sp, #28528]
    fmov d9, xzr
    str d9, [sp, #28536]
    str d8, [sp, #28544]
    fmov d24, #2.0000000
    str d24, [sp, #28552]
    fmov d24, #3.0000000
    str d24, [sp, #28560]
    fmov d24, #4.0000000
    str d24, [sp, #28568]
    fmov d24, #5.0000000
    str d24, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #16512
    sub x10, x29, x16
    movz x16, #16328
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x11, #96]
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x11, #112]
    ldr d24, Lae64d000f20a_k1
    str d24, [sp, #16368]
    str d24, [sp, #16376]
    ldr d25, Lae64d000f20a_k2
    str d25, [sp, #16384]
    ldr d25, Lae64d000f20a_k3
    str d25, [sp, #16392]
    ldr d25, Lae64d000f20a_k4
    str d25, [sp, #16400]
    ldr d25, Lae64d000f20a_k5
    str d25, [sp, #16408]
    ldr d25, Lae64d000f20a_k6
    str d25, [sp, #16416]
    ldr d25, Lae64d000f20a_k7
    str d25, [sp, #16424]
    ldr d25, Lae64d000f20a_k8
    str d25, [sp, #16432]
    ldr d25, Lae64d000f20a_k9
    str d25, [sp, #16440]
    ldr d25, Lae64d000f20a_k10
    str d25, [sp, #16448]
    ldr d25, Lae64d000f20a_k11
    str d25, [sp, #16456]
    ldr d25, Lae64d000f20a_k12
    str d25, [sp, #16464]
    ldr d25, Lae64d000f20a_k13
    str d25, [sp, #16472]
    ldr d25, Lae64d000f20a_k14
    str d25, [sp, #16480]
    ldr d25, Lae64d000f20a_k15
    str d25, [sp, #16488]
    ldr d25, Lae64d000f20a_k16
    str d25, [sp, #16496]
    ldr d25, Lae64d000f20a_k17
    str d25, [sp, #16504]
    ldr d25, Lae64d000f20a_k18
    str d25, [sp, #16512]
    ldr d25, Lae64d000f20a_k19
    str d25, [sp, #16520]
    ldr d25, Lae64d000f20a_k20
    str d25, [sp, #16528]
    ldr d25, Lae64d000f20a_k21
    str d25, [sp, #16536]
    ldr d25, Lae64d000f20a_k22
    str d25, [sp, #16544]
    ldr d25, Lae64d000f20a_k23
    str d25, [sp, #16552]
    ldr d25, Lae64d000f20a_k24
    str d25, [sp, #16560]
    ldr d25, Lae64d000f20a_k25
    str d25, [sp, #16568]
    ldr d25, Lae64d000f20a_k26
    str d25, [sp, #16576]
    ldr d25, Lae64d000f20a_k27
    str d25, [sp, #16584]
    ldr d25, Lae64d000f20a_k28
    str d25, [sp, #16592]
    ldr d25, Lae64d000f20a_k29
    str d25, [sp, #16600]
    ldr d25, Lae64d000f20a_k30
    str d25, [sp, #16608]
    ldr d25, Lae64d000f20a_k31
    str d25, [sp, #16616]
    ldr d25, Lae64d000f20a_k32
    str d25, [sp, #16624]
    ldr d25, Lae64d000f20a_k33
    str d25, [sp, #16632]
    ldr d25, Lae64d000f20a_k34
    str d25, [sp, #16640]
    ldr d25, Lae64d000f20a_k35
    str d25, [sp, #16648]
    ldr d25, Lae64d000f20a_k36
    str d25, [sp, #16656]
    ldr d25, Lae64d000f20a_k37
    str d25, [sp, #16664]
    ldr d25, Lae64d000f20a_k38
    str d25, [sp, #16672]
    ldr d25, Lae64d000f20a_k39
    str d25, [sp, #16680]
    ldr d25, Lae64d000f20a_k40
    str d25, [sp, #16688]
    ldr d25, Lae64d000f20a_k41
    str d25, [sp, #16696]
    ldr d25, Lae64d000f20a_k42
    str d25, [sp, #16704]
    ldr d25, Lae64d000f20a_k43
    str d25, [sp, #16712]
    ldr d25, Lae64d000f20a_k44
    str d25, [sp, #16720]
    ldr d25, Lae64d000f20a_k45
    str d25, [sp, #16728]
    ldr d25, Lae64d000f20a_k46
    str d25, [sp, #16736]
    ldr d25, Lae64d000f20a_k47
    str d25, [sp, #16744]
    ldr d25, Lae64d000f20a_k48
    str d25, [sp, #16752]
    ldr d25, Lae64d000f20a_k49
    str d25, [sp, #16760]
    ldr d25, Lae64d000f20a_k50
    str d25, [sp, #16768]
    ldr d25, Lae64d000f20a_k51
    str d25, [sp, #16776]
    ldr d25, Lae64d000f20a_k52
    str d25, [sp, #16784]
    ldr d25, Lae64d000f20a_k53
    str d25, [sp, #16792]
    ldr d25, Lae64d000f20a_k54
    str d25, [sp, #16800]
    ldr d25, Lae64d000f20a_k55
    str d25, [sp, #16808]
    ldr d26, Lae64d000f20a_k56
    str d26, [sp, #16816]
    ldr d26, Lae64d000f20a_k57
    str d26, [sp, #16824]
    str d26, [sp, #16832]
    str d26, [sp, #16840]
    str d26, [sp, #16848]
    str d26, [sp, #16856]
    str d26, [sp, #16864]
    str d26, [sp, #16872]
    str d26, [sp, #16880]
    str d26, [sp, #16888]
    str d26, [sp, #16896]
    str d26, [sp, #16904]
    str d26, [sp, #16912]
    str d26, [sp, #16920]
    str d26, [sp, #16928]
    str d26, [sp, #16936]
    str d26, [sp, #16944]
    str d26, [sp, #16952]
    str d26, [sp, #16960]
    str d26, [sp, #16968]
    str d26, [sp, #16976]
    str d26, [sp, #16984]
    str d26, [sp, #16992]
    str d26, [sp, #17000]
    str d26, [sp, #17008]
    str d26, [sp, #17016]
    str d26, [sp, #17024]
    str d26, [sp, #17032]
    str d26, [sp, #17040]
    str d26, [sp, #17048]
    str d26, [sp, #17056]
    str d26, [sp, #17064]
    str d26, [sp, #17072]
    str d26, [sp, #17080]
    str d26, [sp, #17088]
    str d26, [sp, #17096]
    str d26, [sp, #17104]
    str d26, [sp, #17112]
    str d26, [sp, #17120]
    str d26, [sp, #17128]
    str d24, [sp, #17136]
    str d24, [sp, #17144]
    str d24, [sp, #17152]
    ldr d26, Lae64d000f20a_k58
    str d26, [sp, #17160]
    ldr d26, Lae64d000f20a_k59
    str d26, [sp, #17168]
    ldr d26, Lae64d000f20a_k60
    str d26, [sp, #17176]
    ldr d26, Lae64d000f20a_k61
    str d26, [sp, #17184]
    ldr d26, Lae64d000f20a_k62
    str d26, [sp, #17192]
    ldr d26, Lae64d000f20a_k63
    str d26, [sp, #17200]
    ldr d26, Lae64d000f20a_k64
    str d26, [sp, #17208]
    ldr d26, Lae64d000f20a_k65
    str d26, [sp, #17216]
    ldr d26, Lae64d000f20a_k66
    str d26, [sp, #17224]
    ldr d26, Lae64d000f20a_k67
    str d26, [sp, #17232]
    ldr d26, Lae64d000f20a_k68
    str d26, [sp, #17240]
    ldr d26, Lae64d000f20a_k69
    str d26, [sp, #17248]
    ldr d26, Lae64d000f20a_k70
    str d26, [sp, #17256]
    ldr d26, Lae64d000f20a_k71
    str d26, [sp, #17264]
    ldr d26, Lae64d000f20a_k72
    str d26, [sp, #17272]
    ldr d26, Lae64d000f20a_k73
    str d26, [sp, #17280]
    ldr d26, Lae64d000f20a_k74
    str d26, [sp, #17288]
    ldr d26, Lae64d000f20a_k75
    str d26, [sp, #17296]
    ldr d26, Lae64d000f20a_k76
    str d26, [sp, #17304]
    ldr d26, Lae64d000f20a_k77
    str d26, [sp, #17312]
    ldr d26, Lae64d000f20a_k78
    str d26, [sp, #17320]
    ldr d26, Lae64d000f20a_k79
    str d26, [sp, #17328]
    ldr d26, Lae64d000f20a_k80
    str d26, [sp, #17336]
    ldr d26, Lae64d000f20a_k81
    str d26, [sp, #17344]
    ldr d26, Lae64d000f20a_k82
    str d26, [sp, #17352]
    ldr d26, Lae64d000f20a_k83
    str d26, [sp, #17360]
    ldr d26, Lae64d000f20a_k84
    str d26, [sp, #17368]
    ldr d26, Lae64d000f20a_k85
    str d26, [sp, #17376]
    ldr d26, Lae64d000f20a_k86
    str d26, [sp, #17384]
    ldr d26, Lae64d000f20a_k87
    str d26, [sp, #17392]
    ldr d26, Lae64d000f20a_k88
    str d26, [sp, #17400]
    ldr d26, Lae64d000f20a_k89
    str d26, [sp, #17408]
    ldr d26, Lae64d000f20a_k90
    str d26, [sp, #17416]
    ldr d26, Lae64d000f20a_k91
    str d26, [sp, #17424]
    ldr d26, Lae64d000f20a_k92
    str d26, [sp, #17432]
    ldr d26, Lae64d000f20a_k93
    str d26, [sp, #17440]
    ldr d26, Lae64d000f20a_k94
    str d26, [sp, #17448]
    ldr d26, Lae64d000f20a_k95
    str d26, [sp, #17456]
    ldr d26, Lae64d000f20a_k96
    str d26, [sp, #17464]
    ldr d26, Lae64d000f20a_k97
    str d26, [sp, #17472]
    ldr d27, Lae64d000f20a_k98
    str d27, [sp, #17480]
    ldr d28, Lae64d000f20a_k99
    str d28, [sp, #17488]
    str d28, [sp, #17496]
    str d28, [sp, #17504]
    str d28, [sp, #17512]
    str d28, [sp, #17520]
    str d28, [sp, #17528]
    str d28, [sp, #17536]
    str d28, [sp, #17544]
    str d28, [sp, #17552]
    str d28, [sp, #17560]
    str d28, [sp, #17568]
    str d28, [sp, #17576]
    str d28, [sp, #17584]
    str d28, [sp, #17592]
    str d28, [sp, #17600]
    str d28, [sp, #17608]
    str d28, [sp, #17616]
    str d28, [sp, #17624]
    str d28, [sp, #17632]
    str d28, [sp, #17640]
    str d28, [sp, #17648]
    str d28, [sp, #17656]
    str d28, [sp, #17664]
    str d28, [sp, #17672]
    str d28, [sp, #17680]
    str d28, [sp, #17688]
    str d28, [sp, #17696]
    str d28, [sp, #17704]
    str d28, [sp, #17712]
    str d28, [sp, #17720]
    str d28, [sp, #17728]
    str d28, [sp, #17736]
    str d28, [sp, #17744]
    str d28, [sp, #17752]
    str d28, [sp, #17760]
    str d28, [sp, #17768]
    str d28, [sp, #17776]
    str d28, [sp, #17784]
    str d28, [sp, #17792]
    str d28, [sp, #17800]
    str d28, [sp, #17808]
    str d28, [sp, #17816]
    str d28, [sp, #17824]
    str d28, [sp, #17832]
    str d28, [sp, #17840]
    str d28, [sp, #17848]
    str d28, [sp, #17856]
    str d28, [sp, #17864]
    str d28, [sp, #17872]
    str d28, [sp, #17880]
    str d28, [sp, #17888]
    str d28, [sp, #17896]
    str d24, [sp, #17904]
    str d24, [sp, #17912]
    str d24, [sp, #17920]
    str d24, [sp, #17928]
    ldr d29, Lae64d000f20a_k100
    str d29, [sp, #17936]
    ldr d29, Lae64d000f20a_k101
    str d29, [sp, #17944]
    ldr d29, Lae64d000f20a_k102
    str d29, [sp, #17952]
    ldr d29, Lae64d000f20a_k103
    str d29, [sp, #17960]
    ldr d29, Lae64d000f20a_k104
    str d29, [sp, #17968]
    ldr d29, Lae64d000f20a_k105
    str d29, [sp, #17976]
    ldr d29, Lae64d000f20a_k106
    str d29, [sp, #17984]
    ldr d29, Lae64d000f20a_k107
    str d29, [sp, #17992]
    ldr d29, Lae64d000f20a_k108
    str d29, [sp, #18000]
    ldr d29, Lae64d000f20a_k109
    str d29, [sp, #18008]
    ldr d29, Lae64d000f20a_k110
    str d29, [sp, #18016]
    ldr d29, Lae64d000f20a_k111
    str d29, [sp, #18024]
    ldr d29, Lae64d000f20a_k112
    str d29, [sp, #18032]
    ldr d29, Lae64d000f20a_k113
    str d29, [sp, #18040]
    ldr d29, Lae64d000f20a_k114
    str d29, [sp, #18048]
    ldr d29, Lae64d000f20a_k115
    str d29, [sp, #18056]
    ldr d29, Lae64d000f20a_k116
    str d29, [sp, #18064]
    ldr d29, Lae64d000f20a_k117
    str d29, [sp, #18072]
    ldr d29, Lae64d000f20a_k118
    str d29, [sp, #18080]
    ldr d29, Lae64d000f20a_k119
    str d29, [sp, #18088]
    ldr d29, Lae64d000f20a_k120
    str d29, [sp, #18096]
    ldr d29, Lae64d000f20a_k121
    str d29, [sp, #18104]
    ldr d29, Lae64d000f20a_k122
    str d29, [sp, #18112]
    ldr d29, Lae64d000f20a_k123
    str d29, [sp, #18120]
    ldr d29, Lae64d000f20a_k124
    str d29, [sp, #18128]
    ldr d29, Lae64d000f20a_k125
    str d29, [sp, #18136]
    ldr d29, Lae64d000f20a_k126
    str d29, [sp, #18144]
    ldr d29, Lae64d000f20a_k127
    str d29, [sp, #18152]
    ldr d29, Lae64d000f20a_k128
    str d29, [sp, #18160]
    ldr d29, Lae64d000f20a_k129
    str d29, [sp, #18168]
    ldr d29, Lae64d000f20a_k130
    str d29, [sp, #18176]
    ldr d29, Lae64d000f20a_k131
    str d29, [sp, #18184]
    ldr d29, Lae64d000f20a_k132
    str d29, [sp, #18192]
    ldr d29, Lae64d000f20a_k133
    str d29, [sp, #18200]
    ldr d29, Lae64d000f20a_k134
    str d29, [sp, #18208]
    ldr d29, Lae64d000f20a_k135
    str d29, [sp, #18216]
    ldr d29, Lae64d000f20a_k136
    str d29, [sp, #18224]
    ldr d29, Lae64d000f20a_k137
    str d29, [sp, #18232]
    str d29, [sp, #18240]
    str d29, [sp, #18248]
    str d29, [sp, #18256]
    str d29, [sp, #18264]
    str d29, [sp, #18272]
    str d29, [sp, #18280]
    str d29, [sp, #18288]
    str d29, [sp, #18296]
    str d29, [sp, #18304]
    str d29, [sp, #18312]
    str d29, [sp, #18320]
    str d29, [sp, #18328]
    str d29, [sp, #18336]
    str d29, [sp, #18344]
    str d29, [sp, #18352]
    str d29, [sp, #18360]
    str d29, [sp, #18368]
    str d29, [sp, #18376]
    str d29, [sp, #18384]
    str d29, [sp, #18392]
    str d29, [sp, #18400]
    str d29, [sp, #18408]
    str d29, [sp, #18416]
    str d29, [sp, #18424]
    str d29, [sp, #18432]
    str d29, [sp, #18440]
    str d29, [sp, #18448]
    str d29, [sp, #18456]
    str d29, [sp, #18464]
    str d29, [sp, #18472]
    str d29, [sp, #18480]
    str d29, [sp, #18488]
    str d29, [sp, #18496]
    str d29, [sp, #18504]
    str d29, [sp, #18512]
    str d29, [sp, #18520]
    str d29, [sp, #18528]
    str d29, [sp, #18536]
    str d29, [sp, #18544]
    str d29, [sp, #18552]
    str d29, [sp, #18560]
    str d29, [sp, #18568]
    str d29, [sp, #18576]
    str d29, [sp, #18584]
    str d29, [sp, #18592]
    str d29, [sp, #18600]
    str d29, [sp, #18608]
    str d29, [sp, #18616]
    str d29, [sp, #18624]
    str d29, [sp, #18632]
    str d29, [sp, #18640]
    str d29, [sp, #18648]
    str d29, [sp, #18656]
    str d29, [sp, #18664]
    str d24, [sp, #18672]
    str d24, [sp, #18680]
    str d24, [sp, #18688]
    str d24, [sp, #18696]
    ldr d30, Lae64d000f20a_k138
    str d30, [sp, #18704]
    ldr d30, Lae64d000f20a_k139
    str d30, [sp, #18712]
    ldr d30, Lae64d000f20a_k140
    str d30, [sp, #18720]
    ldr d30, Lae64d000f20a_k141
    str d30, [sp, #18728]
    ldr d30, Lae64d000f20a_k142
    str d30, [sp, #18736]
    ldr d30, Lae64d000f20a_k143
    str d30, [sp, #18744]
    ldr d30, Lae64d000f20a_k144
    str d30, [sp, #18752]
    ldr d30, Lae64d000f20a_k145
    str d30, [sp, #18760]
    ldr d30, Lae64d000f20a_k146
    str d30, [sp, #18768]
    ldr d30, Lae64d000f20a_k147
    str d30, [sp, #18776]
    ldr d30, Lae64d000f20a_k148
    str d30, [sp, #18784]
    ldr d30, Lae64d000f20a_k149
    str d30, [sp, #18792]
    ldr d30, Lae64d000f20a_k150
    str d30, [sp, #18800]
    ldr d30, Lae64d000f20a_k151
    str d30, [sp, #18808]
    ldr d30, Lae64d000f20a_k152
    str d30, [sp, #18816]
    ldr d30, Lae64d000f20a_k153
    str d30, [sp, #18824]
    ldr d30, Lae64d000f20a_k154
    str d30, [sp, #18832]
    ldr d30, Lae64d000f20a_k155
    str d30, [sp, #18840]
    ldr d30, Lae64d000f20a_k156
    str d30, [sp, #18848]
    ldr d30, Lae64d000f20a_k157
    str d30, [sp, #18856]
    ldr d30, Lae64d000f20a_k158
    str d30, [sp, #18864]
    ldr d30, Lae64d000f20a_k159
    str d30, [sp, #18872]
    ldr d30, Lae64d000f20a_k160
    str d30, [sp, #18880]
    ldr d30, Lae64d000f20a_k161
    str d30, [sp, #18888]
    ldr d30, Lae64d000f20a_k162
    str d30, [sp, #18896]
    ldr d30, Lae64d000f20a_k163
    str d30, [sp, #18904]
    ldr d30, Lae64d000f20a_k164
    str d30, [sp, #18912]
    ldr d30, Lae64d000f20a_k165
    str d30, [sp, #18920]
    ldr d30, Lae64d000f20a_k166
    str d30, [sp, #18928]
    ldr d30, Lae64d000f20a_k167
    str d30, [sp, #18936]
    ldr d30, Lae64d000f20a_k168
    str d30, [sp, #18944]
    ldr d30, Lae64d000f20a_k169
    str d30, [sp, #18952]
    str d27, [sp, #18960]
    ldr d27, Lae64d000f20a_k170
    str d27, [sp, #18968]
    ldr d30, Lae64d000f20a_k171
    str d30, [sp, #18976]
    str d30, [sp, #18984]
    str d30, [sp, #18992]
    str d30, [sp, #19000]
    str d30, [sp, #19008]
    str d30, [sp, #19016]
    str d30, [sp, #19024]
    str d30, [sp, #19032]
    str d30, [sp, #19040]
    str d30, [sp, #19048]
    str d30, [sp, #19056]
    str d30, [sp, #19064]
    str d30, [sp, #19072]
    str d30, [sp, #19080]
    str d30, [sp, #19088]
    str d30, [sp, #19096]
    str d30, [sp, #19104]
    str d30, [sp, #19112]
    str d30, [sp, #19120]
    str d30, [sp, #19128]
    str d30, [sp, #19136]
    str d30, [sp, #19144]
    str d30, [sp, #19152]
    str d30, [sp, #19160]
    str d30, [sp, #19168]
    str d30, [sp, #19176]
    str d30, [sp, #19184]
    str d30, [sp, #19192]
    str d30, [sp, #19200]
    str d30, [sp, #19208]
    str d30, [sp, #19216]
    str d30, [sp, #19224]
    str d30, [sp, #19232]
    str d30, [sp, #19240]
    str d30, [sp, #19248]
    str d30, [sp, #19256]
    str d30, [sp, #19264]
    str d30, [sp, #19272]
    str d30, [sp, #19280]
    str d30, [sp, #19288]
    str d30, [sp, #19296]
    str d30, [sp, #19304]
    str d30, [sp, #19312]
    str d30, [sp, #19320]
    str d30, [sp, #19328]
    str d30, [sp, #19336]
    str d30, [sp, #19344]
    str d30, [sp, #19352]
    str d30, [sp, #19360]
    str d30, [sp, #19368]
    str d30, [sp, #19376]
    str d30, [sp, #19384]
    str d30, [sp, #19392]
    str d30, [sp, #19400]
    str d30, [sp, #19408]
    str d30, [sp, #19416]
    str d30, [sp, #19424]
    str d30, [sp, #19432]
    str d24, [sp, #19440]
    str d24, [sp, #19448]
    str d24, [sp, #19456]
    str d24, [sp, #19464]
    str d24, [sp, #19472]
    ldr d24, Lae64d000f20a_k172
    str d24, [sp, #19480]
    ldr d24, Lae64d000f20a_k173
    str d24, [sp, #19488]
    ldr d24, Lae64d000f20a_k174
    str d24, [sp, #19496]
    ldr d24, Lae64d000f20a_k175
    str d24, [sp, #19504]
    ldr d24, Lae64d000f20a_k176
    str d24, [sp, #19512]
    ldr d24, Lae64d000f20a_k177
    str d24, [sp, #19520]
    ldr d24, Lae64d000f20a_k178
    str d24, [sp, #19528]
    ldr d24, Lae64d000f20a_k179
    str d24, [sp, #19536]
    ldr d24, Lae64d000f20a_k180
    str d24, [sp, #19544]
    ldr d24, Lae64d000f20a_k181
    str d24, [sp, #19552]
    ldr d24, Lae64d000f20a_k182
    str d24, [sp, #19560]
    ldr d24, Lae64d000f20a_k183
    str d24, [sp, #19568]
    ldr d24, Lae64d000f20a_k184
    str d24, [sp, #19576]
    ldr d24, Lae64d000f20a_k185
    str d24, [sp, #19584]
    ldr d24, Lae64d000f20a_k186
    str d24, [sp, #19592]
    ldr d24, Lae64d000f20a_k187
    str d24, [sp, #19600]
    ldr d24, Lae64d000f20a_k188
    str d24, [sp, #19608]
    ldr d24, Lae64d000f20a_k189
    str d24, [sp, #19616]
    ldr d24, Lae64d000f20a_k190
    str d24, [sp, #19624]
    ldr d24, Lae64d000f20a_k191
    str d24, [sp, #19632]
    ldr d24, Lae64d000f20a_k192
    str d24, [sp, #19640]
    ldr d24, Lae64d000f20a_k193
    str d24, [sp, #19648]
    ldr d24, Lae64d000f20a_k194
    str d24, [sp, #19656]
    ldr d24, Lae64d000f20a_k195
    str d24, [sp, #19664]
    ldr d24, Lae64d000f20a_k196
    str d24, [sp, #19672]
    ldr d24, Lae64d000f20a_k197
    str d24, [sp, #19680]
    ldr d24, Lae64d000f20a_k198
    str d24, [sp, #19688]
    ldr d24, Lae64d000f20a_k199
    str d24, [sp, #19696]
    ldr d24, Lae64d000f20a_k200
    str d24, [sp, #19704]
    str d27, [sp, #19712]
    str d30, [sp, #19720]
    str d30, [sp, #19728]
    str d30, [sp, #19736]
    str d30, [sp, #19744]
    str d30, [sp, #19752]
    str d30, [sp, #19760]
    str d30, [sp, #19768]
    str d30, [sp, #19776]
    str d30, [sp, #19784]
    str d30, [sp, #19792]
    str d30, [sp, #19800]
    str d30, [sp, #19808]
    str d30, [sp, #19816]
    str d30, [sp, #19824]
    str d30, [sp, #19832]
    str d30, [sp, #19840]
    str d30, [sp, #19848]
    str d30, [sp, #19856]
    str d30, [sp, #19864]
    str d30, [sp, #19872]
    str d30, [sp, #19880]
    str d30, [sp, #19888]
    str d30, [sp, #19896]
    str d30, [sp, #19904]
    str d30, [sp, #19912]
    str d30, [sp, #19920]
    str d30, [sp, #19928]
    str d30, [sp, #19936]
    str d30, [sp, #19944]
    str d30, [sp, #19952]
    str d30, [sp, #19960]
    str d30, [sp, #19968]
    str d30, [sp, #19976]
    str d30, [sp, #19984]
    str d30, [sp, #19992]
    str d30, [sp, #20000]
    str d30, [sp, #20008]
    str d30, [sp, #20016]
    str d30, [sp, #20024]
    str d30, [sp, #20032]
    str d30, [sp, #20040]
    str d30, [sp, #20048]
    str d30, [sp, #20056]
    str d30, [sp, #20064]
    str d30, [sp, #20072]
    str d30, [sp, #20080]
    str d30, [sp, #20088]
    str d30, [sp, #20096]
    str d30, [sp, #20104]
    str d30, [sp, #20112]
    str d30, [sp, #20120]
    str d30, [sp, #20128]
    str d30, [sp, #20136]
    str d30, [sp, #20144]
    str d30, [sp, #20152]
    str d30, [sp, #20160]
    str d30, [sp, #20168]
    str d30, [sp, #20176]
    str d30, [sp, #20184]
    str d30, [sp, #20192]
    str d30, [sp, #20200]
    ldr d27, Lae64d000f20a_k201
    str d27, [sp, #20208]
    str d27, [sp, #20216]
    str d27, [sp, #20224]
    str d27, [sp, #20232]
    str d27, [sp, #20240]
    str d27, [sp, #20248]
    str d27, [sp, #20256]
    str d27, [sp, #20264]
    str d27, [sp, #20272]
    str d27, [sp, #20280]
    str d27, [sp, #20288]
    str d27, [sp, #20296]
    str d27, [sp, #20304]
    ldr d30, Lae64d000f20a_k202
    str d30, [sp, #20312]
    ldr d30, Lae64d000f20a_k203
    str d30, [sp, #20320]
    ldr d30, Lae64d000f20a_k204
    str d30, [sp, #20328]
    ldr d30, Lae64d000f20a_k205
    str d30, [sp, #20336]
    ldr d30, Lae64d000f20a_k206
    str d30, [sp, #20344]
    ldr d30, Lae64d000f20a_k207
    str d30, [sp, #20352]
    ldr d30, Lae64d000f20a_k208
    str d30, [sp, #20360]
    ldr d30, Lae64d000f20a_k209
    str d30, [sp, #20368]
    ldr d30, Lae64d000f20a_k210
    str d30, [sp, #20376]
    ldr d30, Lae64d000f20a_k211
    str d30, [sp, #20384]
    ldr d30, Lae64d000f20a_k212
    str d30, [sp, #20392]
    ldr d30, Lae64d000f20a_k213
    str d30, [sp, #20400]
    ldr d30, Lae64d000f20a_k214
    str d30, [sp, #20408]
    ldr d30, Lae64d000f20a_k215
    str d30, [sp, #20416]
    ldr d30, Lae64d000f20a_k216
    str d30, [sp, #20424]
    ldr d30, Lae64d000f20a_k217
    str d30, [sp, #20432]
    ldr d30, Lae64d000f20a_k218
    str d30, [sp, #20440]
    ldr d30, Lae64d000f20a_k219
    str d30, [sp, #20448]
    ldr d30, Lae64d000f20a_k220
    str d30, [sp, #20456]
    ldr d30, Lae64d000f20a_k221
    str d30, [sp, #20464]
    ldr d30, Lae64d000f20a_k222
    str d30, [sp, #20472]
    ldr d30, Lae64d000f20a_k223
    str d30, [sp, #20480]
    ldr d30, Lae64d000f20a_k224
    str d30, [sp, #20488]
    str d24, [sp, #20496]
    ldr d24, Lae64d000f20a_k225
    str d24, [sp, #20504]
    str d24, [sp, #20512]
    str d24, [sp, #20520]
    str d24, [sp, #20528]
    str d24, [sp, #20536]
    str d24, [sp, #20544]
    str d24, [sp, #20552]
    str d24, [sp, #20560]
    str d24, [sp, #20568]
    str d24, [sp, #20576]
    str d24, [sp, #20584]
    str d24, [sp, #20592]
    str d24, [sp, #20600]
    str d24, [sp, #20608]
    str d24, [sp, #20616]
    str d24, [sp, #20624]
    str d24, [sp, #20632]
    str d24, [sp, #20640]
    str d24, [sp, #20648]
    str d24, [sp, #20656]
    str d24, [sp, #20664]
    str d24, [sp, #20672]
    str d24, [sp, #20680]
    str d24, [sp, #20688]
    str d24, [sp, #20696]
    str d24, [sp, #20704]
    str d24, [sp, #20712]
    str d24, [sp, #20720]
    str d24, [sp, #20728]
    str d24, [sp, #20736]
    str d24, [sp, #20744]
    str d24, [sp, #20752]
    str d24, [sp, #20760]
    str d24, [sp, #20768]
    str d24, [sp, #20776]
    str d24, [sp, #20784]
    str d24, [sp, #20792]
    str d24, [sp, #20800]
    str d24, [sp, #20808]
    str d24, [sp, #20816]
    str d24, [sp, #20824]
    str d24, [sp, #20832]
    str d24, [sp, #20840]
    str d24, [sp, #20848]
    str d24, [sp, #20856]
    str d24, [sp, #20864]
    str d24, [sp, #20872]
    str d24, [sp, #20880]
    str d24, [sp, #20888]
    str d24, [sp, #20896]
    str d24, [sp, #20904]
    str d24, [sp, #20912]
    str d24, [sp, #20920]
    str d24, [sp, #20928]
    str d24, [sp, #20936]
    str d24, [sp, #20944]
    str d24, [sp, #20952]
    str d24, [sp, #20960]
    str d24, [sp, #20968]
    str d27, [sp, #20976]
    str d27, [sp, #20984]
    str d27, [sp, #20992]
    str d27, [sp, #21000]
    str d27, [sp, #21008]
    str d27, [sp, #21016]
    str d27, [sp, #21024]
    str d27, [sp, #21032]
    str d27, [sp, #21040]
    str d27, [sp, #21048]
    str d27, [sp, #21056]
    str d27, [sp, #21064]
    str d27, [sp, #21072]
    str d27, [sp, #21080]
    str d27, [sp, #21088]
    str d27, [sp, #21096]
    str d27, [sp, #21104]
    ldr d24, Lae64d000f20a_k226
    str d24, [sp, #21112]
    ldr d24, Lae64d000f20a_k227
    str d24, [sp, #21120]
    ldr d24, Lae64d000f20a_k228
    str d24, [sp, #21128]
    ldr d24, Lae64d000f20a_k229
    str d24, [sp, #21136]
    ldr d24, Lae64d000f20a_k230
    str d24, [sp, #21144]
    ldr d24, Lae64d000f20a_k231
    str d24, [sp, #21152]
    ldr d24, Lae64d000f20a_k232
    str d24, [sp, #21160]
    ldr d24, Lae64d000f20a_k233
    str d24, [sp, #21168]
    ldr d24, Lae64d000f20a_k234
    str d24, [sp, #21176]
    ldr d24, Lae64d000f20a_k235
    str d24, [sp, #21184]
    ldr d24, Lae64d000f20a_k236
    str d24, [sp, #21192]
    ldr d24, Lae64d000f20a_k237
    str d24, [sp, #21200]
    ldr d24, Lae64d000f20a_k238
    str d24, [sp, #21208]
    ldr d24, Lae64d000f20a_k239
    str d24, [sp, #21216]
    ldr d24, Lae64d000f20a_k240
    str d24, [sp, #21224]
    ldr d24, Lae64d000f20a_k241
    str d24, [sp, #21232]
    ldr d24, Lae64d000f20a_k242
    str d24, [sp, #21240]
    str d26, [sp, #21248]
    str d25, [sp, #21256]
    str d29, [sp, #21264]
    str d28, [sp, #21272]
    str d28, [sp, #21280]
    str d28, [sp, #21288]
    str d28, [sp, #21296]
    str d28, [sp, #21304]
    str d28, [sp, #21312]
    str d28, [sp, #21320]
    str d28, [sp, #21328]
    str d28, [sp, #21336]
    str d28, [sp, #21344]
    str d28, [sp, #21352]
    str d28, [sp, #21360]
    str d28, [sp, #21368]
    str d28, [sp, #21376]
    str d28, [sp, #21384]
    str d28, [sp, #21392]
    str d28, [sp, #21400]
    str d28, [sp, #21408]
    str d28, [sp, #21416]
    str d28, [sp, #21424]
    str d28, [sp, #21432]
    str d28, [sp, #21440]
    str d28, [sp, #21448]
    str d28, [sp, #21456]
    str d28, [sp, #21464]
    str d28, [sp, #21472]
    str d28, [sp, #21480]
    str d28, [sp, #21488]
    str d28, [sp, #21496]
    str d28, [sp, #21504]
    str d28, [sp, #21512]
    str d28, [sp, #21520]
    str d28, [sp, #21528]
    str d28, [sp, #21536]
    str d28, [sp, #21544]
    str d28, [sp, #21552]
    str d28, [sp, #21560]
    str d28, [sp, #21568]
    str d28, [sp, #21576]
    str d28, [sp, #21584]
    str d28, [sp, #21592]
    str d28, [sp, #21600]
    str d28, [sp, #21608]
    str d28, [sp, #21616]
    str d28, [sp, #21624]
    str d28, [sp, #21632]
    str d28, [sp, #21640]
    str d28, [sp, #21648]
    str d28, [sp, #21656]
    str d28, [sp, #21664]
    str d28, [sp, #21672]
    str d28, [sp, #21680]
    str d28, [sp, #21688]
    str d28, [sp, #21696]
    str d28, [sp, #21704]
    str d28, [sp, #21712]
    str d28, [sp, #21720]
    str d28, [sp, #21728]
    str d28, [sp, #21736]
    str d9, [sp, #21744]
    str d9, [sp, #21752]
    str d9, [sp, #21760]
    str d9, [sp, #21768]
    str d9, [sp, #21776]
    str d9, [sp, #21784]
    str d9, [sp, #21792]
    str d9, [sp, #21800]
    str d9, [sp, #21808]
    str d9, [sp, #21816]
    str d9, [sp, #21824]
    str d9, [sp, #21832]
    str d9, [sp, #21840]
    str d9, [sp, #21848]
    str d9, [sp, #21856]
    str d9, [sp, #21864]
    str d9, [sp, #21872]
    str d9, [sp, #21880]
    str d9, [sp, #21888]
    str d9, [sp, #21896]
    str d9, [sp, #21904]
    str d9, [sp, #21912]
    str d9, [sp, #21920]
    str d9, [sp, #21928]
    str d9, [sp, #21936]
    str d9, [sp, #21944]
    str d9, [sp, #21952]
    str d9, [sp, #21960]
    str d9, [sp, #21968]
    str d9, [sp, #21976]
    str d9, [sp, #21984]
    str d9, [sp, #21992]
    str d9, [sp, #22000]
    str d9, [sp, #22008]
    str d9, [sp, #22016]
    str d9, [sp, #22024]
    str d9, [sp, #22032]
    str d9, [sp, #22040]
    str d9, [sp, #22048]
    str d9, [sp, #22056]
    str d9, [sp, #22064]
    str d9, [sp, #22072]
    str d9, [sp, #22080]
    str d9, [sp, #22088]
    str d9, [sp, #22096]
    str d9, [sp, #22104]
    str d9, [sp, #22112]
    str d9, [sp, #22120]
    str d9, [sp, #22128]
    str d9, [sp, #22136]
    str d9, [sp, #22144]
    str d9, [sp, #22152]
    str d9, [sp, #22160]
    str d9, [sp, #22168]
    str d9, [sp, #22176]
    str d9, [sp, #22184]
    str d9, [sp, #22192]
    str d9, [sp, #22200]
    str d9, [sp, #22208]
    str d9, [sp, #22216]
    str d9, [sp, #22224]
    str d9, [sp, #22232]
    str d9, [sp, #22240]
    str d9, [sp, #22248]
    str d9, [sp, #22256]
    str d9, [sp, #22264]
    str d9, [sp, #22272]
    str d9, [sp, #22280]
    str d9, [sp, #22288]
    str d9, [sp, #22296]
    str d9, [sp, #22304]
    str d9, [sp, #22312]
    str d9, [sp, #22320]
    str d9, [sp, #22328]
    str d9, [sp, #22336]
    str d9, [sp, #22344]
    str d9, [sp, #22352]
    str d9, [sp, #22360]
    str d9, [sp, #22368]
    str d9, [sp, #22376]
    str d9, [sp, #22384]
    str d9, [sp, #22392]
    str d9, [sp, #22400]
    str d9, [sp, #22408]
    str d9, [sp, #22416]
    str d9, [sp, #22424]
    str d9, [sp, #22432]
    str d9, [sp, #22440]
    str d9, [sp, #22448]
    str d9, [sp, #22456]
    str d9, [sp, #22464]
    str d9, [sp, #22472]
    str d9, [sp, #22480]
    str d9, [sp, #22488]
    str d9, [sp, #22496]
    str d9, [sp, #22504]
    str d9, [sp, #22512]
    str d9, [sp, #22520]
    str d9, [sp, #22528]
    str d9, [sp, #22536]
    str d9, [sp, #22544]
    str d9, [sp, #22552]
    str d9, [sp, #22560]
    str d9, [sp, #22568]
    str d9, [sp, #22576]
    str d9, [sp, #22584]
    str d9, [sp, #22592]
    str d9, [sp, #22600]
    str d9, [sp, #22608]
    str d9, [sp, #22616]
    str d9, [sp, #22624]
    str d9, [sp, #22632]
    str d9, [sp, #22640]
    str d9, [sp, #22648]
    str d9, [sp, #22656]
    str d9, [sp, #22664]
    str d9, [sp, #22672]
    str d9, [sp, #22680]
    str d9, [sp, #22688]
    str d9, [sp, #22696]
    str d9, [sp, #22704]
    str d9, [sp, #22712]
    str d9, [sp, #22720]
    str d9, [sp, #22728]
    str d9, [sp, #22736]
    str d9, [sp, #22744]
    str d9, [sp, #22752]
    str d9, [sp, #22760]
    str d9, [sp, #22768]
    str d9, [sp, #22776]
    str d9, [sp, #22784]
    str d9, [sp, #22792]
    str d9, [sp, #22800]
    str d9, [sp, #22808]
    str d9, [sp, #22816]
    str d9, [sp, #22824]
    str d9, [sp, #22832]
    str d9, [sp, #22840]
    str d9, [sp, #22848]
    str d9, [sp, #22856]
    str d9, [sp, #22864]
    str d9, [sp, #22872]
    str d9, [sp, #22880]
    str d9, [sp, #22888]
    str d9, [sp, #22896]
    str d9, [sp, #22904]
    str d9, [sp, #22912]
    str d9, [sp, #22920]
    str d9, [sp, #22928]
    str d9, [sp, #22936]
    str d9, [sp, #22944]
    str d9, [sp, #22952]
    str d9, [sp, #22960]
    str d9, [sp, #22968]
    str d9, [sp, #22976]
    str d9, [sp, #22984]
    str d9, [sp, #22992]
    str d9, [sp, #23000]
    str d9, [sp, #23008]
    str d9, [sp, #23016]
    str d9, [sp, #23024]
    str d9, [sp, #23032]
    str d9, [sp, #23040]
    str d9, [sp, #23048]
    str d9, [sp, #23056]
    str d9, [sp, #23064]
    str d9, [sp, #23072]
    str d9, [sp, #23080]
    str d9, [sp, #23088]
    str d9, [sp, #23096]
    str d9, [sp, #23104]
    str d9, [sp, #23112]
    str d9, [sp, #23120]
    str d9, [sp, #23128]
    str d9, [sp, #23136]
    str d9, [sp, #23144]
    str d9, [sp, #23152]
    str d9, [sp, #23160]
    str d9, [sp, #23168]
    str d9, [sp, #23176]
    str d9, [sp, #23184]
    str d9, [sp, #23192]
    str d9, [sp, #23200]
    str d9, [sp, #23208]
    str d9, [sp, #23216]
    str d9, [sp, #23224]
    str d9, [sp, #23232]
    str d9, [sp, #23240]
    str d9, [sp, #23248]
    str d9, [sp, #23256]
    str d9, [sp, #23264]
    str d9, [sp, #23272]
    str d9, [sp, #23280]
    str d9, [sp, #23288]
    str d9, [sp, #23296]
    str d9, [sp, #23304]
    str d9, [sp, #23312]
    str d9, [sp, #23320]
    str d9, [sp, #23328]
    str d9, [sp, #23336]
    str d9, [sp, #23344]
    str d9, [sp, #23352]
    str d9, [sp, #23360]
    str d9, [sp, #23368]
    str d9, [sp, #23376]
    str d9, [sp, #23384]
    str d9, [sp, #23392]
    str d9, [sp, #23400]
    str d9, [sp, #23408]
    str d9, [sp, #23416]
    str d9, [sp, #23424]
    str d9, [sp, #23432]
    str d9, [sp, #23440]
    str d9, [sp, #23448]
    str d9, [sp, #23456]
    str d9, [sp, #23464]
    str d9, [sp, #23472]
    str d9, [sp, #23480]
    str d9, [sp, #23488]
    str d9, [sp, #23496]
    str d9, [sp, #23504]
    str d9, [sp, #23512]
    str d9, [sp, #23520]
    str d9, [sp, #23528]
    str d9, [sp, #23536]
    str d9, [sp, #23544]
    str d9, [sp, #23552]
    str d9, [sp, #23560]
    str d9, [sp, #23568]
    str d9, [sp, #23576]
    str d9, [sp, #23584]
    str d9, [sp, #23592]
    str d9, [sp, #23600]
    str d9, [sp, #23608]
    str d9, [sp, #23616]
    str d9, [sp, #23624]
    str d9, [sp, #23632]
    str d9, [sp, #23640]
    str d9, [sp, #23648]
    str d9, [sp, #23656]
    str d9, [sp, #23664]
    str d9, [sp, #23672]
    str d9, [sp, #23680]
    str d9, [sp, #23688]
    str d9, [sp, #23696]
    str d9, [sp, #23704]
    str d9, [sp, #23712]
    str d9, [sp, #23720]
    str d9, [sp, #23728]
    str d9, [sp, #23736]
    str d9, [sp, #23744]
    str d9, [sp, #23752]
    str d9, [sp, #23760]
    str d9, [sp, #23768]
    str d9, [sp, #23776]
    str d9, [sp, #23784]
    str d9, [sp, #23792]
    str d9, [sp, #23800]
    str d9, [sp, #23808]
    str d9, [sp, #23816]
    str d9, [sp, #23824]
    str d9, [sp, #23832]
    str d9, [sp, #23840]
    str d9, [sp, #23848]
    str d9, [sp, #23856]
    str d9, [sp, #23864]
    str d9, [sp, #23872]
    str d9, [sp, #23880]
    str d9, [sp, #23888]
    str d9, [sp, #23896]
    str d9, [sp, #23904]
    str d9, [sp, #23912]
    str d9, [sp, #23920]
    str d9, [sp, #23928]
    str d9, [sp, #23936]
    str d9, [sp, #23944]
    str d9, [sp, #23952]
    str d9, [sp, #23960]
    str d9, [sp, #23968]
    str d9, [sp, #23976]
    str d9, [sp, #23984]
    str d9, [sp, #23992]
    str d9, [sp, #24000]
    str d9, [sp, #24008]
    str d9, [sp, #24016]
    str d9, [sp, #24024]
    str d9, [sp, #24032]
    str d9, [sp, #24040]
    str d9, [sp, #24048]
    str d9, [sp, #24056]
    str d9, [sp, #24064]
    str d9, [sp, #24072]
    str d9, [sp, #24080]
    str d9, [sp, #24088]
    str d9, [sp, #24096]
    str d9, [sp, #24104]
    str d9, [sp, #24112]
    str d9, [sp, #24120]
    str d9, [sp, #24128]
    str d9, [sp, #24136]
    str d9, [sp, #24144]
    str d9, [sp, #24152]
    str d9, [sp, #24160]
    str d9, [sp, #24168]
    str d9, [sp, #24176]
    str d9, [sp, #24184]
    str d9, [sp, #24192]
    str d9, [sp, #24200]
    str d9, [sp, #24208]
    str d9, [sp, #24216]
    str d9, [sp, #24224]
    str d9, [sp, #24232]
    str d9, [sp, #24240]
    str d9, [sp, #24248]
    str d9, [sp, #24256]
    str d9, [sp, #24264]
    str d9, [sp, #24272]
    str d9, [sp, #24280]
    str d9, [sp, #24288]
    str d9, [sp, #24296]
    str d9, [sp, #24304]
    str d9, [sp, #24312]
    str d9, [sp, #24320]
    str d9, [sp, #24328]
    str d9, [sp, #24336]
    str d9, [sp, #24344]
    str d9, [sp, #24352]
    str d9, [sp, #24360]
    str d9, [sp, #24368]
    str d9, [sp, #24376]
    str d9, [sp, #24384]
    str d9, [sp, #24392]
    str d9, [sp, #24400]
    str d9, [sp, #24408]
    str d9, [sp, #24416]
    str d9, [sp, #24424]
    str d9, [sp, #24432]
    str d9, [sp, #24440]
    str d9, [sp, #24448]
    str d9, [sp, #24456]
    str d9, [sp, #24464]
    str d9, [sp, #24472]
    str d9, [sp, #24480]
    str d9, [sp, #24488]
    str d9, [sp, #24496]
    str d9, [sp, #24504]
    str d9, [sp, #24512]
    str d9, [sp, #24520]
    str d9, [sp, #24528]
    str d9, [sp, #24536]
    str d9, [sp, #24544]
    str d9, [sp, #24552]
    str d9, [sp, #24560]
    str d9, [sp, #24568]
    str d9, [sp, #24576]
    str d9, [sp, #24584]
    str d9, [sp, #24592]
    str d9, [sp, #24600]
    str d9, [sp, #24608]
    str d9, [sp, #24616]
    str d9, [sp, #24624]
    str d9, [sp, #24632]
    str d9, [sp, #24640]
    str d9, [sp, #24648]
    str d9, [sp, #24656]
    str d9, [sp, #24664]
    str d9, [sp, #24672]
    str d9, [sp, #24680]
    str d9, [sp, #24688]
    str d9, [sp, #24696]
    str d9, [sp, #24704]
    str d9, [sp, #24712]
    str d9, [sp, #24720]
    str d9, [sp, #24728]
    str d9, [sp, #24736]
    str d9, [sp, #24744]
    str d9, [sp, #24752]
    str d9, [sp, #24760]
    str d9, [sp, #24768]
    str d9, [sp, #24776]
    str d9, [sp, #24784]
    str d9, [sp, #24792]
    str d9, [sp, #24800]
    str d9, [sp, #24808]
    str d9, [sp, #24816]
    str d9, [sp, #24824]
    str d9, [sp, #24832]
    str d9, [sp, #24840]
    str d9, [sp, #24848]
    str d9, [sp, #24856]
    str d9, [sp, #24864]
    str d9, [sp, #24872]
    str d9, [sp, #24880]
    str d9, [sp, #24888]
    str d9, [sp, #24896]
    str d9, [sp, #24904]
    str d9, [sp, #24912]
    str d9, [sp, #24920]
    str d9, [sp, #24928]
    str d9, [sp, #24936]
    str d9, [sp, #24944]
    str d9, [sp, #24952]
    str d9, [sp, #24960]
    str d9, [sp, #24968]
    str d9, [sp, #24976]
    str d9, [sp, #24984]
    str d9, [sp, #24992]
    str d9, [sp, #25000]
    str d9, [sp, #25008]
    str d9, [sp, #25016]
    str d9, [sp, #25024]
    str d9, [sp, #25032]
    str d9, [sp, #25040]
    str d9, [sp, #25048]
    str d9, [sp, #25056]
    str d9, [sp, #25064]
    str d9, [sp, #25072]
    str d9, [sp, #25080]
    str d9, [sp, #25088]
    str d9, [sp, #25096]
    str d9, [sp, #25104]
    str d9, [sp, #25112]
    str d9, [sp, #25120]
    str d9, [sp, #25128]
    str d9, [sp, #25136]
    str d9, [sp, #25144]
    str d9, [sp, #25152]
    str d9, [sp, #25160]
    str d9, [sp, #25168]
    str d9, [sp, #25176]
    str d9, [sp, #25184]
    str d9, [sp, #25192]
    str d9, [sp, #25200]
    str d9, [sp, #25208]
    str d9, [sp, #25216]
    str d9, [sp, #25224]
    str d9, [sp, #25232]
    str d9, [sp, #25240]
    str d9, [sp, #25248]
    str d9, [sp, #25256]
    str d9, [sp, #25264]
    str d9, [sp, #25272]
    str d9, [sp, #25280]
    str d9, [sp, #25288]
    str d9, [sp, #25296]
    str d9, [sp, #25304]
    str d9, [sp, #25312]
    str d9, [sp, #25320]
    str d9, [sp, #25328]
    str d9, [sp, #25336]
    str d9, [sp, #25344]
    str d9, [sp, #25352]
    str d9, [sp, #25360]
    str d9, [sp, #25368]
    str d9, [sp, #25376]
    str d9, [sp, #25384]
    str d9, [sp, #25392]
    str d9, [sp, #25400]
    str d9, [sp, #25408]
    str d9, [sp, #25416]
    str d9, [sp, #25424]
    str d9, [sp, #25432]
    str d9, [sp, #25440]
    str d9, [sp, #25448]
    str d9, [sp, #25456]
    str d9, [sp, #25464]
    str d9, [sp, #25472]
    str d9, [sp, #25480]
    str d9, [sp, #25488]
    str d9, [sp, #25496]
    str d9, [sp, #25504]
    str d9, [sp, #25512]
    str d9, [sp, #25520]
    str d9, [sp, #25528]
    str d9, [sp, #25536]
    str d9, [sp, #25544]
    str d9, [sp, #25552]
    str d9, [sp, #25560]
    str d9, [sp, #25568]
    str d9, [sp, #25576]
    str d9, [sp, #25584]
    str d9, [sp, #25592]
    str d9, [sp, #25600]
    str d9, [sp, #25608]
    str d9, [sp, #25616]
    str d9, [sp, #25624]
    str d9, [sp, #25632]
    str d9, [sp, #25640]
    str d9, [sp, #25648]
    str d9, [sp, #25656]
    str d9, [sp, #25664]
    str d9, [sp, #25672]
    str d9, [sp, #25680]
    str d9, [sp, #25688]
    str d9, [sp, #25696]
    str d9, [sp, #25704]
    str d9, [sp, #25712]
    str d9, [sp, #25720]
    str d9, [sp, #25728]
    str d9, [sp, #25736]
    str d9, [sp, #25744]
    str d9, [sp, #25752]
    str d9, [sp, #25760]
    str d9, [sp, #25768]
    str d9, [sp, #25776]
    str d9, [sp, #25784]
    str d9, [sp, #25792]
    str d9, [sp, #25800]
    str d9, [sp, #25808]
    str d9, [sp, #25816]
    str d9, [sp, #25824]
    str d9, [sp, #25832]
    str d9, [sp, #25840]
    str d9, [sp, #25848]
    str d9, [sp, #25856]
    str d9, [sp, #25864]
    str d9, [sp, #25872]
    str d9, [sp, #25880]
    str d9, [sp, #25888]
    str d9, [sp, #25896]
    str d9, [sp, #25904]
    str d9, [sp, #25912]
    str d9, [sp, #25920]
    str d9, [sp, #25928]
    str d9, [sp, #25936]
    str d9, [sp, #25944]
    str d9, [sp, #25952]
    str d9, [sp, #25960]
    str d9, [sp, #25968]
    str d9, [sp, #25976]
    str d9, [sp, #25984]
    str d9, [sp, #25992]
    str d9, [sp, #26000]
    str d9, [sp, #26008]
    str d9, [sp, #26016]
    str d9, [sp, #26024]
    str d9, [sp, #26032]
    str d9, [sp, #26040]
    str d9, [sp, #26048]
    str d9, [sp, #26056]
    str d9, [sp, #26064]
    str d9, [sp, #26072]
    str d9, [sp, #26080]
    str d9, [sp, #26088]
    str d9, [sp, #26096]
    str d9, [sp, #26104]
    str d9, [sp, #26112]
    str d9, [sp, #26120]
    str d9, [sp, #26128]
    str d9, [sp, #26136]
    str d9, [sp, #26144]
    str d9, [sp, #26152]
    str d9, [sp, #26160]
    str d9, [sp, #26168]
    str d9, [sp, #26176]
    str d9, [sp, #26184]
    str d9, [sp, #26192]
    str d9, [sp, #26200]
    str d9, [sp, #26208]
    str d9, [sp, #26216]
    str d9, [sp, #26224]
    str d9, [sp, #26232]
    str d9, [sp, #26240]
    str d9, [sp, #26248]
    str d9, [sp, #26256]
    str d9, [sp, #26264]
    str d9, [sp, #26272]
    str d9, [sp, #26280]
    str d9, [sp, #26288]
    str d9, [sp, #26296]
    str d9, [sp, #26304]
    str d9, [sp, #26312]
    str d9, [sp, #26320]
    str d9, [sp, #26328]
    str d9, [sp, #26336]
    str d9, [sp, #26344]
    str d9, [sp, #26352]
    str d9, [sp, #26360]
    str d9, [sp, #26368]
    str d9, [sp, #26376]
    str d9, [sp, #26384]
    str d9, [sp, #26392]
    str d9, [sp, #26400]
    str d9, [sp, #26408]
    str d9, [sp, #26416]
    str d9, [sp, #26424]
    str d9, [sp, #26432]
    str d9, [sp, #26440]
    str d9, [sp, #26448]
    str d9, [sp, #26456]
    str d9, [sp, #26464]
    str d9, [sp, #26472]
    str d9, [sp, #26480]
    str d9, [sp, #26488]
    str d9, [sp, #26496]
    str d9, [sp, #26504]
    str d9, [sp, #26512]
    str d9, [sp, #26520]
    str d9, [sp, #26528]
    str d9, [sp, #26536]
    str d9, [sp, #26544]
    str d9, [sp, #26552]
    str d9, [sp, #26560]
    str d9, [sp, #26568]
    str d9, [sp, #26576]
    str d9, [sp, #26584]
    str d9, [sp, #26592]
    str d9, [sp, #26600]
    str d9, [sp, #26608]
    str d9, [sp, #26616]
    str d9, [sp, #26624]
    str d9, [sp, #26632]
    str d9, [sp, #26640]
    str d9, [sp, #26648]
    str d9, [sp, #26656]
    str d9, [sp, #26664]
    str d9, [sp, #26672]
    str d9, [sp, #26680]
    str d9, [sp, #26688]
    str d9, [sp, #26696]
    str d9, [sp, #26704]
    str d9, [sp, #26712]
    str d9, [sp, #26720]
    str d9, [sp, #26728]
    str d9, [sp, #26736]
    str d9, [sp, #26744]
    str d9, [sp, #26752]
    str d9, [sp, #26760]
    str d9, [sp, #26768]
    str d9, [sp, #26776]
    str d9, [sp, #26784]
    str d9, [sp, #26792]
    str d9, [sp, #26800]
    str d9, [sp, #26808]
    str d9, [sp, #26816]
    str d9, [sp, #26824]
    str d9, [sp, #26832]
    str d9, [sp, #26840]
    str d9, [sp, #26848]
    str d9, [sp, #26856]
    str d9, [sp, #26864]
    str d9, [sp, #26872]
    str d9, [sp, #26880]
    str d9, [sp, #26888]
    str d9, [sp, #26896]
    str d9, [sp, #26904]
    str d9, [sp, #26912]
    str d9, [sp, #26920]
    str d9, [sp, #26928]
    str d9, [sp, #26936]
    str d9, [sp, #26944]
    str d9, [sp, #26952]
    str d9, [sp, #26960]
    str d9, [sp, #26968]
    str d9, [sp, #26976]
    str d9, [sp, #26984]
    str d9, [sp, #26992]
    str d9, [sp, #27000]
    str d9, [sp, #27008]
    str d9, [sp, #27016]
    str d9, [sp, #27024]
    str d9, [sp, #27032]
    str d9, [sp, #27040]
    str d9, [sp, #27048]
    str d9, [sp, #27056]
    str d9, [sp, #27064]
    str d9, [sp, #27072]
    str d9, [sp, #27080]
    str d9, [sp, #27088]
    str d9, [sp, #27096]
    str d9, [sp, #27104]
    str d9, [sp, #27112]
    str d9, [sp, #27120]
    str d9, [sp, #27128]
    str d9, [sp, #27136]
    str d9, [sp, #27144]
    str d9, [sp, #27152]
    str d9, [sp, #27160]
    str d9, [sp, #27168]
    str d9, [sp, #27176]
    str d9, [sp, #27184]
    str d9, [sp, #27192]
    str d9, [sp, #27200]
    str d9, [sp, #27208]
    str d9, [sp, #27216]
    str d9, [sp, #27224]
    str d9, [sp, #27232]
    str d9, [sp, #27240]
    str d9, [sp, #27248]
    str d9, [sp, #27256]
    str d9, [sp, #27264]
    str d9, [sp, #27272]
    str d9, [sp, #27280]
    str d9, [sp, #27288]
    str d9, [sp, #27296]
    str d9, [sp, #27304]
    str d9, [sp, #27312]
    str d9, [sp, #27320]
    str d9, [sp, #27328]
    str d9, [sp, #27336]
    str d9, [sp, #27344]
    str d9, [sp, #27352]
    str d9, [sp, #27360]
    str d9, [sp, #27368]
    str d9, [sp, #27376]
    str d9, [sp, #27384]
    str d9, [sp, #27392]
    str d9, [sp, #27400]
    str d9, [sp, #27408]
    str d9, [sp, #27416]
    str d9, [sp, #27424]
    str d9, [sp, #27432]
    str d9, [sp, #27440]
    str d9, [sp, #27448]
    str d9, [sp, #27456]
    str d9, [sp, #27464]
    str d9, [sp, #27472]
    str d9, [sp, #27480]
    str d9, [sp, #27488]
    str d9, [sp, #27496]
    str d9, [sp, #27504]
    str d9, [sp, #27512]
    str d9, [sp, #27520]
    str d9, [sp, #27528]
    str d9, [sp, #27536]
    str d9, [sp, #27544]
    str d9, [sp, #27552]
    str d9, [sp, #27560]
    str d9, [sp, #27568]
    str d9, [sp, #27576]
    str d9, [sp, #27584]
    str d9, [sp, #27592]
    str d9, [sp, #27600]
    str d9, [sp, #27608]
    str d9, [sp, #27616]
    str d9, [sp, #27624]
    str d9, [sp, #27632]
    str d9, [sp, #27640]
    str d9, [sp, #27648]
    str d9, [sp, #27656]
    str d9, [sp, #27664]
    str d9, [sp, #27672]
    str d9, [sp, #27680]
    str d9, [sp, #27688]
    str d9, [sp, #27696]
    str d9, [sp, #27704]
    str d9, [sp, #27712]
    str d9, [sp, #27720]
    str d9, [sp, #27728]
    str d9, [sp, #27736]
    str d9, [sp, #27744]
    str d9, [sp, #27752]
    str d9, [sp, #27760]
    str d9, [sp, #27768]
    str d9, [sp, #27776]
    str d9, [sp, #27784]
    str d9, [sp, #27792]
    str d9, [sp, #27800]
    str d9, [sp, #27808]
    str d9, [sp, #27816]
    str d9, [sp, #27824]
    str d9, [sp, #27832]
    str d9, [sp, #27840]
    str d9, [sp, #27848]
    str d9, [sp, #27856]
    str d9, [sp, #27864]
    str d9, [sp, #27872]
    str d9, [sp, #27880]
    str d9, [sp, #27888]
    str d9, [sp, #27896]
    str d9, [sp, #27904]
    str d9, [sp, #27912]
    str d9, [sp, #27920]
    str d9, [sp, #27928]
    str d9, [sp, #27936]
    str d9, [sp, #27944]
    str d9, [sp, #27952]
    str d9, [sp, #27960]
    str d9, [sp, #27968]
    str d9, [sp, #27976]
    str d9, [sp, #27984]
    str d9, [sp, #27992]
    str d9, [sp, #28000]
    str d9, [sp, #28008]
    str d9, [sp, #28016]
    str d9, [sp, #28024]
    str d9, [sp, #28032]
    str d9, [sp, #28040]
    str d9, [sp, #28048]
    str d9, [sp, #28056]
    str d9, [sp, #28064]
    str d9, [sp, #28072]
    str d9, [sp, #28080]
    str d9, [sp, #28088]
    str d9, [sp, #28096]
    str d9, [sp, #28104]
    str d9, [sp, #28112]
    str d9, [sp, #28120]
    str d9, [sp, #28128]
    str d9, [sp, #28136]
    str d9, [sp, #28144]
    str d9, [sp, #28152]
    str d9, [sp, #28160]
    str d9, [sp, #28168]
    str d9, [sp, #28176]
    str d9, [sp, #28184]
    str d9, [sp, #28192]
    str d9, [sp, #28200]
    str d9, [sp, #28208]
    str d9, [sp, #28216]
    str d9, [sp, #28224]
    str d9, [sp, #28232]
    str d9, [sp, #28240]
    str d9, [sp, #28248]
    str d9, [sp, #28256]
    str d9, [sp, #28264]
    str d9, [sp, #28272]
    str d9, [sp, #28280]
    str d9, [sp, #28288]
    str d9, [sp, #28296]
    str d9, [sp, #28304]
    str d9, [sp, #28312]
    str d9, [sp, #28320]
    str d9, [sp, #28328]
    str d9, [sp, #28336]
    str d9, [sp, #28344]
    str d9, [sp, #28352]
    str d9, [sp, #28360]
    str d9, [sp, #28368]
    str d9, [sp, #28376]
    str d9, [sp, #28384]
    str d9, [sp, #28392]
    str d9, [sp, #28400]
    str d9, [sp, #28408]
    str d9, [sp, #28416]
    str d9, [sp, #28424]
    str d9, [sp, #28432]
    str d9, [sp, #28440]
    str d9, [sp, #28448]
    str d9, [sp, #28456]
    str d9, [sp, #28464]
    str d9, [sp, #28472]
    str d9, [sp, #28480]
    str d9, [sp, #28488]
    str d9, [sp, #28496]
    str d9, [sp, #28504]
    str d9, [sp, #28512]
    str d9, [sp, #28520]
    str d9, [sp, #28528]
    str d9, [sp, #28536]
    str d9, [sp, #28544]
    str d9, [sp, #28552]
    str d9, [sp, #28560]
    str d9, [sp, #28568]
    str d9, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #28672
    sub x10, x29, x16
    movz x16, #16200
    sub x0, x29, x16
    mov x1, x10
    movz x2, #12288
    bl _memcpy
    str d8, [sp, #26712]
    str d8, [sp, #26720]
    str d8, [sp, #26728]
    str d8, [sp, #26736]
    str d8, [sp, #26744]
    str d8, [sp, #26752]
    str d8, [sp, #26760]
    str d8, [sp, #26768]
    str d8, [sp, #26776]
    str d8, [sp, #26784]
    str d8, [sp, #26792]
    str d8, [sp, #26800]
    str d8, [sp, #26808]
    str d8, [sp, #26816]
    str d8, [sp, #26824]
    str d8, [sp, #26832]
    str d8, [sp, #26840]
    str d8, [sp, #26848]
    str d8, [sp, #26856]
    str d8, [sp, #26864]
    str d8, [sp, #26872]
    str d8, [sp, #26880]
    str d8, [sp, #26888]
    str d8, [sp, #26896]
    str d8, [sp, #26904]
    str d8, [sp, #26912]
    str d8, [sp, #26920]
    str d8, [sp, #26928]
    str d8, [sp, #26936]
    str d8, [sp, #26944]
    str d8, [sp, #26952]
    str d8, [sp, #26960]
    str d8, [sp, #26968]
    str d8, [sp, #26976]
    str d8, [sp, #26984]
    str d8, [sp, #26992]
    str d8, [sp, #27000]
    str d8, [sp, #27008]
    str d8, [sp, #27016]
    str d8, [sp, #27024]
    str d8, [sp, #27032]
    str d8, [sp, #27040]
    str d8, [sp, #27048]
    str d8, [sp, #27056]
    str d8, [sp, #27064]
    str d8, [sp, #27072]
    str d8, [sp, #27080]
    str d8, [sp, #27088]
    str d8, [sp, #27096]
    str d8, [sp, #27104]
    str d8, [sp, #27112]
    str d8, [sp, #27120]
    str d8, [sp, #27128]
    str d8, [sp, #27136]
    str d8, [sp, #27144]
    str d8, [sp, #27152]
    str d8, [sp, #27160]
    str d8, [sp, #27168]
    str d8, [sp, #27176]
    str d8, [sp, #27184]
    str d8, [sp, #27192]
    str d8, [sp, #27200]
    str d8, [sp, #27208]
    str d8, [sp, #27216]
    str d8, [sp, #27224]
    str d8, [sp, #27232]
    str d8, [sp, #27240]
    str d8, [sp, #27248]
    str d8, [sp, #27256]
    str d8, [sp, #27264]
    str d8, [sp, #27272]
    str d8, [sp, #27280]
    str d8, [sp, #27288]
    str d8, [sp, #27296]
    str d8, [sp, #27304]
    str d8, [sp, #27312]
    str d8, [sp, #27320]
    str d8, [sp, #27328]
    str d8, [sp, #27336]
    str d8, [sp, #27344]
    str d8, [sp, #27352]
    str d8, [sp, #27360]
    str d8, [sp, #27368]
    str d8, [sp, #27376]
    str d8, [sp, #27384]
    str d8, [sp, #27392]
    str d8, [sp, #27400]
    str d8, [sp, #27408]
    str d8, [sp, #27416]
    str d8, [sp, #27424]
    str d8, [sp, #27432]
    str d8, [sp, #27440]
    str d8, [sp, #27448]
    str d8, [sp, #27456]
    str d8, [sp, #27464]
    str d8, [sp, #27472]
    str d8, [sp, #27480]
    str d8, [sp, #27488]
    str d8, [sp, #27496]
    str d8, [sp, #27504]
    str d8, [sp, #27512]
    str d8, [sp, #27520]
    str d8, [sp, #27528]
    str d8, [sp, #27536]
    str d8, [sp, #27544]
    str d8, [sp, #27552]
    str d8, [sp, #27560]
    str d8, [sp, #27568]
    str d8, [sp, #27576]
    str d8, [sp, #27584]
    str d8, [sp, #27592]
    str d8, [sp, #27600]
    str d8, [sp, #27608]
    str d8, [sp, #27616]
    str d8, [sp, #27624]
    str d8, [sp, #27632]
    str d8, [sp, #27640]
    str d8, [sp, #27648]
    str d8, [sp, #27656]
    str d8, [sp, #27664]
    str d8, [sp, #27672]
    str d8, [sp, #27680]
    str d8, [sp, #27688]
    str d8, [sp, #27696]
    str d8, [sp, #27704]
    str d8, [sp, #27712]
    str d8, [sp, #27720]
    str d8, [sp, #27728]
    str d8, [sp, #27736]
    str d8, [sp, #27744]
    str d8, [sp, #27752]
    str d8, [sp, #27760]
    str d8, [sp, #27768]
    str d8, [sp, #27776]
    str d8, [sp, #27784]
    str d8, [sp, #27792]
    str d8, [sp, #27800]
    str d8, [sp, #27808]
    str d8, [sp, #27816]
    str d8, [sp, #27824]
    str d8, [sp, #27832]
    str d8, [sp, #27840]
    str d8, [sp, #27848]
    str d8, [sp, #27856]
    str d8, [sp, #27864]
    str d8, [sp, #27872]
    str d8, [sp, #27880]
    str d8, [sp, #27888]
    str d8, [sp, #27896]
    str d8, [sp, #27904]
    str d8, [sp, #27912]
    str d8, [sp, #27920]
    str d8, [sp, #27928]
    str d8, [sp, #27936]
    str d8, [sp, #27944]
    str d8, [sp, #27952]
    str d8, [sp, #27960]
    str d8, [sp, #27968]
    str d8, [sp, #27976]
    str d8, [sp, #27984]
    str d8, [sp, #27992]
    str d8, [sp, #28000]
    str d8, [sp, #28008]
    str d8, [sp, #28016]
    str d8, [sp, #28024]
    str d8, [sp, #28032]
    str d8, [sp, #28040]
    str d8, [sp, #28048]
    str d8, [sp, #28056]
    str d8, [sp, #28064]
    str d8, [sp, #28072]
    str d8, [sp, #28080]
    str d8, [sp, #28088]
    str d8, [sp, #28096]
    str d8, [sp, #28104]
    str d8, [sp, #28112]
    str d8, [sp, #28120]
    str d8, [sp, #28128]
    str d8, [sp, #28136]
    str d8, [sp, #28144]
    str d8, [sp, #28152]
    str d8, [sp, #28160]
    str d8, [sp, #28168]
    str d8, [sp, #28176]
    str d8, [sp, #28184]
    str d8, [sp, #28192]
    str d8, [sp, #28200]
    str d8, [sp, #28208]
    str d8, [sp, #28216]
    str d8, [sp, #28224]
    str d8, [sp, #28232]
    str d8, [sp, #28240]
    str d8, [sp, #28248]
    str d8, [sp, #28256]
    str d8, [sp, #28264]
    str d8, [sp, #28272]
    str d8, [sp, #28280]
    str d8, [sp, #28288]
    str d8, [sp, #28296]
    str d8, [sp, #28304]
    str d8, [sp, #28312]
    str d8, [sp, #28320]
    str d8, [sp, #28328]
    str d8, [sp, #28336]
    str d8, [sp, #28344]
    str d8, [sp, #28352]
    str d8, [sp, #28360]
    str d8, [sp, #28368]
    str d8, [sp, #28376]
    str d8, [sp, #28384]
    str d8, [sp, #28392]
    str d8, [sp, #28400]
    str d8, [sp, #28408]
    str d8, [sp, #28416]
    str d8, [sp, #28424]
    str d8, [sp, #28432]
    str d8, [sp, #28440]
    str d8, [sp, #28448]
    str d8, [sp, #28456]
    str d8, [sp, #28464]
    str d8, [sp, #28472]
    str d8, [sp, #28480]
    str d8, [sp, #28488]
    str d8, [sp, #28496]
    str d8, [sp, #28504]
    str d8, [sp, #28512]
    str d8, [sp, #28520]
    str d8, [sp, #28528]
    str d8, [sp, #28536]
    str d8, [sp, #28544]
    str d8, [sp, #28552]
    str d8, [sp, #28560]
    str d8, [sp, #28568]
    str d8, [sp, #28576]
    str d8, [sp, #28584]
    str d8, [sp, #28592]
    str d8, [sp, #28600]
    str d8, [sp, #28608]
    str d8, [sp, #28616]
    str d8, [sp, #28624]
    str d8, [sp, #28632]
    str d8, [sp, #28640]
    str d8, [sp, #28648]
    movz x16, #18328
    sub x10, x29, x16
    sub x0, x29, #3912
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    str d9, [sp, #26712]
    str d9, [sp, #26720]
    str d9, [sp, #26728]
    str d9, [sp, #26736]
    str d9, [sp, #26744]
    str d9, [sp, #26752]
    str d9, [sp, #26760]
    str d9, [sp, #26768]
    str d9, [sp, #26776]
    str d9, [sp, #26784]
    str d9, [sp, #26792]
    str d9, [sp, #26800]
    str d9, [sp, #26808]
    str d9, [sp, #26816]
    str d9, [sp, #26824]
    str d9, [sp, #26832]
    str d9, [sp, #26840]
    str d9, [sp, #26848]
    str d9, [sp, #26856]
    str d9, [sp, #26864]
    str d9, [sp, #26872]
    str d9, [sp, #26880]
    str d9, [sp, #26888]
    str d9, [sp, #26896]
    str d9, [sp, #26904]
    str d9, [sp, #26912]
    str d9, [sp, #26920]
    str d9, [sp, #26928]
    str d9, [sp, #26936]
    str d9, [sp, #26944]
    str d9, [sp, #26952]
    str d9, [sp, #26960]
    str d9, [sp, #26968]
    str d9, [sp, #26976]
    str d9, [sp, #26984]
    str d9, [sp, #26992]
    str d9, [sp, #27000]
    str d9, [sp, #27008]
    str d9, [sp, #27016]
    str d9, [sp, #27024]
    str d9, [sp, #27032]
    str d9, [sp, #27040]
    str d9, [sp, #27048]
    str d9, [sp, #27056]
    str d9, [sp, #27064]
    str d9, [sp, #27072]
    str d9, [sp, #27080]
    str d9, [sp, #27088]
    str d9, [sp, #27096]
    str d9, [sp, #27104]
    str d9, [sp, #27112]
    str d9, [sp, #27120]
    str d9, [sp, #27128]
    str d9, [sp, #27136]
    str d9, [sp, #27144]
    str d9, [sp, #27152]
    str d9, [sp, #27160]
    str d9, [sp, #27168]
    str d9, [sp, #27176]
    str d9, [sp, #27184]
    str d9, [sp, #27192]
    str d9, [sp, #27200]
    str d9, [sp, #27208]
    str d9, [sp, #27216]
    str d9, [sp, #27224]
    str d9, [sp, #27232]
    str d9, [sp, #27240]
    str d9, [sp, #27248]
    str d9, [sp, #27256]
    str d9, [sp, #27264]
    str d9, [sp, #27272]
    str d9, [sp, #27280]
    str d9, [sp, #27288]
    str d9, [sp, #27296]
    str d9, [sp, #27304]
    str d9, [sp, #27312]
    str d9, [sp, #27320]
    str d9, [sp, #27328]
    str d9, [sp, #27336]
    str d9, [sp, #27344]
    str d9, [sp, #27352]
    str d9, [sp, #27360]
    str d9, [sp, #27368]
    str d9, [sp, #27376]
    str d9, [sp, #27384]
    str d9, [sp, #27392]
    str d9, [sp, #27400]
    str d9, [sp, #27408]
    str d9, [sp, #27416]
    str d9, [sp, #27424]
    str d9, [sp, #27432]
    str d9, [sp, #27440]
    str d9, [sp, #27448]
    str d9, [sp, #27456]
    str d9, [sp, #27464]
    str d9, [sp, #27472]
    str d9, [sp, #27480]
    str d9, [sp, #27488]
    str d9, [sp, #27496]
    str d9, [sp, #27504]
    str d9, [sp, #27512]
    str d9, [sp, #27520]
    str d9, [sp, #27528]
    str d9, [sp, #27536]
    str d9, [sp, #27544]
    str d9, [sp, #27552]
    str d9, [sp, #27560]
    str d9, [sp, #27568]
    str d9, [sp, #27576]
    str d9, [sp, #27584]
    str d9, [sp, #27592]
    str d9, [sp, #27600]
    str d9, [sp, #27608]
    str d9, [sp, #27616]
    str d9, [sp, #27624]
    str d9, [sp, #27632]
    str d9, [sp, #27640]
    str d9, [sp, #27648]
    str d9, [sp, #27656]
    str d9, [sp, #27664]
    str d9, [sp, #27672]
    str d9, [sp, #27680]
    str d9, [sp, #27688]
    str d9, [sp, #27696]
    str d9, [sp, #27704]
    str d9, [sp, #27712]
    str d9, [sp, #27720]
    str d9, [sp, #27728]
    str d9, [sp, #27736]
    str d9, [sp, #27744]
    str d9, [sp, #27752]
    str d9, [sp, #27760]
    str d9, [sp, #27768]
    str d9, [sp, #27776]
    str d9, [sp, #27784]
    str d9, [sp, #27792]
    str d9, [sp, #27800]
    str d9, [sp, #27808]
    str d9, [sp, #27816]
    str d9, [sp, #27824]
    str d9, [sp, #27832]
    str d9, [sp, #27840]
    str d9, [sp, #27848]
    str d9, [sp, #27856]
    str d9, [sp, #27864]
    str d9, [sp, #27872]
    str d9, [sp, #27880]
    str d9, [sp, #27888]
    str d9, [sp, #27896]
    str d9, [sp, #27904]
    str d9, [sp, #27912]
    str d9, [sp, #27920]
    str d9, [sp, #27928]
    str d9, [sp, #27936]
    str d9, [sp, #27944]
    str d9, [sp, #27952]
    str d9, [sp, #27960]
    str d9, [sp, #27968]
    str d9, [sp, #27976]
    str d9, [sp, #27984]
    str d9, [sp, #27992]
    str d9, [sp, #28000]
    str d9, [sp, #28008]
    str d9, [sp, #28016]
    str d9, [sp, #28024]
    str d9, [sp, #28032]
    str d9, [sp, #28040]
    str d9, [sp, #28048]
    str d9, [sp, #28056]
    str d9, [sp, #28064]
    str d9, [sp, #28072]
    str d9, [sp, #28080]
    str d9, [sp, #28088]
    str d9, [sp, #28096]
    str d9, [sp, #28104]
    str d9, [sp, #28112]
    str d9, [sp, #28120]
    str d9, [sp, #28128]
    str d9, [sp, #28136]
    str d9, [sp, #28144]
    str d9, [sp, #28152]
    str d9, [sp, #28160]
    str d9, [sp, #28168]
    str d9, [sp, #28176]
    str d9, [sp, #28184]
    str d9, [sp, #28192]
    str d9, [sp, #28200]
    str d9, [sp, #28208]
    str d9, [sp, #28216]
    str d9, [sp, #28224]
    str d9, [sp, #28232]
    str d9, [sp, #28240]
    str d9, [sp, #28248]
    str d9, [sp, #28256]
    str d9, [sp, #28264]
    str d9, [sp, #28272]
    str d9, [sp, #28280]
    str d9, [sp, #28288]
    str d9, [sp, #28296]
    str d9, [sp, #28304]
    str d9, [sp, #28312]
    str d9, [sp, #28320]
    str d9, [sp, #28328]
    str d9, [sp, #28336]
    str d9, [sp, #28344]
    str d9, [sp, #28352]
    str d9, [sp, #28360]
    str d9, [sp, #28368]
    str d9, [sp, #28376]
    str d9, [sp, #28384]
    str d9, [sp, #28392]
    str d9, [sp, #28400]
    str d9, [sp, #28408]
    str d9, [sp, #28416]
    str d9, [sp, #28424]
    str d9, [sp, #28432]
    str d9, [sp, #28440]
    str d9, [sp, #28448]
    str d9, [sp, #28456]
    str d9, [sp, #28464]
    str d9, [sp, #28472]
    str d9, [sp, #28480]
    str d9, [sp, #28488]
    str d9, [sp, #28496]
    str d9, [sp, #28504]
    str d9, [sp, #28512]
    str d9, [sp, #28520]
    str d9, [sp, #28528]
    str d9, [sp, #28536]
    str d9, [sp, #28544]
    str d9, [sp, #28552]
    str d9, [sp, #28560]
    str d9, [sp, #28568]
    str d9, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #18328
    sub x10, x29, x16
    sub x0, x29, #1968
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #16384
    sub x10, x29, x16
    movz x16, #45032
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    movz x16, #45032
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #16360
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr d8, [x16]
    sub x16, x29, #24
    ldr d9, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lae64d000f20a_k0:
    .quad 4587366580439587226
Lae64d000f20a_k1:
    .quad 4578244089034385549
Lae64d000f20a_k2:
    .quad 4578705257636228288
Lae64d000f20a_k3:
    .quad 4581018306404845774
Lae64d000f20a_k4:
    .quad 4584786918573029405
Lae64d000f20a_k5:
    .quad 4587856572079045136
Lae64d000f20a_k6:
    .quad 4590695641284139496
Lae64d000f20a_k7:
    .quad 4593585150805060406
Lae64d000f20a_k8:
    .quad 4595429825212431362
Lae64d000f20a_k9:
    .quad 4597515892559829375
Lae64d000f20a_k10:
    .quad 4598798517733704493
Lae64d000f20a_k11:
    .quad 4599636187264395405
Lae64d000f20a_k12:
    .quad 4600473856795086317
Lae64d000f20a_k13:
    .quad 4601325937844584815
Lae64d000f20a_k14:
    .quad 4602190628973039950
Lae64d000f20a_k15:
    .quad 4602893190514909748
Lae64d000f20a_k16:
    .quad 4603366068475783650
Lae64d000f20a_k17:
    .quad 4603867769474272723
Lae64d000f20a_k18:
    .quad 4604424414388215716
Lae64d000f20a_k19:
    .quad 4605044109696941896
Lae64d000f20a_k20:
    .quad 4605744869798960746
Lae64d000f20a_k21:
    .quad 4606405998224258734
Lae64d000f20a_k22:
    .quad 4606944628739692246
Lae64d000f20a_k23:
    .quad 4607295459150664407
Lae64d000f20a_k24:
    .quad 4607506227613225347
Lae64d000f20a_k25:
    .quad 4607707988876531545
Lae64d000f20a_k26:
    .quad 4607905696900173110
Lae64d000f20a_k27:
    .quad 4608103404923814674
Lae64d000f20a_k28:
    .quad 4608312822306487402
Lae64d000f20a_k29:
    .quad 4608540254087669613
Lae64d000f20a_k30:
    .quad 4608787051347249516
Lae64d000f20a_k31:
    .quad 4609045107605897845
Lae64d000f20a_k32:
    .quad 4609295057385216908
Lae64d000f20a_k33:
    .quad 4609538251765094914
Lae64d000f20a_k34:
    .quad 4609772438945718180
Lae64d000f20a_k35:
    .quad 4609995367127273020
Lae64d000f20a_k36:
    .quad 4610206585949796696
Lae64d000f20a_k37:
    .quad 4610406095413289209
Lae64d000f20a_k38:
    .quad 4610597048037489718
Lae64d000f20a_k39:
    .quad 4610782596342137383
Lae64d000f20a_k40:
    .quad 4610959587807493043
Lae64d000f20a_k41:
    .quad 4611119915954227433
Lae64d000f20a_k42:
    .quad 4611266282942116974
Lae64d000f20a_k43:
    .quad 4611390582291832399
Lae64d000f20a_k44:
    .quad 4611497767962963817
Lae64d000f20a_k45:
    .quad 4611589191035399438
Lae64d000f20a_k46:
    .quad 4611661698989400103
Lae64d000f20a_k47:
    .quad 4611704933545822860
Lae64d000f20a_k48:
    .quad 4611728127083903818
Lae64d000f20a_k49:
    .quad 4611747267382320143
Lae64d000f20a_k50:
    .quad 4611761003361183623
Lae64d000f20a_k51:
    .quad 4611771361640326575
Lae64d000f20a_k52:
    .quad 4611778792579711736
Lae64d000f20a_k53:
    .quad 4611783296179339107
Lae64d000f20a_k54:
    .quad 4611787124239022372
Lae64d000f20a_k55:
    .quad 4611788250138929214
Lae64d000f20a_k56:
    .quad 4611789150858854688
Lae64d000f20a_k57:
    .quad 4611789376038836057
Lae64d000f20a_k58:
    .quad 4579166426238071026
Lae64d000f20a_k59:
    .quad 4581104775517691288
Lae64d000f20a_k60:
    .quad 4584959856798720433
Lae64d000f20a_k61:
    .quad 4588130390936389262
Lae64d000f20a_k62:
    .quad 4590904608306849487
Lae64d000f20a_k63:
    .quad 4593790514948068501
Lae64d000f20a_k64:
    .quad 4595692835430669799
Lae64d000f20a_k65:
    .quad 4597786108537471605
Lae64d000f20a_k66:
    .quad 4598913809884165177
Lae64d000f20a_k67:
    .quad 4599837948527701603
Lae64d000f20a_k68:
    .quad 4600778300129896563
Lae64d000f20a_k69:
    .quad 4601749276209557642
Lae64d000f20a_k70:
    .quad 4602722954448995143
Lae64d000f20a_k71:
    .quad 4603251677045248439
Lae64d000f20a_k72:
    .quad 4603818229878371647
Lae64d000f20a_k73:
    .quad 4604448733826203517
Lae64d000f20a_k74:
    .quad 4605169309766582796
Lae64d000f20a_k75:
    .quad 4605945730342341470
Lae64d000f20a_k76:
    .quad 4606603255887937562
Lae64d000f20a_k77:
    .quad 4607145489283072970
Lae64d000f20a_k78:
    .quad 4607408049141348670
Lae64d000f20a_k79:
    .quad 4607639984522158250
Lae64d000f20a_k80:
    .quad 4607869217743191409
Lae64d000f20a_k81:
    .quad 4608111961763106678
Lae64d000f20a_k82:
    .quad 4608382628100711645
Lae64d000f20a_k83:
    .quad 4608710490153584217
Lae64d000f20a_k84:
    .quad 4609089242882246076
Lae64d000f20a_k85:
    .quad 4609454935171988560
Lae64d000f20a_k86:
    .quad 4609785499384637555
Lae64d000f20a_k87:
    .quad 4610084088039932219
Lae64d000f20a_k88:
    .quad 4610366914096531086
Lae64d000f20a_k89:
    .quad 4610651541592980901
Lae64d000f20a_k90:
    .quad 4610941123049020824
Lae64d000f20a_k91:
    .quad 4611207285786998420
Lae64d000f20a_k92:
    .quad 4611422107489223993
Lae64d000f20a_k93:
    .quad 4611592343555138598
Lae64d000f20a_k94:
    .quad 4611703357285953280
Lae64d000f20a_k95:
    .quad 4611739836442934981
Lae64d000f20a_k96:
    .quad 4611765732140792362
Lae64d000f20a_k97:
    .quad 4611782395459413633
Lae64d000f20a_k98:
    .quad 4611788024958947846
Lae64d000f20a_k99:
    .quad 4611792528558575216
Lae64d000f20a_k100:
    .quad 4580211261351620982
Lae64d000f20a_k101:
    .quad 4582574750436065018
Lae64d000f20a_k102:
    .quad 4585968663115251424
Lae64d000f20a_k103:
    .quad 4589492279463706100
Lae64d000f20a_k104:
    .quad 4592316937149992875
Lae64d000f20a_k105:
    .quad 4594874981738339317
Lae64d000f20a_k106:
    .quad 4597112370033216979
Lae64d000f20a_k107:
    .quad 4598627380947864414
Lae64d000f20a_k108:
    .quad 4599607364226780234
Lae64d000f20a_k109:
    .quad 4600616170543311225
Lae64d000f20a_k110:
    .quad 4601661005656861180
Lae64d000f20a_k111:
    .quad 4602724755888846091
Lae64d000f20a_k112:
    .quad 4603316528879882574
Lae64d000f20a_k113:
    .quad 4603956940746894659
Lae64d000f20a_k114:
    .quad 4604673913807572042
Lae64d000f20a_k115:
    .quad 4605480058140871361
Lae64d000f20a_k116:
    .quad 4606230357838791285
Lae64d000f20a_k117:
    .quad 4606873471865579792
Lae64d000f20a_k118:
    .quad 4607319778588652208
Lae64d000f20a_k119:
    .quad 4607595849245810020
Lae64d000f20a_k120:
    .quad 4607867866663303197
Lae64d000f20a_k121:
    .quad 4608153394879678487
Lae64d000f20a_k122:
    .quad 4608521338969234656
Lae64d000f20a_k123:
    .quad 4608956386693238646
Lae64d000f20a_k124:
    .quad 4609462591291355090
Lae64d000f20a_k125:
    .quad 4610000771446825864
Lae64d000f20a_k126:
    .quad 4610433567371016169
Lae64d000f20a_k127:
    .quad 4610780344542323697
Lae64d000f20a_k128:
    .quad 4611069025278438146
Lae64d000f20a_k129:
    .quad 4611319875777682683
Lae64d000f20a_k130:
    .quad 4611514881641547825
Lae64d000f20a_k131:
    .quad 4611653592510070836
Lae64d000f20a_k132:
    .quad 4611720921324500025
Lae64d000f20a_k133:
    .quad 4611756950121518989
Lae64d000f20a_k134:
    .quad 4611773838620121629
Lae64d000f20a_k135:
    .quad 4611785547979152792
Lae64d000f20a_k136:
    .quad 4611790501938742900
Lae64d000f20a_k137:
    .quad 4611792303378593848
Lae64d000f20a_k138:
    .quad 4579454656614222738
Lae64d000f20a_k139:
    .quad 4581277713743382315
Lae64d000f20a_k140:
    .quad 4584332955730590459
Lae64d000f20a_k141:
    .quad 4587092761582243099
Lae64d000f20a_k142:
    .quad 4590140797810047451
Lae64d000f20a_k143:
    .quad 4593001484293353190
Lae64d000f20a_k144:
    .quad 4595253284107038438
Lae64d000f20a_k145:
    .quad 4597180824747553010
Lae64d000f20a_k146:
    .quad 4598656203985479585
Lae64d000f20a_k147:
    .quad 4599688429020072903
Lae64d000f20a_k148:
    .quad 4600796314528406045
Lae64d000f20a_k149:
    .quad 4602006882108243234
Lae64d000f20a_k150:
    .quad 4603021993464252544
Lae64d000f20a_k151:
    .quad 4603779498921576261
Lae64d000f20a_k152:
    .quad 4604577536775546313
Lae64d000f20a_k153:
    .quad 4605395390467876795
Lae64d000f20a_k154:
    .quad 4606228556398940337
Lae64d000f20a_k155:
    .quad 4607076133848811464
Lae64d000f20a_k156:
    .quad 4607560270808753793
Lae64d000f20a_k157:
    .quad 4608010180411528105
Lae64d000f20a_k158:
    .quad 4608521789329197394
Lae64d000f20a_k159:
    .quad 4609103204041090925
Lae64d000f20a_k160:
    .quad 4609718395750189734
Lae64d000f20a_k161:
    .quad 4610289902542903050
Lae64d000f20a_k162:
    .quad 4610788901381615701
Lae64d000f20a_k163:
    .quad 4611179813829271460
Lae64d000f20a_k164:
    .quad 4611448678727025479
Lae64d000f20a_k165:
    .quad 4611624769472455665
Lae64d000f20a_k166:
    .quad 4611712814845170758
Lae64d000f20a_k167:
    .quad 4611750870262022039
Lae64d000f20a_k168:
    .quad 4611769785380456995
Lae64d000f20a_k169:
    .quad 4611781719919469527
Lae64d000f20a_k170:
    .quad 4611790276758761531
Lae64d000f20a_k171:
    .quad 4611790727118724268
Lae64d000f20a_k172:
    .quad 4579397010538992396
Lae64d000f20a_k173:
    .quad 4581162421592921630
Lae64d000f20a_k174:
    .quad 4584131194467284261
Lae64d000f20a_k175:
    .quad 4586948646394167244
Lae64d000f20a_k176:
    .quad 4590047122937798145
Lae64d000f20a_k177:
    .quad 4592878986383488713
Lae64d000f20a_k178:
    .quad 4595228063949125163
Lae64d000f20a_k179:
    .quad 4597389791770263001
Lae64d000f20a_k180:
    .quad 4598964250199991727
Lae64d000f20a_k181:
    .quad 4600219853776102621
Lae64d000f20a_k182:
    .quad 4601554720705655236
Lae64d000f20a_k183:
    .quad 4602829239400201087
Lae64d000f20a_k184:
    .quad 4603594851336854071
Lae64d000f20a_k185:
    .quad 4604455038865681836
Lae64d000f20a_k186:
    .quad 4605489065340126102
Lae64d000f20a_k187:
    .quad 4606787903472659753
Lae64d000f20a_k188:
    .quad 4607738162994034927
Lae64d000f20a_k189:
    .quad 4608612311681707540
Lae64d000f20a_k190:
    .quad 4609533748165467544
Lae64d000f20a_k191:
    .quad 4610271437784430831
Lae64d000f20a_k192:
    .quad 4610815472619417187
Lae64d000f20a_k193:
    .quad 4611202782187371050
Lae64d000f20a_k194:
    .quad 4611463990965758539
Lae64d000f20a_k195:
    .quad 4611633776671710406
Lae64d000f20a_k196:
    .quad 4611715291824965812
Lae64d000f20a_k197:
    .quad 4611751996161928882
Lae64d000f20a_k198:
    .quad 4611770911280363838
Lae64d000f20a_k199:
    .quad 4611782170279432264
Lae64d000f20a_k200:
    .quad 4611788475318910583
Lae64d000f20a_k201:
    .quad 4579281718388531711
Lae64d000f20a_k202:
    .quad 4580355376539696837
Lae64d000f20a_k203:
    .quad 4582603573473680189
Lae64d000f20a_k204:
    .quad 4586242481972595550
Lae64d000f20a_k205:
    .quad 4589910213509126082
Lae64d000f20a_k206:
    .quad 4593109570684410082
Lae64d000f20a_k207:
    .quad 4595494677047065497
Lae64d000f20a_k208:
    .quad 4598056324515113835
Lae64d000f20a_k209:
    .quad 4599585746948568855
Lae64d000f20a_k210:
    .quad 4601207042814422234
Lae64d000f20a_k211:
    .quad 4602840048039306776
Lae64d000f20a_k212:
    .quad 4603862365154719878
Lae64d000f20a_k213:
    .quad 4605059421935674956
Lae64d000f20a_k214:
    .quad 4606505077416060885
Lae64d000f20a_k215:
    .quad 4607730506874668397
Lae64d000f20a_k216:
    .quad 4608818126184678372
Lae64d000f20a_k217:
    .quad 4609848549779420742
Lae64d000f20a_k218:
    .quad 4610675410671005965
Lae64d000f20a_k219:
    .quad 4611155944751246397
Lae64d000f20a_k220:
    .quad 4611477952124603387
Lae64d000f20a_k221:
    .quad 4611674309068356741
Lae64d000f20a_k222:
    .quad 4611735107663326242
Lae64d000f20a_k223:
    .quad 4611765506960810993
Lae64d000f20a_k224:
    .quad 4611782620639395001
Lae64d000f20a_k225:
    .quad 4611791177478687005
Lae64d000f20a_k226:
    .quad 4580960660329615432
Lae64d000f20a_k227:
    .quad 4584275309655360117
Lae64d000f20a_k228:
    .quad 4587971864229505820
Lae64d000f20a_k229:
    .quad 4592071941330263920
Lae64d000f20a_k230:
    .quad 4596669215829883722
Lae64d000f20a_k231:
    .quad 4600495474073297696
Lae64d000f20a_k232:
    .quad 4603792109000532899
Lae64d000f20a_k233:
    .quad 4606960841698350780
Lae64d000f20a_k234:
    .quad 4608511431050054441
Lae64d000f20a_k235:
    .quad 4609615713678685687
Lae64d000f20a_k236:
    .quad 4610559668160582543
Lae64d000f20a_k237:
    .quad 4611109557675084481
Lae64d000f20a_k238:
    .quad 4611417153529633885
Lae64d000f20a_k239:
    .quad 4611606755073946183
Lae64d000f20a_k240:
    .quad 4611708986785487494
Lae64d000f20a_k241:
    .quad 4611744340042562352
Lae64d000f20a_k242:
    .quad 4611767083220680573


    .p2align 2
    .globl _lb_11film_stocks_19kodak_polymax_ii_rc
_lb_11film_stocks_19kodak_polymax_ii_rc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #45024
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    movz x16, #16368
    sub x0, x29, x16
    mov x1, #0
    movz x2, #16360
    bl _memset
    adrp x14, _lb_text_56b78f744e30@PAGE
    add x14, x14, _lb_text_56b78f744e30@PAGEOFF
    str x14, [sp, #28656]
    movz x9, #19
    str x9, [sp, #28664]
    mov x9, #0
    str x9, [sp, #28672]
    ldr d16, L4ea4c0b1a8c6_k0
    str d16, [sp, #28680]
    ldr d16, L4ea4c0b1a8c6_k1
    str d16, [sp, #28688]
    movz x9, #60
    str x9, [sp, #28696]
    movz x9, #12
    str x9, [sp, #28704]
    fmov d16, #-1.0000000
    str d16, [sp, #28528]
    fmov d16, xzr
    str d16, [sp, #28536]
    fmov d16, #0.5000000
    str d16, [sp, #28544]
    fmov d16, #1.0000000
    str d16, [sp, #28552]
    fmov d16, #1.5000000
    str d16, [sp, #28560]
    fmov d16, #2.0000000
    str d16, [sp, #28568]
    fmov d16, #2.5000000
    str d16, [sp, #28576]
    fmov d16, #3.0000000
    str d16, [sp, #28584]
    fmov d16, #3.5000000
    str d16, [sp, #28592]
    fmov d16, #4.0000000
    str d16, [sp, #28600]
    fmov d16, #4.5000000
    str d16, [sp, #28608]
    fmov d16, #5.0000000
    str d16, [sp, #28616]
    fmov d16, xzr
    str d16, [sp, #28624]
    fmov d16, xzr
    str d16, [sp, #28632]
    fmov d16, xzr
    str d16, [sp, #28640]
    fmov d16, xzr
    str d16, [sp, #28648]
    movz x16, #16496
    sub x10, x29, x16
    movz x16, #16312
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x11, #96]
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x11, #112]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16368]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16376]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16384]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16392]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16400]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16408]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16416]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16424]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #16432]
    ldr d16, L4ea4c0b1a8c6_k3
    str d16, [sp, #16440]
    ldr d16, L4ea4c0b1a8c6_k4
    str d16, [sp, #16448]
    ldr d16, L4ea4c0b1a8c6_k5
    str d16, [sp, #16456]
    ldr d16, L4ea4c0b1a8c6_k6
    str d16, [sp, #16464]
    ldr d16, L4ea4c0b1a8c6_k7
    str d16, [sp, #16472]
    ldr d16, L4ea4c0b1a8c6_k8
    str d16, [sp, #16480]
    ldr d16, L4ea4c0b1a8c6_k9
    str d16, [sp, #16488]
    ldr d16, L4ea4c0b1a8c6_k10
    str d16, [sp, #16496]
    ldr d16, L4ea4c0b1a8c6_k11
    str d16, [sp, #16504]
    ldr d16, L4ea4c0b1a8c6_k12
    str d16, [sp, #16512]
    ldr d16, L4ea4c0b1a8c6_k13
    str d16, [sp, #16520]
    ldr d16, L4ea4c0b1a8c6_k14
    str d16, [sp, #16528]
    ldr d16, L4ea4c0b1a8c6_k15
    str d16, [sp, #16536]
    ldr d16, L4ea4c0b1a8c6_k16
    str d16, [sp, #16544]
    ldr d16, L4ea4c0b1a8c6_k17
    str d16, [sp, #16552]
    ldr d16, L4ea4c0b1a8c6_k18
    str d16, [sp, #16560]
    ldr d16, L4ea4c0b1a8c6_k19
    str d16, [sp, #16568]
    ldr d16, L4ea4c0b1a8c6_k20
    str d16, [sp, #16576]
    ldr d16, L4ea4c0b1a8c6_k21
    str d16, [sp, #16584]
    ldr d16, L4ea4c0b1a8c6_k22
    str d16, [sp, #16592]
    ldr d16, L4ea4c0b1a8c6_k23
    str d16, [sp, #16600]
    ldr d16, L4ea4c0b1a8c6_k24
    str d16, [sp, #16608]
    ldr d16, L4ea4c0b1a8c6_k25
    str d16, [sp, #16616]
    ldr d16, L4ea4c0b1a8c6_k26
    str d16, [sp, #16624]
    ldr d16, L4ea4c0b1a8c6_k27
    str d16, [sp, #16632]
    ldr d16, L4ea4c0b1a8c6_k28
    str d16, [sp, #16640]
    ldr d16, L4ea4c0b1a8c6_k29
    str d16, [sp, #16648]
    ldr d16, L4ea4c0b1a8c6_k30
    str d16, [sp, #16656]
    ldr d16, L4ea4c0b1a8c6_k31
    str d16, [sp, #16664]
    ldr d16, L4ea4c0b1a8c6_k32
    str d16, [sp, #16672]
    ldr d16, L4ea4c0b1a8c6_k33
    str d16, [sp, #16680]
    ldr d16, L4ea4c0b1a8c6_k34
    str d16, [sp, #16688]
    ldr d16, L4ea4c0b1a8c6_k35
    str d16, [sp, #16696]
    ldr d16, L4ea4c0b1a8c6_k36
    str d16, [sp, #16704]
    ldr d16, L4ea4c0b1a8c6_k37
    str d16, [sp, #16712]
    ldr d16, L4ea4c0b1a8c6_k38
    str d16, [sp, #16720]
    ldr d16, L4ea4c0b1a8c6_k39
    str d16, [sp, #16728]
    ldr d16, L4ea4c0b1a8c6_k40
    str d16, [sp, #16736]
    ldr d16, L4ea4c0b1a8c6_k41
    str d16, [sp, #16744]
    ldr d16, L4ea4c0b1a8c6_k42
    str d16, [sp, #16752]
    ldr d16, L4ea4c0b1a8c6_k43
    str d16, [sp, #16760]
    ldr d16, L4ea4c0b1a8c6_k44
    str d16, [sp, #16768]
    ldr d16, L4ea4c0b1a8c6_k45
    str d16, [sp, #16776]
    ldr d16, L4ea4c0b1a8c6_k46
    str d16, [sp, #16784]
    ldr d16, L4ea4c0b1a8c6_k47
    str d16, [sp, #16792]
    ldr d16, L4ea4c0b1a8c6_k48
    str d16, [sp, #16800]
    ldr d16, L4ea4c0b1a8c6_k49
    str d16, [sp, #16808]
    ldr d16, L4ea4c0b1a8c6_k50
    str d16, [sp, #16816]
    ldr d16, L4ea4c0b1a8c6_k51
    str d16, [sp, #16824]
    ldr d16, L4ea4c0b1a8c6_k52
    str d16, [sp, #16832]
    fmov d16, #1.8750000
    str d16, [sp, #16840]
    fmov d16, #1.8750000
    str d16, [sp, #16848]
    fmov d16, #1.8750000
    str d16, [sp, #16856]
    fmov d16, #1.8750000
    str d16, [sp, #16864]
    fmov d16, #1.8750000
    str d16, [sp, #16872]
    fmov d16, #1.8750000
    str d16, [sp, #16880]
    fmov d16, #1.8750000
    str d16, [sp, #16888]
    fmov d16, #1.8750000
    str d16, [sp, #16896]
    fmov d16, #1.8750000
    str d16, [sp, #16904]
    fmov d16, #1.8750000
    str d16, [sp, #16912]
    fmov d16, #1.8750000
    str d16, [sp, #16920]
    fmov d16, #1.8750000
    str d16, [sp, #16928]
    fmov d16, #1.8750000
    str d16, [sp, #16936]
    fmov d16, #1.8750000
    str d16, [sp, #16944]
    fmov d16, #1.8750000
    str d16, [sp, #16952]
    fmov d16, #1.8750000
    str d16, [sp, #16960]
    fmov d16, #1.8750000
    str d16, [sp, #16968]
    fmov d16, #1.8750000
    str d16, [sp, #16976]
    fmov d16, #1.8750000
    str d16, [sp, #16984]
    fmov d16, #1.8750000
    str d16, [sp, #16992]
    fmov d16, #1.8750000
    str d16, [sp, #17000]
    fmov d16, #1.8750000
    str d16, [sp, #17008]
    fmov d16, #1.8750000
    str d16, [sp, #17016]
    fmov d16, #1.8750000
    str d16, [sp, #17024]
    fmov d16, #1.8750000
    str d16, [sp, #17032]
    fmov d16, #1.8750000
    str d16, [sp, #17040]
    fmov d16, #1.8750000
    str d16, [sp, #17048]
    fmov d16, #1.8750000
    str d16, [sp, #17056]
    fmov d16, #1.8750000
    str d16, [sp, #17064]
    fmov d16, #1.8750000
    str d16, [sp, #17072]
    fmov d16, #1.8750000
    str d16, [sp, #17080]
    fmov d16, #1.8750000
    str d16, [sp, #17088]
    fmov d16, #1.8750000
    str d16, [sp, #17096]
    fmov d16, #1.8750000
    str d16, [sp, #17104]
    fmov d16, #1.8750000
    str d16, [sp, #17112]
    fmov d16, #1.8750000
    str d16, [sp, #17120]
    fmov d16, #1.8750000
    str d16, [sp, #17128]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17136]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17144]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17152]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17160]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17168]
    ldr d16, L4ea4c0b1a8c6_k53
    str d16, [sp, #17176]
    ldr d16, L4ea4c0b1a8c6_k54
    str d16, [sp, #17184]
    ldr d16, L4ea4c0b1a8c6_k55
    str d16, [sp, #17192]
    ldr d16, L4ea4c0b1a8c6_k5
    str d16, [sp, #17200]
    ldr d16, L4ea4c0b1a8c6_k56
    str d16, [sp, #17208]
    ldr d16, L4ea4c0b1a8c6_k57
    str d16, [sp, #17216]
    ldr d16, L4ea4c0b1a8c6_k58
    str d16, [sp, #17224]
    ldr d16, L4ea4c0b1a8c6_k59
    str d16, [sp, #17232]
    ldr d16, L4ea4c0b1a8c6_k60
    str d16, [sp, #17240]
    ldr d16, L4ea4c0b1a8c6_k61
    str d16, [sp, #17248]
    ldr d16, L4ea4c0b1a8c6_k62
    str d16, [sp, #17256]
    fmov d16, #0.1875000
    str d16, [sp, #17264]
    ldr d16, L4ea4c0b1a8c6_k63
    str d16, [sp, #17272]
    ldr d16, L4ea4c0b1a8c6_k64
    str d16, [sp, #17280]
    ldr d16, L4ea4c0b1a8c6_k65
    str d16, [sp, #17288]
    ldr d16, L4ea4c0b1a8c6_k66
    str d16, [sp, #17296]
    ldr d16, L4ea4c0b1a8c6_k67
    str d16, [sp, #17304]
    ldr d16, L4ea4c0b1a8c6_k68
    str d16, [sp, #17312]
    ldr d16, L4ea4c0b1a8c6_k69
    str d16, [sp, #17320]
    ldr d16, L4ea4c0b1a8c6_k70
    str d16, [sp, #17328]
    ldr d16, L4ea4c0b1a8c6_k71
    str d16, [sp, #17336]
    ldr d16, L4ea4c0b1a8c6_k72
    str d16, [sp, #17344]
    ldr d16, L4ea4c0b1a8c6_k73
    str d16, [sp, #17352]
    ldr d16, L4ea4c0b1a8c6_k74
    str d16, [sp, #17360]
    ldr d16, L4ea4c0b1a8c6_k75
    str d16, [sp, #17368]
    ldr d16, L4ea4c0b1a8c6_k76
    str d16, [sp, #17376]
    ldr d16, L4ea4c0b1a8c6_k77
    str d16, [sp, #17384]
    ldr d16, L4ea4c0b1a8c6_k78
    str d16, [sp, #17392]
    ldr d16, L4ea4c0b1a8c6_k79
    str d16, [sp, #17400]
    ldr d16, L4ea4c0b1a8c6_k80
    str d16, [sp, #17408]
    ldr d16, L4ea4c0b1a8c6_k81
    str d16, [sp, #17416]
    ldr d16, L4ea4c0b1a8c6_k82
    str d16, [sp, #17424]
    ldr d16, L4ea4c0b1a8c6_k83
    str d16, [sp, #17432]
    ldr d16, L4ea4c0b1a8c6_k84
    str d16, [sp, #17440]
    ldr d16, L4ea4c0b1a8c6_k85
    str d16, [sp, #17448]
    ldr d16, L4ea4c0b1a8c6_k86
    str d16, [sp, #17456]
    ldr d16, L4ea4c0b1a8c6_k87
    str d16, [sp, #17464]
    ldr d16, L4ea4c0b1a8c6_k88
    str d16, [sp, #17472]
    ldr d16, L4ea4c0b1a8c6_k89
    str d16, [sp, #17480]
    ldr d16, L4ea4c0b1a8c6_k90
    str d16, [sp, #17488]
    ldr d16, L4ea4c0b1a8c6_k91
    str d16, [sp, #17496]
    ldr d16, L4ea4c0b1a8c6_k92
    str d16, [sp, #17504]
    ldr d16, L4ea4c0b1a8c6_k93
    str d16, [sp, #17512]
    ldr d16, L4ea4c0b1a8c6_k94
    str d16, [sp, #17520]
    ldr d16, L4ea4c0b1a8c6_k95
    str d16, [sp, #17528]
    ldr d16, L4ea4c0b1a8c6_k96
    str d16, [sp, #17536]
    ldr d16, L4ea4c0b1a8c6_k97
    str d16, [sp, #17544]
    ldr d16, L4ea4c0b1a8c6_k98
    str d16, [sp, #17552]
    ldr d16, L4ea4c0b1a8c6_k99
    str d16, [sp, #17560]
    ldr d16, L4ea4c0b1a8c6_k100
    str d16, [sp, #17568]
    ldr d16, L4ea4c0b1a8c6_k101
    str d16, [sp, #17576]
    ldr d16, L4ea4c0b1a8c6_k102
    str d16, [sp, #17584]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17592]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17600]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17608]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17616]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17624]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17632]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17640]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17648]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17656]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17664]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17672]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17680]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17688]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17696]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17704]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17712]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17720]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17728]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17736]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17744]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17752]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17760]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17768]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17776]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17784]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17792]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17800]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17808]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17816]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17824]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17832]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17840]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17848]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17856]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17864]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17872]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17880]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17888]
    ldr d16, L4ea4c0b1a8c6_k103
    str d16, [sp, #17896]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #17904]
    ldr d16, L4ea4c0b1a8c6_k105
    str d16, [sp, #17912]
    ldr d16, L4ea4c0b1a8c6_k105
    str d16, [sp, #17920]
    ldr d16, L4ea4c0b1a8c6_k106
    str d16, [sp, #17928]
    ldr d16, L4ea4c0b1a8c6_k107
    str d16, [sp, #17936]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #17944]
    ldr d16, L4ea4c0b1a8c6_k109
    str d16, [sp, #17952]
    ldr d16, L4ea4c0b1a8c6_k110
    str d16, [sp, #17960]
    ldr d16, L4ea4c0b1a8c6_k111
    str d16, [sp, #17968]
    ldr d16, L4ea4c0b1a8c6_k112
    str d16, [sp, #17976]
    ldr d16, L4ea4c0b1a8c6_k113
    str d16, [sp, #17984]
    ldr d16, L4ea4c0b1a8c6_k114
    str d16, [sp, #17992]
    ldr d16, L4ea4c0b1a8c6_k115
    str d16, [sp, #18000]
    ldr d16, L4ea4c0b1a8c6_k116
    str d16, [sp, #18008]
    ldr d16, L4ea4c0b1a8c6_k117
    str d16, [sp, #18016]
    ldr d16, L4ea4c0b1a8c6_k118
    str d16, [sp, #18024]
    ldr d16, L4ea4c0b1a8c6_k119
    str d16, [sp, #18032]
    ldr d16, L4ea4c0b1a8c6_k120
    str d16, [sp, #18040]
    ldr d16, L4ea4c0b1a8c6_k121
    str d16, [sp, #18048]
    ldr d16, L4ea4c0b1a8c6_k122
    str d16, [sp, #18056]
    ldr d16, L4ea4c0b1a8c6_k123
    str d16, [sp, #18064]
    ldr d16, L4ea4c0b1a8c6_k124
    str d16, [sp, #18072]
    ldr d16, L4ea4c0b1a8c6_k125
    str d16, [sp, #18080]
    ldr d16, L4ea4c0b1a8c6_k126
    str d16, [sp, #18088]
    ldr d16, L4ea4c0b1a8c6_k127
    str d16, [sp, #18096]
    ldr d16, L4ea4c0b1a8c6_k128
    str d16, [sp, #18104]
    ldr d16, L4ea4c0b1a8c6_k129
    str d16, [sp, #18112]
    ldr d16, L4ea4c0b1a8c6_k130
    str d16, [sp, #18120]
    ldr d16, L4ea4c0b1a8c6_k131
    str d16, [sp, #18128]
    ldr d16, L4ea4c0b1a8c6_k132
    str d16, [sp, #18136]
    ldr d16, L4ea4c0b1a8c6_k133
    str d16, [sp, #18144]
    ldr d16, L4ea4c0b1a8c6_k134
    str d16, [sp, #18152]
    ldr d16, L4ea4c0b1a8c6_k135
    str d16, [sp, #18160]
    ldr d16, L4ea4c0b1a8c6_k136
    str d16, [sp, #18168]
    ldr d16, L4ea4c0b1a8c6_k137
    str d16, [sp, #18176]
    ldr d16, L4ea4c0b1a8c6_k138
    str d16, [sp, #18184]
    ldr d16, L4ea4c0b1a8c6_k139
    str d16, [sp, #18192]
    ldr d16, L4ea4c0b1a8c6_k140
    str d16, [sp, #18200]
    ldr d16, L4ea4c0b1a8c6_k141
    str d16, [sp, #18208]
    ldr d16, L4ea4c0b1a8c6_k142
    str d16, [sp, #18216]
    ldr d16, L4ea4c0b1a8c6_k143
    str d16, [sp, #18224]
    ldr d16, L4ea4c0b1a8c6_k144
    str d16, [sp, #18232]
    ldr d16, L4ea4c0b1a8c6_k145
    str d16, [sp, #18240]
    ldr d16, L4ea4c0b1a8c6_k146
    str d16, [sp, #18248]
    ldr d16, L4ea4c0b1a8c6_k147
    str d16, [sp, #18256]
    ldr d16, L4ea4c0b1a8c6_k148
    str d16, [sp, #18264]
    ldr d16, L4ea4c0b1a8c6_k149
    str d16, [sp, #18272]
    ldr d16, L4ea4c0b1a8c6_k150
    str d16, [sp, #18280]
    ldr d16, L4ea4c0b1a8c6_k151
    str d16, [sp, #18288]
    ldr d16, L4ea4c0b1a8c6_k152
    str d16, [sp, #18296]
    ldr d16, L4ea4c0b1a8c6_k153
    str d16, [sp, #18304]
    ldr d16, L4ea4c0b1a8c6_k154
    str d16, [sp, #18312]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18320]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18328]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18336]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18344]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18352]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18360]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18368]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18376]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18384]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18392]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18400]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18408]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18416]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18424]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18432]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18440]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18448]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18456]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18464]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18472]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18480]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18488]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18496]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18504]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18512]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18520]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18528]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18536]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18544]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18552]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18560]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18568]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18576]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18584]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18592]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18600]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18608]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18616]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18624]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18632]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18640]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18648]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18656]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #18664]
    ldr d16, L4ea4c0b1a8c6_k156
    str d16, [sp, #18672]
    ldr d16, L4ea4c0b1a8c6_k157
    str d16, [sp, #18680]
    ldr d16, L4ea4c0b1a8c6_k107
    str d16, [sp, #18688]
    ldr d16, L4ea4c0b1a8c6_k158
    str d16, [sp, #18696]
    ldr d16, L4ea4c0b1a8c6_k158
    str d16, [sp, #18704]
    ldr d16, L4ea4c0b1a8c6_k158
    str d16, [sp, #18712]
    ldr d16, L4ea4c0b1a8c6_k159
    str d16, [sp, #18720]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #18728]
    ldr d16, L4ea4c0b1a8c6_k160
    str d16, [sp, #18736]
    ldr d16, L4ea4c0b1a8c6_k161
    str d16, [sp, #18744]
    ldr d16, L4ea4c0b1a8c6_k162
    str d16, [sp, #18752]
    ldr d16, L4ea4c0b1a8c6_k163
    str d16, [sp, #18760]
    ldr d16, L4ea4c0b1a8c6_k164
    str d16, [sp, #18768]
    ldr d16, L4ea4c0b1a8c6_k165
    str d16, [sp, #18776]
    ldr d16, L4ea4c0b1a8c6_k166
    str d16, [sp, #18784]
    ldr d16, L4ea4c0b1a8c6_k167
    str d16, [sp, #18792]
    ldr d16, L4ea4c0b1a8c6_k168
    str d16, [sp, #18800]
    ldr d16, L4ea4c0b1a8c6_k169
    str d16, [sp, #18808]
    ldr d16, L4ea4c0b1a8c6_k170
    str d16, [sp, #18816]
    ldr d16, L4ea4c0b1a8c6_k171
    str d16, [sp, #18824]
    ldr d16, L4ea4c0b1a8c6_k172
    str d16, [sp, #18832]
    ldr d16, L4ea4c0b1a8c6_k173
    str d16, [sp, #18840]
    ldr d16, L4ea4c0b1a8c6_k174
    str d16, [sp, #18848]
    ldr d16, L4ea4c0b1a8c6_k175
    str d16, [sp, #18856]
    ldr d16, L4ea4c0b1a8c6_k176
    str d16, [sp, #18864]
    ldr d16, L4ea4c0b1a8c6_k177
    str d16, [sp, #18872]
    ldr d16, L4ea4c0b1a8c6_k178
    str d16, [sp, #18880]
    ldr d16, L4ea4c0b1a8c6_k179
    str d16, [sp, #18888]
    ldr d16, L4ea4c0b1a8c6_k180
    str d16, [sp, #18896]
    ldr d16, L4ea4c0b1a8c6_k181
    str d16, [sp, #18904]
    ldr d16, L4ea4c0b1a8c6_k182
    str d16, [sp, #18912]
    ldr d16, L4ea4c0b1a8c6_k183
    str d16, [sp, #18920]
    ldr d16, L4ea4c0b1a8c6_k184
    str d16, [sp, #18928]
    ldr d16, L4ea4c0b1a8c6_k185
    str d16, [sp, #18936]
    ldr d16, L4ea4c0b1a8c6_k186
    str d16, [sp, #18944]
    ldr d16, L4ea4c0b1a8c6_k187
    str d16, [sp, #18952]
    ldr d16, L4ea4c0b1a8c6_k188
    str d16, [sp, #18960]
    ldr d16, L4ea4c0b1a8c6_k189
    str d16, [sp, #18968]
    ldr d16, L4ea4c0b1a8c6_k190
    str d16, [sp, #18976]
    ldr d16, L4ea4c0b1a8c6_k191
    str d16, [sp, #18984]
    ldr d16, L4ea4c0b1a8c6_k192
    str d16, [sp, #18992]
    ldr d16, L4ea4c0b1a8c6_k193
    str d16, [sp, #19000]
    ldr d16, L4ea4c0b1a8c6_k194
    str d16, [sp, #19008]
    ldr d16, L4ea4c0b1a8c6_k195
    str d16, [sp, #19016]
    ldr d16, L4ea4c0b1a8c6_k196
    str d16, [sp, #19024]
    ldr d16, L4ea4c0b1a8c6_k197
    str d16, [sp, #19032]
    ldr d16, L4ea4c0b1a8c6_k198
    str d16, [sp, #19040]
    ldr d16, L4ea4c0b1a8c6_k199
    str d16, [sp, #19048]
    ldr d16, L4ea4c0b1a8c6_k200
    str d16, [sp, #19056]
    ldr d16, L4ea4c0b1a8c6_k201
    str d16, [sp, #19064]
    ldr d16, L4ea4c0b1a8c6_k202
    str d16, [sp, #19072]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #19080]
    ldr d16, L4ea4c0b1a8c6_k204
    str d16, [sp, #19088]
    ldr d16, L4ea4c0b1a8c6_k205
    str d16, [sp, #19096]
    ldr d16, L4ea4c0b1a8c6_k206
    str d16, [sp, #19104]
    ldr d16, L4ea4c0b1a8c6_k207
    str d16, [sp, #19112]
    ldr d16, L4ea4c0b1a8c6_k208
    str d16, [sp, #19120]
    ldr d16, L4ea4c0b1a8c6_k155
    str d16, [sp, #19128]
    ldr d16, L4ea4c0b1a8c6_k209
    str d16, [sp, #19136]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19144]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19152]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19160]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19168]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19176]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19184]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19192]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19200]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19208]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19216]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19224]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19232]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19240]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19248]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19256]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19264]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19272]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19280]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19288]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19296]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19304]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19312]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19320]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19328]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19336]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19344]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19352]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19360]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19368]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19376]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19384]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19392]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19400]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19408]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19416]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19424]
    ldr d16, L4ea4c0b1a8c6_k210
    str d16, [sp, #19432]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #19440]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #19448]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #19456]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #19464]
    ldr d16, L4ea4c0b1a8c6_k212
    str d16, [sp, #19472]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #19480]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #19488]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #19496]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #19504]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #19512]
    ldr d16, L4ea4c0b1a8c6_k2
    str d16, [sp, #19520]
    ldr d16, L4ea4c0b1a8c6_k214
    str d16, [sp, #19528]
    ldr d16, L4ea4c0b1a8c6_k215
    str d16, [sp, #19536]
    ldr d16, L4ea4c0b1a8c6_k216
    str d16, [sp, #19544]
    ldr d16, L4ea4c0b1a8c6_k217
    str d16, [sp, #19552]
    ldr d16, L4ea4c0b1a8c6_k218
    str d16, [sp, #19560]
    ldr d16, L4ea4c0b1a8c6_k219
    str d16, [sp, #19568]
    ldr d16, L4ea4c0b1a8c6_k220
    str d16, [sp, #19576]
    ldr d16, L4ea4c0b1a8c6_k221
    str d16, [sp, #19584]
    ldr d16, L4ea4c0b1a8c6_k222
    str d16, [sp, #19592]
    ldr d16, L4ea4c0b1a8c6_k223
    str d16, [sp, #19600]
    ldr d16, L4ea4c0b1a8c6_k224
    str d16, [sp, #19608]
    ldr d16, L4ea4c0b1a8c6_k225
    str d16, [sp, #19616]
    ldr d16, L4ea4c0b1a8c6_k226
    str d16, [sp, #19624]
    ldr d16, L4ea4c0b1a8c6_k227
    str d16, [sp, #19632]
    ldr d16, L4ea4c0b1a8c6_k228
    str d16, [sp, #19640]
    ldr d16, L4ea4c0b1a8c6_k229
    str d16, [sp, #19648]
    ldr d16, L4ea4c0b1a8c6_k230
    str d16, [sp, #19656]
    ldr d16, L4ea4c0b1a8c6_k231
    str d16, [sp, #19664]
    ldr d16, L4ea4c0b1a8c6_k232
    str d16, [sp, #19672]
    ldr d16, L4ea4c0b1a8c6_k233
    str d16, [sp, #19680]
    ldr d16, L4ea4c0b1a8c6_k234
    str d16, [sp, #19688]
    ldr d16, L4ea4c0b1a8c6_k235
    str d16, [sp, #19696]
    ldr d16, L4ea4c0b1a8c6_k236
    str d16, [sp, #19704]
    ldr d16, L4ea4c0b1a8c6_k237
    str d16, [sp, #19712]
    ldr d16, L4ea4c0b1a8c6_k238
    str d16, [sp, #19720]
    ldr d16, L4ea4c0b1a8c6_k239
    str d16, [sp, #19728]
    ldr d16, L4ea4c0b1a8c6_k240
    str d16, [sp, #19736]
    ldr d16, L4ea4c0b1a8c6_k241
    str d16, [sp, #19744]
    ldr d16, L4ea4c0b1a8c6_k242
    str d16, [sp, #19752]
    ldr d16, L4ea4c0b1a8c6_k243
    str d16, [sp, #19760]
    ldr d16, L4ea4c0b1a8c6_k244
    str d16, [sp, #19768]
    ldr d16, L4ea4c0b1a8c6_k245
    str d16, [sp, #19776]
    ldr d16, L4ea4c0b1a8c6_k246
    str d16, [sp, #19784]
    ldr d16, L4ea4c0b1a8c6_k247
    str d16, [sp, #19792]
    ldr d16, L4ea4c0b1a8c6_k248
    str d16, [sp, #19800]
    ldr d16, L4ea4c0b1a8c6_k249
    str d16, [sp, #19808]
    ldr d16, L4ea4c0b1a8c6_k250
    str d16, [sp, #19816]
    ldr d16, L4ea4c0b1a8c6_k251
    str d16, [sp, #19824]
    ldr d16, L4ea4c0b1a8c6_k252
    str d16, [sp, #19832]
    ldr d16, L4ea4c0b1a8c6_k253
    str d16, [sp, #19840]
    ldr d16, L4ea4c0b1a8c6_k254
    str d16, [sp, #19848]
    ldr d16, L4ea4c0b1a8c6_k255
    str d16, [sp, #19856]
    ldr d16, L4ea4c0b1a8c6_k256
    str d16, [sp, #19864]
    ldr d16, L4ea4c0b1a8c6_k257
    str d16, [sp, #19872]
    ldr d16, L4ea4c0b1a8c6_k258
    str d16, [sp, #19880]
    ldr d16, L4ea4c0b1a8c6_k259
    str d16, [sp, #19888]
    ldr d16, L4ea4c0b1a8c6_k260
    str d16, [sp, #19896]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19904]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19912]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19920]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19928]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19936]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19944]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19952]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19960]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19968]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19976]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19984]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #19992]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20000]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20008]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20016]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20024]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20032]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20040]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20048]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20056]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20064]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20072]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20080]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20088]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20096]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20104]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20112]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20120]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20128]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20136]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20144]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20152]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20160]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20168]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20176]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20184]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20192]
    ldr d16, L4ea4c0b1a8c6_k261
    str d16, [sp, #20200]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20208]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20216]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20224]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20232]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20240]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20248]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20256]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20264]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20272]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20280]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #20288]
    ldr d16, L4ea4c0b1a8c6_k263
    str d16, [sp, #20296]
    ldr d16, L4ea4c0b1a8c6_k264
    str d16, [sp, #20304]
    ldr d16, L4ea4c0b1a8c6_k265
    str d16, [sp, #20312]
    ldr d16, L4ea4c0b1a8c6_k266
    str d16, [sp, #20320]
    ldr d16, L4ea4c0b1a8c6_k167
    str d16, [sp, #20328]
    ldr d16, L4ea4c0b1a8c6_k267
    str d16, [sp, #20336]
    ldr d16, L4ea4c0b1a8c6_k268
    str d16, [sp, #20344]
    ldr d16, L4ea4c0b1a8c6_k269
    str d16, [sp, #20352]
    ldr d16, L4ea4c0b1a8c6_k270
    str d16, [sp, #20360]
    ldr d16, L4ea4c0b1a8c6_k271
    str d16, [sp, #20368]
    ldr d16, L4ea4c0b1a8c6_k272
    str d16, [sp, #20376]
    ldr d16, L4ea4c0b1a8c6_k273
    str d16, [sp, #20384]
    ldr d16, L4ea4c0b1a8c6_k274
    str d16, [sp, #20392]
    ldr d16, L4ea4c0b1a8c6_k275
    str d16, [sp, #20400]
    ldr d16, L4ea4c0b1a8c6_k276
    str d16, [sp, #20408]
    ldr d16, L4ea4c0b1a8c6_k277
    str d16, [sp, #20416]
    ldr d16, L4ea4c0b1a8c6_k278
    str d16, [sp, #20424]
    ldr d16, L4ea4c0b1a8c6_k279
    str d16, [sp, #20432]
    ldr d16, L4ea4c0b1a8c6_k280
    str d16, [sp, #20440]
    ldr d16, L4ea4c0b1a8c6_k281
    str d16, [sp, #20448]
    ldr d16, L4ea4c0b1a8c6_k282
    str d16, [sp, #20456]
    ldr d16, L4ea4c0b1a8c6_k283
    str d16, [sp, #20464]
    ldr d16, L4ea4c0b1a8c6_k284
    str d16, [sp, #20472]
    ldr d16, L4ea4c0b1a8c6_k285
    str d16, [sp, #20480]
    ldr d16, L4ea4c0b1a8c6_k286
    str d16, [sp, #20488]
    ldr d16, L4ea4c0b1a8c6_k287
    str d16, [sp, #20496]
    ldr d16, L4ea4c0b1a8c6_k288
    str d16, [sp, #20504]
    ldr d16, L4ea4c0b1a8c6_k289
    str d16, [sp, #20512]
    ldr d16, L4ea4c0b1a8c6_k290
    str d16, [sp, #20520]
    ldr d16, L4ea4c0b1a8c6_k291
    str d16, [sp, #20528]
    ldr d16, L4ea4c0b1a8c6_k292
    str d16, [sp, #20536]
    ldr d16, L4ea4c0b1a8c6_k293
    str d16, [sp, #20544]
    ldr d16, L4ea4c0b1a8c6_k294
    str d16, [sp, #20552]
    ldr d16, L4ea4c0b1a8c6_k295
    str d16, [sp, #20560]
    ldr d16, L4ea4c0b1a8c6_k296
    str d16, [sp, #20568]
    ldr d16, L4ea4c0b1a8c6_k297
    str d16, [sp, #20576]
    ldr d16, L4ea4c0b1a8c6_k298
    str d16, [sp, #20584]
    ldr d16, L4ea4c0b1a8c6_k299
    str d16, [sp, #20592]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #20600]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #20608]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #20616]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #20624]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #20632]
    ldr d16, L4ea4c0b1a8c6_k300
    str d16, [sp, #20640]
    ldr d16, L4ea4c0b1a8c6_k301
    str d16, [sp, #20648]
    ldr d16, L4ea4c0b1a8c6_k302
    str d16, [sp, #20656]
    ldr d16, L4ea4c0b1a8c6_k303
    str d16, [sp, #20664]
    ldr d16, L4ea4c0b1a8c6_k253
    str d16, [sp, #20672]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20680]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20688]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20696]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20704]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20712]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20720]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20728]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20736]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20744]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20752]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20760]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20768]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20776]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20784]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20792]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20800]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20808]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20816]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20824]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20832]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20840]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20848]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20856]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20864]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20872]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20880]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20888]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20896]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20904]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20912]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20920]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20928]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20936]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20944]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20952]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20960]
    ldr d16, L4ea4c0b1a8c6_k304
    str d16, [sp, #20968]
    ldr d16, L4ea4c0b1a8c6_k305
    str d16, [sp, #20976]
    ldr d16, L4ea4c0b1a8c6_k163
    str d16, [sp, #20984]
    ldr d16, L4ea4c0b1a8c6_k4
    str d16, [sp, #20992]
    ldr d16, L4ea4c0b1a8c6_k306
    str d16, [sp, #21000]
    ldr d16, L4ea4c0b1a8c6_k214
    str d16, [sp, #21008]
    ldr d16, L4ea4c0b1a8c6_k307
    str d16, [sp, #21016]
    ldr d16, L4ea4c0b1a8c6_k308
    str d16, [sp, #21024]
    ldr d16, L4ea4c0b1a8c6_k309
    str d16, [sp, #21032]
    ldr d16, L4ea4c0b1a8c6_k310
    str d16, [sp, #21040]
    ldr d16, L4ea4c0b1a8c6_k311
    str d16, [sp, #21048]
    ldr d16, L4ea4c0b1a8c6_k312
    str d16, [sp, #21056]
    ldr d16, L4ea4c0b1a8c6_k313
    str d16, [sp, #21064]
    ldr d16, L4ea4c0b1a8c6_k314
    str d16, [sp, #21072]
    ldr d16, L4ea4c0b1a8c6_k315
    str d16, [sp, #21080]
    ldr d16, L4ea4c0b1a8c6_k316
    str d16, [sp, #21088]
    ldr d16, L4ea4c0b1a8c6_k317
    str d16, [sp, #21096]
    ldr d16, L4ea4c0b1a8c6_k318
    str d16, [sp, #21104]
    ldr d16, L4ea4c0b1a8c6_k319
    str d16, [sp, #21112]
    ldr d16, L4ea4c0b1a8c6_k320
    str d16, [sp, #21120]
    ldr d16, L4ea4c0b1a8c6_k321
    str d16, [sp, #21128]
    ldr d16, L4ea4c0b1a8c6_k322
    str d16, [sp, #21136]
    ldr d16, L4ea4c0b1a8c6_k323
    str d16, [sp, #21144]
    ldr d16, L4ea4c0b1a8c6_k324
    str d16, [sp, #21152]
    ldr d16, L4ea4c0b1a8c6_k325
    str d16, [sp, #21160]
    ldr d16, L4ea4c0b1a8c6_k326
    str d16, [sp, #21168]
    ldr d16, L4ea4c0b1a8c6_k327
    str d16, [sp, #21176]
    ldr d16, L4ea4c0b1a8c6_k328
    str d16, [sp, #21184]
    ldr d16, L4ea4c0b1a8c6_k329
    str d16, [sp, #21192]
    ldr d16, L4ea4c0b1a8c6_k330
    str d16, [sp, #21200]
    ldr d16, L4ea4c0b1a8c6_k331
    str d16, [sp, #21208]
    ldr d16, L4ea4c0b1a8c6_k332
    str d16, [sp, #21216]
    ldr d16, L4ea4c0b1a8c6_k333
    str d16, [sp, #21224]
    ldr d16, L4ea4c0b1a8c6_k334
    str d16, [sp, #21232]
    ldr d16, L4ea4c0b1a8c6_k335
    str d16, [sp, #21240]
    ldr d16, L4ea4c0b1a8c6_k336
    str d16, [sp, #21248]
    ldr d16, L4ea4c0b1a8c6_k337
    str d16, [sp, #21256]
    ldr d16, L4ea4c0b1a8c6_k338
    str d16, [sp, #21264]
    ldr d16, L4ea4c0b1a8c6_k339
    str d16, [sp, #21272]
    ldr d16, L4ea4c0b1a8c6_k340
    str d16, [sp, #21280]
    ldr d16, L4ea4c0b1a8c6_k341
    str d16, [sp, #21288]
    ldr d16, L4ea4c0b1a8c6_k342
    str d16, [sp, #21296]
    ldr d16, L4ea4c0b1a8c6_k343
    str d16, [sp, #21304]
    ldr d16, L4ea4c0b1a8c6_k97
    str d16, [sp, #21312]
    ldr d16, L4ea4c0b1a8c6_k344
    str d16, [sp, #21320]
    ldr d16, L4ea4c0b1a8c6_k345
    str d16, [sp, #21328]
    ldr d16, L4ea4c0b1a8c6_k346
    str d16, [sp, #21336]
    ldr d16, L4ea4c0b1a8c6_k347
    str d16, [sp, #21344]
    ldr d16, L4ea4c0b1a8c6_k303
    str d16, [sp, #21352]
    ldr d16, L4ea4c0b1a8c6_k348
    str d16, [sp, #21360]
    ldr d16, L4ea4c0b1a8c6_k349
    str d16, [sp, #21368]
    ldr d16, L4ea4c0b1a8c6_k350
    str d16, [sp, #21376]
    ldr d16, L4ea4c0b1a8c6_k350
    str d16, [sp, #21384]
    ldr d16, L4ea4c0b1a8c6_k350
    str d16, [sp, #21392]
    ldr d16, L4ea4c0b1a8c6_k350
    str d16, [sp, #21400]
    ldr d16, L4ea4c0b1a8c6_k351
    str d16, [sp, #21408]
    ldr d16, L4ea4c0b1a8c6_k352
    str d16, [sp, #21416]
    ldr d16, L4ea4c0b1a8c6_k353
    str d16, [sp, #21424]
    ldr d16, L4ea4c0b1a8c6_k354
    str d16, [sp, #21432]
    ldr d16, L4ea4c0b1a8c6_k258
    str d16, [sp, #21440]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21448]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21456]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21464]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21472]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21480]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21488]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21496]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21504]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21512]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21520]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21528]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21536]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21544]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21552]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21560]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21568]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21576]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21584]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21592]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21600]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21608]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21616]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21624]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21632]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21640]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21648]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21656]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21664]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21672]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21680]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21688]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21696]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21704]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21712]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21720]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21728]
    ldr d16, L4ea4c0b1a8c6_k355
    str d16, [sp, #21736]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21744]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21752]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21760]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21768]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21776]
    ldr d16, L4ea4c0b1a8c6_k211
    str d16, [sp, #21784]
    ldr d16, L4ea4c0b1a8c6_k159
    str d16, [sp, #21792]
    ldr d16, L4ea4c0b1a8c6_k159
    str d16, [sp, #21800]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #21808]
    ldr d16, L4ea4c0b1a8c6_k160
    str d16, [sp, #21816]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #21824]
    ldr d16, L4ea4c0b1a8c6_k111
    str d16, [sp, #21832]
    ldr d16, L4ea4c0b1a8c6_k3
    str d16, [sp, #21840]
    ldr d16, L4ea4c0b1a8c6_k54
    str d16, [sp, #21848]
    ldr d16, L4ea4c0b1a8c6_k356
    str d16, [sp, #21856]
    ldr d16, L4ea4c0b1a8c6_k357
    str d16, [sp, #21864]
    ldr d16, L4ea4c0b1a8c6_k358
    str d16, [sp, #21872]
    ldr d16, L4ea4c0b1a8c6_k359
    str d16, [sp, #21880]
    ldr d16, L4ea4c0b1a8c6_k62
    str d16, [sp, #21888]
    ldr d16, L4ea4c0b1a8c6_k360
    str d16, [sp, #21896]
    ldr d16, L4ea4c0b1a8c6_k361
    str d16, [sp, #21904]
    ldr d16, L4ea4c0b1a8c6_k362
    str d16, [sp, #21912]
    ldr d16, L4ea4c0b1a8c6_k363
    str d16, [sp, #21920]
    ldr d16, L4ea4c0b1a8c6_k364
    str d16, [sp, #21928]
    ldr d16, L4ea4c0b1a8c6_k365
    str d16, [sp, #21936]
    ldr d16, L4ea4c0b1a8c6_k366
    str d16, [sp, #21944]
    ldr d16, L4ea4c0b1a8c6_k367
    str d16, [sp, #21952]
    ldr d16, L4ea4c0b1a8c6_k368
    str d16, [sp, #21960]
    ldr d16, L4ea4c0b1a8c6_k369
    str d16, [sp, #21968]
    ldr d16, L4ea4c0b1a8c6_k370
    str d16, [sp, #21976]
    ldr d16, L4ea4c0b1a8c6_k371
    str d16, [sp, #21984]
    ldr d16, L4ea4c0b1a8c6_k372
    str d16, [sp, #21992]
    ldr d16, L4ea4c0b1a8c6_k373
    str d16, [sp, #22000]
    ldr d16, L4ea4c0b1a8c6_k374
    str d16, [sp, #22008]
    ldr d16, L4ea4c0b1a8c6_k375
    str d16, [sp, #22016]
    ldr d16, L4ea4c0b1a8c6_k376
    str d16, [sp, #22024]
    ldr d16, L4ea4c0b1a8c6_k377
    str d16, [sp, #22032]
    ldr d16, L4ea4c0b1a8c6_k378
    str d16, [sp, #22040]
    ldr d16, L4ea4c0b1a8c6_k379
    str d16, [sp, #22048]
    ldr d16, L4ea4c0b1a8c6_k380
    str d16, [sp, #22056]
    ldr d16, L4ea4c0b1a8c6_k381
    str d16, [sp, #22064]
    ldr d16, L4ea4c0b1a8c6_k382
    str d16, [sp, #22072]
    ldr d16, L4ea4c0b1a8c6_k383
    str d16, [sp, #22080]
    ldr d16, L4ea4c0b1a8c6_k384
    str d16, [sp, #22088]
    ldr d16, L4ea4c0b1a8c6_k385
    str d16, [sp, #22096]
    ldr d16, L4ea4c0b1a8c6_k386
    str d16, [sp, #22104]
    ldr d16, L4ea4c0b1a8c6_k387
    str d16, [sp, #22112]
    ldr d16, L4ea4c0b1a8c6_k388
    str d16, [sp, #22120]
    ldr d16, L4ea4c0b1a8c6_k389
    str d16, [sp, #22128]
    ldr d16, L4ea4c0b1a8c6_k390
    str d16, [sp, #22136]
    ldr d16, L4ea4c0b1a8c6_k391
    str d16, [sp, #22144]
    ldr d16, L4ea4c0b1a8c6_k392
    str d16, [sp, #22152]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22160]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22168]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22176]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22184]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22192]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22200]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22208]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22216]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22224]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22232]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22240]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22248]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22256]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22264]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22272]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22280]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22288]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22296]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22304]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22312]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22320]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22328]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22336]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22344]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22352]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22360]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22368]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22376]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22384]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22392]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22400]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22408]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22416]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22424]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22432]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22440]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22448]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22456]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22464]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22472]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22480]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22488]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22496]
    ldr d16, L4ea4c0b1a8c6_k393
    str d16, [sp, #22504]
    ldr d16, L4ea4c0b1a8c6_k394
    str d16, [sp, #22512]
    ldr d16, L4ea4c0b1a8c6_k395
    str d16, [sp, #22520]
    ldr d16, L4ea4c0b1a8c6_k396
    str d16, [sp, #22528]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22536]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22544]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22552]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22560]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22568]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22576]
    ldr d16, L4ea4c0b1a8c6_k397
    str d16, [sp, #22584]
    ldr d16, L4ea4c0b1a8c6_k398
    str d16, [sp, #22592]
    ldr d16, L4ea4c0b1a8c6_k398
    str d16, [sp, #22600]
    ldr d16, L4ea4c0b1a8c6_k106
    str d16, [sp, #22608]
    ldr d16, L4ea4c0b1a8c6_k159
    str d16, [sp, #22616]
    ldr d16, L4ea4c0b1a8c6_k399
    str d16, [sp, #22624]
    ldr d16, L4ea4c0b1a8c6_k400
    str d16, [sp, #22632]
    ldr d16, L4ea4c0b1a8c6_k311
    str d16, [sp, #22640]
    ldr d16, L4ea4c0b1a8c6_k401
    str d16, [sp, #22648]
    ldr d16, L4ea4c0b1a8c6_k402
    str d16, [sp, #22656]
    ldr d16, L4ea4c0b1a8c6_k403
    str d16, [sp, #22664]
    ldr d16, L4ea4c0b1a8c6_k404
    str d16, [sp, #22672]
    ldr d16, L4ea4c0b1a8c6_k405
    str d16, [sp, #22680]
    ldr d16, L4ea4c0b1a8c6_k406
    str d16, [sp, #22688]
    ldr d16, L4ea4c0b1a8c6_k407
    str d16, [sp, #22696]
    ldr d16, L4ea4c0b1a8c6_k408
    str d16, [sp, #22704]
    ldr d16, L4ea4c0b1a8c6_k409
    str d16, [sp, #22712]
    ldr d16, L4ea4c0b1a8c6_k410
    str d16, [sp, #22720]
    ldr d16, L4ea4c0b1a8c6_k411
    str d16, [sp, #22728]
    ldr d16, L4ea4c0b1a8c6_k412
    str d16, [sp, #22736]
    ldr d16, L4ea4c0b1a8c6_k413
    str d16, [sp, #22744]
    ldr d16, L4ea4c0b1a8c6_k414
    str d16, [sp, #22752]
    ldr d16, L4ea4c0b1a8c6_k415
    str d16, [sp, #22760]
    ldr d16, L4ea4c0b1a8c6_k416
    str d16, [sp, #22768]
    ldr d16, L4ea4c0b1a8c6_k417
    str d16, [sp, #22776]
    ldr d16, L4ea4c0b1a8c6_k418
    str d16, [sp, #22784]
    ldr d16, L4ea4c0b1a8c6_k419
    str d16, [sp, #22792]
    ldr d16, L4ea4c0b1a8c6_k420
    str d16, [sp, #22800]
    ldr d16, L4ea4c0b1a8c6_k421
    str d16, [sp, #22808]
    ldr d16, L4ea4c0b1a8c6_k422
    str d16, [sp, #22816]
    ldr d16, L4ea4c0b1a8c6_k423
    str d16, [sp, #22824]
    ldr d16, L4ea4c0b1a8c6_k424
    str d16, [sp, #22832]
    ldr d16, L4ea4c0b1a8c6_k425
    str d16, [sp, #22840]
    ldr d16, L4ea4c0b1a8c6_k426
    str d16, [sp, #22848]
    ldr d16, L4ea4c0b1a8c6_k427
    str d16, [sp, #22856]
    ldr d16, L4ea4c0b1a8c6_k428
    str d16, [sp, #22864]
    ldr d16, L4ea4c0b1a8c6_k429
    str d16, [sp, #22872]
    ldr d16, L4ea4c0b1a8c6_k430
    str d16, [sp, #22880]
    ldr d16, L4ea4c0b1a8c6_k430
    str d16, [sp, #22888]
    ldr d16, L4ea4c0b1a8c6_k431
    str d16, [sp, #22896]
    ldr d16, L4ea4c0b1a8c6_k432
    str d16, [sp, #22904]
    ldr d16, L4ea4c0b1a8c6_k433
    str d16, [sp, #22912]
    ldr d16, L4ea4c0b1a8c6_k434
    str d16, [sp, #22920]
    ldr d16, L4ea4c0b1a8c6_k435
    str d16, [sp, #22928]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22936]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22944]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22952]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22960]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22968]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22976]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22984]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #22992]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23000]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23008]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23016]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23024]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23032]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23040]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23048]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23056]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23064]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23072]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23080]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23088]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23096]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23104]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23112]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23120]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23128]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23136]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23144]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23152]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23160]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23168]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23176]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23184]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23192]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23200]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23208]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23216]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23224]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23232]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23240]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23248]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23256]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23264]
    ldr d16, L4ea4c0b1a8c6_k436
    str d16, [sp, #23272]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23280]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23288]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23296]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23304]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23312]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23320]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23328]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23336]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23344]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23352]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23360]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23368]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23376]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23384]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23392]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23400]
    ldr d16, L4ea4c0b1a8c6_k437
    str d16, [sp, #23408]
    ldr d16, L4ea4c0b1a8c6_k399
    str d16, [sp, #23416]
    ldr d16, L4ea4c0b1a8c6_k438
    str d16, [sp, #23424]
    ldr d16, L4ea4c0b1a8c6_k439
    str d16, [sp, #23432]
    ldr d16, L4ea4c0b1a8c6_k440
    str d16, [sp, #23440]
    ldr d16, L4ea4c0b1a8c6_k441
    str d16, [sp, #23448]
    ldr d16, L4ea4c0b1a8c6_k262
    str d16, [sp, #23456]
    ldr d16, L4ea4c0b1a8c6_k264
    str d16, [sp, #23464]
    ldr d16, L4ea4c0b1a8c6_k442
    str d16, [sp, #23472]
    ldr d16, L4ea4c0b1a8c6_k443
    str d16, [sp, #23480]
    ldr d16, L4ea4c0b1a8c6_k444
    str d16, [sp, #23488]
    ldr d16, L4ea4c0b1a8c6_k445
    str d16, [sp, #23496]
    ldr d16, L4ea4c0b1a8c6_k446
    str d16, [sp, #23504]
    ldr d16, L4ea4c0b1a8c6_k447
    str d16, [sp, #23512]
    ldr d16, L4ea4c0b1a8c6_k448
    str d16, [sp, #23520]
    ldr d16, L4ea4c0b1a8c6_k449
    str d16, [sp, #23528]
    ldr d16, L4ea4c0b1a8c6_k450
    str d16, [sp, #23536]
    ldr d16, L4ea4c0b1a8c6_k451
    str d16, [sp, #23544]
    ldr d16, L4ea4c0b1a8c6_k452
    str d16, [sp, #23552]
    ldr d16, L4ea4c0b1a8c6_k453
    str d16, [sp, #23560]
    ldr d16, L4ea4c0b1a8c6_k454
    str d16, [sp, #23568]
    ldr d16, L4ea4c0b1a8c6_k455
    str d16, [sp, #23576]
    ldr d16, L4ea4c0b1a8c6_k456
    str d16, [sp, #23584]
    ldr d16, L4ea4c0b1a8c6_k457
    str d16, [sp, #23592]
    ldr d16, L4ea4c0b1a8c6_k458
    str d16, [sp, #23600]
    ldr d16, L4ea4c0b1a8c6_k459
    str d16, [sp, #23608]
    ldr d16, L4ea4c0b1a8c6_k460
    str d16, [sp, #23616]
    ldr d16, L4ea4c0b1a8c6_k461
    str d16, [sp, #23624]
    ldr d16, L4ea4c0b1a8c6_k462
    str d16, [sp, #23632]
    ldr d16, L4ea4c0b1a8c6_k463
    str d16, [sp, #23640]
    ldr d16, L4ea4c0b1a8c6_k464
    str d16, [sp, #23648]
    ldr d16, L4ea4c0b1a8c6_k465
    str d16, [sp, #23656]
    ldr d16, L4ea4c0b1a8c6_k466
    str d16, [sp, #23664]
    ldr d16, L4ea4c0b1a8c6_k467
    str d16, [sp, #23672]
    ldr d16, L4ea4c0b1a8c6_k468
    str d16, [sp, #23680]
    ldr d16, L4ea4c0b1a8c6_k209
    str d16, [sp, #23688]
    ldr d16, L4ea4c0b1a8c6_k469
    str d16, [sp, #23696]
    ldr d16, L4ea4c0b1a8c6_k470
    str d16, [sp, #23704]
    ldr d16, L4ea4c0b1a8c6_k354
    str d16, [sp, #23712]
    ldr d16, L4ea4c0b1a8c6_k471
    str d16, [sp, #23720]
    ldr d16, L4ea4c0b1a8c6_k472
    str d16, [sp, #23728]
    ldr d16, L4ea4c0b1a8c6_k473
    str d16, [sp, #23736]
    ldr d16, L4ea4c0b1a8c6_k474
    str d16, [sp, #23744]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23752]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23760]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23768]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23776]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23784]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23792]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23800]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23808]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23816]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23824]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23832]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23840]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23848]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23856]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23864]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23872]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23880]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23888]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23896]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23904]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23912]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23920]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23928]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23936]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23944]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23952]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23960]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23968]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23976]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23984]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #23992]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24000]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24008]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24016]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24024]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24032]
    ldr d16, L4ea4c0b1a8c6_k475
    str d16, [sp, #24040]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24048]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24056]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24064]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24072]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24080]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24088]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24096]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24104]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24112]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24120]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24128]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24136]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24144]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24152]
    ldr d16, L4ea4c0b1a8c6_k105
    str d16, [sp, #24160]
    ldr d16, L4ea4c0b1a8c6_k106
    str d16, [sp, #24168]
    ldr d16, L4ea4c0b1a8c6_k157
    str d16, [sp, #24176]
    ldr d16, L4ea4c0b1a8c6_k107
    str d16, [sp, #24184]
    ldr d16, L4ea4c0b1a8c6_k158
    str d16, [sp, #24192]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #24200]
    ldr d16, L4ea4c0b1a8c6_k160
    str d16, [sp, #24208]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #24216]
    ldr d16, L4ea4c0b1a8c6_k439
    str d16, [sp, #24224]
    ldr d16, L4ea4c0b1a8c6_k476
    str d16, [sp, #24232]
    ldr d16, L4ea4c0b1a8c6_k310
    str d16, [sp, #24240]
    ldr d16, L4ea4c0b1a8c6_k477
    str d16, [sp, #24248]
    ldr d16, L4ea4c0b1a8c6_k478
    str d16, [sp, #24256]
    ldr d16, L4ea4c0b1a8c6_k479
    str d16, [sp, #24264]
    ldr d16, L4ea4c0b1a8c6_k480
    str d16, [sp, #24272]
    ldr d16, L4ea4c0b1a8c6_k481
    str d16, [sp, #24280]
    ldr d16, L4ea4c0b1a8c6_k482
    str d16, [sp, #24288]
    ldr d16, L4ea4c0b1a8c6_k483
    str d16, [sp, #24296]
    ldr d16, L4ea4c0b1a8c6_k484
    str d16, [sp, #24304]
    ldr d16, L4ea4c0b1a8c6_k485
    str d16, [sp, #24312]
    ldr d16, L4ea4c0b1a8c6_k486
    str d16, [sp, #24320]
    ldr d16, L4ea4c0b1a8c6_k487
    str d16, [sp, #24328]
    ldr d16, L4ea4c0b1a8c6_k488
    str d16, [sp, #24336]
    ldr d16, L4ea4c0b1a8c6_k489
    str d16, [sp, #24344]
    ldr d16, L4ea4c0b1a8c6_k490
    str d16, [sp, #24352]
    ldr d16, L4ea4c0b1a8c6_k491
    str d16, [sp, #24360]
    ldr d16, L4ea4c0b1a8c6_k492
    str d16, [sp, #24368]
    ldr d16, L4ea4c0b1a8c6_k493
    str d16, [sp, #24376]
    ldr d16, L4ea4c0b1a8c6_k494
    str d16, [sp, #24384]
    ldr d16, L4ea4c0b1a8c6_k495
    str d16, [sp, #24392]
    ldr d16, L4ea4c0b1a8c6_k496
    str d16, [sp, #24400]
    ldr d16, L4ea4c0b1a8c6_k497
    str d16, [sp, #24408]
    ldr d16, L4ea4c0b1a8c6_k498
    str d16, [sp, #24416]
    ldr d16, L4ea4c0b1a8c6_k499
    str d16, [sp, #24424]
    ldr d16, L4ea4c0b1a8c6_k500
    str d16, [sp, #24432]
    ldr d16, L4ea4c0b1a8c6_k501
    str d16, [sp, #24440]
    ldr d16, L4ea4c0b1a8c6_k502
    str d16, [sp, #24448]
    ldr d16, L4ea4c0b1a8c6_k503
    str d16, [sp, #24456]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24464]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24472]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24480]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24488]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24496]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24504]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24512]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24520]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24528]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24536]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24544]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24552]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24560]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24568]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24576]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24584]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24592]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24600]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24608]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24616]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24624]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24632]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24640]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24648]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24656]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24664]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24672]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24680]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24688]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24696]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24704]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24712]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24720]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24728]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24736]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24744]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24752]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24760]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24768]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24776]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24784]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24792]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24800]
    ldr d16, L4ea4c0b1a8c6_k504
    str d16, [sp, #24808]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24816]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24824]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24832]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24840]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24848]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24856]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24864]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24872]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24880]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24888]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24896]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24904]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24912]
    ldr d16, L4ea4c0b1a8c6_k104
    str d16, [sp, #24920]
    ldr d16, L4ea4c0b1a8c6_k398
    str d16, [sp, #24928]
    ldr d16, L4ea4c0b1a8c6_k106
    str d16, [sp, #24936]
    ldr d16, L4ea4c0b1a8c6_k157
    str d16, [sp, #24944]
    ldr d16, L4ea4c0b1a8c6_k107
    str d16, [sp, #24952]
    ldr d16, L4ea4c0b1a8c6_k158
    str d16, [sp, #24960]
    ldr d16, L4ea4c0b1a8c6_k108
    str d16, [sp, #24968]
    ldr d16, L4ea4c0b1a8c6_k160
    str d16, [sp, #24976]
    ldr d16, L4ea4c0b1a8c6_k213
    str d16, [sp, #24984]
    ldr d16, L4ea4c0b1a8c6_k439
    str d16, [sp, #24992]
    ldr d16, L4ea4c0b1a8c6_k505
    str d16, [sp, #25000]
    ldr d16, L4ea4c0b1a8c6_k55
    str d16, [sp, #25008]
    ldr d16, L4ea4c0b1a8c6_k314
    str d16, [sp, #25016]
    ldr d16, L4ea4c0b1a8c6_k506
    str d16, [sp, #25024]
    ldr d16, L4ea4c0b1a8c6_k507
    str d16, [sp, #25032]
    ldr d16, L4ea4c0b1a8c6_k508
    str d16, [sp, #25040]
    ldr d16, L4ea4c0b1a8c6_k509
    str d16, [sp, #25048]
    ldr d16, L4ea4c0b1a8c6_k510
    str d16, [sp, #25056]
    ldr d16, L4ea4c0b1a8c6_k511
    str d16, [sp, #25064]
    ldr d16, L4ea4c0b1a8c6_k512
    str d16, [sp, #25072]
    ldr d16, L4ea4c0b1a8c6_k513
    str d16, [sp, #25080]
    ldr d16, L4ea4c0b1a8c6_k514
    str d16, [sp, #25088]
    ldr d16, L4ea4c0b1a8c6_k515
    str d16, [sp, #25096]
    ldr d16, L4ea4c0b1a8c6_k516
    str d16, [sp, #25104]
    ldr d16, L4ea4c0b1a8c6_k517
    str d16, [sp, #25112]
    ldr d16, L4ea4c0b1a8c6_k518
    str d16, [sp, #25120]
    ldr d16, L4ea4c0b1a8c6_k519
    str d16, [sp, #25128]
    ldr d16, L4ea4c0b1a8c6_k520
    str d16, [sp, #25136]
    ldr d16, L4ea4c0b1a8c6_k521
    str d16, [sp, #25144]
    ldr d16, L4ea4c0b1a8c6_k522
    str d16, [sp, #25152]
    ldr d16, L4ea4c0b1a8c6_k523
    str d16, [sp, #25160]
    ldr d16, L4ea4c0b1a8c6_k524
    str d16, [sp, #25168]
    ldr d16, L4ea4c0b1a8c6_k525
    str d16, [sp, #25176]
    ldr d16, L4ea4c0b1a8c6_k526
    str d16, [sp, #25184]
    ldr d16, L4ea4c0b1a8c6_k527
    str d16, [sp, #25192]
    ldr d16, L4ea4c0b1a8c6_k528
    str d16, [sp, #25200]
    ldr d16, L4ea4c0b1a8c6_k529
    str d16, [sp, #25208]
    ldr d16, L4ea4c0b1a8c6_k530
    str d16, [sp, #25216]
    ldr d16, L4ea4c0b1a8c6_k531
    str d16, [sp, #25224]
    ldr d16, L4ea4c0b1a8c6_k532
    str d16, [sp, #25232]
    ldr d16, L4ea4c0b1a8c6_k533
    str d16, [sp, #25240]
    ldr d16, L4ea4c0b1a8c6_k203
    str d16, [sp, #25248]
    ldr d16, L4ea4c0b1a8c6_k534
    str d16, [sp, #25256]
    ldr d16, L4ea4c0b1a8c6_k535
    str d16, [sp, #25264]
    ldr d16, L4ea4c0b1a8c6_k536
    str d16, [sp, #25272]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25280]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25288]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25296]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25304]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25312]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25320]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25328]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25336]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25344]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25352]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25360]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25368]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25376]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25384]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25392]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25400]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25408]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25416]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25424]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25432]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25440]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25448]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25456]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25464]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25472]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25480]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25488]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25496]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25504]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25512]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25520]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25528]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25536]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25544]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25552]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25560]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25568]
    ldr d16, L4ea4c0b1a8c6_k537
    str d16, [sp, #25576]
    fmov d16, xzr
    str d16, [sp, #25584]
    fmov d16, xzr
    str d16, [sp, #25592]
    fmov d16, xzr
    str d16, [sp, #25600]
    fmov d16, xzr
    str d16, [sp, #25608]
    fmov d16, xzr
    str d16, [sp, #25616]
    fmov d16, xzr
    str d16, [sp, #25624]
    fmov d16, xzr
    str d16, [sp, #25632]
    fmov d16, xzr
    str d16, [sp, #25640]
    fmov d16, xzr
    str d16, [sp, #25648]
    fmov d16, xzr
    str d16, [sp, #25656]
    fmov d16, xzr
    str d16, [sp, #25664]
    fmov d16, xzr
    str d16, [sp, #25672]
    fmov d16, xzr
    str d16, [sp, #25680]
    fmov d16, xzr
    str d16, [sp, #25688]
    fmov d16, xzr
    str d16, [sp, #25696]
    fmov d16, xzr
    str d16, [sp, #25704]
    fmov d16, xzr
    str d16, [sp, #25712]
    fmov d16, xzr
    str d16, [sp, #25720]
    fmov d16, xzr
    str d16, [sp, #25728]
    fmov d16, xzr
    str d16, [sp, #25736]
    fmov d16, xzr
    str d16, [sp, #25744]
    fmov d16, xzr
    str d16, [sp, #25752]
    fmov d16, xzr
    str d16, [sp, #25760]
    fmov d16, xzr
    str d16, [sp, #25768]
    fmov d16, xzr
    str d16, [sp, #25776]
    fmov d16, xzr
    str d16, [sp, #25784]
    fmov d16, xzr
    str d16, [sp, #25792]
    fmov d16, xzr
    str d16, [sp, #25800]
    fmov d16, xzr
    str d16, [sp, #25808]
    fmov d16, xzr
    str d16, [sp, #25816]
    fmov d16, xzr
    str d16, [sp, #25824]
    fmov d16, xzr
    str d16, [sp, #25832]
    fmov d16, xzr
    str d16, [sp, #25840]
    fmov d16, xzr
    str d16, [sp, #25848]
    fmov d16, xzr
    str d16, [sp, #25856]
    fmov d16, xzr
    str d16, [sp, #25864]
    fmov d16, xzr
    str d16, [sp, #25872]
    fmov d16, xzr
    str d16, [sp, #25880]
    fmov d16, xzr
    str d16, [sp, #25888]
    fmov d16, xzr
    str d16, [sp, #25896]
    fmov d16, xzr
    str d16, [sp, #25904]
    fmov d16, xzr
    str d16, [sp, #25912]
    fmov d16, xzr
    str d16, [sp, #25920]
    fmov d16, xzr
    str d16, [sp, #25928]
    fmov d16, xzr
    str d16, [sp, #25936]
    fmov d16, xzr
    str d16, [sp, #25944]
    fmov d16, xzr
    str d16, [sp, #25952]
    fmov d16, xzr
    str d16, [sp, #25960]
    fmov d16, xzr
    str d16, [sp, #25968]
    fmov d16, xzr
    str d16, [sp, #25976]
    fmov d16, xzr
    str d16, [sp, #25984]
    fmov d16, xzr
    str d16, [sp, #25992]
    fmov d16, xzr
    str d16, [sp, #26000]
    fmov d16, xzr
    str d16, [sp, #26008]
    fmov d16, xzr
    str d16, [sp, #26016]
    fmov d16, xzr
    str d16, [sp, #26024]
    fmov d16, xzr
    str d16, [sp, #26032]
    fmov d16, xzr
    str d16, [sp, #26040]
    fmov d16, xzr
    str d16, [sp, #26048]
    fmov d16, xzr
    str d16, [sp, #26056]
    fmov d16, xzr
    str d16, [sp, #26064]
    fmov d16, xzr
    str d16, [sp, #26072]
    fmov d16, xzr
    str d16, [sp, #26080]
    fmov d16, xzr
    str d16, [sp, #26088]
    fmov d16, xzr
    str d16, [sp, #26096]
    fmov d16, xzr
    str d16, [sp, #26104]
    fmov d16, xzr
    str d16, [sp, #26112]
    fmov d16, xzr
    str d16, [sp, #26120]
    fmov d16, xzr
    str d16, [sp, #26128]
    fmov d16, xzr
    str d16, [sp, #26136]
    fmov d16, xzr
    str d16, [sp, #26144]
    fmov d16, xzr
    str d16, [sp, #26152]
    fmov d16, xzr
    str d16, [sp, #26160]
    fmov d16, xzr
    str d16, [sp, #26168]
    fmov d16, xzr
    str d16, [sp, #26176]
    fmov d16, xzr
    str d16, [sp, #26184]
    fmov d16, xzr
    str d16, [sp, #26192]
    fmov d16, xzr
    str d16, [sp, #26200]
    fmov d16, xzr
    str d16, [sp, #26208]
    fmov d16, xzr
    str d16, [sp, #26216]
    fmov d16, xzr
    str d16, [sp, #26224]
    fmov d16, xzr
    str d16, [sp, #26232]
    fmov d16, xzr
    str d16, [sp, #26240]
    fmov d16, xzr
    str d16, [sp, #26248]
    fmov d16, xzr
    str d16, [sp, #26256]
    fmov d16, xzr
    str d16, [sp, #26264]
    fmov d16, xzr
    str d16, [sp, #26272]
    fmov d16, xzr
    str d16, [sp, #26280]
    fmov d16, xzr
    str d16, [sp, #26288]
    fmov d16, xzr
    str d16, [sp, #26296]
    fmov d16, xzr
    str d16, [sp, #26304]
    fmov d16, xzr
    str d16, [sp, #26312]
    fmov d16, xzr
    str d16, [sp, #26320]
    fmov d16, xzr
    str d16, [sp, #26328]
    fmov d16, xzr
    str d16, [sp, #26336]
    fmov d16, xzr
    str d16, [sp, #26344]
    fmov d16, xzr
    str d16, [sp, #26352]
    fmov d16, xzr
    str d16, [sp, #26360]
    fmov d16, xzr
    str d16, [sp, #26368]
    fmov d16, xzr
    str d16, [sp, #26376]
    fmov d16, xzr
    str d16, [sp, #26384]
    fmov d16, xzr
    str d16, [sp, #26392]
    fmov d16, xzr
    str d16, [sp, #26400]
    fmov d16, xzr
    str d16, [sp, #26408]
    fmov d16, xzr
    str d16, [sp, #26416]
    fmov d16, xzr
    str d16, [sp, #26424]
    fmov d16, xzr
    str d16, [sp, #26432]
    fmov d16, xzr
    str d16, [sp, #26440]
    fmov d16, xzr
    str d16, [sp, #26448]
    fmov d16, xzr
    str d16, [sp, #26456]
    fmov d16, xzr
    str d16, [sp, #26464]
    fmov d16, xzr
    str d16, [sp, #26472]
    fmov d16, xzr
    str d16, [sp, #26480]
    fmov d16, xzr
    str d16, [sp, #26488]
    fmov d16, xzr
    str d16, [sp, #26496]
    fmov d16, xzr
    str d16, [sp, #26504]
    fmov d16, xzr
    str d16, [sp, #26512]
    fmov d16, xzr
    str d16, [sp, #26520]
    fmov d16, xzr
    str d16, [sp, #26528]
    fmov d16, xzr
    str d16, [sp, #26536]
    fmov d16, xzr
    str d16, [sp, #26544]
    fmov d16, xzr
    str d16, [sp, #26552]
    fmov d16, xzr
    str d16, [sp, #26560]
    fmov d16, xzr
    str d16, [sp, #26568]
    fmov d16, xzr
    str d16, [sp, #26576]
    fmov d16, xzr
    str d16, [sp, #26584]
    fmov d16, xzr
    str d16, [sp, #26592]
    fmov d16, xzr
    str d16, [sp, #26600]
    fmov d16, xzr
    str d16, [sp, #26608]
    fmov d16, xzr
    str d16, [sp, #26616]
    fmov d16, xzr
    str d16, [sp, #26624]
    fmov d16, xzr
    str d16, [sp, #26632]
    fmov d16, xzr
    str d16, [sp, #26640]
    fmov d16, xzr
    str d16, [sp, #26648]
    fmov d16, xzr
    str d16, [sp, #26656]
    fmov d16, xzr
    str d16, [sp, #26664]
    fmov d16, xzr
    str d16, [sp, #26672]
    fmov d16, xzr
    str d16, [sp, #26680]
    fmov d16, xzr
    str d16, [sp, #26688]
    fmov d16, xzr
    str d16, [sp, #26696]
    fmov d16, xzr
    str d16, [sp, #26704]
    fmov d16, xzr
    str d16, [sp, #26712]
    fmov d16, xzr
    str d16, [sp, #26720]
    fmov d16, xzr
    str d16, [sp, #26728]
    fmov d16, xzr
    str d16, [sp, #26736]
    fmov d16, xzr
    str d16, [sp, #26744]
    fmov d16, xzr
    str d16, [sp, #26752]
    fmov d16, xzr
    str d16, [sp, #26760]
    fmov d16, xzr
    str d16, [sp, #26768]
    fmov d16, xzr
    str d16, [sp, #26776]
    fmov d16, xzr
    str d16, [sp, #26784]
    fmov d16, xzr
    str d16, [sp, #26792]
    fmov d16, xzr
    str d16, [sp, #26800]
    fmov d16, xzr
    str d16, [sp, #26808]
    fmov d16, xzr
    str d16, [sp, #26816]
    fmov d16, xzr
    str d16, [sp, #26824]
    fmov d16, xzr
    str d16, [sp, #26832]
    fmov d16, xzr
    str d16, [sp, #26840]
    fmov d16, xzr
    str d16, [sp, #26848]
    fmov d16, xzr
    str d16, [sp, #26856]
    fmov d16, xzr
    str d16, [sp, #26864]
    fmov d16, xzr
    str d16, [sp, #26872]
    fmov d16, xzr
    str d16, [sp, #26880]
    fmov d16, xzr
    str d16, [sp, #26888]
    fmov d16, xzr
    str d16, [sp, #26896]
    fmov d16, xzr
    str d16, [sp, #26904]
    fmov d16, xzr
    str d16, [sp, #26912]
    fmov d16, xzr
    str d16, [sp, #26920]
    fmov d16, xzr
    str d16, [sp, #26928]
    fmov d16, xzr
    str d16, [sp, #26936]
    fmov d16, xzr
    str d16, [sp, #26944]
    fmov d16, xzr
    str d16, [sp, #26952]
    fmov d16, xzr
    str d16, [sp, #26960]
    fmov d16, xzr
    str d16, [sp, #26968]
    fmov d16, xzr
    str d16, [sp, #26976]
    fmov d16, xzr
    str d16, [sp, #26984]
    fmov d16, xzr
    str d16, [sp, #26992]
    fmov d16, xzr
    str d16, [sp, #27000]
    fmov d16, xzr
    str d16, [sp, #27008]
    fmov d16, xzr
    str d16, [sp, #27016]
    fmov d16, xzr
    str d16, [sp, #27024]
    fmov d16, xzr
    str d16, [sp, #27032]
    fmov d16, xzr
    str d16, [sp, #27040]
    fmov d16, xzr
    str d16, [sp, #27048]
    fmov d16, xzr
    str d16, [sp, #27056]
    fmov d16, xzr
    str d16, [sp, #27064]
    fmov d16, xzr
    str d16, [sp, #27072]
    fmov d16, xzr
    str d16, [sp, #27080]
    fmov d16, xzr
    str d16, [sp, #27088]
    fmov d16, xzr
    str d16, [sp, #27096]
    fmov d16, xzr
    str d16, [sp, #27104]
    fmov d16, xzr
    str d16, [sp, #27112]
    fmov d16, xzr
    str d16, [sp, #27120]
    fmov d16, xzr
    str d16, [sp, #27128]
    fmov d16, xzr
    str d16, [sp, #27136]
    fmov d16, xzr
    str d16, [sp, #27144]
    fmov d16, xzr
    str d16, [sp, #27152]
    fmov d16, xzr
    str d16, [sp, #27160]
    fmov d16, xzr
    str d16, [sp, #27168]
    fmov d16, xzr
    str d16, [sp, #27176]
    fmov d16, xzr
    str d16, [sp, #27184]
    fmov d16, xzr
    str d16, [sp, #27192]
    fmov d16, xzr
    str d16, [sp, #27200]
    fmov d16, xzr
    str d16, [sp, #27208]
    fmov d16, xzr
    str d16, [sp, #27216]
    fmov d16, xzr
    str d16, [sp, #27224]
    fmov d16, xzr
    str d16, [sp, #27232]
    fmov d16, xzr
    str d16, [sp, #27240]
    fmov d16, xzr
    str d16, [sp, #27248]
    fmov d16, xzr
    str d16, [sp, #27256]
    fmov d16, xzr
    str d16, [sp, #27264]
    fmov d16, xzr
    str d16, [sp, #27272]
    fmov d16, xzr
    str d16, [sp, #27280]
    fmov d16, xzr
    str d16, [sp, #27288]
    fmov d16, xzr
    str d16, [sp, #27296]
    fmov d16, xzr
    str d16, [sp, #27304]
    fmov d16, xzr
    str d16, [sp, #27312]
    fmov d16, xzr
    str d16, [sp, #27320]
    fmov d16, xzr
    str d16, [sp, #27328]
    fmov d16, xzr
    str d16, [sp, #27336]
    fmov d16, xzr
    str d16, [sp, #27344]
    fmov d16, xzr
    str d16, [sp, #27352]
    fmov d16, xzr
    str d16, [sp, #27360]
    fmov d16, xzr
    str d16, [sp, #27368]
    fmov d16, xzr
    str d16, [sp, #27376]
    fmov d16, xzr
    str d16, [sp, #27384]
    fmov d16, xzr
    str d16, [sp, #27392]
    fmov d16, xzr
    str d16, [sp, #27400]
    fmov d16, xzr
    str d16, [sp, #27408]
    fmov d16, xzr
    str d16, [sp, #27416]
    fmov d16, xzr
    str d16, [sp, #27424]
    fmov d16, xzr
    str d16, [sp, #27432]
    fmov d16, xzr
    str d16, [sp, #27440]
    fmov d16, xzr
    str d16, [sp, #27448]
    fmov d16, xzr
    str d16, [sp, #27456]
    fmov d16, xzr
    str d16, [sp, #27464]
    fmov d16, xzr
    str d16, [sp, #27472]
    fmov d16, xzr
    str d16, [sp, #27480]
    fmov d16, xzr
    str d16, [sp, #27488]
    fmov d16, xzr
    str d16, [sp, #27496]
    fmov d16, xzr
    str d16, [sp, #27504]
    fmov d16, xzr
    str d16, [sp, #27512]
    fmov d16, xzr
    str d16, [sp, #27520]
    fmov d16, xzr
    str d16, [sp, #27528]
    fmov d16, xzr
    str d16, [sp, #27536]
    fmov d16, xzr
    str d16, [sp, #27544]
    fmov d16, xzr
    str d16, [sp, #27552]
    fmov d16, xzr
    str d16, [sp, #27560]
    fmov d16, xzr
    str d16, [sp, #27568]
    fmov d16, xzr
    str d16, [sp, #27576]
    fmov d16, xzr
    str d16, [sp, #27584]
    fmov d16, xzr
    str d16, [sp, #27592]
    fmov d16, xzr
    str d16, [sp, #27600]
    fmov d16, xzr
    str d16, [sp, #27608]
    fmov d16, xzr
    str d16, [sp, #27616]
    fmov d16, xzr
    str d16, [sp, #27624]
    fmov d16, xzr
    str d16, [sp, #27632]
    fmov d16, xzr
    str d16, [sp, #27640]
    fmov d16, xzr
    str d16, [sp, #27648]
    fmov d16, xzr
    str d16, [sp, #27656]
    fmov d16, xzr
    str d16, [sp, #27664]
    fmov d16, xzr
    str d16, [sp, #27672]
    fmov d16, xzr
    str d16, [sp, #27680]
    fmov d16, xzr
    str d16, [sp, #27688]
    fmov d16, xzr
    str d16, [sp, #27696]
    fmov d16, xzr
    str d16, [sp, #27704]
    fmov d16, xzr
    str d16, [sp, #27712]
    fmov d16, xzr
    str d16, [sp, #27720]
    fmov d16, xzr
    str d16, [sp, #27728]
    fmov d16, xzr
    str d16, [sp, #27736]
    fmov d16, xzr
    str d16, [sp, #27744]
    fmov d16, xzr
    str d16, [sp, #27752]
    fmov d16, xzr
    str d16, [sp, #27760]
    fmov d16, xzr
    str d16, [sp, #27768]
    fmov d16, xzr
    str d16, [sp, #27776]
    fmov d16, xzr
    str d16, [sp, #27784]
    fmov d16, xzr
    str d16, [sp, #27792]
    fmov d16, xzr
    str d16, [sp, #27800]
    fmov d16, xzr
    str d16, [sp, #27808]
    fmov d16, xzr
    str d16, [sp, #27816]
    fmov d16, xzr
    str d16, [sp, #27824]
    fmov d16, xzr
    str d16, [sp, #27832]
    fmov d16, xzr
    str d16, [sp, #27840]
    fmov d16, xzr
    str d16, [sp, #27848]
    fmov d16, xzr
    str d16, [sp, #27856]
    fmov d16, xzr
    str d16, [sp, #27864]
    fmov d16, xzr
    str d16, [sp, #27872]
    fmov d16, xzr
    str d16, [sp, #27880]
    fmov d16, xzr
    str d16, [sp, #27888]
    fmov d16, xzr
    str d16, [sp, #27896]
    fmov d16, xzr
    str d16, [sp, #27904]
    fmov d16, xzr
    str d16, [sp, #27912]
    fmov d16, xzr
    str d16, [sp, #27920]
    fmov d16, xzr
    str d16, [sp, #27928]
    fmov d16, xzr
    str d16, [sp, #27936]
    fmov d16, xzr
    str d16, [sp, #27944]
    fmov d16, xzr
    str d16, [sp, #27952]
    fmov d16, xzr
    str d16, [sp, #27960]
    fmov d16, xzr
    str d16, [sp, #27968]
    fmov d16, xzr
    str d16, [sp, #27976]
    fmov d16, xzr
    str d16, [sp, #27984]
    fmov d16, xzr
    str d16, [sp, #27992]
    fmov d16, xzr
    str d16, [sp, #28000]
    fmov d16, xzr
    str d16, [sp, #28008]
    fmov d16, xzr
    str d16, [sp, #28016]
    fmov d16, xzr
    str d16, [sp, #28024]
    fmov d16, xzr
    str d16, [sp, #28032]
    fmov d16, xzr
    str d16, [sp, #28040]
    fmov d16, xzr
    str d16, [sp, #28048]
    fmov d16, xzr
    str d16, [sp, #28056]
    fmov d16, xzr
    str d16, [sp, #28064]
    fmov d16, xzr
    str d16, [sp, #28072]
    fmov d16, xzr
    str d16, [sp, #28080]
    fmov d16, xzr
    str d16, [sp, #28088]
    fmov d16, xzr
    str d16, [sp, #28096]
    fmov d16, xzr
    str d16, [sp, #28104]
    fmov d16, xzr
    str d16, [sp, #28112]
    fmov d16, xzr
    str d16, [sp, #28120]
    fmov d16, xzr
    str d16, [sp, #28128]
    fmov d16, xzr
    str d16, [sp, #28136]
    fmov d16, xzr
    str d16, [sp, #28144]
    fmov d16, xzr
    str d16, [sp, #28152]
    fmov d16, xzr
    str d16, [sp, #28160]
    fmov d16, xzr
    str d16, [sp, #28168]
    fmov d16, xzr
    str d16, [sp, #28176]
    fmov d16, xzr
    str d16, [sp, #28184]
    fmov d16, xzr
    str d16, [sp, #28192]
    fmov d16, xzr
    str d16, [sp, #28200]
    fmov d16, xzr
    str d16, [sp, #28208]
    fmov d16, xzr
    str d16, [sp, #28216]
    fmov d16, xzr
    str d16, [sp, #28224]
    fmov d16, xzr
    str d16, [sp, #28232]
    fmov d16, xzr
    str d16, [sp, #28240]
    fmov d16, xzr
    str d16, [sp, #28248]
    fmov d16, xzr
    str d16, [sp, #28256]
    fmov d16, xzr
    str d16, [sp, #28264]
    fmov d16, xzr
    str d16, [sp, #28272]
    fmov d16, xzr
    str d16, [sp, #28280]
    fmov d16, xzr
    str d16, [sp, #28288]
    fmov d16, xzr
    str d16, [sp, #28296]
    fmov d16, xzr
    str d16, [sp, #28304]
    fmov d16, xzr
    str d16, [sp, #28312]
    fmov d16, xzr
    str d16, [sp, #28320]
    fmov d16, xzr
    str d16, [sp, #28328]
    fmov d16, xzr
    str d16, [sp, #28336]
    fmov d16, xzr
    str d16, [sp, #28344]
    fmov d16, xzr
    str d16, [sp, #28352]
    fmov d16, xzr
    str d16, [sp, #28360]
    fmov d16, xzr
    str d16, [sp, #28368]
    fmov d16, xzr
    str d16, [sp, #28376]
    fmov d16, xzr
    str d16, [sp, #28384]
    fmov d16, xzr
    str d16, [sp, #28392]
    fmov d16, xzr
    str d16, [sp, #28400]
    fmov d16, xzr
    str d16, [sp, #28408]
    fmov d16, xzr
    str d16, [sp, #28416]
    fmov d16, xzr
    str d16, [sp, #28424]
    fmov d16, xzr
    str d16, [sp, #28432]
    fmov d16, xzr
    str d16, [sp, #28440]
    fmov d16, xzr
    str d16, [sp, #28448]
    fmov d16, xzr
    str d16, [sp, #28456]
    fmov d16, xzr
    str d16, [sp, #28464]
    fmov d16, xzr
    str d16, [sp, #28472]
    fmov d16, xzr
    str d16, [sp, #28480]
    fmov d16, xzr
    str d16, [sp, #28488]
    fmov d16, xzr
    str d16, [sp, #28496]
    fmov d16, xzr
    str d16, [sp, #28504]
    fmov d16, xzr
    str d16, [sp, #28512]
    fmov d16, xzr
    str d16, [sp, #28520]
    fmov d16, xzr
    str d16, [sp, #28528]
    fmov d16, xzr
    str d16, [sp, #28536]
    fmov d16, xzr
    str d16, [sp, #28544]
    fmov d16, xzr
    str d16, [sp, #28552]
    fmov d16, xzr
    str d16, [sp, #28560]
    fmov d16, xzr
    str d16, [sp, #28568]
    fmov d16, xzr
    str d16, [sp, #28576]
    fmov d16, xzr
    str d16, [sp, #28584]
    fmov d16, xzr
    str d16, [sp, #28592]
    fmov d16, xzr
    str d16, [sp, #28600]
    fmov d16, xzr
    str d16, [sp, #28608]
    fmov d16, xzr
    str d16, [sp, #28616]
    fmov d16, xzr
    str d16, [sp, #28624]
    fmov d16, xzr
    str d16, [sp, #28632]
    fmov d16, xzr
    str d16, [sp, #28640]
    fmov d16, xzr
    str d16, [sp, #28648]
    movz x16, #28656
    sub x10, x29, x16
    movz x16, #16184
    sub x0, x29, x16
    mov x1, x10
    movz x2, #12288
    bl _memcpy
    fmov d16, #1.0000000
    str d16, [sp, #26712]
    fmov d16, #1.0000000
    str d16, [sp, #26720]
    fmov d16, #1.0000000
    str d16, [sp, #26728]
    fmov d16, #1.0000000
    str d16, [sp, #26736]
    fmov d16, #1.0000000
    str d16, [sp, #26744]
    fmov d16, #1.0000000
    str d16, [sp, #26752]
    fmov d16, #1.0000000
    str d16, [sp, #26760]
    fmov d16, #1.0000000
    str d16, [sp, #26768]
    fmov d16, #1.0000000
    str d16, [sp, #26776]
    fmov d16, #1.0000000
    str d16, [sp, #26784]
    fmov d16, #1.0000000
    str d16, [sp, #26792]
    fmov d16, #1.0000000
    str d16, [sp, #26800]
    fmov d16, #1.0000000
    str d16, [sp, #26808]
    fmov d16, #1.0000000
    str d16, [sp, #26816]
    fmov d16, #1.0000000
    str d16, [sp, #26824]
    fmov d16, #1.0000000
    str d16, [sp, #26832]
    fmov d16, #1.0000000
    str d16, [sp, #26840]
    fmov d16, #1.0000000
    str d16, [sp, #26848]
    fmov d16, #1.0000000
    str d16, [sp, #26856]
    fmov d16, #1.0000000
    str d16, [sp, #26864]
    fmov d16, #1.0000000
    str d16, [sp, #26872]
    fmov d16, #1.0000000
    str d16, [sp, #26880]
    fmov d16, #1.0000000
    str d16, [sp, #26888]
    fmov d16, #1.0000000
    str d16, [sp, #26896]
    fmov d16, #1.0000000
    str d16, [sp, #26904]
    fmov d16, #1.0000000
    str d16, [sp, #26912]
    fmov d16, #1.0000000
    str d16, [sp, #26920]
    fmov d16, #1.0000000
    str d16, [sp, #26928]
    fmov d16, #1.0000000
    str d16, [sp, #26936]
    fmov d16, #1.0000000
    str d16, [sp, #26944]
    fmov d16, #1.0000000
    str d16, [sp, #26952]
    fmov d16, #1.0000000
    str d16, [sp, #26960]
    fmov d16, #1.0000000
    str d16, [sp, #26968]
    fmov d16, #1.0000000
    str d16, [sp, #26976]
    fmov d16, #1.0000000
    str d16, [sp, #26984]
    fmov d16, #1.0000000
    str d16, [sp, #26992]
    fmov d16, #1.0000000
    str d16, [sp, #27000]
    fmov d16, #1.0000000
    str d16, [sp, #27008]
    fmov d16, #1.0000000
    str d16, [sp, #27016]
    fmov d16, #1.0000000
    str d16, [sp, #27024]
    fmov d16, #1.0000000
    str d16, [sp, #27032]
    fmov d16, #1.0000000
    str d16, [sp, #27040]
    fmov d16, #1.0000000
    str d16, [sp, #27048]
    fmov d16, #1.0000000
    str d16, [sp, #27056]
    fmov d16, #1.0000000
    str d16, [sp, #27064]
    fmov d16, #1.0000000
    str d16, [sp, #27072]
    fmov d16, #1.0000000
    str d16, [sp, #27080]
    fmov d16, #1.0000000
    str d16, [sp, #27088]
    fmov d16, #1.0000000
    str d16, [sp, #27096]
    fmov d16, #1.0000000
    str d16, [sp, #27104]
    fmov d16, #1.0000000
    str d16, [sp, #27112]
    fmov d16, #1.0000000
    str d16, [sp, #27120]
    fmov d16, #1.0000000
    str d16, [sp, #27128]
    fmov d16, #1.0000000
    str d16, [sp, #27136]
    fmov d16, #1.0000000
    str d16, [sp, #27144]
    fmov d16, #1.0000000
    str d16, [sp, #27152]
    fmov d16, #1.0000000
    str d16, [sp, #27160]
    fmov d16, #1.0000000
    str d16, [sp, #27168]
    fmov d16, #1.0000000
    str d16, [sp, #27176]
    fmov d16, #1.0000000
    str d16, [sp, #27184]
    fmov d16, #1.0000000
    str d16, [sp, #27192]
    fmov d16, #1.0000000
    str d16, [sp, #27200]
    fmov d16, #1.0000000
    str d16, [sp, #27208]
    fmov d16, #1.0000000
    str d16, [sp, #27216]
    fmov d16, #1.0000000
    str d16, [sp, #27224]
    fmov d16, #1.0000000
    str d16, [sp, #27232]
    fmov d16, #1.0000000
    str d16, [sp, #27240]
    fmov d16, #1.0000000
    str d16, [sp, #27248]
    fmov d16, #1.0000000
    str d16, [sp, #27256]
    fmov d16, #1.0000000
    str d16, [sp, #27264]
    fmov d16, #1.0000000
    str d16, [sp, #27272]
    fmov d16, #1.0000000
    str d16, [sp, #27280]
    fmov d16, #1.0000000
    str d16, [sp, #27288]
    fmov d16, #1.0000000
    str d16, [sp, #27296]
    fmov d16, #1.0000000
    str d16, [sp, #27304]
    fmov d16, #1.0000000
    str d16, [sp, #27312]
    fmov d16, #1.0000000
    str d16, [sp, #27320]
    fmov d16, #1.0000000
    str d16, [sp, #27328]
    fmov d16, #1.0000000
    str d16, [sp, #27336]
    fmov d16, #1.0000000
    str d16, [sp, #27344]
    fmov d16, #1.0000000
    str d16, [sp, #27352]
    fmov d16, #1.0000000
    str d16, [sp, #27360]
    fmov d16, #1.0000000
    str d16, [sp, #27368]
    fmov d16, #1.0000000
    str d16, [sp, #27376]
    fmov d16, #1.0000000
    str d16, [sp, #27384]
    fmov d16, #1.0000000
    str d16, [sp, #27392]
    fmov d16, #1.0000000
    str d16, [sp, #27400]
    fmov d16, #1.0000000
    str d16, [sp, #27408]
    fmov d16, #1.0000000
    str d16, [sp, #27416]
    fmov d16, #1.0000000
    str d16, [sp, #27424]
    fmov d16, #1.0000000
    str d16, [sp, #27432]
    fmov d16, #1.0000000
    str d16, [sp, #27440]
    fmov d16, #1.0000000
    str d16, [sp, #27448]
    fmov d16, #1.0000000
    str d16, [sp, #27456]
    fmov d16, #1.0000000
    str d16, [sp, #27464]
    fmov d16, #1.0000000
    str d16, [sp, #27472]
    fmov d16, #1.0000000
    str d16, [sp, #27480]
    fmov d16, #1.0000000
    str d16, [sp, #27488]
    fmov d16, #1.0000000
    str d16, [sp, #27496]
    fmov d16, #1.0000000
    str d16, [sp, #27504]
    fmov d16, #1.0000000
    str d16, [sp, #27512]
    fmov d16, #1.0000000
    str d16, [sp, #27520]
    fmov d16, #1.0000000
    str d16, [sp, #27528]
    fmov d16, #1.0000000
    str d16, [sp, #27536]
    fmov d16, #1.0000000
    str d16, [sp, #27544]
    fmov d16, #1.0000000
    str d16, [sp, #27552]
    fmov d16, #1.0000000
    str d16, [sp, #27560]
    fmov d16, #1.0000000
    str d16, [sp, #27568]
    fmov d16, #1.0000000
    str d16, [sp, #27576]
    fmov d16, #1.0000000
    str d16, [sp, #27584]
    fmov d16, #1.0000000
    str d16, [sp, #27592]
    fmov d16, #1.0000000
    str d16, [sp, #27600]
    fmov d16, #1.0000000
    str d16, [sp, #27608]
    fmov d16, #1.0000000
    str d16, [sp, #27616]
    fmov d16, #1.0000000
    str d16, [sp, #27624]
    fmov d16, #1.0000000
    str d16, [sp, #27632]
    fmov d16, #1.0000000
    str d16, [sp, #27640]
    fmov d16, #1.0000000
    str d16, [sp, #27648]
    fmov d16, #1.0000000
    str d16, [sp, #27656]
    fmov d16, #1.0000000
    str d16, [sp, #27664]
    fmov d16, #1.0000000
    str d16, [sp, #27672]
    fmov d16, #1.0000000
    str d16, [sp, #27680]
    fmov d16, #1.0000000
    str d16, [sp, #27688]
    fmov d16, #1.0000000
    str d16, [sp, #27696]
    fmov d16, #1.0000000
    str d16, [sp, #27704]
    fmov d16, #1.0000000
    str d16, [sp, #27712]
    fmov d16, #1.0000000
    str d16, [sp, #27720]
    fmov d16, #1.0000000
    str d16, [sp, #27728]
    fmov d16, #1.0000000
    str d16, [sp, #27736]
    fmov d16, #1.0000000
    str d16, [sp, #27744]
    fmov d16, #1.0000000
    str d16, [sp, #27752]
    fmov d16, #1.0000000
    str d16, [sp, #27760]
    fmov d16, #1.0000000
    str d16, [sp, #27768]
    fmov d16, #1.0000000
    str d16, [sp, #27776]
    fmov d16, #1.0000000
    str d16, [sp, #27784]
    fmov d16, #1.0000000
    str d16, [sp, #27792]
    fmov d16, #1.0000000
    str d16, [sp, #27800]
    fmov d16, #1.0000000
    str d16, [sp, #27808]
    fmov d16, #1.0000000
    str d16, [sp, #27816]
    fmov d16, #1.0000000
    str d16, [sp, #27824]
    fmov d16, #1.0000000
    str d16, [sp, #27832]
    fmov d16, #1.0000000
    str d16, [sp, #27840]
    fmov d16, #1.0000000
    str d16, [sp, #27848]
    fmov d16, #1.0000000
    str d16, [sp, #27856]
    fmov d16, #1.0000000
    str d16, [sp, #27864]
    fmov d16, #1.0000000
    str d16, [sp, #27872]
    fmov d16, #1.0000000
    str d16, [sp, #27880]
    fmov d16, #1.0000000
    str d16, [sp, #27888]
    fmov d16, #1.0000000
    str d16, [sp, #27896]
    fmov d16, #1.0000000
    str d16, [sp, #27904]
    fmov d16, #1.0000000
    str d16, [sp, #27912]
    fmov d16, #1.0000000
    str d16, [sp, #27920]
    fmov d16, #1.0000000
    str d16, [sp, #27928]
    fmov d16, #1.0000000
    str d16, [sp, #27936]
    fmov d16, #1.0000000
    str d16, [sp, #27944]
    fmov d16, #1.0000000
    str d16, [sp, #27952]
    fmov d16, #1.0000000
    str d16, [sp, #27960]
    fmov d16, #1.0000000
    str d16, [sp, #27968]
    fmov d16, #1.0000000
    str d16, [sp, #27976]
    fmov d16, #1.0000000
    str d16, [sp, #27984]
    fmov d16, #1.0000000
    str d16, [sp, #27992]
    fmov d16, #1.0000000
    str d16, [sp, #28000]
    fmov d16, #1.0000000
    str d16, [sp, #28008]
    fmov d16, #1.0000000
    str d16, [sp, #28016]
    fmov d16, #1.0000000
    str d16, [sp, #28024]
    fmov d16, #1.0000000
    str d16, [sp, #28032]
    fmov d16, #1.0000000
    str d16, [sp, #28040]
    fmov d16, #1.0000000
    str d16, [sp, #28048]
    fmov d16, #1.0000000
    str d16, [sp, #28056]
    fmov d16, #1.0000000
    str d16, [sp, #28064]
    fmov d16, #1.0000000
    str d16, [sp, #28072]
    fmov d16, #1.0000000
    str d16, [sp, #28080]
    fmov d16, #1.0000000
    str d16, [sp, #28088]
    fmov d16, #1.0000000
    str d16, [sp, #28096]
    fmov d16, #1.0000000
    str d16, [sp, #28104]
    fmov d16, #1.0000000
    str d16, [sp, #28112]
    fmov d16, #1.0000000
    str d16, [sp, #28120]
    fmov d16, #1.0000000
    str d16, [sp, #28128]
    fmov d16, #1.0000000
    str d16, [sp, #28136]
    fmov d16, #1.0000000
    str d16, [sp, #28144]
    fmov d16, #1.0000000
    str d16, [sp, #28152]
    fmov d16, #1.0000000
    str d16, [sp, #28160]
    fmov d16, #1.0000000
    str d16, [sp, #28168]
    fmov d16, #1.0000000
    str d16, [sp, #28176]
    fmov d16, #1.0000000
    str d16, [sp, #28184]
    fmov d16, #1.0000000
    str d16, [sp, #28192]
    fmov d16, #1.0000000
    str d16, [sp, #28200]
    fmov d16, #1.0000000
    str d16, [sp, #28208]
    fmov d16, #1.0000000
    str d16, [sp, #28216]
    fmov d16, #1.0000000
    str d16, [sp, #28224]
    fmov d16, #1.0000000
    str d16, [sp, #28232]
    fmov d16, #1.0000000
    str d16, [sp, #28240]
    fmov d16, #1.0000000
    str d16, [sp, #28248]
    fmov d16, #1.0000000
    str d16, [sp, #28256]
    fmov d16, #1.0000000
    str d16, [sp, #28264]
    fmov d16, #1.0000000
    str d16, [sp, #28272]
    fmov d16, #1.0000000
    str d16, [sp, #28280]
    fmov d16, #1.0000000
    str d16, [sp, #28288]
    fmov d16, #1.0000000
    str d16, [sp, #28296]
    fmov d16, #1.0000000
    str d16, [sp, #28304]
    fmov d16, #1.0000000
    str d16, [sp, #28312]
    fmov d16, #1.0000000
    str d16, [sp, #28320]
    fmov d16, #1.0000000
    str d16, [sp, #28328]
    fmov d16, #1.0000000
    str d16, [sp, #28336]
    fmov d16, #1.0000000
    str d16, [sp, #28344]
    fmov d16, #1.0000000
    str d16, [sp, #28352]
    fmov d16, #1.0000000
    str d16, [sp, #28360]
    fmov d16, #1.0000000
    str d16, [sp, #28368]
    fmov d16, #1.0000000
    str d16, [sp, #28376]
    fmov d16, #1.0000000
    str d16, [sp, #28384]
    fmov d16, #1.0000000
    str d16, [sp, #28392]
    fmov d16, #1.0000000
    str d16, [sp, #28400]
    fmov d16, #1.0000000
    str d16, [sp, #28408]
    fmov d16, #1.0000000
    str d16, [sp, #28416]
    fmov d16, #1.0000000
    str d16, [sp, #28424]
    fmov d16, #1.0000000
    str d16, [sp, #28432]
    fmov d16, #1.0000000
    str d16, [sp, #28440]
    fmov d16, #1.0000000
    str d16, [sp, #28448]
    fmov d16, #1.0000000
    str d16, [sp, #28456]
    fmov d16, #1.0000000
    str d16, [sp, #28464]
    fmov d16, #1.0000000
    str d16, [sp, #28472]
    fmov d16, #1.0000000
    str d16, [sp, #28480]
    fmov d16, #1.0000000
    str d16, [sp, #28488]
    fmov d16, #1.0000000
    str d16, [sp, #28496]
    fmov d16, #1.0000000
    str d16, [sp, #28504]
    fmov d16, #1.0000000
    str d16, [sp, #28512]
    fmov d16, #1.0000000
    str d16, [sp, #28520]
    fmov d16, #1.0000000
    str d16, [sp, #28528]
    fmov d16, #1.0000000
    str d16, [sp, #28536]
    fmov d16, #1.0000000
    str d16, [sp, #28544]
    fmov d16, #1.0000000
    str d16, [sp, #28552]
    fmov d16, #1.0000000
    str d16, [sp, #28560]
    fmov d16, #1.0000000
    str d16, [sp, #28568]
    fmov d16, #1.0000000
    str d16, [sp, #28576]
    fmov d16, #1.0000000
    str d16, [sp, #28584]
    fmov d16, #1.0000000
    str d16, [sp, #28592]
    fmov d16, #1.0000000
    str d16, [sp, #28600]
    fmov d16, #1.0000000
    str d16, [sp, #28608]
    fmov d16, #1.0000000
    str d16, [sp, #28616]
    fmov d16, #1.0000000
    str d16, [sp, #28624]
    fmov d16, #1.0000000
    str d16, [sp, #28632]
    fmov d16, #1.0000000
    str d16, [sp, #28640]
    fmov d16, #1.0000000
    str d16, [sp, #28648]
    movz x16, #18312
    sub x10, x29, x16
    sub x0, x29, #3896
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    fmov d16, xzr
    str d16, [sp, #26712]
    fmov d16, xzr
    str d16, [sp, #26720]
    fmov d16, xzr
    str d16, [sp, #26728]
    fmov d16, xzr
    str d16, [sp, #26736]
    fmov d16, xzr
    str d16, [sp, #26744]
    fmov d16, xzr
    str d16, [sp, #26752]
    fmov d16, xzr
    str d16, [sp, #26760]
    fmov d16, xzr
    str d16, [sp, #26768]
    fmov d16, xzr
    str d16, [sp, #26776]
    fmov d16, xzr
    str d16, [sp, #26784]
    fmov d16, xzr
    str d16, [sp, #26792]
    fmov d16, xzr
    str d16, [sp, #26800]
    fmov d16, xzr
    str d16, [sp, #26808]
    fmov d16, xzr
    str d16, [sp, #26816]
    fmov d16, xzr
    str d16, [sp, #26824]
    fmov d16, xzr
    str d16, [sp, #26832]
    fmov d16, xzr
    str d16, [sp, #26840]
    fmov d16, xzr
    str d16, [sp, #26848]
    fmov d16, xzr
    str d16, [sp, #26856]
    fmov d16, xzr
    str d16, [sp, #26864]
    fmov d16, xzr
    str d16, [sp, #26872]
    fmov d16, xzr
    str d16, [sp, #26880]
    fmov d16, xzr
    str d16, [sp, #26888]
    fmov d16, xzr
    str d16, [sp, #26896]
    fmov d16, xzr
    str d16, [sp, #26904]
    fmov d16, xzr
    str d16, [sp, #26912]
    fmov d16, xzr
    str d16, [sp, #26920]
    fmov d16, xzr
    str d16, [sp, #26928]
    fmov d16, xzr
    str d16, [sp, #26936]
    fmov d16, xzr
    str d16, [sp, #26944]
    fmov d16, xzr
    str d16, [sp, #26952]
    fmov d16, xzr
    str d16, [sp, #26960]
    fmov d16, xzr
    str d16, [sp, #26968]
    fmov d16, xzr
    str d16, [sp, #26976]
    fmov d16, xzr
    str d16, [sp, #26984]
    fmov d16, xzr
    str d16, [sp, #26992]
    fmov d16, xzr
    str d16, [sp, #27000]
    fmov d16, xzr
    str d16, [sp, #27008]
    fmov d16, xzr
    str d16, [sp, #27016]
    fmov d16, xzr
    str d16, [sp, #27024]
    fmov d16, xzr
    str d16, [sp, #27032]
    fmov d16, xzr
    str d16, [sp, #27040]
    fmov d16, xzr
    str d16, [sp, #27048]
    fmov d16, xzr
    str d16, [sp, #27056]
    fmov d16, xzr
    str d16, [sp, #27064]
    fmov d16, xzr
    str d16, [sp, #27072]
    fmov d16, xzr
    str d16, [sp, #27080]
    fmov d16, xzr
    str d16, [sp, #27088]
    fmov d16, xzr
    str d16, [sp, #27096]
    fmov d16, xzr
    str d16, [sp, #27104]
    fmov d16, xzr
    str d16, [sp, #27112]
    fmov d16, xzr
    str d16, [sp, #27120]
    fmov d16, xzr
    str d16, [sp, #27128]
    fmov d16, xzr
    str d16, [sp, #27136]
    fmov d16, xzr
    str d16, [sp, #27144]
    fmov d16, xzr
    str d16, [sp, #27152]
    fmov d16, xzr
    str d16, [sp, #27160]
    fmov d16, xzr
    str d16, [sp, #27168]
    fmov d16, xzr
    str d16, [sp, #27176]
    fmov d16, xzr
    str d16, [sp, #27184]
    fmov d16, xzr
    str d16, [sp, #27192]
    fmov d16, xzr
    str d16, [sp, #27200]
    fmov d16, xzr
    str d16, [sp, #27208]
    fmov d16, xzr
    str d16, [sp, #27216]
    fmov d16, xzr
    str d16, [sp, #27224]
    fmov d16, xzr
    str d16, [sp, #27232]
    fmov d16, xzr
    str d16, [sp, #27240]
    fmov d16, xzr
    str d16, [sp, #27248]
    fmov d16, xzr
    str d16, [sp, #27256]
    fmov d16, xzr
    str d16, [sp, #27264]
    fmov d16, xzr
    str d16, [sp, #27272]
    fmov d16, xzr
    str d16, [sp, #27280]
    fmov d16, xzr
    str d16, [sp, #27288]
    fmov d16, xzr
    str d16, [sp, #27296]
    fmov d16, xzr
    str d16, [sp, #27304]
    fmov d16, xzr
    str d16, [sp, #27312]
    fmov d16, xzr
    str d16, [sp, #27320]
    fmov d16, xzr
    str d16, [sp, #27328]
    fmov d16, xzr
    str d16, [sp, #27336]
    fmov d16, xzr
    str d16, [sp, #27344]
    fmov d16, xzr
    str d16, [sp, #27352]
    fmov d16, xzr
    str d16, [sp, #27360]
    fmov d16, xzr
    str d16, [sp, #27368]
    fmov d16, xzr
    str d16, [sp, #27376]
    fmov d16, xzr
    str d16, [sp, #27384]
    fmov d16, xzr
    str d16, [sp, #27392]
    fmov d16, xzr
    str d16, [sp, #27400]
    fmov d16, xzr
    str d16, [sp, #27408]
    fmov d16, xzr
    str d16, [sp, #27416]
    fmov d16, xzr
    str d16, [sp, #27424]
    fmov d16, xzr
    str d16, [sp, #27432]
    fmov d16, xzr
    str d16, [sp, #27440]
    fmov d16, xzr
    str d16, [sp, #27448]
    fmov d16, xzr
    str d16, [sp, #27456]
    fmov d16, xzr
    str d16, [sp, #27464]
    fmov d16, xzr
    str d16, [sp, #27472]
    fmov d16, xzr
    str d16, [sp, #27480]
    fmov d16, xzr
    str d16, [sp, #27488]
    fmov d16, xzr
    str d16, [sp, #27496]
    fmov d16, xzr
    str d16, [sp, #27504]
    fmov d16, xzr
    str d16, [sp, #27512]
    fmov d16, xzr
    str d16, [sp, #27520]
    fmov d16, xzr
    str d16, [sp, #27528]
    fmov d16, xzr
    str d16, [sp, #27536]
    fmov d16, xzr
    str d16, [sp, #27544]
    fmov d16, xzr
    str d16, [sp, #27552]
    fmov d16, xzr
    str d16, [sp, #27560]
    fmov d16, xzr
    str d16, [sp, #27568]
    fmov d16, xzr
    str d16, [sp, #27576]
    fmov d16, xzr
    str d16, [sp, #27584]
    fmov d16, xzr
    str d16, [sp, #27592]
    fmov d16, xzr
    str d16, [sp, #27600]
    fmov d16, xzr
    str d16, [sp, #27608]
    fmov d16, xzr
    str d16, [sp, #27616]
    fmov d16, xzr
    str d16, [sp, #27624]
    fmov d16, xzr
    str d16, [sp, #27632]
    fmov d16, xzr
    str d16, [sp, #27640]
    fmov d16, xzr
    str d16, [sp, #27648]
    fmov d16, xzr
    str d16, [sp, #27656]
    fmov d16, xzr
    str d16, [sp, #27664]
    fmov d16, xzr
    str d16, [sp, #27672]
    fmov d16, xzr
    str d16, [sp, #27680]
    fmov d16, xzr
    str d16, [sp, #27688]
    fmov d16, xzr
    str d16, [sp, #27696]
    fmov d16, xzr
    str d16, [sp, #27704]
    fmov d16, xzr
    str d16, [sp, #27712]
    fmov d16, xzr
    str d16, [sp, #27720]
    fmov d16, xzr
    str d16, [sp, #27728]
    fmov d16, xzr
    str d16, [sp, #27736]
    fmov d16, xzr
    str d16, [sp, #27744]
    fmov d16, xzr
    str d16, [sp, #27752]
    fmov d16, xzr
    str d16, [sp, #27760]
    fmov d16, xzr
    str d16, [sp, #27768]
    fmov d16, xzr
    str d16, [sp, #27776]
    fmov d16, xzr
    str d16, [sp, #27784]
    fmov d16, xzr
    str d16, [sp, #27792]
    fmov d16, xzr
    str d16, [sp, #27800]
    fmov d16, xzr
    str d16, [sp, #27808]
    fmov d16, xzr
    str d16, [sp, #27816]
    fmov d16, xzr
    str d16, [sp, #27824]
    fmov d16, xzr
    str d16, [sp, #27832]
    fmov d16, xzr
    str d16, [sp, #27840]
    fmov d16, xzr
    str d16, [sp, #27848]
    fmov d16, xzr
    str d16, [sp, #27856]
    fmov d16, xzr
    str d16, [sp, #27864]
    fmov d16, xzr
    str d16, [sp, #27872]
    fmov d16, xzr
    str d16, [sp, #27880]
    fmov d16, xzr
    str d16, [sp, #27888]
    fmov d16, xzr
    str d16, [sp, #27896]
    fmov d16, xzr
    str d16, [sp, #27904]
    fmov d16, xzr
    str d16, [sp, #27912]
    fmov d16, xzr
    str d16, [sp, #27920]
    fmov d16, xzr
    str d16, [sp, #27928]
    fmov d16, xzr
    str d16, [sp, #27936]
    fmov d16, xzr
    str d16, [sp, #27944]
    fmov d16, xzr
    str d16, [sp, #27952]
    fmov d16, xzr
    str d16, [sp, #27960]
    fmov d16, xzr
    str d16, [sp, #27968]
    fmov d16, xzr
    str d16, [sp, #27976]
    fmov d16, xzr
    str d16, [sp, #27984]
    fmov d16, xzr
    str d16, [sp, #27992]
    fmov d16, xzr
    str d16, [sp, #28000]
    fmov d16, xzr
    str d16, [sp, #28008]
    fmov d16, xzr
    str d16, [sp, #28016]
    fmov d16, xzr
    str d16, [sp, #28024]
    fmov d16, xzr
    str d16, [sp, #28032]
    fmov d16, xzr
    str d16, [sp, #28040]
    fmov d16, xzr
    str d16, [sp, #28048]
    fmov d16, xzr
    str d16, [sp, #28056]
    fmov d16, xzr
    str d16, [sp, #28064]
    fmov d16, xzr
    str d16, [sp, #28072]
    fmov d16, xzr
    str d16, [sp, #28080]
    fmov d16, xzr
    str d16, [sp, #28088]
    fmov d16, xzr
    str d16, [sp, #28096]
    fmov d16, xzr
    str d16, [sp, #28104]
    fmov d16, xzr
    str d16, [sp, #28112]
    fmov d16, xzr
    str d16, [sp, #28120]
    fmov d16, xzr
    str d16, [sp, #28128]
    fmov d16, xzr
    str d16, [sp, #28136]
    fmov d16, xzr
    str d16, [sp, #28144]
    fmov d16, xzr
    str d16, [sp, #28152]
    fmov d16, xzr
    str d16, [sp, #28160]
    fmov d16, xzr
    str d16, [sp, #28168]
    fmov d16, xzr
    str d16, [sp, #28176]
    fmov d16, xzr
    str d16, [sp, #28184]
    fmov d16, xzr
    str d16, [sp, #28192]
    fmov d16, xzr
    str d16, [sp, #28200]
    fmov d16, xzr
    str d16, [sp, #28208]
    fmov d16, xzr
    str d16, [sp, #28216]
    fmov d16, xzr
    str d16, [sp, #28224]
    fmov d16, xzr
    str d16, [sp, #28232]
    fmov d16, xzr
    str d16, [sp, #28240]
    fmov d16, xzr
    str d16, [sp, #28248]
    fmov d16, xzr
    str d16, [sp, #28256]
    fmov d16, xzr
    str d16, [sp, #28264]
    fmov d16, xzr
    str d16, [sp, #28272]
    fmov d16, xzr
    str d16, [sp, #28280]
    fmov d16, xzr
    str d16, [sp, #28288]
    fmov d16, xzr
    str d16, [sp, #28296]
    fmov d16, xzr
    str d16, [sp, #28304]
    fmov d16, xzr
    str d16, [sp, #28312]
    fmov d16, xzr
    str d16, [sp, #28320]
    fmov d16, xzr
    str d16, [sp, #28328]
    fmov d16, xzr
    str d16, [sp, #28336]
    fmov d16, xzr
    str d16, [sp, #28344]
    fmov d16, xzr
    str d16, [sp, #28352]
    fmov d16, xzr
    str d16, [sp, #28360]
    fmov d16, xzr
    str d16, [sp, #28368]
    fmov d16, xzr
    str d16, [sp, #28376]
    fmov d16, xzr
    str d16, [sp, #28384]
    fmov d16, xzr
    str d16, [sp, #28392]
    fmov d16, xzr
    str d16, [sp, #28400]
    fmov d16, xzr
    str d16, [sp, #28408]
    fmov d16, xzr
    str d16, [sp, #28416]
    fmov d16, xzr
    str d16, [sp, #28424]
    fmov d16, xzr
    str d16, [sp, #28432]
    fmov d16, xzr
    str d16, [sp, #28440]
    fmov d16, xzr
    str d16, [sp, #28448]
    fmov d16, xzr
    str d16, [sp, #28456]
    fmov d16, xzr
    str d16, [sp, #28464]
    fmov d16, xzr
    str d16, [sp, #28472]
    fmov d16, xzr
    str d16, [sp, #28480]
    fmov d16, xzr
    str d16, [sp, #28488]
    fmov d16, xzr
    str d16, [sp, #28496]
    fmov d16, xzr
    str d16, [sp, #28504]
    fmov d16, xzr
    str d16, [sp, #28512]
    fmov d16, xzr
    str d16, [sp, #28520]
    fmov d16, xzr
    str d16, [sp, #28528]
    fmov d16, xzr
    str d16, [sp, #28536]
    fmov d16, xzr
    str d16, [sp, #28544]
    fmov d16, xzr
    str d16, [sp, #28552]
    fmov d16, xzr
    str d16, [sp, #28560]
    fmov d16, xzr
    str d16, [sp, #28568]
    fmov d16, xzr
    str d16, [sp, #28576]
    fmov d16, xzr
    str d16, [sp, #28584]
    fmov d16, xzr
    str d16, [sp, #28592]
    fmov d16, xzr
    str d16, [sp, #28600]
    fmov d16, xzr
    str d16, [sp, #28608]
    fmov d16, xzr
    str d16, [sp, #28616]
    fmov d16, xzr
    str d16, [sp, #28624]
    fmov d16, xzr
    str d16, [sp, #28632]
    fmov d16, xzr
    str d16, [sp, #28640]
    fmov d16, xzr
    str d16, [sp, #28648]
    movz x16, #18312
    sub x10, x29, x16
    sub x0, x29, #1952
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #16368
    sub x10, x29, x16
    movz x16, #45016
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    movz x16, #45016
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #16360
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4ea4c0b1a8c6_k0:
    .quad 13837197265105164698
L4ea4c0b1a8c6_k1:
    .quad 4587366580439587226
L4ea4c0b1a8c6_k2:
    .quad 4589276106681592316
L4ea4c0b1a8c6_k3:
    .quad 4589326546997418865
L4ea4c0b1a8c6_k4:
    .quad 4589477867944898514
L4ea4c0b1a8c6_k5:
    .quad 4589773304080454019
L4ea4c0b1a8c6_k6:
    .quad 4590248884201104343
L4ea4c0b1a8c6_k7:
    .quad 4590998283179098794
L4ea4c0b1a8c6_k8:
    .quad 4592093558608475298
L4ea4c0b1a8c6_k9:
    .quad 4593621179602079370
L4ea4c0b1a8c6_k10:
    .quad 4594601162880995190
L4ea4c0b1a8c6_k11:
    .quad 4595721658468284970
L4ea4c0b1a8c6_k12:
    .quad 4597000680762458191
L4ea4c0b1a8c6_k13:
    .quad 4598301320334842790
L4ea4c0b1a8c6_k14:
    .quad 4599095755309110945
L4ea4c0b1a8c6_k15:
    .quad 4599980262275926511
L4ea4c0b1a8c6_k16:
    .quad 4600936826836780004
L4ea4c0b1a8c6_k17:
    .quad 4601949236033012892
L4ea4c0b1a8c6_k18:
    .quad 4602844551638934146
L4ea4c0b1a8c6_k19:
    .quad 4603397593673175243
L4ea4c0b1a8c6_k20:
    .quad 4603970451545776770
L4ea4c0b1a8c6_k21:
    .quad 4604564025976664202
L4ea4c0b1a8c6_k22:
    .quad 4605178316965837537
L4ea4c0b1a8c6_k23:
    .quad 4605808820913669407
L4ea4c0b1a8c6_k24:
    .quad 4606454637100234336
L4ea4c0b1a8c6_k25:
    .quad 4607113964085681376
L4ea4c0b1a8c6_k26:
    .quad 4607480557095349335
L4ea4c0b1a8c6_k27:
    .quad 4607813373107812014
L4ea4c0b1a8c6_k28:
    .quad 4608146639480237431
L4ea4c0b1a8c6_k29:
    .quad 4608476753332923689
L4ea4c0b1a8c6_k30:
    .quad 4608799661426206153
L4ea4c0b1a8c6_k31:
    .quad 4609105455840904610
L4ea4c0b1a8c6_k32:
    .quad 4609380625778136947
L4ea4c0b1a8c6_k33:
    .quad 4609613461878872002
L4ea4c0b1a8c6_k34:
    .quad 4609813872062289989
L4ea4c0b1a8c6_k35:
    .quad 4609990863527645649
L4ea4c0b1a8c6_k36:
    .quad 4610152542754268250
L4ea4c0b1a8c6_k37:
    .quad 4610299360102120528
L4ea4c0b1a8c6_k38:
    .quad 4610431765931165221
L4ea4c0b1a8c6_k39:
    .quad 4610548859521476854
L4ea4c0b1a8c6_k40:
    .quad 4610651091233018164
L4ea4c0b1a8c6_k41:
    .quad 4610739812145677363
L4ea4c0b1a8c6_k42:
    .quad 4610815922979379924
L4ea4c0b1a8c6_k43:
    .quad 4610879423734125848
L4ea4c0b1a8c6_k44:
    .quad 4610928512970064187
L4ea4c0b1a8c6_k45:
    .quad 4610963190687194939
L4ea4c0b1a8c6_k46:
    .quad 4610991113004884636
L4ea4c0b1a8c6_k47:
    .quad 4611018584962611596
L4ea4c0b1a8c6_k48:
    .quad 4611049209440077716
L4ea4c0b1a8c6_k49:
    .quad 4611077582117730150
L4ea4c0b1a8c6_k50:
    .quad 4611098298676016054
L4ea4c0b1a8c6_k51:
    .quad 4611113160554786377
L4ea4c0b1a8c6_k52:
    .quad 4611120366314190170
L4ea4c0b1a8c6_k53:
    .quad 4589492279463706100
L4ea4c0b1a8c6_k54:
    .quad 4589513896741917478
L4ea4c0b1a8c6_k55:
    .quad 4589593160095359199
L4ea4c0b1a8c6_k56:
    .quad 4590032711418990559
L4ea4c0b1a8c6_k57:
    .quad 4590349764832757442
L4ea4c0b1a8c6_k58:
    .quad 4590702847043543289
L4ea4c0b1a8c6_k59:
    .quad 4591077546532540514
L4ea4c0b1a8c6_k60:
    .quad 4591473863299749118
L4ea4c0b1a8c6_k61:
    .quad 4592107970127282884
L4ea4c0b1a8c6_k62:
    .quad 4594338152662756753
L4ea4c0b1a8c6_k63:
    .quad 4597573538635059718
L4ea4c0b1a8c6_k64:
    .quad 4598740871658474150
L4ea4c0b1a8c6_k65:
    .quad 4599674017501265317
L4ea4c0b1a8c6_k66:
    .quad 4600695433896752946
L4ea4c0b1a8c6_k67:
    .quad 4601832142442701259
L4ea4c0b1a8c6_k68:
    .quad 4602862566037443628
L4ea4c0b1a8c6_k69:
    .quad 4603487665665722653
L4ea4c0b1a8c6_k70:
    .quad 4604121772493256419
L4ea4c0b1a8c6_k71:
    .quad 4604769390119672296
L4ea4c0b1a8c6_k72:
    .quad 4605441327184075974
L4ea4c0b1a8c6_k73:
    .quad 4606149293045498616
L4ea4c0b1a8c6_k74:
    .quad 4606885181224610955
L4ea4c0b1a8c6_k75:
    .quad 4607407598781385933
L4ea4c0b1a8c6_k76:
    .quad 4607781847910420421
L4ea4c0b1a8c6_k77:
    .quad 4608153845239641224
L4ea4c0b1a8c6_k78:
    .quad 4608519087169420971
L4ea4c0b1a8c6_k79:
    .quad 4608872619740169555
L4ea4c0b1a8c6_k80:
    .quad 4609213992591924239
L4ea4c0b1a8c6_k81:
    .quad 4609539602844983126
L4ea4c0b1a8c6_k82:
    .quad 4609844496539756108
L4ea4c0b1a8c6_k83:
    .quad 4610131375836019609
L4ea4c0b1a8c6_k84:
    .quad 4610402942893550050
L4ea4c0b1a8c6_k85:
    .quad 4610656945912533746
L4ea4c0b1a8c6_k86:
    .quad 4610895186332821645
L4ea4c0b1a8c6_k87:
    .quad 4611115862714562799
L4ea4c0b1a8c6_k88:
    .quad 4611315372178055312
L4ea4c0b1a8c6_k89:
    .quad 4611495065803187395
L4ea4c0b1a8c6_k90:
    .quad 4611656294669847259
L4ea4c0b1a8c6_k91:
    .quad 4611740511982879087
L4ea4c0b1a8c6_k92:
    .quad 4611797257338183955
L4ea4c0b1a8c6_k93:
    .quad 4611839816354662606
L4ea4c0b1a8c6_k94:
    .quad 4611865712052519987
L4ea4c0b1a8c6_k95:
    .quad 4611880123571327572
L4ea4c0b1a8c6_k96:
    .quad 4611888680410619576
L4ea4c0b1a8c6_k97:
    .quad 4611895886170023369
L4ea4c0b1a8c6_k98:
    .quad 4611901966029520319
L4ea4c0b1a8c6_k99:
    .quad 4611906469629147690
L4ea4c0b1a8c6_k100:
    .quad 4611908946608942744
L4ea4c0b1a8c6_k101:
    .quad 4611910297688830955
L4ea4c0b1a8c6_k102:
    .quad 4611910748048793692
L4ea4c0b1a8c6_k103:
    .quad 4611911198408756429
L4ea4c0b1a8c6_k104:
    .quad 4588951847508421640
L4ea4c0b1a8c6_k105:
    .quad 4588980670546036811
L4ea4c0b1a8c6_k106:
    .quad 4589009493583651983
L4ea4c0b1a8c6_k107:
    .quad 4589067139658882325
L4ea4c0b1a8c6_k108:
    .quad 4589110374215305082
L4ea4c0b1a8c6_k109:
    .quad 4589175226049939217
L4ea4c0b1a8c6_k110:
    .quad 4589211254846958181
L4ea4c0b1a8c6_k111:
    .quad 4589240077884573352
L4ea4c0b1a8c6_k112:
    .quad 4589268900922188523
L4ea4c0b1a8c6_k113:
    .quad 4589304929719207487
L4ea4c0b1a8c6_k114:
    .quad 4589398604591456793
L4ea4c0b1a8c6_k115:
    .quad 4589960653824952631
L4ea4c0b1a8c6_k116:
    .quad 4590760493118773631
L4ea4c0b1a8c6_k117:
    .quad 4591884591585765307
L4ea4c0b1a8c6_k118:
    .quad 4593462652895195929
L4ea4c0b1a8c6_k119:
    .quad 4594572339843380019
L4ea4c0b1a8c6_k120:
    .quad 4595772098784111519
L4ea4c0b1a8c6_k121:
    .quad 4597159207469341632
L4ea4c0b1a8c6_k122:
    .quad 4598450839842471490
L4ea4c0b1a8c6_k123:
    .quad 4599320935290479470
L4ea4c0b1a8c6_k124:
    .quad 4600288308490438653
L4ea4c0b1a8c6_k125:
    .quad 4601345753682945245
L4ea4c0b1a8c6_k126:
    .quad 4602486065108595455
L4ea4c0b1a8c6_k127:
    .quad 4603201236729421890
L4ea4c0b1a8c6_k128:
    .quad 4603857861555092508
L4ea4c0b1a8c6_k129:
    .quad 4604546011578154720
L4ea4c0b1a8c6_k130:
    .quad 4605258481039204732
L4ea4c0b1a8c6_k131:
    .quad 4606002475697646338
L4ea4c0b1a8c6_k132:
    .quad 4606780697713255960
L4ea4c0b1a8c6_k133:
    .quad 4607386882223100029
L4ea4c0b1a8c6_k134:
    .quad 4607804365908557273
L4ea4c0b1a8c6_k135:
    .quad 4608226353193641889
L4ea4c0b1a8c6_k136:
    .quad 4608642035439248186
L4ea4c0b1a8c6_k137:
    .quad 4609048260125637004
L4ea4c0b1a8c6_k138:
    .quad 4609436020053553604
L4ea4c0b1a8c6_k139:
    .quad 4609798109463594192
L4ea4c0b1a8c6_k140:
    .quad 4610142634835088035
L4ea4c0b1a8c6_k141:
    .quad 4610473649407699766
L4ea4c0b1a8c6_k142:
    .quad 4610793855341205809
L4ea4c0b1a8c6_k143:
    .quad 4611093344716425947
L4ea4c0b1a8c6_k144:
    .quad 4611358606734478069
L4ea4c0b1a8c6_k145:
    .quad 4611576130596480064
L4ea4c0b1a8c6_k146:
    .quad 4611717543624779497
L4ea4c0b1a8c6_k147:
    .quad 4611785097619190055
L4ea4c0b1a8c6_k148:
    .quad 4611835763114997973
L4ea4c0b1a8c6_k149:
    .quad 4611873818531849254
L4ea4c0b1a8c6_k150:
    .quad 4611902866749445793
L4ea4c0b1a8c6_k151:
    .quad 4611925609927564014
L4ea4c0b1a8c6_k152:
    .quad 4611942723606148022
L4ea4c0b1a8c6_k153:
    .quad 4611954207785197817
L4ea4c0b1a8c6_k154:
    .quad 4611960062464713399
L4ea4c0b1a8c6_k155:
    .quad 4611961638724582978
L4ea4c0b1a8c6_k156:
    .quad 4588995082064844397
L4ea4c0b1a8c6_k157:
    .quad 4589038316621267154
L4ea4c0b1a8c6_k158:
    .quad 4589081551177689910
L4ea4c0b1a8c6_k159:
    .quad 4589095962696497496
L4ea4c0b1a8c6_k160:
    .quad 4589153608771727838
L4ea4c0b1a8c6_k161:
    .quad 4589196843328150595
L4ea4c0b1a8c6_k162:
    .quad 4589283312440996109
L4ea4c0b1a8c6_k163:
    .quad 4589463456426090929
L4ea4c0b1a8c6_k164:
    .quad 4589794921358665397
L4ea4c0b1a8c6_k165:
    .quad 4590356970592161235
L4ea4c0b1a8c6_k166:
    .quad 4591250484758231541
L4ea4c0b1a8c6_k167:
    .quad 4592597961766740794
L4ea4c0b1a8c6_k168:
    .quad 4594024702128691767
L4ea4c0b1a8c6_k169:
    .quad 4595109168918962582
L4ea4c0b1a8c6_k170:
    .quad 4596398999852241492
L4ea4c0b1a8c6_k171:
    .quad 4597876180530019015
L4ea4c0b1a8c6_k172:
    .quad 4598854362369083887
L4ea4c0b1a8c6_k173:
    .quad 4599783905332173157
L4ea4c0b1a8c6_k174:
    .quad 4600803520287809837
L4ea4c0b1a8c6_k175:
    .quad 4601911405796142979
L4ea4c0b1a8c6_k176:
    .quad 4602896793394611644
L4ea4c0b1a8c6_k177:
    .quad 4603541708861251099
L4ea4c0b1a8c6_k178:
    .quad 4604229858884313311
L4ea4c0b1a8c6_k179:
    .quad 4604961243463798279
L4ea4c0b1a8c6_k180:
    .quad 4605734961879780531
L4ea4c0b1a8c6_k181:
    .quad 4606548311972483642
L4ea4c0b1a8c6_k182:
    .quad 4607289604471148826
L4ea4c0b1a8c6_k183:
    .quad 4607726453635003764
L4ea4c0b1a8c6_k184:
    .quad 4608167356038523335
L4ea4c0b1a8c6_k185:
    .quad 4608603754842415537
L4ea4c0b1a8c6_k186:
    .quad 4609032947886903945
L4ea4c0b1a8c6_k187:
    .quad 4609450431572361190
L4ea4c0b1a8c6_k188:
    .quad 4609849900859308953
L4ea4c0b1a8c6_k189:
    .quad 4610232256467672708
L4ea4c0b1a8c6_k190:
    .quad 4610595696957601507
L4ea4c0b1a8c6_k191:
    .quad 4610935718729467979
L4ea4c0b1a8c6_k192:
    .quad 4611243314584017384
L4ea4c0b1a8c6_k193:
    .quad 4611509026962032244
L4ea4c0b1a8c6_k194:
    .quad 4611703132105971912
L4ea4c0b1a8c6_k195:
    .quad 4611783521359320475
L4ea4c0b1a8c6_k196:
    .quad 4611841392614532186
L4ea4c0b1a8c6_k197:
    .quad 4611878096951495256
L4ea4c0b1a8c6_k198:
    .quad 4611899489049725266
L4ea4c0b1a8c6_k199:
    .quad 4611911423588737797
L4ea4c0b1a8c6_k200:
    .quad 4611918404168160222
L4ea4c0b1a8c6_k201:
    .quad 4611922682587806224
L4ea4c0b1a8c6_k202:
    .quad 4611927186187433594
L4ea4c0b1a8c6_k203:
    .quad 4611933040866949176
L4ea4c0b1a8c6_k204:
    .quad 4611939120726446126
L4ea4c0b1a8c6_k205:
    .quad 4611945650945905813
L4ea4c0b1a8c6_k206:
    .quad 4611951730805402763
L4ea4c0b1a8c6_k207:
    .quad 4611956234405030134
L4ea4c0b1a8c6_k208:
    .quad 4611959386924769293
L4ea4c0b1a8c6_k209:
    .quad 4611962539444508452
L4ea4c0b1a8c6_k210:
    .quad 4611962989804471190
L4ea4c0b1a8c6_k211:
    .quad 4589052728140074739
L4ea4c0b1a8c6_k212:
    .quad 4589168020290535424
L4ea4c0b1a8c6_k213:
    .quad 4589189637568746802
L4ea4c0b1a8c6_k214:
    .quad 4589499485223109893
L4ea4c0b1a8c6_k215:
    .quad 4589903007749722289
L4ea4c0b1a8c6_k216:
    .quad 4590565937614871226
L4ea4c0b1a8c6_k217:
    .quad 4591581949690806010
L4ea4c0b1a8c6_k218:
    .quad 4593066336127987325
L4ea4c0b1a8c6_k219:
    .quad 4594330946903352961
L4ea4c0b1a8c6_k220:
    .quad 4595480265528257911
L4ea4c0b1a8c6_k221:
    .quad 4596820536777363371
L4ea4c0b1a8c6_k222:
    .quad 4598259887218270981
L4ea4c0b1a8c6_k223:
    .quad 4599113769707620427
L4ea4c0b1a8c6_k224:
    .quad 4600066731388772024
L4ea4c0b1a8c6_k225:
    .quad 4601118772261725772
L4ea4c0b1a8c6_k226:
    .quad 4602266289446779775
L4ea4c0b1a8c6_k227:
    .quad 4603099455377843316
L4ea4c0b1a8c6_k228:
    .quad 4603774995321948891
L4ea4c0b1a8c6_k229:
    .quad 4604498273422104592
L4ea4c0b1a8c6_k230:
    .quad 4605267488238459473
L4ea4c0b1a8c6_k231:
    .quad 4606085341930789955
L4ea4c0b1a8c6_k232:
    .quad 4606948231619394142
L4ea4c0b1a8c6_k233:
    .quad 4607514334092554614
L4ea4c0b1a8c6_k234:
    .quad 4607975502694397352
L4ea4c0b1a8c6_k235:
    .quad 4608437572016165565
L4ea4c0b1a8c6_k236:
    .quad 4608890183778716300
L4ea4c0b1a8c6_k237:
    .quad 4609332887622086820
L4ea4c0b1a8c6_k238:
    .quad 4609762531026537965
L4ea4c0b1a8c6_k239:
    .quad 4610174610392442366
L4ea4c0b1a8c6_k240:
    .quad 4610564622120172650
L4ea4c0b1a8c6_k241:
    .quad 4610926261170250501
L4ea4c0b1a8c6_k242:
    .quad 4611246917463719281
L4ea4c0b1a8c6_k243:
    .quad 4611522537760914355
L4ea4c0b1a8c6_k244:
    .quad 4611715967364909918
L4ea4c0b1a8c6_k245:
    .quad 4611797032158202587
L4ea4c0b1a8c6_k246:
    .quad 4611853552333526086
L4ea4c0b1a8c6_k247:
    .quad 4611891157390414630
L4ea4c0b1a8c6_k248:
    .quad 4611914801288458325
L4ea4c0b1a8c6_k249:
    .quad 4611928987627284542
L4ea4c0b1a8c6_k250:
    .quad 4611938220006520652
L4ea4c0b1a8c6_k251:
    .quad 4611945200585943076
L4ea4c0b1a8c6_k252:
    .quad 4611951280445440026
L4ea4c0b1a8c6_k253:
    .quad 4611957585484918345
L4ea4c0b1a8c6_k254:
    .quad 4611964566064340769
L4ea4c0b1a8c6_k255:
    .quad 4611971321463781825
L4ea4c0b1a8c6_k256:
    .quad 4611976725783334670
L4ea4c0b1a8c6_k257:
    .quad 4611980553843017934
L4ea4c0b1a8c6_k258:
    .quad 4611982805642831620
L4ea4c0b1a8c6_k259:
    .quad 4611984381902701199
L4ea4c0b1a8c6_k260:
    .quad 4611985057442645305
L4ea4c0b1a8c6_k261:
    .quad 4611985282622626673
L4ea4c0b1a8c6_k262:
    .quad 4589571542817147820
L4ea4c0b1a8c6_k263:
    .quad 4589614777373570577
L4ea4c0b1a8c6_k264:
    .quad 4589910213509126082
L4ea4c0b1a8c6_k265:
    .quad 4590443439705006748
L4ea4c0b1a8c6_k266:
    .quad 4591300925074058091
L4ea4c0b1a8c6_k267:
    .quad 4593992276211374699
L4ea4c0b1a8c6_k268:
    .quad 4595047919964030344
L4ea4c0b1a8c6_k269:
    .quad 4596319736498799772
L4ea4c0b1a8c6_k270:
    .quad 4597778902778067812
L4ea4c0b1a8c6_k271:
    .quad 4598802120613406389
L4ea4c0b1a8c6_k272:
    .quad 4599724457817091867
L4ea4c0b1a8c6_k273:
    .quad 4600749477092281392
L4ea4c0b1a8c6_k274:
    .quad 4601875376999124016
L4ea4c0b1a8c6_k275:
    .quad 4602900396274313540
L4ea4c0b1a8c6_k276:
    .quad 4603575936218419115
L4ea4c0b1a8c6_k277:
    .quad 4604301916478351239
L4ea4c0b1a8c6_k278:
    .quad 4605078337054109912
L4ea4c0b1a8c6_k279:
    .quad 4605902495785918713
L4ea4c0b1a8c6_k280:
    .quad 4606772591233926693
L4ea4c0b1a8c6_k281:
    .quad 4607432818939299208
L4ea4c0b1a8c6_k282:
    .quad 4607905246540210373
L4ea4c0b1a8c6_k283:
    .quad 4608388482780227227
L4ea4c0b1a8c6_k284:
    .quad 4608874871539983240
L4ea4c0b1a8c6_k285:
    .quad 4609360359579813780
L4ea4c0b1a8c6_k286:
    .quad 4609837290780352315
L4ea4c0b1a8c6_k287:
    .quad 4610292604702679473
L4ea4c0b1a8c6_k288:
    .quad 4610711439468024929
L4ea4c0b1a8c6_k289:
    .quad 4611075780677879202
L4ea4c0b1a8c6_k290:
    .quad 4611366262853844599
L4ea4c0b1a8c6_k291:
    .quad 4611590992475250387
L4ea4c0b1a8c6_k292:
    .quad 4611723173124313711
L4ea4c0b1a8c6_k293:
    .quad 4611783971719283212
L4ea4c0b1a8c6_k294:
    .quad 4611827656635668706
L4ea4c0b1a8c6_k295:
    .quad 4611860082552985774
L4ea4c0b1a8c6_k296:
    .quad 4611885753070861785
L4ea4c0b1a8c6_k297:
    .quad 4611905794089203584
L4ea4c0b1a8c6_k298:
    .quad 4611920655967973907
L4ea4c0b1a8c6_k299:
    .quad 4611929212807265911
L4ea4c0b1a8c6_k300:
    .quad 4611935292666762861
L4ea4c0b1a8c6_k301:
    .quad 4611943399146092128
L4ea4c0b1a8c6_k302:
    .quad 4611949929365551815
L4ea4c0b1a8c6_k303:
    .quad 4611954883325141923
L4ea4c0b1a8c6_k304:
    .quad 4611958486204843819
L4ea4c0b1a8c6_k305:
    .quad 4589441839147879550
L4ea4c0b1a8c6_k306:
    .quad 4589485073704302307
L4ea4c0b1a8c6_k307:
    .quad 4589506690982513685
L4ea4c0b1a8c6_k308:
    .quad 4589521102501321271
L4ea4c0b1a8c6_k309:
    .quad 4589549925538936442
L4ea4c0b1a8c6_k310:
    .quad 4589578748576551613
L4ea4c0b1a8c6_k311:
    .quad 4589629188892378163
L4ea4c0b1a8c6_k312:
    .quad 4589708452245819884
L4ea4c0b1a8c6_k313:
    .quad 4589845361674491947
L4ea4c0b1a8c6_k314:
    .quad 4590111974772432280
L4ea4c0b1a8c6_k315:
    .quad 4590580349133678812
L4ea4c0b1a8c6_k316:
    .quad 4591351365389884640
L4ea4c0b1a8c6_k317:
    .quad 4592540315691510451
L4ea4c0b1a8c6_k318:
    .quad 4593923821497038668
L4ea4c0b1a8c6_k319:
    .quad 4594961450851184830
L4ea4c0b1a8c6_k320:
    .quad 4596244076025059947
L4ea4c0b1a8c6_k321:
    .quad 4597746476860750745
L4ea4c0b1a8c6_k322:
    .quad 4598818333572064923
L4ea4c0b1a8c6_k323:
    .quad 4599791111091576950
L4ea4c0b1a8c6_k324:
    .quad 4600868372122443973
L4ea4c0b1a8c6_k325:
    .quad 4602053719544367887
L4ea4c0b1a8c6_k326:
    .quad 4603019291304476121
L4ea4c0b1a8c6_k327:
    .quad 4603726356445973289
L4ea4c0b1a8c6_k328:
    .quad 4604483861903297007
L4ea4c0b1a8c6_k329:
    .quad 4605293609116298222
L4ea4c0b1a8c6_k330:
    .quad 4606168208163933572
L4ea4c0b1a8c6_k331:
    .quad 4607116666245457799
L4ea4c0b1a8c6_k332:
    .quad 4607663853600183314
L4ea4c0b1a8c6_k333:
    .quad 4608206987715244196
L4ea4c0b1a8c6_k334:
    .quad 4608763182269224452
L4ea4c0b1a8c6_k335:
    .quad 4609315323583540075
L4ea4c0b1a8c6_k336:
    .quad 4609852603019085375
L4ea4c0b1a8c6_k337:
    .quad 4610361059417015504
L4ea4c0b1a8c6_k338:
    .quad 4610824479818671928
L4ea4c0b1a8c6_k339:
    .quad 4611227101625358850
L4ea4c0b1a8c6_k340:
    .quad 4611552711878417737
L4ea4c0b1a8c6_k341:
    .quad 4611734657303363505
L4ea4c0b1a8c6_k342:
    .quad 4611812794756898383
L4ea4c0b1a8c6_k343:
    .quad 4611863685432687670
L4ea4c0b1a8c6_k344:
    .quad 4611916602728309273
L4ea4c0b1a8c6_k345:
    .quad 4611930113527191385
L4ea4c0b1a8c6_k346:
    .quad 4611940021446371600
L4ea4c0b1a8c6_k347:
    .quad 4611948127925700867
L4ea4c0b1a8c6_k348:
    .quad 4611960963184638873
L4ea4c0b1a8c6_k349:
    .quad 4611965241604284875
L4ea4c0b1a8c6_k350:
    .quad 4611966592684173086
L4ea4c0b1a8c6_k351:
    .quad 4611968844483986771
L4ea4c0b1a8c6_k352:
    .quad 4611973798443576879
L4ea4c0b1a8c6_k353:
    .quad 4611978076863222881
L4ea4c0b1a8c6_k354:
    .quad 4611981004202980671
L4ea4c0b1a8c6_k355:
    .quad 4611983030822812988
L4ea4c0b1a8c6_k356:
    .quad 4589881390471510911
L4ea4c0b1a8c6_k357:
    .quad 4590529908817852262
L4ea4c0b1a8c6_k358:
    .quad 4591538715134383253
L4ea4c0b1a8c6_k359:
    .quad 4593001484293353190
L4ea4c0b1a8c6_k360:
    .quad 4595599160558420492
L4ea4c0b1a8c6_k361:
    .quad 4597090752755005601
L4ea4c0b1a8c6_k362:
    .quad 4598497677278596144
L4ea4c0b1a8c6_k363:
    .quad 4599483064877064808
L4ea4c0b1a8c6_k364:
    .quad 4600601759024503639
L4ea4c0b1a8c6_k365:
    .quad 4601882582758527808
L4ea4c0b1a8c6_k366:
    .quad 4603001276905966640
L4ea4c0b1a8c6_k367:
    .quad 4603809222679116906
L4ea4c0b1a8c6_k368:
    .quad 4604709041884665532
L4ea4c0b1a8c6_k369:
    .quad 4605711543161718204
L4ea4c0b1a8c6_k370:
    .quad 4606823932269678717
L4ea4c0b1a8c6_k371:
    .quad 4607615214724207713
L4ea4c0b1a8c6_k372:
    .quad 4608270488469990120
L4ea4c0b1a8c6_k373:
    .quad 4608950982373685802
L4ea4c0b1a8c6_k374:
    .quad 4609631476277381484
L4ea4c0b1a8c6_k375:
    .quad 4610277742823909150
L4ea4c0b1a8c6_k376:
    .quad 4610842494217181410
L4ea4c0b1a8c6_k377:
    .quad 4611286549140440141
L4ea4c0b1a8c6_k378:
    .quad 4611616662993126398
L4ea4c0b1a8c6_k379:
    .quad 4611765957320773730
L4ea4c0b1a8c6_k380:
    .quad 4611834412035109762
L4ea4c0b1a8c6_k381:
    .quad 4611871341552054200
L4ea4c0b1a8c6_k382:
    .quad 4611889581130545050
L4ea4c0b1a8c6_k383:
    .quad 4611900389769650740
L4ea4c0b1a8c6_k384:
    .quad 4611908496248980007
L4ea4c0b1a8c6_k385:
    .quad 4611916377548327905
L4ea4c0b1a8c6_k386:
    .quad 4611925384747582646
L4ea4c0b1a8c6_k387:
    .quad 4611934391946837387
L4ea4c0b1a8c6_k388:
    .quad 4611941597706241180
L4ea4c0b1a8c6_k389:
    .quad 4611946326485849919
L4ea4c0b1a8c6_k390:
    .quad 4611948578285663604
L4ea4c0b1a8c6_k391:
    .quad 4611949704185570447
L4ea4c0b1a8c6_k392:
    .quad 4611950830085477289
L4ea4c0b1a8c6_k393:
    .quad 4611951505625421395
L4ea4c0b1a8c6_k394:
    .quad 4588850966876768541
L4ea4c0b1a8c6_k395:
    .quad 4588894201433191298
L4ea4c0b1a8c6_k396:
    .quad 4588923024470806469
L4ea4c0b1a8c6_k397:
    .quad 4588937435989614055
L4ea4c0b1a8c6_k398:
    .quad 4588966259027229226
L4ea4c0b1a8c6_k399:
    .quad 4589204049087554388
L4ea4c0b1a8c6_k400:
    .quad 4589340958516226451
L4ea4c0b1a8c6_k401:
    .quad 4590162415088258830
L4ea4c0b1a8c6_k402:
    .quad 4591055929254329136
L4ea4c0b1a8c6_k403:
    .quad 4592403406262838388
L4ea4c0b1a8c6_k404:
    .quad 4593981467572269010
L4ea4c0b1a8c6_k405:
    .quad 4595256886986740335
L4ea4c0b1a8c6_k406:
    .quad 4596860168454084231
L4ea4c0b1a8c6_k407:
    .quad 4598488670079341403
L4ea4c0b1a8c6_k408:
    .quad 4599646995903501094
L4ea4c0b1a8c6_k409:
    .quad 4601003480111265087
L4ea4c0b1a8c6_k410:
    .quad 4602574335661291916
L4ea4c0b1a8c6_k411:
    .quad 4603538105981549203
L4ea4c0b1a8c6_k412:
    .quad 4604590146854502951
L4ea4c0b1a8c6_k413:
    .quad 4605799813714414666
L4ea4c0b1a8c6_k414:
    .quad 4607175213040613615
L4ea4c0b1a8c6_k415:
    .quad 4607934519937788281
L4ea4c0b1a8c6_k416:
    .quad 4608736160671460229
L4ea4c0b1a8c6_k417:
    .quad 4609550861844051552
L4ea4c0b1a8c6_k418:
    .quad 4610317824860592747
L4ea4c0b1a8c6_k419:
    .quad 4610963641047157676
L4ea4c0b1a8c6_k420:
    .quad 4611425260008963152
L4ea4c0b1a8c6_k421:
    .quad 4611710788225338442
L4ea4c0b1a8c6_k422:
    .quad 4611810542957084698
L4ea4c0b1a8c6_k423:
    .quad 4611872692631942411
L4ea4c0b1a8c6_k424:
    .quad 4611912549488644640
L4ea4c0b1a8c6_k425:
    .quad 4611939571086408863
L4ea4c0b1a8c6_k426:
    .quad 4611962314264527084
L4ea4c0b1a8c6_k427:
    .quad 4611980779022999303
L4ea4c0b1a8c6_k428:
    .quad 4611993389101955940
L4ea4c0b1a8c6_k429:
    .quad 4611998343061546048
L4ea4c0b1a8c6_k430:
    .quad 4611999018601490153
L4ea4c0b1a8c6_k431:
    .quad 4612000144501396996
L4ea4c0b1a8c6_k432:
    .quad 4612003972561080261
L4ea4c0b1a8c6_k433:
    .quad 4612008701340689000
L4ea4c0b1a8c6_k434:
    .quad 4612013880480260476
L4ea4c0b1a8c6_k435:
    .quad 4612017933719925110
L4ea4c0b1a8c6_k436:
    .quad 4612019059619831952
L4ea4c0b1a8c6_k437:
    .quad 4589182431809343010
L4ea4c0b1a8c6_k438:
    .quad 4589232872125169559
L4ea4c0b1a8c6_k439:
    .quad 4589261695162784730
L4ea4c0b1a8c6_k440:
    .quad 4589312135478611280
L4ea4c0b1a8c6_k441:
    .quad 4589391398832053001
L4ea4c0b1a8c6_k442:
    .quad 4590508291539640884
L4ea4c0b1a8c6_k443:
    .quad 4591502686337364289
L4ea4c0b1a8c6_k444:
    .quad 4593073541887391118
L4ea4c0b1a8c6_k445:
    .quad 4594532708166659159
L4ea4c0b1a8c6_k446:
    .quad 4596110769476089781
L4ea4c0b1a8c6_k447:
    .quad 4598142793627959348
L4ea4c0b1a8c6_k448:
    .quad 4599438028880791103
L4ea4c0b1a8c6_k449:
    .quad 4601032303148880259
L4ea4c0b1a8c6_k450:
    .quad 4602840048039306776
L4ea4c0b1a8c6_k451:
    .quad 4604039806980038276
L4ea4c0b1a8c6_k452:
    .quad 4605438625024299552
L4ea4c0b1a8c6_k453:
    .quad 4607000473375071640
L4ea4c0b1a8c6_k454:
    .quad 4607922810578757118
L4ea4c0b1a8c6_k455:
    .quad 4608781647027696671
L4ea4c0b1a8c6_k456:
    .quad 4609644536716300858
L4ea4c0b1a8c6_k457:
    .quad 4610484908406768193
L4ea4c0b1a8c6_k458:
    .quad 4611229803785135273
L4ea4c0b1a8c6_k459:
    .quad 4611695250806624014
L4ea4c0b1a8c6_k460:
    .quad 4611804012737625011
L4ea4c0b1a8c6_k461:
    .quad 4611861433632873985
L4ea4c0b1a8c6_k462:
    .quad 4611894760270116526
L4ea4c0b1a8c6_k463:
    .quad 4611915251648421062
L4ea4c0b1a8c6_k464:
    .quad 4611928086907359068
L4ea4c0b1a8c6_k465:
    .quad 4611936868926632441
L4ea4c0b1a8c6_k466:
    .quad 4611944525045998970
L4ea4c0b1a8c6_k467:
    .quad 4611951055265458658
L4ea4c0b1a8c6_k468:
    .quad 4611957360304936976
L4ea4c0b1a8c6_k469:
    .quad 4611968168944042666
L4ea4c0b1a8c6_k470:
    .quad 4611974248803539616
L4ea4c0b1a8c6_k471:
    .quad 4611987084062477622
L4ea4c0b1a8c6_k472:
    .quad 4611991587662104992
L4ea4c0b1a8c6_k473:
    .quad 4611994515001862783
L4ea4c0b1a8c6_k474:
    .quad 4611996091261732363
L4ea4c0b1a8c6_k475:
    .quad 4611996766801676468
L4ea4c0b1a8c6_k476:
    .quad 4589376987313245415
L4ea4c0b1a8c6_k477:
    .quad 4589975065343760217
L4ea4c0b1a8c6_k478:
    .quad 4590695641284139496
L4ea4c0b1a8c6_k479:
    .quad 4591927826142188064
L4ea4c0b1a8c6_k480:
    .quad 4593797720707472294
L4ea4c0b1a8c6_k481:
    .quad 4595325341701076366
L4ea4c0b1a8c6_k482:
    .quad 4597569935755357821
L4ea4c0b1a8c6_k483:
    .quad 4599445234640194896
L4ea4c0b1a8c6_k484:
    .quad 4601569132224462822
L4ea4c0b1a8c6_k485:
    .quad 4603511084383784980
L4ea4c0b1a8c6_k486:
    .quad 4605210742883154605
L4ea4c0b1a8c6_k487:
    .quad 4607192777079160360
L4ea4c0b1a8c6_k488:
    .quad 4608304715827158136
L4ea4c0b1a8c6_k489:
    .quad 4609409448815752118
L4ea4c0b1a8c6_k490:
    .quad 4610369616256307508
L4ea4c0b1a8c6_k491:
    .quad 4611061369159071616
L4ea4c0b1a8c6_k492:
    .quad 4611526140640616251
L4ea4c0b1a8c6_k493:
    .quad 4611754698321705304
L4ea4c0b1a8c6_k494:
    .quad 4611845445854196820
L4ea4c0b1a8c6_k495:
    .quad 4611899263869743897
L4ea4c0b1a8c6_k496:
    .quad 4611931689787060965
L4ea4c0b1a8c6_k497:
    .quad 4611955784045067397
L4ea4c0b1a8c6_k498:
    .quad 4611974924343483721
L4ea4c0b1a8c6_k499:
    .quad 4611990461762198150
L4ea4c0b1a8c6_k500:
    .quad 4612002846661173418
L4ea4c0b1a8c6_k501:
    .quad 4612012079040409528
L4ea4c0b1a8c6_k502:
    .quad 4612018609259869215
L4ea4c0b1a8c6_k503:
    .quad 4612021536599627006
L4ea4c0b1a8c6_k504:
    .quad 4612021986959589743
L4ea4c0b1a8c6_k505:
    .quad 4589369781553841622
L4ea4c0b1a8c6_k506:
    .quad 4591149604126578442
L4ea4c0b1a8c6_k507:
    .quad 4593044718849775947
L4ea4c0b1a8c6_k508:
    .quad 4594975862369992416
L4ea4c0b1a8c6_k509:
    .quad 4597544715597444547
L4ea4c0b1a8c6_k510:
    .quad 4599782103892322209
L4ea4c0b1a8c6_k511:
    .quad 4602460844950682180
L4ea4c0b1a8c6_k512:
    .quad 4604347853194550418
L4ea4c0b1a8c6_k513:
    .quad 4606573532130396917
L4ea4c0b1a8c6_k514:
    .quad 4608083589085454244
L4ea4c0b1a8c6_k515:
    .quad 4609225251590992665
L4ea4c0b1a8c6_k516:
    .quad 4610158397433783832
L4ea4c0b1a8c6_k517:
    .quad 4610877622294274900
L4ea4c0b1a8c6_k518:
    .quad 4611393284451608822
L4ea4c0b1a8c6_k519:
    .quad 4611700655126176858
L4ea4c0b1a8c6_k520:
    .quad 4611793204098519322
L4ea4c0b1a8c6_k521:
    .quad 4611843419234364503
L4ea4c0b1a8c6_k522:
    .quad 4611874043711830622
L4ea4c0b1a8c6_k523:
    .quad 4611892958830265578
L4ea4c0b1a8c6_k524:
    .quad 4611903992649352636
L4ea4c0b1a8c6_k525:
    .quad 4611909622148886849
L4ea4c0b1a8c6_k526:
    .quad 4611912999848607377
L4ea4c0b1a8c6_k527:
    .quad 4611915476828402431
L4ea4c0b1a8c6_k528:
    .quad 4611919304888085696
L4ea4c0b1a8c6_k529:
    .quad 4611922907767787592
L4ea4c0b1a8c6_k530:
    .quad 4611926510647489488
L4ea4c0b1a8c6_k531:
    .quad 4611928312087340437
L4ea4c0b1a8c6_k532:
    .quad 4611929663167228648
L4ea4c0b1a8c6_k533:
    .quad 4611931014247116859
L4ea4c0b1a8c6_k534:
    .quad 4611934842306800124
L4ea4c0b1a8c6_k535:
    .quad 4611936418566669704
L4ea4c0b1a8c6_k536:
    .quad 4611937319286595178
L4ea4c0b1a8c6_k537:
    .quad 4611937994826539283


    .p2align 2
    .globl _lb_11film_stocks_24kodak_polycontrast_iv_rc
_lb_11film_stocks_24kodak_polycontrast_iv_rc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #45040
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #16
    str d8, [x16]
    sub x16, x29, #24
    str d9, [x16]
    movz x16, #16384
    sub x0, x29, x16
    mov x1, #0
    movz x2, #16360
    bl _memset
    adrp x14, _lb_text_741d9bd8cbc7@PAGE
    add x14, x14, _lb_text_741d9bd8cbc7@PAGEOFF
    str x14, [sp, #28656]
    movz x9, #24
    str x9, [sp, #28664]
    mov x9, #0
    str x9, [sp, #28672]
    fmov d24, #3.0000000
    fmov d25, #-3.0000000
    str d25, [sp, #28680]
    ldr d25, L3db32ba7b15e_k0
    str d25, [sp, #28688]
    movz x9, #58
    str x9, [sp, #28696]
    movz x9, #3
    str x9, [sp, #28704]
    fmov d8, #1.0000000
    str d8, [sp, #28528]
    str d24, [sp, #28536]
    fmov d24, #5.0000000
    str d24, [sp, #28544]
    fmov d9, xzr
    str d9, [sp, #28552]
    str d9, [sp, #28560]
    str d9, [sp, #28568]
    str d9, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #16512
    sub x10, x29, x16
    movz x16, #16328
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x11, #96]
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x11, #112]
    ldr d24, L3db32ba7b15e_k1
    str d24, [sp, #16368]
    ldr d25, L3db32ba7b15e_k2
    str d25, [sp, #16376]
    ldr d26, L3db32ba7b15e_k3
    str d26, [sp, #16384]
    ldr d26, L3db32ba7b15e_k4
    str d26, [sp, #16392]
    str d26, [sp, #16400]
    ldr d26, L3db32ba7b15e_k5
    str d26, [sp, #16408]
    str d26, [sp, #16416]
    str d26, [sp, #16424]
    str d26, [sp, #16432]
    str d26, [sp, #16440]
    str d26, [sp, #16448]
    str d26, [sp, #16456]
    ldr d27, L3db32ba7b15e_k6
    str d27, [sp, #16464]
    ldr d28, L3db32ba7b15e_k7
    str d28, [sp, #16472]
    ldr d29, L3db32ba7b15e_k8
    str d29, [sp, #16480]
    ldr d29, L3db32ba7b15e_k9
    str d29, [sp, #16488]
    ldr d29, L3db32ba7b15e_k10
    str d29, [sp, #16496]
    ldr d29, L3db32ba7b15e_k11
    str d29, [sp, #16504]
    ldr d29, L3db32ba7b15e_k12
    str d29, [sp, #16512]
    ldr d29, L3db32ba7b15e_k13
    str d29, [sp, #16520]
    ldr d29, L3db32ba7b15e_k14
    str d29, [sp, #16528]
    ldr d29, L3db32ba7b15e_k15
    str d29, [sp, #16536]
    ldr d29, L3db32ba7b15e_k16
    str d29, [sp, #16544]
    ldr d29, L3db32ba7b15e_k17
    str d29, [sp, #16552]
    ldr d29, L3db32ba7b15e_k18
    str d29, [sp, #16560]
    ldr d29, L3db32ba7b15e_k19
    str d29, [sp, #16568]
    ldr d29, L3db32ba7b15e_k20
    str d29, [sp, #16576]
    ldr d29, L3db32ba7b15e_k21
    str d29, [sp, #16584]
    ldr d29, L3db32ba7b15e_k22
    str d29, [sp, #16592]
    ldr d29, L3db32ba7b15e_k23
    str d29, [sp, #16600]
    ldr d29, L3db32ba7b15e_k24
    str d29, [sp, #16608]
    ldr d29, L3db32ba7b15e_k25
    str d29, [sp, #16616]
    ldr d29, L3db32ba7b15e_k26
    str d29, [sp, #16624]
    ldr d29, L3db32ba7b15e_k27
    str d29, [sp, #16632]
    ldr d29, L3db32ba7b15e_k28
    str d29, [sp, #16640]
    ldr d29, L3db32ba7b15e_k29
    str d29, [sp, #16648]
    ldr d29, L3db32ba7b15e_k30
    str d29, [sp, #16656]
    ldr d29, L3db32ba7b15e_k31
    str d29, [sp, #16664]
    ldr d29, L3db32ba7b15e_k32
    str d29, [sp, #16672]
    ldr d29, L3db32ba7b15e_k33
    str d29, [sp, #16680]
    ldr d29, L3db32ba7b15e_k34
    str d29, [sp, #16688]
    ldr d29, L3db32ba7b15e_k35
    str d29, [sp, #16696]
    ldr d29, L3db32ba7b15e_k36
    str d29, [sp, #16704]
    ldr d29, L3db32ba7b15e_k37
    str d29, [sp, #16712]
    ldr d29, L3db32ba7b15e_k38
    str d29, [sp, #16720]
    ldr d29, L3db32ba7b15e_k39
    str d29, [sp, #16728]
    ldr d29, L3db32ba7b15e_k40
    str d29, [sp, #16736]
    ldr d29, L3db32ba7b15e_k41
    str d29, [sp, #16744]
    ldr d29, L3db32ba7b15e_k42
    str d29, [sp, #16752]
    ldr d30, L3db32ba7b15e_k43
    str d30, [sp, #16760]
    str d30, [sp, #16768]
    str d30, [sp, #16776]
    ldr d31, L3db32ba7b15e_k44
    str d31, [sp, #16784]
    ldr d31, L3db32ba7b15e_k45
    str d31, [sp, #16792]
    ldr d31, L3db32ba7b15e_k46
    str d31, [sp, #16800]
    ldr d19, L3db32ba7b15e_k47
    str d19, [sp, #16808]
    ldr d19, L3db32ba7b15e_k48
    str d19, [sp, #16816]
    ldr d19, L3db32ba7b15e_k49
    str d19, [sp, #16824]
    str d19, [sp, #16832]
    str d19, [sp, #16840]
    str d19, [sp, #16848]
    str d19, [sp, #16856]
    str d19, [sp, #16864]
    str d19, [sp, #16872]
    str d19, [sp, #16880]
    str d19, [sp, #16888]
    str d19, [sp, #16896]
    str d19, [sp, #16904]
    str d19, [sp, #16912]
    str d19, [sp, #16920]
    str d19, [sp, #16928]
    str d19, [sp, #16936]
    str d19, [sp, #16944]
    str d19, [sp, #16952]
    str d19, [sp, #16960]
    str d19, [sp, #16968]
    str d19, [sp, #16976]
    str d19, [sp, #16984]
    str d19, [sp, #16992]
    str d19, [sp, #17000]
    str d19, [sp, #17008]
    str d19, [sp, #17016]
    str d19, [sp, #17024]
    str d19, [sp, #17032]
    str d19, [sp, #17040]
    str d19, [sp, #17048]
    str d19, [sp, #17056]
    str d19, [sp, #17064]
    str d19, [sp, #17072]
    str d19, [sp, #17080]
    str d19, [sp, #17088]
    str d19, [sp, #17096]
    str d19, [sp, #17104]
    str d19, [sp, #17112]
    str d19, [sp, #17120]
    str d19, [sp, #17128]
    str d26, [sp, #17136]
    str d26, [sp, #17144]
    str d26, [sp, #17152]
    str d26, [sp, #17160]
    str d26, [sp, #17168]
    str d26, [sp, #17176]
    str d26, [sp, #17184]
    str d26, [sp, #17192]
    str d26, [sp, #17200]
    str d26, [sp, #17208]
    str d26, [sp, #17216]
    str d26, [sp, #17224]
    str d26, [sp, #17232]
    str d26, [sp, #17240]
    str d26, [sp, #17248]
    ldr d19, L3db32ba7b15e_k50
    str d19, [sp, #17256]
    ldr d19, L3db32ba7b15e_k51
    str d19, [sp, #17264]
    ldr d19, L3db32ba7b15e_k52
    str d19, [sp, #17272]
    ldr d19, L3db32ba7b15e_k53
    str d19, [sp, #17280]
    ldr d19, L3db32ba7b15e_k54
    str d19, [sp, #17288]
    ldr d19, L3db32ba7b15e_k55
    str d19, [sp, #17296]
    ldr d19, L3db32ba7b15e_k56
    str d19, [sp, #17304]
    ldr d19, L3db32ba7b15e_k57
    str d19, [sp, #17312]
    ldr d19, L3db32ba7b15e_k58
    str d19, [sp, #17320]
    ldr d19, L3db32ba7b15e_k59
    str d19, [sp, #17328]
    ldr d19, L3db32ba7b15e_k60
    str d19, [sp, #17336]
    ldr d19, L3db32ba7b15e_k61
    str d19, [sp, #17344]
    ldr d19, L3db32ba7b15e_k62
    str d19, [sp, #17352]
    ldr d19, L3db32ba7b15e_k63
    str d19, [sp, #17360]
    ldr d19, L3db32ba7b15e_k64
    str d19, [sp, #17368]
    ldr d19, L3db32ba7b15e_k65
    str d19, [sp, #17376]
    ldr d19, L3db32ba7b15e_k66
    str d19, [sp, #17384]
    ldr d19, L3db32ba7b15e_k67
    str d19, [sp, #17392]
    ldr d19, L3db32ba7b15e_k68
    str d19, [sp, #17400]
    ldr d19, L3db32ba7b15e_k69
    str d19, [sp, #17408]
    ldr d19, L3db32ba7b15e_k70
    str d19, [sp, #17416]
    ldr d19, L3db32ba7b15e_k71
    str d19, [sp, #17424]
    ldr d19, L3db32ba7b15e_k72
    str d19, [sp, #17432]
    ldr d19, L3db32ba7b15e_k73
    str d19, [sp, #17440]
    ldr d19, L3db32ba7b15e_k74
    str d19, [sp, #17448]
    ldr d19, L3db32ba7b15e_k75
    str d19, [sp, #17456]
    ldr d19, L3db32ba7b15e_k76
    str d19, [sp, #17464]
    str d19, [sp, #17472]
    ldr d20, L3db32ba7b15e_k77
    str d20, [sp, #17480]
    ldr d20, L3db32ba7b15e_k78
    str d20, [sp, #17488]
    ldr d20, L3db32ba7b15e_k79
    str d20, [sp, #17496]
    str d30, [sp, #17504]
    ldr d21, L3db32ba7b15e_k80
    str d21, [sp, #17512]
    ldr d22, L3db32ba7b15e_k81
    str d22, [sp, #17520]
    ldr d22, L3db32ba7b15e_k82
    str d22, [sp, #17528]
    str d31, [sp, #17536]
    str d31, [sp, #17544]
    ldr d31, L3db32ba7b15e_k83
    str d31, [sp, #17552]
    ldr d31, L3db32ba7b15e_k84
    str d31, [sp, #17560]
    str d31, [sp, #17568]
    str d31, [sp, #17576]
    str d31, [sp, #17584]
    str d31, [sp, #17592]
    str d31, [sp, #17600]
    str d31, [sp, #17608]
    str d31, [sp, #17616]
    str d31, [sp, #17624]
    str d31, [sp, #17632]
    str d31, [sp, #17640]
    str d31, [sp, #17648]
    str d31, [sp, #17656]
    str d31, [sp, #17664]
    str d31, [sp, #17672]
    str d31, [sp, #17680]
    str d31, [sp, #17688]
    str d31, [sp, #17696]
    str d31, [sp, #17704]
    str d31, [sp, #17712]
    str d31, [sp, #17720]
    str d31, [sp, #17728]
    str d31, [sp, #17736]
    str d31, [sp, #17744]
    str d31, [sp, #17752]
    str d31, [sp, #17760]
    str d31, [sp, #17768]
    str d31, [sp, #17776]
    str d31, [sp, #17784]
    str d31, [sp, #17792]
    str d31, [sp, #17800]
    str d31, [sp, #17808]
    str d31, [sp, #17816]
    str d31, [sp, #17824]
    str d31, [sp, #17832]
    str d31, [sp, #17840]
    str d31, [sp, #17848]
    str d31, [sp, #17856]
    str d31, [sp, #17864]
    str d31, [sp, #17872]
    str d31, [sp, #17880]
    str d31, [sp, #17888]
    str d31, [sp, #17896]
    str d24, [sp, #17904]
    str d24, [sp, #17912]
    str d24, [sp, #17920]
    str d24, [sp, #17928]
    str d24, [sp, #17936]
    str d24, [sp, #17944]
    str d24, [sp, #17952]
    str d24, [sp, #17960]
    str d24, [sp, #17968]
    str d24, [sp, #17976]
    str d24, [sp, #17984]
    str d24, [sp, #17992]
    str d24, [sp, #18000]
    str d24, [sp, #18008]
    str d24, [sp, #18016]
    str d24, [sp, #18024]
    str d25, [sp, #18032]
    ldr d24, L3db32ba7b15e_k85
    str d24, [sp, #18040]
    str d26, [sp, #18048]
    str d26, [sp, #18056]
    str d26, [sp, #18064]
    str d26, [sp, #18072]
    ldr d24, L3db32ba7b15e_k86
    str d24, [sp, #18080]
    ldr d24, L3db32ba7b15e_k87
    str d24, [sp, #18088]
    str d27, [sp, #18096]
    str d28, [sp, #18104]
    ldr d24, L3db32ba7b15e_k88
    str d24, [sp, #18112]
    ldr d24, L3db32ba7b15e_k89
    str d24, [sp, #18120]
    ldr d24, L3db32ba7b15e_k90
    str d24, [sp, #18128]
    ldr d24, L3db32ba7b15e_k91
    str d24, [sp, #18136]
    ldr d24, L3db32ba7b15e_k92
    str d24, [sp, #18144]
    ldr d24, L3db32ba7b15e_k93
    str d24, [sp, #18152]
    ldr d24, L3db32ba7b15e_k94
    str d24, [sp, #18160]
    ldr d24, L3db32ba7b15e_k95
    str d24, [sp, #18168]
    ldr d24, L3db32ba7b15e_k96
    str d24, [sp, #18176]
    ldr d24, L3db32ba7b15e_k97
    str d24, [sp, #18184]
    ldr d24, L3db32ba7b15e_k98
    str d24, [sp, #18192]
    ldr d24, L3db32ba7b15e_k99
    str d24, [sp, #18200]
    ldr d24, L3db32ba7b15e_k100
    str d24, [sp, #18208]
    ldr d24, L3db32ba7b15e_k101
    str d24, [sp, #18216]
    ldr d24, L3db32ba7b15e_k102
    str d24, [sp, #18224]
    ldr d24, L3db32ba7b15e_k103
    str d24, [sp, #18232]
    ldr d24, L3db32ba7b15e_k104
    str d24, [sp, #18240]
    ldr d24, L3db32ba7b15e_k105
    str d24, [sp, #18248]
    str d19, [sp, #18256]
    str d20, [sp, #18264]
    str d20, [sp, #18272]
    str d20, [sp, #18280]
    str d20, [sp, #18288]
    str d29, [sp, #18296]
    str d30, [sp, #18304]
    ldr d24, L3db32ba7b15e_k106
    str d24, [sp, #18312]
    str d24, [sp, #18320]
    str d24, [sp, #18328]
    str d24, [sp, #18336]
    ldr d24, L3db32ba7b15e_k107
    str d24, [sp, #18344]
    str d21, [sp, #18352]
    ldr d24, L3db32ba7b15e_k108
    str d24, [sp, #18360]
    str d24, [sp, #18368]
    str d24, [sp, #18376]
    str d24, [sp, #18384]
    str d24, [sp, #18392]
    str d24, [sp, #18400]
    str d24, [sp, #18408]
    str d24, [sp, #18416]
    str d24, [sp, #18424]
    str d24, [sp, #18432]
    str d24, [sp, #18440]
    str d24, [sp, #18448]
    str d24, [sp, #18456]
    str d24, [sp, #18464]
    str d24, [sp, #18472]
    str d24, [sp, #18480]
    str d24, [sp, #18488]
    str d24, [sp, #18496]
    str d24, [sp, #18504]
    str d24, [sp, #18512]
    str d24, [sp, #18520]
    str d24, [sp, #18528]
    str d24, [sp, #18536]
    str d24, [sp, #18544]
    str d24, [sp, #18552]
    str d24, [sp, #18560]
    str d24, [sp, #18568]
    str d24, [sp, #18576]
    str d24, [sp, #18584]
    str d24, [sp, #18592]
    str d24, [sp, #18600]
    str d24, [sp, #18608]
    str d24, [sp, #18616]
    str d24, [sp, #18624]
    str d24, [sp, #18632]
    str d24, [sp, #18640]
    str d24, [sp, #18648]
    str d24, [sp, #18656]
    str d24, [sp, #18664]
    str d9, [sp, #18672]
    str d9, [sp, #18680]
    str d9, [sp, #18688]
    str d9, [sp, #18696]
    str d9, [sp, #18704]
    str d9, [sp, #18712]
    str d9, [sp, #18720]
    str d9, [sp, #18728]
    str d9, [sp, #18736]
    str d9, [sp, #18744]
    str d9, [sp, #18752]
    str d9, [sp, #18760]
    str d9, [sp, #18768]
    str d9, [sp, #18776]
    str d9, [sp, #18784]
    str d9, [sp, #18792]
    str d9, [sp, #18800]
    str d9, [sp, #18808]
    str d9, [sp, #18816]
    str d9, [sp, #18824]
    str d9, [sp, #18832]
    str d9, [sp, #18840]
    str d9, [sp, #18848]
    str d9, [sp, #18856]
    str d9, [sp, #18864]
    str d9, [sp, #18872]
    str d9, [sp, #18880]
    str d9, [sp, #18888]
    str d9, [sp, #18896]
    str d9, [sp, #18904]
    str d9, [sp, #18912]
    str d9, [sp, #18920]
    str d9, [sp, #18928]
    str d9, [sp, #18936]
    str d9, [sp, #18944]
    str d9, [sp, #18952]
    str d9, [sp, #18960]
    str d9, [sp, #18968]
    str d9, [sp, #18976]
    str d9, [sp, #18984]
    str d9, [sp, #18992]
    str d9, [sp, #19000]
    str d9, [sp, #19008]
    str d9, [sp, #19016]
    str d9, [sp, #19024]
    str d9, [sp, #19032]
    str d9, [sp, #19040]
    str d9, [sp, #19048]
    str d9, [sp, #19056]
    str d9, [sp, #19064]
    str d9, [sp, #19072]
    str d9, [sp, #19080]
    str d9, [sp, #19088]
    str d9, [sp, #19096]
    str d9, [sp, #19104]
    str d9, [sp, #19112]
    str d9, [sp, #19120]
    str d9, [sp, #19128]
    str d9, [sp, #19136]
    str d9, [sp, #19144]
    str d9, [sp, #19152]
    str d9, [sp, #19160]
    str d9, [sp, #19168]
    str d9, [sp, #19176]
    str d9, [sp, #19184]
    str d9, [sp, #19192]
    str d9, [sp, #19200]
    str d9, [sp, #19208]
    str d9, [sp, #19216]
    str d9, [sp, #19224]
    str d9, [sp, #19232]
    str d9, [sp, #19240]
    str d9, [sp, #19248]
    str d9, [sp, #19256]
    str d9, [sp, #19264]
    str d9, [sp, #19272]
    str d9, [sp, #19280]
    str d9, [sp, #19288]
    str d9, [sp, #19296]
    str d9, [sp, #19304]
    str d9, [sp, #19312]
    str d9, [sp, #19320]
    str d9, [sp, #19328]
    str d9, [sp, #19336]
    str d9, [sp, #19344]
    str d9, [sp, #19352]
    str d9, [sp, #19360]
    str d9, [sp, #19368]
    str d9, [sp, #19376]
    str d9, [sp, #19384]
    str d9, [sp, #19392]
    str d9, [sp, #19400]
    str d9, [sp, #19408]
    str d9, [sp, #19416]
    str d9, [sp, #19424]
    str d9, [sp, #19432]
    str d9, [sp, #19440]
    str d9, [sp, #19448]
    str d9, [sp, #19456]
    str d9, [sp, #19464]
    str d9, [sp, #19472]
    str d9, [sp, #19480]
    str d9, [sp, #19488]
    str d9, [sp, #19496]
    str d9, [sp, #19504]
    str d9, [sp, #19512]
    str d9, [sp, #19520]
    str d9, [sp, #19528]
    str d9, [sp, #19536]
    str d9, [sp, #19544]
    str d9, [sp, #19552]
    str d9, [sp, #19560]
    str d9, [sp, #19568]
    str d9, [sp, #19576]
    str d9, [sp, #19584]
    str d9, [sp, #19592]
    str d9, [sp, #19600]
    str d9, [sp, #19608]
    str d9, [sp, #19616]
    str d9, [sp, #19624]
    str d9, [sp, #19632]
    str d9, [sp, #19640]
    str d9, [sp, #19648]
    str d9, [sp, #19656]
    str d9, [sp, #19664]
    str d9, [sp, #19672]
    str d9, [sp, #19680]
    str d9, [sp, #19688]
    str d9, [sp, #19696]
    str d9, [sp, #19704]
    str d9, [sp, #19712]
    str d9, [sp, #19720]
    str d9, [sp, #19728]
    str d9, [sp, #19736]
    str d9, [sp, #19744]
    str d9, [sp, #19752]
    str d9, [sp, #19760]
    str d9, [sp, #19768]
    str d9, [sp, #19776]
    str d9, [sp, #19784]
    str d9, [sp, #19792]
    str d9, [sp, #19800]
    str d9, [sp, #19808]
    str d9, [sp, #19816]
    str d9, [sp, #19824]
    str d9, [sp, #19832]
    str d9, [sp, #19840]
    str d9, [sp, #19848]
    str d9, [sp, #19856]
    str d9, [sp, #19864]
    str d9, [sp, #19872]
    str d9, [sp, #19880]
    str d9, [sp, #19888]
    str d9, [sp, #19896]
    str d9, [sp, #19904]
    str d9, [sp, #19912]
    str d9, [sp, #19920]
    str d9, [sp, #19928]
    str d9, [sp, #19936]
    str d9, [sp, #19944]
    str d9, [sp, #19952]
    str d9, [sp, #19960]
    str d9, [sp, #19968]
    str d9, [sp, #19976]
    str d9, [sp, #19984]
    str d9, [sp, #19992]
    str d9, [sp, #20000]
    str d9, [sp, #20008]
    str d9, [sp, #20016]
    str d9, [sp, #20024]
    str d9, [sp, #20032]
    str d9, [sp, #20040]
    str d9, [sp, #20048]
    str d9, [sp, #20056]
    str d9, [sp, #20064]
    str d9, [sp, #20072]
    str d9, [sp, #20080]
    str d9, [sp, #20088]
    str d9, [sp, #20096]
    str d9, [sp, #20104]
    str d9, [sp, #20112]
    str d9, [sp, #20120]
    str d9, [sp, #20128]
    str d9, [sp, #20136]
    str d9, [sp, #20144]
    str d9, [sp, #20152]
    str d9, [sp, #20160]
    str d9, [sp, #20168]
    str d9, [sp, #20176]
    str d9, [sp, #20184]
    str d9, [sp, #20192]
    str d9, [sp, #20200]
    str d9, [sp, #20208]
    str d9, [sp, #20216]
    str d9, [sp, #20224]
    str d9, [sp, #20232]
    str d9, [sp, #20240]
    str d9, [sp, #20248]
    str d9, [sp, #20256]
    str d9, [sp, #20264]
    str d9, [sp, #20272]
    str d9, [sp, #20280]
    str d9, [sp, #20288]
    str d9, [sp, #20296]
    str d9, [sp, #20304]
    str d9, [sp, #20312]
    str d9, [sp, #20320]
    str d9, [sp, #20328]
    str d9, [sp, #20336]
    str d9, [sp, #20344]
    str d9, [sp, #20352]
    str d9, [sp, #20360]
    str d9, [sp, #20368]
    str d9, [sp, #20376]
    str d9, [sp, #20384]
    str d9, [sp, #20392]
    str d9, [sp, #20400]
    str d9, [sp, #20408]
    str d9, [sp, #20416]
    str d9, [sp, #20424]
    str d9, [sp, #20432]
    str d9, [sp, #20440]
    str d9, [sp, #20448]
    str d9, [sp, #20456]
    str d9, [sp, #20464]
    str d9, [sp, #20472]
    str d9, [sp, #20480]
    str d9, [sp, #20488]
    str d9, [sp, #20496]
    str d9, [sp, #20504]
    str d9, [sp, #20512]
    str d9, [sp, #20520]
    str d9, [sp, #20528]
    str d9, [sp, #20536]
    str d9, [sp, #20544]
    str d9, [sp, #20552]
    str d9, [sp, #20560]
    str d9, [sp, #20568]
    str d9, [sp, #20576]
    str d9, [sp, #20584]
    str d9, [sp, #20592]
    str d9, [sp, #20600]
    str d9, [sp, #20608]
    str d9, [sp, #20616]
    str d9, [sp, #20624]
    str d9, [sp, #20632]
    str d9, [sp, #20640]
    str d9, [sp, #20648]
    str d9, [sp, #20656]
    str d9, [sp, #20664]
    str d9, [sp, #20672]
    str d9, [sp, #20680]
    str d9, [sp, #20688]
    str d9, [sp, #20696]
    str d9, [sp, #20704]
    str d9, [sp, #20712]
    str d9, [sp, #20720]
    str d9, [sp, #20728]
    str d9, [sp, #20736]
    str d9, [sp, #20744]
    str d9, [sp, #20752]
    str d9, [sp, #20760]
    str d9, [sp, #20768]
    str d9, [sp, #20776]
    str d9, [sp, #20784]
    str d9, [sp, #20792]
    str d9, [sp, #20800]
    str d9, [sp, #20808]
    str d9, [sp, #20816]
    str d9, [sp, #20824]
    str d9, [sp, #20832]
    str d9, [sp, #20840]
    str d9, [sp, #20848]
    str d9, [sp, #20856]
    str d9, [sp, #20864]
    str d9, [sp, #20872]
    str d9, [sp, #20880]
    str d9, [sp, #20888]
    str d9, [sp, #20896]
    str d9, [sp, #20904]
    str d9, [sp, #20912]
    str d9, [sp, #20920]
    str d9, [sp, #20928]
    str d9, [sp, #20936]
    str d9, [sp, #20944]
    str d9, [sp, #20952]
    str d9, [sp, #20960]
    str d9, [sp, #20968]
    str d9, [sp, #20976]
    str d9, [sp, #20984]
    str d9, [sp, #20992]
    str d9, [sp, #21000]
    str d9, [sp, #21008]
    str d9, [sp, #21016]
    str d9, [sp, #21024]
    str d9, [sp, #21032]
    str d9, [sp, #21040]
    str d9, [sp, #21048]
    str d9, [sp, #21056]
    str d9, [sp, #21064]
    str d9, [sp, #21072]
    str d9, [sp, #21080]
    str d9, [sp, #21088]
    str d9, [sp, #21096]
    str d9, [sp, #21104]
    str d9, [sp, #21112]
    str d9, [sp, #21120]
    str d9, [sp, #21128]
    str d9, [sp, #21136]
    str d9, [sp, #21144]
    str d9, [sp, #21152]
    str d9, [sp, #21160]
    str d9, [sp, #21168]
    str d9, [sp, #21176]
    str d9, [sp, #21184]
    str d9, [sp, #21192]
    str d9, [sp, #21200]
    str d9, [sp, #21208]
    str d9, [sp, #21216]
    str d9, [sp, #21224]
    str d9, [sp, #21232]
    str d9, [sp, #21240]
    str d9, [sp, #21248]
    str d9, [sp, #21256]
    str d9, [sp, #21264]
    str d9, [sp, #21272]
    str d9, [sp, #21280]
    str d9, [sp, #21288]
    str d9, [sp, #21296]
    str d9, [sp, #21304]
    str d9, [sp, #21312]
    str d9, [sp, #21320]
    str d9, [sp, #21328]
    str d9, [sp, #21336]
    str d9, [sp, #21344]
    str d9, [sp, #21352]
    str d9, [sp, #21360]
    str d9, [sp, #21368]
    str d9, [sp, #21376]
    str d9, [sp, #21384]
    str d9, [sp, #21392]
    str d9, [sp, #21400]
    str d9, [sp, #21408]
    str d9, [sp, #21416]
    str d9, [sp, #21424]
    str d9, [sp, #21432]
    str d9, [sp, #21440]
    str d9, [sp, #21448]
    str d9, [sp, #21456]
    str d9, [sp, #21464]
    str d9, [sp, #21472]
    str d9, [sp, #21480]
    str d9, [sp, #21488]
    str d9, [sp, #21496]
    str d9, [sp, #21504]
    str d9, [sp, #21512]
    str d9, [sp, #21520]
    str d9, [sp, #21528]
    str d9, [sp, #21536]
    str d9, [sp, #21544]
    str d9, [sp, #21552]
    str d9, [sp, #21560]
    str d9, [sp, #21568]
    str d9, [sp, #21576]
    str d9, [sp, #21584]
    str d9, [sp, #21592]
    str d9, [sp, #21600]
    str d9, [sp, #21608]
    str d9, [sp, #21616]
    str d9, [sp, #21624]
    str d9, [sp, #21632]
    str d9, [sp, #21640]
    str d9, [sp, #21648]
    str d9, [sp, #21656]
    str d9, [sp, #21664]
    str d9, [sp, #21672]
    str d9, [sp, #21680]
    str d9, [sp, #21688]
    str d9, [sp, #21696]
    str d9, [sp, #21704]
    str d9, [sp, #21712]
    str d9, [sp, #21720]
    str d9, [sp, #21728]
    str d9, [sp, #21736]
    str d9, [sp, #21744]
    str d9, [sp, #21752]
    str d9, [sp, #21760]
    str d9, [sp, #21768]
    str d9, [sp, #21776]
    str d9, [sp, #21784]
    str d9, [sp, #21792]
    str d9, [sp, #21800]
    str d9, [sp, #21808]
    str d9, [sp, #21816]
    str d9, [sp, #21824]
    str d9, [sp, #21832]
    str d9, [sp, #21840]
    str d9, [sp, #21848]
    str d9, [sp, #21856]
    str d9, [sp, #21864]
    str d9, [sp, #21872]
    str d9, [sp, #21880]
    str d9, [sp, #21888]
    str d9, [sp, #21896]
    str d9, [sp, #21904]
    str d9, [sp, #21912]
    str d9, [sp, #21920]
    str d9, [sp, #21928]
    str d9, [sp, #21936]
    str d9, [sp, #21944]
    str d9, [sp, #21952]
    str d9, [sp, #21960]
    str d9, [sp, #21968]
    str d9, [sp, #21976]
    str d9, [sp, #21984]
    str d9, [sp, #21992]
    str d9, [sp, #22000]
    str d9, [sp, #22008]
    str d9, [sp, #22016]
    str d9, [sp, #22024]
    str d9, [sp, #22032]
    str d9, [sp, #22040]
    str d9, [sp, #22048]
    str d9, [sp, #22056]
    str d9, [sp, #22064]
    str d9, [sp, #22072]
    str d9, [sp, #22080]
    str d9, [sp, #22088]
    str d9, [sp, #22096]
    str d9, [sp, #22104]
    str d9, [sp, #22112]
    str d9, [sp, #22120]
    str d9, [sp, #22128]
    str d9, [sp, #22136]
    str d9, [sp, #22144]
    str d9, [sp, #22152]
    str d9, [sp, #22160]
    str d9, [sp, #22168]
    str d9, [sp, #22176]
    str d9, [sp, #22184]
    str d9, [sp, #22192]
    str d9, [sp, #22200]
    str d9, [sp, #22208]
    str d9, [sp, #22216]
    str d9, [sp, #22224]
    str d9, [sp, #22232]
    str d9, [sp, #22240]
    str d9, [sp, #22248]
    str d9, [sp, #22256]
    str d9, [sp, #22264]
    str d9, [sp, #22272]
    str d9, [sp, #22280]
    str d9, [sp, #22288]
    str d9, [sp, #22296]
    str d9, [sp, #22304]
    str d9, [sp, #22312]
    str d9, [sp, #22320]
    str d9, [sp, #22328]
    str d9, [sp, #22336]
    str d9, [sp, #22344]
    str d9, [sp, #22352]
    str d9, [sp, #22360]
    str d9, [sp, #22368]
    str d9, [sp, #22376]
    str d9, [sp, #22384]
    str d9, [sp, #22392]
    str d9, [sp, #22400]
    str d9, [sp, #22408]
    str d9, [sp, #22416]
    str d9, [sp, #22424]
    str d9, [sp, #22432]
    str d9, [sp, #22440]
    str d9, [sp, #22448]
    str d9, [sp, #22456]
    str d9, [sp, #22464]
    str d9, [sp, #22472]
    str d9, [sp, #22480]
    str d9, [sp, #22488]
    str d9, [sp, #22496]
    str d9, [sp, #22504]
    str d9, [sp, #22512]
    str d9, [sp, #22520]
    str d9, [sp, #22528]
    str d9, [sp, #22536]
    str d9, [sp, #22544]
    str d9, [sp, #22552]
    str d9, [sp, #22560]
    str d9, [sp, #22568]
    str d9, [sp, #22576]
    str d9, [sp, #22584]
    str d9, [sp, #22592]
    str d9, [sp, #22600]
    str d9, [sp, #22608]
    str d9, [sp, #22616]
    str d9, [sp, #22624]
    str d9, [sp, #22632]
    str d9, [sp, #22640]
    str d9, [sp, #22648]
    str d9, [sp, #22656]
    str d9, [sp, #22664]
    str d9, [sp, #22672]
    str d9, [sp, #22680]
    str d9, [sp, #22688]
    str d9, [sp, #22696]
    str d9, [sp, #22704]
    str d9, [sp, #22712]
    str d9, [sp, #22720]
    str d9, [sp, #22728]
    str d9, [sp, #22736]
    str d9, [sp, #22744]
    str d9, [sp, #22752]
    str d9, [sp, #22760]
    str d9, [sp, #22768]
    str d9, [sp, #22776]
    str d9, [sp, #22784]
    str d9, [sp, #22792]
    str d9, [sp, #22800]
    str d9, [sp, #22808]
    str d9, [sp, #22816]
    str d9, [sp, #22824]
    str d9, [sp, #22832]
    str d9, [sp, #22840]
    str d9, [sp, #22848]
    str d9, [sp, #22856]
    str d9, [sp, #22864]
    str d9, [sp, #22872]
    str d9, [sp, #22880]
    str d9, [sp, #22888]
    str d9, [sp, #22896]
    str d9, [sp, #22904]
    str d9, [sp, #22912]
    str d9, [sp, #22920]
    str d9, [sp, #22928]
    str d9, [sp, #22936]
    str d9, [sp, #22944]
    str d9, [sp, #22952]
    str d9, [sp, #22960]
    str d9, [sp, #22968]
    str d9, [sp, #22976]
    str d9, [sp, #22984]
    str d9, [sp, #22992]
    str d9, [sp, #23000]
    str d9, [sp, #23008]
    str d9, [sp, #23016]
    str d9, [sp, #23024]
    str d9, [sp, #23032]
    str d9, [sp, #23040]
    str d9, [sp, #23048]
    str d9, [sp, #23056]
    str d9, [sp, #23064]
    str d9, [sp, #23072]
    str d9, [sp, #23080]
    str d9, [sp, #23088]
    str d9, [sp, #23096]
    str d9, [sp, #23104]
    str d9, [sp, #23112]
    str d9, [sp, #23120]
    str d9, [sp, #23128]
    str d9, [sp, #23136]
    str d9, [sp, #23144]
    str d9, [sp, #23152]
    str d9, [sp, #23160]
    str d9, [sp, #23168]
    str d9, [sp, #23176]
    str d9, [sp, #23184]
    str d9, [sp, #23192]
    str d9, [sp, #23200]
    str d9, [sp, #23208]
    str d9, [sp, #23216]
    str d9, [sp, #23224]
    str d9, [sp, #23232]
    str d9, [sp, #23240]
    str d9, [sp, #23248]
    str d9, [sp, #23256]
    str d9, [sp, #23264]
    str d9, [sp, #23272]
    str d9, [sp, #23280]
    str d9, [sp, #23288]
    str d9, [sp, #23296]
    str d9, [sp, #23304]
    str d9, [sp, #23312]
    str d9, [sp, #23320]
    str d9, [sp, #23328]
    str d9, [sp, #23336]
    str d9, [sp, #23344]
    str d9, [sp, #23352]
    str d9, [sp, #23360]
    str d9, [sp, #23368]
    str d9, [sp, #23376]
    str d9, [sp, #23384]
    str d9, [sp, #23392]
    str d9, [sp, #23400]
    str d9, [sp, #23408]
    str d9, [sp, #23416]
    str d9, [sp, #23424]
    str d9, [sp, #23432]
    str d9, [sp, #23440]
    str d9, [sp, #23448]
    str d9, [sp, #23456]
    str d9, [sp, #23464]
    str d9, [sp, #23472]
    str d9, [sp, #23480]
    str d9, [sp, #23488]
    str d9, [sp, #23496]
    str d9, [sp, #23504]
    str d9, [sp, #23512]
    str d9, [sp, #23520]
    str d9, [sp, #23528]
    str d9, [sp, #23536]
    str d9, [sp, #23544]
    str d9, [sp, #23552]
    str d9, [sp, #23560]
    str d9, [sp, #23568]
    str d9, [sp, #23576]
    str d9, [sp, #23584]
    str d9, [sp, #23592]
    str d9, [sp, #23600]
    str d9, [sp, #23608]
    str d9, [sp, #23616]
    str d9, [sp, #23624]
    str d9, [sp, #23632]
    str d9, [sp, #23640]
    str d9, [sp, #23648]
    str d9, [sp, #23656]
    str d9, [sp, #23664]
    str d9, [sp, #23672]
    str d9, [sp, #23680]
    str d9, [sp, #23688]
    str d9, [sp, #23696]
    str d9, [sp, #23704]
    str d9, [sp, #23712]
    str d9, [sp, #23720]
    str d9, [sp, #23728]
    str d9, [sp, #23736]
    str d9, [sp, #23744]
    str d9, [sp, #23752]
    str d9, [sp, #23760]
    str d9, [sp, #23768]
    str d9, [sp, #23776]
    str d9, [sp, #23784]
    str d9, [sp, #23792]
    str d9, [sp, #23800]
    str d9, [sp, #23808]
    str d9, [sp, #23816]
    str d9, [sp, #23824]
    str d9, [sp, #23832]
    str d9, [sp, #23840]
    str d9, [sp, #23848]
    str d9, [sp, #23856]
    str d9, [sp, #23864]
    str d9, [sp, #23872]
    str d9, [sp, #23880]
    str d9, [sp, #23888]
    str d9, [sp, #23896]
    str d9, [sp, #23904]
    str d9, [sp, #23912]
    str d9, [sp, #23920]
    str d9, [sp, #23928]
    str d9, [sp, #23936]
    str d9, [sp, #23944]
    str d9, [sp, #23952]
    str d9, [sp, #23960]
    str d9, [sp, #23968]
    str d9, [sp, #23976]
    str d9, [sp, #23984]
    str d9, [sp, #23992]
    str d9, [sp, #24000]
    str d9, [sp, #24008]
    str d9, [sp, #24016]
    str d9, [sp, #24024]
    str d9, [sp, #24032]
    str d9, [sp, #24040]
    str d9, [sp, #24048]
    str d9, [sp, #24056]
    str d9, [sp, #24064]
    str d9, [sp, #24072]
    str d9, [sp, #24080]
    str d9, [sp, #24088]
    str d9, [sp, #24096]
    str d9, [sp, #24104]
    str d9, [sp, #24112]
    str d9, [sp, #24120]
    str d9, [sp, #24128]
    str d9, [sp, #24136]
    str d9, [sp, #24144]
    str d9, [sp, #24152]
    str d9, [sp, #24160]
    str d9, [sp, #24168]
    str d9, [sp, #24176]
    str d9, [sp, #24184]
    str d9, [sp, #24192]
    str d9, [sp, #24200]
    str d9, [sp, #24208]
    str d9, [sp, #24216]
    str d9, [sp, #24224]
    str d9, [sp, #24232]
    str d9, [sp, #24240]
    str d9, [sp, #24248]
    str d9, [sp, #24256]
    str d9, [sp, #24264]
    str d9, [sp, #24272]
    str d9, [sp, #24280]
    str d9, [sp, #24288]
    str d9, [sp, #24296]
    str d9, [sp, #24304]
    str d9, [sp, #24312]
    str d9, [sp, #24320]
    str d9, [sp, #24328]
    str d9, [sp, #24336]
    str d9, [sp, #24344]
    str d9, [sp, #24352]
    str d9, [sp, #24360]
    str d9, [sp, #24368]
    str d9, [sp, #24376]
    str d9, [sp, #24384]
    str d9, [sp, #24392]
    str d9, [sp, #24400]
    str d9, [sp, #24408]
    str d9, [sp, #24416]
    str d9, [sp, #24424]
    str d9, [sp, #24432]
    str d9, [sp, #24440]
    str d9, [sp, #24448]
    str d9, [sp, #24456]
    str d9, [sp, #24464]
    str d9, [sp, #24472]
    str d9, [sp, #24480]
    str d9, [sp, #24488]
    str d9, [sp, #24496]
    str d9, [sp, #24504]
    str d9, [sp, #24512]
    str d9, [sp, #24520]
    str d9, [sp, #24528]
    str d9, [sp, #24536]
    str d9, [sp, #24544]
    str d9, [sp, #24552]
    str d9, [sp, #24560]
    str d9, [sp, #24568]
    str d9, [sp, #24576]
    str d9, [sp, #24584]
    str d9, [sp, #24592]
    str d9, [sp, #24600]
    str d9, [sp, #24608]
    str d9, [sp, #24616]
    str d9, [sp, #24624]
    str d9, [sp, #24632]
    str d9, [sp, #24640]
    str d9, [sp, #24648]
    str d9, [sp, #24656]
    str d9, [sp, #24664]
    str d9, [sp, #24672]
    str d9, [sp, #24680]
    str d9, [sp, #24688]
    str d9, [sp, #24696]
    str d9, [sp, #24704]
    str d9, [sp, #24712]
    str d9, [sp, #24720]
    str d9, [sp, #24728]
    str d9, [sp, #24736]
    str d9, [sp, #24744]
    str d9, [sp, #24752]
    str d9, [sp, #24760]
    str d9, [sp, #24768]
    str d9, [sp, #24776]
    str d9, [sp, #24784]
    str d9, [sp, #24792]
    str d9, [sp, #24800]
    str d9, [sp, #24808]
    str d9, [sp, #24816]
    str d9, [sp, #24824]
    str d9, [sp, #24832]
    str d9, [sp, #24840]
    str d9, [sp, #24848]
    str d9, [sp, #24856]
    str d9, [sp, #24864]
    str d9, [sp, #24872]
    str d9, [sp, #24880]
    str d9, [sp, #24888]
    str d9, [sp, #24896]
    str d9, [sp, #24904]
    str d9, [sp, #24912]
    str d9, [sp, #24920]
    str d9, [sp, #24928]
    str d9, [sp, #24936]
    str d9, [sp, #24944]
    str d9, [sp, #24952]
    str d9, [sp, #24960]
    str d9, [sp, #24968]
    str d9, [sp, #24976]
    str d9, [sp, #24984]
    str d9, [sp, #24992]
    str d9, [sp, #25000]
    str d9, [sp, #25008]
    str d9, [sp, #25016]
    str d9, [sp, #25024]
    str d9, [sp, #25032]
    str d9, [sp, #25040]
    str d9, [sp, #25048]
    str d9, [sp, #25056]
    str d9, [sp, #25064]
    str d9, [sp, #25072]
    str d9, [sp, #25080]
    str d9, [sp, #25088]
    str d9, [sp, #25096]
    str d9, [sp, #25104]
    str d9, [sp, #25112]
    str d9, [sp, #25120]
    str d9, [sp, #25128]
    str d9, [sp, #25136]
    str d9, [sp, #25144]
    str d9, [sp, #25152]
    str d9, [sp, #25160]
    str d9, [sp, #25168]
    str d9, [sp, #25176]
    str d9, [sp, #25184]
    str d9, [sp, #25192]
    str d9, [sp, #25200]
    str d9, [sp, #25208]
    str d9, [sp, #25216]
    str d9, [sp, #25224]
    str d9, [sp, #25232]
    str d9, [sp, #25240]
    str d9, [sp, #25248]
    str d9, [sp, #25256]
    str d9, [sp, #25264]
    str d9, [sp, #25272]
    str d9, [sp, #25280]
    str d9, [sp, #25288]
    str d9, [sp, #25296]
    str d9, [sp, #25304]
    str d9, [sp, #25312]
    str d9, [sp, #25320]
    str d9, [sp, #25328]
    str d9, [sp, #25336]
    str d9, [sp, #25344]
    str d9, [sp, #25352]
    str d9, [sp, #25360]
    str d9, [sp, #25368]
    str d9, [sp, #25376]
    str d9, [sp, #25384]
    str d9, [sp, #25392]
    str d9, [sp, #25400]
    str d9, [sp, #25408]
    str d9, [sp, #25416]
    str d9, [sp, #25424]
    str d9, [sp, #25432]
    str d9, [sp, #25440]
    str d9, [sp, #25448]
    str d9, [sp, #25456]
    str d9, [sp, #25464]
    str d9, [sp, #25472]
    str d9, [sp, #25480]
    str d9, [sp, #25488]
    str d9, [sp, #25496]
    str d9, [sp, #25504]
    str d9, [sp, #25512]
    str d9, [sp, #25520]
    str d9, [sp, #25528]
    str d9, [sp, #25536]
    str d9, [sp, #25544]
    str d9, [sp, #25552]
    str d9, [sp, #25560]
    str d9, [sp, #25568]
    str d9, [sp, #25576]
    str d9, [sp, #25584]
    str d9, [sp, #25592]
    str d9, [sp, #25600]
    str d9, [sp, #25608]
    str d9, [sp, #25616]
    str d9, [sp, #25624]
    str d9, [sp, #25632]
    str d9, [sp, #25640]
    str d9, [sp, #25648]
    str d9, [sp, #25656]
    str d9, [sp, #25664]
    str d9, [sp, #25672]
    str d9, [sp, #25680]
    str d9, [sp, #25688]
    str d9, [sp, #25696]
    str d9, [sp, #25704]
    str d9, [sp, #25712]
    str d9, [sp, #25720]
    str d9, [sp, #25728]
    str d9, [sp, #25736]
    str d9, [sp, #25744]
    str d9, [sp, #25752]
    str d9, [sp, #25760]
    str d9, [sp, #25768]
    str d9, [sp, #25776]
    str d9, [sp, #25784]
    str d9, [sp, #25792]
    str d9, [sp, #25800]
    str d9, [sp, #25808]
    str d9, [sp, #25816]
    str d9, [sp, #25824]
    str d9, [sp, #25832]
    str d9, [sp, #25840]
    str d9, [sp, #25848]
    str d9, [sp, #25856]
    str d9, [sp, #25864]
    str d9, [sp, #25872]
    str d9, [sp, #25880]
    str d9, [sp, #25888]
    str d9, [sp, #25896]
    str d9, [sp, #25904]
    str d9, [sp, #25912]
    str d9, [sp, #25920]
    str d9, [sp, #25928]
    str d9, [sp, #25936]
    str d9, [sp, #25944]
    str d9, [sp, #25952]
    str d9, [sp, #25960]
    str d9, [sp, #25968]
    str d9, [sp, #25976]
    str d9, [sp, #25984]
    str d9, [sp, #25992]
    str d9, [sp, #26000]
    str d9, [sp, #26008]
    str d9, [sp, #26016]
    str d9, [sp, #26024]
    str d9, [sp, #26032]
    str d9, [sp, #26040]
    str d9, [sp, #26048]
    str d9, [sp, #26056]
    str d9, [sp, #26064]
    str d9, [sp, #26072]
    str d9, [sp, #26080]
    str d9, [sp, #26088]
    str d9, [sp, #26096]
    str d9, [sp, #26104]
    str d9, [sp, #26112]
    str d9, [sp, #26120]
    str d9, [sp, #26128]
    str d9, [sp, #26136]
    str d9, [sp, #26144]
    str d9, [sp, #26152]
    str d9, [sp, #26160]
    str d9, [sp, #26168]
    str d9, [sp, #26176]
    str d9, [sp, #26184]
    str d9, [sp, #26192]
    str d9, [sp, #26200]
    str d9, [sp, #26208]
    str d9, [sp, #26216]
    str d9, [sp, #26224]
    str d9, [sp, #26232]
    str d9, [sp, #26240]
    str d9, [sp, #26248]
    str d9, [sp, #26256]
    str d9, [sp, #26264]
    str d9, [sp, #26272]
    str d9, [sp, #26280]
    str d9, [sp, #26288]
    str d9, [sp, #26296]
    str d9, [sp, #26304]
    str d9, [sp, #26312]
    str d9, [sp, #26320]
    str d9, [sp, #26328]
    str d9, [sp, #26336]
    str d9, [sp, #26344]
    str d9, [sp, #26352]
    str d9, [sp, #26360]
    str d9, [sp, #26368]
    str d9, [sp, #26376]
    str d9, [sp, #26384]
    str d9, [sp, #26392]
    str d9, [sp, #26400]
    str d9, [sp, #26408]
    str d9, [sp, #26416]
    str d9, [sp, #26424]
    str d9, [sp, #26432]
    str d9, [sp, #26440]
    str d9, [sp, #26448]
    str d9, [sp, #26456]
    str d9, [sp, #26464]
    str d9, [sp, #26472]
    str d9, [sp, #26480]
    str d9, [sp, #26488]
    str d9, [sp, #26496]
    str d9, [sp, #26504]
    str d9, [sp, #26512]
    str d9, [sp, #26520]
    str d9, [sp, #26528]
    str d9, [sp, #26536]
    str d9, [sp, #26544]
    str d9, [sp, #26552]
    str d9, [sp, #26560]
    str d9, [sp, #26568]
    str d9, [sp, #26576]
    str d9, [sp, #26584]
    str d9, [sp, #26592]
    str d9, [sp, #26600]
    str d9, [sp, #26608]
    str d9, [sp, #26616]
    str d9, [sp, #26624]
    str d9, [sp, #26632]
    str d9, [sp, #26640]
    str d9, [sp, #26648]
    str d9, [sp, #26656]
    str d9, [sp, #26664]
    str d9, [sp, #26672]
    str d9, [sp, #26680]
    str d9, [sp, #26688]
    str d9, [sp, #26696]
    str d9, [sp, #26704]
    str d9, [sp, #26712]
    str d9, [sp, #26720]
    str d9, [sp, #26728]
    str d9, [sp, #26736]
    str d9, [sp, #26744]
    str d9, [sp, #26752]
    str d9, [sp, #26760]
    str d9, [sp, #26768]
    str d9, [sp, #26776]
    str d9, [sp, #26784]
    str d9, [sp, #26792]
    str d9, [sp, #26800]
    str d9, [sp, #26808]
    str d9, [sp, #26816]
    str d9, [sp, #26824]
    str d9, [sp, #26832]
    str d9, [sp, #26840]
    str d9, [sp, #26848]
    str d9, [sp, #26856]
    str d9, [sp, #26864]
    str d9, [sp, #26872]
    str d9, [sp, #26880]
    str d9, [sp, #26888]
    str d9, [sp, #26896]
    str d9, [sp, #26904]
    str d9, [sp, #26912]
    str d9, [sp, #26920]
    str d9, [sp, #26928]
    str d9, [sp, #26936]
    str d9, [sp, #26944]
    str d9, [sp, #26952]
    str d9, [sp, #26960]
    str d9, [sp, #26968]
    str d9, [sp, #26976]
    str d9, [sp, #26984]
    str d9, [sp, #26992]
    str d9, [sp, #27000]
    str d9, [sp, #27008]
    str d9, [sp, #27016]
    str d9, [sp, #27024]
    str d9, [sp, #27032]
    str d9, [sp, #27040]
    str d9, [sp, #27048]
    str d9, [sp, #27056]
    str d9, [sp, #27064]
    str d9, [sp, #27072]
    str d9, [sp, #27080]
    str d9, [sp, #27088]
    str d9, [sp, #27096]
    str d9, [sp, #27104]
    str d9, [sp, #27112]
    str d9, [sp, #27120]
    str d9, [sp, #27128]
    str d9, [sp, #27136]
    str d9, [sp, #27144]
    str d9, [sp, #27152]
    str d9, [sp, #27160]
    str d9, [sp, #27168]
    str d9, [sp, #27176]
    str d9, [sp, #27184]
    str d9, [sp, #27192]
    str d9, [sp, #27200]
    str d9, [sp, #27208]
    str d9, [sp, #27216]
    str d9, [sp, #27224]
    str d9, [sp, #27232]
    str d9, [sp, #27240]
    str d9, [sp, #27248]
    str d9, [sp, #27256]
    str d9, [sp, #27264]
    str d9, [sp, #27272]
    str d9, [sp, #27280]
    str d9, [sp, #27288]
    str d9, [sp, #27296]
    str d9, [sp, #27304]
    str d9, [sp, #27312]
    str d9, [sp, #27320]
    str d9, [sp, #27328]
    str d9, [sp, #27336]
    str d9, [sp, #27344]
    str d9, [sp, #27352]
    str d9, [sp, #27360]
    str d9, [sp, #27368]
    str d9, [sp, #27376]
    str d9, [sp, #27384]
    str d9, [sp, #27392]
    str d9, [sp, #27400]
    str d9, [sp, #27408]
    str d9, [sp, #27416]
    str d9, [sp, #27424]
    str d9, [sp, #27432]
    str d9, [sp, #27440]
    str d9, [sp, #27448]
    str d9, [sp, #27456]
    str d9, [sp, #27464]
    str d9, [sp, #27472]
    str d9, [sp, #27480]
    str d9, [sp, #27488]
    str d9, [sp, #27496]
    str d9, [sp, #27504]
    str d9, [sp, #27512]
    str d9, [sp, #27520]
    str d9, [sp, #27528]
    str d9, [sp, #27536]
    str d9, [sp, #27544]
    str d9, [sp, #27552]
    str d9, [sp, #27560]
    str d9, [sp, #27568]
    str d9, [sp, #27576]
    str d9, [sp, #27584]
    str d9, [sp, #27592]
    str d9, [sp, #27600]
    str d9, [sp, #27608]
    str d9, [sp, #27616]
    str d9, [sp, #27624]
    str d9, [sp, #27632]
    str d9, [sp, #27640]
    str d9, [sp, #27648]
    str d9, [sp, #27656]
    str d9, [sp, #27664]
    str d9, [sp, #27672]
    str d9, [sp, #27680]
    str d9, [sp, #27688]
    str d9, [sp, #27696]
    str d9, [sp, #27704]
    str d9, [sp, #27712]
    str d9, [sp, #27720]
    str d9, [sp, #27728]
    str d9, [sp, #27736]
    str d9, [sp, #27744]
    str d9, [sp, #27752]
    str d9, [sp, #27760]
    str d9, [sp, #27768]
    str d9, [sp, #27776]
    str d9, [sp, #27784]
    str d9, [sp, #27792]
    str d9, [sp, #27800]
    str d9, [sp, #27808]
    str d9, [sp, #27816]
    str d9, [sp, #27824]
    str d9, [sp, #27832]
    str d9, [sp, #27840]
    str d9, [sp, #27848]
    str d9, [sp, #27856]
    str d9, [sp, #27864]
    str d9, [sp, #27872]
    str d9, [sp, #27880]
    str d9, [sp, #27888]
    str d9, [sp, #27896]
    str d9, [sp, #27904]
    str d9, [sp, #27912]
    str d9, [sp, #27920]
    str d9, [sp, #27928]
    str d9, [sp, #27936]
    str d9, [sp, #27944]
    str d9, [sp, #27952]
    str d9, [sp, #27960]
    str d9, [sp, #27968]
    str d9, [sp, #27976]
    str d9, [sp, #27984]
    str d9, [sp, #27992]
    str d9, [sp, #28000]
    str d9, [sp, #28008]
    str d9, [sp, #28016]
    str d9, [sp, #28024]
    str d9, [sp, #28032]
    str d9, [sp, #28040]
    str d9, [sp, #28048]
    str d9, [sp, #28056]
    str d9, [sp, #28064]
    str d9, [sp, #28072]
    str d9, [sp, #28080]
    str d9, [sp, #28088]
    str d9, [sp, #28096]
    str d9, [sp, #28104]
    str d9, [sp, #28112]
    str d9, [sp, #28120]
    str d9, [sp, #28128]
    str d9, [sp, #28136]
    str d9, [sp, #28144]
    str d9, [sp, #28152]
    str d9, [sp, #28160]
    str d9, [sp, #28168]
    str d9, [sp, #28176]
    str d9, [sp, #28184]
    str d9, [sp, #28192]
    str d9, [sp, #28200]
    str d9, [sp, #28208]
    str d9, [sp, #28216]
    str d9, [sp, #28224]
    str d9, [sp, #28232]
    str d9, [sp, #28240]
    str d9, [sp, #28248]
    str d9, [sp, #28256]
    str d9, [sp, #28264]
    str d9, [sp, #28272]
    str d9, [sp, #28280]
    str d9, [sp, #28288]
    str d9, [sp, #28296]
    str d9, [sp, #28304]
    str d9, [sp, #28312]
    str d9, [sp, #28320]
    str d9, [sp, #28328]
    str d9, [sp, #28336]
    str d9, [sp, #28344]
    str d9, [sp, #28352]
    str d9, [sp, #28360]
    str d9, [sp, #28368]
    str d9, [sp, #28376]
    str d9, [sp, #28384]
    str d9, [sp, #28392]
    str d9, [sp, #28400]
    str d9, [sp, #28408]
    str d9, [sp, #28416]
    str d9, [sp, #28424]
    str d9, [sp, #28432]
    str d9, [sp, #28440]
    str d9, [sp, #28448]
    str d9, [sp, #28456]
    str d9, [sp, #28464]
    str d9, [sp, #28472]
    str d9, [sp, #28480]
    str d9, [sp, #28488]
    str d9, [sp, #28496]
    str d9, [sp, #28504]
    str d9, [sp, #28512]
    str d9, [sp, #28520]
    str d9, [sp, #28528]
    str d9, [sp, #28536]
    str d9, [sp, #28544]
    str d9, [sp, #28552]
    str d9, [sp, #28560]
    str d9, [sp, #28568]
    str d9, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #28672
    sub x10, x29, x16
    movz x16, #16200
    sub x0, x29, x16
    mov x1, x10
    movz x2, #12288
    bl _memcpy
    str d8, [sp, #26712]
    str d8, [sp, #26720]
    str d8, [sp, #26728]
    str d8, [sp, #26736]
    str d8, [sp, #26744]
    str d8, [sp, #26752]
    str d8, [sp, #26760]
    str d8, [sp, #26768]
    str d8, [sp, #26776]
    str d8, [sp, #26784]
    str d8, [sp, #26792]
    str d8, [sp, #26800]
    str d8, [sp, #26808]
    str d8, [sp, #26816]
    str d8, [sp, #26824]
    str d8, [sp, #26832]
    str d8, [sp, #26840]
    str d8, [sp, #26848]
    str d8, [sp, #26856]
    str d8, [sp, #26864]
    str d8, [sp, #26872]
    str d8, [sp, #26880]
    str d8, [sp, #26888]
    str d8, [sp, #26896]
    str d8, [sp, #26904]
    str d8, [sp, #26912]
    str d8, [sp, #26920]
    str d8, [sp, #26928]
    str d8, [sp, #26936]
    str d8, [sp, #26944]
    str d8, [sp, #26952]
    str d8, [sp, #26960]
    str d8, [sp, #26968]
    str d8, [sp, #26976]
    str d8, [sp, #26984]
    str d8, [sp, #26992]
    str d8, [sp, #27000]
    str d8, [sp, #27008]
    str d8, [sp, #27016]
    str d8, [sp, #27024]
    str d8, [sp, #27032]
    str d8, [sp, #27040]
    str d8, [sp, #27048]
    str d8, [sp, #27056]
    str d8, [sp, #27064]
    str d8, [sp, #27072]
    str d8, [sp, #27080]
    str d8, [sp, #27088]
    str d8, [sp, #27096]
    str d8, [sp, #27104]
    str d8, [sp, #27112]
    str d8, [sp, #27120]
    str d8, [sp, #27128]
    str d8, [sp, #27136]
    str d8, [sp, #27144]
    str d8, [sp, #27152]
    str d8, [sp, #27160]
    str d8, [sp, #27168]
    str d8, [sp, #27176]
    str d8, [sp, #27184]
    str d8, [sp, #27192]
    str d8, [sp, #27200]
    str d8, [sp, #27208]
    str d8, [sp, #27216]
    str d8, [sp, #27224]
    str d8, [sp, #27232]
    str d8, [sp, #27240]
    str d8, [sp, #27248]
    str d8, [sp, #27256]
    str d8, [sp, #27264]
    str d8, [sp, #27272]
    str d8, [sp, #27280]
    str d8, [sp, #27288]
    str d8, [sp, #27296]
    str d8, [sp, #27304]
    str d8, [sp, #27312]
    str d8, [sp, #27320]
    str d8, [sp, #27328]
    str d8, [sp, #27336]
    str d8, [sp, #27344]
    str d8, [sp, #27352]
    str d8, [sp, #27360]
    str d8, [sp, #27368]
    str d8, [sp, #27376]
    str d8, [sp, #27384]
    str d8, [sp, #27392]
    str d8, [sp, #27400]
    str d8, [sp, #27408]
    str d8, [sp, #27416]
    str d8, [sp, #27424]
    str d8, [sp, #27432]
    str d8, [sp, #27440]
    str d8, [sp, #27448]
    str d8, [sp, #27456]
    str d8, [sp, #27464]
    str d8, [sp, #27472]
    str d8, [sp, #27480]
    str d8, [sp, #27488]
    str d8, [sp, #27496]
    str d8, [sp, #27504]
    str d8, [sp, #27512]
    str d8, [sp, #27520]
    str d8, [sp, #27528]
    str d8, [sp, #27536]
    str d8, [sp, #27544]
    str d8, [sp, #27552]
    str d8, [sp, #27560]
    str d8, [sp, #27568]
    str d8, [sp, #27576]
    str d8, [sp, #27584]
    str d8, [sp, #27592]
    str d8, [sp, #27600]
    str d8, [sp, #27608]
    str d8, [sp, #27616]
    str d8, [sp, #27624]
    str d8, [sp, #27632]
    str d8, [sp, #27640]
    str d8, [sp, #27648]
    str d8, [sp, #27656]
    str d8, [sp, #27664]
    str d8, [sp, #27672]
    str d8, [sp, #27680]
    str d8, [sp, #27688]
    str d8, [sp, #27696]
    str d8, [sp, #27704]
    str d8, [sp, #27712]
    str d8, [sp, #27720]
    str d8, [sp, #27728]
    str d8, [sp, #27736]
    str d8, [sp, #27744]
    str d8, [sp, #27752]
    str d8, [sp, #27760]
    str d8, [sp, #27768]
    str d8, [sp, #27776]
    str d8, [sp, #27784]
    str d8, [sp, #27792]
    str d8, [sp, #27800]
    str d8, [sp, #27808]
    str d8, [sp, #27816]
    str d8, [sp, #27824]
    str d8, [sp, #27832]
    str d8, [sp, #27840]
    str d8, [sp, #27848]
    str d8, [sp, #27856]
    str d8, [sp, #27864]
    str d8, [sp, #27872]
    str d8, [sp, #27880]
    str d8, [sp, #27888]
    str d8, [sp, #27896]
    str d8, [sp, #27904]
    str d8, [sp, #27912]
    str d8, [sp, #27920]
    str d8, [sp, #27928]
    str d8, [sp, #27936]
    str d8, [sp, #27944]
    str d8, [sp, #27952]
    str d8, [sp, #27960]
    str d8, [sp, #27968]
    str d8, [sp, #27976]
    str d8, [sp, #27984]
    str d8, [sp, #27992]
    str d8, [sp, #28000]
    str d8, [sp, #28008]
    str d8, [sp, #28016]
    str d8, [sp, #28024]
    str d8, [sp, #28032]
    str d8, [sp, #28040]
    str d8, [sp, #28048]
    str d8, [sp, #28056]
    str d8, [sp, #28064]
    str d8, [sp, #28072]
    str d8, [sp, #28080]
    str d8, [sp, #28088]
    str d8, [sp, #28096]
    str d8, [sp, #28104]
    str d8, [sp, #28112]
    str d8, [sp, #28120]
    str d8, [sp, #28128]
    str d8, [sp, #28136]
    str d8, [sp, #28144]
    str d8, [sp, #28152]
    str d8, [sp, #28160]
    str d8, [sp, #28168]
    str d8, [sp, #28176]
    str d8, [sp, #28184]
    str d8, [sp, #28192]
    str d8, [sp, #28200]
    str d8, [sp, #28208]
    str d8, [sp, #28216]
    str d8, [sp, #28224]
    str d8, [sp, #28232]
    str d8, [sp, #28240]
    str d8, [sp, #28248]
    str d8, [sp, #28256]
    str d8, [sp, #28264]
    str d8, [sp, #28272]
    str d8, [sp, #28280]
    str d8, [sp, #28288]
    str d8, [sp, #28296]
    str d8, [sp, #28304]
    str d8, [sp, #28312]
    str d8, [sp, #28320]
    str d8, [sp, #28328]
    str d8, [sp, #28336]
    str d8, [sp, #28344]
    str d8, [sp, #28352]
    str d8, [sp, #28360]
    str d8, [sp, #28368]
    str d8, [sp, #28376]
    str d8, [sp, #28384]
    str d8, [sp, #28392]
    str d8, [sp, #28400]
    str d8, [sp, #28408]
    str d8, [sp, #28416]
    str d8, [sp, #28424]
    str d8, [sp, #28432]
    str d8, [sp, #28440]
    str d8, [sp, #28448]
    str d8, [sp, #28456]
    str d8, [sp, #28464]
    str d8, [sp, #28472]
    str d8, [sp, #28480]
    str d8, [sp, #28488]
    str d8, [sp, #28496]
    str d8, [sp, #28504]
    str d8, [sp, #28512]
    str d8, [sp, #28520]
    str d8, [sp, #28528]
    str d8, [sp, #28536]
    str d8, [sp, #28544]
    str d8, [sp, #28552]
    str d8, [sp, #28560]
    str d8, [sp, #28568]
    str d8, [sp, #28576]
    str d8, [sp, #28584]
    str d8, [sp, #28592]
    str d8, [sp, #28600]
    str d8, [sp, #28608]
    str d8, [sp, #28616]
    str d8, [sp, #28624]
    str d8, [sp, #28632]
    str d8, [sp, #28640]
    str d8, [sp, #28648]
    movz x16, #18328
    sub x10, x29, x16
    sub x0, x29, #3912
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    str d9, [sp, #26712]
    str d9, [sp, #26720]
    str d9, [sp, #26728]
    str d9, [sp, #26736]
    str d9, [sp, #26744]
    str d9, [sp, #26752]
    str d9, [sp, #26760]
    str d9, [sp, #26768]
    str d9, [sp, #26776]
    str d9, [sp, #26784]
    str d9, [sp, #26792]
    str d9, [sp, #26800]
    str d9, [sp, #26808]
    str d9, [sp, #26816]
    str d9, [sp, #26824]
    str d9, [sp, #26832]
    str d9, [sp, #26840]
    str d9, [sp, #26848]
    str d9, [sp, #26856]
    str d9, [sp, #26864]
    str d9, [sp, #26872]
    str d9, [sp, #26880]
    str d9, [sp, #26888]
    str d9, [sp, #26896]
    str d9, [sp, #26904]
    str d9, [sp, #26912]
    str d9, [sp, #26920]
    str d9, [sp, #26928]
    str d9, [sp, #26936]
    str d9, [sp, #26944]
    str d9, [sp, #26952]
    str d9, [sp, #26960]
    str d9, [sp, #26968]
    str d9, [sp, #26976]
    str d9, [sp, #26984]
    str d9, [sp, #26992]
    str d9, [sp, #27000]
    str d9, [sp, #27008]
    str d9, [sp, #27016]
    str d9, [sp, #27024]
    str d9, [sp, #27032]
    str d9, [sp, #27040]
    str d9, [sp, #27048]
    str d9, [sp, #27056]
    str d9, [sp, #27064]
    str d9, [sp, #27072]
    str d9, [sp, #27080]
    str d9, [sp, #27088]
    str d9, [sp, #27096]
    str d9, [sp, #27104]
    str d9, [sp, #27112]
    str d9, [sp, #27120]
    str d9, [sp, #27128]
    str d9, [sp, #27136]
    str d9, [sp, #27144]
    str d9, [sp, #27152]
    str d9, [sp, #27160]
    str d9, [sp, #27168]
    str d9, [sp, #27176]
    str d9, [sp, #27184]
    str d9, [sp, #27192]
    str d9, [sp, #27200]
    str d9, [sp, #27208]
    str d9, [sp, #27216]
    str d9, [sp, #27224]
    str d9, [sp, #27232]
    str d9, [sp, #27240]
    str d9, [sp, #27248]
    str d9, [sp, #27256]
    str d9, [sp, #27264]
    str d9, [sp, #27272]
    str d9, [sp, #27280]
    str d9, [sp, #27288]
    str d9, [sp, #27296]
    str d9, [sp, #27304]
    str d9, [sp, #27312]
    str d9, [sp, #27320]
    str d9, [sp, #27328]
    str d9, [sp, #27336]
    str d9, [sp, #27344]
    str d9, [sp, #27352]
    str d9, [sp, #27360]
    str d9, [sp, #27368]
    str d9, [sp, #27376]
    str d9, [sp, #27384]
    str d9, [sp, #27392]
    str d9, [sp, #27400]
    str d9, [sp, #27408]
    str d9, [sp, #27416]
    str d9, [sp, #27424]
    str d9, [sp, #27432]
    str d9, [sp, #27440]
    str d9, [sp, #27448]
    str d9, [sp, #27456]
    str d9, [sp, #27464]
    str d9, [sp, #27472]
    str d9, [sp, #27480]
    str d9, [sp, #27488]
    str d9, [sp, #27496]
    str d9, [sp, #27504]
    str d9, [sp, #27512]
    str d9, [sp, #27520]
    str d9, [sp, #27528]
    str d9, [sp, #27536]
    str d9, [sp, #27544]
    str d9, [sp, #27552]
    str d9, [sp, #27560]
    str d9, [sp, #27568]
    str d9, [sp, #27576]
    str d9, [sp, #27584]
    str d9, [sp, #27592]
    str d9, [sp, #27600]
    str d9, [sp, #27608]
    str d9, [sp, #27616]
    str d9, [sp, #27624]
    str d9, [sp, #27632]
    str d9, [sp, #27640]
    str d9, [sp, #27648]
    str d9, [sp, #27656]
    str d9, [sp, #27664]
    str d9, [sp, #27672]
    str d9, [sp, #27680]
    str d9, [sp, #27688]
    str d9, [sp, #27696]
    str d9, [sp, #27704]
    str d9, [sp, #27712]
    str d9, [sp, #27720]
    str d9, [sp, #27728]
    str d9, [sp, #27736]
    str d9, [sp, #27744]
    str d9, [sp, #27752]
    str d9, [sp, #27760]
    str d9, [sp, #27768]
    str d9, [sp, #27776]
    str d9, [sp, #27784]
    str d9, [sp, #27792]
    str d9, [sp, #27800]
    str d9, [sp, #27808]
    str d9, [sp, #27816]
    str d9, [sp, #27824]
    str d9, [sp, #27832]
    str d9, [sp, #27840]
    str d9, [sp, #27848]
    str d9, [sp, #27856]
    str d9, [sp, #27864]
    str d9, [sp, #27872]
    str d9, [sp, #27880]
    str d9, [sp, #27888]
    str d9, [sp, #27896]
    str d9, [sp, #27904]
    str d9, [sp, #27912]
    str d9, [sp, #27920]
    str d9, [sp, #27928]
    str d9, [sp, #27936]
    str d9, [sp, #27944]
    str d9, [sp, #27952]
    str d9, [sp, #27960]
    str d9, [sp, #27968]
    str d9, [sp, #27976]
    str d9, [sp, #27984]
    str d9, [sp, #27992]
    str d9, [sp, #28000]
    str d9, [sp, #28008]
    str d9, [sp, #28016]
    str d9, [sp, #28024]
    str d9, [sp, #28032]
    str d9, [sp, #28040]
    str d9, [sp, #28048]
    str d9, [sp, #28056]
    str d9, [sp, #28064]
    str d9, [sp, #28072]
    str d9, [sp, #28080]
    str d9, [sp, #28088]
    str d9, [sp, #28096]
    str d9, [sp, #28104]
    str d9, [sp, #28112]
    str d9, [sp, #28120]
    str d9, [sp, #28128]
    str d9, [sp, #28136]
    str d9, [sp, #28144]
    str d9, [sp, #28152]
    str d9, [sp, #28160]
    str d9, [sp, #28168]
    str d9, [sp, #28176]
    str d9, [sp, #28184]
    str d9, [sp, #28192]
    str d9, [sp, #28200]
    str d9, [sp, #28208]
    str d9, [sp, #28216]
    str d9, [sp, #28224]
    str d9, [sp, #28232]
    str d9, [sp, #28240]
    str d9, [sp, #28248]
    str d9, [sp, #28256]
    str d9, [sp, #28264]
    str d9, [sp, #28272]
    str d9, [sp, #28280]
    str d9, [sp, #28288]
    str d9, [sp, #28296]
    str d9, [sp, #28304]
    str d9, [sp, #28312]
    str d9, [sp, #28320]
    str d9, [sp, #28328]
    str d9, [sp, #28336]
    str d9, [sp, #28344]
    str d9, [sp, #28352]
    str d9, [sp, #28360]
    str d9, [sp, #28368]
    str d9, [sp, #28376]
    str d9, [sp, #28384]
    str d9, [sp, #28392]
    str d9, [sp, #28400]
    str d9, [sp, #28408]
    str d9, [sp, #28416]
    str d9, [sp, #28424]
    str d9, [sp, #28432]
    str d9, [sp, #28440]
    str d9, [sp, #28448]
    str d9, [sp, #28456]
    str d9, [sp, #28464]
    str d9, [sp, #28472]
    str d9, [sp, #28480]
    str d9, [sp, #28488]
    str d9, [sp, #28496]
    str d9, [sp, #28504]
    str d9, [sp, #28512]
    str d9, [sp, #28520]
    str d9, [sp, #28528]
    str d9, [sp, #28536]
    str d9, [sp, #28544]
    str d9, [sp, #28552]
    str d9, [sp, #28560]
    str d9, [sp, #28568]
    str d9, [sp, #28576]
    str d9, [sp, #28584]
    str d9, [sp, #28592]
    str d9, [sp, #28600]
    str d9, [sp, #28608]
    str d9, [sp, #28616]
    str d9, [sp, #28624]
    str d9, [sp, #28632]
    str d9, [sp, #28640]
    str d9, [sp, #28648]
    movz x16, #18328
    sub x10, x29, x16
    sub x0, x29, #1968
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #16384
    sub x10, x29, x16
    movz x16, #45032
    sub x0, x29, x16
    mov x1, x10
    movz x2, #16360
    bl _memcpy
    movz x16, #45032
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #16360
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr d8, [x16]
    sub x16, x29, #24
    ldr d9, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3db32ba7b15e_k0:
    .quad 4587366580439587226
L3db32ba7b15e_k1:
    .quad 4588879789914383712
L3db32ba7b15e_k2:
    .quad 4588980670546036811
L3db32ba7b15e_k3:
    .quad 4589081551177689910
L3db32ba7b15e_k4:
    .quad 4589175226049939217
L3db32ba7b15e_k5:
    .quad 4589182431809343010
L3db32ba7b15e_k6:
    .quad 4589348164275630244
L3db32ba7b15e_k7:
    .quad 4589564337057744028
L3db32ba7b15e_k8:
    .quad 4589888596230914703
L3db32ba7b15e_k9:
    .quad 4590652406727716739
L3db32ba7b15e_k10:
    .quad 4592071941330263920
L3db32ba7b15e_k11:
    .quad 4593776103429260916
L3db32ba7b15e_k12:
    .quad 4594828144302214663
L3db32ba7b15e_k13:
    .quad 4596164812671618227
L3db32ba7b15e_k14:
    .quad 4597602361672674889
L3db32ba7b15e_k15:
    .quad 4598722857259964668
L3db32ba7b15e_k16:
    .quad 4599663208862159628
L3db32ba7b15e_k17:
    .quad 4600673816618541567
L3db32ba7b15e_k18:
    .quad 4601792510765980398
L3db32ba7b15e_k19:
    .quad 4602841849479157724
L3db32ba7b15e_k20:
    .quad 4603479559186393386
L3db32ba7b15e_k21:
    .quad 4604173113529008443
L3db32ba7b15e_k22:
    .quad 4604912604587822678
L3db32ba7b15e_k23:
    .quad 4605666507165444499
L3db32ba7b15e_k24:
    .quad 4606484360857774981
L3db32ba7b15e_k25:
    .quad 4607266636113049236
L3db32ba7b15e_k26:
    .quad 4607711141396270704
L3db32ba7b15e_k27:
    .quad 4608163753158821439
L3db32ba7b15e_k28:
    .quad 4608612762041670278
L3db32ba7b15e_k29:
    .quad 4609050962285413427
L3db32ba7b15e_k30:
    .quad 4609474300650386253
L3db32ba7b15e_k31:
    .quad 4609879174256886861
L3db32ba7b15e_k32:
    .quad 4610258377345511457
L3db32ba7b15e_k33:
    .quad 4610624519995216678
L3db32ba7b15e_k34:
    .quad 4610978502925927999
L3db32ba7b15e_k35:
    .quad 4611310418218465205
L3db32ba7b15e_k36:
    .quad 4611593694635026809
L3db32ba7b15e_k37:
    .quad 4611744114862580983
L3db32ba7b15e_k38:
    .quad 4611815046556712069
L3db32ba7b15e_k39:
    .quad 4611872242271979674
L3db32ba7b15e_k40:
    .quad 4611901065309594845
L3db32ba7b15e_k41:
    .quad 4611911198408756429
L3db32ba7b15e_k42:
    .quad 4611917953808197485
L3db32ba7b15e_k43:
    .quad 4611922907767787592
L3db32ba7b15e_k44:
    .quad 4611929663167228648
L3db32ba7b15e_k45:
    .quad 4611938220006520652
L3db32ba7b15e_k46:
    .quad 4611948127925700867
L3db32ba7b15e_k47:
    .quad 4611954883325141923
L3db32ba7b15e_k48:
    .quad 4611959837284732030
L3db32ba7b15e_k49:
    .quad 4611963214984452558
L3db32ba7b15e_k50:
    .quad 4589506690982513685
L3db32ba7b15e_k51:
    .quad 4590003888381375388
L3db32ba7b15e_k52:
    .quad 4590753287359369839
L3db32ba7b15e_k53:
    .quad 4592107970127282884
L3db32ba7b15e_k54:
    .quad 4593927424376740564
L3db32ba7b15e_k55:
    .quad 4595260489866442231
L3db32ba7b15e_k56:
    .quad 4596770096461536821
L3db32ba7b15e_k57:
    .quad 4598319334733352272
L3db32ba7b15e_k58:
    .quad 4599275899294205765
L3db32ba7b15e_k59:
    .quad 4600381983362687959
L3db32ba7b15e_k60:
    .quad 4601679020055370662
L3db32ba7b15e_k61:
    .quad 4602896793394611644
L3db32ba7b15e_k62:
    .quad 4603692129088805274
L3db32ba7b15e_k63:
    .quad 4604592849014279373
L3db32ba7b15e_k64:
    .quad 4605526895576996014
L3db32ba7b15e_k65:
    .quad 4606622171006372518
L3db32ba7b15e_k66:
    .quad 4607532348491064096
L3db32ba7b15e_k67:
    .quad 4608218697074275359
L3db32ba7b15e_k68:
    .quad 4608925762215772527
L3db32ba7b15e_k69:
    .quad 4609658047515182970
L3db32ba7b15e_k70:
    .quad 4610404744333400998
L3db32ba7b15e_k71:
    .quad 4611024439642127178
L3db32ba7b15e_k72:
    .quad 4611463540605795801
L3db32ba7b15e_k73:
    .quad 4611726776004015607
L3db32ba7b15e_k74:
    .quad 4611836438654942079
L3db32ba7b15e_k75:
    .quad 4611889130770582313
L3db32ba7b15e_k76:
    .quad 4611897687609874317
L3db32ba7b15e_k77:
    .quad 4611904443009315373
L3db32ba7b15e_k78:
    .quad 4611907820709035901
L3db32ba7b15e_k79:
    .quad 4611912774668626008
L3db32ba7b15e_k80:
    .quad 4611934617126818755
L3db32ba7b15e_k81:
    .quad 4611942948786129391
L3db32ba7b15e_k82:
    .quad 4611946551665831287
L3db32ba7b15e_k83:
    .quad 4611951505625421395
L3db32ba7b15e_k84:
    .quad 4611953081885290974
L3db32ba7b15e_k85:
    .quad 4589095962696497496
L3db32ba7b15e_k86:
    .quad 4589240077884573352
L3db32ba7b15e_k87:
    .quad 4589290518200399901
L3db32ba7b15e_k88:
    .quad 4589780509839857811
L3db32ba7b15e_k89:
    .quad 4590032711418990559
L3db32ba7b15e_k90:
    .quad 4592533109932106659
L3db32ba7b15e_k91:
    .quad 4594348961301862443
L3db32ba7b15e_k92:
    .quad 4595599160558420492
L3db32ba7b15e_k93:
    .quad 4599383985685262657
L3db32ba7b15e_k94:
    .quad 4601911405796142979
L3db32ba7b15e_k95:
    .quad 4603558822539835107
L3db32ba7b15e_k96:
    .quad 4606332139190369858
L3db32ba7b15e_k97:
    .quad 4608155196319529435
L3db32ba7b15e_k98:
    .quad 4609553113643865237
L3db32ba7b15e_k99:
    .quad 4610267384544766198
L3db32ba7b15e_k100:
    .quad 4610973548966337892
L3db32ba7b15e_k101:
    .quad 4611679263027946848
L3db32ba7b15e_k102:
    .quad 4611746141482413300
L3db32ba7b15e_k103:
    .quad 4611806489717420065
L3db32ba7b15e_k104:
    .quad 4611867063132408198
L3db32ba7b15e_k105:
    .quad 4611882600551122626
L3db32ba7b15e_k106:
    .quad 4611927861727377700
L3db32ba7b15e_k107:
    .quad 4611931239427098228
L3db32ba7b15e_k108:
    .quad 4611937994826539283

.subsections_via_symbols
