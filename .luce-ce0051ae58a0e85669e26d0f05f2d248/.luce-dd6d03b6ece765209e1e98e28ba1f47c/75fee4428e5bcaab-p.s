    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_10float_text_11pow5_factor
_lb_10float_text_11pow5_factor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov w15, #0
    .p2align 4
L74adbbc290d8_1:
    movz x10, #5
    udiv x11, x14, x10
    msub x12, x11, x10, x14
    cmp x12, #0
    b.ne L74adbbc290d8_3
L74adbbc290d8_2:
    movz x10, #5
    udiv x14, x14, x10
    adds w15, w15, #1
    b.cs L74adbbc290d8_c1
    b L74adbbc290d8_1
L74adbbc290d8_3:
    mov x0, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74adbbc290d8_c1:
    adrp x0, _lb_text_5b4a9cf93581@PAGE
    add x0, x0, _lb_text_5b4a9cf93581@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10float_text_trimmed
_lb_10float_text_trimmed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    mov x14, x0
    mov x15, x1
    mov x12, x2
    mov w13, w3
    mov x16, x7
    uxtb w7, w4
    mov x4, x16
    mov x16, x6
    uxtb w6, w5
    uxtb w5, w16
    cbnz w6, L0f72a40af416_1
L0f72a40af416_4:
    cbz w5, L0f72a40af416_2
L0f72a40af416_1:
    mov w3, #0
    .p2align 4
L0f72a40af416_5:
    movz x10, #10
    udiv x2, x15, x10
    movz x10, #10
    udiv x1, x12, x10
    cmp x2, x1
    b.ls L0f72a40af416_7
L0f72a40af416_6:
    and w15, w6, #255
    cbnz w15, L0f72a40af416_12
L0f72a40af416_99:
    b L0f72a40af416_13
L0f72a40af416_12:
    movz x10, #10
    udiv x11, x12, x10
    msub x15, x11, x10, x12
    cmp x15, #0
    cset w15, eq
L0f72a40af416_13:
    and w6, w15, #255
    and w15, w5, #255
    cmp x4, #0
    cset w12, eq
    cmp w15, #0
    csel w15, w12, w15, ne
    and w5, w15, #255
    movz x10, #10
    udiv x11, x14, x10
    msub x4, x11, x10, x14
    movz x10, #10
    udiv x14, x14, x10
    adds w3, w3, #1
    b.vs L0f72a40af416_c1
    mov x15, x2
    mov x12, x1
    b L0f72a40af416_5
L0f72a40af416_7:
    and w6, w6, #255
    cbz w6, L0f72a40af416_27
L0f72a40af416_26:
    .p2align 4
L0f72a40af416_29:
    movz x10, #10
    udiv x11, x12, x10
    msub x2, x11, x10, x12
    cmp x2, #0
    b.ne L0f72a40af416_31
L0f72a40af416_30:
    and w5, w5, #255
    cmp x4, #0
    cset w4, eq
    cmp w5, #0
    csel w5, w4, w5, ne
    and w5, w5, #255
    movz x10, #10
    udiv x11, x14, x10
    msub x4, x11, x10, x14
    movz x10, #10
    udiv x14, x14, x10
    movz x10, #10
    udiv x15, x15, x10
    movz x10, #10
    udiv x12, x12, x10
    adds w3, w3, #1
    b.vs L0f72a40af416_c2
    b L0f72a40af416_29
L0f72a40af416_31:
    b L0f72a40af416_28
L0f72a40af416_27:
L0f72a40af416_28:
    and w15, w5, #255
    cbz w15, L0f72a40af416_45
L0f72a40af416_48:
    cmp x4, #5
    b.ne L0f72a40af416_45
L0f72a40af416_47:
    and x15, x14, #1
    cmp x15, #0
    b.ne L0f72a40af416_45
L0f72a40af416_44:
    movz x4, #4
    b L0f72a40af416_46
L0f72a40af416_45:
L0f72a40af416_46:
    cmp x14, x12
    cset w15, eq
    cbnz w15, L0f72a40af416_51
L0f72a40af416_100:
    b L0f72a40af416_52
L0f72a40af416_51:
    cmp w7, #0
    cset w15, eq
    cmp w6, #0
    cset w12, eq
    cmp w15, #0
    csel w15, w15, w12, ne
    and w15, w15, #255
