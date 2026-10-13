    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_15luce_color_aces_9hue_gamut
_lb_15luce_color_aces_9hue_gamut:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #80]
    str d9, [sp, #72]
    str d10, [sp, #64]
    str d11, [sp, #56]
    str d12, [sp, #48]
    fmov d24, d0
    fmov d8, d1
    mov x14, x0
    fcvtzs x15, d24
    adds x15, x15, #1
    b.vs Ld0be8d2c8850_c1
    ldr x12, [x14, #24]
    adds x12, x15, x12
    b.vs Ld0be8d2c8850_c2
    ldr x13, [x14, #32]
    adds x13, x15, x13
    b.vs Ld0be8d2c8850_c3
    cmp x12, #0
    mov x11, #0
    csel x12, x12, x11, gt
    cmp x13, #361
    movz x11, #361
    csel x13, x13, x11, lt
    add x7, x14, #40
    .p2align 4
Ld0be8d2c8850_8:
    adds x6, x12, #1
    b.vs Ld0be8d2c8850_c4
    cmp x6, x13
    b.ge Ld0be8d2c8850_10
Ld0be8d2c8850_9:
    movz x10, #363
    cmp x15, x10
    b.hs Ld0be8d2c8850_c5
    ldr d25, [x7, x15, lsl #3]
    fcmp d24, d25
    cset w6, gt
    cmp w6, #0
    csel x12, x15, x12, ne
    cmp w6, #0
    csel x15, x13, x15, ne
    mov x13, x15
    adds x15, x12, x13
    b.vs Ld0be8d2c8850_c6
    movz x10, #32768, lsl #48
    cmp x15, x10
    cset w6, eq
    mov x10, #0
    and w6, w6, w10
    cbnz w6, Ld0be8d2c8850_16
Ld0be8d2c8850_17:
    movz x10, #2
    sdiv x15, x15, x10
    b Ld0be8d2c8850_8
Ld0be8d2c8850_10:
    cmp x13, #1
    movz x11, #1
    csel x15, x13, x11, gt
    subs x12, x15, #1
    b.cc Ld0be8d2c8850_c7
    add x13, x14, #40
    movz x10, #363
    cmp x12, x10
    b.hs Ld0be8d2c8850_c8
    ldr d25, [x13, x12, lsl #3]
    fsub d24, d24, d25
    movz x10, #363
    cmp x15, x10
    b.hs Ld0be8d2c8850_c9
    ldr d26, [x13, x15, lsl #3]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    add x12, x12, x12, lsl #1
    add x13, x14, #2944
    ldr d25, [x13, x12, lsl #3]
    add x15, x15, x15, lsl #1
    ldr d26, [x13, x15, lsl #3]
    fsub d26, d26, d25
    fmul d26, d24, d26
    fadd d9, d25, d26
    add x7, x12, #1
    movz x10, #1089
    cmp x7, x10
    b.hs Ld0be8d2c8850_c10
    ldr d25, [x13, x7, lsl #3]
    add x7, x15, #1
    movz x10, #1089
    cmp x7, x10
    b.hs Ld0be8d2c8850_c11
    ldr d26, [x13, x7, lsl #3]
    fsub d26, d26, d25
    fmul d26, d24, d26
    fadd d10, d25, d26
    add x12, x12, #2
    movz x10, #1089
    cmp x12, x10
    b.hs Ld0be8d2c8850_c12
    ldr d25, [x13, x12, lsl #3]
    add x15, x15, #2
    movz x10, #1089
    cmp x15, x10
    b.hs Ld0be8d2c8850_c13
    ldr d26, [x13, x15, lsl #3]
    fsub d26, d26, d25
    fmul d24, d24, d26
    fadd d11, d25, d24
    ldr d12, [x14, #16]
    ldr d24, [x14]
    fmov d0, d9
    fmov d1, d24
    fmov d2, d8
    bl _lb_15luce_color_aces_10focus_j_of
    fmov d24, d0
    adrp x14, _lb_15luce_color_aces_16focus_gain_blend@PAGE
    add x14, x14, _lb_15luce_color_aces_16focus_gain_blend@PAGEOFF
    ldr d25, [x14]
    fsub d26, d8, d9
    fmul d25, d25, d26
    fadd d25, d9, d25
    str d9, [sp, #0]
    str d10, [sp, #8]
    str d11, [sp, #16]
    str d12, [sp, #24]
    str d24, [sp, #32]
    str d25, [sp, #40]
    sub x1, x29, #96
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldp x16, x17, [x1, #32]
    stp x16, x17, [x0, #32]
    ldr d8, [sp, #80]
    ldr d9, [sp, #72]
    ldr d10, [sp, #64]
    ldr d11, [sp, #56]
    ldr d12, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0be8d2c8850_16:
    adrp x0, _lb_text_301ba2d4dba6@PAGE
    add x0, x0, _lb_text_301ba2d4dba6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c1:
    adrp x0, _lb_text_a0b73555f079@PAGE
    add x0, x0, _lb_text_a0b73555f079@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c2:
    adrp x0, _lb_text_904f2f818534@PAGE
    add x0, x0, _lb_text_904f2f818534@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c3:
    adrp x0, _lb_text_12ba0d92c279@PAGE
    add x0, x0, _lb_text_12ba0d92c279@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c4:
    adrp x0, _lb_text_d6df5a38c27b@PAGE
    add x0, x0, _lb_text_d6df5a38c27b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c5:
    adrp x0, _lb_text_06d7946d029c@PAGE
    add x0, x0, _lb_text_06d7946d029c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c6:
    adrp x0, _lb_text_301ba2d4dba6@PAGE
    add x0, x0, _lb_text_301ba2d4dba6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c7:
    adrp x0, _lb_text_6b335999e5a6@PAGE
    add x0, x0, _lb_text_6b335999e5a6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c8:
    adrp x0, _lb_text_6b335999e5a6@PAGE
    add x0, x0, _lb_text_6b335999e5a6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c9:
    adrp x0, _lb_text_6b335999e5a6@PAGE
    add x0, x0, _lb_text_6b335999e5a6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c10:
    adrp x0, _lb_text_68214f486455@PAGE
    add x0, x0, _lb_text_68214f486455@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c11:
    adrp x0, _lb_text_68214f486455@PAGE
    add x0, x0, _lb_text_68214f486455@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c12:
    adrp x0, _lb_text_097e866ebc1f@PAGE
    add x0, x0, _lb_text_097e866ebc1f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld0be8d2c8850_c13:
    adrp x0, _lb_text_097e866ebc1f@PAGE
    add x0, x0, _lb_text_097e866ebc1f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_compress
_lb_15luce_color_aces_compress:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #232]
    str x20, [sp, #224]
    str d8, [sp, #216]
    str d9, [sp, #208]
    str d10, [sp, #200]
    str d11, [sp, #192]
    str d12, [sp, #184]
    str d13, [sp, #176]
    str d14, [sp, #168]
    str d15, [sp, #160]
    sub x16, x29, #104
    str d0, [x16, #0]
    sub x16, x29, #104
    str d1, [x16, #8]
    sub x16, x29, #104
    str d2, [x16, #16]
    fmov d24, d3
    fmov d8, d4
    fmov d9, d5
    fmov d10, d6
    mov x14, x0
    mov x19, x1
    uxtb w20, w2
    ldr d25, [x19, #40]
    ldr d26, [x14, #8]
    fmov d0, d24
    fmov d1, d25
    fmov d2, d8
    fmov d3, d26
    bl _lb_15luce_color_aces_10focus_gain
    fmov d24, d0
    ldr d11, [sp, #136]
    ldr d12, [sp, #144]
    ldr d25, [x19, #32]
    fdiv d26, d12, d24
    fdiv d27, d26, d25
    fcmp d11, d25
    b.pl L083949e3a5a0_22
L083949e3a5a0_21:
    fmov d28, #1.0000000
    fsub d26, d28, d26
    fneg d28, d11
    fmov d29, #-2.0000000
    fmul d29, d28, d29
    fmul d30, d26, d26
    fmov d31, #4.0000000
    fmul d27, d31, d27
    fmul d27, d28, d27
    fsub d27, d30, d27
    fsqrt d27, d27
    fadd d26, d26, d27
    fdiv d26, d29, d26
    fmov d13, d26
    b L083949e3a5a0_30
L083949e3a5a0_22:
L083949e3a5a0_23:
    fmov d28, #1.0000000
    fadd d28, d28, d26
    fmul d29, d8, d27
    fadd d28, d28, d29
    fneg d28, d28
    fmul d26, d8, d26
    fadd d26, d26, d11
    fmov d29, #-2.0000000
    fmul d29, d26, d29
    fmul d30, d28, d28
    fmov d31, #4.0000000
    fmul d27, d31, d27
    fmul d26, d26, d27
    fsub d26, d30, d26
    fsqrt d26, d26
    fsub d26, d28, d26
    fdiv d13, d29, d26
L083949e3a5a0_30:
    fcmp d13, d25
    fsub d26, d8, d13
    fcsel d26, d13, d26, mi
    fsub d27, d13, d25
    fmul d26, d27, d26
    fmul d27, d25, d24
    fdiv d14, d26, d27
    ldr d26, [x19]
    ldr d27, [x19, #8]
    fdiv d24, d27, d24
    fdiv d28, d24, d25
    fcmp d26, d25
    b.pl L083949e3a5a0_37
L083949e3a5a0_36:
    fmov d25, #1.0000000
    fsub d24, d25, d24
    fneg d25, d26
    fmov d29, #-2.0000000
    fmul d29, d25, d29
    fmul d30, d24, d24
    fmov d31, #4.0000000
    fmul d28, d31, d28
    fmul d25, d25, d28
    fsub d25, d30, d25
    fsqrt d25, d25
    fadd d24, d24, d25
    fdiv d24, d29, d24
    b L083949e3a5a0_45
L083949e3a5a0_37:
L083949e3a5a0_38:
    fmov d25, #1.0000000
    fadd d25, d25, d24
    fmul d29, d8, d28
    fadd d25, d25, d29
    fneg d25, d25
    fmul d24, d8, d24
    fadd d24, d26, d24
    fmov d29, #-2.0000000
    fmul d29, d24, d29
    fmul d30, d25, d25
    fmov d31, #4.0000000
    fmul d28, d31, d28
    fmul d24, d24, d28
    fsub d24, d30, d24
    fsqrt d24, d24
    fsub d24, d25, d24
    fdiv d24, d29, d24
L083949e3a5a0_45:
    ldr d25, [x19, #16]
    ldr d28, [x19, #24]
    fmov d0, d26
    fmov d1, d27
    fmov d2, d8
    fmov d3, d25
    fmov d4, d28
    fmov d5, d13
    fmov d6, d14
    fmov d7, d24
    bl _lb_15luce_color_aces_10boundary_m
    fmov d15, d0
    fmov d24, xzr
    fcmp d15, d24
    b.hi L083949e3a5a0_2
L083949e3a5a0_1:
    ldr d25, [sp, #152]
    str d11, [sp, #0]
    str d24, [sp, #8]
    str d25, [sp, #16]
    sub x9, x29, #240
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr d8, [sp, #216]
    ldr d9, [sp, #208]
    ldr d10, [sp, #200]
    ldr d11, [sp, #192]
    ldr d12, [sp, #184]
    ldr d13, [sp, #176]
    ldr d14, [sp, #168]
    ldr d15, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L083949e3a5a0_2:
L083949e3a5a0_3:
    str d24, [sp, #128]
    fmov d0, d13
    fmov d1, d14
    fmov d2, d9
    fmov d3, d8
    fmov d4, d10
    fmov d5, d8
    bl _lb_15luce_color_aces_11line_hull_m
    fmov d25, d0
    ldr d24, [sp, #128]
    str w20, [sp, #112]
    fdiv d26, d15, d25
    adrp x14, _lb_15luce_color_aces_21compression_threshold@PAGE
    add x14, x14, _lb_15luce_color_aces_21compression_threshold@PAGEOFF
    ldr d27, [x14]
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L083949e3a5a0_47
L083949e3a5a0_46:
    b L083949e3a5a0_67
L083949e3a5a0_47:
L083949e3a5a0_48:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L083949e3a5a0_51
L083949e3a5a0_50:
    fmov d26, d27
    b L083949e3a5a0_67
L083949e3a5a0_51:
L083949e3a5a0_52:
    fcmp d26, d24
    b.ne L083949e3a5a0_55
L083949e3a5a0_57:
    fcmp d27, d24
    b.ne L083949e3a5a0_55
L083949e3a5a0_54:
    and x14, x14, x15
    fmov d26, x14
    b L083949e3a5a0_67
L083949e3a5a0_55:
L083949e3a5a0_56:
    fcmp d26, d27
    fcsel d26, d26, d27, gt
L083949e3a5a0_67:
    fmul d24, d15, d26
    fcmp d12, d24
    b.ls L083949e3a5a0_6
L083949e3a5a0_9:
    fmov d27, #1.0000000
    fcmp d26, d27
    b.lt L083949e3a5a0_7
L083949e3a5a0_6:
    b L083949e3a5a0_20
L083949e3a5a0_7:
L083949e3a5a0_8:
    fsub d26, d15, d24
    fsub d28, d25, d24
    fdiv d26, d28, d26
    fsub d26, d26, d27
    fdiv d26, d28, d26
    ldrb w14, [sp, #112]
    cbz w14, L083949e3a5a0_12
L083949e3a5a0_11:
    fsub d28, d12, d24
    fdiv d28, d28, d26
    fcmp d28, d27
    b.lt L083949e3a5a0_15
L083949e3a5a0_14:
    fmov d12, d25
    b L083949e3a5a0_20
L083949e3a5a0_15:
L083949e3a5a0_16:
    fmul d25, d26, d28
    fsub d26, d27, d28
    fdiv d25, d25, d26
    fadd d12, d25, d24
    b L083949e3a5a0_20
L083949e3a5a0_12:
L083949e3a5a0_13:
    fsub d25, d12, d24
    fdiv d25, d25, d26
    fmul d26, d25, d26
    fadd d25, d25, d27
    fdiv d25, d26, d25
    fadd d12, d25, d24
L083949e3a5a0_20:
    fmul d24, d14, d12
    fadd d24, d24, d13
    ldr d25, [sp, #152]
    str d24, [sp, #0]
    str d12, [sp, #8]
    str d25, [sp, #16]
    sub x9, x29, #240
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr d8, [sp, #216]
    ldr d9, [sp, #208]
    ldr d10, [sp, #200]
    ldr d11, [sp, #192]
    ldr d12, [sp, #184]
    ldr d13, [sp, #176]
    ldr d14, [sp, #168]
    ldr d15, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_13expand_signed
_lb_15luce_color_aces_13expand_signed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    fabs d24, d8
    fmov d0, d24
    bl _lb_15luce_color_aces_11expand_cone
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    fmov x15, d8
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_10cbrt_value
_lb_13luce_std_math_10cbrt_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    and x15, x14, #9223372036854775807
    cmp x15, #0
    b.eq L8d4d16b5b1f5_1
L8d4d16b5b1f5_4:
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.lo L8d4d16b5b1f5_2
L8d4d16b5b1f5_1:
    fadd d24, d24, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8d4d16b5b1f5_2:
    movz x10, #16, lsl #48
    cmp x15, x10
    cset w12, lo
    fmov d24, x15
    ldr d25, L8d4d16b5b1f5_k0
    fmul d24, d24, d25
    fmov x13, d24
    cmp w12, #0
    csel x15, x13, x15, ne
    cmp w12, #0
    movn x10, #17
    mov x11, #0
    csel x12, x10, x11, ne
    lsr x13, x15, #52
    movz x10, #43691
    mul x7, x13, x10
    lsr x7, x7, #17
    add x6, x7, x7, lsl #1
    subs x13, x13, x6
    b.cc L8d4d16b5b1f5_c1
    subs x7, x7, #341
    b.vs L8d4d16b5b1f5_c2
    adds x12, x7, x12
    b.vs L8d4d16b5b1f5_c3
    and x15, x15, #4503599627370495
    orr x15, x15, #4607182418800017408
    fmov d24, x15
    adds x15, x13, #1023
    b.cs L8d4d16b5b1f5_c4
    lsl x15, x15, #52
    fmov d25, x15
    fmul d25, d24, d25
    ldr d26, L8d4d16b5b1f5_k1
    ldr d27, L8d4d16b5b1f5_k2
    ldr d28, L8d4d16b5b1f5_k3
    ldr d29, L8d4d16b5b1f5_k4
    fmul d29, d24, d29
    fadd d28, d28, d29
    fmul d28, d24, d28
    fadd d27, d27, d28
    fmul d24, d24, d27
    fadd d24, d26, d24
    adrp x15, _lb_13luce_std_math_10cube_roots@PAGE
    add x15, x15, _lb_13luce_std_math_10cube_roots@PAGEOFF
    movz x10, #3
    cmp x13, x10
    b.hs L8d4d16b5b1f5_c5
    ldr d26, [x15, x13, lsl #3]
    fmul d24, d24, d26
    fmul d26, d24, d24
    fmul d26, d24, d26
    fmov d27, #2.0000000
    fmul d28, d25, d27
    fadd d28, d26, d28
    fmul d24, d24, d28
    fmul d26, d26, d27
    fadd d26, d25, d26
    fdiv d24, d24, d26
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d27, d24, d24, d27
    fmov d28, xzr
    fmul d29, d24, d26
    fneg d30, d29
    fmadd d30, d26, d24, d30
    fmul d28, d28, d26
    fmul d27, d24, d27
    fadd d27, d28, d27
    fadd d27, d27, d30
    fadd d28, d27, d29
    fsub d29, d28, d29
    fsub d27, d27, d29
    fsub d25, d25, d28
    fsub d25, d25, d27
    fmov d27, #3.0000000
    fmul d26, d27, d26
    fdiv d25, d25, d26
    fadd d24, d24, d25
    adds x15, x12, #1023
    b.vs L8d4d16b5b1f5_c6
    lsl x15, x15, #52
    fmov d25, x15
    fmul d24, d25, d24
    fmov x15, d24
    and x15, x15, #9223372036854775807
    and x14, x14, #9223372036854775808
    orr x14, x15, x14
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8d4d16b5b1f5_c1:
    adrp x0, _lb_text_160eb694eae2@PAGE
    add x0, x0, _lb_text_160eb694eae2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d4d16b5b1f5_c2:
    adrp x0, _lb_text_fe6a158098e3@PAGE
    add x0, x0, _lb_text_fe6a158098e3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d4d16b5b1f5_c3:
    adrp x0, _lb_text_fe6a158098e3@PAGE
    add x0, x0, _lb_text_fe6a158098e3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d4d16b5b1f5_c4:
    adrp x0, _lb_text_5e4a8bccfb02@PAGE
    add x0, x0, _lb_text_5e4a8bccfb02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d4d16b5b1f5_c5:
    adrp x0, _lb_text_f18f996b5190@PAGE
    add x0, x0, _lb_text_f18f996b5190@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8d4d16b5b1f5_c6:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8d4d16b5b1f5_k0:
    .quad 4850376798678024192
L8d4d16b5b1f5_k1:
    .quad 4603181339468404383
L8d4d16b5b1f5_k2:
    .quad 4603406838582669367
L8d4d16b5b1f5_k3:
    .quad 13818256474713097126
L8d4d16b5b1f5_k4:
    .quad 4582041149312487569


    .p2align 2
    .globl _lb_16luce_color_cam16_16inverse_response
_lb_16luce_color_cam16_16inverse_response:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    str d9, [sp, #0]
    fmov d8, d0
    fmov d24, d1
    fabs d25, d8
    fmov d26, xzr
    ldr d27, L6a22e8f835ef_k0
    fmul d27, d27, d25
    ldr d28, L6a22e8f835ef_k1
    fsub d25, d28, d25
    fdiv d25, d27, d25
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L6a22e8f835ef_9
L6a22e8f835ef_8:
    b L6a22e8f835ef_29
L6a22e8f835ef_9:
L6a22e8f835ef_10:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L6a22e8f835ef_13
L6a22e8f835ef_12:
    fmov d26, d25
    b L6a22e8f835ef_29
L6a22e8f835ef_13:
L6a22e8f835ef_14:
    fcmp d26, d26
    b.ne L6a22e8f835ef_17
L6a22e8f835ef_19:
    fcmp d26, d25
    b.ne L6a22e8f835ef_17
L6a22e8f835ef_16:
    and x14, x14, x15
    fmov d26, x14
    b L6a22e8f835ef_29
L6a22e8f835ef_17:
L6a22e8f835ef_18:
    fcmp d26, d25
    fcsel d26, d26, d25, gt
L6a22e8f835ef_29:
    ldr d25, L6a22e8f835ef_k2
    fdiv d9, d25, d24
    fmov d24, #1.0000000
    ldr d25, L6a22e8f835ef_k3
    fdiv d24, d24, d25
    fmov d0, d26
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d9, d24
    fmov x14, d24
    and x14, x14, #9223372036854775807
    fmov x15, d8
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #8]
    ldr d9, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L6a22e8f835ef_k0:
    .quad 4628329633800288993
L6a22e8f835ef_k1:
    .quad 4645744490609377280
L6a22e8f835ef_k2:
    .quad 4636737291354636288
L6a22e8f835ef_k3:
    .quad 4601237667291888353


    .p2align 2
    .globl _lb_13luce_std_math_9log_value
_lb_13luce_std_math_9log_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    movz x10, #16, lsl #48
    sub x15, x14, x10
    movz x10, #32736, lsl #48
    cmp x15, x10
    b.hs Laa4f3ec416ea_2
Laa4f3ec416ea_1:
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
    ldr d27, Laa4f3ec416ea_k0
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
    ldr d20, Laa4f3ec416ea_k1
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
    ldr d28, Laa4f3ec416ea_k2
    fmadd d27, d29, d27, d28
    ldr d28, Laa4f3ec416ea_k3
    ldr d31, Laa4f3ec416ea_k4
    fmadd d28, d29, d28, d31
    fmov d31, #-0.1250000
    ldr d19, Laa4f3ec416ea_k5
    fmadd d31, d29, d31, d19
    ldr d19, Laa4f3ec416ea_k6
    ldr d20, Laa4f3ec416ea_k7
    fmadd d19, d29, d19, d20
    fmul d20, d30, d30
    fmadd d31, d30, d19, d31
    fmadd d27, d30, d28, d27
    fmadd d27, d20, d31, d27
    fmul d28, d29, d30
    fmul d27, d27, d28
    fadd d26, d27, d26
    fadd d25, d26, d25
    ldr d26, Laa4f3ec416ea_k8
    fabs d27, d21
    fmul d26, d26, d27
    fsub d27, d25, d26
    fadd d27, d21, d27
    fadd d26, d25, d26
    fadd d26, d21, d26
    fcmp d27, d26
    b.ne Laa4f3ec416ea_5
Laa4f3ec416ea_4:
    fadd d24, d25, d21
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Laa4f3ec416ea_5:
Laa4f3ec416ea_2:
Laa4f3ec416ea_3:
    fmov d0, d24
    bl _lb_13luce_std_math_12log_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Laa4f3ec416ea_k0:
    .quad 4604418534313441280
Laa4f3ec416ea_k1:
    .quad 4408728642709317424
Laa4f3ec416ea_k2:
    .quad 4599676419421066581
Laa4f3ec416ea_k3:
    .quad 13818544856648471893
Laa4f3ec416ea_k4:
    .quad 4596373779694328218
Laa4f3ec416ea_k5:
    .quad 4594314991293244562
Laa4f3ec416ea_k6:
    .quad 13815242216921733530
Laa4f3ec416ea_k7:
    .quad 4592670820000712476
Laa4f3ec416ea_k8:
    .quad 4323455642275676160


    .p2align 2
    .globl _lb_15luce_color_aces_Corners_put
_lb_15luce_color_aces_Corners_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    sub x16, x29, #72
    str d3, [x16, #0]
    sub x16, x29, #72
    str d4, [x16, #8]
    sub x16, x29, #72
    str d5, [x16, #16]
    mov x14, x0
    mov x15, x1
    add x12, x14, #192
    mov x13, #0
Ldec0dc693425_1:
    cmp x13, #3
    b.hs Ldec0dc693425_4
    .p2align 4
Ldec0dc693425_2:
    movz x10, #3
    umulh x11, x15, x10
    add x7, x15, x15, lsl #1
    cbnz x11, Ldec0dc693425_c1
    adds x7, x7, x13
    b.cs Ldec0dc693425_c2
    movz x10, #24
    cmp x7, x10
    b.hs Ldec0dc693425_c3
    lsl x7, x7, #3
    add x6, x7, x14
    lsl x5, x13, #3
    sub x10, x29, #48
    ldr d24, [x10, x5]
    str d24, [x6]
    add x7, x7, x12
    sub x11, x29, #72
    ldr d24, [x5, x11]
    str d24, [x7]
    add x13, x13, #1
    cmp x13, #3
    b.lo Ldec0dc693425_2
Ldec0dc693425_4:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldec0dc693425_c1:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ldec0dc693425_c2:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ldec0dc693425_c3:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_Corners_6rgb_at
_lb_15luce_color_aces_Corners_6rgb_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    mov x14, x0
    mov x15, x1
    movz x10, #3
    umulh x11, x15, x10
    add x15, x15, x15, lsl #1
    cbnz x11, L0f8746ec116b_c1
    movz x10, #24
    cmp x15, x10
    b.hs L0f8746ec116b_c2
    add x14, x14, x15, lsl #3
    add x12, x15, #1
    movz x10, #24
    cmp x12, x10
    b.hs L0f8746ec116b_c3
    ldr q24, [x14]
    add x15, x15, #2
    movz x10, #24
    cmp x15, x10
    b.hs L0f8746ec116b_c4
    ldr d25, [x14, #16]
    sub x9, x29, #24
    str q24, [x9]
    str d25, [sp, #24]
    sub x9, x29, #24
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0f8746ec116b_c1:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f8746ec116b_c2:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0f8746ec116b_c3:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0f8746ec116b_c4:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_10boundary_m
_lb_15luce_color_aces_10boundary_m:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str d8, [sp, #56]
    str d9, [sp, #48]
    str d10, [sp, #40]
    str d11, [sp, #32]
    str d12, [sp, #24]
    str d13, [sp, #16]
    str d14, [sp, #8]
    str d15, [sp, #0]
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
    fmov d11, d3
    fmov d24, d4
    fmov d12, d5
    fmov d13, d6
    fmov d14, d7
    fmov d0, d12
    fmov d1, d13
    fmov d2, d24
    fmov d3, d8
    fmov d4, d9
    fmov d5, d14
    bl _lb_15luce_color_aces_11line_hull_m
    fmov d15, d0
    fsub d24, d10, d12
    fneg d25, d13
    fsub d26, d10, d8
    fsub d27, d10, d14
    fmov d0, d24
    fmov d1, d25
    fmov d2, d11
    fmov d3, d26
    fmov d4, d9
    fmov d5, d27
    bl _lb_15luce_color_aces_11line_hull_m
    fmov d24, d0
    adrp x14, _lb_15luce_color_aces_12smooth_cusps@PAGE
    add x14, x14, _lb_15luce_color_aces_12smooth_cusps@PAGEOFF
    ldr d25, [x14]
    fmul d25, d25, d9
    fsub d26, d15, d24
    fabs d26, d26
    fsub d26, d25, d26
    fmov d27, xzr
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L441ad0f0ee84_7
L441ad0f0ee84_6:
    b L441ad0f0ee84_27
L441ad0f0ee84_7:
L441ad0f0ee84_8:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L441ad0f0ee84_11
L441ad0f0ee84_10:
    fmov d26, d27
    b L441ad0f0ee84_27
L441ad0f0ee84_11:
L441ad0f0ee84_12:
    fcmp d26, d27
    b.ne L441ad0f0ee84_15
L441ad0f0ee84_17:
    fcmp d27, d27
    b.ne L441ad0f0ee84_15
L441ad0f0ee84_14:
    and x14, x14, x15
    fmov d26, x14
    b L441ad0f0ee84_27
L441ad0f0ee84_15:
L441ad0f0ee84_16:
    fcmp d26, d27
    fcsel d26, d26, d27, gt
L441ad0f0ee84_27:
    fdiv d26, d26, d25
    fmov x14, d15
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L441ad0f0ee84_29
L441ad0f0ee84_28:
    b L441ad0f0ee84_49
L441ad0f0ee84_29:
L441ad0f0ee84_30:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L441ad0f0ee84_33
L441ad0f0ee84_32:
    fmov d15, d24
    b L441ad0f0ee84_49
L441ad0f0ee84_33:
L441ad0f0ee84_34:
    fcmp d27, d15
    b.ne L441ad0f0ee84_37
L441ad0f0ee84_39:
    fcmp d27, d24
    b.ne L441ad0f0ee84_37
L441ad0f0ee84_36:
    orr x14, x14, x15
    fmov d15, x14
    b L441ad0f0ee84_49
L441ad0f0ee84_37:
L441ad0f0ee84_38:
    fcmp d15, d24
    fcsel d15, d15, d24, mi
L441ad0f0ee84_49:
    fmul d24, d26, d26
    fmul d24, d24, d26
    fmul d24, d24, d25
    fmov d25, #6.0000000
    fdiv d24, d24, d25
    fsub d24, d15, d24
    fmov d0, d24
    ldr d8, [sp, #56]
    ldr d9, [sp, #48]
    ldr d10, [sp, #40]
    ldr d11, [sp, #32]
    ldr d12, [sp, #24]
    ldr d13, [sp, #16]
    ldr d14, [sp, #8]
    ldr d15, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_11atan2_value
_lb_13luce_std_math_11atan2_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    fmov d24, d0
    fmov d25, d1
    fabs d26, d24
    fabs d27, d25
    fmov x14, d26
    movz x10, #8368, lsl #48
    sub x14, x14, x10
    movz x10, #16000, lsl #48
    cmp x14, x10
    b.hs Lda7d2e22965f_2
Lda7d2e22965f_4:
    fmov x14, d27
    movz x10, #8368, lsl #48
    sub x14, x14, x10
    movz x10, #16000, lsl #48
    cmp x14, x10
    b.hs Lda7d2e22965f_2
Lda7d2e22965f_1:
    fmov d28, xzr
    fcmp d25, d28
    cset w14, mi
    str w14, [sp, #0]
    fcmp d26, d27
    cset w14, gt
    cmp w14, #0
    fcsel d29, d27, d26, ne
    cmp w14, #0
    fcsel d26, d26, d27, ne
    fdiv d27, d29, d26
    ldr d30, Lda7d2e22965f_k0
    fmul d27, d27, d30
    adrp x15, _lb_13luce_std_math_11round_shift@PAGE
    add x15, x15, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d30, [x15]
    fadd d27, d27, d30
    fsub d27, d27, d30
    ldr d30, Lda7d2e22965f_k1
    fmul d30, d27, d30
    fmul d31, d30, d26
    fneg d31, d31
    fmadd d19, d30, d26, d31
    fadd d20, d31, d29
    fsub d21, d20, d29
    fsub d22, d20, d21
    fsub d22, d29, d22
    fsub d31, d31, d21
    fadd d31, d22, d31
    fmul d21, d30, d29
    fneg d22, d21
    fmadd d29, d30, d29, d22
    fadd d30, d21, d26
    fsub d26, d30, d26
    fsub d26, d21, d26
    fdiv d21, d20, d30
    fneg d22, d21
    fmadd d20, d22, d30, d20
    fsub d31, d31, d19
    fadd d26, d29, d26
    fmul d26, d21, d26
    fsub d26, d31, d26
    fadd d26, d20, d26
    fdiv d26, d26, d30
    fmul d29, d21, d21
    fmul d30, d21, d29
    ldr d31, Lda7d2e22965f_k2
    ldr d19, Lda7d2e22965f_k3
    fmadd d31, d29, d31, d19
    ldr d19, Lda7d2e22965f_k4
    fmadd d31, d29, d31, d19
    ldr d19, Lda7d2e22965f_k5
    fmadd d29, d29, d31, d19
    fmul d29, d30, d29
    fcvtzs x15, d27
    adrp x12, _lb_20luce_std_math_tables_15atan_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_15atan_table_high@PAGEOFF
    movz x10, #65
    cmp x15, x10
    b.hs Lda7d2e22965f_c1
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d27, x12
    fadd d30, d21, d27
    fsub d27, d30, d27
    fsub d27, d21, d27
    adrp x12, _lb_20luce_std_math_tables_14atan_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14atan_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d31, x15
    fadd d26, d26, d29
    fadd d26, d31, d26
    fadd d26, d26, d27
    ldrb w15, [sp, #0]
    cmp w14, w15
    cset w12, ne
    ldr d27, Lda7d2e22965f_k6
    ldr d29, Lda7d2e22965f_k7
    ldr d31, Lda7d2e22965f_k8
    ldr d19, Lda7d2e22965f_k9
    cmp w15, #0
    fcsel d31, d31, d28, ne
    cmp w15, #0
    fcsel d28, d19, d28, ne
    cmp w14, #0
    fcsel d27, d27, d31, ne
    cmp w14, #0
    fcsel d28, d29, d28, ne
    fneg d29, d30
    cmp w12, #0
    fcsel d29, d29, d30, ne
    fneg d30, d26
    cmp w12, #0
    fcsel d26, d30, d26, ne
    fadd d30, d27, d29
    fsub d31, d30, d27
    fsub d19, d30, d31
    fsub d27, d27, d19
    fsub d29, d29, d31
    fadd d27, d27, d29
    fadd d26, d28, d26
    fadd d26, d26, d27
    fabs d27, d30
    ldr d28, Lda7d2e22965f_k10
    fmul d27, d28, d27
    fsub d28, d26, d27
    fadd d28, d30, d28
    fadd d27, d26, d27
    fadd d27, d30, d27
    fcmp d28, d27
    b.ne Lda7d2e22965f_6
Lda7d2e22965f_5:
    fadd d25, d26, d30
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lda7d2e22965f_6:
Lda7d2e22965f_7:
Lda7d2e22965f_2:
Lda7d2e22965f_3:
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_14atan2_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lda7d2e22965f_c1:
    adrp x0, _lb_text_94738e57adcd@PAGE
    add x0, x0, _lb_text_94738e57adcd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lda7d2e22965f_k0:
    .quad 4634204016564240384
Lda7d2e22965f_k1:
    .quad 4580160821035794432
Lda7d2e22965f_k2:
    .quad 4592670820000712476
Lda7d2e22965f_k3:
    .quad 13817687028148020370
Lda7d2e22965f_k4:
    .quad 4596373779694328218
Lda7d2e22965f_k5:
    .quad 13823048456275842389
Lda7d2e22965f_k6:
    .quad 4609753056924675352
Lda7d2e22965f_k7:
    .quad 4364452196894661639
Lda7d2e22965f_k8:
    .quad 4614256656552045848
Lda7d2e22965f_k9:
    .quad 4368955796522032135
Lda7d2e22965f_k10:
    .quad 4323455642275676160


    .p2align 2
    .globl _lb_15luce_color_aces_11expand_cone
_lb_15luce_color_aces_11expand_cone:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    ldr d25, Lc6a8a311e847_k0
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lc6a8a311e847_5
Lc6a8a311e847_4:
    b Lc6a8a311e847_25
Lc6a8a311e847_5:
Lc6a8a311e847_6:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lc6a8a311e847_9
Lc6a8a311e847_8:
    fmov d24, d25
    b Lc6a8a311e847_25
Lc6a8a311e847_9:
Lc6a8a311e847_10:
    fmov d26, xzr
    fcmp d24, d26
    b.ne Lc6a8a311e847_13
Lc6a8a311e847_15:
    fcmp d25, d26
    b.ne Lc6a8a311e847_13
Lc6a8a311e847_12:
    orr x14, x14, x15
    fmov d24, x14
    b Lc6a8a311e847_25
Lc6a8a311e847_13:
Lc6a8a311e847_14:
    fcmp d24, d25
    fcsel d24, d24, d25, mi
Lc6a8a311e847_25:
    adrp x14, _lb_15luce_color_aces_18compression_offset@PAGE
    add x14, x14, _lb_15luce_color_aces_18compression_offset@PAGEOFF
    ldr d25, [x14]
    fmul d25, d25, d24
    fmov d26, #1.0000000
    fsub d24, d26, d24
    fdiv d24, d25, d24
    ldr d25, Lc6a8a311e847_k1
    fdiv d25, d26, d25
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lc6a8a311e847_k0:
    .quad 4607092346807469998
Lc6a8a311e847_k1:
    .quad 4601237667291888353


    .p2align 2
    .globl _lb_15luce_color_aces_11line_hull_m
_lb_15luce_color_aces_11line_hull_m:
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
    fmov d9, d3
    fmov d10, d4
    fmov d11, d5
    fdiv d24, d24, d11
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d24, d11
    fmul d24, d24, d10
    fmul d25, d8, d10
    fsub d25, d9, d25
    fdiv d24, d24, d25
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_11hypot_value
_lb_13luce_std_math_11hypot_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fabs d26, d24
    fabs d27, d25
    fcmp d27, d26
    cset w14, gt
    cmp w14, #0
    fcsel d28, d27, d26, ne
    cmp w14, #0
    fcsel d26, d26, d27, ne
    fmov x14, d28
    movz x10, #8368, lsl #48
    sub x14, x14, x10
    movz x10, #16000, lsl #48
    cmp x14, x10
    b.hs Ld1e4ec173797_8
Ld1e4ec173797_7:
    fmul d27, d28, d28
    fneg d29, d27
    fmadd d28, d28, d28, d29
    fmul d29, d26, d26
    fneg d30, d29
    fmadd d26, d26, d26, d30
    fadd d30, d27, d29
    fsub d27, d30, d27
    fsub d27, d29, d27
    fadd d26, d28, d26
    fadd d26, d26, d27
    fsqrt d27, d30
    fneg d28, d27
    fmadd d28, d28, d27, d30
    fadd d26, d26, d28
    fadd d28, d27, d27
    fdiv d26, d26, d28
    ldr d28, Ld1e4ec173797_k0
    fmul d28, d27, d28
    fsub d29, d26, d28
    fadd d29, d27, d29
    fadd d28, d26, d28
    fadd d28, d27, d28
    fcmp d29, d28
    b.ne Ld1e4ec173797_11
Ld1e4ec173797_10:
    fadd d24, d27, d26
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1e4ec173797_11:
Ld1e4ec173797_12:
Ld1e4ec173797_8:
Ld1e4ec173797_9:
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_14hypot_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Ld1e4ec173797_k0:
    .quad 4323455642275676160


    .p2align 2
    .globl _lb_13luce_std_math_12log_accurate
_lb_13luce_std_math_12log_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str d8, [sp, #24]
    str d9, [sp, #16]
    str d10, [sp, #8]
    str d11, [sp, #0]
    fmov d24, d0
    fmov x14, d24
    sub x15, x14, #1
    movz x10, #65535
    movk x10, #65535, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #32751, lsl #48
    cmp x15, x10
    b.lo L2400bc8cbfa9_2
L2400bc8cbfa9_1:
    fcmp d24, d24
    b.eq L2400bc8cbfa9_30
L2400bc8cbfa9_29:
    fadd d24, d24, d24
    b L2400bc8cbfa9_42
L2400bc8cbfa9_30:
L2400bc8cbfa9_31:
    and x15, x14, #9223372036854775807
    cmp x15, #0
    b.ne L2400bc8cbfa9_34
L2400bc8cbfa9_33:
    ldr d24, L2400bc8cbfa9_k0
    b L2400bc8cbfa9_42
L2400bc8cbfa9_34:
L2400bc8cbfa9_35:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne L2400bc8cbfa9_38
L2400bc8cbfa9_37:
    b L2400bc8cbfa9_42
L2400bc8cbfa9_38:
L2400bc8cbfa9_39:
    ldr d24, L2400bc8cbfa9_k1
L2400bc8cbfa9_42:
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2400bc8cbfa9_2:
    movz x10, #16, lsl #48
    cmp x14, x10
    cset w15, lo
    ldr d25, L2400bc8cbfa9_k2
    fmul d24, d25, d24
    fmov x12, d24
    cmp w15, #0
    csel x14, x12, x14, ne
    cmp w15, #0
    movn x10, #51
    mov x11, #0
    csel x15, x10, x11, ne
    movz x10, #16358, lsl #48
    sub x12, x14, x10
    lsr x13, x12, #45
    and x13, x13, #127
    asr x7, x12, #52
    adds x15, x7, x15
    b.vs L2400bc8cbfa9_c1
    and x12, x12, #18442240474082181120
    sub x14, x14, x12
    fmov d24, x14
    adrp x14, _lb_20luce_std_math_tables_9log_point@PAGE
    add x14, x14, _lb_20luce_std_math_tables_9log_point@PAGEOFF
    lsl x12, x13, #3
    ldr x14, [x14, x12]
    fmov d25, x14
    adrp x14, _lb_20luce_std_math_tables_11log_inverse@PAGE
    add x14, x14, _lb_20luce_std_math_tables_11log_inverse@PAGEOFF
    ldr x14, [x12, x14]
    fmov d26, x14
    fsub d24, d24, d25
    fmul d27, d26, d24
    adrp x14, _lb_13luce_std_math_splitter@PAGE
    add x14, x14, _lb_13luce_std_math_splitter@PAGEOFF
    ldr d28, [x14]
    fmul d28, d27, d28
    fsub d29, d28, d27
    fsub d28, d28, d29
    fsub d29, d27, d28
    fmul d28, d25, d28
    fsub d24, d24, d28
    fmul d25, d25, d29
    fsub d24, d24, d25
    fmul d24, d26, d24
    scvtf d25, x15
    fmul d26, d27, d27
    fneg d28, d26
    fmadd d28, d27, d27, d28
    ldr d29, L2400bc8cbfa9_k3
    fmul d29, d25, d29
    adrp x14, _lb_20luce_std_math_tables_14log_table_high@PAGE
    add x14, x14, _lb_20luce_std_math_tables_14log_table_high@PAGEOFF
    ldr x14, [x12, x14]
    fmov d30, x14
    fadd d29, d29, d30
    fadd d30, d27, d29
    fsub d29, d30, d29
    fsub d29, d27, d29
    fmov d31, #0.5000000
    fmov d19, #-0.5000000
    fmul d19, d19, d26
    fadd d20, d19, d30
    fsub d30, d20, d30
    fsub d30, d19, d30
    adrp x14, _lb_13luce_std_math_16log_coefficients@PAGE
    add x14, x14, _lb_13luce_std_math_16log_coefficients@PAGEOFF
    ldr d19, [x14]
    ldr d21, [x14, #8]
    ldr d22, [x14, #16]
    ldr d23, [x14, #24]
    ldr d8, [x14, #32]
    ldr d9, [x14, #40]
    ldr d10, [x14, #48]
    ldr d11, [x14, #56]
    fmul d26, d27, d26
    fmul d11, d27, d11
    fadd d10, d11, d10
    fmul d10, d27, d10
    fadd d9, d10, d9
    fmul d9, d27, d9
    fadd d8, d9, d8
    fmul d8, d27, d8
    fadd d23, d8, d23
    fmul d23, d27, d23
    fadd d22, d23, d22
    fmul d22, d27, d22
    fadd d21, d22, d21
    fmul d21, d27, d21
    fadd d19, d21, d19
    fmul d26, d26, d19
    ldr d19, L2400bc8cbfa9_k4
    fmul d25, d25, d19
    adrp x14, _lb_20luce_std_math_tables_13log_table_low@PAGE
    add x14, x14, _lb_20luce_std_math_tables_13log_table_low@PAGEOFF
    ldr x14, [x12, x14]
    fmov d19, x14
    fadd d25, d25, d19
    fadd d29, d29, d30
    fmul d28, d31, d28
    fsub d28, d24, d28
    fmul d24, d27, d24
    fsub d24, d28, d24
    fadd d24, d29, d24
    fadd d25, d26, d25
    fadd d24, d24, d25
    fadd d25, d24, d20
    fsub d26, d25, d20
    fsub d24, d24, d26
    fadd d24, d25, d24
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2400bc8cbfa9_c1:
    adrp x0, _lb_text_b31734b3701c@PAGE
    add x0, x0, _lb_text_b31734b3701c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L2400bc8cbfa9_k0:
    .quad 18442240474082181120
L2400bc8cbfa9_k1:
    .quad 9221120237041090560
L2400bc8cbfa9_k2:
    .quad 4841369599423283200
L2400bc8cbfa9_k3:
    .quad 4604418534313441280
L2400bc8cbfa9_k4:
    .quad 4408728642709317424


    .p2align 2
    .globl _lb_13luce_std_math_14atan2_accurate
_lb_13luce_std_math_14atan2_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fcmp d25, d25
    b.ne Lf673bb322cb3_1
Lf673bb322cb3_4:
    fcmp d24, d24
    b.eq Lf673bb322cb3_2
Lf673bb322cb3_1:
    fadd d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_2:
Lf673bb322cb3_3:
    fabs d26, d24
    fabs d27, d25
    fmov x14, d25
    and x14, x14, #9223372036854775808
    cmp x14, #0
    cset w14, ne
    fmov d25, xzr
    fcmp d26, d25
    b.eq Lf673bb322cb3_6
Lf673bb322cb3_9:
    adrp x15, _lb_13luce_std_math_infinity@PAGE
    add x15, x15, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d28, [x15]
    fcmp d27, d28
    b.ne Lf673bb322cb3_7
Lf673bb322cb3_6:
    adrp x15, _lb_13luce_std_math_infinity@PAGE
    add x15, x15, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d27, [x15]
    fcmp d27, d26
    b.ne Lf673bb322cb3_11
Lf673bb322cb3_10:
    ldr d25, Lf673bb322cb3_k0
    ldr d26, Lf673bb322cb3_k1
    cmp w14, #0
    fcsel d25, d25, d26, ne
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_11:
Lf673bb322cb3_12:
    cbz w14, Lf673bb322cb3_18
Lf673bb322cb3_17:
    ldr d25, Lf673bb322cb3_k2
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_18:
Lf673bb322cb3_19:
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_7:
Lf673bb322cb3_8:
    fcmp d27, d25
    b.eq Lf673bb322cb3_22
Lf673bb322cb3_25:
    fcmp d26, d28
    b.ne Lf673bb322cb3_23
Lf673bb322cb3_22:
    ldr d25, Lf673bb322cb3_k3
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_23:
Lf673bb322cb3_24:
    ldr d25, Lf673bb322cb3_k4
    fmul d28, d27, d25
    fcmp d26, d28
    b.le Lf673bb322cb3_28
Lf673bb322cb3_27:
    fdiv d25, d27, d26
    ldr d26, Lf673bb322cb3_k3
    ldr d27, Lf673bb322cb3_k5
    fneg d28, d25
    cmp w14, #0
    fcsel d25, d25, d28, ne
    fadd d25, d27, d25
    fadd d25, d25, d26
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_28:
Lf673bb322cb3_29:
    fmul d25, d26, d25
    fcmp d27, d25
    b.le Lf673bb322cb3_35
Lf673bb322cb3_34:
    cbnz w14, Lf673bb322cb3_38
Lf673bb322cb3_37:
    fdiv d25, d26, d27
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_38:
Lf673bb322cb3_39:
    ldr d25, Lf673bb322cb3_k2
    ldr d28, Lf673bb322cb3_k6
    fdiv d26, d26, d27
    fsub d26, d28, d26
    fadd d25, d25, d26
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_35:
Lf673bb322cb3_36:
    fcmp d26, d27
    fcsel d25, d26, d27, gt
    ldr d28, Lf673bb322cb3_k7
    fcmp d25, d28
    cset w15, gt
    ldr d28, Lf673bb322cb3_k8
    fmul d29, d28, d26
    fmul d28, d28, d27
    ldr d30, Lf673bb322cb3_k9
    fcmp d25, d30
    cset w12, mi
    ldr d25, Lf673bb322cb3_k10
    fmul d30, d25, d26
    fmul d25, d25, d27
    cmp w12, #0
    fcsel d26, d30, d26, ne
    cmp w12, #0
    fcsel d25, d25, d27, ne
    cmp w15, #0
    fcsel d26, d29, d26, ne
    cmp w15, #0
    fcsel d25, d28, d25, ne
    fcmp d26, d25
    b.hi Lf673bb322cb3_84
Lf673bb322cb3_83:
    fdiv d27, d26, d25
    ldr d28, Lf673bb322cb3_k11
    fmul d27, d27, d28
    adrp x15, _lb_13luce_std_math_11round_shift@PAGE
    add x15, x15, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d28, [x15]
    fadd d27, d27, d28
    fsub d27, d27, d28
    fcvtzs x15, d27
    ldr d28, Lf673bb322cb3_k12
    fmul d27, d27, d28
    fmul d28, d25, d27
    fneg d29, d28
    fmadd d29, d27, d25, d29
    fsub d28, d26, d28
    fneg d29, d29
    fadd d30, d28, d29
    fsub d31, d30, d28
    fsub d19, d30, d31
    fsub d28, d28, d19
    fsub d29, d29, d31
    fadd d28, d28, d29
    fmul d29, d26, d27
    fneg d31, d29
    fmadd d26, d27, d26, d31
    fadd d27, d25, d29
    fsub d25, d27, d25
    fsub d25, d29, d25
    fadd d25, d26, d25
    fdiv d26, d30, d27
    fmul d29, d27, d26
    fneg d31, d29
    fmadd d31, d26, d27, d31
    fsub d29, d30, d29
    fsub d29, d29, d31
    fadd d28, d29, d28
    fmul d25, d25, d26
    fsub d25, d28, d25
    fdiv d25, d25, d27
    fadd d27, d25, d26
    fsub d26, d27, d26
    fsub d25, d25, d26
Lf673bb322cb3_102:
    fmul d26, d27, d27
    adrp x12, _lb_13luce_std_math_17atan_coefficients@PAGE
    add x12, x12, _lb_13luce_std_math_17atan_coefficients@PAGEOFF
    ldr d28, [x12]
    ldr d29, [x12, #8]
    ldr d30, [x12, #16]
    ldr d31, [x12, #24]
    fmul d19, d26, d27
    fmul d31, d26, d31
    fadd d30, d31, d30
    fmul d30, d26, d30
    fadd d29, d30, d29
    fmul d26, d26, d29
    fadd d26, d26, d28
    fmul d26, d19, d26
    adrp x12, _lb_20luce_std_math_tables_15atan_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_15atan_table_high@PAGEOFF
    movz x10, #65
    cmp x15, x10
    b.hs Lf673bb322cb3_c1
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d28, x12
    fadd d29, d28, d27
    fsub d28, d29, d28
    fsub d27, d27, d28
    adrp x12, _lb_20luce_std_math_tables_14atan_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14atan_table_low@PAGEOFF
    ldr x15, [x12, x15]
    fmov d28, x15
    fadd d25, d25, d26
    fadd d25, d28, d25
    fadd d25, d25, d27
    fadd d26, d25, d29
    fsub d27, d26, d29
    fsub d25, d25, d27
Lf673bb322cb3_107:
    b Lf673bb322cb3_134
Lf673bb322cb3_84:
Lf673bb322cb3_85:
    fdiv d27, d25, d26
    ldr d28, Lf673bb322cb3_k11
    fmul d27, d27, d28
    adrp x15, _lb_13luce_std_math_11round_shift@PAGE
    add x15, x15, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d28, [x15]
    fadd d27, d27, d28
    fsub d27, d27, d28
    fcvtzs x15, d27
    ldr d28, Lf673bb322cb3_k12
    fmul d27, d27, d28
    fmul d28, d26, d27
    fneg d29, d28
    fmadd d29, d27, d26, d29
    fsub d28, d25, d28
    fneg d29, d29
    fadd d30, d28, d29
    fsub d31, d30, d28
    fsub d19, d30, d31
    fsub d28, d28, d19
    fsub d29, d29, d31
    fadd d28, d28, d29
    fmul d29, d25, d27
    fneg d31, d29
    fmadd d25, d27, d25, d31
    fadd d27, d26, d29
    fsub d26, d27, d26
    fsub d26, d29, d26
    fadd d25, d25, d26
    fdiv d26, d30, d27
    fmul d29, d27, d26
    fneg d31, d29
    fmadd d31, d26, d27, d31
    fsub d29, d30, d29
    fsub d29, d29, d31
    fadd d28, d29, d28
    fmul d25, d25, d26
    fsub d25, d28, d25
    fdiv d25, d25, d27
    fadd d27, d25, d26
    fsub d26, d27, d26
    fsub d25, d25, d26
Lf673bb322cb3_122:
    fmul d26, d27, d27
    adrp x12, _lb_13luce_std_math_17atan_coefficients@PAGE
    add x12, x12, _lb_13luce_std_math_17atan_coefficients@PAGEOFF
    ldr d28, [x12]
    ldr d29, [x12, #8]
    ldr d30, [x12, #16]
    ldr d31, [x12, #24]
    fmul d19, d26, d27
    fmul d31, d26, d31
    fadd d30, d31, d30
    fmul d30, d26, d30
    fadd d29, d30, d29
    fmul d26, d26, d29
    fadd d26, d26, d28
    fmul d26, d19, d26
    adrp x12, _lb_20luce_std_math_tables_15atan_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_15atan_table_high@PAGEOFF
    movz x10, #65
    cmp x15, x10
    b.hs Lf673bb322cb3_c2
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d28, x12
    fadd d29, d28, d27
    fsub d28, d29, d28
    fsub d27, d27, d28
    adrp x12, _lb_20luce_std_math_tables_14atan_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14atan_table_low@PAGEOFF
    ldr x15, [x12, x15]
    fmov d28, x15
    fadd d25, d25, d26
    fadd d25, d28, d25
    fadd d25, d25, d27
    fadd d26, d25, d29
    fsub d27, d26, d29
    fsub d25, d25, d27
Lf673bb322cb3_127:
    ldr d27, Lf673bb322cb3_k3
    ldr d28, Lf673bb322cb3_k5
    fneg d26, d26
    fneg d25, d25
    fadd d29, d27, d26
    fsub d30, d29, d27
    fsub d31, d29, d30
    fsub d27, d27, d31
    fsub d26, d26, d30
    fadd d26, d27, d26
    fadd d25, d28, d25
    fadd d25, d25, d26
    fadd d26, d25, d29
    fsub d27, d26, d29
    fsub d25, d25, d27
Lf673bb322cb3_133:
Lf673bb322cb3_134:
    cbz w14, Lf673bb322cb3_52
Lf673bb322cb3_51:
    ldr d27, Lf673bb322cb3_k2
    ldr d28, Lf673bb322cb3_k6
    fneg d26, d26
    fneg d25, d25
    fadd d29, d27, d26
    fsub d30, d29, d27
    fsub d31, d29, d30
    fsub d27, d27, d31
    fsub d26, d26, d30
    fadd d26, d27, d26
    fadd d25, d28, d25
    fadd d25, d25, d26
    fadd d26, d25, d29
    fsub d27, d26, d29
    fsub d25, d25, d27
Lf673bb322cb3_80:
    b Lf673bb322cb3_53
Lf673bb322cb3_52:
Lf673bb322cb3_53:
    fadd d25, d26, d25
    fmov x14, d25
    and x14, x14, #9223372036854775807
    fmov x15, d24
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf673bb322cb3_c1:
    adrp x0, _lb_text_e2b96ec69771@PAGE
    add x0, x0, _lb_text_e2b96ec69771@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf673bb322cb3_c2:
    adrp x0, _lb_text_e2b96ec69771@PAGE
    add x0, x0, _lb_text_e2b96ec69771@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lf673bb322cb3_k0:
    .quad 4612488097114038738
Lf673bb322cb3_k1:
    .quad 4605249457297304856
Lf673bb322cb3_k2:
    .quad 4614256656552045848
Lf673bb322cb3_k3:
    .quad 4609753056924675352
Lf673bb322cb3_k4:
    .quad 4886405595696988160
Lf673bb322cb3_k5:
    .quad 4364452196894661639
Lf673bb322cb3_k6:
    .quad 4368955796522032135
Lf673bb322cb3_k7:
    .quad 6858982232485265408
Lf673bb322cb3_k8:
    .quad 1905022642377719808
Lf673bb322cb3_k9:
    .quad 2355382605114769408
Lf673bb322cb3_k10:
    .quad 7309342195222315008
Lf673bb322cb3_k11:
    .quad 4634204016564240384
Lf673bb322cb3_k12:
    .quad 4580160821035794432


    .p2align 2
    .globl _lb_13luce_std_math_14hypot_accurate
_lb_13luce_std_math_14hypot_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fabs d26, d24
    fabs d27, d25
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d28, [x14]
    fcmp d28, d26
    b.eq Lac87b204f851_1
Lac87b204f851_4:
    fcmp d28, d27
    b.ne Lac87b204f851_2
Lac87b204f851_1:
    fmov d0, d28
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac87b204f851_2:
    fcmp d26, d26
    b.ne Lac87b204f851_6
Lac87b204f851_9:
    fcmp d27, d27
    b.eq Lac87b204f851_7
Lac87b204f851_6:
    fadd d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac87b204f851_7:
    fcmp d27, d26
    cset w14, gt
    cmp w14, #0
    fcsel d24, d27, d26, ne
    cmp w14, #0
    fcsel d25, d26, d27, ne
    fmov d26, xzr
    fcmp d26, d25
    b.eq Lac87b204f851_14
Lac87b204f851_17:
    ldr d26, Lac87b204f851_k0
    fmul d26, d26, d25
    fcmp d24, d26
    b.le Lac87b204f851_15
Lac87b204f851_14:
    fadd d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac87b204f851_15:
    ldr d26, Lac87b204f851_k1
    fcmp d24, d26
    b.le Lac87b204f851_20
Lac87b204f851_19:
    ldr d26, Lac87b204f851_k2
    fmul d24, d26, d24
    fmul d25, d26, d25
    movz x14, #600
    b Lac87b204f851_21
Lac87b204f851_20:
    ldr d26, Lac87b204f851_k3
    fcmp d25, d26
    cset w14, mi
    ldr d26, Lac87b204f851_k4
    fmul d27, d26, d24
    fmul d26, d26, d25
    cmp w14, #0
    fcsel d24, d27, d24, ne
    cmp w14, #0
    fcsel d25, d26, d25, ne
    cmp w14, #0
    movn x10, #599
    mov x11, #0
    csel x14, x10, x11, ne
Lac87b204f851_21:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d24, d24, d24, d27
    fmul d27, d25, d25
    fneg d28, d27
    fmadd d25, d25, d25, d28
    fadd d28, d26, d27
    fsub d29, d28, d26
    fsub d30, d28, d29
    fsub d26, d26, d30
    fsub d27, d27, d29
    fadd d26, d26, d27
    fadd d24, d24, d25
    fadd d24, d24, d26
    fadd d25, d24, d28
    fsub d26, d25, d28
    fsub d24, d24, d26
    fsqrt d26, d25
    fmul d27, d26, d26
    fneg d28, d27
    fmadd d28, d26, d26, d28
    fsub d25, d25, d27
    fsub d25, d25, d28
    fadd d24, d24, d25
    fadd d25, d26, d26
    fdiv d24, d24, d25
    fadd d25, d26, d24
    fsub d26, d25, d26
    fsub d24, d24, d26
    cmp x14, #0
    b.ne Lac87b204f851_26
Lac87b204f851_25:
    fadd d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac87b204f851_26:
    fmov x15, d25
    lsr x15, x15, #52
    subs x15, x15, #1023
    b.vs Lac87b204f851_c1
    mov x9, #0
    subs x12, x9, x15
    b.vs Lac87b204f851_c2
    adds x12, x12, #1023
    b.vs Lac87b204f851_c3
    lsl x12, x12, #52
    fmov d26, x12
    fmul d25, d25, d26
    fmul d24, d24, d26
    adds x14, x15, x14
    b.vs Lac87b204f851_c4
    fmov d0, d25
    fmov d1, d24
    mov x0, x14
    bl _lb_13luce_std_math_10scale_pair
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac87b204f851_c1:
    adrp x0, _lb_text_7273fa19fe0b@PAGE
    add x0, x0, _lb_text_7273fa19fe0b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lac87b204f851_c2:
    adrp x0, _lb_text_2a54aef6c3fd@PAGE
    add x0, x0, _lb_text_2a54aef6c3fd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lac87b204f851_c3:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lac87b204f851_c4:
    adrp x0, _lb_text_6325cd31eaba@PAGE
    add x0, x0, _lb_text_6325cd31eaba@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lac87b204f851_k0:
    .quad 4886405595696988160
Lac87b204f851_k1:
    .quad 6858982232485265408
Lac87b204f851_k2:
    .quad 1905022642377719808
Lac87b204f851_k3:
    .quad 2355382605114769408
Lac87b204f851_k4:
    .quad 7309342195222315008


    .p2align 2
    .globl _lb_13luce_std_math_10atan2_pair
_lb_13luce_std_math_10atan2_pair:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    fmov d24, d0
    fmov d25, d1
    fcmp d24, d25
    b.hi Lce0ba77a06fa_2
Lce0ba77a06fa_1:
    fdiv d26, d24, d25
    ldr d27, Lce0ba77a06fa_k0
    fmul d26, d26, d27
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d27, [x14]
    fadd d26, d26, d27
    fsub d26, d26, d27
    fcvtzs x14, d26
    ldr d27, Lce0ba77a06fa_k1
    fmul d26, d26, d27
    fmul d27, d26, d25
    fneg d28, d27
    fmadd d28, d26, d25, d28
    fsub d27, d24, d27
    fneg d28, d28
    fadd d29, d27, d28
    fsub d30, d29, d27
    fsub d31, d29, d30
    fsub d27, d27, d31
    fsub d28, d28, d30
    fadd d27, d27, d28
    fmul d28, d26, d24
    fneg d30, d28
    fmadd d24, d26, d24, d30
    fadd d26, d28, d25
    fsub d25, d26, d25
    fsub d25, d28, d25
    fadd d24, d24, d25
    fdiv d25, d29, d26
    fmul d28, d26, d25
    fneg d30, d28
    fmadd d30, d25, d26, d30
    fsub d28, d29, d28
    fsub d28, d28, d30
    fadd d27, d27, d28
    fmul d24, d24, d25
    fsub d24, d27, d24
    fdiv d24, d24, d26
    fadd d26, d25, d24
    fsub d25, d26, d25
    fsub d24, d24, d25
Lce0ba77a06fa_20:
    fmul d25, d26, d26
    adrp x15, _lb_13luce_std_math_17atan_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_17atan_coefficients@PAGEOFF
    sub x11, x29, #32
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    fmul d27, d25, d26
    ldr d28, [sp, #0]
    ldr d29, [sp, #8]
    ldr d30, [sp, #16]
    ldr d31, [sp, #24]
    fmul d31, d25, d31
    fadd d30, d30, d31
    fmul d30, d25, d30
    fadd d29, d29, d30
    fmul d25, d25, d29
    fadd d25, d28, d25
    fmul d25, d27, d25
    adrp x15, _lb_20luce_std_math_tables_15atan_table_high@PAGE
    add x15, x15, _lb_20luce_std_math_tables_15atan_table_high@PAGEOFF
    movz x10, #65
    cmp x14, x10
    b.hs Lce0ba77a06fa_c1
    lsl x14, x14, #3
    ldr x15, [x15, x14]
    fmov d27, x15
    fadd d28, d27, d26
    fsub d27, d28, d27
    fsub d26, d26, d27
    adrp x15, _lb_20luce_std_math_tables_14atan_table_low@PAGE
    add x15, x15, _lb_20luce_std_math_tables_14atan_table_low@PAGEOFF
    ldr x14, [x14, x15]
    fmov d27, x14
    fadd d24, d25, d24
    fadd d24, d27, d24
    fadd d24, d24, d26
    fadd d25, d24, d28
    fsub d26, d25, d28
    fsub d24, d24, d26
Lce0ba77a06fa_25:
    fmov d0, d25
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lce0ba77a06fa_2:
Lce0ba77a06fa_3:
    fdiv d26, d25, d24
    ldr d27, Lce0ba77a06fa_k0
    fmul d26, d26, d27
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d27, [x14]
    fadd d26, d26, d27
    fsub d26, d26, d27
    fcvtzs x14, d26
    ldr d27, Lce0ba77a06fa_k1
    fmul d26, d26, d27
    fmul d27, d26, d24
    fneg d28, d27
    fmadd d28, d26, d24, d28
    fsub d27, d25, d27
    fneg d28, d28
    fadd d29, d27, d28
    fsub d30, d29, d27
    fsub d31, d29, d30
    fsub d27, d27, d31
    fsub d28, d28, d30
    fadd d27, d27, d28
    fmul d28, d26, d25
    fneg d30, d28
    fmadd d25, d26, d25, d30
    fadd d26, d28, d24
    fsub d24, d26, d24
    fsub d24, d28, d24
    fadd d24, d25, d24
    fdiv d25, d29, d26
    fmul d28, d26, d25
    fneg d30, d28
    fmadd d30, d25, d26, d30
    fsub d28, d29, d28
    fsub d28, d28, d30
    fadd d27, d27, d28
    fmul d24, d24, d25
    fsub d24, d27, d24
    fdiv d24, d24, d26
    fadd d26, d25, d24
    fsub d25, d26, d25
    fsub d24, d24, d25
Lce0ba77a06fa_40:
    fmul d25, d26, d26
    adrp x15, _lb_13luce_std_math_17atan_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_17atan_coefficients@PAGEOFF
    sub x11, x29, #32
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    fmul d27, d25, d26
    ldr d28, [sp, #0]
    ldr d29, [sp, #8]
    ldr d30, [sp, #16]
    ldr d31, [sp, #24]
    fmul d31, d25, d31
    fadd d30, d30, d31
    fmul d30, d25, d30
    fadd d29, d29, d30
    fmul d25, d25, d29
    fadd d25, d28, d25
    fmul d25, d27, d25
    adrp x15, _lb_20luce_std_math_tables_15atan_table_high@PAGE
    add x15, x15, _lb_20luce_std_math_tables_15atan_table_high@PAGEOFF
    movz x10, #65
    cmp x14, x10
    b.hs Lce0ba77a06fa_c2
    lsl x14, x14, #3
    ldr x15, [x15, x14]
    fmov d27, x15
    fadd d28, d27, d26
    fsub d27, d28, d27
    fsub d26, d26, d27
    adrp x15, _lb_20luce_std_math_tables_14atan_table_low@PAGE
    add x15, x15, _lb_20luce_std_math_tables_14atan_table_low@PAGEOFF
    ldr x14, [x14, x15]
    fmov d27, x14
    fadd d24, d25, d24
    fadd d24, d27, d24
    fadd d24, d24, d26
    fadd d25, d24, d28
    fsub d26, d25, d28
    fsub d24, d24, d26
Lce0ba77a06fa_45:
    ldr d26, Lce0ba77a06fa_k2
    ldr d27, Lce0ba77a06fa_k3
    fneg d25, d25
    fneg d24, d24
    fadd d28, d26, d25
    fsub d29, d28, d26
    fsub d30, d28, d29
    fsub d26, d26, d30
    fsub d25, d25, d29
    fadd d25, d26, d25
    fadd d24, d27, d24
    fadd d24, d24, d25
    fadd d25, d24, d28
    fsub d26, d25, d28
    fsub d24, d24, d26
Lce0ba77a06fa_51:
    fmov d0, d25
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lce0ba77a06fa_c1:
    adrp x0, _lb_text_e2b96ec69771@PAGE
    add x0, x0, _lb_text_e2b96ec69771@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lce0ba77a06fa_c2:
    adrp x0, _lb_text_e2b96ec69771@PAGE
    add x0, x0, _lb_text_e2b96ec69771@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lce0ba77a06fa_k0:
    .quad 4634204016564240384
Lce0ba77a06fa_k1:
    .quad 4580160821035794432
Lce0ba77a06fa_k2:
    .quad 4609753056924675352
Lce0ba77a06fa_k3:
    .quad 4364452196894661639


    .p2align 2
    .globl _lb_test_15
_lb_test_15:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #736
    str x19, [sp, #728]
    str d8, [sp, #720]
    str d9, [sp, #712]
    str d10, [sp, #704]
    str d11, [sp, #696]
    str d12, [sp, #688]
    mov x0, #0
    sub x8, x29, #120
    bl _lb_view_17working_to_output
    sub x10, x29, #120
    sub x11, x29, #192
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
    sub x10, x29, #192
    sub x11, x29, #120
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
    sub x10, x29, #120
    sub x11, x29, #264
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
    ldr d8, Ld3b15bc5446b_k0
    str d8, [sp, #448]
    str d8, [sp, #456]
    str d8, [sp, #464]
    fmov d9, xzr
    sub x11, x29, #360
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #376]
    fmov d10, #2.0000000
    str d10, [sp, #384]
    mov x9, #0
    str x9, [sp, #392]
    mov x9, #0
    str x9, [sp, #400]
    str d9, [sp, #408]
    str d9, [sp, #416]
    str d9, [sp, #424]
    str d9, [sp, #432]
    movz x9, #1
    strb w9, [sp, #440]
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d9
    mov x0, #0
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #360
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x10, x29, #96
    sub x11, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #672]
    fcmp d24, d8
    b.le Ld3b15bc5446b_2
Ld3b15bc5446b_3:
    ldr d25, Ld3b15bc5446b_k1
    fcmp d24, d25
    b.mi Ld3b15bc5446b_1
Ld3b15bc5446b_2:
    mov x9, #0
    str x9, [sp, #360]
    mov x9, #0
    str x9, [sp, #368]
    adrp x14, _lb_text_dfb0128ee231@PAGE
    add x14, x14, _lb_text_dfb0128ee231@PAGEOFF
    adrp x15, _lb_text_9dc0805f3238@PAGE
    add x15, x15, _lb_text_9dc0805f3238@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #376
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld3b15bc5446b_1:
    ldr d25, [sp, #664]
    fsub d25, d25, d24
    fabs d25, d25
    ldr d26, Ld3b15bc5446b_k2
    fcmp d25, d26
    b.pl Ld3b15bc5446b_6
Ld3b15bc5446b_7:
    ldr d25, [sp, #680]
    fsub d24, d25, d24
    fabs d24, d24
    fcmp d24, d26
    b.mi Ld3b15bc5446b_5
Ld3b15bc5446b_6:
    mov x9, #0
    str x9, [sp, #344]
    mov x9, #0
    str x9, [sp, #352]
    adrp x14, _lb_text_ee8ad314bd05@PAGE
    add x14, x14, _lb_text_ee8ad314bd05@PAGEOFF
    adrp x15, _lb_text_5a8b16c4173c@PAGE
    add x15, x15, _lb_text_5a8b16c4173c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #392
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld3b15bc5446b_5:
    ldr d24, Ld3b15bc5446b_k3
    str d24, [sp, #320]
    str d24, [sp, #328]
    str d24, [sp, #336]
    sub x11, x29, #488
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #248]
    str d10, [sp, #256]
    mov x9, #0
    str x9, [sp, #264]
    mov x9, #0
    str x9, [sp, #272]
    str d9, [sp, #280]
    str d9, [sp, #288]
    str d9, [sp, #296]
    str d9, [sp, #304]
    movz x9, #1
    strb w9, [sp, #312]
    sub x9, x29, #416
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d9
    mov x0, #0
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #488
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x10, x29, #96
    sub x11, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #664]
    ldr d25, Ld3b15bc5446b_k4
    fcmp d24, d25
    b.le Ld3b15bc5446b_10
Ld3b15bc5446b_12:
    ldr d24, [sp, #672]
    fcmp d24, d25
    b.le Ld3b15bc5446b_10
Ld3b15bc5446b_11:
    ldr d24, [sp, #680]
    fcmp d24, d25
    b.gt Ld3b15bc5446b_9
Ld3b15bc5446b_10:
    mov x9, #0
    str x9, [sp, #232]
    mov x9, #0
    str x9, [sp, #240]
    adrp x14, _lb_text_803943889c56@PAGE
    add x14, x14, _lb_text_803943889c56@PAGEOFF
    adrp x15, _lb_text_341795a47554@PAGE
    add x15, x15, _lb_text_341795a47554@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #504
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld3b15bc5446b_9:
    ldr d24, Ld3b15bc5446b_k5
    str d24, [sp, #208]
    fmov d24, #20.0000000
    str d24, [sp, #216]
    str d24, [sp, #224]
    sub x11, x29, #600
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #136]
    str d10, [sp, #144]
    mov x9, #0
    str x9, [sp, #152]
    mov x9, #0
    str x9, [sp, #160]
    str d9, [sp, #168]
    str d9, [sp, #176]
    str d9, [sp, #184]
    str d9, [sp, #192]
    movz x9, #1
    strb w9, [sp, #200]
    sub x9, x29, #528
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d9
    mov x0, #0
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #600
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x10, x29, #96
    sub x11, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #664]
    ldr d25, Ld3b15bc5446b_k6
    fcmp d24, d25
    b.le Ld3b15bc5446b_15
Ld3b15bc5446b_17:
    ldr d24, [sp, #672]
    fmov d25, #0.5000000
    fcmp d24, d25
    b.le Ld3b15bc5446b_15
Ld3b15bc5446b_16:
    ldr d24, [sp, #680]
    fcmp d24, d25
    b.gt Ld3b15bc5446b_14
Ld3b15bc5446b_15:
    mov x9, #0
    str x9, [sp, #120]
    mov x9, #0
    str x9, [sp, #128]
    adrp x14, _lb_text_1e48efe4fc8b@PAGE
    add x14, x14, _lb_text_1e48efe4fc8b@PAGEOFF
    adrp x15, _lb_text_037a4c14475d@PAGE
    add x15, x15, _lb_text_037a4c14475d@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #616
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld3b15bc5446b_14:
    fmov d24, #-1.0000000
    ldr d8, Ld3b15bc5446b_k7
    ldr d11, Ld3b15bc5446b_k8
    fmov d12, d24
    mov x19, #0
Ld3b15bc5446b_19:
    cmp x19, #30
    b.hs Ld3b15bc5446b_22
    .p2align 4
Ld3b15bc5446b_20:
    ucvtf d24, x19
    fmul d24, d24, d11
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d24, d0
    fmul d24, d24, d8
    str d24, [sp, #96]
    str d24, [sp, #104]
    str d24, [sp, #112]
    sub x11, x29, #712
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #24]
    str d10, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    str d9, [sp, #56]
    str d9, [sp, #64]
    str d9, [sp, #72]
    str d9, [sp, #80]
    movz x9, #1
    strb w9, [sp, #88]
    sub x9, x29, #640
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d9
    mov x0, #0
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #712
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #72
    str d0, [x16, #0]
    sub x16, x29, #72
    str d1, [x16, #8]
    sub x16, x29, #72
    str d2, [x16, #16]
    ldr d24, [sp, #672]
    fcmp d24, d12
    b.ge Ld3b15bc5446b_23
Ld3b15bc5446b_24:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_0ebf3f9d783f@PAGE
    add x14, x14, _lb_text_0ebf3f9d783f@PAGEOFF
    adrp x15, _lb_text_3f77febf28fe@PAGE
    add x15, x15, _lb_text_3f77febf28fe@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #728
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld3b15bc5446b_23:
    add x19, x19, #1
    fmov d12, d24
    cmp x19, #30
    b.lo Ld3b15bc5446b_20
Ld3b15bc5446b_22:
    mov x0, #0
    ldr x19, [sp, #728]
    ldr d8, [sp, #720]
    ldr d9, [sp, #712]
    ldr d10, [sp, #704]
    ldr d11, [sp, #696]
    ldr d12, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Ld3b15bc5446b_k0:
    .quad 4591149604126578442
Ld3b15bc5446b_k1:
    .quad 4592590756007337001
Ld3b15bc5446b_k2:
    .quad 4547007122018943789
Ld3b15bc5446b_k3:
    .quad 4656510908468559872
Ld3b15bc5446b_k4:
    .quad 4607092346807469998
Ld3b15bc5446b_k5:
    .quad 4645744490609377280
Ld3b15bc5446b_k6:
    .quad 4606732058837280358
Ld3b15bc5446b_k7:
    .quad 4562254508917369340
Ld3b15bc5446b_k8:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_test_16
_lb_test_16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #688
    str x19, [sp, #680]
    str x20, [sp, #672]
    str x21, [sp, #664]
    str x22, [sp, #656]
    str x23, [sp, #648]
    str x24, [sp, #640]
    str x25, [sp, #632]
    str x26, [sp, #624]
    str x27, [sp, #616]
    str x28, [sp, #608]
    str d8, [sp, #600]
    str d9, [sp, #592]
    str d10, [sp, #584]
    str d11, [sp, #576]
    str d12, [sp, #568]
    str d13, [sp, #560]
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    ldr x14, [x19]
    add x20, x19, #8
    ldr x15, [x20]
    cbz x15, Lcac9e5d4de66_5
Lcac9e5d4de66_4:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #32, lsl #16
    movz x2, #2
    sub x8, x29, #152
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #552]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Lcac9e5d4de66_7
Lcac9e5d4de66_6:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, _lb_text_84bd464090c2@PAGE
    add x15, x15, _lb_text_84bd464090c2@PAGEOFF
    str x15, [x14, #8]
    movz x9, #16
    str x9, [x14, #16]
    adrp x15, _lb_text_615078781763@PAGE
    add x15, x15, _lb_text_615078781763@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x21, #0
    mov x22, #0
    movz w14, #1
    b Lcac9e5d4de66_3
Lcac9e5d4de66_7:
    ldr x21, [sp, #536]
    movz x22, #16, lsl #16
    mov w14, #0
Lcac9e5d4de66_3:
    cbz w14, Lcac9e5d4de66_8
Lcac9e5d4de66_9:
    movz x0, #1
    ldr x19, [sp, #680]
    ldr x20, [sp, #672]
    ldr x21, [sp, #664]
    ldr x22, [sp, #656]
    ldr x23, [sp, #648]
    ldr x24, [sp, #640]
    ldr x25, [sp, #632]
    ldr x26, [sp, #624]
    ldr x27, [sp, #616]
    ldr x28, [sp, #608]
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    ldr d12, [sp, #568]
    ldr d13, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcac9e5d4de66_8:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    movz x9, #1
    str w9, [sp, #544]
    ldrb w14, [sp, #544]
    cmp w14, #0
    movz x10, #6
    mov x11, #0
    csel w14, w10, w11, ne
    mov x0, x14
    sub x1, x29, #688
    bl _clock_gettime
    mov w14, w0
    ldr x14, [sp, #0]
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x14, x10
    mul x14, x14, x10
    cbnz x11, Lcac9e5d4de66_c1
    ldr x15, [sp, #8]
    adds x23, x14, x15
    b.cs Lcac9e5d4de66_c2
    mov x0, #0
    sub x8, x29, #216
    bl _lb_view_17working_to_output
    sub x10, x29, #216
    sub x11, x29, #288
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
    sub x10, x29, #288
    sub x11, x29, #216
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
    sub x10, x29, #216
    sub x11, x29, #576
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
    fmov d8, xzr
    fmov d9, #2.0000000
    fmov d24, #1.0000000
    fcvt h10, d24
    mov x24, #0
    .p2align 4
Lcac9e5d4de66_20:
    cmp x24, #64
    b.hs Lcac9e5d4de66_23
Lcac9e5d4de66_21:
    lsl x25, x24, #6
    mov x26, #0
    .p2align 4
Lcac9e5d4de66_24:
    cmp x26, #64
    b.hs Lcac9e5d4de66_27
Lcac9e5d4de66_25:
    lsl x14, x26, #6
    add x27, x25, x14, lsl #6
    mov x28, #0
    .p2align 4
Lcac9e5d4de66_28:
    cmp x28, #64
    b.hs Lcac9e5d4de66_31
Lcac9e5d4de66_29:
    ucvtf d24, x28
    movz x9, #63
    ucvtf d11, x9
    fdiv d24, d24, d11
    fmov d0, d24
    bl _lb_view_unshape
    fmov d12, d0
    ucvtf d24, x26
    fdiv d24, d24, d11
    fmov d0, d24
    bl _lb_view_unshape
    fmov d13, d0
    ucvtf d24, x24
    fdiv d24, d24, d11
    fmov d0, d24
    bl _lb_view_unshape
    fmov d24, d0
    str d12, [sp, #88]
    str d13, [sp, #96]
    str d24, [sp, #104]
    sub x11, x29, #672
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #16]
    str d9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    str d8, [sp, #48]
    str d8, [sp, #56]
    str d8, [sp, #64]
    str d8, [sp, #72]
    movz x9, #1
    strb w9, [sp, #80]
    sub x9, x29, #600
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    sub x9, x29, #576
    mov x1, x9
    mov x2, #0
    sub x9, x29, #672
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #168
    str d0, [x16, #0]
    sub x16, x29, #168
    str d1, [x16, #8]
    sub x16, x29, #168
    str d2, [x16, #16]
    ldr d24, [sp, #520]
    ldr d25, [sp, #528]
    ldr d26, [sp, #536]
    adds x14, x27, x28
    b.cs Lcac9e5d4de66_c3
    movz x10, #4
    umulh x11, x14, x10
    lsl x14, x14, #2
    cbnz x11, Lcac9e5d4de66_c4
    cmp x14, x22
    b.hs Lcac9e5d4de66_c5
    add x15, x21, x14, lsl #1
    fcvt h24, d24
    str h24, [x15]
    add x15, x14, #1
    cmp x15, x22
    b.hs Lcac9e5d4de66_c6
    add x15, x21, x15, lsl #1
    fcvt h24, d25
    str h24, [x15]
    adds x15, x14, #2
    b.cs Lcac9e5d4de66_c7
    cmp x15, x22
    b.hs Lcac9e5d4de66_c8
    add x15, x21, x15, lsl #1
    fcvt h24, d26
    str h24, [x15]
    adds x14, x14, #3
    b.cs Lcac9e5d4de66_c9
    cmp x14, x22
    b.hs Lcac9e5d4de66_c10
    add x14, x21, x14, lsl #1
    str h10, [x14]
    add x28, x28, #1
    b Lcac9e5d4de66_28
Lcac9e5d4de66_31:
    add x26, x26, #1
    b Lcac9e5d4de66_24
Lcac9e5d4de66_27:
    add x24, x24, #1
    b Lcac9e5d4de66_20
Lcac9e5d4de66_23:
    sub sp, x29, #1744
    sub x9, x29, #1744
    sub x16, x29, #720
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #712
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #704
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #696
    str x9, [x16]
    adrp x14, _lb_text_92bae067b170@PAGE
    add x14, x14, _lb_text_92bae067b170@PAGEOFF
    mov x1, x14
    sub x0, x29, #720
    movz x2, #16
    movz x3, #1
    bl _lb_core_10stream_put
    mov x9, #0
    str x9, [sp, #1056]
    mov x9, #0
    str x9, [sp, #1064]
    movz x9, #1
    str w9, [sp, #1600]
    ldrb w14, [sp, #1600]
    cmp w14, #0
    movz x10, #6
    mov x11, #0
    csel w14, w10, w11, ne
    mov x0, x14
    sub x1, x29, #688
    bl _clock_gettime
    mov w14, w0
    ldr x14, [sp, #1056]
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x14, x10
    mul x14, x14, x10
    cbnz x11, Lcac9e5d4de66_c11
    ldr x15, [sp, #1064]
    adds x14, x14, x15
    b.cs Lcac9e5d4de66_c12
    subs x14, x14, x23
    b.cc Lcac9e5d4de66_c13
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x14, x14, x10
    mov x1, x14
    sub x0, x29, #720
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, _lb_text_f3389760ea18@PAGE
    add x14, x14, _lb_text_f3389760ea18@PAGEOFF
    mov x1, x14
    sub x0, x29, #720
    movz x2, #3
    movz x3, #1
    bl _lb_core_10stream_put
    adrp x14, _lb_text_ec3c9fbe6361@PAGE
    add x14, x14, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x1, x14
    sub x0, x29, #720
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #720
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #688
    ldr d24, Lcac9e5d4de66_k0
    fmov d0, d24
    bl _lb_view_shape
    fmov d24, d0
    movz x9, #63
    ucvtf d25, x9
    fmul d24, d24, d25
    fmov d26, #0.5000000
    fadd d24, d24, d26
    fcvtzu x14, d24
    movz x10, #64
    umulh x11, x14, x10
    lsl x15, x14, #6
    cbnz x11, Lcac9e5d4de66_c14
    movz x10, #64
    umulh x11, x15, x10
    lsl x12, x15, #6
    cbnz x11, Lcac9e5d4de66_c15
    adds x15, x15, x12
    b.cs Lcac9e5d4de66_c16
    adds x15, x14, x15
    b.cs Lcac9e5d4de66_c17
    movz x10, #4
    umulh x11, x15, x10
    lsl x23, x15, #2
    cbnz x11, Lcac9e5d4de66_c18
    ucvtf d24, x14
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_view_unshape
    fmov d24, d0
    str d24, [sp, #376]
    str d24, [sp, #384]
    str d24, [sp, #392]
    mov x0, #0
    sub x8, x29, #200
    bl _lb_view_17working_to_output
    sub x10, x29, #200
    sub x11, x29, #272
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
    sub x10, x29, #272
    sub x11, x29, #384
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
    sub x11, x29, #456
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #232]
    str d9, [sp, #240]
    mov x9, #0
    str x9, [sp, #248]
    mov x9, #0
    str x9, [sp, #256]
    str d8, [sp, #264]
    str d8, [sp, #272]
    str d8, [sp, #280]
    str d8, [sp, #288]
    movz x9, #1
    strb w9, [sp, #296]
    sub x9, x29, #312
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    sub x9, x29, #384
    mov x1, x9
    mov x2, #0
    sub x9, x29, #456
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    ldr d24, [sp, #544]
    adds x14, x23, #1
    b.cs Lcac9e5d4de66_c19
    cmp x14, x22
    b.hs Lcac9e5d4de66_c20
    add x14, x21, x14, lsl #1
    ldr h25, [x14]
    fcvt d25, h25
    fsub d24, d25, d24
    fabs d24, d24
    ldr d25, Lcac9e5d4de66_k1
    fcmp d24, d25
    b.mi Lcac9e5d4de66_13
Lcac9e5d4de66_14:
    mov x9, #0
    str x9, [sp, #216]
    mov x9, #0
    str x9, [sp, #224]
    adrp x14, _lb_text_60313a1c8d61@PAGE
    add x14, x14, _lb_text_60313a1c8d61@PAGEOFF
    adrp x15, _lb_text_cce6213f29cf@PAGE
    add x15, x15, _lb_text_cce6213f29cf@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #472
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x23, x0
    sub x11, x29, #152
    ldp x16, x17, [x23, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x23, #16]
    str x16, [x11, #16]
    movz x10, #2
    umulh x11, x22, x10
    lsl x14, x22, #1
    cbnz x11, Lcac9e5d4de66_c21
    str x21, [sp, #200]
    str x14, [sp, #208]
    ldr x14, [x19]
    ldr x15, [x20]
    cbz x15, Lcac9e5d4de66_15
Lcac9e5d4de66_16:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #488
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lcac9e5d4de66_15:
    sub x10, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x23, #0]
    ldr x16, [x10, #16]
    str x16, [x23, #16]
    movz x0, #1
    ldr x19, [sp, #680]
    ldr x20, [sp, #672]
    ldr x21, [sp, #664]
    ldr x22, [sp, #656]
    ldr x23, [sp, #648]
    ldr x24, [sp, #640]
    ldr x25, [sp, #632]
    ldr x26, [sp, #624]
    ldr x27, [sp, #616]
    ldr x28, [sp, #608]
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    ldr d12, [sp, #568]
    ldr d13, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcac9e5d4de66_13:
    movz x10, #2
    umulh x11, x22, x10
    lsl x14, x22, #1
    cbnz x11, Lcac9e5d4de66_c22
    str x21, [sp, #184]
    str x14, [sp, #192]
    ldr x14, [x19]
    ldr x15, [x20]
    cbz x15, Lcac9e5d4de66_18
Lcac9e5d4de66_19:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #504
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lcac9e5d4de66_18:
    mov x0, #0
    ldr x19, [sp, #680]
    ldr x20, [sp, #672]
    ldr x21, [sp, #664]
    ldr x22, [sp, #656]
    ldr x23, [sp, #648]
    ldr x24, [sp, #640]
    ldr x25, [sp, #632]
    ldr x26, [sp, #624]
    ldr x27, [sp, #616]
    ldr x28, [sp, #608]
    ldr d8, [sp, #600]
    ldr d9, [sp, #592]
    ldr d10, [sp, #584]
    ldr d11, [sp, #576]
    ldr d12, [sp, #568]
    ldr d13, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcac9e5d4de66_5:
    adrp x0, _lb_text_615078781763@PAGE
    add x0, x0, _lb_text_615078781763@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c1:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c2:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c3:
    adrp x0, _lb_text_73afd8fc0934@PAGE
    add x0, x0, _lb_text_73afd8fc0934@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c4:
    adrp x0, _lb_text_73afd8fc0934@PAGE
    add x0, x0, _lb_text_73afd8fc0934@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c5:
    adrp x0, _lb_text_29fa48b35c28@PAGE
    add x0, x0, _lb_text_29fa48b35c28@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c6:
    adrp x0, _lb_text_12a95b574bc9@PAGE
    add x0, x0, _lb_text_12a95b574bc9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c7:
    adrp x0, _lb_text_df9ed0d834d5@PAGE
    add x0, x0, _lb_text_df9ed0d834d5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c8:
    adrp x0, _lb_text_df9ed0d834d5@PAGE
    add x0, x0, _lb_text_df9ed0d834d5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c9:
    adrp x0, _lb_text_ee8f2d7a0ea0@PAGE
    add x0, x0, _lb_text_ee8f2d7a0ea0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c10:
    adrp x0, _lb_text_ee8f2d7a0ea0@PAGE
    add x0, x0, _lb_text_ee8f2d7a0ea0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c11:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c12:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c13:
    adrp x0, _lb_text_aca6df9153a3@PAGE
    add x0, x0, _lb_text_aca6df9153a3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c14:
    adrp x0, _lb_text_9a84800afb48@PAGE
    add x0, x0, _lb_text_9a84800afb48@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c15:
    adrp x0, _lb_text_9a84800afb48@PAGE
    add x0, x0, _lb_text_9a84800afb48@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c16:
    adrp x0, _lb_text_9a84800afb48@PAGE
    add x0, x0, _lb_text_9a84800afb48@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c17:
    adrp x0, _lb_text_9a84800afb48@PAGE
    add x0, x0, _lb_text_9a84800afb48@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c18:
    adrp x0, _lb_text_9a84800afb48@PAGE
    add x0, x0, _lb_text_9a84800afb48@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c19:
    adrp x0, _lb_text_60313a1c8d61@PAGE
    add x0, x0, _lb_text_60313a1c8d61@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c20:
    adrp x0, _lb_text_60313a1c8d61@PAGE
    add x0, x0, _lb_text_60313a1c8d61@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c21:
    adrp x0, _lb_text_bae93870ab02@PAGE
    add x0, x0, _lb_text_bae93870ab02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lcac9e5d4de66_c22:
    adrp x0, _lb_text_bae93870ab02@PAGE
    add x0, x0, _lb_text_bae93870ab02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lcac9e5d4de66_k0:
    .quad 4595653203753948938
Lcac9e5d4de66_k1:
    .quad 4566758108544739836


    .p2align 2
    .globl _lb_time_now
_lb_time_now:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    movz x9, #1
    str w9, [sp, #16]
    ldrb w14, [sp, #16]
    cmp w14, #0
    movz x10, #6
    mov x11, #0
    csel w14, w10, w11, ne
    mov x0, x14
    sub x1, x29, #32
    bl _clock_gettime
    mov w14, w0
    ldr x14, [sp, #0]
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x14, x10
    mul x14, x14, x10
    cbnz x11, L0a1816694f05_c1
    ldr x15, [sp, #8]
    adds x14, x14, x15
    b.cs L0a1816694f05_c2
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0a1816694f05_c1:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a1816694f05_c2:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_17
_lb_test_17:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    str x19, [sp, #552]
    str x20, [sp, #544]
    str x21, [sp, #536]
    str x22, [sp, #528]
    str x23, [sp, #520]
    str x24, [sp, #512]
    str x25, [sp, #504]
    str x26, [sp, #496]
    str d8, [sp, #488]
    str d9, [sp, #480]
    str d10, [sp, #472]
    str d11, [sp, #464]
    str d12, [sp, #456]
    mov x0, #0
    sub x8, x29, #176
    bl _lb_view_17working_to_output
    sub x10, x29, #176
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
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    movz x9, #1
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    cmp w14, #0
    movz x10, #6
    mov x11, #0
    csel w14, w10, w11, ne
    mov x0, x14
    sub x1, x29, #560
    bl _clock_gettime
    mov w14, w0
    ldr x14, [sp, #0]
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x14, x10
    mul x14, x14, x10
    cbnz x11, Lfaf44bd73bbb_c1
    ldr x15, [sp, #8]
    adds x19, x14, x15
    b.cs Lfaf44bd73bbb_c2
    fmov d24, #1.0000000
    fmov d0, d24
    fmov d1, d24
    fmov d2, d24
    bl _lb_view_undisplay
    sub x16, x29, #344
    str d0, [x16, #0]
    sub x16, x29, #344
    str d1, [x16, #8]
    sub x16, x29, #344
    str d2, [x16, #16]
    fmov d8, xzr
    sub x11, x29, #416
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #144]
    fmov d9, #2.0000000
    str d9, [sp, #152]
    mov x9, #0
    str x9, [sp, #160]
    mov x9, #0
    str x9, [sp, #168]
    str d8, [sp, #176]
    str d8, [sp, #184]
    str d8, [sp, #192]
    str d8, [sp, #200]
    movz x9, #1
    strb w9, [sp, #208]
    sub x9, x29, #344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    sub x9, x29, #320
    mov x1, x9
    mov x2, #0
    sub x9, x29, #416
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #144
    str d0, [x16, #0]
    sub x16, x29, #144
    str d1, [x16, #8]
    sub x16, x29, #144
    str d2, [x16, #16]
    ldr d10, [sp, #416]
    ldr d11, [sp, #424]
    ldr d12, [sp, #432]
    sub sp, x29, #1616
    sub x9, x29, #1616
    sub x16, x29, #592
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #584
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #576
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #568
    str x9, [x16]
    adrp x14, _lb_text_5c43a0b168c9@PAGE
    add x14, x14, _lb_text_5c43a0b168c9@PAGEOFF
    mov x1, x14
    sub x0, x29, #592
    movz x2, #20
    movz x3, #1
    bl _lb_core_10stream_put
    mov x9, #0
    str x9, [sp, #1056]
    mov x9, #0
    str x9, [sp, #1064]
    movz x9, #1
    str w9, [sp, #1496]
    ldrb w14, [sp, #1496]
    cmp w14, #0
    movz x10, #6
    mov x11, #0
    csel w14, w10, w11, ne
    mov x0, x14
    sub x1, x29, #560
    bl _clock_gettime
    mov w14, w0
    ldr x14, [sp, #1056]
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x14, x10
    mul x14, x14, x10
    cbnz x11, Lfaf44bd73bbb_c3
    ldr x15, [sp, #1064]
    adds x14, x14, x15
    b.cs Lfaf44bd73bbb_c4
    subs x14, x14, x19
    b.cc Lfaf44bd73bbb_c5
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x14, x14, x10
    mov x1, x14
    sub x0, x29, #592
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, _lb_text_f3389760ea18@PAGE
    add x14, x14, _lb_text_f3389760ea18@PAGEOFF
    mov x1, x14
    sub x0, x29, #592
    movz x2, #3
    movz x3, #1
    bl _lb_core_10stream_put
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x1, x19
    sub x0, x29, #592
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #592
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #560
    ldr d24, Lfaf44bd73bbb_k0
    fcmp d10, d24
    b.le Lfaf44bd73bbb_4
Lfaf44bd73bbb_6:
    fcmp d11, d24
    b.le Lfaf44bd73bbb_4
Lfaf44bd73bbb_5:
    fcmp d12, d24
    b.gt Lfaf44bd73bbb_3
Lfaf44bd73bbb_4:
    mov x9, #0
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #136]
    adrp x14, _lb_text_f7836e8777c5@PAGE
    add x14, x14, _lb_text_f7836e8777c5@PAGEOFF
    adrp x15, _lb_text_2d57a36b28c6@PAGE
    add x15, x15, _lb_text_2d57a36b28c6@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #432
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #552]
    ldr x20, [sp, #544]
    ldr x21, [sp, #536]
    ldr x22, [sp, #528]
    ldr x23, [sp, #520]
    ldr x24, [sp, #512]
    ldr x25, [sp, #504]
    ldr x26, [sp, #496]
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lfaf44bd73bbb_3:
    ldr d10, Lfaf44bd73bbb_k1
    fmov d11, d8
    mov x20, #0
    .p2align 4
Lfaf44bd73bbb_8:
    cmp x20, #18
    b.hs Lfaf44bd73bbb_11
Lfaf44bd73bbb_9:
    movz x10, #15
    mul x21, x20, x10
    mov x22, #0
    .p2align 4
Lfaf44bd73bbb_12:
    cmp x22, #18
    b.hs Lfaf44bd73bbb_15
Lfaf44bd73bbb_13:
    movz x10, #15
    mul x23, x22, x10
    mov x24, #0
    .p2align 4
Lfaf44bd73bbb_16:
    cmp x24, #18
    b.hs Lfaf44bd73bbb_19
Lfaf44bd73bbb_17:
    ucvtf d24, x21
    fdiv d24, d24, d10
    ucvtf d25, x23
    fdiv d25, d25, d10
    movz x10, #15
    mul x14, x24, x10
    ucvtf d26, x14
    fdiv d26, d26, d10
    str d24, [sp, #432]
    str d25, [sp, #440]
    str d26, [sp, #448]
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    bl _lb_view_undisplay
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    sub x10, x29, #152
    sub x11, x29, #456
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x11, x29, #528
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #32]
    str d9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    str d8, [sp, #64]
    str d8, [sp, #72]
    str d8, [sp, #80]
    str d8, [sp, #88]
    movz x9, #1
    strb w9, [sp, #96]
    sub x9, x29, #456
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    sub x9, x29, #320
    mov x1, x9
    mov x2, #0
    sub x9, x29, #528
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x10, x29, #200
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x25, #0
    .p2align 4
Lfaf44bd73bbb_20:
    cmp x25, #3
    b.hs Lfaf44bd73bbb_23
Lfaf44bd73bbb_21:
    lsl x26, x25, #3
    sub x11, x29, #176
    ldr d24, [x26, x11]
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_encode
    fmov d24, d0
    sub x11, x29, #128
    ldr d25, [x26, x11]
    fsub d24, d24, d25
    fabs d24, d24
    fmul d24, d24, d10
    fmov x14, d11
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lfaf44bd73bbb_46
Lfaf44bd73bbb_45:
    b Lfaf44bd73bbb_66
Lfaf44bd73bbb_46:
Lfaf44bd73bbb_47:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lfaf44bd73bbb_50
Lfaf44bd73bbb_49:
    fmov d11, d24
    b Lfaf44bd73bbb_66
Lfaf44bd73bbb_50:
Lfaf44bd73bbb_51:
    fcmp d8, d11
    b.ne Lfaf44bd73bbb_54
Lfaf44bd73bbb_56:
    fcmp d24, d8
    b.ne Lfaf44bd73bbb_54
Lfaf44bd73bbb_53:
    and x14, x14, x15
    fmov d11, x14
    b Lfaf44bd73bbb_66
Lfaf44bd73bbb_54:
Lfaf44bd73bbb_55:
    fcmp d11, d24
    fcsel d11, d11, d24, gt
Lfaf44bd73bbb_66:
    add x25, x25, #1
    b Lfaf44bd73bbb_20
Lfaf44bd73bbb_23:
    add x24, x24, #1
    b Lfaf44bd73bbb_16
Lfaf44bd73bbb_19:
    add x22, x22, #1
    b Lfaf44bd73bbb_12
Lfaf44bd73bbb_15:
    add x20, x20, #1
    b Lfaf44bd73bbb_8
Lfaf44bd73bbb_11:
    sub sp, x29, #1616
    sub x9, x29, #1616
    sub x16, x29, #592
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #584
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #576
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #568
    str x9, [x16]
    adrp x14, _lb_text_23157ae5e934@PAGE
    add x14, x14, _lb_text_23157ae5e934@PAGEOFF
    mov x1, x14
    sub x0, x29, #592
    movz x2, #31
    movz x3, #1
    bl _lb_core_10stream_put
    fmov d0, d11
    sub x0, x29, #592
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_2f8641bbbafd@PAGE
    add x14, x14, _lb_text_2f8641bbbafd@PAGEOFF
    mov x1, x14
    sub x0, x29, #592
    movz x2, #7
    movz x3, #1
    bl _lb_core_10stream_put
    mov x1, x19
    sub x0, x29, #592
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #592
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #560
    fmov d24, #0.5000000
    fcmp d11, d24
    b.mi Lfaf44bd73bbb_24
Lfaf44bd73bbb_25:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_ffdc8f93af8e@PAGE
    add x14, x14, _lb_text_ffdc8f93af8e@PAGEOFF
    adrp x15, _lb_text_67d5b1f7f5bb@PAGE
    add x15, x15, _lb_text_67d5b1f7f5bb@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #544
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #552]
    ldr x20, [sp, #544]
    ldr x21, [sp, #536]
    ldr x22, [sp, #528]
    ldr x23, [sp, #520]
    ldr x24, [sp, #512]
    ldr x25, [sp, #504]
    ldr x26, [sp, #496]
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lfaf44bd73bbb_24:
    mov x0, #0
    ldr x19, [sp, #552]
    ldr x20, [sp, #544]
    ldr x21, [sp, #536]
    ldr x22, [sp, #528]
    ldr x23, [sp, #520]
    ldr x24, [sp, #512]
    ldr x25, [sp, #504]
    ldr x26, [sp, #496]
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lfaf44bd73bbb_c1:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lfaf44bd73bbb_c2:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lfaf44bd73bbb_c3:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lfaf44bd73bbb_c4:
    adrp x0, _lb_text_4d69ffbc7164@PAGE
    add x0, x0, _lb_text_4d69ffbc7164@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lfaf44bd73bbb_c5:
    adrp x0, _lb_text_e0a5f2cad081@PAGE
    add x0, x0, _lb_text_e0a5f2cad081@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lfaf44bd73bbb_k0:
    .quad 4607164404401507926
Lfaf44bd73bbb_k1:
    .quad 4643176031446892544


    .p2align 2
    .globl _lb_view_undisplay
_lb_view_undisplay:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    str x23, [sp, #136]
    str x24, [sp, #128]
    str x25, [sp, #120]
    str x26, [sp, #112]
    str x27, [sp, #104]
    str d8, [sp, #96]
    str d9, [sp, #88]
    str d10, [sp, #80]
    str d11, [sp, #72]
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
    adrp x14, _lb_view_12inverse_once@PAGE
    add x14, x14, _lb_view_12inverse_once@PAGEOFF
    adrp x15, _lb_view_13build_inverse@GOTPAGE
    ldr x15, [x15, _lb_view_13build_inverse@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    movz x9, #128
    ucvtf d24, x9
    fmov d25, xzr
    fmov d11, #1.0000000
    fcmp d25, d11
    cset w14, ls
    cbz w14, La39626aa26e9_26
La39626aa26e9_25:
    fmov x15, d8
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls La39626aa26e9_28
La39626aa26e9_27:
    b La39626aa26e9_40
La39626aa26e9_28:
La39626aa26e9_29:
    fcmp d8, d25
    cset w15, mi
    fcmp d8, d11
    fcsel d26, d11, d8, gt
    cmp w15, #0
    fcsel d26, d25, d26, ne
    fmov d8, d26
La39626aa26e9_40:
    fmul d26, d24, d8
    cbz w14, La39626aa26e9_42
La39626aa26e9_41:
    fmov x15, d9
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls La39626aa26e9_44
La39626aa26e9_43:
    b La39626aa26e9_56
La39626aa26e9_44:
La39626aa26e9_45:
    fcmp d9, d25
    cset w15, mi
    fcmp d9, d11
    fcsel d27, d11, d9, gt
    cmp w15, #0
    fcsel d27, d25, d27, ne
    fmov d9, d27
La39626aa26e9_56:
    fmul d27, d24, d9
    cbz w14, La39626aa26e9_58
La39626aa26e9_57:
    fmov x14, d10
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls La39626aa26e9_60
La39626aa26e9_59:
    b La39626aa26e9_72
La39626aa26e9_60:
La39626aa26e9_61:
    fcmp d10, d25
    cset w14, mi
    fcmp d10, d11
    fcsel d28, d11, d10, gt
    cmp w14, #0
    fcsel d25, d25, d28, ne
    fmov d10, d25
La39626aa26e9_72:
    fmul d24, d24, d10
    fcvtzu x14, d26
    cmp x14, #128
    movz x11, #127
    csel x14, x14, x11, lo
    fcvtzu x15, d27
    cmp x15, #128
    movz x11, #127
    csel x15, x15, x11, lo
    fcvtzu x12, d24
    cmp x12, #128
    movz x11, #127
    csel x12, x12, x11, lo
    ucvtf d25, x14
    fsub d25, d26, d25
    ucvtf d26, x15
    fsub d26, d27, d26
    ucvtf d27, x12
    fsub d24, d24, d27
    movz x9, #1
    str x9, [sp, #48]
    movz x9, #129
    str x9, [sp, #56]
    movz x9, #16641
    str x9, [sp, #64]
    str d25, [sp, #24]
    str d26, [sp, #32]
    str d24, [sp, #40]
    mov x13, #0
La39626aa26e9_1:
    cmp x13, #2
    b.hs La39626aa26e9_4
    .p2align 4
La39626aa26e9_2:
    movz x9, #2
    sub x7, x9, x13
    mov x6, #0
La39626aa26e9_5:
    cmp x6, x7
    b.hs La39626aa26e9_8
    .p2align 4
La39626aa26e9_6:
    movz x10, #3
    cmp x6, x10
    b.hs La39626aa26e9_c1
    lsl x5, x6, #3
    sub x9, x29, #152
    add x4, x9, x5
    ldr d24, [x4]
    add x6, x6, #1
    movz x10, #3
    cmp x6, x10
    b.hs La39626aa26e9_c2
    lsl x3, x6, #3
    ldr d25, [x4, #8]
    fcmp d24, d25
    b.pl La39626aa26e9_10
La39626aa26e9_9:
    str d25, [x4]
    str d24, [x4, #8]
    sub x9, x29, #128
    add x5, x9, x5
    ldr x4, [x5]
    sub x9, x29, #128
    add x3, x9, x3
    ldr x2, [x3]
    str x2, [x5]
    str x4, [x3]
La39626aa26e9_10:
La39626aa26e9_11:
    cmp x6, x7
    b.lo La39626aa26e9_6
La39626aa26e9_8:
    add x13, x13, #1
    cmp x13, #2
    b.lo La39626aa26e9_2
La39626aa26e9_4:
    movz x10, #129
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, La39626aa26e9_c3
    adds x15, x12, x15
    b.cs La39626aa26e9_c4
    movz x10, #129
    umulh x11, x15, x10
    mul x15, x15, x10
    cbnz x11, La39626aa26e9_c5
    adds x19, x15, x14
    b.cs La39626aa26e9_c6
    ldr x14, [sp, #48]
    adds x20, x14, x19
    b.cs La39626aa26e9_c7
    ldr x14, [sp, #56]
    adds x21, x14, x20
    b.cs La39626aa26e9_c8
    ldr x14, [sp, #64]
    adds x22, x14, x21
    b.cs La39626aa26e9_c9
    sub x11, x29, #128
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    adrp x23, _lb_view_13inverse_table@PAGE
    add x23, x23, _lb_view_13inverse_table@PAGEOFF
    add x24, x23, #8
    fmov d8, #0.5000000
    adrp x25, _lb_view_13squeeze_scale@PAGE
    add x25, x25, _lb_view_13squeeze_scale@PAGEOFF
    mov x26, #0
La39626aa26e9_12:
    cmp x26, #3
    b.hs La39626aa26e9_15
    .p2align 4
La39626aa26e9_13:
    movz x10, #3
    umulh x11, x19, x10
    add x14, x19, x19, lsl #1
    cbnz x11, La39626aa26e9_c10
    adds x14, x14, x26
    b.cs La39626aa26e9_c11
    ldr x15, [x23]
    ldr x12, [x24]
    cmp x14, x12
    b.hs La39626aa26e9_c12
    ldr s24, [x15, x14, lsl #2]
    fcvt d24, s24
    movz x10, #3
    umulh x11, x20, x10
    add x14, x20, x20, lsl #1
    cbnz x11, La39626aa26e9_c13
    adds x14, x14, x26
    b.cs La39626aa26e9_c14
    cmp x14, x12
    b.hs La39626aa26e9_c15
    ldr s25, [x15, x14, lsl #2]
    fcvt d25, s25
    movz x10, #3
    umulh x11, x21, x10
    add x14, x21, x21, lsl #1
    cbnz x11, La39626aa26e9_c16
    adds x14, x14, x26
    b.cs La39626aa26e9_c17
    cmp x14, x12
    b.hs La39626aa26e9_c18
    ldr s26, [x15, x14, lsl #2]
    fcvt d26, s26
    movz x10, #3
    umulh x11, x22, x10
    add x14, x22, x22, lsl #1
    cbnz x11, La39626aa26e9_c19
    adds x14, x14, x26
    b.cs La39626aa26e9_c20
    cmp x14, x12
    b.hs La39626aa26e9_c21
    ldr s27, [x15, x14, lsl #2]
    fcvt d27, s27
    sub x9, x29, #128
    add x27, x9, x26, lsl #3
    fsub d28, d25, d24
    ldr d29, [sp, #24]
    fmul d28, d28, d29
    fadd d24, d24, d28
    fsub d25, d26, d25
    ldr d28, [sp, #32]
    fmul d25, d25, d28
    fadd d24, d24, d25
    fsub d25, d27, d26
    ldr d26, [sp, #40]
    fmul d25, d25, d26
    fadd d9, d24, d25
    fabs d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fdiv d25, d11, d24
    fsub d24, d24, d25
    fmul d24, d24, d8
    fmov x14, d24
    and x14, x14, #9223372036854775807
    fmov x15, d9
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    ldr d25, [x25]
    fdiv d24, d24, d25
    str d24, [x27]
    add x26, x26, #1
    cmp x26, #3
    b.lo La39626aa26e9_13
La39626aa26e9_15:
    sub x10, x29, #128
    sub x11, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #176
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr d8, [sp, #96]
    ldr d9, [sp, #88]
    ldr d10, [sp, #80]
    ldr d11, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La39626aa26e9_26:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_42:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_58:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c1:
    adrp x0, _lb_text_e37941890931@PAGE
    add x0, x0, _lb_text_e37941890931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c2:
    adrp x0, _lb_text_e37941890931@PAGE
    add x0, x0, _lb_text_e37941890931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c3:
    adrp x0, _lb_text_47a052dcad4c@PAGE
    add x0, x0, _lb_text_47a052dcad4c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c4:
    adrp x0, _lb_text_47a052dcad4c@PAGE
    add x0, x0, _lb_text_47a052dcad4c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c5:
    adrp x0, _lb_text_47a052dcad4c@PAGE
    add x0, x0, _lb_text_47a052dcad4c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c6:
    adrp x0, _lb_text_47a052dcad4c@PAGE
    add x0, x0, _lb_text_47a052dcad4c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c7:
    adrp x0, _lb_text_7991e8ab9ec3@PAGE
    add x0, x0, _lb_text_7991e8ab9ec3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c8:
    adrp x0, _lb_text_03ec970bd0fc@PAGE
    add x0, x0, _lb_text_03ec970bd0fc@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c9:
    adrp x0, _lb_text_2e3f6e7403a6@PAGE
    add x0, x0, _lb_text_2e3f6e7403a6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c10:
    adrp x0, _lb_text_849146f724ed@PAGE
    add x0, x0, _lb_text_849146f724ed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c11:
    adrp x0, _lb_text_849146f724ed@PAGE
    add x0, x0, _lb_text_849146f724ed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c12:
    adrp x0, _lb_text_849146f724ed@PAGE
    add x0, x0, _lb_text_849146f724ed@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c13:
    adrp x0, _lb_text_002f7ed01941@PAGE
    add x0, x0, _lb_text_002f7ed01941@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c14:
    adrp x0, _lb_text_002f7ed01941@PAGE
    add x0, x0, _lb_text_002f7ed01941@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c15:
    adrp x0, _lb_text_002f7ed01941@PAGE
    add x0, x0, _lb_text_002f7ed01941@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c16:
    adrp x0, _lb_text_7f48c023cb4b@PAGE
    add x0, x0, _lb_text_7f48c023cb4b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c17:
    adrp x0, _lb_text_7f48c023cb4b@PAGE
    add x0, x0, _lb_text_7f48c023cb4b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c18:
    adrp x0, _lb_text_7f48c023cb4b@PAGE
    add x0, x0, _lb_text_7f48c023cb4b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c19:
    adrp x0, _lb_text_3e2bcd87394d@PAGE
    add x0, x0, _lb_text_3e2bcd87394d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c20:
    adrp x0, _lb_text_3e2bcd87394d@PAGE
    add x0, x0, _lb_text_3e2bcd87394d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La39626aa26e9_c21:
    adrp x0, _lb_text_3e2bcd87394d@PAGE
    add x0, x0, _lb_text_3e2bcd87394d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_19luce_color_transfer_11srgb_encode
_lb_19luce_color_transfer_11srgb_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    str d9, [sp, #0]
    fmov d8, d0
    fabs d24, d8
    ldr d25, L7b719d998cc4_k0
    fcmp d24, d25
    b.hi L7b719d998cc4_2
L7b719d998cc4_1:
    ldr d25, L7b719d998cc4_k1
    fmul d24, d25, d24
    b L7b719d998cc4_3
L7b719d998cc4_2:
    ldr d9, L7b719d998cc4_k2
    fmov d25, #1.0000000
    ldr d26, L7b719d998cc4_k3
    fdiv d25, d25, d26
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d24, d9
    ldr d25, L7b719d998cc4_k4
    fsub d24, d24, d25
L7b719d998cc4_3:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    fmov x15, d8
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #8]
    ldr d9, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7b719d998cc4_k0:
    .quad 4569365555819558681
L7b719d998cc4_k1:
    .quad 4623462931452961751
L7b719d998cc4_k2:
    .quad 4607430116779522785
L7b719d998cc4_k3:
    .quad 4612586738352862003
L7b719d998cc4_k4:
    .quad 4588087156379966505


    .p2align 2
    .globl _lb_view_13build_inverse
_lb_view_13build_inverse:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    adrp x14, _lb_view_9aces_once@PAGE
    add x14, x14, _lb_view_9aces_once@PAGEOFF
    adrp x15, _lb_view_10build_aces@GOTPAGE
    ldr x15, [x15, _lb_view_10build_aces@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x19, _lb_view_13inverse_table@PAGE
    add x19, x19, _lb_view_13inverse_table@PAGEOFF
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L30f4a0cf5793_7
L30f4a0cf5793_6:
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #4620
    movk x1, #393, lsl #16
    movz x2, #4
    sub x8, x29, #56
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #104]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, L30f4a0cf5793_9
L30f4a0cf5793_8:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, _lb_text_84bd464090c2@PAGE
    add x15, x15, _lb_text_84bd464090c2@PAGEOFF
    str x15, [x14, #8]
    movz x9, #16
    str x9, [x14, #16]
    adrp x15, _lb_text_cb67e54b7bd3@PAGE
    add x15, x15, _lb_text_cb67e54b7bd3@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b L30f4a0cf5793_5
L30f4a0cf5793_9:
    ldr x14, [sp, #88]
    movz x15, #17539
    movk x15, #98, lsl #16
    mov w12, #0
L30f4a0cf5793_5:
    cbz w12, L30f4a0cf5793_10
L30f4a0cf5793_11:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x11, x29, #80
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b L30f4a0cf5793_1
L30f4a0cf5793_10:
    b L30f4a0cf5793_2
L30f4a0cf5793_1:
    adrp x14, _lb_text_6f63183b7a02@PAGE
    add x14, x14, _lb_text_6f63183b7a02@PAGEOFF
    str x14, [sp, #48]
    movz x9, #45
    str x9, [sp, #56]
    adrp x14, _lb_text_9832774f6568@PAGE
    add x14, x14, _lb_text_9832774f6568@PAGEOFF
    mov x0, x14
    sub x9, x29, #96
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    sub x9, x29, #72
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
    mov x14, #0
    mov x15, #0
L30f4a0cf5793_2:
    str x14, [x19]
    str x15, [x19, #8]
    adrp x20, _lb_view_15inverse_decoded@PAGE
    add x20, x20, _lb_view_15inverse_decoded@PAGEOFF
    mov x21, #0
L30f4a0cf5793_12:
    cmp x21, #129
    b.hs L30f4a0cf5793_15
    .p2align 4
L30f4a0cf5793_13:
    add x22, x20, x21, lsl #3
    ucvtf d24, x21
    movz x9, #128
    ucvtf d25, x9
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_decode
    fmov d24, d0
    str d24, [x22]
    add x21, x21, #1
    cmp x21, #129
    b.lo L30f4a0cf5793_13
L30f4a0cf5793_15:
    adrp x14, _lb_view_19build_inverse_slice@GOTPAGE
    ldr x14, [x14, _lb_view_19build_inverse_slice@GOTPAGEOFF]
    mov x1, x19
    mov x2, x14
    movz x0, #129
    mov x3, #0
    bl _lb_17luce_std_parallel_8for_each
    mov w14, w0
    cbz w14, L30f4a0cf5793_18
L30f4a0cf5793_19:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_2cfe4e8b7dfa@PAGE
    add x15, x15, _lb_text_2cfe4e8b7dfa@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    sub x11, x29, #120
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b L30f4a0cf5793_16
L30f4a0cf5793_18:
    b L30f4a0cf5793_17
L30f4a0cf5793_16:
    adrp x14, _lb_text_36e8664b4af4@PAGE
    add x14, x14, _lb_text_36e8664b4af4@PAGEOFF
    str x14, [sp, #8]
    movz x9, #41
    str x9, [sp, #16]
    adrp x14, _lb_text_fff055ee1607@PAGE
    add x14, x14, _lb_text_fff055ee1607@PAGEOFF
    mov x0, x14
    sub x9, x29, #136
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    sub x9, x29, #112
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
L30f4a0cf5793_17:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30f4a0cf5793_7:
    adrp x0, _lb_text_cb67e54b7bd3@PAGE
    add x0, x0, _lb_text_cb67e54b7bd3@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_view_7cell_of
_lb_view_7cell_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    mov x14, x0
    fcvtzu x15, d24
    subs x12, x14, #1
    b.cc L9a12d196cefc_c1
    cmp x15, x12
    b.hs L9a12d196cefc_2
L9a12d196cefc_1:
    b L9a12d196cefc_3
L9a12d196cefc_2:
    subs x15, x14, #2
    b.cc L9a12d196cefc_c2
L9a12d196cefc_3:
    mov x0, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9a12d196cefc_c1:
    adrp x0, _lb_text_05bfac131942@PAGE
    add x0, x0, _lb_text_05bfac131942@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9a12d196cefc_c2:
    adrp x0, _lb_text_05bfac131942@PAGE
    add x0, x0, _lb_text_05bfac131942@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_19luce_color_transfer_11srgb_decode
_lb_19luce_color_transfer_11srgb_decode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    fabs d24, d8
    ldr d25, L55fd4db01b67_k0
    fcmp d24, d25
    b.hi L55fd4db01b67_2
L55fd4db01b67_1:
    ldr d25, L55fd4db01b67_k1
    fdiv d24, d24, d25
    b L55fd4db01b67_3
L55fd4db01b67_2:
    ldr d25, L55fd4db01b67_k2
    fadd d24, d25, d24
    ldr d25, L55fd4db01b67_k3
    fdiv d24, d24, d25
    ldr d25, L55fd4db01b67_k4
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
L55fd4db01b67_3:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    fmov x15, d8
    and x15, x15, #9223372036854775808
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L55fd4db01b67_k0:
    .quad 4585990280393462802
L55fd4db01b67_k1:
    .quad 4623462931452961751
L55fd4db01b67_k2:
    .quad 4588087156379966505
L55fd4db01b67_k3:
    .quad 4607430116779522785
L55fd4db01b67_k4:
    .quad 4612586738352862003


    .p2align 2
    .globl _lb_view_19build_inverse_slice
_lb_view_19build_inverse_slice:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    str x19, [sp, #376]
    str x20, [sp, #368]
    str x21, [sp, #360]
    str x22, [sp, #352]
    str x23, [sp, #344]
    str x24, [sp, #336]
    str x25, [sp, #328]
    str x26, [sp, #320]
    str x27, [sp, #312]
    str x28, [sp, #304]
    str d8, [sp, #296]
    str d9, [sp, #288]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x2, [x16]
    mov x19, x1
    adrp x20, _lb_view_8aces_sdr@PAGE
    add x20, x20, _lb_view_8aces_sdr@PAGEOFF
    adrp x21, _lb_view_15inverse_decoded@PAGE
    add x21, x21, _lb_view_15inverse_decoded@PAGEOFF
    add x22, x21, x19, lsl #3
    sub x9, x29, #384
    add x23, x9, #8
    sub x9, x29, #384
    add x24, x9, #16
    movz x10, #15312
    add x25, x20, x10
    add x26, x19, x19, lsl #7
    adrp x27, _lb_view_13inverse_table@PAGE
    add x27, x27, _lb_view_13inverse_table@PAGEOFF
    add x28, x27, #8
    adrp x14, _lb_view_9aces_lift@PAGE
    add x14, x14, _lb_view_9aces_lift@PAGEOFF
    adrp x15, _lb_view_13squeeze_scale@PAGE
    add x15, x15, _lb_view_13squeeze_scale@PAGEOFF
    fmov d8, #1.0000000
    mov x12, #0
Lad8ba4996bdc_1:
    cmp x12, #129
    b.hs Lad8ba4996bdc_4
    .p2align 4
Lad8ba4996bdc_2:
    add x13, x21, x12, lsl #3
    add x7, x26, x12
    mov x6, #0
Lad8ba4996bdc_5:
    cmp x6, #129
    b.hs Lad8ba4996bdc_8
    .p2align 4
Lad8ba4996bdc_6:
    ldr d24, [x21, x6, lsl #3]
    ldr d25, [x13]
    movz x10, #129
    cmp x19, x10
    b.hs Lad8ba4996bdc_c1
    ldr d26, [x22]
    str d24, [sp, #0]
    str d25, [x23]
    str d26, [x24]
    sub x11, x29, #224
    ldp x16, x17, [x25, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x25, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x25, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x25, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x25, #64]
    str x16, [x11, #64]
    str x14, [sp, #256]
    str x15, [sp, #152]
    str x12, [sp, #72]
    str x13, [sp, #64]
    str x7, [sp, #56]
    str x6, [sp, #48]
    sub x9, x29, #384
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x20
    bl _lb_15luce_color_aces_OutputTransform_invert
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    ldr x14, [sp, #256]
    ldr x15, [sp, #152]
    ldr x12, [sp, #72]
    ldr x13, [sp, #64]
    ldr x7, [sp, #56]
    ldr x6, [sp, #48]
    sub x10, x29, #224
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
    ldr d24, [sp, #264]
    ldr d25, [sp, #272]
    ldr d26, [sp, #280]
    ldr d27, [sp, #80]
    fmul d27, d27, d24
    ldr d28, [sp, #88]
    fmul d28, d28, d25
    fadd d27, d27, d28
    ldr d28, [sp, #96]
    fmul d28, d28, d26
    fadd d27, d27, d28
    ldr d28, [sp, #104]
    fmul d28, d28, d24
    ldr d29, [sp, #112]
    fmul d29, d29, d25
    fadd d28, d28, d29
    ldr d29, [sp, #120]
    fmul d29, d29, d26
    fadd d28, d28, d29
    ldr d29, [sp, #128]
    fmul d24, d29, d24
    ldr d29, [sp, #136]
    fmul d25, d29, d25
    fadd d24, d24, d25
    ldr d25, [sp, #144]
    fmul d25, d25, d26
    fadd d24, d24, d25
Lad8ba4996bdc_14:
    str d27, [sp, #232]
    str d28, [sp, #240]
    str d24, [sp, #248]
    movz x10, #129
    umulh x11, x7, x10
    mul x5, x7, x10
    cbnz x11, Lad8ba4996bdc_c2
    adds x5, x5, x6
    b.cs Lad8ba4996bdc_c3
    movz x10, #3
    umulh x11, x5, x10
    add x5, x5, x5, lsl #1
    cbnz x11, Lad8ba4996bdc_c4
    mov x4, #0
Lad8ba4996bdc_9:
    cmp x4, #3
    b.hs Lad8ba4996bdc_12
    .p2align 4
Lad8ba4996bdc_10:
    adds x3, x5, x4
    b.cs Lad8ba4996bdc_c5
    ldr x2, [x27]
    ldr x1, [x28]
    cmp x3, x1
    b.hs Lad8ba4996bdc_c6
    add x3, x2, x3, lsl #2
    sub x10, x29, #152
    ldr d24, [x10, x4, lsl #3]
    ldr d25, [x14]
    fdiv d24, d24, d25
    ldr d25, [x15]
    fmul d9, d24, d25
    fabs d24, d9
    fmul d25, d9, d9
    fadd d25, d25, d8
    fsqrt d25, d25
    fadd d24, d24, d25
    str x14, [sp, #256]
    str x15, [sp, #152]
    str x12, [sp, #72]
    str x13, [sp, #64]
    str x7, [sp, #56]
    str x6, [sp, #48]
    str x5, [sp, #40]
    str x4, [sp, #32]
    str x3, [sp, #24]
    fmov d0, d24
    bl _lb_13luce_std_math_9log_value
    fmov d24, d0
    ldr x14, [sp, #256]
    ldr x15, [sp, #152]
    ldr x12, [sp, #72]
    ldr x13, [sp, #64]
    ldr x7, [sp, #56]
    ldr x6, [sp, #48]
    ldr x5, [sp, #40]
    ldr x4, [sp, #32]
    ldr x3, [sp, #24]
    fmov x2, d24
    and x2, x2, #9223372036854775807
    fmov x1, d9
    and x1, x1, #9223372036854775808
    orr x2, x2, x1
    fmov d24, x2
Lad8ba4996bdc_24:
    fcvt s24, d24
    str s24, [x3]
    add x4, x4, #1
    cmp x4, #3
    b.lo Lad8ba4996bdc_10
Lad8ba4996bdc_12:
    add x6, x6, #1
    cmp x6, #129
    b.lo Lad8ba4996bdc_6
Lad8ba4996bdc_8:
    add x12, x12, #1
    cmp x12, #129
    b.lo Lad8ba4996bdc_2
Lad8ba4996bdc_4:
    mov x0, #0
    ldr x19, [sp, #376]
    ldr x20, [sp, #368]
    ldr x21, [sp, #360]
    ldr x22, [sp, #352]
    ldr x23, [sp, #344]
    ldr x24, [sp, #336]
    ldr x25, [sp, #328]
    ldr x26, [sp, #320]
    ldr x27, [sp, #312]
    ldr x28, [sp, #304]
    ldr d8, [sp, #296]
    ldr d9, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lad8ba4996bdc_c1:
    adrp x0, _lb_text_bffc6ba40cfb@PAGE
    add x0, x0, _lb_text_bffc6ba40cfb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lad8ba4996bdc_c2:
    adrp x0, _lb_text_7e58127eed3a@PAGE
    add x0, x0, _lb_text_7e58127eed3a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lad8ba4996bdc_c3:
    adrp x0, _lb_text_7e58127eed3a@PAGE
    add x0, x0, _lb_text_7e58127eed3a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lad8ba4996bdc_c4:
    adrp x0, _lb_text_7e58127eed3a@PAGE
    add x0, x0, _lb_text_7e58127eed3a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lad8ba4996bdc_c5:
    adrp x0, _lb_text_91c8e434883f@PAGE
    add x0, x0, _lb_text_91c8e434883f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lad8ba4996bdc_c6:
    adrp x0, _lb_text_91c8e434883f@PAGE
    add x0, x0, _lb_text_91c8e434883f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_17luce_std_parallel_8for_each
_lb_17luce_std_parallel_8for_each:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1312
    str x19, [sp, #1304]
    str x20, [sp, #1296]
    str x21, [sp, #1288]
    str x22, [sp, #1280]
    mov x19, x0
    mov x20, x1
    mov x21, x2
    mov x22, x3
    cmp x19, #0
    b.ne L0a0e82ae419a_2
L0a0e82ae419a_1:
    mov x0, #0
    ldr x19, [sp, #1304]
    ldr x20, [sp, #1296]
    ldr x21, [sp, #1288]
    ldr x22, [sp, #1280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0a0e82ae419a_2:
L0a0e82ae419a_3:
    sub x0, x29, #664
    mov x1, #0
    movz x2, #632
    bl _memset
    str x20, [sp, #648]
    str x21, [sp, #656]
    str x19, [sp, #664]
    mov x0, x19
    mov x1, x22
    bl _lb_17luce_std_parallel_workers
    mov x19, x0
    str x19, [sp, #1232]
    movz x9, #1
    str x9, [sp, #1240]
    sub x10, x29, #664
    sub x0, x29, #1296
    mov x1, x10
    movz x2, #632
    bl _memcpy
    cmp x19, #1
    cset w14, hi
    cbnz w14, L0a0e82ae419a_5
L0a0e82ae419a_15:
    b L0a0e82ae419a_6
L0a0e82ae419a_5:
    sub x0, x29, #1296
    bl _lb_17luce_std_parallel_post
    mov w14, w0
L0a0e82ae419a_6:
    and w19, w14, #255
    sub x0, x29, #1296
    mov x1, #0
    bl _lb_17luce_std_parallel_7work_on
    cbz w19, L0a0e82ae419a_8
L0a0e82ae419a_7:
    sub x0, x29, #1296
    bl _lb_17luce_std_parallel_finish
L0a0e82ae419a_8:
L0a0e82ae419a_9:
    ldrb w14, [sp, #68]
    cbz w14, L0a0e82ae419a_11
L0a0e82ae419a_13:
    ldr w19, [sp, #64]
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    sub x9, x29, #728
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #1312
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x20, x0
    mov x21, x1
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    str x21, [x14, #16]
    adrp x15, _lb_text_c9ec546e7c11@PAGE
    add x15, x15, _lb_text_c9ec546e7c11@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #1304]
    ldr x20, [sp, #1296]
    ldr x21, [sp, #1288]
    ldr x22, [sp, #1280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0a0e82ae419a_11:
L0a0e82ae419a_12:
    mov x0, #0
    ldr x19, [sp, #1304]
    ldr x20, [sp, #1296]
    ldr x21, [sp, #1288]
    ldr x22, [sp, #1280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_workers
_lb_17luce_std_parallel_workers:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    str x20, [sp, #16]
    str x21, [sp, #8]
    mov x19, x0
    mov x20, x1
    adrp x21, _lb_17luce_std_parallel_width@PAGE
    add x21, x21, _lb_17luce_std_parallel_width@PAGEOFF
    ldr x14, [x21]
    cmp x14, #0
    b.ne L208443015e77_2
L208443015e77_1:
    movz x0, #58
    bl _sysconf
    mov x14, x0
    cmp x14, #0
    movz x11, #1
    csel w14, w14, w11, gt
    mov w14, w14
    cmp x14, #256
    movz x11, #256
    csel x14, x14, x11, lo
    str x14, [x21]
    b L208443015e77_3
L208443015e77_2:
L208443015e77_3:
    cmp x20, #0
    ccmp x20, x14, #2, hi
    csel x14, x20, x14, lo
    cmp x14, x19
    csel x14, x19, x14, hi
    cmp x14, #0
    movz x11, #1
    csel x14, x14, x11, hi
    mov x0, x14
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr x21, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.subsections_via_symbols
