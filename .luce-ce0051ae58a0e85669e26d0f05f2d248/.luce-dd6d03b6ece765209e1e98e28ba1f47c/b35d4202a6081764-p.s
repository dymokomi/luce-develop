    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_10film_model_Model_16printing_density
_lb_10film_model_Model_16printing_density:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    str x19, [sp, #760]
    str x20, [sp, #752]
    sub x16, x29, #88
    str d0, [x16, #0]
    sub x16, x29, #88
    str d1, [x16, #8]
    sub x16, x29, #88
    str d2, [x16, #16]
    mov x19, x0
    movz x10, #10896
    add x20, x19, x10
    sub x9, x29, #88
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    sub x8, x29, #760
    bl _lb_10film_model_Model_density
    mov x0, x20
    sub x9, x29, #760
    mov x1, x9
    bl _lb_densitometry_Densitometer_read
    sub x16, x29, #40
    str d0, [x16, #0]
    sub x16, x29, #40
    str d1, [x16, #8]
    sub x16, x29, #40
    str d2, [x16, #16]
    sub x10, x29, #40
    sub x11, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x10, #12840
    add x14, x19, x10
    sub x9, x29, #112
    ldr q24, [x9]
    ldr q25, [x14]
    fsub v24.2d, v24.2d, v25.2d
    ldr d25, [sp, #672]
    ldr d26, [x19, #12856]
    fsub d25, d25, d26
    sub x9, x29, #64
    str q24, [x9]
    str d25, [sp, #720]
    sub x9, x29, #64
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #760]
    ldr x20, [sp, #752]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_13fit_sharpness
_lb_10film_model_13fit_sharpness:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    str x19, [sp, #248]
    str x20, [sp, #240]
    str x21, [sp, #232]
    str x22, [sp, #224]
    str x23, [sp, #216]
    str x24, [sp, #208]
    str x25, [sp, #200]
    str x26, [sp, #192]
    str x27, [sp, #184]
    str x28, [sp, #176]
    str d8, [sp, #168]
    str d9, [sp, #160]
    str d10, [sp, #152]
    str d11, [sp, #144]
    str d12, [sp, #136]
    str d13, [sp, #128]
    str d14, [sp, #120]
    str d15, [sp, #112]
    mov x19, x0
    ldr d24, [x19, #15720]
    adrp x14, _lb_10film_model_7log_low@PAGE
    add x14, x14, _lb_10film_model_7log_low@PAGEOFF
    ldr d25, [x14]
    fsub d24, d24, d25
    adrp x15, _lb_10film_model_8log_high@PAGE
    add x15, x15, _lb_10film_model_8log_high@PAGEOFF
    ldr d26, [x15]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    movz x9, #1023
    ucvtf d25, x9
    fmul d24, d24, d25
    frintm d26, d24
    fcvtzu x12, d26
    subs x12, x12, #20
    b.cc La28d13fc0f15_c1
    frintm d24, d24
    fcvtzu x13, d24
    adds x13, x13, #20
    b.cs La28d13fc0f15_c2
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x7, #0
La28d13fc0f15_1:
    cmp x7, #3
    b.hs La28d13fc0f15_4
    .p2align 4
La28d13fc0f15_2:
    sub x9, x29, #168
    add x6, x9, x7, lsl #3
    movz x10, #3
    umulh x11, x13, x10
    add x5, x13, x13, lsl #1
    cbnz x11, La28d13fc0f15_c3
    adds x5, x5, x7
    b.cs La28d13fc0f15_c4
    ldr x4, [x19, #15480]
    ldr x3, [x19, #15488]
    cmp x5, x3
    b.hs La28d13fc0f15_c5
    ldr d24, [x4, x5, lsl #3]
    movz x10, #3
    umulh x11, x12, x10
    add x5, x12, x12, lsl #1
    cbnz x11, La28d13fc0f15_c6
    adds x5, x5, x7
    b.cs La28d13fc0f15_c7
    cmp x5, x3
    b.hs La28d13fc0f15_c8
    ldr d26, [x4, x5, lsl #3]
    fsub d24, d24, d26
    ldr d26, [x14]
    ldr d27, [x15]
    fsub d27, d27, d26
    ucvtf d28, x13
    fmul d28, d27, d28
    fdiv d28, d28, d25
    fadd d28, d26, d28
    ucvtf d29, x12
    fmul d27, d27, d29
    fdiv d27, d27, d25
    fadd d26, d26, d27
    fsub d26, d28, d26
    fdiv d24, d24, d26
    fabs d24, d24
    str d24, [x6]
    add x7, x7, #1
    cmp x7, #3
    b.lo La28d13fc0f15_2
La28d13fc0f15_4:
    movz x10, #8136
    add x20, x19, x10
    adrp x21, _lb_13luce_std_math_pi@PAGE
    add x21, x21, _lb_13luce_std_math_pi@PAGEOFF
    movz x10, #8296
    add x22, x19, x10
    movz x10, #15728
    add x23, x19, x10
    movz x10, #15752
    add x24, x19, x10
    ldr d8, La28d13fc0f15_k0
    fmov d9, #10.0000000
La28d13fc0f15_5:
    ldr d17, La28d13fc0f15_k1
    fcmp d9, d17
    b.hi La28d13fc0f15_7
    .p2align 4
La28d13fc0f15_6:
    sub x11, x29, #192
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x11, x29, #216
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmov d10, xzr
    mov x25, #0
La28d13fc0f15_8:
    cmp x25, #3
    b.hs La28d13fc0f15_11
    .p2align 4
La28d13fc0f15_9:
    lsl x14, x25, #3
    sub x9, x29, #168
    add x26, x9, x14
    movz x10, #20
    mul x27, x25, x10
    sub x9, x29, #192
    add x28, x9, x14
    sub x9, x29, #216
    add x14, x9, x14
    ldr d24, La28d13fc0f15_k0
    fmov d11, xzr
    .p2align 4
La28d13fc0f15_12:
    ldr d25, [x26]
    fmul d25, d25, d11
    fmov d17, #0.5000000
    fcmp d25, d17
    b.hi La28d13fc0f15_14
La28d13fc0f15_13:
    fmov d12, d24
    fmov d13, xzr
La28d13fc0f15_15:
    fmov d17, #10.0000000
    fcmp d13, d17
    b.hi La28d13fc0f15_17
    .p2align 4
La28d13fc0f15_16:
    ldr d24, [x26]
    ldr x15, [x19, #8128]
    fmul d14, d24, d11
    fmov d16, #1.0000000
    fsub d15, d16, d14
    fmov d24, xzr
    mov x12, #0
La28d13fc0f15_34:
    cmp x12, x15
    b.hs La28d13fc0f15_37
    .p2align 4
La28d13fc0f15_35:
    movz x10, #20
    cmp x12, x10
    b.hs La28d13fc0f15_c9
    ldr d25, [x20, x12, lsl #3]
    ldr d17, La28d13fc0f15_k2
    fdiv d25, d25, d17
    ldr d26, [x21]
    fmov d16, #2.0000000
    fmul d27, d16, d26
    fmul d27, d27, d13
    fmul d27, d25, d27
    fmul d27, d27, d27
    fmov d16, #1.0000000
    fadd d27, d16, d27
    fmov d16, #1.0000000
    fdiv d27, d16, d27
    fmov d17, #-2.0000000
    fmul d28, d26, d17
    fmul d26, d26, d28
    fmul d26, d26, d9
    fmul d26, d26, d9
    fmul d26, d25, d26
    fmul d25, d25, d26
    str x14, [sp, #32]
    str x15, [sp, #24]
    str d27, [sp, #0]
    str d24, [sp, #16]
    str x12, [sp, #8]
    fmov d0, d25
    bl _lb_13luce_std_math_9exp_value
    fmov d25, d0
    ldr x14, [sp, #32]
    ldr x15, [sp, #24]
    ldr d27, [sp, #0]
    ldr d24, [sp, #16]
    ldr x12, [sp, #8]
    fmul d25, d14, d25
    fmov d16, #1.0000000
    fsub d25, d16, d25
    fmul d25, d27, d25
    fdiv d25, d25, d15
    str x14, [sp, #32]
    str x15, [sp, #24]
    str d24, [sp, #16]
    str x12, [sp, #8]
    fmov d0, d25
    bl _lb_13luce_std_math_9log_value
    fmov d25, d0
    ldr x14, [sp, #32]
    ldr x15, [sp, #24]
    ldr d24, [sp, #16]
    ldr x12, [sp, #8]
    add x13, x27, x12
    movz x10, #60
    cmp x13, x10
    b.hs La28d13fc0f15_c10
    ldr d26, [x22, x13, lsl #3]
    ldr d17, La28d13fc0f15_k3
    fdiv d26, d26, d17
    str x14, [sp, #32]
    str x15, [sp, #24]
    str d25, [sp, #0]
    str d24, [sp, #16]
    str x12, [sp, #8]
    fmov d0, d26
    bl _lb_13luce_std_math_9log_value
    fmov d26, d0
    ldr x14, [sp, #32]
    ldr x15, [sp, #24]
    ldr d25, [sp, #0]
    ldr d24, [sp, #16]
    ldr x12, [sp, #8]
    fsub d25, d25, d26
    fmul d25, d25, d25
    fadd d24, d25, d24
    add x12, x12, #1
    cmp x12, x15
    b.lo La28d13fc0f15_35
La28d13fc0f15_37:
La28d13fc0f15_45:
    fcmp d24, d12
    b.pl La28d13fc0f15_19
La28d13fc0f15_18:
    str d13, [x28]
    str d11, [x14]
    b La28d13fc0f15_20
La28d13fc0f15_19:
    fmov d24, d12
La28d13fc0f15_20:
    ldr d16, La28d13fc0f15_k4
    fadd d13, d16, d13
    fmov d12, d24
    fmov d17, #10.0000000
    fcmp d13, d17
    b.ls La28d13fc0f15_16
La28d13fc0f15_17:
    ldr d16, La28d13fc0f15_k5
    fadd d11, d16, d11
    fmov d24, d12
    b La28d13fc0f15_12
La28d13fc0f15_14:
    fadd d10, d10, d24
    add x25, x25, #1
    cmp x25, #3
    b.lo La28d13fc0f15_9
La28d13fc0f15_11:
    fcmp d10, d8
    b.pl La28d13fc0f15_22
La28d13fc0f15_21:
    sub x10, x29, #192
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x23, #0]
    ldr x16, [x10, #16]
    str x16, [x23, #16]
    sub x10, x29, #216
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x24, #0]
    ldr x16, [x10, #16]
    str x16, [x24, #16]
    str d9, [x19, #15776]
    str d9, [x19, #15784]
    str d9, [x19, #15792]
    b La28d13fc0f15_23
La28d13fc0f15_22:
    fmov d10, d8
La28d13fc0f15_23:
    fmov d16, #1.0000000
    fadd d9, d16, d9
    fmov d8, d10
    ldr d17, La28d13fc0f15_k1
    fcmp d9, d17
    b.ls La28d13fc0f15_6
La28d13fc0f15_7:
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    ldr x27, [sp, #184]
    ldr x28, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    ldr d10, [sp, #152]
    ldr d11, [sp, #144]
    ldr d12, [sp, #136]
    ldr d13, [sp, #128]
    ldr d14, [sp, #120]
    ldr d15, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La28d13fc0f15_c1:
    adrp x0, _lb_text_af745c708332@PAGE
    add x0, x0, _lb_text_af745c708332@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c2:
    adrp x0, _lb_text_7fb688acc1f0@PAGE
    add x0, x0, _lb_text_7fb688acc1f0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c3:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c4:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c5:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c6:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c7:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c8:
    adrp x0, _lb_text_011ebe0c0fad@PAGE
    add x0, x0, _lb_text_011ebe0c0fad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c9:
    adrp x0, _lb_text_034734cbaac3@PAGE
    add x0, x0, _lb_text_034734cbaac3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La28d13fc0f15_c10:
    adrp x0, _lb_text_dd97595714af@PAGE
    add x0, x0, _lb_text_dd97595714af@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
La28d13fc0f15_k0:
    .quad 5055640609639927018
La28d13fc0f15_k1:
    .quad 4630826316843712512
La28d13fc0f15_k2:
    .quad 4652007308841189376
La28d13fc0f15_k3:
    .quad 4636737291354636288
La28d13fc0f15_k4:
    .quad 4596373779694328218
La28d13fc0f15_k5:
    .quad 4581421828931458171


    .p2align 2
    .globl _lb_10film_model_15fit_populations
_lb_10film_model_15fit_populations:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    str x24, [sp, #96]
    str x25, [sp, #88]
    str x26, [sp, #80]
    str d8, [sp, #72]
    str d9, [sp, #64]
    str d10, [sp, #56]
    mov x14, x0
    fmov d24, #6.0000000
    fmov d25, xzr
    adrp x15, _lb_10film_model_8log_high@PAGE
    add x15, x15, _lb_10film_model_8log_high@PAGEOFF
    adrp x12, _lb_10film_model_7log_low@PAGE
    add x12, x12, _lb_10film_model_7log_low@PAGEOFF
    ldr d26, L0cd24feb1e79_k0
    fmov d27, #1.0000000
    ldr d28, L0cd24feb1e79_k1
    movz x10, #15512
    add x13, x14, x10
    ldr d29, L0cd24feb1e79_k2
    ldr d30, L0cd24feb1e79_k3
    fmov x7, d28
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    cset w6, hi
    fcmp d25, d28
    cset w5, eq
    fmov x4, d30
    and x3, x4, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x3, x10
    cset w3, hi
    fcmp d25, d30
    cset w2, eq
    mov x1, #0
L0cd24feb1e79_1:
    cmp x1, #3
    b.hs L0cd24feb1e79_4
    .p2align 4
L0cd24feb1e79_2:
    ldr x0, [x14, #15480]
    ldr x19, [x14, #15488]
    cmp x1, x19
    b.hs L0cd24feb1e79_c1
    add x0, x0, x1, lsl #3
    ldr d31, [x0]
    add x20, x1, #3069
    cmp x20, x19
    b.hs L0cd24feb1e79_c2
    ldr d19, [x0, #24552]
    fsub d19, d19, d31
    sub x11, x29, #144
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    fcmp d19, d25
    cset w0, ge
    fabs d20, d19
    fcmp d20, d26
    cset w19, gt
    fabs d20, d19
    fcmp d20, d26
    cset w20, gt
    mov x21, #0
L0cd24feb1e79_5:
    cmp x21, #7
    b.hs L0cd24feb1e79_8
    .p2align 4
L0cd24feb1e79_6:
    ucvtf d20, x21
    fdiv d20, d20, d24
    cbz w0, L0cd24feb1e79_10
L0cd24feb1e79_9:
    ldr d21, [x12]
    b L0cd24feb1e79_11
L0cd24feb1e79_10:
    ldr d21, [x15]
L0cd24feb1e79_11:
    movz x22, #1
L0cd24feb1e79_12:
    cmp x22, #1024
    b.lo L0cd24feb1e79_13
L0cd24feb1e79_41:
    b L0cd24feb1e79_15
    .p2align 4
L0cd24feb1e79_13:
    subs x23, x22, #1
    b.cc L0cd24feb1e79_c3
    movz x10, #3
    umulh x11, x23, x10
    add x24, x23, x23, lsl #1
    cbnz x11, L0cd24feb1e79_c4
    adds x24, x24, x1
    b.cs L0cd24feb1e79_c5
    ldr x25, [x14, #15480]
    ldr x26, [x14, #15488]
    cmp x24, x26
    b.hs L0cd24feb1e79_c6
    ldr d22, [x25, x24, lsl #3]
    fsub d22, d22, d31
    cmp w19, #0
    fcsel d23, d19, d27, ne
    fdiv d22, d22, d23
    add x24, x22, x22, lsl #1
    add x24, x24, x1
    cmp x24, x26
    b.hs L0cd24feb1e79_c7
    ldr d23, [x25, x24, lsl #3]
    fsub d23, d23, d31
    cmp w20, #0
    fcsel d8, d19, d27, ne
    fdiv d23, d23, d8
    fcmp d22, d20
    b.pl L0cd24feb1e79_23
L0cd24feb1e79_25:
    fcmp d23, d20
    b.lt L0cd24feb1e79_23
L0cd24feb1e79_22:
    ldr d21, [x12]
    ldr d8, [x15]
    fsub d8, d8, d21
    ucvtf d9, x23
    fmul d9, d8, d9
    movz x9, #1023
    ucvtf d10, x9
    fdiv d9, d9, d10
    fadd d9, d21, d9
    fsub d20, d20, d22
    fsub d22, d23, d22
    fmov x23, d22
    and x24, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x24, x10
    b.ls L0cd24feb1e79_43
L0cd24feb1e79_42:
    b L0cd24feb1e79_63
L0cd24feb1e79_43:
L0cd24feb1e79_44:
L0cd24feb1e79_62:
    cbz w6, L0cd24feb1e79_47
L0cd24feb1e79_46:
    fmov d22, d28
    b L0cd24feb1e79_63
L0cd24feb1e79_47:
L0cd24feb1e79_48:
    fcmp d22, d25
    b.ne L0cd24feb1e79_51
L0cd24feb1e79_53:
    cbz w5, L0cd24feb1e79_51
L0cd24feb1e79_50:
    and x23, x23, x7
    fmov d22, x23
    b L0cd24feb1e79_63
L0cd24feb1e79_51:
L0cd24feb1e79_52:
    fcmp d22, d28
    fcsel d22, d22, d28, gt
L0cd24feb1e79_63:
    fdiv d20, d20, d22
    ucvtf d22, x22
    fmul d22, d8, d22
    fdiv d22, d22, d10
    fadd d21, d21, d22
L0cd24feb1e79_40:
    fsub d21, d21, d9
    fmul d20, d21, d20
    fadd d21, d20, d9
    b L0cd24feb1e79_15
L0cd24feb1e79_23:
L0cd24feb1e79_24:
    add x22, x22, #1
    cmp x22, #1024
    b.lo L0cd24feb1e79_13
    b L0cd24feb1e79_41
L0cd24feb1e79_15:
    sub x10, x29, #144
    str d21, [x10, x21, lsl #3]
    add x21, x21, #1
    cmp x21, #7
    b.lo L0cd24feb1e79_6
L0cd24feb1e79_8:
    movz x10, #6
    mul x0, x1, x10
    mov x19, #0
L0cd24feb1e79_27:
    cmp x19, #3
    b.hs L0cd24feb1e79_30
    .p2align 4
L0cd24feb1e79_28:
    lsl x20, x19, #1
    add x21, x20, x0
    movz x10, #18
    cmp x21, x10
    b.hs L0cd24feb1e79_c8
    add x22, x13, x21, lsl #3
    add x23, x20, #1
    movz x10, #7
    cmp x23, x10
    b.hs L0cd24feb1e79_c9
    sub x10, x29, #144
    ldr d31, [x10, x23, lsl #3]
    str d31, [x22]
    add x21, x21, #1
    movz x10, #18
    cmp x21, x10
    b.hs L0cd24feb1e79_c10
    add x21, x20, #2
    movz x10, #7
    cmp x21, x10
    b.hs L0cd24feb1e79_c11
    sub x10, x29, #144
    ldr d31, [x10, x21, lsl #3]
    sub x10, x29, #144
    ldr d19, [x10, x20, lsl #3]
    fsub d31, d31, d19
    fdiv d31, d31, d29
    fmov x20, d31
    and x21, x20, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x21, x10
    b.ls L0cd24feb1e79_65
L0cd24feb1e79_64:
    b L0cd24feb1e79_85
L0cd24feb1e79_65:
L0cd24feb1e79_66:
L0cd24feb1e79_84:
    cbz w3, L0cd24feb1e79_69
L0cd24feb1e79_68:
    fmov d31, d30
    b L0cd24feb1e79_85
L0cd24feb1e79_69:
L0cd24feb1e79_70:
    fcmp d31, d25
    b.ne L0cd24feb1e79_73
L0cd24feb1e79_75:
    cbz w2, L0cd24feb1e79_73
L0cd24feb1e79_72:
    and x20, x20, x4
    fmov d31, x20
    b L0cd24feb1e79_85
L0cd24feb1e79_73:
L0cd24feb1e79_74:
    fcmp d31, d30
    fcsel d31, d31, d30, gt
L0cd24feb1e79_85:
    str d31, [x22, #8]
    add x19, x19, #1
    cmp x19, #3
    b.lo L0cd24feb1e79_28
L0cd24feb1e79_30:
    add x1, x1, #1
    cmp x1, #3
    b.lo L0cd24feb1e79_2
L0cd24feb1e79_4:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr d8, [sp, #72]
    ldr d9, [sp, #64]
    ldr d10, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0cd24feb1e79_c1:
    adrp x0, _lb_text_a68e3b72d727@PAGE
    add x0, x0, _lb_text_a68e3b72d727@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c2:
    adrp x0, _lb_text_a383bf08e38c@PAGE
    add x0, x0, _lb_text_a383bf08e38c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c3:
    adrp x0, _lb_text_e5c4971b0e89@PAGE
    add x0, x0, _lb_text_e5c4971b0e89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c4:
    adrp x0, _lb_text_e5c4971b0e89@PAGE
    add x0, x0, _lb_text_e5c4971b0e89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c5:
    adrp x0, _lb_text_e5c4971b0e89@PAGE
    add x0, x0, _lb_text_e5c4971b0e89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c6:
    adrp x0, _lb_text_e5c4971b0e89@PAGE
    add x0, x0, _lb_text_e5c4971b0e89@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c7:
    adrp x0, _lb_text_e93dd8e2580b@PAGE
    add x0, x0, _lb_text_e93dd8e2580b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c8:
    adrp x0, _lb_text_cb147828a709@PAGE
    add x0, x0, _lb_text_cb147828a709@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c9:
    adrp x0, _lb_text_cb147828a709@PAGE
    add x0, x0, _lb_text_cb147828a709@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c10:
    adrp x0, _lb_text_2e073d5e81d0@PAGE
    add x0, x0, _lb_text_2e073d5e81d0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0cd24feb1e79_c11:
    adrp x0, _lb_text_2e073d5e81d0@PAGE
    add x0, x0, _lb_text_2e073d5e81d0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L0cd24feb1e79_k0:
    .quad 4472406533629990549
L0cd24feb1e79_k1:
    .quad 4427486594234968593
L0cd24feb1e79_k2:
    .quad 4616639978017495450
L0cd24feb1e79_k3:
    .quad 4584304132692975288


    .p2align 2
    .globl _lb_10film_model_13release_table
_lb_10film_model_13release_table:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    mov x19, x0
    ldr x14, [x19, #8]
    cmp x14, #0
    b.ls Lc37d99fd98cd_2
Lc37d99fd98cd_1:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x12, [x19]
    movz x10, #8
    umulh x11, x14, x10
    lsl x14, x14, #3
    cbnz x11, Lc37d99fd98cd_c1
    str x12, [sp, #8]
    str x14, [sp, #16]
    ldr x14, [x15]
    ldr x15, [x15, #8]
    cbz x15, Lc37d99fd98cd_4
Lc37d99fd98cd_5:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #40
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc37d99fd98cd_4:
Lc37d99fd98cd_2:
Lc37d99fd98cd_3:
    sub x11, x29, #24
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc37d99fd98cd_c1:
    adrp x0, _lb_text_0a5b1822a964@PAGE
    add x0, x0, _lb_text_0a5b1822a964@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_22luce_color_temperature_white
_lb_22luce_color_temperature_white:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    ldr d26, L4664c5dafcd5_k0
    ldr d27, L4664c5dafcd5_k1
    ldr d28, L4664c5dafcd5_k2
    fcmp d27, d28
    b.hi L4664c5dafcd5_18
L4664c5dafcd5_17:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L4664c5dafcd5_20
L4664c5dafcd5_19:
    b L4664c5dafcd5_32
L4664c5dafcd5_20:
L4664c5dafcd5_21:
    fcmp d24, d27
    cset w14, mi
    fcmp d24, d28
    fcsel d24, d28, d24, gt
    cmp w14, #0
    fcsel d24, d27, d24, ne
L4664c5dafcd5_32:
    fdiv d24, d26, d24
    adrp x14, _lb_22luce_color_temperature_10tint_scale@PAGE
    add x14, x14, _lb_22luce_color_temperature_10tint_scale@PAGEOFF
    ldr d26, [x14]
    fdiv d25, d25, d26
    adrp x14, _lb_22luce_color_temperature_robertson@PAGE
    add x14, x14, _lb_22luce_color_temperature_robertson@PAGEOFF
    mov x15, #0
L4664c5dafcd5_1:
    cmp x15, #30
    b.hs L4664c5dafcd5_4
    .p2align 4
L4664c5dafcd5_2:
    lsl x12, x15, #2
    add x13, x12, #4
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c1
    ldr d26, [x14, x13, lsl #3]
    fcmp d24, d26
    b.mi L4664c5dafcd5_5
L4664c5dafcd5_8:
    cmp x15, #29
    b.ne L4664c5dafcd5_6
L4664c5dafcd5_5:
    fsub d24, d26, d24
    add x15, x14, x12, lsl #3
    ldr d27, [x15]
    fsub d26, d26, d27
    fdiv d24, d24, d26
    add x13, x12, #1
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c2
    ldr d26, [x15, #8]
    fmul d26, d26, d24
    add x13, x12, #5
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c3
    ldr d27, [x15, #40]
    fmov d28, #1.0000000
    fsub d29, d28, d24
    fmul d27, d27, d29
    fadd d26, d26, d27
    add x13, x12, #2
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c4
    ldr d27, [x15, #16]
    fmul d27, d27, d24
    add x13, x12, #6
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c5
    ldr d30, [x15, #48]
    fmul d30, d30, d29
    fadd d27, d27, d30
    add x13, x12, #3
    movz x10, #124
    cmp x13, x10
    b.hs L4664c5dafcd5_c6
    ldr d30, [x15, #24]
    fmul d31, d30, d30
    fadd d31, d31, d28
    fsqrt d31, d31
    add x15, x12, #7
    movz x10, #124
    cmp x15, x10
    b.hs L4664c5dafcd5_c7
    ldr d19, [x14, x15, lsl #3]
    fmul d20, d19, d19
    fadd d20, d20, d28
    fsqrt d20, d20
    fdiv d21, d28, d31
    fmul d21, d21, d24
    fdiv d28, d28, d20
    fmul d28, d28, d29
    fadd d28, d21, d28
    fdiv d30, d30, d31
    fmul d24, d30, d24
    fdiv d30, d19, d20
    fmul d29, d30, d29
    fadd d24, d24, d29
    fmul d29, d28, d28
    fmul d30, d24, d24
    fadd d29, d29, d30
    fsqrt d29, d29
    fdiv d28, d28, d29
    fdiv d24, d24, d29
    fmul d28, d28, d25
    fadd d26, d28, d26
    fmul d24, d24, d25
    fadd d24, d24, d27
    fmov d25, #1.5000000
    fmul d25, d26, d25
    fmov d27, #4.0000000
    fmul d27, d24, d27
    fsub d26, d26, d27
    fmov d27, #2.0000000
    fadd d26, d26, d27
    fdiv d25, d25, d26
    fdiv d24, d24, d26
    fmov d0, d25
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4664c5dafcd5_6:
L4664c5dafcd5_7:
    add x15, x15, #1
    cmp x15, #30
    b.lo L4664c5dafcd5_2
L4664c5dafcd5_4:
    adrp x14, _lb_14luce_color_xyz_d50@PAGE
    add x14, x14, _lb_14luce_color_xyz_d50@PAGEOFF
    ldr d24, [x14]
    ldr d25, [x14, #8]
    fmov d0, d24
    fmov d1, d25
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4664c5dafcd5_18:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c1:
    adrp x0, _lb_text_4ef98947d07e@PAGE
    add x0, x0, _lb_text_4ef98947d07e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c2:
    adrp x0, _lb_text_2e222e49b4d0@PAGE
    add x0, x0, _lb_text_2e222e49b4d0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c3:
    adrp x0, _lb_text_2e222e49b4d0@PAGE
    add x0, x0, _lb_text_2e222e49b4d0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c4:
    adrp x0, _lb_text_717763e9b20c@PAGE
    add x0, x0, _lb_text_717763e9b20c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c5:
    adrp x0, _lb_text_717763e9b20c@PAGE
    add x0, x0, _lb_text_717763e9b20c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c6:
    adrp x0, _lb_text_88c266d2c4d9@PAGE
    add x0, x0, _lb_text_88c266d2c4d9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4664c5dafcd5_c7:
    adrp x0, _lb_text_c36d5ded0ba8@PAGE
    add x0, x0, _lb_text_c36d5ded0ba8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L4664c5dafcd5_k0:
    .quad 4696837146684686336
L4664c5dafcd5_k1:
    .quad 4655046358980362240
L4664c5dafcd5_k2:
    .quad 4677104761256804352


    .p2align 2
    .globl _lb_19luce_color_spectral_shaped
_lb_19luce_color_spectral_shaped:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2672
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #2656]
    str x20, [sp, #2648]
    str x21, [sp, #2640]
    str x22, [sp, #2632]
    str d8, [sp, #2624]
    str d9, [sp, #2616]
    str d10, [sp, #2608]
    str d11, [sp, #2600]
    str d12, [sp, #2592]
    fmov d8, d0
    fmov d9, d1
    fmov d0, d8
    sub x8, x29, #728
    bl _lb_19luce_color_spectral_planck
    sub x10, x29, #728
    sub x0, x29, #2672
    mov x1, x10
    movz x2, #648
    bl _memcpy
    ldr d24, L101c3cb4de27_k0
    fcmp d8, d24
    b.le L101c3cb4de27_2
L101c3cb4de27_1:
    fsub d24, d8, d24
    ldr d25, L101c3cb4de27_k1
    fdiv d24, d24, d25
    fmov d25, xzr
    fmov d10, #1.0000000
    fcmp d25, d10
    b.hi L101c3cb4de27_29
L101c3cb4de27_28:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L101c3cb4de27_31
L101c3cb4de27_30:
    fmov d11, d24
    b L101c3cb4de27_43
L101c3cb4de27_31:
L101c3cb4de27_32:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d10
    fcsel d24, d10, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
    fmov d11, d24
L101c3cb4de27_43:
    fmov d0, d8
    sub x8, x29, #1376
    bl _lb_19luce_color_spectral_daylight
    sub x10, x29, #1376
    sub x0, x29, #728
    mov x1, x10
    movz x2, #648
    bl _memcpy
    fsub d24, d10, d11
    sub x9, x29, #728
    sub x10, x29, #2672
    sub x14, x9, x10
    sub x9, x29, #2672
    sub x10, x29, #728
    sub x15, x9, x10
    cmp x14, #648
    cset w14, hs
    cmp x15, #648
    cset w15, hs
    and w14, w14, w15
    sub x9, x29, #2672
    sub x10, x29, #728
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    cbnz w14, L101c3cb4de27_22
L101c3cb4de27_27:
    mov x14, #0
    b L101c3cb4de27_26
L101c3cb4de27_22:
    dup v25.2d, v24.d[0]
    dup v26.2d, v11.d[0]
    mov x14, #0
L101c3cb4de27_23:
    cmp x14, #80
    b.hs L101c3cb4de27_25
    .p2align 4
L101c3cb4de27_24:
    lsl x15, x14, #3
    sub x10, x29, #2672
    add x12, x15, x10
    ldr q27, [x12]
    fmul v27.2d, v27.2d, v25.2d
    sub x10, x29, #728
    add x15, x15, x10
    ldr q28, [x15]
    fmul v28.2d, v26.2d, v28.2d
    fadd v27.2d, v27.2d, v28.2d
    str q27, [x12]
    add x14, x14, #2
    cmp x14, #80
    b.lo L101c3cb4de27_24
L101c3cb4de27_25:
    movz x14, #80
L101c3cb4de27_26:
L101c3cb4de27_4:
    cmp x14, #81
    b.hs L101c3cb4de27_7
    .p2align 4
L101c3cb4de27_5:
    lsl x15, x14, #3
    sub x10, x29, #2672
    add x12, x15, x10
    ldr d25, [x12]
    fmul d25, d25, d24
    sub x11, x29, #728
    ldr d26, [x15, x11]
    fmul d26, d26, d11
    fadd d25, d25, d26
    str d25, [x12]
    add x14, x14, #1
    cmp x14, #81
    b.lo L101c3cb4de27_5
L101c3cb4de27_7:
L101c3cb4de27_2:
L101c3cb4de27_3:
    adrp x19, _lb_19luce_color_spectral_8first_nm@PAGE
    add x19, x19, _lb_19luce_color_spectral_8first_nm@PAGEOFF
    adrp x20, _lb_19luce_color_spectral_7step_nm@PAGE
    add x20, x20, _lb_19luce_color_spectral_7step_nm@PAGEOFF
    ldr d8, L101c3cb4de27_k2
    ldr d10, L101c3cb4de27_k3
    fmov d11, #1.0000000
    mov x21, #0
L101c3cb4de27_8:
    cmp x21, #81
    b.hs L101c3cb4de27_11
    .p2align 4
L101c3cb4de27_9:
    ldr d24, [x19]
    ldr d25, [x20]
    ucvtf d26, x21
    fmul d25, d25, d26
    fadd d24, d24, d25
    fsub d24, d24, d8
    fdiv d24, d24, d10
    sub x9, x29, #2672
    add x22, x9, x21, lsl #3
    ldr d12, [x22]
    fneg d25, d24
    fmul d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fmul d24, d9, d24
    fadd d24, d24, d11
    fmul d24, d24, d12
    str d24, [x22]
    add x21, x21, #1
    cmp x21, #81
    b.lo L101c3cb4de27_9
L101c3cb4de27_11:
    fmov d24, xzr
    adrp x14, _lb_19luce_color_spectral_observer@PAGE
    add x14, x14, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x15, #0
    fmov d25, d24
    fmov d26, d24
L101c3cb4de27_44:
    cmp x15, #81
    b.hs L101c3cb4de27_47
    .p2align 4
L101c3cb4de27_45:
    sub x10, x29, #2672
    ldr d27, [x10, x15, lsl #3]
    add x12, x15, x15, lsl #1
    add x13, x14, x12, lsl #3
    ldr d28, [x13]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x7, x12, #1
    movz x10, #243
    cmp x7, x10
    b.hs L101c3cb4de27_c1
    ldr d28, [x13, #8]
    fmul d28, d27, d28
    fadd d26, d28, d26
    add x12, x12, #2
    movz x10, #243
    cmp x12, x10
    b.hs L101c3cb4de27_c2
    ldr d28, [x13, #16]
    fmul d27, d27, d28
    fadd d24, d27, d24
    add x15, x15, #1
    cmp x15, #81
    b.lo L101c3cb4de27_45
L101c3cb4de27_47:
L101c3cb4de27_49:
    mov x14, #0
L101c3cb4de27_12:
    cmp x14, #81
    b.hs L101c3cb4de27_15
    .p2align 4
L101c3cb4de27_13:
    sub x9, x29, #2672
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d26
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #81
    b.lo L101c3cb4de27_13
L101c3cb4de27_15:
    sub x10, x29, #2672
    sub x0, x29, #2024
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #2024
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #2656]
    ldr x20, [sp, #2648]
    ldr x21, [sp, #2640]
    ldr x22, [sp, #2632]
    ldr d8, [sp, #2624]
    ldr d9, [sp, #2616]
    ldr d10, [sp, #2608]
    ldr d11, [sp, #2600]
    ldr d12, [sp, #2592]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L101c3cb4de27_29:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L101c3cb4de27_c1:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L101c3cb4de27_c2:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L101c3cb4de27_k0:
    .quad 4661014508095930368
L101c3cb4de27_k1:
    .quad 4652007308841189376
L101c3cb4de27_k2:
    .quad 4648005086516084736
L101c3cb4de27_k3:
    .quad 4631530004285489152


    .p2align 2
    .globl _lb_19luce_color_spectral_15chromaticity_of
_lb_19luce_color_spectral_15chromaticity_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #656
    sub x16, x29, #648
    str x0, [x16]
    sub x0, x29, #648
    ldr x1, [x0]
    movz x2, #648
    bl _memcpy
    fmov d24, xzr
    adrp x14, _lb_19luce_color_spectral_observer@PAGE
    add x14, x14, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x15, #0
    fmov d25, d24
    fmov d26, d24
L675affe708fc_2:
    cmp x15, #81
    b.hs L675affe708fc_5
    .p2align 4
L675affe708fc_3:
    sub x10, x29, #648
    ldr d27, [x10, x15, lsl #3]
    add x12, x15, x15, lsl #1
    add x13, x14, x12, lsl #3
    ldr d28, [x13]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x7, x12, #1
    movz x10, #243
    cmp x7, x10
    b.hs L675affe708fc_c1
    ldr d28, [x13, #8]
    fmul d28, d27, d28
    fadd d26, d28, d26
    add x12, x12, #2
    movz x10, #243
    cmp x12, x10
    b.hs L675affe708fc_c2
    ldr d28, [x13, #16]
    fmul d27, d27, d28
    fadd d24, d27, d24
    add x15, x15, #1
    cmp x15, #81
    b.lo L675affe708fc_3
L675affe708fc_5:
L675affe708fc_7:
    fadd d27, d25, d26
    fadd d24, d27, d24
    fdiv d25, d25, d24
    fdiv d24, d26, d24
    fmov d0, d25
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L675affe708fc_c1:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L675affe708fc_c2:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10film_model_softplus
_lb_10film_model_softplus:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    str d9, [sp, #0]
    fmov d8, d0
    fmov d24, xzr
    fcmp d8, d24
    b.le La982e062327b_2
La982e062327b_1:
    fmov d9, #1.0000000
    fneg d24, d8
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fadd d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_9log_value
    fmov d24, d0
    fadd d24, d24, d8
    b La982e062327b_3
La982e062327b_2:
    fmov d9, #1.0000000
    fmov d0, d8
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fadd d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_9log_value
    fmov d24, d0
La982e062327b_3:
    fmov d0, d24
    ldr d8, [sp, #8]
    ldr d9, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_12neutral_miss
_lb_10film_model_12neutral_miss:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    mov x14, x0
    mov x15, x1
    sub x9, x29, #120
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    mov x1, x15
    bl _lb_10film_model_Model_viewed
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
    ldr d24, [sp, #72]
    ldr d25, [sp, #80]
    fsub d24, d24, d25
    ldr d26, [sp, #88]
    fsub d25, d26, d25
    str d24, [sp, #32]
    str d25, [sp, #40]
    sub x9, x29, #96
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_Model_density
_lb_10film_model_Model_density:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1344
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1328]
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    mov x19, x0
    sub x0, x29, #696
    mov x1, #0
    movz x2, #648
    bl _memset
    add x14, x19, #3976
    ldr d24, [sp, #1296]
    add x15, x19, #2032
    ldr d25, [sp, #1304]
    ldr d26, [sp, #1312]
    mov x12, #0
L06a952a921ee_1:
    cmp x12, #81
    b.hs L06a952a921ee_4
    .p2align 4
L06a952a921ee_2:
    lsl x13, x12, #3
    sub x9, x29, #696
    add x7, x9, x13
    ldr d27, [x13, x14]
    add x13, x13, x15
    ldr d28, [x13]
    fmul d28, d24, d28
    fadd d27, d27, d28
    add x6, x12, #81
    movz x10, #243
    cmp x6, x10
    b.hs L06a952a921ee_c1
    ldr d28, [x13, #648]
    fmul d28, d25, d28
    fadd d27, d27, d28
    add x6, x12, #162
    movz x10, #243
    cmp x6, x10
    b.hs L06a952a921ee_c2
    ldr d28, [x13, #1296]
    fmul d28, d26, d28
    fadd d27, d27, d28
    str d27, [x7]
    add x12, x12, #1
    cmp x12, #81
    b.lo L06a952a921ee_2
L06a952a921ee_4:
    sub x10, x29, #696
    sub x0, x29, #1344
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #1344
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L06a952a921ee_c1:
    adrp x0, _lb_text_17602bde03d3@PAGE
    add x0, x0, _lb_text_17602bde03d3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L06a952a921ee_c2:
    adrp x0, _lb_text_17602bde03d3@PAGE
    add x0, x0, _lb_text_17602bde03d3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_19luce_color_spectral_daylight
_lb_19luce_color_spectral_daylight:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1328
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #1312]
    str d9, [sp, #1304]
    fmov d24, d0
    ldr d25, Ld938e7b35ca3_k0
    ldr d26, Ld938e7b35ca3_k1
    fcmp d25, d26
    b.hi Ld938e7b35ca3_14
Ld938e7b35ca3_13:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld938e7b35ca3_16
Ld938e7b35ca3_15:
    b Ld938e7b35ca3_28
Ld938e7b35ca3_16:
Ld938e7b35ca3_17:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
Ld938e7b35ca3_28:
    ldr d25, Ld938e7b35ca3_k2
    fcmp d24, d25
    b.hi Ld938e7b35ca3_2
Ld938e7b35ca3_1:
    ldr d25, Ld938e7b35ca3_k3
    fmul d26, d24, d24
    fmul d27, d26, d24
    fdiv d25, d25, d27
    ldr d27, Ld938e7b35ca3_k4
    fdiv d26, d27, d26
    fadd d25, d25, d26
    ldr d26, Ld938e7b35ca3_k5
    fdiv d24, d26, d24
    fadd d24, d25, d24
    ldr d25, Ld938e7b35ca3_k6
    fadd d24, d24, d25
    b Ld938e7b35ca3_3
Ld938e7b35ca3_2:
    ldr d25, Ld938e7b35ca3_k7
    fmul d26, d24, d24
    fmul d27, d26, d24
    fdiv d25, d25, d27
    ldr d27, Ld938e7b35ca3_k8
    fdiv d26, d27, d26
    fadd d25, d25, d26
    ldr d26, Ld938e7b35ca3_k9
    fdiv d24, d26, d24
    fadd d24, d25, d24
    ldr d25, Ld938e7b35ca3_k10
    fadd d24, d24, d25
Ld938e7b35ca3_3:
    fmov d25, #-3.0000000
    fmul d25, d25, d24
    fmul d25, d25, d24
    ldr d26, Ld938e7b35ca3_k11
    fmul d26, d26, d24
    fadd d25, d25, d26
    ldr d26, Ld938e7b35ca3_k12
    fsub d25, d25, d26
    ldr d26, Ld938e7b35ca3_k13
    ldr d27, Ld938e7b35ca3_k14
    fmul d27, d27, d24
    fadd d26, d26, d27
    ldr d27, Ld938e7b35ca3_k15
    fmul d27, d25, d27
    fsub d26, d26, d27
    ldr d27, Ld938e7b35ca3_k16
    ldr d28, Ld938e7b35ca3_k17
    fmul d28, d28, d24
    fsub d27, d27, d28
    ldr d28, Ld938e7b35ca3_k18
    fmul d28, d25, d28
    fadd d27, d27, d28
    fdiv d8, d27, d26
    ldr d27, Ld938e7b35ca3_k19
    ldr d28, Ld938e7b35ca3_k20
    fmul d24, d28, d24
    fsub d24, d27, d24
    ldr d27, Ld938e7b35ca3_k21
    fmul d25, d25, d27
    fadd d24, d24, d25
    fdiv d9, d24, d26
    sub x0, x29, #672
    mov x1, #0
    movz x2, #648
    bl _memset
    adrp x14, _lb_19luce_color_spectral_14daylight_basis@PAGE
    add x14, x14, _lb_19luce_color_spectral_14daylight_basis@PAGEOFF
    mov x15, #0
Ld938e7b35ca3_4:
    cmp x15, #81
    b.hs Ld938e7b35ca3_7
    .p2align 4
Ld938e7b35ca3_5:
    lsl x12, x15, #3
    sub x10, x29, #672
    add x13, x12, x10
    add x12, x12, x14
    ldr d24, [x12]
    add x7, x15, #81
    movz x10, #243
    cmp x7, x10
    b.hs Ld938e7b35ca3_c1
    ldr d25, [x12, #648]
    fmul d25, d25, d8
    fadd d24, d24, d25
    add x7, x15, #162
    movz x10, #243
    cmp x7, x10
    b.hs Ld938e7b35ca3_c2
    ldr d25, [x12, #1296]
    fmul d25, d25, d9
    fadd d24, d24, d25
    str d24, [x13]
    add x15, x15, #1
    cmp x15, #81
    b.lo Ld938e7b35ca3_5
Ld938e7b35ca3_7:
    fmov d24, xzr
    adrp x14, _lb_19luce_color_spectral_observer@PAGE
    add x14, x14, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x15, #0
    fmov d25, d24
    fmov d26, d24
Ld938e7b35ca3_29:
    cmp x15, #81
    b.hs Ld938e7b35ca3_32
    .p2align 4
Ld938e7b35ca3_30:
    sub x10, x29, #672
    ldr d27, [x10, x15, lsl #3]
    add x12, x15, x15, lsl #1
    add x13, x14, x12, lsl #3
    ldr d28, [x13]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x7, x12, #1
    movz x10, #243
    cmp x7, x10
    b.hs Ld938e7b35ca3_c3
    ldr d28, [x13, #8]
    fmul d28, d27, d28
    fadd d26, d28, d26
    add x12, x12, #2
    movz x10, #243
    cmp x12, x10
    b.hs Ld938e7b35ca3_c4
    ldr d28, [x13, #16]
    fmul d27, d27, d28
    fadd d24, d27, d24
    add x15, x15, #1
    cmp x15, #81
    b.lo Ld938e7b35ca3_30
Ld938e7b35ca3_32:
Ld938e7b35ca3_34:
    mov x14, #0
Ld938e7b35ca3_8:
    cmp x14, #81
    b.hs Ld938e7b35ca3_11
    .p2align 4
Ld938e7b35ca3_9:
    sub x9, x29, #672
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d26
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #81
    b.lo Ld938e7b35ca3_9
Ld938e7b35ca3_11:
    sub x10, x29, #672
    sub x0, x29, #1320
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #1320
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr d8, [sp, #1312]
    ldr d9, [sp, #1304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld938e7b35ca3_14:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld938e7b35ca3_c1:
    adrp x0, _lb_text_686092b8bfdb@PAGE
    add x0, x0, _lb_text_686092b8bfdb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld938e7b35ca3_c2:
    adrp x0, _lb_text_686092b8bfdb@PAGE
    add x0, x0, _lb_text_686092b8bfdb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld938e7b35ca3_c3:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld938e7b35ca3_c4:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld938e7b35ca3_k0:
    .quad 4661014508095930368
Ld938e7b35ca3_k1:
    .quad 4672601161629433856
Ld938e7b35ca3_k2:
    .quad 4664418596095524864
Ld938e7b35ca3_k3:
    .quad 13974996833735278592
Ld938e7b35ca3_k4:
    .quad 4703627713317961728
Ld938e7b35ca3_k5:
    .quad 4636674663172318167
Ld938e7b35ca3_k6:
    .quad 4597961316577374827
Ld938e7b35ca3_k7:
    .quad 13969574296394137600
Ld938e7b35ca3_k8:
    .quad 4700918980523589632
Ld938e7b35ca3_k9:
    .quad 4642911444968784527
Ld938e7b35ca3_k10:
    .quad 4597708286335910643
Ld938e7b35ca3_k11:
    .quad 4613645084265294070
Ld938e7b35ca3_k12:
    .quad 4598625579508013466
Ld938e7b35ca3_k13:
    .quad 4582603573473680189
Ld938e7b35ca3_k14:
    .quad 4598286908816035204
Ld938e7b35ca3_k15:
    .quad 4604787404518181778
Ld938e7b35ca3_k16:
    .quad 13832137470923813945
Ld938e7b35ca3_k17:
    .quad 4610651541592980901
Ld938e7b35ca3_k18:
    .quad 4618341663136697392
Ld938e7b35ca3_k19:
    .quad 4584304132692975288
Ld938e7b35ca3_k20:
    .quad 4629543466489856026
Ld938e7b35ca3_k21:
    .quad 4629157648739278730


    .p2align 2
    .globl _lb_10film_model_invert3
_lb_10film_model_invert3:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #256]
    str d9, [sp, #248]
    str d10, [sp, #240]
    sub x16, x29, #104
    str x0, [x16]
    sub x9, x29, #104
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
    ldr d24, [sp, #168]
    ldr d25, [sp, #200]
    ldr d26, [sp, #232]
    fmul d27, d25, d26
    ldr d28, [sp, #208]
    ldr d29, [sp, #224]
    fmul d30, d28, d29
    fsub d27, d27, d30
    fmul d30, d24, d27
    ldr d31, [sp, #176]
    ldr d19, [sp, #192]
    fmul d20, d26, d19
    ldr d21, [sp, #216]
    fmul d22, d28, d21
    fsub d23, d20, d22
    fmul d23, d31, d23
    fsub d30, d30, d23
    ldr d23, [sp, #184]
    fmul d8, d29, d19
    fmul d9, d25, d21
    fsub d8, d8, d9
    fmul d9, d23, d8
    fadd d30, d30, d9
    fabs d9, d30
    ldr d10, L3e44f012c341_k0
    fcmp d9, d10
    b.pl L3e44f012c341_2
L3e44f012c341_1:
    sub x11, x29, #112
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    sub x10, x29, #112
    sub x11, x29, #264
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
    sub x1, x29, #264
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
    ldp x16, x17, [x1, #64]
    stp x16, x17, [x0, #64]
    ldr d8, [sp, #256]
    ldr d9, [sp, #248]
    ldr d10, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3e44f012c341_2:
L3e44f012c341_3:
    fdiv d27, d27, d30
    str d27, [sp, #168]
    fmul d27, d29, d23
    fmul d9, d26, d31
    fsub d27, d27, d9
    fdiv d27, d27, d30
    str d27, [sp, #176]
    fmul d27, d28, d31
    fmul d9, d25, d23
    fsub d27, d27, d9
    fdiv d27, d27, d30
    str d27, [sp, #184]
    fsub d27, d22, d20
    fdiv d27, d27, d30
    str d27, [sp, #192]
    fmul d26, d24, d26
    fmul d27, d21, d23
    fsub d26, d26, d27
    fdiv d26, d26, d30
    str d26, [sp, #200]
    fmul d26, d19, d23
    fmul d27, d24, d28
    fsub d26, d26, d27
    fdiv d26, d26, d30
    str d26, [sp, #208]
    fdiv d26, d8, d30
    str d26, [sp, #216]
    fmul d26, d31, d21
    fmul d27, d24, d29
    fsub d26, d26, d27
    fdiv d26, d26, d30
    str d26, [sp, #224]
    fmul d24, d24, d25
    fmul d25, d31, d19
    fsub d24, d24, d25
    fdiv d24, d24, d30
    str d24, [sp, #232]
    sub x10, x29, #104
    sub x11, x29, #184
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
    movz x9, #1
    strb w9, [sp, #160]
    sub x10, x29, #184
    sub x11, x29, #264
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
    sub x1, x29, #264
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
    ldp x16, x17, [x1, #64]
    stp x16, x17, [x0, #64]
    ldr d8, [sp, #256]
    ldr d9, [sp, #248]
    ldr d10, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3e44f012c341_k0:
    .quad 4397347889687374747


    .p2align 2
    .globl _lb_test_20
_lb_test_20:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #56528
    sub sp, sp, x16
    sub x16, x29, #8
    str x19, [x16]
    sub x16, x29, #16
    str x20, [x16]
    sub x16, x29, #24
    str d8, [x16]
    movz x0, #9
    movz x16, #56408
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #56408
    sub x9, x29, x16
    mov x0, x9
    movz x16, #15832
    sub x8, x29, x16
    bl _lb_10film_model_11build_model
    ldrb w14, [x29, #-32]
    cbz w14, L2b2bea3ffafa_3
L2b2bea3ffafa_4:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #47456
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b L2b2bea3ffafa_1
L2b2bea3ffafa_3:
    movz x16, #15832
    sub x10, x29, x16
    movz x16, #31632
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    b L2b2bea3ffafa_2
L2b2bea3ffafa_1:
    mov x9, #0
    str x9, [sp, #104]
    mov x9, #0
    str x9, [sp, #112]
    adrp x14, _lb_text_685aa405fd39@PAGE
    add x14, x14, _lb_text_685aa405fd39@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #56424
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #56440
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #100]
    movz x16, #56440
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #47448
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x14, x0
    mov x15, x1
    str x14, [x19, #8]
    str x15, [x19, #16]
    str w20, [x19, #20]
    movz x0, #1
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2b2bea3ffafa_2:
    movz x16, #31632
    sub x10, x29, x16
    movz x16, #47432
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    adrp x14, _lb_text_5f3bfe28d929@PAGE
    add x14, x14, _lb_text_5f3bfe28d929@PAGEOFF
    ldr x15, [sp, #9104]
    cmp x15, #22
    cset w12, eq
    cbnz w12, L2b2bea3ffafa_11
L2b2bea3ffafa_26:
    b L2b2bea3ffafa_12
L2b2bea3ffafa_11:
    ldr x12, [sp, #9096]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L2b2bea3ffafa_12:
    and w14, w12, #255
    cbnz w14, L2b2bea3ffafa_9
L2b2bea3ffafa_10:
    mov x9, #0
    str x9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    adrp x14, _lb_text_d66c0b2b483b@PAGE
    add x14, x14, _lb_text_d66c0b2b483b@PAGEOFF
    adrp x15, _lb_text_e5c209b22b44@PAGE
    add x15, x15, _lb_text_e5c209b22b44@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #56456
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #48
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #31952
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31936
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31776
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31760
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #48
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2b2bea3ffafa_9:
    fmov d24, #1.0000000
    ldr d25, L2b2bea3ffafa_k0
    fdiv d25, d24, d25
    ldr d26, L2b2bea3ffafa_k1
    fdiv d26, d24, d26
    ldr d27, L2b2bea3ffafa_k2
    fdiv d24, d24, d27
    str d25, [x29, #-48]
    str d26, [x29, #-40]
    str d24, [x29, #-32]
    ldr d24, [sp, #24816]
    ldr d8, L2b2bea3ffafa_k3
    fadd d24, d24, d8
    fmov d0, d24
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_10amounts_at
    sub x16, x29, #72
    str d0, [x16, #0]
    sub x16, x29, #72
    str d1, [x16, #8]
    sub x16, x29, #72
    str d2, [x16, #16]
    sub x10, x29, #72
    movz x16, #56480
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #24816]
    fsub d24, d24, d8
    fmov d0, d24
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_10amounts_at
    sub x16, x29, #72
    str d0, [x16, #0]
    sub x16, x29, #72
    str d1, [x16, #8]
    sub x16, x29, #72
    str d2, [x16, #16]
    sub x10, x29, #72
    movz x16, #56504
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x16, #56480
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_Model_scanned
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
    movz x16, #56504
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_Model_scanned
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    sub x10, x29, #120
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x16, #56480
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_Model_16printing_density
    sub x16, x29, #144
    str d0, [x16, #0]
    sub x16, x29, #144
    str d1, [x16, #8]
    sub x16, x29, #144
    str d2, [x16, #16]
    sub x10, x29, #144
    sub x11, x29, #120
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x16, #56504
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #47432
    sub x0, x29, x16
    bl _lb_10film_model_Model_16printing_density
    sub x16, x29, #168
    str d0, [x16, #0]
    sub x16, x29, #168
    str d1, [x16, #8]
    sub x16, x29, #168
    str d2, [x16, #16]
    sub x10, x29, #168
    sub x11, x29, #144
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, L2b2bea3ffafa_k4
    mov x14, #0
L2b2bea3ffafa_14:
    cmp x14, #3
    b.hs L2b2bea3ffafa_17
    .p2align 4
L2b2bea3ffafa_15:
    lsl x15, x14, #3
    sub x10, x29, #120
    ldr d25, [x10, x15]
    sub x10, x29, #144
    ldr d26, [x10, x15]
    fsub d25, d25, d26
    sub x10, x29, #72
    ldr d26, [x10, x15]
    sub x10, x29, #96
    ldr d27, [x10, x15]
    fsub d26, d26, d27
    fdiv d25, d25, d26
    sub x10, x29, #48
    ldr d26, [x10, x15]
    fsub d25, d25, d26
    fabs d25, d25
    fcmp d25, d24
    b.mi L2b2bea3ffafa_18
L2b2bea3ffafa_19:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_5d2c9d6908e5@PAGE
    add x14, x14, _lb_text_5d2c9d6908e5@PAGEOFF
    adrp x15, _lb_text_c6b10b1512c9@PAGE
    add x15, x15, _lb_text_c6b10b1512c9@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #56520
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #168
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #31952
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31936
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31776
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31760
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2b2bea3ffafa_18:
    add x14, x14, #1
    cmp x14, #3
    b.lo L2b2bea3ffafa_15
L2b2bea3ffafa_17:
    movz x16, #31952
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31936
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31776
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31760
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    mov x0, #0
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr d8, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L2b2bea3ffafa_k0:
    .quad 4606578936449949762
L2b2bea3ffafa_k1:
    .quad 4607011282014177329
L2b2bea3ffafa_k2:
    .quad 4607344548386602746
L2b2bea3ffafa_k3:
    .quad 4599075939470750515
L2b2bea3ffafa_k4:
    .quad 4587366580439587226


    .p2align 2
    .globl _lb_10film_model_10amounts_at
_lb_10film_model_10amounts_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    fmov d24, d0
    mov x14, x0
    adrp x15, _lb_10film_model_7log_low@PAGE
    add x15, x15, _lb_10film_model_7log_low@PAGEOFF
    ldr d25, [x15]
    fsub d24, d24, d25
    adrp x15, _lb_10film_model_8log_high@PAGE
    add x15, x15, _lb_10film_model_8log_high@PAGEOFF
    ldr d26, [x15]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    b.hi L89c9538aebea_9
L89c9538aebea_8:
    fmov x15, d24
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L89c9538aebea_11
L89c9538aebea_10:
    b L89c9538aebea_23
L89c9538aebea_11:
L89c9538aebea_12:
    fcmp d24, d25
    cset w15, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w15, #0
    fcsel d24, d25, d24, ne
L89c9538aebea_23:
    movz x9, #1023
    ucvtf d27, x9
    fmul d24, d27, d24
    frintm d27, d24
    movz x9, #1022
    ucvtf d28, x9
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L89c9538aebea_25
L89c9538aebea_24:
    b L89c9538aebea_45
L89c9538aebea_25:
L89c9538aebea_26:
    fmov x12, d28
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L89c9538aebea_29
L89c9538aebea_28:
    fmov d27, d28
    b L89c9538aebea_45
L89c9538aebea_29:
L89c9538aebea_30:
    fcmp d25, d27
    b.ne L89c9538aebea_33
L89c9538aebea_35:
    fcmp d25, d28
    b.ne L89c9538aebea_33
L89c9538aebea_32:
    orr x15, x15, x12
    fmov d27, x15
    b L89c9538aebea_45
L89c9538aebea_33:
L89c9538aebea_34:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
L89c9538aebea_45:
    fcvtzu x15, d27
    ucvtf d25, x15
    fsub d24, d24, d25
    sub x11, x29, #24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fsub d25, d26, d24
    mov x12, #0
L89c9538aebea_1:
    cmp x12, #3
    b.hs L89c9538aebea_4
    .p2align 4
L89c9538aebea_2:
    sub x9, x29, #24
    add x13, x9, x12, lsl #3
    movz x10, #3
    umulh x11, x15, x10
    add x7, x15, x15, lsl #1
    cbnz x11, L89c9538aebea_c1
    adds x7, x7, x12
    b.cs L89c9538aebea_c2
    ldr x6, [x14, #15480]
    ldr x5, [x14, #15488]
    cmp x7, x5
    b.hs L89c9538aebea_c3
    ldr d26, [x6, x7, lsl #3]
    fmul d26, d26, d25
    adds x7, x15, #1
    b.cs L89c9538aebea_c4
    movz x10, #3
    umulh x11, x7, x10
    add x7, x7, x7, lsl #1
    cbnz x11, L89c9538aebea_c5
    adds x7, x7, x12
    b.cs L89c9538aebea_c6
    cmp x7, x5
    b.hs L89c9538aebea_c7
    ldr d27, [x6, x7, lsl #3]
    fmul d27, d27, d24
    fadd d26, d26, d27
    str d26, [x13]
    add x12, x12, #1
    cmp x12, #3
    b.lo L89c9538aebea_2
L89c9538aebea_4:
    sub x10, x29, #24
    sub x11, x29, #48
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #48
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89c9538aebea_9:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c1:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c2:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c3:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c4:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c5:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c6:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89c9538aebea_c7:
    adrp x0, _lb_text_f649beeaca8a@PAGE
    add x0, x0, _lb_text_f649beeaca8a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_21
_lb_test_21:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #24288
    sub sp, sp, x16
    str x19, [sp, #24280]
    str x20, [sp, #24272]
    str x21, [sp, #24264]
    str x22, [sp, #24256]
    str d8, [sp, #24248]
    str d9, [sp, #24240]
    str d10, [sp, #24232]
    str d11, [sp, #24224]
    str d12, [sp, #24216]
    str d13, [sp, #24208]
    adrp x14, _lb_text_4989a8a40d80@PAGE
    add x14, x14, _lb_text_4989a8a40d80@PAGEOFF
    str x14, [sp, #6288]
    movz x9, #4
    str x9, [sp, #6296]
    adrp x14, _lb_text_159b7e655a8a@PAGE
    add x14, x14, _lb_text_159b7e655a8a@PAGEOFF
    str x14, [sp, #6272]
    movz x9, #8
    str x9, [sp, #6280]
    movz x16, #18000
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #18016
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #3984
    bl _lb_17luce_color_camera_measured
    sub x10, x29, #3984
    sub x0, x29, #2032
    mov x1, x10
    movz x2, #1952
    bl _memcpy
    ldrb w14, [x29, #-88]
    cmp w14, #0
    b.ne L2912aef8ddb1_1
L2912aef8ddb1_2:
    mov x9, #0
    str x9, [sp, #6256]
    mov x9, #0
    str x9, [sp, #6264]
    adrp x14, _lb_text_913b2310f063@PAGE
    add x14, x14, _lb_text_913b2310f063@PAGEOFF
    adrp x15, _lb_text_bea64f107c45@PAGE
    add x15, x15, _lb_text_bea64f107c45@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18032
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #24280]
    ldr x20, [sp, #24272]
    ldr x21, [sp, #24264]
    ldr x22, [sp, #24256]
    ldr d8, [sp, #24248]
    ldr d9, [sp, #24240]
    ldr d10, [sp, #24232]
    ldr d11, [sp, #24224]
    ldr d12, [sp, #24216]
    ldr d13, [sp, #24208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2912aef8ddb1_1:
    cbz w14, L2912aef8ddb1_5
L2912aef8ddb1_4:
    sub x10, x29, #2032
    sub x0, x29, #3976
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    b L2912aef8ddb1_6
L2912aef8ddb1_5:
    mov x0, #0
    ldr x19, [sp, #24280]
    ldr x20, [sp, #24272]
    ldr x21, [sp, #24264]
    ldr x22, [sp, #24256]
    ldr d8, [sp, #24248]
    ldr d9, [sp, #24240]
    ldr d10, [sp, #24232]
    ldr d11, [sp, #24224]
    ldr d12, [sp, #24216]
    ldr d13, [sp, #24208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2912aef8ddb1_6:
    sub x10, x29, #3976
    movz x16, #19976
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x0, #11
    movz x16, #17984
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #17984
    sub x10, x29, x16
    movz x16, #9032
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #21920
    sub x0, x29, x16
    mov x1, #0
    movz x2, #1944
    bl _memset
    ldr d8, L2912aef8ddb1_k0
    fmov d9, #10.0000000
    fmov d10, xzr
    mov x19, #0
    .p2align 4
L2912aef8ddb1_8:
    cmp x19, #3
    b.hs L2912aef8ddb1_11
L2912aef8ddb1_9:
    movz x10, #81
    mul x20, x19, x10
    fmov d11, d8
    mov x14, #0
    .p2align 4
L2912aef8ddb1_12:
    cmp x14, #81
    b.hs L2912aef8ddb1_15
L2912aef8ddb1_13:
    add x15, x20, x14
    movz x10, #243
    cmp x15, x10
    b.hs L2912aef8ddb1_c1
    movz x16, #8944
    sub x10, x29, x16
    ldr d24, [x10, x15, lsl #3]
    fmov x15, d11
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L2912aef8ddb1_72
L2912aef8ddb1_71:
    b L2912aef8ddb1_92
L2912aef8ddb1_72:
L2912aef8ddb1_73:
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L2912aef8ddb1_76
L2912aef8ddb1_75:
    fmov d11, d24
    b L2912aef8ddb1_92
L2912aef8ddb1_76:
L2912aef8ddb1_77:
    fcmp d11, d10
    b.ne L2912aef8ddb1_80
L2912aef8ddb1_82:
    fcmp d24, d10
    b.ne L2912aef8ddb1_80
L2912aef8ddb1_79:
    and x15, x15, x12
    fmov d11, x15
    b L2912aef8ddb1_92
L2912aef8ddb1_80:
L2912aef8ddb1_81:
    fcmp d11, d24
    fcsel d11, d11, d24, gt
L2912aef8ddb1_92:
    add x14, x14, #1
    b L2912aef8ddb1_12
L2912aef8ddb1_15:
    mov x21, #0
    .p2align 4
L2912aef8ddb1_16:
    cmp x21, #81
    b.hs L2912aef8ddb1_19
L2912aef8ddb1_17:
    add x14, x20, x21
    movz x10, #243
    cmp x14, x10
    b.hs L2912aef8ddb1_c2
    lsl x14, x14, #3
    movz x16, #21920
    sub x10, x29, x16
    add x22, x14, x10
    movz x16, #8944
    sub x11, x29, x16
    ldr d24, [x14, x11]
    fsub d24, d24, d11
    fmov d0, d9
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    str d24, [x22]
    add x21, x21, #1
    b L2912aef8ddb1_16
L2912aef8ddb1_19:
    add x19, x19, #1
    b L2912aef8ddb1_8
L2912aef8ddb1_11:
    ldr d24, L2912aef8ddb1_k1
    fmov d8, xzr
    fmov d0, d24
    fmov d1, d8
    sub x8, x29, #728
    bl _lb_19luce_color_spectral_illuminant
    sub x10, x29, #728
    movz x16, #22568
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    movz x16, #23216
    sub x0, x29, x16
    mov x1, #0
    movz x2, #648
    bl _memset
    fmov d9, #1.0000000
    mov x14, #0
    .p2align 4
L2912aef8ddb1_20:
    cmp x14, #81
    b.hs L2912aef8ddb1_23
L2912aef8ddb1_21:
    movz x16, #23216
    sub x10, x29, x16
    str d9, [x10, x14, lsl #3]
    add x14, x14, #1
    b L2912aef8ddb1_20
L2912aef8ddb1_23:
    str d8, [sp, #24184]
    str d8, [sp, #24192]
    str d8, [sp, #24200]
    mov x14, #0
    .p2align 4
L2912aef8ddb1_93:
    cmp x14, #3
    b.hs L2912aef8ddb1_96
L2912aef8ddb1_94:
    sub x9, x29, #104
    add x15, x9, x14, lsl #3
    movz x10, #81
    mul x12, x14, x10
    mov x13, #0
    .p2align 4
L2912aef8ddb1_97:
    cmp x13, #81
    b.hs L2912aef8ddb1_100
L2912aef8ddb1_98:
    ldr d24, [x15]
    movz x16, #22568
    sub x10, x29, x16
    ldr d25, [x10, x13, lsl #3]
    add x7, x12, x13
    movz x10, #243
    cmp x7, x10
    b.hs L2912aef8ddb1_c3
    movz x16, #19976
    sub x10, x29, x16
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x15]
    add x13, x13, #1
    b L2912aef8ddb1_97
L2912aef8ddb1_100:
    add x14, x14, #1
    b L2912aef8ddb1_93
L2912aef8ddb1_96:
    ldr d10, [sp, #24184]
    ldr d11, [sp, #24192]
    ldr d12, [sp, #24200]
    fdiv d13, d9, d11
    fmov d0, d13
    fmov d1, d9
    movz x16, #19976
    sub x0, x29, x16
    movz x16, #22568
    sub x1, x29, x16
    movz x16, #22568
    sub x2, x29, x16
    movz x16, #23216
    sub x9, x29, x16
    mov x3, x9
    movz x16, #21920
    sub x9, x29, x16
    mov x4, x9
    movz x16, #22568
    sub x5, x29, x16
    sub x8, x29, #416
    bl _lb_13film_exposure_fit
    sub x10, x29, #416
    movz x16, #23528
    sub x0, x29, x16
    mov x1, x10
    movz x2, #312
    bl _memcpy
    fmul d24, d10, d13
    str d24, [sp, #736]
    fmul d24, d11, d13
    str d24, [sp, #744]
    fmul d24, d12, d13
    str d24, [sp, #752]
    movz x16, #23552
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #23528
    sub x0, x29, x16
    bl _lb_13film_exposure_apply
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    sub x10, x29, #152
    sub x11, x29, #128
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, L2912aef8ddb1_k2
    mov x14, #0
    .p2align 4
L2912aef8ddb1_24:
    cmp x14, #3
    b.hs L2912aef8ddb1_27
L2912aef8ddb1_25:
    sub x10, x29, #128
    ldr d25, [x10, x14, lsl #3]
    fsub d25, d25, d9
    fabs d25, d25
    fcmp d25, d24
    b.mi L2912aef8ddb1_28
L2912aef8ddb1_29:
    mov x9, #0
    str x9, [sp, #720]
    mov x9, #0
    str x9, [sp, #728]
    adrp x14, _lb_text_d0b16cdfaa25@PAGE
    add x14, x14, _lb_text_d0b16cdfaa25@PAGEOFF
    adrp x15, _lb_text_8e63ea743c4b@PAGE
    add x15, x15, _lb_text_8e63ea743c4b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #23568
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #24280]
    ldr x20, [sp, #24272]
    ldr x21, [sp, #24264]
    ldr x22, [sp, #24256]
    ldr d8, [sp, #24248]
    ldr d9, [sp, #24240]
    ldr d10, [sp, #24232]
    ldr d11, [sp, #24224]
    ldr d12, [sp, #24216]
    ldr d13, [sp, #24208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2912aef8ddb1_28:
    add x14, x14, #1
    b L2912aef8ddb1_24
L2912aef8ddb1_27:
L2912aef8ddb1_55:
    movz x16, #24216
    sub x9, x29, x16
    sub x10, x29, #1400
    sub x14, x9, x10
    sub x9, x29, #1400
    movz x16, #24216
    sub x10, x29, x16
    sub x15, x9, x10
    cmp x14, #648
    cset w14, hs
    cmp x15, #648
    cset w15, hs
    and w14, w14, w15
    movz x16, #24216
    sub x9, x29, x16
    sub x10, x29, #1400
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    movz x16, #22568
    sub x9, x29, x16
    sub x10, x29, #1400
    sub x15, x9, x10
    sub x9, x29, #1400
    movz x16, #22568
    sub x10, x29, x16
    sub x12, x9, x10
    cmp x15, #648
    cset w15, hs
    cmp x12, #648
    cset w12, hs
    and w15, w15, w12
    movz x16, #22568
    sub x9, x29, x16
    sub x10, x29, #1400
    cmp x9, x10
    cset w12, eq
    orr w15, w15, w12
    and w19, w14, w15
    fmov d9, d8
    mov x20, #0
    .p2align 4
L2912aef8ddb1_31:
    cmp x20, #190
    b.hs L2912aef8ddb1_34
L2912aef8ddb1_32:
    mov x0, x20
    sub x8, x29, #752
    bl _lb_17luce_color_camera_training
    sub x10, x29, #752
    movz x16, #24216
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x0, x29, #1400
    mov x1, #0
    movz x2, #648
    bl _memset
    cbnz w19, L2912aef8ddb1_65
L2912aef8ddb1_70:
    mov x14, #0
    b L2912aef8ddb1_69
L2912aef8ddb1_65:
    mov x14, #0
    .p2align 4
L2912aef8ddb1_66:
    cmp x14, #80
    b.hs L2912aef8ddb1_68
L2912aef8ddb1_67:
    lsl x15, x14, #3
    movz x16, #24216
    sub x10, x29, x16
    add x12, x15, x10
    ldr q24, [x12]
    movz x16, #22568
    sub x10, x29, x16
    add x12, x15, x10
    ldr q25, [x12]
    fmul v24.2d, v24.2d, v25.2d
    sub x10, x29, #1400
    add x15, x15, x10
    str q24, [x15]
    add x14, x14, #2
    b L2912aef8ddb1_66
L2912aef8ddb1_68:
    movz x14, #80
L2912aef8ddb1_69:
    .p2align 4
L2912aef8ddb1_35:
    cmp x14, #81
    b.hs L2912aef8ddb1_38
L2912aef8ddb1_36:
    lsl x15, x14, #3
    sub x10, x29, #1400
    add x12, x15, x10
    movz x16, #24216
    sub x11, x29, x16
    ldr d24, [x15, x11]
    movz x16, #22568
    sub x11, x29, x16
    ldr d25, [x15, x11]
    fmul d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    b L2912aef8ddb1_35
L2912aef8ddb1_38:
    str d8, [sp, #24184]
    str d8, [sp, #24192]
    str d8, [sp, #24200]
    mov x14, #0
    .p2align 4
L2912aef8ddb1_103:
    cmp x14, #3
    b.hs L2912aef8ddb1_106
L2912aef8ddb1_104:
    sub x9, x29, #104
    add x15, x9, x14, lsl #3
    movz x10, #81
    mul x12, x14, x10
    mov x13, #0
    .p2align 4
L2912aef8ddb1_107:
    cmp x13, #81
    b.hs L2912aef8ddb1_110
L2912aef8ddb1_108:
    ldr d24, [x15]
    sub x10, x29, #1400
    ldr d25, [x10, x13, lsl #3]
    add x7, x12, x13
    movz x10, #243
    cmp x7, x10
    b.hs L2912aef8ddb1_c4
    movz x16, #19976
    sub x10, x29, x16
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x15]
    add x13, x13, #1
    b L2912aef8ddb1_107
L2912aef8ddb1_110:
    add x14, x14, #1
    b L2912aef8ddb1_103
L2912aef8ddb1_106:
    ldr d24, [sp, #24184]
    ldr d25, [sp, #24192]
    ldr d26, [sp, #24200]
    str d24, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    movz x16, #24240
    sub x9, x29, x16
    ldr q24, [x9]
    dup v25.2d, v13.d[0]
    fmul v24.2d, v25.2d, v24.2d
    movz x16, #24264
    sub x9, x29, x16
    str q24, [x9]
    fmul d24, d26, d13
    str d24, [sp, #40]
    movz x16, #24264
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #23528
    sub x0, x29, x16
    bl _lb_13film_exposure_apply
    sub x16, x29, #1448
    str d0, [x16, #0]
    sub x16, x29, #1448
    str d1, [x16, #8]
    sub x16, x29, #1448
    str d2, [x16, #16]
    sub x10, x29, #1448
    sub x11, x29, #1424
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x21, #0
    .p2align 4
L2912aef8ddb1_39:
    cmp x21, #3
    b.hs L2912aef8ddb1_42
L2912aef8ddb1_40:
    movz x10, #81
    mul x14, x21, x10
    fmov d24, d8
    fmov d25, d8
    mov x15, #0
    .p2align 4
L2912aef8ddb1_43:
    cmp x15, #81
    b.hs L2912aef8ddb1_46
L2912aef8ddb1_44:
    lsl x12, x15, #3
    sub x11, x29, #1400
    ldr d26, [x12, x11]
    add x13, x14, x15
    movz x10, #243
    cmp x13, x10
    b.hs L2912aef8ddb1_c5
    movz x16, #21920
    sub x10, x29, x16
    ldr d27, [x10, x13, lsl #3]
    fmul d26, d26, d27
    fadd d24, d26, d24
    movz x16, #22568
    sub x11, x29, x16
    ldr d26, [x12, x11]
    fmul d26, d27, d26
    fadd d25, d26, d25
    add x15, x15, #1
    b L2912aef8ddb1_43
L2912aef8ddb1_46:
    sub x10, x29, #1424
    ldr d26, [x10, x21, lsl #3]
    fdiv d24, d24, d25
    fdiv d24, d26, d24
    fmov d0, d24
    bl _lb_13luce_std_math_10log2_value
    fmov d24, d0
    fabs d24, d24
    fadd d9, d9, d24
    add x21, x21, #1
    b L2912aef8ddb1_39
L2912aef8ddb1_42:
    add x20, x20, #1
    b L2912aef8ddb1_31
L2912aef8ddb1_34:
    movz x16, #25344
    sub sp, x29, x16
    movz x16, #25344
    sub x9, x29, x16
    movz x16, #24320
    sub x16, x29, x16
    str x9, [x16]
    movz x9, #1024
    movz x16, #24312
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #24304
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #24296
    sub x16, x29, x16
    str x9, [x16]
    adrp x14, _lb_text_86ad8a666116@PAGE
    add x14, x14, _lb_text_86ad8a666116@PAGEOFF
    mov x1, x14
    movz x16, #24320
    sub x0, x29, x16
    movz x2, #62
    movz x3, #1
    bl _lb_core_10stream_put
    movz x9, #570
    ucvtf d24, x9
    fdiv d8, d9, d24
    fmov d0, d8
    movz x16, #24320
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_96c7b16065e8@PAGE
    add x14, x14, _lb_text_96c7b16065e8@PAGEOFF
    mov x1, x14
    movz x16, #24320
    sub x0, x29, x16
    movz x2, #17
    movz x3, #1
    bl _lb_core_10stream_put
    adrp x14, _lb_text_ec3c9fbe6361@PAGE
    add x14, x14, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x1, x14
    movz x16, #24320
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    movz x16, #24320
    sub x0, x29, x16
    movz x1, #1
    bl _lb_core_12stream_flush
    movz x16, #24288
    sub sp, x29, x16
    ldr d24, L2912aef8ddb1_k3
    fcmp d8, d24
    b.mi L2912aef8ddb1_47
L2912aef8ddb1_48:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_d7b61c5adbe0@PAGE
    add x14, x14, _lb_text_d7b61c5adbe0@PAGEOFF
    adrp x15, _lb_text_a26c5227816d@PAGE
    add x15, x15, _lb_text_a26c5227816d@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #24280
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #24280]
    ldr x20, [sp, #24272]
    ldr x21, [sp, #24264]
    ldr x22, [sp, #24256]
    ldr d8, [sp, #24248]
    ldr d9, [sp, #24240]
    ldr d10, [sp, #24232]
    ldr d11, [sp, #24224]
    ldr d12, [sp, #24216]
    ldr d13, [sp, #24208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2912aef8ddb1_47:
    mov x0, #0
    ldr x19, [sp, #24280]
    ldr x20, [sp, #24272]
    ldr x21, [sp, #24264]
    ldr x22, [sp, #24256]
    ldr d8, [sp, #24248]
    ldr d9, [sp, #24240]
    ldr d10, [sp, #24232]
    ldr d11, [sp, #24224]
    ldr d12, [sp, #24216]
    ldr d13, [sp, #24208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2912aef8ddb1_c1:
    adrp x0, _lb_text_455114cf5fef@PAGE
    add x0, x0, _lb_text_455114cf5fef@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2912aef8ddb1_c2:
    adrp x0, _lb_text_61ff18f5ae7c@PAGE
    add x0, x0, _lb_text_61ff18f5ae7c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2912aef8ddb1_c3:
    adrp x0, _lb_text_c17e609978bf@PAGE
    add x0, x0, _lb_text_c17e609978bf@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2912aef8ddb1_c4:
    adrp x0, _lb_text_c17e609978bf@PAGE
    add x0, x0, _lb_text_c17e609978bf@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2912aef8ddb1_c5:
    adrp x0, _lb_text_7f4bed90b548@PAGE
    add x0, x0, _lb_text_7f4bed90b548@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L2912aef8ddb1_k0:
    .quad 13965043853221167104
L2912aef8ddb1_k1:
    .quad 4659255289491488768
L2912aef8ddb1_k2:
    .quad 4562254508917369340
L2912aef8ddb1_k3:
    .quad 4596373779694328218


    .p2align 2
    .globl _lb_17luce_color_camera_measured
_lb_17luce_color_camera_measured:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6048
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #6032]
    str x20, [sp, #6024]
    str x21, [sp, #6016]
    str x22, [sp, #6008]
    movz x16, #5904
    sub x16, x29, x16
    str x0, [x16]
    str x1, [x16, #8]
    movz x16, #5920
    sub x16, x29, x16
    str x2, [x16]
    str x3, [x16, #8]
    movz x16, #5984
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    movz x16, #5904
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #5920
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x16, #5984
    sub x4, x29, x16
    bl _lb_17luce_color_camera_key
    mov x19, x0
    adrp x20, _lb_22luce_color_camera_data_14measured_makes@PAGE
    add x20, x20, _lb_22luce_color_camera_data_14measured_makes@PAGEOFF
    adrp x21, _lb_22luce_color_camera_data_15measured_models@PAGE
    add x21, x21, _lb_22luce_color_camera_data_15measured_models@PAGEOFF
    mov x22, #0
Lb533d7623321_1:
    cmp x22, #52
    b.hs Lb533d7623321_4
    .p2align 4
Lb533d7623321_2:
    movz x16, #6048
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    lsl x14, x22, #4
    add x15, x20, x14
    add x14, x14, x21
    ldr x0, [x15]
    ldr x1, [x15, #8]
    ldr x2, [x14]
    ldr x3, [x14, #8]
    movz x16, #6048
    sub x4, x29, x16
    bl _lb_17luce_color_camera_key
    mov x14, x0
    cmp x19, x14
    b.eq Lb533d7623321_6
Lb533d7623321_5:
    b Lb533d7623321_16
Lb533d7623321_6:
Lb533d7623321_7:
    movz w15, #1
    mov x12, #0
Lb533d7623321_9:
    cmp x12, x14
    b.hs Lb533d7623321_12
    .p2align 4
Lb533d7623321_10:
    and w15, w15, #255
    cbnz w15, Lb533d7623321_13
Lb533d7623321_24:
    b Lb533d7623321_14
Lb533d7623321_13:
    movz x10, #64
    cmp x12, x10
    b.hs Lb533d7623321_c1
    movz x16, #6048
    sub x10, x29, x16
    ldrb w15, [x10, x12]
    movz x16, #5984
    sub x10, x29, x16
    ldrb w13, [x10, x12]
    cmp w15, w13
    cset w15, eq
Lb533d7623321_14:
    and w15, w15, #255
    add x12, x12, #1
    cmp x12, x14
    b.lo Lb533d7623321_10
Lb533d7623321_12:
    and w14, w15, #255
    cbz w14, Lb533d7623321_16
Lb533d7623321_15:
    sub x0, x29, #1984
    mov x1, #0
    movz x2, #1944
    bl _memset
    movz x10, #243
    mul x14, x22, x10
    adrp x15, _lb_22luce_color_camera_data_15measured_curves@PAGE
    add x15, x15, _lb_22luce_color_camera_data_15measured_curves@PAGEOFF
    mov x12, #0
Lb533d7623321_18:
    cmp x12, #243
    b.hs Lb533d7623321_21
    .p2align 4
Lb533d7623321_19:
    sub x9, x29, #1984
    add x13, x9, x12, lsl #3
    add x7, x14, x12
    movz x10, #12636
    cmp x7, x10
    b.hs Lb533d7623321_c2
    ldr d24, [x15, x7, lsl #3]
    str d24, [x13]
    add x12, x12, #1
    cmp x12, #243
    b.lo Lb533d7623321_19
Lb533d7623321_21:
    sub x10, x29, #1984
    sub x0, x29, #3936
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x9, #1
    strb w9, [sp, #4056]
    sub x10, x29, #3936
    movz x16, #5888
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1952
    bl _memcpy
    movz x16, #5888
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1952
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #6032]
    ldr x20, [sp, #6024]
    ldr x21, [sp, #6016]
    ldr x22, [sp, #6008]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb533d7623321_16:
Lb533d7623321_17:
Lb533d7623321_3:
    add x22, x22, #1
    cmp x22, #52
    b.lo Lb533d7623321_2
Lb533d7623321_4:
    sub x0, x29, #1992
    mov x1, #0
    movz x2, #1952
    bl _memset
    sub x10, x29, #1992
    movz x16, #5888
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1952
    bl _memcpy
    movz x16, #5888
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1952
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #6032]
    ldr x20, [sp, #6024]
    ldr x21, [sp, #6016]
    ldr x22, [sp, #6008]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb533d7623321_c1:
    adrp x0, _lb_text_1f1d01eeb161@PAGE
    add x0, x0, _lb_text_1f1d01eeb161@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb533d7623321_c2:
    adrp x0, _lb_text_28c8fc6d2552@PAGE
    add x0, x0, _lb_text_28c8fc6d2552@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_17luce_color_camera_Response_of
_lb_17luce_color_camera_Response_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    mov x14, x0
    mov x15, x1
    fmov d24, xzr
    str d24, [sp, #24]
    str d24, [sp, #32]
    str d24, [sp, #40]
    mov x12, #0
L8ddf5b5cd6f1_1:
    cmp x12, #3
    b.hs L8ddf5b5cd6f1_4
    .p2align 4
L8ddf5b5cd6f1_2:
    sub x9, x29, #24
    add x13, x9, x12, lsl #3
    movz x10, #81
    mul x7, x12, x10
    mov x6, #0
L8ddf5b5cd6f1_5:
    cmp x6, #81
    b.hs L8ddf5b5cd6f1_8
    .p2align 4
L8ddf5b5cd6f1_6:
    ldr d24, [x13]
    ldr d25, [x15, x6, lsl #3]
    add x5, x7, x6
    movz x10, #243
    cmp x5, x10
    b.hs L8ddf5b5cd6f1_c1
    ldr d26, [x14, x5, lsl #3]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x13]
    add x6, x6, #1
    cmp x6, #81
    b.lo L8ddf5b5cd6f1_6
L8ddf5b5cd6f1_8:
    add x12, x12, #1
    cmp x12, #3
    b.lo L8ddf5b5cd6f1_2
L8ddf5b5cd6f1_4:
    sub x10, x29, #24
    sub x11, x29, #48
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #48
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8ddf5b5cd6f1_c1:
    adrp x0, _lb_text_c17e609978bf@PAGE
    add x0, x0, _lb_text_c17e609978bf@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13film_exposure_fit
_lb_13film_exposure_fit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #13936
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #13920]
    str x20, [sp, #13912]
    str x21, [sp, #13904]
    str x22, [sp, #13896]
    str x23, [sp, #13888]
    str d8, [sp, #13880]
    str d9, [sp, #13872]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str d0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    movz x16, #5568
    sub x16, x29, x16
    str x3, [x16]
    movz x16, #7512
    sub x16, x29, x16
    str x4, [x16]
    sub x16, x29, #144
    str x5, [x16]
    sub x16, x29, #160
    str d1, [x16]
    movz x16, #5568
    sub x0, x29, x16
    ldr x1, [x0]
    movz x2, #648
    bl _memcpy
    movz x16, #7512
    sub x0, x29, x16
    ldr x1, [x0]
    movz x2, #1944
    bl _memcpy
    ldr x19, [sp, #13856]
    ldr d8, [sp, #13840]
    ldr x20, [sp, #13824]
    ldr x21, [sp, #13808]
    ldr x22, [sp, #13792]
    ldr d9, [sp, #13776]
    movz x16, #4608
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4448
    bl _memset
    str x19, [sp, #13696]
    str d8, [sp, #13704]
    str x20, [sp, #13712]
    str x21, [sp, #13720]
    movz x16, #5568
    sub x9, x29, x16
    str x9, [sp, #13728]
    movz x16, #7512
    sub x9, x29, x16
    str x9, [sp, #13736]
    str d9, [sp, #13768]
    movz x16, #4608
    sub x10, x29, x16
    movz x16, #11960
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4448
    bl _memcpy
    fmov d24, xzr
    mov x14, #0
Ld2d5e5b9023f_1:
    cmp x14, #507
    b.hs Ld2d5e5b9023f_4
    .p2align 4
Ld2d5e5b9023f_2:
    movz x16, #11960
    sub x10, x29, x16
    str d24, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #507
    b.lo Ld2d5e5b9023f_2
Ld2d5e5b9023f_4:
    fmov d24, xzr
    mov x14, #0
Ld2d5e5b9023f_5:
    cmp x14, #39
    b.hs Ld2d5e5b9023f_8
    .p2align 4
Ld2d5e5b9023f_6:
    movz x16, #7904
    sub x10, x29, x16
    str d24, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #39
    b.lo Ld2d5e5b9023f_6
Ld2d5e5b9023f_8:
    fmov d24, xzr
    mov x14, #0
Ld2d5e5b9023f_9:
    cmp x14, #3
    b.hs Ld2d5e5b9023f_12
    .p2align 4
Ld2d5e5b9023f_10:
    movz x10, #81
    mul x15, x14, x10
    fmov d25, d24
    mov x12, #0
Ld2d5e5b9023f_13:
    cmp x12, #81
    b.hs Ld2d5e5b9023f_16
    .p2align 4
Ld2d5e5b9023f_14:
    ldr d26, [x22, x12, lsl #3]
    add x13, x15, x12
    movz x10, #243
    cmp x13, x10
    b.hs Ld2d5e5b9023f_c1
    movz x16, #7512
    sub x10, x29, x16
    ldr d27, [x10, x13, lsl #3]
    fmul d26, d26, d27
    fadd d25, d26, d25
    add x12, x12, #1
    cmp x12, #81
    b.lo Ld2d5e5b9023f_14
Ld2d5e5b9023f_16:
    movz x16, #7544
    sub x10, x29, x16
    str d25, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #3
    b.lo Ld2d5e5b9023f_10
Ld2d5e5b9023f_12:
Ld2d5e5b9023f_51:
    fmov d8, #1.0000000
    mov x19, #0
Ld2d5e5b9023f_17:
    cmp x19, #190
    b.hs Ld2d5e5b9023f_20
    .p2align 4
Ld2d5e5b9023f_18:
    mov x0, x19
    movz x16, #12608
    sub x8, x29, x16
    bl _lb_17luce_color_camera_training
    fmov d0, d8
    movz x16, #11960
    sub x0, x29, x16
    movz x16, #12608
    sub x9, x29, x16
    mov x1, x9
    bl _lb_13film_exposure_Fitting_add
    add x19, x19, #1
    cmp x19, #190
    b.lo Ld2d5e5b9023f_18
Ld2d5e5b9023f_20:
    ldr d24, Ld2d5e5b9023f_k0
    fmov d0, d24
    sub x8, x29, #1360
    bl _lb_19luce_color_spectral_daylight
    sub x10, x29, #1360
    sub x0, x29, #712
    mov x1, x10
    movz x2, #648
    bl _memcpy
    adrp x19, _lb_13film_exposure_11sky_kelvins@PAGE
    add x19, x19, _lb_13film_exposure_11sky_kelvins@PAGEOFF
    adrp x20, _lb_13film_exposure_10sky_levels@PAGE
    add x20, x20, _lb_13film_exposure_10sky_levels@PAGEOFF
    adrp x21, _lb_13film_exposure_10sky_weight@PAGE
    add x21, x21, _lb_13film_exposure_10sky_weight@PAGEOFF
    mov x22, #0
Ld2d5e5b9023f_21:
    cmp x22, #7
    b.hs Ld2d5e5b9023f_24
    .p2align 4
Ld2d5e5b9023f_22:
    ldr d24, [x19, x22, lsl #3]
    fmov d0, d24
    sub x8, x29, #2008
    bl _lb_19luce_color_spectral_daylight
    sub x10, x29, #2008
    sub x0, x29, #1360
    mov x1, x10
    movz x2, #648
    bl _memcpy
    mov x23, #0
Ld2d5e5b9023f_25:
    cmp x23, #2
    b.hs Ld2d5e5b9023f_28
    .p2align 4
Ld2d5e5b9023f_26:
    ldr d8, [x20, x23, lsl #3]
    movz x16, #13256
    sub x0, x29, x16
    mov x1, #0
    movz x2, #648
    bl _memset
    mov x14, #0
Ld2d5e5b9023f_29:
    cmp x14, #81
    b.hs Ld2d5e5b9023f_32
    .p2align 4
Ld2d5e5b9023f_30:
    lsl x15, x14, #3
    movz x16, #13256
    sub x9, x29, x16
    add x12, x9, x15
    sub x10, x29, #1360
    ldr d24, [x10, x15]
    sub x10, x29, #712
    ldr d25, [x10, x15]
    fdiv d24, d24, d25
    fmul d24, d8, d24
    str d24, [x12]
    add x14, x14, #1
    cmp x14, #81
    b.lo Ld2d5e5b9023f_30
Ld2d5e5b9023f_32:
    ldr d24, [x21]
    fmov d0, d24
    movz x16, #11960
    sub x0, x29, x16
    movz x16, #13256
    sub x9, x29, x16
    mov x1, x9
    bl _lb_13film_exposure_Fitting_add
    add x23, x23, #1
    cmp x23, #2
    b.lo Ld2d5e5b9023f_26
Ld2d5e5b9023f_28:
    add x22, x22, #1
    cmp x22, #7
    b.lo Ld2d5e5b9023f_22
Ld2d5e5b9023f_24:
    movz x16, #13904
    sub x0, x29, x16
    mov x1, #0
    movz x2, #648
    bl _memset
    fmov d24, #1.0000000
    mov x14, #0
Ld2d5e5b9023f_33:
    cmp x14, #81
    b.hs Ld2d5e5b9023f_36
    .p2align 4
Ld2d5e5b9023f_34:
    movz x16, #13904
    sub x10, x29, x16
    str d24, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #81
    b.lo Ld2d5e5b9023f_34
Ld2d5e5b9023f_36:
    ldr d24, Ld2d5e5b9023f_k1
    fmov d0, d24
    movz x16, #11960
    sub x0, x29, x16
    movz x16, #13904
    sub x9, x29, x16
    mov x1, x9
    bl _lb_13film_exposure_Fitting_add
    sub x0, x29, #688
    mov x1, #0
    movz x2, #312
    bl _memset
    sub x10, x29, #688
    sub x0, x29, #376
    mov x1, x10
    movz x2, #312
    bl _memcpy
    mov x19, #0
Ld2d5e5b9023f_37:
    cmp x19, #3
    b.hs Ld2d5e5b9023f_40
    .p2align 4
Ld2d5e5b9023f_38:
    movz x10, #13
    mul x14, x19, x10
    movz x10, #13
    mul x15, x14, x10
    add x20, x19, #1
    movz x10, #13
    umulh x11, x20, x10
    mul x12, x20, x10
    cbnz x11, Ld2d5e5b9023f_c2
    movz x10, #13
    umulh x11, x12, x10
    mul x13, x12, x10
    cbnz x11, Ld2d5e5b9023f_c3
    movz x10, #507
    cmp x13, x10
    b.hi Ld2d5e5b9023f_c4
    cmp x15, x13
    b.hi Ld2d5e5b9023f_42
Ld2d5e5b9023f_41:
    movz x16, #11960
    sub x9, x29, x16
    add x7, x9, x15, lsl #3
    sub x15, x13, x15
    str x7, [sp, #16]
    str x15, [sp, #24]
    movz x10, #39
    cmp x12, x10
    b.hi Ld2d5e5b9023f_c5
    cmp x14, x12
    b.hi Ld2d5e5b9023f_44
Ld2d5e5b9023f_43:
    movz x16, #7904
    sub x9, x29, x16
    add x15, x9, x14, lsl #3
    sub x14, x12, x14
    str x15, [sp, #0]
    str x14, [sp, #8]
    movz x16, #13920
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #13936
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #584
    bl _lb_13film_exposure_solve
    sub x10, x29, #584
    sub x11, x29, #480
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
    ldr x16, [x10, #96]
    str x16, [x11, #96]
    mov x14, #0
Ld2d5e5b9023f_45:
    cmp x14, #13
    b.hs Ld2d5e5b9023f_48
    .p2align 4
Ld2d5e5b9023f_46:
    add x15, x14, x14, lsl #1
    add x15, x15, x19
    movz x10, #39
    cmp x15, x10
    b.hs Ld2d5e5b9023f_c6
    sub x9, x29, #376
    add x15, x9, x15, lsl #3
    sub x10, x29, #480
    ldr d24, [x10, x14, lsl #3]
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #13
    b.lo Ld2d5e5b9023f_46
Ld2d5e5b9023f_48:
    mov x19, x20
    cmp x19, #3
    b.lo Ld2d5e5b9023f_38
Ld2d5e5b9023f_40:
    sub x10, x29, #376
    movz x16, #4920
    sub x0, x29, x16
    mov x1, x10
    movz x2, #312
    bl _memcpy
    movz x16, #4920
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #312
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #13920]
    ldr x20, [sp, #13912]
    ldr x21, [sp, #13904]
    ldr x22, [sp, #13896]
    ldr x23, [sp, #13888]
    ldr d8, [sp, #13880]
    ldr d9, [sp, #13872]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld2d5e5b9023f_42:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_44:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c1:
    adrp x0, _lb_text_775226045448@PAGE
    add x0, x0, _lb_text_775226045448@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c2:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c3:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c4:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c5:
    adrp x0, _lb_text_5f97920e4712@PAGE
    add x0, x0, _lb_text_5f97920e4712@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2d5e5b9023f_c6:
    adrp x0, _lb_text_5c230ae72fe7@PAGE
    add x0, x0, _lb_text_5c230ae72fe7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld2d5e5b9023f_k0:
    .quad 4662769328653860864
Ld2d5e5b9023f_k1:
    .quad 4652007308841189376

.subsections_via_symbols