L0f72a40af416_52:
    and w15, w15, #255
    cmp x4, #5
    cset w12, hs
    cmp w15, #0
    csel w15, w15, w12, ne
    and w15, w15, #255
    cmp w15, #0
    movz x10, #1
    mov x11, #0
    csel x15, x10, x11, ne
    adds x14, x14, x15
    b.cs L0f72a40af416_c3
    str x14, [sp, #16]
    adds w15, w13, w3
    b.vs L0f72a40af416_c4
    str w15, [sp, #24]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #8]
    mov x0, x14
    mov x1, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0f72a40af416_2:
    movz x10, #100
    udiv x7, x15, x10
    movz x10, #100
    udiv x6, x12, x10
    cmp x7, x6
    b.ls L0f72a40af416_62
L0f72a40af416_61:
    movz x10, #100
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    movz x10, #10
    udiv x15, x15, x10
    movz x10, #100
    udiv x14, x14, x10
    movz w12, #2
    b L0f72a40af416_63
L0f72a40af416_62:
    mov x7, x15
    mov x6, x12
    mov w12, #0
    mov x15, x4
L0f72a40af416_63:
    .p2align 4
L0f72a40af416_78:
    movz x10, #10
    udiv x7, x7, x10
    movz x10, #10
    udiv x5, x6, x10
    cmp x7, x5
    b.ls L0f72a40af416_80
L0f72a40af416_79:
    movz x10, #10
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    movz x10, #10
    udiv x14, x14, x10
    adds w12, w12, #1
    b.vs L0f72a40af416_c5
    mov x6, x5
    b L0f72a40af416_78
L0f72a40af416_80:
    cmp x14, x6
    cset w7, eq
    cmp x15, #5
    cset w15, hs
    cmp w7, #0
    csel w15, w7, w15, ne
    and w15, w15, #255
    cmp w15, #0
    movz x10, #1
    mov x11, #0
    csel x15, x10, x11, ne
    adds x14, x14, x15
    b.cs L0f72a40af416_c6
    str x14, [sp, #16]
    adds w15, w13, w12
    b.vs L0f72a40af416_c7
    str w15, [sp, #24]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #8]
    mov x0, x14
    mov x1, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0f72a40af416_c1:
    adrp x0, _lb_text_ff4faca1e3d1@PAGE
    add x0, x0, _lb_text_ff4faca1e3d1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c2:
    adrp x0, _lb_text_1043e32f171d@PAGE
    add x0, x0, _lb_text_1043e32f171d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c3:
    adrp x0, _lb_text_12b4c7a1d9eb@PAGE
    add x0, x0, _lb_text_12b4c7a1d9eb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c4:
    adrp x0, _lb_text_12b4c7a1d9eb@PAGE
    add x0, x0, _lb_text_12b4c7a1d9eb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c5:
    adrp x0, _lb_text_fd742d5af644@PAGE
    add x0, x0, _lb_text_fd742d5af644@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c6:
    adrp x0, _lb_text_11437a0e30d0@PAGE
    add x0, x0, _lb_text_11437a0e30d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f72a40af416_c7:
    adrp x0, _lb_text_11437a0e30d0@PAGE
    add x0, x0, _lb_text_11437a0e30d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_densitometry_8value_of
_lb_densitometry_8value_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x14, #5
    b.hs L0b45c5b79908_7
    adr x10, L0b45c5b79908_jt0
    ldrsw x9, [x10, x14, lsl #2]
    add x10, x10, x9
    br x10
L0b45c5b79908_jt0:
    .long L0b45c5b79908_2 - L0b45c5b79908_jt0
    .long L0b45c5b79908_3 - L0b45c5b79908_jt0
    .long L0b45c5b79908_4 - L0b45c5b79908_jt0
    .long L0b45c5b79908_5 - L0b45c5b79908_jt0
    .long L0b45c5b79908_6 - L0b45c5b79908_jt0
L0b45c5b79908_2:
    adrp x14, _lb_densitometry_9iso_a_red@PAGE
    add x14, x14, _lb_densitometry_9iso_a_red@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c1
    ldr d24, [x14, x15, lsl #3]
    b L0b45c5b79908_1
L0b45c5b79908_3:
    adrp x14, _lb_densitometry_11iso_a_green@PAGE
    add x14, x14, _lb_densitometry_11iso_a_green@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c2
    ldr d24, [x14, x15, lsl #3]
    b L0b45c5b79908_1
L0b45c5b79908_4:
    adrp x14, _lb_densitometry_10iso_a_blue@PAGE
    add x14, x14, _lb_densitometry_10iso_a_blue@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c3
    ldr d24, [x14, x15, lsl #3]
    b L0b45c5b79908_1
L0b45c5b79908_5:
    adrp x14, _lb_densitometry_9iso_m_red@PAGE
    add x14, x14, _lb_densitometry_9iso_m_red@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c4
    ldr d24, [x14, x15, lsl #3]
    b L0b45c5b79908_1
L0b45c5b79908_6:
    adrp x14, _lb_densitometry_11iso_m_green@PAGE
    add x14, x14, _lb_densitometry_11iso_m_green@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c5
    ldr d24, [x14, x15, lsl #3]
    b L0b45c5b79908_1
L0b45c5b79908_7:
    adrp x14, _lb_densitometry_10iso_m_blue@PAGE
    add x14, x14, _lb_densitometry_10iso_m_blue@PAGEOFF
    movz x10, #38
    cmp x15, x10
    b.hs L0b45c5b79908_c6
    ldr d24, [x14, x15, lsl #3]
L0b45c5b79908_1:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0b45c5b79908_c1:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b45c5b79908_c2:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b45c5b79908_c3:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b45c5b79908_c4:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b45c5b79908_c5:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b45c5b79908_c6:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13luce_std_math_12exp_accurate
_lb_13luce_std_math_12exp_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    fmov d24, d0
    ldr d25, L6ca632d4058c_k0
    fcmp d24, d25
    b.mi L6ca632d4058c_2
L6ca632d4058c_1:
    fcmp d24, d24
    cset w14, ne
    fadd d24, d24, d24
    ldr d25, L6ca632d4058c_k1
    cmp w14, #0
    fcsel d24, d24, d25, ne
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6ca632d4058c_2:
    ldr d25, L6ca632d4058c_k2
    fcmp d24, d25
    b.pl L6ca632d4058c_9
L6ca632d4058c_8:
    fmov d24, xzr
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6ca632d4058c_9:
    fmov d25, xzr
    ldr d26, L6ca632d4058c_k3
    fmul d26, d26, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d27, [x14]
    fadd d26, d26, d27
    fsub d26, d26, d27
    ldr d27, L6ca632d4058c_k4
    fmul d27, d26, d27
    fsub d24, d24, d27
    ldr d27, L6ca632d4058c_k5
    fmul d27, d26, d27
    fneg d27, d27
    fadd d28, d24, d27
    fsub d29, d28, d24
    fsub d30, d28, d29
    fsub d24, d24, d30
    fsub d27, d27, d29
    fadd d24, d24, d27
    fcvtzs x14, d26
    fadd d24, d25, d24
    and x15, x14, #127
    adrp x12, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d25, x12
    adrp x12, _lb_13luce_std_math_16exp_coefficients@PAGE
    add x12, x12, _lb_13luce_std_math_16exp_coefficients@PAGEOFF
    sub x11, x29, #40
    ldp x16, x17, [x12, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x12, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x12, #32]
    str x16, [x11, #32]
    fmul d26, d28, d28
    ldr d27, [sp, #8]
    ldr d29, [sp, #16]
    ldr d30, [sp, #24]
    ldr d31, [sp, #32]
    ldr d19, [sp, #40]
    fmul d19, d28, d19
    fadd d31, d31, d19
    fmul d31, d28, d31
    fadd d30, d30, d31
    fmul d30, d28, d30
    fadd d29, d29, d30
    fmul d29, d28, d29
    fadd d27, d27, d29
    fmul d26, d26, d27
    fadd d24, d24, d26
    fadd d24, d24, d28
    adrp x12, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d26, x15
    fmul d24, d25, d24
    fadd d24, d26, d24
    asr x14, x14, #7
    fmov d0, d25
    fmov d1, d24
    mov x0, x14
    bl _lb_13luce_std_math_10scale_pair
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L6ca632d4058c_k0:
    .quad 4649454682646144614
L6ca632d4058c_k1:
    .quad 9218868437227405312
L6ca632d4058c_k2:
    .quad 13873145138068324352
L6ca632d4058c_k3:
    .quad 4640701337412797182
L6ca632d4058c_k4:
    .quad 4572893336921964544
L6ca632d4058c_k5:
    .quad 13635880478764185753


    .p2align 2
    .globl _lb_10film_print_seen
_lb_10film_print_seen:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str d8, [sp, #112]
    str d9, [sp, #104]
    str d10, [sp, #96]
    str d11, [sp, #88]
    str d12, [sp, #80]
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    fmov d8, d3
    mov x19, x0
    fmov d24, xzr
    add x20, x19, #16
    movz x10, #30864
    add x21, x19, x10
    adrp x22, _lb_19luce_color_spectral_observer@PAGE
    add x22, x22, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x23, #0
    fmov d9, d24
    fmov d10, d24
    fmov d11, d24
L0e1e175837aa_1:
    cmp x23, #81
    b.hs L0e1e175837aa_4
    .p2align 4
L0e1e175837aa_2:
    ldr d24, [sp, #40]
    lsl x14, x23, #3
    add x15, x14, x20
    ldr d25, [x15]
    fmul d24, d24, d25
    ldr d25, [sp, #48]
    add x12, x23, #81
    movz x10, #243
    cmp x12, x10
    b.hs L0e1e175837aa_c1
    ldr d26, [x15, #648]
    fmul d25, d25, d26
    fadd d24, d24, d25
    ldr d25, [sp, #56]
    add x12, x23, #162
    movz x10, #243
    cmp x12, x10
    b.hs L0e1e175837aa_c2
    ldr d26, [x15, #1296]
    fmul d25, d25, d26
    fadd d24, d24, d25
    fadd d24, d24, d8
    ldr d12, [x14, x21]
    fmov d0, d24
    mov x0, x19
    bl _lb_10film_print_PrintModel_passed
    fmov d24, d0
    fmul d24, d12, d24
    add x14, x23, x23, lsl #1
    add x15, x22, x14, lsl #3
    ldr d25, [x15]
    fmul d25, d24, d25
    fadd d9, d25, d9
    add x12, x14, #1
    movz x10, #243
    cmp x12, x10
    b.hs L0e1e175837aa_c3
    ldr d25, [x15, #8]
    fmul d25, d24, d25
    fadd d10, d25, d10
    add x14, x14, #2
    movz x10, #243
    cmp x14, x10
    b.hs L0e1e175837aa_c4
    ldr d25, [x15, #16]
    fmul d24, d24, d25
    fadd d11, d24, d11
    add x23, x23, #1
    cmp x23, #81
    b.lo L0e1e175837aa_2
L0e1e175837aa_4:
    fmov d24, #1.0000000
    ldr d25, [x19, #31520]
    ldr d26, [x19, #4312]
    fadd d27, d24, d26
    fmul d27, d25, d27
    fdiv d24, d24, d27
    ldr d27, [x19, #31512]
    fmul d27, d26, d27
    fadd d27, d27, d9
    fmul d27, d24, d27
    fmul d25, d25, d26
    fadd d25, d25, d10
    fmul d25, d24, d25
    ldr d28, [x19, #31528]
    fmul d26, d26, d28
    fadd d26, d26, d11
    fmul d24, d24, d26
    movz x10, #31536
    add x14, x19, x10
    sub x11, x29, #152
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
    ldr d26, [sp, #8]
    fmul d26, d27, d26
    ldr d28, [sp, #16]
    fmul d28, d25, d28
    fadd d26, d26, d28
    ldr d28, [sp, #24]
    fmul d28, d24, d28
    fadd d26, d26, d28
    ldr d28, [sp, #32]
    fmul d28, d27, d28
    ldr d29, [sp, #40]
    fmul d29, d25, d29
    fadd d28, d28, d29
    ldr d29, [sp, #48]
    fmul d29, d24, d29
    fadd d28, d28, d29
    ldr d29, [sp, #56]
    fmul d27, d27, d29
    ldr d29, [sp, #64]
    fmul d25, d25, d29
    fadd d25, d27, d25
    ldr d27, [sp, #72]
    fmul d24, d24, d27
    fadd d24, d25, d24
    fmov d0, d26
    fmov d1, d28
    fmov d2, d24
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr d8, [sp, #112]
    ldr d9, [sp, #104]
    ldr d10, [sp, #96]
    ldr d11, [sp, #88]
    ldr d12, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0e1e175837aa_c1:
    adrp x0, _lb_text_e4628433aa28@PAGE
    add x0, x0, _lb_text_e4628433aa28@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0e1e175837aa_c2:
    adrp x0, _lb_text_e4628433aa28@PAGE
    add x0, x0, _lb_text_e4628433aa28@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0e1e175837aa_c3:
    adrp x0, _lb_text_c08de7296db8@PAGE
    add x0, x0, _lb_text_c08de7296db8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0e1e175837aa_c4:
    adrp x0, _lb_text_1193c4bff664@PAGE
    add x0, x0, _lb_text_1193c4bff664@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13luce_std_math_10scale_pair
_lb_13luce_std_math_10scale_pair:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    cmn x14, #1020
    b.lt L9bd60ccdab62_2
L9bd60ccdab62_4:
    cmp x14, #1023
    b.gt L9bd60ccdab62_2
L9bd60ccdab62_1:
    fadd d24, d24, d25
    adds x14, x14, #1023
    b.vs L9bd60ccdab62_c1
    lsl x14, x14, #52
    fmov d25, x14
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_2:
    cmp x14, #1023
    b.le L9bd60ccdab62_7
L9bd60ccdab62_6:
    cmp x14, #1024
    b.le L9bd60ccdab62_10
L9bd60ccdab62_9:
    ldr d24, L9bd60ccdab62_k0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_10:
    fadd d24, d24, d25
    subs x14, x14, #1
    b.vs L9bd60ccdab62_c2
    adds x14, x14, #1023
    b.vs L9bd60ccdab62_c3
    lsl x14, x14, #52
    fmov d25, x14
    fmul d24, d25, d24
    fmov d25, #2.0000000
    fmul d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_7:
    cmn x14, #1080
    b.ge L9bd60ccdab62_15
L9bd60ccdab62_14:
    fmov d24, xzr
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_15:
    adds x14, x14, #1022
    b.vs L9bd60ccdab62_c4
    adds x14, x14, #1023
    b.vs L9bd60ccdab62_c5
    lsl x14, x14, #52
    fmov d26, x14
    fmul d24, d26, d24
    fmul d25, d26, d25
    fmov d26, #1.0000000
    fcmp d24, d26
    b.gt L9bd60ccdab62_18
L9bd60ccdab62_21:
    fcmp d24, d26
    b.ne L9bd60ccdab62_19
L9bd60ccdab62_22:
    fmov d27, xzr
    fcmp d25, d27
    b.lt L9bd60ccdab62_19
L9bd60ccdab62_18:
    fadd d24, d24, d25
    ldr d25, L9bd60ccdab62_k1
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_19:
    fadd d27, d24, d26
    fsub d28, d27, d26
    fsub d29, d27, d28
    fsub d29, d26, d29
    fsub d24, d24, d28
    fadd d24, d29, d24
    fadd d24, d25, d24
    fadd d24, d24, d27
    fsub d24, d24, d26
    ldr d25, L9bd60ccdab62_k1
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9bd60ccdab62_c1:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9bd60ccdab62_c2:
    adrp x0, _lb_text_f1b210321f1c@PAGE
    add x0, x0, _lb_text_f1b210321f1c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9bd60ccdab62_c3:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9bd60ccdab62_c4:
    adrp x0, _lb_text_a40d65130b8a@PAGE
    add x0, x0, _lb_text_a40d65130b8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9bd60ccdab62_c5:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L9bd60ccdab62_k0:
    .quad 9218868437227405312
L9bd60ccdab62_k1:
    .quad 4503599627370496


    .p2align 2
    .globl _lb_13luce_std_math_9sin_value
_lb_13luce_std_math_9sin_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15936, lsl #48
    sub x14, x14, x10
    movz x10, #752, lsl #48
    cmp x14, x10
    b.hs La7707e3c0e7f_2
La7707e3c0e7f_1:
    ldr d25, La7707e3c0e7f_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, La7707e3c0e7f_k1
    fmul d26, d25, d26
    fsub d26, d24, d26
    ldr d27, La7707e3c0e7f_k2
    fmul d27, d25, d27
    fneg d27, d27
    fadd d28, d26, d27
    fsub d29, d28, d26
    fsub d30, d28, d29
    fsub d26, d26, d30
    fsub d27, d27, d29
    fadd d26, d26, d27
    ldr d27, La7707e3c0e7f_k3
    fmul d27, d25, d27
    fsub d26, d26, d27
    fadd d27, d26, d28
    fsub d28, d27, d28
    fsub d26, d26, d28
    fcvtzs x14, d25
    fmul d25, d27, d27
    and x15, x14, #255
    lsl x15, x15, #1
    adrp x12, _lb_20luce_std_math_tables_10sine_table@PAGE
    add x12, x12, _lb_20luce_std_math_tables_10sine_table@PAGEOFF
    add x13, x12, x15, lsl #3
    ldr x7, [x13]
    fmov d28, x7
    add x15, x15, #1
    movz x10, #512
    cmp x15, x10
    b.hs La7707e3c0e7f_c1
    ldr x15, [x13, #8]
    fmov d29, x15
    add x14, x14, #64
    and x14, x14, #255
    lsl x14, x14, #1
    add x15, x12, x14, lsl #3
    ldr x12, [x15]
    fmov d30, x12
    add x14, x14, #1
    movz x10, #512
    cmp x14, x10
    b.hs La7707e3c0e7f_c2
    ldr x14, [x15, #8]
    fmov d31, x14
    fmov d19, #-0.5000000
    ldr d20, La7707e3c0e7f_k4
    ldr d21, La7707e3c0e7f_k5
    fmul d21, d25, d21
    fadd d20, d20, d21
    fmul d20, d25, d20
    fadd d19, d19, d20
    fmul d19, d25, d19
    fmul d20, d25, d27
    ldr d21, La7707e3c0e7f_k6
    ldr d22, La7707e3c0e7f_k7
    ldr d23, La7707e3c0e7f_k8
    fmul d23, d25, d23
    fadd d22, d22, d23
    fmul d25, d25, d22
    fadd d25, d21, d25
    fmul d25, d20, d25
    fmul d20, d27, d30
    fneg d21, d20
    fmadd d21, d30, d27, d21
    fadd d22, d28, d20
    fsub d23, d22, d28
    fsub d20, d20, d23
    fadd d20, d21, d20
    fmul d31, d27, d31
    fadd d29, d29, d31
    fadd d29, d20, d29
    fmul d27, d27, d28
    fsub d27, d30, d27
    fmul d26, d26, d27
    fadd d26, d29, d26
    fmul d27, d28, d19
    fmul d25, d30, d25
    fadd d25, d27, d25
    fadd d25, d26, d25
La7707e3c0e7f_32:
    fabs d26, d22
    ldr d27, La7707e3c0e7f_k9
    fmul d26, d27, d26
    ldr d27, La7707e3c0e7f_k10
    fadd d26, d26, d27
    fsub d27, d25, d26
    fadd d27, d22, d27
    fadd d26, d25, d26
    fadd d26, d22, d26
    fcmp d27, d26
    b.ne La7707e3c0e7f_5
La7707e3c0e7f_4:
    fadd d24, d25, d22
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7707e3c0e7f_5:
La7707e3c0e7f_6:
La7707e3c0e7f_2:
La7707e3c0e7f_3:
    fmov d0, d24
    bl _lb_13luce_std_math_12sin_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7707e3c0e7f_c1:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La7707e3c0e7f_c2:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
La7707e3c0e7f_k0:
    .quad 4630930978448722051
La7707e3c0e7f_k1:
    .quad 4582731459155984384
La7707e3c0e7f_k2:
    .quad 4445346703003877376
La7707e3c0e7f_k3:
    .quad 13559410162067261426
La7707e3c0e7f_k4:
    .quad 4586165620538955093
La7707e3c0e7f_k5:
    .quad 13787419979223755799
La7707e3c0e7f_k6:
    .quad 13818544856648471893
La7707e3c0e7f_k7:
    .quad 4575957461383581969
La7707e3c0e7f_k8:
    .quad 13774824197408792602
La7707e3c0e7f_k9:
    .quad 4332462841530417152
La7707e3c0e7f_k10:
    .quad 4224376450473525248


    .p2align 2
    .globl _lb_13luce_std_math_10asin_value
_lb_13luce_std_math_10asin_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str d8, [sp, #152]
    str d9, [sp, #144]
    str d10, [sp, #136]
    str d11, [sp, #128]
    str d12, [sp, #120]
    fmov d24, d0
    fabs d25, d24
    fmov d26, #1.0000000
    fcmp d25, d26
    b.mi L5cd23f7b550c_2
L5cd23f7b550c_1:
    fcmp d26, d25
    b.ne L5cd23f7b550c_5
L5cd23f7b550c_4:
    ldr d25, L5cd23f7b550c_k0
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5cd23f7b550c_5:
L5cd23f7b550c_6:
    fsub d24, d24, d24
    fdiv d24, d24, d24
    fmov d0, d24
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5cd23f7b550c_2:
L5cd23f7b550c_3:
    ldr d27, L5cd23f7b550c_k1
    fcmp d25, d27
    b.pl L5cd23f7b550c_10
L5cd23f7b550c_9:
    fmov d0, d24
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5cd23f7b550c_10:
L5cd23f7b550c_11:
    fmov d27, #0.5000000
    fcmp d25, d27
    b.hi L5cd23f7b550c_14
L5cd23f7b550c_13:
    fmul d25, d24, d24
    fmul d26, d25, d24
    adrp x14, _lb_20luce_std_math_tables_17asin_coefficients@PAGE
    add x14, x14, _lb_20luce_std_math_tables_17asin_coefficients@PAGEOFF
    ldr d27, [x14]
    sub x11, x29, #152
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x14, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x14, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x14, #96]
    stp x16, x17, [x11, #96]
    fmul d28, d25, d25
    fmul d29, d28, d28
    ldr d30, [sp, #16]
    ldr d31, [sp, #24]
    fmul d31, d25, d31
    fadd d30, d30, d31
    ldr d31, [sp, #32]
    ldr d19, [sp, #40]
    fmul d19, d25, d19
    fadd d31, d31, d19
    ldr d19, [sp, #48]
    ldr d20, [sp, #56]
    fmul d20, d25, d20
    fadd d19, d19, d20
    ldr d20, [sp, #64]
    ldr d21, [sp, #72]
    fmul d21, d25, d21
    fadd d20, d20, d21
    ldr d21, [sp, #80]
    ldr d22, [sp, #88]
    fmul d22, d25, d22
    fadd d21, d21, d22
    ldr d22, [sp, #96]
    ldr d23, [sp, #104]
    fmul d23, d25, d23
    fadd d22, d22, d23
    fmul d31, d28, d31
    fadd d30, d30, d31
    fmul d31, d28, d20
    fadd d31, d19, d31
    fmul d31, d29, d31
    fadd d30, d30, d31
    fmul d28, d28, d22
    fadd d28, d21, d28
    ldr d31, [sp, #112]
    fmul d31, d29, d31
    fadd d28, d28, d31
    fmul d29, d29, d29
    fmul d28, d28, d29
    fadd d28, d30, d28
    fmul d25, d25, d28
    fadd d25, d25, d27
    fmul d25, d25, d26
    fadd d24, d25, d24
    fmov d0, d24
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5cd23f7b550c_14:
L5cd23f7b550c_15:
    fsub d25, d26, d25
    fmul d25, d27, d25
    fmov d28, xzr
    fsqrt d29, d25
    fmul d30, d29, d29
    fneg d31, d30
    fmadd d31, d29, d29, d31
    fsub d30, d25, d30
    fsub d30, d30, d31
    fadd d28, d28, d30
    fadd d30, d29, d29
    fdiv d28, d28, d30
    fadd d30, d29, d28
    fsub d29, d30, d29
    fsub d28, d28, d29
L5cd23f7b550c_31:
    fmul d29, d25, d30
    fneg d31, d29
    fmadd d31, d30, d25, d31
    adrp x14, _lb_20luce_std_math_tables_17asin_coefficients@PAGE
    add x14, x14, _lb_20luce_std_math_tables_17asin_coefficients@PAGEOFF
    ldr d19, [x14]
    fmul d20, d19, d29
    fneg d21, d20
    fmadd d21, d29, d19, d21
    fmul d31, d19, d31
    fadd d31, d31, d21
    sub x11, x29, #152
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x14, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x14, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x14, #96]
    stp x16, x17, [x11, #96]
    fmul d19, d25, d25
    fmul d21, d19, d19
    ldr d22, [sp, #16]
    ldr d23, [sp, #24]
    fmul d23, d25, d23
    fadd d22, d22, d23
    ldr d23, [sp, #32]
    ldr d8, [sp, #40]
    fmul d8, d25, d8
    fadd d23, d23, d8
    ldr d8, [sp, #48]
    ldr d9, [sp, #56]
    fmul d9, d25, d9
    fadd d8, d8, d9
    ldr d9, [sp, #64]
    ldr d10, [sp, #72]
    fmul d10, d25, d10
    fadd d9, d9, d10
    ldr d10, [sp, #80]
    ldr d11, [sp, #88]
    fmul d11, d25, d11
    fadd d10, d10, d11
    ldr d11, [sp, #96]
    ldr d12, [sp, #104]
    fmul d12, d25, d12
    fadd d11, d11, d12
    fmul d23, d19, d23
    fadd d22, d22, d23
    fmul d23, d19, d9
    fadd d23, d8, d23
    fmul d23, d21, d23
    fadd d22, d22, d23
    fmul d19, d19, d11
    fadd d19, d10, d19
    ldr d23, [sp, #112]
    fmul d23, d21, d23
    fadd d19, d19, d23
    fmul d21, d21, d21
    fmul d19, d19, d21
    fadd d19, d22, d19
    fmul d19, d25, d19
    fmul d29, d29, d19
    fadd d29, d29, d31
    fmov d31, #0.3750000
    fmov d19, #0.3125000
    fmul d19, d25, d19
    fadd d31, d31, d19
    fmul d31, d25, d31
    fadd d27, d27, d31
    fmul d25, d25, d27
    fadd d25, d26, d25
    fmul d25, d28, d25
    fadd d25, d29, d25
    fadd d26, d30, d20
    fsub d27, d26, d30
    fsub d27, d20, d27
    fadd d25, d25, d27
    fadd d27, d25, d26
    fsub d26, d27, d26
    fsub d25, d25, d26
L5cd23f7b550c_43:
    ldr d26, L5cd23f7b550c_k0
    fmov d28, #2.0000000
    fmov d29, #-2.0000000
    fmul d27, d29, d27
    fadd d29, d26, d27
    fsub d30, d29, d26
    fsub d31, d29, d30
    fsub d26, d26, d31
    fsub d27, d27, d30
    fadd d26, d26, d27
    ldr d27, L5cd23f7b550c_k2
    fmul d25, d28, d25
    fsub d25, d27, d25
    fadd d25, d25, d26
    fadd d25, d25, d29
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L5cd23f7b550c_k0:
    .quad 4609753056924675352
L5cd23f7b550c_k1:
    .quad 4490088828488384512
L5cd23f7b550c_k2:
    .quad 4364452196894661639


    .p2align 2
    .globl _lb_13luce_std_math_9cos_value
_lb_13luce_std_math_9cos_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15936, lsl #48
    sub x14, x14, x10
    movz x10, #752, lsl #48
    cmp x14, x10
    b.hs L1138563b0dd6_2
L1138563b0dd6_1:
    ldr d25, L1138563b0dd6_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L1138563b0dd6_k1
    fmul d26, d25, d26
    fsub d26, d24, d26
    ldr d27, L1138563b0dd6_k2
    fmul d27, d25, d27
    fneg d27, d27
    fadd d28, d26, d27
    fsub d29, d28, d26
    fsub d30, d28, d29
    fsub d26, d26, d30
    fsub d27, d27, d29
    fadd d26, d26, d27
    ldr d27, L1138563b0dd6_k3
    fmul d27, d25, d27
    fsub d26, d26, d27
    fadd d27, d26, d28
    fsub d28, d27, d28
    fsub d26, d26, d28
    fcvtzs x14, d25
    fmul d25, d27, d27
    add x15, x14, #64
    and x15, x15, #255
    lsl x15, x15, #1
    adrp x12, _lb_20luce_std_math_tables_10sine_table@PAGE
    add x12, x12, _lb_20luce_std_math_tables_10sine_table@PAGEOFF
    add x13, x12, x15, lsl #3
    ldr x7, [x13]
    fmov d28, x7
    add x15, x15, #1
    movz x10, #512
    cmp x15, x10
    b.hs L1138563b0dd6_c1
    ldr x15, [x13, #8]
    fmov d29, x15
    add x14, x14, #128
    and x14, x14, #255
    lsl x14, x14, #1
    add x15, x12, x14, lsl #3
    ldr x12, [x15]
    fmov d30, x12
    add x14, x14, #1
    movz x10, #512
    cmp x14, x10
    b.hs L1138563b0dd6_c2
    ldr x14, [x15, #8]
    fmov d31, x14
    fmov d19, #-0.5000000
    ldr d20, L1138563b0dd6_k4
    ldr d21, L1138563b0dd6_k5
    fmul d21, d25, d21
    fadd d20, d20, d21
    fmul d20, d25, d20
    fadd d19, d19, d20
    fmul d19, d25, d19
    fmul d20, d25, d27
    ldr d21, L1138563b0dd6_k6
    ldr d22, L1138563b0dd6_k7
    ldr d23, L1138563b0dd6_k8
    fmul d23, d25, d23
    fadd d22, d22, d23
    fmul d25, d25, d22
    fadd d25, d21, d25
    fmul d25, d20, d25
    fmul d20, d27, d30
    fneg d21, d20
    fmadd d21, d30, d27, d21
    fadd d22, d28, d20
    fsub d23, d22, d28
    fsub d20, d20, d23
    fadd d20, d21, d20
    fmul d31, d27, d31
    fadd d29, d29, d31
    fadd d29, d20, d29
    fmul d27, d27, d28
    fsub d27, d30, d27
    fmul d26, d26, d27
    fadd d26, d29, d26
    fmul d27, d28, d19
    fmul d25, d30, d25
    fadd d25, d27, d25
    fadd d25, d26, d25
L1138563b0dd6_32:
    fabs d26, d22
    ldr d27, L1138563b0dd6_k9
    fmul d26, d27, d26
    ldr d27, L1138563b0dd6_k10
    fadd d26, d26, d27
    fsub d27, d25, d26
    fadd d27, d22, d27
    fadd d26, d25, d26
    fadd d26, d22, d26
    fcmp d27, d26
    b.ne L1138563b0dd6_5
L1138563b0dd6_4:
    fadd d24, d25, d22
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1138563b0dd6_5:
L1138563b0dd6_6:
L1138563b0dd6_2:
L1138563b0dd6_3:
    fmov d0, d24
    bl _lb_13luce_std_math_12cos_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1138563b0dd6_c1:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1138563b0dd6_c2:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L1138563b0dd6_k0:
    .quad 4630930978448722051
L1138563b0dd6_k1:
    .quad 4582731459155984384
L1138563b0dd6_k2:
    .quad 4445346703003877376
L1138563b0dd6_k3:
    .quad 13559410162067261426
L1138563b0dd6_k4:
    .quad 4586165620538955093
L1138563b0dd6_k5:
    .quad 13787419979223755799
L1138563b0dd6_k6:
    .quad 13818544856648471893
L1138563b0dd6_k7:
    .quad 4575957461383581969
L1138563b0dd6_k8:
    .quad 13774824197408792602
L1138563b0dd6_k9:
    .quad 4332462841530417152
L1138563b0dd6_k10:
    .quad 4224376450473525248


    .p2align 2
    .globl _lb_13luce_std_math_12sin_accurate
_lb_13luce_std_math_12sin_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str d8, [sp, #104]
    str d9, [sp, #96]
    str d10, [sp, #88]
    str d11, [sp, #80]
    str d12, [sp, #72]
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15952, lsl #48
    cmp x14, x10
    b.hs L7a7596a5524d_2
L7a7596a5524d_1:
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7a7596a5524d_2:
L7a7596a5524d_3:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.lo L7a7596a5524d_6
L7a7596a5524d_5:
    fsub d24, d24, d24
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7a7596a5524d_6:
L7a7596a5524d_7:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16361, lsl #48
    cmp x14, x10
    b.hi L7a7596a5524d_17
L7a7596a5524d_16:
    fmov d25, xzr
    mov x14, #0
    b L7a7596a5524d_31
L7a7596a5524d_17:
L7a7596a5524d_18:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16697, lsl #48
    cmp x14, x10
    b.lo L7a7596a5524d_21
L7a7596a5524d_20:
    fmov d0, d24
    bl _lb_13luce_std_math_12reduce_large
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    b L7a7596a5524d_31
L7a7596a5524d_21:
L7a7596a5524d_22:
    ldr d25, L7a7596a5524d_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L7a7596a5524d_k1
    fmul d26, d25, d26
    fsub d24, d24, d26
    ldr d26, L7a7596a5524d_k2
    fmul d26, d25, d26
    fneg d26, d26
    fadd d27, d24, d26
    fsub d28, d27, d24
    fsub d29, d27, d28
    fsub d24, d24, d29
    fsub d26, d26, d28
    fadd d24, d24, d26
    ldr d26, L7a7596a5524d_k3
    fmul d26, d25, d26
    fneg d26, d26
    fadd d28, d26, d27
    fsub d29, d28, d27
    fsub d30, d28, d29
    fsub d27, d27, d30
    fsub d26, d26, d29
    fadd d26, d27, d26
    fadd d24, d24, d26
    ldr d26, L7a7596a5524d_k4
    fmul d26, d25, d26
    fsub d24, d24, d26
    fadd d26, d24, d28
    fsub d27, d26, d28
    fsub d27, d24, d27
    fcvtzs x14, d25
    fmov d24, d26
    fmov d25, d27
L7a7596a5524d_31:
    and x14, x14, #3
    and x15, x14, #1
    cmp x15, #1
    b.ne L7a7596a5524d_10
L7a7596a5524d_9:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d27, d24, d24, d27
    fmov d28, #0.5000000
    fmul d29, d28, d26
    fmov d30, #1.0000000
    fneg d29, d29
    fadd d31, d30, d29
    fsub d30, d31, d30
    fsub d29, d29, d30
    adrp x15, _lb_13luce_std_math_16cos_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16cos_coefficients@PAGEOFF
    sub x11, x29, #112
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
    ldr d30, [sp, #0]
    ldr d19, [sp, #8]
    ldr d20, [sp, #16]
    ldr d21, [sp, #24]
    ldr d22, [sp, #32]
    ldr d23, [sp, #40]
    ldr d8, [sp, #48]
    ldr d9, [sp, #56]
    ldr d10, [sp, #64]
    fmul d10, d10, d26
    fadd d9, d9, d10
    fmul d9, d9, d26
    fadd d8, d8, d9
    fmul d8, d8, d26
    fadd d23, d23, d8
    fmul d23, d23, d26
    fadd d22, d22, d23
    fmul d22, d22, d26
    fadd d21, d21, d22
    fmul d21, d21, d26
    fadd d20, d20, d21
    fmul d20, d20, d26
    fadd d19, d19, d20
    fmul d19, d19, d26
    fadd d30, d30, d19
    fmov d19, #2.0000000
    fmul d24, d19, d24
    fmul d24, d24, d25
    fadd d24, d24, d27
    fmul d24, d28, d24
    fsub d24, d29, d24
    fmul d25, d26, d26
    fmul d25, d30, d25
    fadd d24, d24, d25
    fadd d25, d24, d31
    fsub d26, d25, d31
    fsub d24, d24, d26
L7a7596a5524d_39:
    b L7a7596a5524d_11
L7a7596a5524d_10:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d27, d24, d24, d27
    fmul d28, d26, d24
    fneg d29, d28
    fmadd d29, d24, d26, d29
    adrp x15, _lb_13luce_std_math_10sixth_high@PAGE
    add x15, x15, _lb_13luce_std_math_10sixth_high@PAGEOFF
    ldr d30, [x15]
    fmul d31, d30, d28
    fneg d31, d31
    fmadd d19, d28, d30, d31
    fadd d20, d31, d24
    fsub d21, d20, d24
    fsub d31, d31, d21
    adrp x15, _lb_13luce_std_math_16sin_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16sin_coefficients@PAGEOFF
    sub x11, x29, #104
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x15, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x15, #48]
    stp x16, x17, [x11, #48]
    ldr d21, [sp, #8]
    ldr d22, [sp, #16]
    ldr d23, [sp, #24]
    ldr d8, [sp, #32]
    ldr d9, [sp, #40]
    ldr d10, [sp, #48]
    ldr d11, [sp, #56]
    ldr d12, [sp, #64]
    fmul d12, d12, d26
    fadd d11, d11, d12
    fmul d11, d11, d26
    fadd d10, d10, d11
    fmul d10, d10, d26
    fadd d9, d9, d10
    fmul d9, d9, d26
    fadd d8, d8, d9
    fmul d8, d8, d26
    fadd d23, d23, d8
    fmul d23, d23, d26
    fadd d22, d22, d23
    fmul d22, d22, d26
    fadd d21, d21, d22
    fmul d24, d27, d24
    fadd d24, d24, d29
    fmul d24, d30, d24
    adrp x15, _lb_13luce_std_math_9sixth_low@PAGE
    add x15, x15, _lb_13luce_std_math_9sixth_low@PAGEOFF
    ldr d27, [x15]
    fmul d27, d27, d28
    fadd d24, d24, d27
    fadd d24, d24, d19
    fsub d24, d31, d24
    fmov d27, #1.0000000
    fmov d29, #0.5000000
    fmul d29, d29, d26
    fsub d27, d27, d29
    fmul d25, d27, d25
    fmul d26, d26, d28
    fmul d26, d21, d26
    fadd d25, d25, d26
    fadd d24, d24, d25
    fadd d25, d24, d20
    fsub d26, d25, d20
    fsub d24, d24, d26
L7a7596a5524d_51:
L7a7596a5524d_11:
    cmp x14, #2
    fadd d26, d25, d24
    fneg d26, d26
    fadd d24, d25, d24
    fcsel d24, d26, d24, ge
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7a7596a5524d_k0:
    .quad 4603909380684499075
L7a7596a5524d_k1:
    .quad 4609753056924401664
L7a7596a5524d_k2:
    .quad 4454258360616747008
L7a7596a5524d_k3:
    .quad 4297306550709518336
L7a7596a5524d_k4:
    .quad 4142048980368378305


    .p2align 2
    .globl _lb_13luce_std_math_12cos_accurate
_lb_13luce_std_math_12cos_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str d8, [sp, #104]
    str d9, [sp, #96]
    str d10, [sp, #88]
    str d11, [sp, #80]
    str d12, [sp, #72]
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15936, lsl #48
    cmp x14, x10
    b.hs L0ec37116e79f_2
L0ec37116e79f_1:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0ec37116e79f_2:
L0ec37116e79f_3:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.lo L0ec37116e79f_6
L0ec37116e79f_5:
    fsub d24, d24, d24
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0ec37116e79f_6:
L0ec37116e79f_7:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16361, lsl #48
    cmp x14, x10
    b.hi L0ec37116e79f_19
L0ec37116e79f_18:
    fmov d25, xzr
    mov x14, #0
    b L0ec37116e79f_33
L0ec37116e79f_19:
L0ec37116e79f_20:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16697, lsl #48
    cmp x14, x10
    b.lo L0ec37116e79f_23
L0ec37116e79f_22:
    fmov d0, d24
    bl _lb_13luce_std_math_12reduce_large
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    b L0ec37116e79f_33
L0ec37116e79f_23:
L0ec37116e79f_24:
    ldr d25, L0ec37116e79f_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L0ec37116e79f_k1
    fmul d26, d25, d26
    fsub d24, d24, d26
    ldr d26, L0ec37116e79f_k2
    fmul d26, d25, d26
    fneg d26, d26
    fadd d27, d24, d26
    fsub d28, d27, d24
    fsub d29, d27, d28
    fsub d24, d24, d29
    fsub d26, d26, d28
    fadd d24, d24, d26
    ldr d26, L0ec37116e79f_k3
    fmul d26, d25, d26
    fneg d26, d26
    fadd d28, d26, d27
    fsub d29, d28, d27
    fsub d30, d28, d29
    fsub d27, d27, d30
    fsub d26, d26, d29
    fadd d26, d27, d26
    fadd d24, d24, d26
    ldr d26, L0ec37116e79f_k4
    fmul d26, d25, d26
    fsub d24, d24, d26
    fadd d26, d24, d28
    fsub d27, d26, d28
    fsub d27, d24, d27
    fcvtzs x14, d25
    fmov d24, d26
    fmov d25, d27
L0ec37116e79f_33:
    and x14, x14, #3
    and x15, x14, #1
    cmp x15, #1
    b.ne L0ec37116e79f_10
L0ec37116e79f_9:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d27, d24, d24, d27
    fmul d28, d26, d24
    fneg d29, d28
    fmadd d29, d24, d26, d29
    adrp x15, _lb_13luce_std_math_10sixth_high@PAGE
    add x15, x15, _lb_13luce_std_math_10sixth_high@PAGEOFF
    ldr d30, [x15]
    fmul d31, d30, d28
    fneg d31, d31
    fmadd d19, d28, d30, d31
    fadd d20, d31, d24
    fsub d21, d20, d24
    fsub d31, d31, d21
    adrp x15, _lb_13luce_std_math_16sin_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16sin_coefficients@PAGEOFF
    sub x11, x29, #104
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x15, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x15, #48]
    stp x16, x17, [x11, #48]
    ldr d21, [sp, #8]
    ldr d22, [sp, #16]
    ldr d23, [sp, #24]
    ldr d8, [sp, #32]
    ldr d9, [sp, #40]
    ldr d10, [sp, #48]
    ldr d11, [sp, #56]
    ldr d12, [sp, #64]
    fmul d12, d12, d26
    fadd d11, d11, d12
    fmul d11, d11, d26
    fadd d10, d10, d11
    fmul d10, d10, d26
    fadd d9, d9, d10
    fmul d9, d9, d26
    fadd d8, d8, d9
    fmul d8, d8, d26
    fadd d23, d23, d8
    fmul d23, d23, d26
    fadd d22, d22, d23
    fmul d22, d22, d26
    fadd d21, d21, d22
    fmul d24, d27, d24
    fadd d24, d24, d29
    fmul d24, d30, d24
    adrp x15, _lb_13luce_std_math_9sixth_low@PAGE
    add x15, x15, _lb_13luce_std_math_9sixth_low@PAGEOFF
    ldr d27, [x15]
    fmul d27, d27, d28
    fadd d24, d24, d27
    fadd d24, d24, d19
    fsub d24, d31, d24
    fmov d27, #1.0000000
    fmov d29, #0.5000000
    fmul d29, d29, d26
    fsub d27, d27, d29
    fmul d25, d27, d25
    fmul d26, d26, d28
    fmul d26, d21, d26
    fadd d25, d25, d26
    fadd d24, d24, d25
    fadd d25, d24, d20
    fsub d26, d25, d20
    fsub d24, d24, d26
L0ec37116e79f_45:
    b L0ec37116e79f_11
L0ec37116e79f_10:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d27, d24, d24, d27
    fmov d28, #0.5000000
    fmul d29, d28, d26
    fmov d30, #1.0000000
    fneg d29, d29
    fadd d31, d30, d29
    fsub d30, d31, d30
    fsub d29, d29, d30
    adrp x15, _lb_13luce_std_math_16cos_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16cos_coefficients@PAGEOFF
    sub x11, x29, #112
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
    ldr d30, [sp, #0]
    ldr d19, [sp, #8]
    ldr d20, [sp, #16]
    ldr d21, [sp, #24]
    ldr d22, [sp, #32]
    ldr d23, [sp, #40]
    ldr d8, [sp, #48]
    ldr d9, [sp, #56]
    ldr d10, [sp, #64]
    fmul d10, d10, d26
    fadd d9, d9, d10
    fmul d9, d9, d26
    fadd d8, d8, d9
    fmul d8, d8, d26
    fadd d23, d23, d8
    fmul d23, d23, d26
    fadd d22, d22, d23
    fmul d22, d22, d26
    fadd d21, d21, d22
    fmul d21, d21, d26
    fadd d20, d20, d21
    fmul d20, d20, d26
    fadd d19, d19, d20
    fmul d19, d19, d26
    fadd d30, d30, d19
    fmov d19, #2.0000000
    fmul d24, d19, d24
    fmul d24, d24, d25
    fadd d24, d24, d27
    fmul d24, d28, d24
    fsub d24, d29, d24
    fmul d25, d26, d26
    fmul d25, d30, d25
    fadd d24, d24, d25
    fadd d25, d24, d31
    fsub d26, d25, d31
    fsub d24, d24, d26
L0ec37116e79f_53:
L0ec37116e79f_11:
    cmp x14, #1
    cset w15, eq
    cmp x14, #2
    cset w14, eq
    cmp w15, #0
    csel w14, w15, w14, ne
    and w14, w14, #255
    fadd d26, d25, d24
    fneg d26, d26
    fadd d24, d25, d24
    cmp w14, #0
    fcsel d24, d26, d24, ne
    fmov d0, d24
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    ldr d10, [sp, #88]
    ldr d11, [sp, #80]
    ldr d12, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L0ec37116e79f_k0:
    .quad 4603909380684499075
L0ec37116e79f_k1:
    .quad 4609753056924401664
L0ec37116e79f_k2:
    .quad 4454258360616747008
L0ec37116e79f_k3:
    .quad 4297306550709518336
L0ec37116e79f_k4:
    .quad 4142048980368378305


    .p2align 2
    .globl _lb_13luce_std_math_12reduce_large
_lb_13luce_std_math_12reduce_large:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #168]
    fmov d24, d0
    fmov x14, d24
    lsr x15, x14, #52
    and x15, x15, #2047
    subs x15, x15, #1075
    b.vs L695e57fdc0b9_c1
    and x12, x14, #4503599627370495
    orr x12, x12, #4503599627370496
    cmp x15, #3
    b.lt L695e57fdc0b9_4
L695e57fdc0b9_3:
    subs x13, x15, #3
    b.vs L695e57fdc0b9_c2
    movz x10, #32768, lsl #48
    cmp x13, x10
    cset w7, eq
    mov x10, #0
    and w7, w7, w10
    cbnz w7, L695e57fdc0b9_8
L695e57fdc0b9_9:
    movz x10, #32
    sdiv x13, x13, x10
    b L695e57fdc0b9_5
L695e57fdc0b9_4:
    mov x13, #0
L695e57fdc0b9_5:
    sub x11, x29, #104
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    and x7, x12, #4294967295
    lsr x12, x12, #32
    adrp x6, _lb_20luce_std_math_tables_11two_over_pi@PAGE
    add x6, x6, _lb_20luce_std_math_tables_11two_over_pi@PAGEOFF
    mov x5, #0
L695e57fdc0b9_12:
    cmp x5, #8
    b.hs L695e57fdc0b9_15
    .p2align 4
L695e57fdc0b9_13:
    adds x4, x13, #8
    b.cs L695e57fdc0b9_c3
    sub x4, x4, #1
    subs x4, x4, x5
    b.cc L695e57fdc0b9_c4
    movz x10, #44
    cmp x4, x10
    b.hs L695e57fdc0b9_c5
    ldr w4, [x6, x4, lsl #2]
    mul x3, x4, x7
    mul x4, x4, x12
    sub x9, x29, #104
    add x2, x9, x5, lsl #3
    ldr x1, [x2]
    and x0, x3, #4294967295
    adds x1, x1, x0
    b.cs L695e57fdc0b9_c6
    str x1, [x2]
    add x1, x5, #1
    movz x10, #12
    cmp x1, x10
    b.hs L695e57fdc0b9_c7
    ldr x0, [x2, #8]
    lsr x3, x3, #32
    and x19, x4, #4294967295
    add x3, x3, x19
    adds x3, x3, x0
    b.cs L695e57fdc0b9_c8
    str x3, [x2, #8]
    add x5, x5, #2
    movz x10, #12
    cmp x5, x10
    b.hs L695e57fdc0b9_c9
    ldr x5, [x2, #16]
    lsr x4, x4, #32
    adds x5, x4, x5
    b.cs L695e57fdc0b9_c10
    str x5, [x2, #16]
    mov x5, x1
    cmp x5, #8
    b.lo L695e57fdc0b9_13
L695e57fdc0b9_15:
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    mov x12, #0
    mov x7, #0
L695e57fdc0b9_20:
    cmp x7, #12
    b.ge L695e57fdc0b9_23
    .p2align 4
L695e57fdc0b9_21:
    movz x10, #12
    cmp x7, x10
    b.hs L695e57fdc0b9_c11
    sub x10, x29, #104
    ldr x6, [x10, x7, lsl #3]
    adds x12, x6, x12
    b.cs L695e57fdc0b9_c12
    sub x10, x29, #168
    str w12, [x10, x7, lsl #2]
    lsr x12, x12, #32
    add x7, x7, #1
    cmp x7, #12
    b.lt L695e57fdc0b9_21
L695e57fdc0b9_23:
    adds x12, x13, #8
    b.cs L695e57fdc0b9_c13
    movz x10, #32
    umulh x11, x12, x10
    lsl x12, x12, #5
    cbnz x11, L695e57fdc0b9_c14
    subs x15, x12, x15
    b.vs L695e57fdc0b9_c15
    lsr x12, x15, #5
    and x13, x15, #31
    movz x10, #16
    cmp x12, x10
    b.hs L695e57fdc0b9_c16
    sub x9, x29, #168
    add x7, x9, x12, lsl #2
    ldr w6, [x7]
    add x5, x12, #1
    movz x10, #16
    cmp x5, x10
    b.hs L695e57fdc0b9_c17
    ldr w7, [x7, #4]
    lsl x7, x7, #32
    orr x7, x7, x6
    cmp x13, #0
    b.ne L695e57fdc0b9_65
L695e57fdc0b9_64:
    b L695e57fdc0b9_75
L695e57fdc0b9_65:
    add x6, x12, #2
    movz x10, #16
    cmp x6, x10
    b.hs L695e57fdc0b9_c18
    sub x10, x29, #168
    ldr w6, [x10, x6, lsl #2]
    add x12, x12, #3
    movz x10, #16
    cmp x12, x10
    b.hs L695e57fdc0b9_c19
    sub x10, x29, #168
    ldr w12, [x10, x12, lsl #2]
    lsl x12, x12, #32
    orr x12, x12, x6
    lsr x7, x7, x13
    movz x9, #64
    sub x13, x9, x13
    cmp x13, #64
    b.hs L695e57fdc0b9_72
L695e57fdc0b9_73:
    lsl x12, x12, x13
    orr x7, x12, x7
L695e57fdc0b9_75:
    and x12, x7, #7
    subs x13, x15, #64
    b.cc L695e57fdc0b9_c20
    lsr x7, x13, #5
    and x13, x13, #31
    movz x10, #16
    cmp x7, x10
    b.hs L695e57fdc0b9_c21
    sub x9, x29, #168
    add x6, x9, x7, lsl #2
    ldr w5, [x6]
    add x4, x7, #1
    movz x10, #16
    cmp x4, x10
    b.hs L695e57fdc0b9_c22
    ldr w6, [x6, #4]
    lsl x6, x6, #32
    orr x6, x6, x5
    cmp x13, #0
    b.ne L695e57fdc0b9_83
L695e57fdc0b9_82:
    b L695e57fdc0b9_93
L695e57fdc0b9_83:
    add x5, x7, #2
    movz x10, #16
    cmp x5, x10
    b.hs L695e57fdc0b9_c23
    sub x10, x29, #168
    ldr w5, [x10, x5, lsl #2]
    add x7, x7, #3
    movz x10, #16
    cmp x7, x10
    b.hs L695e57fdc0b9_c24
    sub x10, x29, #168
    ldr w7, [x10, x7, lsl #2]
    lsl x7, x7, #32
    orr x7, x7, x5
    lsr x6, x6, x13
    movz x9, #64
    sub x13, x9, x13
    cmp x13, #64
    b.hs L695e57fdc0b9_90
L695e57fdc0b9_91:
    lsl x13, x7, x13
    orr x6, x13, x6
L695e57fdc0b9_93:
    subs x13, x15, #128
    b.cc L695e57fdc0b9_c25
    lsr x7, x13, #5
    and x13, x13, #31
    movz x10, #16
    cmp x7, x10
    b.hs L695e57fdc0b9_c26
    sub x9, x29, #168
    add x5, x9, x7, lsl #2
    ldr w4, [x5]
    add x3, x7, #1
    movz x10, #16
    cmp x3, x10
    b.hs L695e57fdc0b9_c27
    ldr w5, [x5, #4]
    lsl x5, x5, #32
    orr x5, x5, x4
    cmp x13, #0
    b.ne L695e57fdc0b9_101
L695e57fdc0b9_100:
    b L695e57fdc0b9_111
L695e57fdc0b9_101:
    add x4, x7, #2
    movz x10, #16
    cmp x4, x10
    b.hs L695e57fdc0b9_c28
    sub x10, x29, #168
    ldr w4, [x10, x4, lsl #2]
    add x7, x7, #3
    movz x10, #16
    cmp x7, x10
    b.hs L695e57fdc0b9_c29
    sub x10, x29, #168
    ldr w7, [x10, x7, lsl #2]
    lsl x7, x7, #32
    orr x7, x7, x4
    lsr x5, x5, x13
    movz x9, #64
    sub x13, x9, x13
    cmp x13, #64
    b.hs L695e57fdc0b9_108
L695e57fdc0b9_109:
    lsl x13, x7, x13
    orr x5, x13, x5
L695e57fdc0b9_111:
    subs x15, x15, #192
    b.cc L695e57fdc0b9_c30
    lsr x13, x15, #5
    and x15, x15, #31
    movz x10, #16
    cmp x13, x10
    b.hs L695e57fdc0b9_c31
    sub x9, x29, #168
    add x7, x9, x13, lsl #2
    ldr w4, [x7]
    add x3, x13, #1
    movz x10, #16
    cmp x3, x10
    b.hs L695e57fdc0b9_c32
    ldr w7, [x7, #4]
    lsl x7, x7, #32
    orr x7, x7, x4
    cmp x15, #0
    b.ne L695e57fdc0b9_119
L695e57fdc0b9_118:
    b L695e57fdc0b9_129
L695e57fdc0b9_119:
    add x4, x13, #2
    movz x10, #16
    cmp x4, x10
    b.hs L695e57fdc0b9_c33
    sub x10, x29, #168
    ldr w4, [x10, x4, lsl #2]
    add x13, x13, #3
    movz x10, #16
    cmp x13, x10
    b.hs L695e57fdc0b9_c34
    sub x10, x29, #168
    ldr w13, [x10, x13, lsl #2]
    lsl x13, x13, #32
    orr x13, x13, x4
    lsr x7, x7, x15
    movz x9, #64
    sub x15, x9, x15
    cmp x15, #64
    b.hs L695e57fdc0b9_126
L695e57fdc0b9_127:
    lsl x15, x13, x15
    orr x7, x15, x7
L695e57fdc0b9_129:
    lsr x15, x6, #11
    ucvtf d24, x15
    ldr d25, L695e57fdc0b9_k0
    fmul d24, d24, d25
    and x15, x6, #2047
    ucvtf d25, x15
    ldr d26, L695e57fdc0b9_k1
    fmul d25, d25, d26
    lsr x15, x5, #11
    ucvtf d26, x15
    ldr d27, L695e57fdc0b9_k2
    fmul d26, d26, d27
    and x15, x5, #2047
    ucvtf d27, x15
    ldr d28, L695e57fdc0b9_k3
    fmul d27, d27, d28
    lsr x15, x7, #11
    ucvtf d28, x15
    ldr d29, L695e57fdc0b9_k4
    fmul d28, d28, d29
    str d24, [sp, #128]
    str d25, [sp, #136]
    str d26, [sp, #144]
    str d27, [sp, #152]
    str d28, [sp, #160]
    fmov d24, xzr
    fmov d25, d24
    mov x15, #0
L695e57fdc0b9_32:
    cmp x15, #5
    b.hs L695e57fdc0b9_35
    .p2align 4
L695e57fdc0b9_33:
    sub x10, x29, #48
    ldr d26, [x10, x15, lsl #3]
    fadd d27, d26, d25
    fsub d28, d27, d25
    fsub d29, d27, d28
    fsub d25, d25, d29
    fsub d26, d26, d28
    fadd d25, d25, d26
    fadd d24, d25, d24
    add x15, x15, #1
    fmov d25, d27
    cmp x15, #5
    b.lo L695e57fdc0b9_33
L695e57fdc0b9_35:
    lsr x15, x6, #63
    cmp x15, #1
    b.ne L695e57fdc0b9_37
L695e57fdc0b9_36:
    adds x15, x12, #1
    b.vs L695e57fdc0b9_c35
    fmov d26, #-1.0000000
    fadd d27, d26, d25
    fsub d28, d27, d25
    fsub d29, d27, d28
    fsub d25, d25, d29
    fsub d26, d26, d28
    fadd d25, d25, d26
    fadd d24, d25, d24
    b L695e57fdc0b9_38
L695e57fdc0b9_37:
    mov x15, x12
    fmov d27, d25
L695e57fdc0b9_38:
    ldr d25, L695e57fdc0b9_k5
    ldr d26, L695e57fdc0b9_k6
    fmul d28, d25, d27
    fneg d29, d28
    fmadd d29, d27, d25, d29
    fmul d26, d26, d27
    fmul d24, d25, d24
    fadd d24, d26, d24
    fadd d24, d24, d29
    fadd d25, d24, d28
    fsub d26, d25, d28
    fsub d24, d24, d26
    lsr x14, x14, #63
    cmp x14, #1
    b.ne L695e57fdc0b9_42
L695e57fdc0b9_41:
    mov x9, #0
    subs x14, x9, x15
    b.vs L695e57fdc0b9_c36
    fneg d25, d25
    fneg d24, d24
    fmov d0, d25
    fmov d1, d24
    mov x0, x14
    ldr x19, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L695e57fdc0b9_42:
    fmov d0, d25
    fmov d1, d24
    mov x0, x15
    ldr x19, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L695e57fdc0b9_8:
    adrp x0, _lb_text_93ae29cf747a@PAGE
    add x0, x0, _lb_text_93ae29cf747a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_72:
    adrp x0, _lb_text_66c4753f8ca9@PAGE
    add x0, x0, _lb_text_66c4753f8ca9@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_90:
    adrp x0, _lb_text_66c4753f8ca9@PAGE
    add x0, x0, _lb_text_66c4753f8ca9@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_108:
    adrp x0, _lb_text_66c4753f8ca9@PAGE
    add x0, x0, _lb_text_66c4753f8ca9@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_126:
    adrp x0, _lb_text_66c4753f8ca9@PAGE
    add x0, x0, _lb_text_66c4753f8ca9@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c1:
    adrp x0, _lb_text_ffd1c113d976@PAGE
    add x0, x0, _lb_text_ffd1c113d976@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c2:
    adrp x0, _lb_text_93ae29cf747a@PAGE
    add x0, x0, _lb_text_93ae29cf747a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c3:
    adrp x0, _lb_text_4cd8b09e9f88@PAGE
    add x0, x0, _lb_text_4cd8b09e9f88@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c4:
    adrp x0, _lb_text_4cd8b09e9f88@PAGE
    add x0, x0, _lb_text_4cd8b09e9f88@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c5:
    adrp x0, _lb_text_4cd8b09e9f88@PAGE
    add x0, x0, _lb_text_4cd8b09e9f88@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c6:
    adrp x0, _lb_text_3f54c74d6cef@PAGE
    add x0, x0, _lb_text_3f54c74d6cef@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c7:
    adrp x0, _lb_text_27f8e0f490d2@PAGE
    add x0, x0, _lb_text_27f8e0f490d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c8:
    adrp x0, _lb_text_27f8e0f490d2@PAGE
    add x0, x0, _lb_text_27f8e0f490d2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c9:
    adrp x0, _lb_text_156560a9cd41@PAGE
    add x0, x0, _lb_text_156560a9cd41@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c10:
    adrp x0, _lb_text_156560a9cd41@PAGE
    add x0, x0, _lb_text_156560a9cd41@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c11:
    adrp x0, _lb_text_4fed489f3a76@PAGE
    add x0, x0, _lb_text_4fed489f3a76@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c12:
    adrp x0, _lb_text_4fed489f3a76@PAGE
    add x0, x0, _lb_text_4fed489f3a76@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c13:
    adrp x0, _lb_text_cda0a83a77c5@PAGE
    add x0, x0, _lb_text_cda0a83a77c5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c14:
    adrp x0, _lb_text_cda0a83a77c5@PAGE
    add x0, x0, _lb_text_cda0a83a77c5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c15:
    adrp x0, _lb_text_cda0a83a77c5@PAGE
    add x0, x0, _lb_text_cda0a83a77c5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c16:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c17:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c18:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c19:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c20:
    adrp x0, _lb_text_10428001c132@PAGE
    add x0, x0, _lb_text_10428001c132@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c21:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c22:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c23:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c24:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c25:
    adrp x0, _lb_text_aaff6185468d@PAGE
    add x0, x0, _lb_text_aaff6185468d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c26:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c27:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c28:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c29:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c30:
    adrp x0, _lb_text_1c1f74d2cba6@PAGE
    add x0, x0, _lb_text_1c1f74d2cba6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c31:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c32:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c33:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c34:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c35:
    adrp x0, _lb_text_f86d9cb4a002@PAGE
    add x0, x0, _lb_text_f86d9cb4a002@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L695e57fdc0b9_c36:
    adrp x0, _lb_text_bdf6ba15440c@PAGE
    add x0, x0, _lb_text_bdf6ba15440c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L695e57fdc0b9_k0:
    .quad 4368491638549381120
L695e57fdc0b9_k1:
    .quad 4318952042648305664
L695e57fdc0b9_k2:
    .quad 4080261262397669376
L695e57fdc0b9_k3:
    .quad 4030721666496593920
L695e57fdc0b9_k4:
    .quad 3792030886245957632
L695e57fdc0b9_k5:
    .quad 4609753056924675352
L695e57fdc0b9_k6:
    .quad 4364452196894661639


    .p2align 2
    .globl _lb_13luce_std_math_7bits_at
_lb_13luce_std_math_7bits_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    mov x14, x2
    lsr x15, x14, #5
    and x14, x14, #31
    ldr x12, [sp, #16]
    ldr x13, [sp, #24]
    cmp x15, x13
    b.hs L20068a30e59a_c1
    add x7, x12, x15, lsl #2
    ldr w6, [x7]
    add x5, x15, #1
    cmp x5, x13
    b.hs L20068a30e59a_c2
    ldr w7, [x7, #4]
    lsl x7, x7, #32
    orr x7, x7, x6
    cmp x14, #0
    b.ne L20068a30e59a_8
L20068a30e59a_7:
    mov x0, x7
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20068a30e59a_8:
    add x6, x15, #2
    cmp x6, x13
    b.hs L20068a30e59a_c3
    ldr w6, [x12, x6, lsl #2]
    add x15, x15, #3
    cmp x15, x13
    b.hs L20068a30e59a_c4
    ldr w15, [x12, x15, lsl #2]
    lsl x15, x15, #32
    orr x15, x15, x6
    lsr x12, x7, x14
    movz x9, #64
    sub x14, x9, x14
    cmp x14, #64
    b.hs L20068a30e59a_15
L20068a30e59a_16:
    lsl x14, x15, x14
    orr x14, x14, x12
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20068a30e59a_15:
    adrp x0, _lb_text_66c4753f8ca9@PAGE
    add x0, x0, _lb_text_66c4753f8ca9@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L20068a30e59a_c1:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L20068a30e59a_c2:
    adrp x0, _lb_text_a44c807b3cd5@PAGE
    add x0, x0, _lb_text_a44c807b3cd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L20068a30e59a_c3:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L20068a30e59a_c4:
    adrp x0, _lb_text_37e4613fbb3e@PAGE
    add x0, x0, _lb_text_37e4613fbb3e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_8
_lb_test_8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #216]
    str d8, [sp, #208]
    str d9, [sp, #200]
    str d10, [sp, #192]
    str d11, [sp, #184]
    str d12, [sp, #176]
    ldr d8, L28b99346a436_k0
    fmov d24, #10.0000000
    adrp x14, _lb_10film_print_14lad_below_grey@PAGE
    add x14, x14, _lb_10film_print_14lad_below_grey@PAGEOFF
    ldr d25, [x14]
    fneg d25, d25
    adrp x14, _lb_10film_print_14negative_gamma@PAGE
    add x14, x14, _lb_10film_print_14negative_gamma@PAGEOFF
    ldr d26, [x14]
    fdiv d25, d25, d26
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d24, d8
    str d24, [sp, #152]
    str d24, [sp, #160]
    str d24, [sp, #168]
    fmov d8, xzr
    sub x9, x29, #72
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr d27, L28b99346a436_k1
    fcmp d25, d27
    b.le L28b99346a436_2
L28b99346a436_3:
    ldr d27, L28b99346a436_k2
    fcmp d25, d27
    b.mi L28b99346a436_1
L28b99346a436_2:
    mov x9, #0
    str x9, [sp, #136]
    mov x9, #0
    str x9, [sp, #144]
    adrp x14, _lb_text_34d903ed04c0@PAGE
    add x14, x14, _lb_text_34d903ed04c0@PAGEOFF
    adrp x15, _lb_text_af61b4d7820b@PAGE
    add x15, x15, _lb_text_af61b4d7820b@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #88
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28b99346a436_1:
    fadd d27, d24, d25
    fadd d26, d27, d26
    fdiv d24, d24, d26
    fdiv d25, d25, d26
    ldr d26, L28b99346a436_k3
    fsub d24, d24, d26
    fabs d24, d24
    ldr d9, L28b99346a436_k4
    fcmp d24, d9
    b.pl L28b99346a436_6
L28b99346a436_7:
    ldr d24, L28b99346a436_k5
    fsub d24, d25, d24
    fabs d24, d24
    fcmp d24, d9
    b.mi L28b99346a436_5
L28b99346a436_6:
    mov x9, #0
    str x9, [sp, #120]
    mov x9, #0
    str x9, [sp, #128]
    adrp x14, _lb_text_34c7ee19d4dc@PAGE
    add x14, x14, _lb_text_34c7ee19d4dc@PAGEOFF
    adrp x15, _lb_text_0001875397e9@PAGE
    add x15, x15, _lb_text_0001875397e9@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #104
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28b99346a436_5:
    fmov d24, #20.0000000
    str d24, [sp, #96]
    str d24, [sp, #104]
    str d24, [sp, #112]
    sub x9, x29, #128
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr d24, L28b99346a436_k6
    fcmp d25, d24
    b.gt L28b99346a436_9
L28b99346a436_10:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_826df4e3b1c7@PAGE
    add x14, x14, _lb_text_826df4e3b1c7@PAGEOFF
    adrp x15, _lb_text_42a9a1fb0c94@PAGE
    add x15, x15, _lb_text_42a9a1fb0c94@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #144
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28b99346a436_9:
    ldr d10, L28b99346a436_k7
    str d10, [sp, #56]
    str d10, [sp, #64]
    str d10, [sp, #72]
    sub x9, x29, #168
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fcmp d25, d9
    b.mi L28b99346a436_12
L28b99346a436_13:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_3824cd4cf081@PAGE
    add x14, x14, _lb_text_3824cd4cf081@PAGEOFF
    adrp x15, _lb_text_e92595b6d44d@PAGE
    add x15, x15, _lb_text_e92595b6d44d@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #184
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28b99346a436_12:
    fmov d24, #-1.0000000
    fmov d9, #0.5000000
    ldr d11, L28b99346a436_k8
    fmov d12, d24
    mov x19, #0
L28b99346a436_15:
    cmp x19, #30
    b.hs L28b99346a436_18
    .p2align 4
L28b99346a436_16:
    ucvtf d24, x19
    fmul d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d24, d0
    fmul d24, d10, d24
    str d24, [sp, #16]
    str d24, [sp, #24]
    str d24, [sp, #32]
    sub x9, x29, #208
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fsub d24, d12, d11
    fcmp d25, d24
    b.ge L28b99346a436_19
L28b99346a436_20:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_b91090519714@PAGE
    add x14, x14, _lb_text_b91090519714@PAGEOFF
    adrp x15, _lb_text_b3f319ab1d88@PAGE
    add x15, x15, _lb_text_b3f319ab1d88@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #224
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28b99346a436_19:
    add x19, x19, #1
    fmov d12, d25
    cmp x19, #30
    b.lo L28b99346a436_16
L28b99346a436_18:
    mov x0, #0
    ldr x19, [sp, #216]
    ldr d8, [sp, #208]
    ldr d9, [sp, #200]
    ldr d10, [sp, #192]
    ldr d11, [sp, #184]
    ldr d12, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L28b99346a436_k0:
    .quad 4595653203753948938
L28b99346a436_k1:
    .quad 4591149604126578442
L28b99346a436_k2:
    .quad 4593851763903000740
L28b99346a436_k3:
    .quad 4599304722331820936
L28b99346a436_k4:
    .quad 4576918229304087675
L28b99346a436_k5:
    .quad 4599598357027525493
L28b99346a436_k6:
    .quad 4605380978949069210
L28b99346a436_k7:
    .quad 4557750909289998844
L28b99346a436_k8:
    .quad 4547007122018943789


    .p2align 2
    .globl _lb_10film_print_projected
_lb_10film_print_projected:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #216]
    str x20, [sp, #208]
    str x21, [sp, #200]
    str x22, [sp, #192]
    str x23, [sp, #184]
    str x24, [sp, #176]
    str x25, [sp, #168]
    str x26, [sp, #160]
    str x27, [sp, #152]
    str d8, [sp, #144]
    str d9, [sp, #136]
    str d10, [sp, #128]
    str d11, [sp, #120]
    str d12, [sp, #112]
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    fmov d8, d3
    mov x19, x0
    adrp x14, _lb_10film_print_10built_once@PAGE
    add x14, x14, _lb_10film_print_10built_once@PAGEOFF
    adrp x15, _lb_10film_print_11build_model@GOTPAGE
    ldr x15, [x15, _lb_10film_print_11build_model@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_10film_print_built@PAGE
    add x14, x14, _lb_10film_print_built@PAGEOFF
    ldr x14, [x14]
    cbz x14, L8298a7b3a765_2
L8298a7b3a765_1:
    b L8298a7b3a765_3
L8298a7b3a765_2:
    adrp x14, _lb_text_db01e8faf96c@PAGE
    add x14, x14, _lb_text_db01e8faf96c@PAGEOFF
    str x14, [sp, #40]
    movz x9, #29
    str x9, [sp, #48]
    adrp x14, _lb_text_6edd15089fdd@PAGE
    add x14, x14, _lb_text_6edd15089fdd@PAGEOFF
    mov x0, x14
    sub x9, x29, #184
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, _lb_text_6edd15089fdd@PAGE
    add x0, x0, _lb_text_6edd15089fdd@PAGEOFF
    adrp x1, _lb_text_82fae1890416@PAGE
    add x1, x1, _lb_text_82fae1890416@PAGEOFF
    bl _lb_core_7trap_at
L8298a7b3a765_3:
    cmp x19, #1
    b.ne L8298a7b3a765_5
L8298a7b3a765_4:
    adrp x14, _lb_10film_print_17dye_transfer_once@PAGE
    add x14, x14, _lb_10film_print_17dye_transfer_once@PAGEOFF
    adrp x15, _lb_10film_print_18build_dye_transfer@GOTPAGE
    ldr x15, [x15, _lb_10film_print_18build_dye_transfer@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_10film_print_12dye_transfer@PAGE
    add x14, x14, _lb_10film_print_12dye_transfer@PAGEOFF
    ldr x14, [x14]
    cbz x14, L8298a7b3a765_8
L8298a7b3a765_7:
    b L8298a7b3a765_9
L8298a7b3a765_8:
    adrp x14, _lb_text_d292728fd2b4@PAGE
    add x14, x14, _lb_text_d292728fd2b4@PAGEOFF
    str x14, [sp, #24]
    movz x9, #36
    str x9, [sp, #32]
    adrp x14, _lb_text_fd32fe38bd61@PAGE
    add x14, x14, _lb_text_fd32fe38bd61@PAGEOFF
    mov x0, x14
    sub x9, x29, #200
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, _lb_text_fd32fe38bd61@PAGE
    add x0, x0, _lb_text_fd32fe38bd61@PAGEOFF
    adrp x1, _lb_text_82fae1890416@PAGE
    add x1, x1, _lb_text_82fae1890416@PAGEOFF
    bl _lb_core_7trap_at
L8298a7b3a765_9:
    mov x19, x14
    b L8298a7b3a765_6
L8298a7b3a765_5:
    mov x19, x14
L8298a7b3a765_6:
    sub x11, x29, #224
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x20, _lb_10film_print_14negative_gamma@PAGE
    add x20, x20, _lb_10film_print_14negative_gamma@PAGEOFF
    ldr d9, L8298a7b3a765_k0
    ldr d10, L8298a7b3a765_k1
    movz x10, #28896
    add x21, x19, x10
    fmov x22, d9
    and x14, x22, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w23, hi
    fmov d11, xzr
    fcmp d9, d11
    cset w24, eq
    mov x25, #0
L8298a7b3a765_10:
    cmp x25, #3
    b.hs L8298a7b3a765_13
    .p2align 4
L8298a7b3a765_11:
    ldr d12, [x20]
    lsl x26, x25, #3
    sub x10, x29, #136
    ldr d24, [x10, x26]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8298a7b3a765_18
L8298a7b3a765_17:
    b L8298a7b3a765_38
L8298a7b3a765_18:
L8298a7b3a765_19:
L8298a7b3a765_37:
    cbz w23, L8298a7b3a765_22
L8298a7b3a765_21:
    fmov d24, d9
    b L8298a7b3a765_38
L8298a7b3a765_22:
L8298a7b3a765_23:
    fcmp d24, d11
    b.ne L8298a7b3a765_26
L8298a7b3a765_28:
    cbz w24, L8298a7b3a765_26
L8298a7b3a765_25:
    and x14, x14, x22
    fmov d24, x14
    b L8298a7b3a765_38
L8298a7b3a765_26:
L8298a7b3a765_27:
    fcmp d24, d9
    fcsel d24, d24, d9, gt
L8298a7b3a765_38:
    fdiv d24, d24, d10
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fmul d24, d12, d24
    sub x9, x29, #224
    add x27, x9, x26
    ldr d25, [x21, x26]
    fsub d24, d25, d24
    fmov d0, d24
    mov x0, x19
    mov x1, x25
    bl _lb_10film_print_PrintModel_amount
    fmov d24, d0
    str d24, [x27]
    add x25, x25, #1
    cmp x25, #3
    b.lo L8298a7b3a765_11
L8298a7b3a765_13:
    adrp x14, _lb_10film_print_20print_silver_density@PAGE
    add x14, x14, _lb_10film_print_20print_silver_density@PAGEOFF
    ldr d24, [x14]
    fmul d24, d24, d8
    ldr d25, [sp, #0]
    ldr d26, [sp, #8]
    fadd d25, d25, d26
    ldr d26, [sp, #16]
    fadd d25, d25, d26
    fmov d26, #3.0000000
    fdiv d25, d25, d26
    fmov d26, xzr
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8298a7b3a765_40
L8298a7b3a765_39:
    b L8298a7b3a765_60
L8298a7b3a765_40:
L8298a7b3a765_41:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8298a7b3a765_44
L8298a7b3a765_43:
    fmov d25, d26
    b L8298a7b3a765_60
L8298a7b3a765_44:
L8298a7b3a765_45:
    fcmp d25, d26
    b.ne L8298a7b3a765_48
L8298a7b3a765_50:
    fcmp d26, d26
    b.ne L8298a7b3a765_48
L8298a7b3a765_47:
    and x14, x14, x15
    fmov d25, x14
    b L8298a7b3a765_60
L8298a7b3a765_48:
L8298a7b3a765_49:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L8298a7b3a765_60:
    fmul d24, d24, d25
    sub x9, x29, #224
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d24
    mov x0, x19
    bl _lb_10film_print_seen
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    ldr x23, [sp, #184]
    ldr x24, [sp, #176]
    ldr x25, [sp, #168]
    ldr x26, [sp, #160]
    ldr x27, [sp, #152]
    ldr d8, [sp, #144]
    ldr d9, [sp, #136]
    ldr d10, [sp, #128]
    ldr d11, [sp, #120]
    ldr d12, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8298a7b3a765_k0:
    .quad 4517329193108106637
L8298a7b3a765_k1:
    .quad 4595653203753948938


    .p2align 2
    .globl _lb_10film_print_18build_dye_transfer
_lb_10film_print_18build_dye_transfer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4304
    sub sp, sp, x16
    str x19, [sp, #4296]
    adrp x19, _lb_10film_print_12dye_transfer@PAGE
    add x19, x19, _lb_10film_print_12dye_transfer@PAGEOFF
    movz x16, #4296
    sub x8, x29, x16
    bl _lb_10film_print_18dye_transfer_stock
    adrp x14, _lb_10film_print_16projector_kelvin@PAGE
    add x14, x14, _lb_10film_print_16projector_kelvin@PAGEOFF
    ldr d24, [x14]
    fmov d25, #-1.5000000
    fmov d26, #3.5000000
    fmov d27, #-1.0000000
    adrp x14, _lb_10film_print_15projector_flare@PAGE
    add x14, x14, _lb_10film_print_15projector_flare@PAGEOFF
    ldr d28, [x14]
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    fmov d3, d27
    fmov d4, d28
    movz x16, #4296
    sub x9, x29, x16
    mov x0, x9
    mov x1, #0
    bl _lb_10film_print_make
    mov x14, x0
    str x14, [x19]
    ldr x19, [sp, #4296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_10exp2_value
_lb_13luce_std_math_10exp2_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    ldr d25, L69031180998b_k0
    fcmp d24, d25
    b.le L69031180998b_2
L69031180998b_4:
    ldr d25, L69031180998b_k1
    fcmp d24, d25
    b.pl L69031180998b_2
L69031180998b_1:
    ldr d25, L69031180998b_k2
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L69031180998b_k3
    fmul d26, d25, d26
    fsub d26, d24, d26
    ldr d27, L69031180998b_k4
    fmul d28, d26, d27
    fneg d29, d28
    fmadd d27, d26, d27, d29
    ldr d29, L69031180998b_k5
    fmul d26, d26, d29
    fadd d26, d27, d26
    fcvtzs x14, d25
    and x15, x14, #127
    adrp x12, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d25, x12
    adrp x12, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d27, x15
    fmul d29, d28, d25
    fneg d30, d29
    fmadd d30, d25, d28, d30
    fadd d31, d25, d29
    fsub d19, d31, d25
    fsub d29, d29, d19
    fadd d29, d30, d29
    fmul d30, d28, d28
    ldr d19, L69031180998b_k6
    fmov d20, #0.5000000
    fmadd d19, d28, d19, d20
    ldr d20, L69031180998b_k7
    ldr d21, L69031180998b_k8
    fmadd d20, d28, d20, d21
    ldr d21, L69031180998b_k9
    ldr d22, L69031180998b_k10
    fmadd d21, d28, d21, d22
    fmadd d20, d30, d21, d20
    fmadd d19, d30, d20, d19
    fmul d30, d30, d19
    fadd d26, d26, d30
    fmul d25, d25, d26
    fmul d26, d28, d27
    fadd d25, d25, d26
    fadd d25, d27, d25
    fadd d25, d25, d29
    ldr d26, L69031180998b_k11
    fsub d27, d25, d26
    fadd d27, d31, d27
    fadd d26, d25, d26
    fadd d26, d31, d26
    fcmp d27, d26
    b.ne L69031180998b_6
L69031180998b_5:
    fadd d24, d25, d31
    asr x14, x14, #7
    adds x14, x14, #1023
    b.vs L69031180998b_c1
    lsl x14, x14, #52
    fmov d25, x14
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69031180998b_6:
L69031180998b_2:
L69031180998b_3:
    fmov d0, d24
    bl _lb_13luce_std_math_13exp2_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L69031180998b_c1:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L69031180998b_k0:
    .quad 13875572859742453760
L69031180998b_k1:
    .quad 4652218415073722368
L69031180998b_k2:
    .quad 4638707616191610880
L69031180998b_k3:
    .quad 4575657221408423936
L69031180998b_k4:
    .quad 4604418534313441775
L69031180998b_k5:
    .quad 4358002977218854975
L69031180998b_k6:
    .quad 4595172819793696085
L69031180998b_k7:
    .quad 4575957461383581969
L69031180998b_k8:
    .quad 4586165620538955093
L69031180998b_k9:
    .quad 4551452160554016794
L69031180998b_k10:
    .quad 4564047942368979991
L69031180998b_k11:
    .quad 4323455642275676160


    .p2align 2
    .globl _lb_10film_print_18dye_transfer_stock
_lb_10film_print_18dye_transfer_stock:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #12944
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #12928]
    str x20, [sp, #12920]
    str x21, [sp, #12912]
    str x22, [sp, #12904]
    str d8, [sp, #12896]
    str d9, [sp, #12888]
    str d10, [sp, #12880]
    str d11, [sp, #12872]
    movz x16, #4360
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_2383
    movz x16, #4360
    sub x10, x29, x16
    movz x16, #12936
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    adrp x14, _lb_text_9b32eab72378@PAGE
    add x14, x14, _lb_text_9b32eab72378@PAGEOFF
    str x14, [sp, #8]
    movz x9, #24
    str x9, [sp, #16]
    adrp x19, _lb_19luce_color_spectral_8first_nm@PAGE
    add x19, x19, _lb_19luce_color_spectral_8first_nm@PAGEOFF
    adrp x20, _lb_19luce_color_spectral_7step_nm@PAGE
    add x20, x20, _lb_19luce_color_spectral_7step_nm@PAGEOFF
    mov x21, #0
Lc06df64ac762_1:
    cmp x21, #81
    b.hs Lc06df64ac762_4
    .p2align 4
Lc06df64ac762_2:
    ldr d24, [x19]
    ldr d25, [x20]
    ucvtf d26, x21
    fmul d25, d25, d26
    fadd d8, d24, d25
    ldr d17, Lc06df64ac762_k0
    fsub d24, d8, d17
    fneg d24, d24
    fmov d17, #15.0000000
    fdiv d24, d24, d17
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fmov d17, #1.0000000
    fadd d24, d24, d17
    fmov d16, #1.0000000
    fdiv d9, d16, d24
    ldr d17, Lc06df64ac762_k1
    fsub d24, d8, d17
    fmov d17, #12.0000000
    fdiv d24, d24, d17
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fmov d17, #1.0000000
    fadd d24, d24, d17
    fmov d16, #1.0000000
    fdiv d10, d16, d24
    movz x16, #12920
    sub x9, x29, x16
    add x22, x9, x21, lsl #3
    fmov d0, d8
    ldr d1, Lc06df64ac762_k2
    ldr d2, Lc06df64ac762_k3
    bl _lb_10film_print_gaussian
    fmov d11, d0
    fmov d0, d8
    ldr d1, Lc06df64ac762_k4
    ldr d2, Lc06df64ac762_k5
    bl _lb_10film_print_gaussian
    fmov d24, d0
    ldr d16, Lc06df64ac762_k6
    fmul d24, d16, d24
    fadd d24, d11, d24
    ldr d17, Lc06df64ac762_k7
    fmul d25, d10, d17
    fadd d24, d24, d25
    str d24, [x22]
    add x14, x21, #81
    movz x10, #243
    cmp x14, x10
    b.hs Lc06df64ac762_c1
    fmov d0, d8
    ldr d1, Lc06df64ac762_k8
    ldr d2, Lc06df64ac762_k9
    bl _lb_10film_print_gaussian
    fmov d11, d0
    fmov d0, d8
    ldr d1, Lc06df64ac762_k10
    ldr d2, Lc06df64ac762_k11
    bl _lb_10film_print_gaussian
    fmov d24, d0
    ldr d16, Lc06df64ac762_k12
    fmul d24, d16, d24
    fadd d24, d11, d24
    fmov d17, #0.2500000
    fmul d25, d10, d17
    fadd d24, d24, d25
    str d24, [x22, #648]
    add x14, x21, #162
    movz x10, #243
    cmp x14, x10
    b.hs Lc06df64ac762_c2
    fmov d0, d8
    ldr d1, Lc06df64ac762_k13
    ldr d2, Lc06df64ac762_k14
    bl _lb_10film_print_gaussian
    fmov d24, d0
    ldr d17, Lc06df64ac762_k15
    fmul d25, d9, d17
    fadd d24, d24, d25
    str d24, [x22, #1296]
    add x21, x21, #1
    cmp x21, #81
    b.lo Lc06df64ac762_2
Lc06df64ac762_4:
    movz x14, #288
    movz x15, #1
    movz x12, #1
    and w15, w15, w12
    cbnz w15, Lc06df64ac762_17
Lc06df64ac762_22:
    mov x14, #0
    b Lc06df64ac762_21
Lc06df64ac762_17:
    ldr d16, Lc06df64ac762_k16
    dup v24.2d, v16.d[0]
    mov x15, #0
Lc06df64ac762_18:
    cmp x15, x14
    b.hs Lc06df64ac762_20
    .p2align 4
Lc06df64ac762_19:
    movz x16, #10952
    sub x9, x29, x16
    add x12, x9, x15, lsl #3
    ldr q25, [x12]
    fmul v25.2d, v25.2d, v24.2d
    movz x16, #10952
    sub x9, x29, x16
    add x12, x9, x15, lsl #3
    str q25, [x12]
    add x15, x15, #2
    cmp x15, x14
    b.lo Lc06df64ac762_19
Lc06df64ac762_20:
Lc06df64ac762_21:
Lc06df64ac762_5:
    cmp x14, #288
    b.hs Lc06df64ac762_8
    .p2align 4
Lc06df64ac762_6:
    movz x16, #10952
    sub x9, x29, x16
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    ldr d17, Lc06df64ac762_k16
    fmul d24, d24, d17
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #288
    b.lo Lc06df64ac762_6
Lc06df64ac762_8:
    movz x16, #12936
    sub x10, x29, x16
    movz x16, #8648
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    movz x16, #8648
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #4288
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #12928]
    ldr x20, [sp, #12920]
    ldr x21, [sp, #12912]
    ldr x22, [sp, #12904]
    ldr d8, [sp, #12896]
    ldr d9, [sp, #12888]
    ldr d10, [sp, #12880]
    ldr d11, [sp, #12872]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc06df64ac762_c1:
    adrp x0, _lb_text_2b46beda4b51@PAGE
    add x0, x0, _lb_text_2b46beda4b51@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc06df64ac762_c2:
    adrp x0, _lb_text_29da94b05e08@PAGE
    add x0, x0, _lb_text_29da94b05e08@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lc06df64ac762_k0:
    .quad 4648488871632306176
Lc06df64ac762_k1:
    .quad 4646272256190709760
Lc06df64ac762_k2:
    .quad 4649016637213638656
Lc06df64ac762_k3:
    .quad 4636033603912859648
Lc06df64ac762_k4:
    .quad 4649544402794971136
Lc06df64ac762_k5:
    .quad 4635329916471083008
Lc06df64ac762_k6:
    .quad 4605831338911806259
Lc06df64ac762_k7:
    .quad 4597094355634707497
Lc06df64ac762_k8:
    .quad 4647961106050973696
Lc06df64ac762_k9:
    .quad 4634626229029306368
Lc06df64ac762_k10:
    .quad 4648268969306750976
Lc06df64ac762_k11:
    .quad 4633641066610819072
Lc06df64ac762_k12:
    .quad 4605380978949069210
Lc06df64ac762_k13:
    .quad 4646800021772042240
Lc06df64ac762_k14:
    .quad 4637440978796412928
Lc06df64ac762_k15:
    .quad 4593311331947716280
Lc06df64ac762_k16:
    .quad 4607632778762754458


    .p2align 2
    .globl _lb_13luce_std_math_13exp2_accurate
_lb_13luce_std_math_13exp2_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    fmov d24, d0
    ldr d25, Lb15d48e65737_k0
    fcmp d24, d25
    b.mi Lb15d48e65737_2
Lb15d48e65737_1:
    fcmp d24, d24
    cset w14, ne
    fadd d24, d24, d24
    ldr d25, Lb15d48e65737_k1
    cmp w14, #0
    fcsel d24, d24, d25, ne
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb15d48e65737_2:
    ldr d25, Lb15d48e65737_k2
    fcmp d24, d25
    b.pl Lb15d48e65737_9
Lb15d48e65737_8:
    fmov d24, xzr
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb15d48e65737_9:
    ldr d25, Lb15d48e65737_k3
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    fcvtzs x14, d25
    ldr d26, Lb15d48e65737_k4
    ldr d27, Lb15d48e65737_k5
    ldr d28, Lb15d48e65737_k6
    fmul d25, d25, d28
    fsub d24, d24, d25
    fmul d25, d26, d24
    fneg d28, d25
    fmadd d26, d26, d24, d28
    fmul d24, d27, d24
    fadd d24, d24, d26
    fadd d26, d24, d25
    fsub d25, d26, d25
    fsub d24, d24, d25
    and x15, x14, #127
    adrp x12, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d25, x12
    adrp x12, _lb_13luce_std_math_16exp_coefficients@PAGE
    add x12, x12, _lb_13luce_std_math_16exp_coefficients@PAGEOFF
    sub x11, x29, #40
    ldp x16, x17, [x12, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x12, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x12, #32]
    str x16, [x11, #32]
    fmul d27, d26, d26
    ldr d28, [sp, #8]
    ldr d29, [sp, #16]
    ldr d30, [sp, #24]
    ldr d31, [sp, #32]
    ldr d19, [sp, #40]
    fmul d19, d26, d19
    fadd d31, d31, d19
    fmul d31, d26, d31
    fadd d30, d30, d31
    fmul d30, d26, d30
    fadd d29, d29, d30
    fmul d29, d26, d29
    fadd d28, d28, d29
    fmul d27, d27, d28
    fadd d24, d24, d27
    fadd d24, d24, d26
    adrp x12, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d26, x15
    fmul d24, d25, d24
    fadd d24, d26, d24
    asr x14, x14, #7
    fmov d0, d25
    fmov d1, d24
    mov x0, x14
    bl _lb_13luce_std_math_10scale_pair
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb15d48e65737_k0:
    .quad 4652218415073722368
Lb15d48e65737_k1:
    .quad 9218868437227405312
Lb15d48e65737_k2:
    .quad 13875836742533120000
Lb15d48e65737_k3:
    .quad 4638707616191610880
Lb15d48e65737_k4:
    .quad 4604418534313441775
Lb15d48e65737_k5:
    .quad 4358002977218854975
Lb15d48e65737_k6:
    .quad 4575657221408423936


    .p2align 2
    .globl _lb_10film_print_gaussian
_lb_10film_print_gaussian:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    ldr d27, L3ed01534996e_k0
    fdiv d26, d26, d27
    fsub d24, d24, d25
    fdiv d24, d24, d26
    fmov d25, #-0.5000000
    fmul d25, d24, d25
    fmul d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3ed01534996e_k0:
    .quad 4612484957001283430

.subsections_via_symbols
