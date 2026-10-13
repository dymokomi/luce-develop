    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_15luce_color_aces_10jmh_to_aab
_lb_15luce_color_aces_10jmh_to_aab:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str d8, [sp, #104]
    str d9, [sp, #96]
    sub x16, x29, #40
    str d0, [x16, #0]
    sub x16, x29, #40
    str d1, [x16, #8]
    sub x16, x29, #40
    str d2, [x16, #16]
    fmov d8, d3
    fmov d9, d4
    mov x14, x0
    ldr d24, [sp, #72]
    fmov d0, d24
    mov x0, x14
    bl _lb_15luce_color_aces_6j_to_a
    fmov d24, d0
    ldr d25, [sp, #80]
    fmul d26, d25, d8
    fmul d25, d25, d9
    str d24, [sp, #0]
    str d26, [sp, #8]
    str d25, [sp, #16]
    sub x9, x29, #112
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d8, [sp, #104]
    ldr d9, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_10aab_to_rgb
_lb_15luce_color_aces_10aab_to_rgb:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str d8, [sp, #184]
    str d9, [sp, #176]
    str d10, [sp, #168]
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    mov x14, x0
    add x15, x14, #216
    sub x11, x29, #120
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
    ldr d24, [sp, #144]
    ldr d25, [sp, #152]
    ldr d26, [sp, #160]
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
    fadd d8, d28, d29
    ldr d28, [sp, #120]
    fmul d24, d28, d24
    ldr d28, [sp, #128]
    fmul d25, d28, d25
    fadd d24, d24, d25
    ldr d25, [sp, #136]
    fmul d25, d25, d26
    fadd d9, d24, d25
    add x14, x14, #72
    sub x11, x29, #96
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
    fmov d0, d27
    bl _lb_15luce_color_aces_13expand_signed
    fmov d10, d0
    fmov d0, d8
    bl _lb_15luce_color_aces_13expand_signed
    fmov d8, d0
    fmov d0, d9
    bl _lb_15luce_color_aces_13expand_signed
    fmov d24, d0
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
    ldr d25, [sp, #24]
    fmul d25, d10, d25
    ldr d26, [sp, #32]
    fmul d26, d8, d26
    fadd d25, d25, d26
    ldr d26, [sp, #40]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #48]
    fmul d26, d10, d26
    ldr d27, [sp, #56]
    fmul d27, d8, d27
    fadd d26, d26, d27
    ldr d27, [sp, #64]
    fmul d27, d24, d27
    fadd d26, d26, d27
    ldr d27, [sp, #72]
    fmul d27, d10, d27
    ldr d28, [sp, #80]
    fmul d28, d8, d28
    fadd d27, d27, d28
    ldr d28, [sp, #88]
    fmul d24, d24, d28
    fadd d24, d27, d24
    str d25, [sp, #0]
    str d26, [sp, #8]
    str d24, [sp, #16]
    sub x9, x29, #192
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d8, [sp, #184]
    ldr d9, [sp, #176]
    ldr d10, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_16luce_color_cam16_14adapt_response
_lb_16luce_color_cam16_14adapt_response:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    fabs d24, d8
    ldr d25, L2f1660019495_k0
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr d25, L2f1660019495_k1
    fmul d25, d25, d24
    ldr d26, L2f1660019495_k2
    fadd d24, d26, d24
    fdiv d24, d25, d24
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
L2f1660019495_k0:
    .quad 4601237667291888353
L2f1660019495_k1:
    .quad 4645744490609377280
L2f1660019495_k2:
    .quad 4628329633800288993


    .p2align 2
    .globl _lb_16luce_color_cam16_appearance
_lb_16luce_color_cam16_appearance:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #336]
    str d9, [sp, #328]
    str d10, [sp, #320]
    str d11, [sp, #312]
    str d12, [sp, #304]
    str d13, [sp, #296]
    str d14, [sp, #288]
    str d15, [sp, #280]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    sub x16, x29, #232
    str x0, [x16]
    sub x0, x29, #232
    ldr x1, [x0]
    movz x2, #136
    bl _memcpy
    adrp x14, _lb_16luce_color_cam16_m16@PAGE
    add x14, x14, _lb_16luce_color_cam16_m16@PAGEOFF
    sub x11, x29, #304
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
    ldr d24, [sp, #256]
    ldr d25, [sp, #264]
    ldr d26, [sp, #272]
    fmov d8, xzr
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
    fadd d9, d28, d29
    ldr d28, [sp, #96]
    fmul d24, d28, d24
    ldr d28, [sp, #104]
    fmul d25, d28, d25
    fadd d24, d24, d25
    ldr d25, [sp, #112]
    fmul d25, d25, d26
    fadd d10, d24, d25
    ldr d11, [sp, #216]
    ldr d24, [sp, #232]
    fmul d24, d11, d24
    fmul d24, d24, d27
    ldr d12, Le2bb4c0704e4_k0
    fdiv d24, d24, d12
    fmov d0, d24
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d13, d0
    ldr d24, [sp, #240]
    fmul d24, d11, d24
    fmul d24, d24, d9
    fdiv d24, d24, d12
    fmov d0, d24
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d9, d0
    ldr d24, [sp, #248]
    fmul d24, d11, d24
    fmul d24, d24, d10
    fdiv d24, d24, d12
    fmov d0, d24
    bl _lb_16luce_color_cam16_14adapt_response
    fmov d24, d0
    fmov d25, #-12.0000000
    fmul d25, d9, d25
    fadd d25, d24, d25
    fmov d26, #11.0000000
    fdiv d25, d25, d26
    fadd d10, d13, d25
    fadd d25, d13, d9
    fmov d14, #2.0000000
    fmul d26, d24, d14
    fsub d25, d25, d26
    fmov d26, #9.0000000
    fdiv d15, d25, d26
    fmov d25, #20.0000000
    fmul d26, d13, d25
    fmul d27, d9, d25
    fadd d26, d26, d27
    fmov d28, #21.0000000
    fmul d28, d24, d28
    fadd d26, d26, d28
    fdiv d9, d26, d25
    ldr d26, Le2bb4c0704e4_k1
    fmul d26, d13, d26
    fadd d26, d27, d26
    fadd d24, d24, d26
    fdiv d13, d24, d25
    fmov d0, d15
    fmov d1, d10
    bl _lb_13luce_std_math_11atan2_value
    fmov d24, d0
    ldr d25, Le2bb4c0704e4_k2
    fmul d24, d25, d24
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d26, [x14]
    fdiv d24, d24, d26
    fcmp d24, d8
    cset w14, mi
    ldr d27, Le2bb4c0704e4_k3
    fadd d27, d24, d27
    cmp w14, #0
    fcsel d24, d27, d24, ne
    fmul d26, d26, d24
    fdiv d25, d26, d25
    fmov d26, #0.2500000
    fadd d25, d25, d14
    str d24, [sp, #272]
    str d26, [sp, #264]
    fmov d0, d25
    bl _lb_13luce_std_math_9cos_value
    fmov d25, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d27, Le2bb4c0704e4_k4
    fadd d25, d27, d25
    fmul d14, d25, d26
    ldr d25, [sp, #184]
    fmul d25, d25, d13
    ldr d13, [sp, #224]
    fdiv d25, d25, d13
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Le2bb4c0704e4_32
Le2bb4c0704e4_31:
    b Le2bb4c0704e4_52
Le2bb4c0704e4_32:
Le2bb4c0704e4_33:
    fmov x15, d8
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Le2bb4c0704e4_36
Le2bb4c0704e4_35:
    fmov d25, d8
    b Le2bb4c0704e4_52
Le2bb4c0704e4_36:
Le2bb4c0704e4_37:
    fcmp d25, d8
    b.ne Le2bb4c0704e4_40
Le2bb4c0704e4_42:
    fcmp d8, d8
    b.ne Le2bb4c0704e4_40
Le2bb4c0704e4_39:
    and x14, x14, x15
    fmov d25, x14
    b Le2bb4c0704e4_52
Le2bb4c0704e4_40:
Le2bb4c0704e4_41:
    fcmp d25, d8
    fcsel d25, d25, d8, gt
Le2bb4c0704e4_52:
    ldr d8, [sp, #200]
    ldr d27, [sp, #176]
    fmul d27, d27, d8
    str d24, [sp, #272]
    str d26, [sp, #264]
    fmov d0, d25
    fmov d1, d27
    bl _lb_13luce_std_math_9pow_value
    fmov d25, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    fmul d25, d12, d25
    fmov d27, #4.0000000
    fdiv d28, d27, d8
    fdiv d12, d25, d12
    fsqrt d29, d12
    fmul d28, d28, d29
    fadd d13, d13, d27
    fmul d27, d28, d13
    str d24, [sp, #272]
    str d26, [sp, #264]
    str d25, [sp, #256]
    str d27, [sp, #112]
    fmov d0, d11
    fmov d1, d26
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d25, [sp, #256]
    ldr d27, [sp, #112]
    fmul d27, d27, d28
    ldr d28, Le2bb4c0704e4_k5
    fmov d29, #13.0000000
    fdiv d28, d28, d29
    ldr d29, [sp, #208]
    fmul d28, d28, d29
    ldr d29, [sp, #192]
    fmul d28, d28, d29
    fmul d14, d28, d14
    str d24, [sp, #272]
    str d26, [sp, #264]
    str d25, [sp, #256]
    str d27, [sp, #104]
    fmov d0, d10
    fmov d1, d15
    bl _lb_13luce_std_math_11hypot_value
    fmov d28, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d25, [sp, #256]
    ldr d27, [sp, #104]
    fmul d28, d14, d28
    ldr d29, Le2bb4c0704e4_k6
    fadd d29, d29, d9
    fdiv d28, d28, d29
    ldr d29, Le2bb4c0704e4_k7
    str d24, [sp, #272]
    str d26, [sp, #264]
    str d25, [sp, #256]
    str d27, [sp, #104]
    fmov d0, d28
    fmov d1, d29
    bl _lb_13luce_std_math_9pow_value
    fmov d9, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d25, [sp, #256]
    ldr d27, [sp, #104]
    ldr d10, Le2bb4c0704e4_k8
    ldr d28, Le2bb4c0704e4_k9
    ldr d29, [sp, #168]
    str d24, [sp, #272]
    str d26, [sp, #264]
    str d25, [sp, #256]
    str d27, [sp, #104]
    fmov d0, d28
    fmov d1, d29
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d25, [sp, #256]
    ldr d27, [sp, #104]
    fsub d28, d10, d28
    ldr d29, Le2bb4c0704e4_k10
    str d24, [sp, #272]
    str d26, [sp, #264]
    str d25, [sp, #256]
    str d27, [sp, #104]
    fmov d0, d28
    fmov d1, d29
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d24, [sp, #272]
    ldr d26, [sp, #264]
    ldr d25, [sp, #256]
    ldr d27, [sp, #104]
    fmul d9, d9, d28
    fsqrt d28, d12
    fmul d10, d9, d28
    str d24, [sp, #272]
    str d25, [sp, #256]
    str d27, [sp, #104]
    fmov d0, d11
    fmov d1, d26
    bl _lb_13luce_std_math_9pow_value
    fmov d26, d0
    ldr d24, [sp, #272]
    ldr d25, [sp, #256]
    ldr d27, [sp, #104]
    fmul d26, d10, d26
    ldr d28, Le2bb4c0704e4_k11
    fmul d29, d8, d9
    fdiv d29, d29, d13
    fsqrt d29, d29
    fmul d28, d28, d29
    str d25, [sp, #0]
    str d27, [sp, #8]
    str d10, [sp, #16]
    str d26, [sp, #24]
    str d28, [sp, #32]
    str d24, [sp, #40]
    sub x1, x29, #352
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldp x16, x17, [x1, #32]
    stp x16, x17, [x0, #32]
    ldr d8, [sp, #336]
    ldr d9, [sp, #328]
    ldr d10, [sp, #320]
    ldr d11, [sp, #312]
    ldr d12, [sp, #304]
    ldr d13, [sp, #296]
    ldr d14, [sp, #288]
    ldr d15, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le2bb4c0704e4_k0:
    .quad 4636737291354636288
Le2bb4c0704e4_k1:
    .quad 4630826316843712512
Le2bb4c0704e4_k2:
    .quad 4640537203540230144
Le2bb4c0704e4_k3:
    .quad 4645040803167600640
Le2bb4c0704e4_k4:
    .quad 4615739258092021350
Le2bb4c0704e4_k5:
    .quad 4677104761256804352
Le2bb4c0704e4_k6:
    .quad 4599166011463297925
Le2bb4c0704e4_k7:
    .quad 4606281698874543309
Le2bb4c0704e4_k8:
    .quad 4610064722561534525
Le2bb4c0704e4_k9:
    .quad 4598895795485655695
Le2bb4c0704e4_k10:
    .quad 4604750475001237340
Le2bb4c0704e4_k11:
    .quad 4632233691727265792


    .p2align 2
    .globl _lb_16luce_color_cam16_8from_jch
_lb_16luce_color_cam16_8from_jch:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str d8, [sp, #232]
    str d9, [sp, #224]
    str d10, [sp, #216]
    str d11, [sp, #208]
    str d12, [sp, #200]
    str d13, [sp, #192]
    sub x16, x29, #64
    str d0, [x16]
    sub x16, x29, #80
    str d1, [x16]
    sub x16, x29, #96
    str d2, [x16]
    sub x16, x29, #232
    str x0, [x16]
    sub x0, x29, #232
    ldr x1, [x0]
    movz x2, #136
    bl _memcpy
    ldr d24, [sp, #176]
    ldr d25, [sp, #160]
    ldr d8, [sp, #144]
    fmov d26, xzr
    fcmp d24, d26
    b.hi Lfac30a5d637a_2
Lfac30a5d637a_1:
    fmov d0, d26
    fmov d1, d26
    fmov d2, d26
    ldr d8, [sp, #232]
    ldr d9, [sp, #224]
    ldr d10, [sp, #216]
    ldr d11, [sp, #208]
    ldr d12, [sp, #200]
    ldr d13, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lfac30a5d637a_2:
Lfac30a5d637a_3:
    ldr d26, Lfac30a5d637a_k0
    fdiv d9, d24, d26
    fsqrt d24, d9
    fdiv d10, d25, d24
    ldr d11, Lfac30a5d637a_k1
    ldr d24, Lfac30a5d637a_k2
    ldr d25, [sp, #56]
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fsub d24, d11, d24
    ldr d25, Lfac30a5d637a_k3
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fdiv d24, d10, d24
    fmov d10, #1.0000000
    ldr d25, Lfac30a5d637a_k4
    fdiv d25, d10, d25
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d11, d0
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d24, [x14]
    fmul d24, d24, d8
    ldr d25, Lfac30a5d637a_k5
    fdiv d8, d24, d25
    fmov d12, #0.2500000
    fmov d24, #2.0000000
    fadd d24, d8, d24
    fmov d0, d24
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    ldr d25, Lfac30a5d637a_k6
    fadd d24, d25, d24
    fmul d12, d24, d12
    ldr d13, [sp, #112]
    ldr d24, [sp, #88]
    fdiv d24, d10, d24
    ldr d25, [sp, #64]
    fdiv d24, d24, d25
    fmov d0, d9
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d13, d24
    ldr d25, Lfac30a5d637a_k7
    fmov d26, #13.0000000
    fdiv d25, d25, d26
    fmul d25, d25, d12
    ldr d26, [sp, #96]
    fmul d25, d25, d26
    ldr d26, [sp, #80]
    fmul d9, d25, d26
    ldr d25, [sp, #72]
    fdiv d10, d24, d25
    fmov d0, d8
    bl _lb_13luce_std_math_9sin_value
    fmov d12, d0
    fmov d0, d8
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    fmov d25, #23.0000000
    ldr d26, Lfac30a5d637a_k8
    fadd d26, d26, d10
    fmul d26, d25, d26
    fmul d26, d26, d11
    fmul d25, d25, d9
    fmov d27, #11.0000000
    fmul d27, d27, d11
    fmul d27, d27, d24
    fadd d25, d25, d27
    ldr d27, Lfac30a5d637a_k9
    fmul d27, d27, d11
    fmul d27, d27, d12
    fadd d25, d25, d27
    fdiv d25, d26, d25
    fmul d24, d25, d24
    fmul d25, d25, d12
    ldr d26, Lfac30a5d637a_k10
    fmul d26, d26, d10
    ldr d27, Lfac30a5d637a_k11
    fmul d27, d24, d27
    fadd d27, d26, d27
    ldr d28, Lfac30a5d637a_k12
    fmul d28, d25, d28
    fadd d27, d27, d28
    ldr d28, Lfac30a5d637a_k13
    fdiv d27, d27, d28
    ldr d29, Lfac30a5d637a_k14
    fmul d29, d24, d29
    fsub d29, d26, d29
    ldr d30, Lfac30a5d637a_k15
    fmul d30, d25, d30
    fsub d29, d29, d30
    fdiv d8, d29, d28
    ldr d29, Lfac30a5d637a_k16
    fmul d24, d24, d29
    fsub d24, d26, d24
    ldr d26, Lfac30a5d637a_k17
    fmul d25, d25, d26
    fsub d24, d24, d25
    fdiv d9, d24, d28
    ldr d10, [sp, #104]
    fmov d0, d27
    fmov d1, d10
    bl _lb_16luce_color_cam16_16inverse_response
    fmov d24, d0
    ldr d25, [sp, #120]
    fdiv d11, d24, d25
    fmov d0, d8
    fmov d1, d10
    bl _lb_16luce_color_cam16_16inverse_response
    fmov d24, d0
    ldr d25, [sp, #128]
    fdiv d8, d24, d25
    fmov d0, d9
    fmov d1, d10
    bl _lb_16luce_color_cam16_16inverse_response
    fmov d24, d0
    ldr d25, [sp, #136]
    fdiv d9, d24, d25
    adrp x14, _lb_16luce_color_cam16_m16@PAGE
    add x14, x14, _lb_16luce_color_cam16_m16@PAGEOFF
    mov x0, x14
    sub x8, x29, #120
    bl _lb_14luce_color_xyz_invert
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
    ldr d24, [sp, #120]
    fmul d24, d11, d24
    ldr d25, [sp, #128]
    fmul d25, d8, d25
    fadd d24, d24, d25
    ldr d25, [sp, #136]
    fmul d25, d9, d25
    fadd d24, d24, d25
    ldr d25, [sp, #144]
    fmul d25, d11, d25
    ldr d26, [sp, #152]
    fmul d26, d8, d26
    fadd d25, d25, d26
    ldr d26, [sp, #160]
    fmul d26, d9, d26
    fadd d25, d25, d26
    ldr d26, [sp, #168]
    fmul d26, d11, d26
    ldr d27, [sp, #176]
    fmul d27, d8, d27
    fadd d26, d26, d27
    ldr d27, [sp, #184]
    fmul d27, d9, d27
    fadd d26, d26, d27
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    ldr d8, [sp, #232]
    ldr d9, [sp, #224]
    ldr d10, [sp, #216]
    ldr d11, [sp, #208]
    ldr d12, [sp, #200]
    ldr d13, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lfac30a5d637a_k0:
    .quad 4636737291354636288
Lfac30a5d637a_k1:
    .quad 4610064722561534525
Lfac30a5d637a_k2:
    .quad 4598895795485655695
Lfac30a5d637a_k3:
    .quad 4604750475001237340
Lfac30a5d637a_k4:
    .quad 4606281698874543309
Lfac30a5d637a_k5:
    .quad 4640537203540230144
Lfac30a5d637a_k6:
    .quad 4615739258092021350
Lfac30a5d637a_k7:
    .quad 4677104761256804352
Lfac30a5d637a_k8:
    .quad 4599166011463297925
Lfac30a5d637a_k9:
    .quad 4637300241308057600
Lfac30a5d637a_k10:
    .quad 4646800021772042240
Lfac30a5d637a_k11:
    .quad 4646641692097642496
Lfac30a5d637a_k12:
    .quad 4643774165772402688
Lfac30a5d637a_k13:
    .quad 4653885274701430784
Lfac30a5d637a_k14:
    .quad 4651048534701768704
Lfac30a5d637a_k15:
    .quad 4643299176749203456
Lfac30a5d637a_k16:
    .quad 4641944578423783424
Lfac30a5d637a_k17:
    .quad 4663648937956081664


    .p2align 2
    .globl _lb_13luce_std_math_13log2_accurate
_lb_13luce_std_math_13log2_accurate:
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
    b.lo Le7a2fdec8149_2
Le7a2fdec8149_1:
    fcmp d24, d24
    b.eq Le7a2fdec8149_36
Le7a2fdec8149_35:
    fadd d24, d24, d24
    b Le7a2fdec8149_48
Le7a2fdec8149_36:
Le7a2fdec8149_37:
    and x15, x14, #9223372036854775807
    cmp x15, #0
    b.ne Le7a2fdec8149_40
Le7a2fdec8149_39:
    ldr d24, Le7a2fdec8149_k0
    b Le7a2fdec8149_48
Le7a2fdec8149_40:
Le7a2fdec8149_41:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne Le7a2fdec8149_44
Le7a2fdec8149_43:
    b Le7a2fdec8149_48
Le7a2fdec8149_44:
Le7a2fdec8149_45:
    ldr d24, Le7a2fdec8149_k1
Le7a2fdec8149_48:
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le7a2fdec8149_2:
    movz x10, #16, lsl #48
    cmp x14, x10
    cset w15, lo
    ldr d25, Le7a2fdec8149_k2
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
    b.vs Le7a2fdec8149_c1
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
    ldr d29, Le7a2fdec8149_k3
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
    ldr d19, Le7a2fdec8149_k4
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
    ldr d26, Le7a2fdec8149_k5
    ldr d27, Le7a2fdec8149_k6
    fmul d28, d26, d25
    fneg d29, d28
    fmadd d29, d25, d26, d29
    fmul d25, d27, d25
    fmul d24, d26, d24
    fadd d24, d25, d24
    fadd d24, d24, d29
    fadd d25, d24, d28
    fsub d26, d25, d28
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
Le7a2fdec8149_c1:
    adrp x0, _lb_text_b31734b3701c@PAGE
    add x0, x0, _lb_text_b31734b3701c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Le7a2fdec8149_k0:
    .quad 18442240474082181120
Le7a2fdec8149_k1:
    .quad 9221120237041090560
Le7a2fdec8149_k2:
    .quad 4841369599423283200
Le7a2fdec8149_k3:
    .quad 4604418534313441280
Le7a2fdec8149_k4:
    .quad 4408728642709317424
Le7a2fdec8149_k5:
    .quad 4609176140021203710
Le7a2fdec8149_k6:
    .quad 4357082904033627428


    .p2align 2
    .globl _lb_15luce_color_aces_15compress_signed
_lb_15luce_color_aces_15compress_signed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    fabs d24, d8
    fmov d0, d24
    bl _lb_15luce_color_aces_13compress_cone
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
    .globl _lb_15luce_color_aces_diagonal
_lb_15luce_color_aces_diagonal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #32
    str d0, [x16, #0]
    sub x16, x29, #32
    str d1, [x16, #8]
    sub x16, x29, #32
    str d2, [x16, #16]
    ldr d24, [sp, #144]
    str d24, [sp, #72]
    fmov d24, xzr
    str d24, [sp, #80]
    str d24, [sp, #88]
    str d24, [sp, #96]
    ldr d25, [sp, #152]
    str d25, [sp, #104]
    str d24, [sp, #112]
    str d24, [sp, #120]
    str d24, [sp, #128]
    ldr d24, [sp, #160]
    str d24, [sp, #136]
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
    sub x1, x29, #176
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_product
_lb_15luce_color_aces_product:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
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
    ldr x16, [x10, #64]
    str x16, [x9, #64]
    sub x9, x29, #152
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
    sub x11, x29, #224
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
Ld9825300546a_1:
    cmp x14, #3
    b.hs Ld9825300546a_4
    .p2align 4
Ld9825300546a_2:
    add x15, x14, x14, lsl #1
    sub x9, x29, #80
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
Ld9825300546a_5:
    cmp x6, #3
    b.hs Ld9825300546a_8
    .p2align 4
Ld9825300546a_6:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs Ld9825300546a_c1
    sub x9, x29, #224
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #152
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs Ld9825300546a_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs Ld9825300546a_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs Ld9825300546a_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs Ld9825300546a_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo Ld9825300546a_6
Ld9825300546a_8:
    add x14, x14, #1
    cmp x14, #3
    b.lo Ld9825300546a_2
Ld9825300546a_4:
    sub x10, x29, #224
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld9825300546a_c1:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld9825300546a_c2:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld9825300546a_c3:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld9825300546a_c4:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld9825300546a_c5:
    adrp x0, _lb_text_0f9f4180b80d@PAGE
    add x0, x0, _lb_text_0f9f4180b80d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_13compress_cone
_lb_15luce_color_aces_13compress_cone:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    ldr d25, L921af12b23f7_k0
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    adrp x14, _lb_15luce_color_aces_18compression_offset@PAGE
    add x14, x14, _lb_15luce_color_aces_18compression_offset@PAGEOFF
    ldr d25, [x14]
    fadd d25, d25, d24
    fdiv d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L921af12b23f7_k0:
    .quad 4601237667291888353


    .p2align 2
    .globl _lb_15luce_color_aces_6a_to_j
_lb_15luce_color_aces_6a_to_j:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    mov x14, x0
    adrp x15, _lb_15luce_color_aces_7j_scale@PAGE
    add x15, x15, _lb_15luce_color_aces_7j_scale@PAGEOFF
    ldr d8, [x15]
    ldr d25, [x14, #296]
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d24, d8
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_10jmh_to_rgb
_lb_15luce_color_aces_10jmh_to_rgb:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #136]
    str d8, [sp, #128]
    str d9, [sp, #120]
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    mov x19, x0
    ldr d24, [sp, #112]
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    ldr d25, L7ff31e9ae3de_k0
    fdiv d8, d24, d25
    sub x10, x29, #48
    sub x11, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    fmov d0, d8
    bl _lb_13luce_std_math_9cos_value
    fmov d9, d0
    fmov d0, d8
    bl _lb_13luce_std_math_9sin_value
    fmov d24, d0
    sub x9, x29, #112
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d9
    fmov d4, d24
    mov x0, x19
    bl _lb_15luce_color_aces_10jmh_to_aab
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    sub x9, x29, #136
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_15luce_color_aces_10aab_to_rgb
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    sub x10, x29, #48
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #88
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #136]
    ldr d8, [sp, #128]
    ldr d9, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7ff31e9ae3de_k0:
    .quad 4640537203540230144


    .p2align 2
    .globl _lb_15luce_color_aces_12any_negative
_lb_15luce_color_aces_12any_negative:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str d0, [x16, #0]
    sub x16, x29, #24
    str d1, [x16, #8]
    sub x16, x29, #24
    str d2, [x16, #16]
    ldr d24, [sp, #8]
    fmov d25, xzr
    fcmp d24, d25
    cset w14, mi
    cbz w14, L5f1c39349bbf_1
L5f1c39349bbf_6:
    b L5f1c39349bbf_2
L5f1c39349bbf_1:
    ldr d24, [sp, #16]
    fcmp d24, d25
    cset w14, mi
L5f1c39349bbf_2:
    and w14, w14, #255
    cbz w14, L5f1c39349bbf_3
L5f1c39349bbf_7:
    b L5f1c39349bbf_4
L5f1c39349bbf_3:
    ldr d24, [sp, #24]
    fcmp d24, d25
    cset w14, mi
L5f1c39349bbf_4:
    and w14, w14, #255
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_6j_to_a
_lb_15luce_color_aces_6j_to_a:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    mov x14, x0
    adrp x15, _lb_15luce_color_aces_7j_scale@PAGE
    add x15, x15, _lb_15luce_color_aces_7j_scale@PAGEOFF
    ldr d25, [x15]
    fdiv d24, d24, d25
    fmov d25, #1.0000000
    ldr d26, [x14, #296]
    fdiv d25, d25, d26
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_11cube_corner
_lb_15luce_color_aces_11cube_corner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    mov x14, x0
    adds x15, x14, #1
    b.cs L61778d522f82_c1
    movz x10, #6
    udiv x11, x15, x10
    msub x15, x11, x10, x15
    cmp x15, #3
    cset w15, lo
    fmov d24, #1.0000000
    fmov d25, xzr
    cmp w15, #0
    fcsel d24, d24, d25, ne
    adds x15, x14, #5
    b.cs L61778d522f82_c2
    movz x10, #6
    udiv x11, x15, x10
    msub x15, x11, x10, x15
    cmp x15, #3
    cset w15, lo
    fmov d25, #1.0000000
    fmov d26, xzr
    cmp w15, #0
    fcsel d25, d25, d26, ne
    adds x14, x14, #3
    b.cs L61778d522f82_c3
    movz x10, #6
    udiv x11, x14, x10
    msub x14, x11, x10, x14
    cmp x14, #3
    cset w14, lo
    fmov d26, #1.0000000
    fmov d27, xzr
    cmp w14, #0
    fcsel d26, d26, d27, ne
    str d24, [sp, #8]
    str d25, [sp, #16]
    str d26, [sp, #24]
    sub x9, x29, #24
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L61778d522f82_c1:
    adrp x0, _lb_text_c46f0bba6b14@PAGE
    add x0, x0, _lb_text_c46f0bba6b14@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L61778d522f82_c2:
    adrp x0, _lb_text_c46f0bba6b14@PAGE
    add x0, x0, _lb_text_c46f0bba6b14@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L61778d522f82_c3:
    adrp x0, _lb_text_c46f0bba6b14@PAGE
    add x0, x0, _lb_text_c46f0bba6b14@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_arrange
_lb_15luce_color_aces_arrange:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1168
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1152]
    sub x16, x29, #640
    str x0, [x16]
    sub x16, x29, #784
    str x1, [x16]
    sub x0, x29, #640
    ldr x1, [x0]
    movz x2, #144
    bl _memcpy
    sub x0, x29, #784
    ldr x1, [x0]
    movz x2, #144
    bl _memcpy
    mov x19, #0
    mov x14, #0
L0b44afd273d1_1:
    cmp x14, #6
    b.hs L0b44afd273d1_4
    .p2align 4
L0b44afd273d1_2:
    add x15, x14, x14, lsl #1
    add x15, x15, #2
    movz x10, #18
    cmp x15, x10
    b.hs L0b44afd273d1_c1
    sub x10, x29, #784
    ldr d24, [x10, x15, lsl #3]
    movz x10, #3
    umulh x11, x19, x10
    add x15, x19, x19, lsl #1
    cbnz x11, L0b44afd273d1_c2
    adds x15, x15, #2
    b.cs L0b44afd273d1_c3
    movz x10, #18
    cmp x15, x10
    b.hs L0b44afd273d1_c4
    sub x10, x29, #784
    ldr d25, [x10, x15, lsl #3]
    fcmp d24, d25
    csel x19, x14, x19, mi
    add x14, x14, #1
    cmp x14, #6
    b.lo L0b44afd273d1_2
L0b44afd273d1_4:
    sub x0, x29, #1168
    mov x1, #0
    movz x2, #384
    bl _memset
    sub x9, x29, #40
    add x14, x9, #16
    sub x9, x29, #64
    add x15, x9, #16
    mov x12, #0
L0b44afd273d1_8:
    cmp x12, #6
    b.hs L0b44afd273d1_11
    .p2align 4
L0b44afd273d1_9:
    adds x13, x19, x12
    b.cs L0b44afd273d1_c5
    movz x10, #6
    udiv x11, x13, x10
    msub x13, x11, x10, x13
    add x12, x12, #1
    add x13, x13, x13, lsl #1
    lsl x7, x13, #3
    sub x10, x29, #640
    add x6, x7, x10
    add x5, x13, #1
    movz x10, #18
    cmp x5, x10
    b.hs L0b44afd273d1_c6
    ldr q24, [x6]
    add x13, x13, #2
    movz x10, #18
    cmp x13, x10
    b.hs L0b44afd273d1_c7
    ldr d25, [x6, #16]
    sub x10, x29, #784
    add x13, x7, x10
    ldr q26, [x13]
    ldr d27, [x13, #16]
    sub x9, x29, #40
    str q24, [x9]
    str d25, [x14]
    sub x9, x29, #64
    str q26, [x9]
    str d27, [x15]
    mov x13, #0
L0b44afd273d1_15:
    cmp x13, #3
    b.hs L0b44afd273d1_18
    .p2align 4
L0b44afd273d1_16:
    movz x10, #3
    umulh x11, x12, x10
    add x7, x12, x12, lsl #1
    cbnz x11, L0b44afd273d1_c8
    adds x7, x7, x13
    b.cs L0b44afd273d1_c9
    movz x10, #24
    cmp x7, x10
    b.hs L0b44afd273d1_c10
    lsl x7, x7, #3
    sub x10, x29, #1168
    add x6, x7, x10
    lsl x5, x13, #3
    sub x11, x29, #40
    ldr d24, [x5, x11]
    str d24, [x6]
    sub x10, x29, #976
    add x7, x7, x10
    sub x11, x29, #64
    ldr d24, [x5, x11]
    str d24, [x7]
    add x13, x13, #1
    cmp x13, #3
    b.lo L0b44afd273d1_16
L0b44afd273d1_18:
    cmp x12, #6
    b.lo L0b44afd273d1_9
L0b44afd273d1_11:
    sub x9, x29, #1024
    ldr q24, [x9]
    ldr d25, [sp, #160]
    sub x9, x29, #40
    str q24, [x9]
    str d25, [sp, #1144]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #832
    ldr q24, [x9]
    sub x9, x29, #88
    str q24, [x9]
    ldr d24, [sp, #352]
    ldr d25, L0b44afd273d1_k0
    fsub d24, d24, d25
    str d24, [sp, #1096]
    sub x10, x29, #64
    sub x11, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x10, x29, #88
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x14, #0
L0b44afd273d1_22:
    cmp x14, #3
    b.hs L0b44afd273d1_25
    .p2align 4
L0b44afd273d1_23:
    lsl x15, x14, #3
    sub x10, x29, #1168
    add x12, x15, x10
    sub x11, x29, #112
    ldr d24, [x15, x11]
    str d24, [x12]
    sub x10, x29, #976
    add x12, x15, x10
    sub x11, x29, #64
    ldr d24, [x15, x11]
    str d24, [x12]
    add x14, x14, #1
    cmp x14, #3
    b.lo L0b44afd273d1_23
L0b44afd273d1_25:
    sub x9, x29, #1144
    ldr q24, [x9]
    ldr d26, [sp, #40]
    sub x9, x29, #40
    str q24, [x9]
    str d26, [sp, #1144]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #952
    ldr q24, [x9]
    sub x9, x29, #40
    str q24, [x9]
    ldr d24, [sp, #232]
    fadd d24, d24, d25
    str d24, [sp, #1144]
    sub x10, x29, #64
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x14, #0
L0b44afd273d1_29:
    cmp x14, #3
    b.hs L0b44afd273d1_32
    .p2align 4
L0b44afd273d1_30:
    add x15, x14, #21
    movz x10, #24
    cmp x15, x10
    b.hs L0b44afd273d1_c11
    lsl x15, x15, #3
    sub x10, x29, #1168
    add x12, x15, x10
    lsl x13, x14, #3
    sub x11, x29, #88
    ldr d24, [x13, x11]
    str d24, [x12]
    sub x10, x29, #976
    add x15, x15, x10
    sub x11, x29, #64
    ldr d24, [x13, x11]
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L0b44afd273d1_30
L0b44afd273d1_32:
    sub x10, x29, #1168
    sub x0, x29, #496
    mov x1, x10
    movz x2, #384
    bl _memcpy
    sub x1, x29, #496
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #384
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0b44afd273d1_c1:
    adrp x0, _lb_text_7423bd1e4222@PAGE
    add x0, x0, _lb_text_7423bd1e4222@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c2:
    adrp x0, _lb_text_7423bd1e4222@PAGE
    add x0, x0, _lb_text_7423bd1e4222@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c3:
    adrp x0, _lb_text_7423bd1e4222@PAGE
    add x0, x0, _lb_text_7423bd1e4222@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c4:
    adrp x0, _lb_text_7423bd1e4222@PAGE
    add x0, x0, _lb_text_7423bd1e4222@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c5:
    adrp x0, _lb_text_dde08b29832f@PAGE
    add x0, x0, _lb_text_dde08b29832f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c6:
    adrp x0, _lb_text_cbc53dacca76@PAGE
    add x0, x0, _lb_text_cbc53dacca76@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c7:
    adrp x0, _lb_text_cbc53dacca76@PAGE
    add x0, x0, _lb_text_cbc53dacca76@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c8:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c9:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c10:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0b44afd273d1_c11:
    adrp x0, _lb_text_dda561a2ba4f@PAGE
    add x0, x0, _lb_text_dda561a2ba4f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L0b44afd273d1_k0:
    .quad 4645040803167600640


    .p2align 2
    .globl _lb_15luce_color_aces_13fill_interval
_lb_15luce_color_aces_13fill_interval:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    mov x15, x1
    mov x12, x2
    fsub d25, d25, d24
    ucvtf d26, x15
    fdiv d25, d25, d26
    mov x13, #0
L7c3449af1c97_1:
    cmp x13, x15
    b.hs L7c3449af1c97_4
    .p2align 4
L7c3449af1c97_2:
    adds x7, x12, x13
    b.cs L7c3449af1c97_c1
    movz x10, #363
    cmp x7, x10
    b.hs L7c3449af1c97_c2
    add x7, x14, x7, lsl #3
    ucvtf d26, x13
    fmul d26, d25, d26
    fadd d26, d26, d24
    str d26, [x7]
    add x13, x13, #1
    cmp x13, x15
    b.lo L7c3449af1c97_2
L7c3449af1c97_4:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7c3449af1c97_c1:
    adrp x0, _lb_text_7cbb2c5b46b2@PAGE
    add x0, x0, _lb_text_7cbb2c5b46b2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L7c3449af1c97_c2:
    adrp x0, _lb_text_7cbb2c5b46b2@PAGE
    add x0, x0, _lb_text_7cbb2c5b46b2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_12cusp_for_hue
_lb_15luce_color_aces_12cusp_for_hue:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    str x19, [sp, #312]
    str x20, [sp, #304]
    str x21, [sp, #296]
    str x22, [sp, #288]
    str x23, [sp, #280]
    str x24, [sp, #272]
    str x25, [sp, #264]
    str d8, [sp, #256]
    str d9, [sp, #248]
    str d10, [sp, #240]
    str d11, [sp, #232]
    str d12, [sp, #224]
    str d13, [sp, #216]
    str d14, [sp, #208]
    str d15, [sp, #200]
    fmov d8, d0
    mov x14, x0
    mov x19, x1
    mov x20, x2
    add x15, x14, #192
    movz x12, #1
Lab217c9b9011_1:
    cmp x12, #8
    b.lo Lab217c9b9011_2
Lab217c9b9011_53:
    movz x12, #1
    b Lab217c9b9011_4
    .p2align 4
Lab217c9b9011_2:
    add x13, x12, x12, lsl #1
    add x13, x13, #2
    movz x10, #24
    cmp x13, x10
    b.hs Lab217c9b9011_c1
    ldr d24, [x15, x13, lsl #3]
    fcmp d24, d8
    b.le Lab217c9b9011_6
Lab217c9b9011_5:
    b Lab217c9b9011_4
Lab217c9b9011_6:
Lab217c9b9011_7:
    add x12, x12, #1
    cmp x12, #8
    b.lo Lab217c9b9011_2
    b Lab217c9b9011_53
Lab217c9b9011_4:
    subs x13, x12, #1
    b.cc Lab217c9b9011_c2
    movz x10, #3
    umulh x11, x13, x10
    add x13, x13, x13, lsl #1
    cbnz x11, Lab217c9b9011_c3
    adds x7, x13, #2
    b.cs Lab217c9b9011_c4
    movz x10, #24
    cmp x7, x10
    b.hs Lab217c9b9011_c5
    add x21, x15, x7, lsl #3
    ldr d24, [x21]
    fcmp d8, d24
    b.ne Lab217c9b9011_10
Lab217c9b9011_9:
    movz x10, #24
    cmp x13, x10
    b.hs Lab217c9b9011_c6
    add x14, x15, x13, lsl #3
    add x15, x13, #1
    movz x10, #24
    cmp x15, x10
    b.hs Lab217c9b9011_c7
    ldr q24, [x14]
    sub x9, x29, #224
    str q24, [x9]
    sub x9, x29, #224
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr x19, [sp, #312]
    ldr x20, [sp, #304]
    ldr x21, [sp, #296]
    ldr x22, [sp, #288]
    ldr x23, [sp, #280]
    ldr x24, [sp, #272]
    ldr x25, [sp, #264]
    ldr d8, [sp, #256]
    ldr d9, [sp, #248]
    ldr d10, [sp, #240]
    ldr d11, [sp, #232]
    ldr d12, [sp, #224]
    ldr d13, [sp, #216]
    ldr d14, [sp, #208]
    ldr d15, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab217c9b9011_10:
Lab217c9b9011_11:
    movz x10, #24
    cmp x13, x10
    b.hs Lab217c9b9011_c8
    add x7, x14, x13, lsl #3
    add x6, x13, #1
    movz x10, #24
    cmp x6, x10
    b.hs Lab217c9b9011_c9
    ldr q24, [x7]
    add x13, x13, #2
    movz x10, #24
    cmp x13, x10
    b.hs Lab217c9b9011_c10
    ldr d9, [x7, #16]
    sub x9, x29, #144
    str q24, [x9]
    str d9, [sp, #192]
    ldr d10, [sp, #176]
    ldr d11, [sp, #184]
    movz x10, #3
    umulh x11, x12, x10
    add x13, x12, x12, lsl #1
    cbnz x11, Lab217c9b9011_c11
    movz x10, #24
    cmp x13, x10
    b.hs Lab217c9b9011_c12
    add x14, x14, x13, lsl #3
    add x7, x13, #1
    movz x10, #24
    cmp x7, x10
    b.hs Lab217c9b9011_c13
    ldr q24, [x14]
    add x22, x13, #2
    movz x10, #24
    cmp x22, x10
    b.hs Lab217c9b9011_c14
    lsl x13, x22, #3
    ldr d12, [x14, #16]
    sub x9, x29, #144
    str q24, [x9]
    str d12, [sp, #192]
    ldr d13, [sp, #176]
    ldr d14, [sp, #184]
    ucvtf d15, x12
    ldr d24, [x20]
    fcmp d24, d15
    b.ne Lab217c9b9011_14
Lab217c9b9011_13:
    ldr d24, [x20, #8]
    b Lab217c9b9011_15
Lab217c9b9011_14:
    fmov d24, xzr
Lab217c9b9011_15:
    fmov d25, #1.0000000
    ldr d26, Lab217c9b9011_k0
    fmov d27, #2.0000000
    sub x9, x29, #272
    add x23, x9, #8
    sub x9, x29, #272
    add x24, x9, #16
    fsub d28, d13, d10
    fsub d29, d14, d11
    fsub d30, d12, d9
    add x25, x13, x15
    .p2align 4
Lab217c9b9011_16:
    fsub d31, d25, d24
    fcmp d31, d26
    b.le Lab217c9b9011_18
Lab217c9b9011_17:
    fadd d31, d24, d25
    fdiv d31, d31, d27
    fmul d19, d28, d31
    fadd d19, d19, d10
    fmul d20, d29, d31
    fadd d20, d20, d11
    fmul d21, d30, d31
    fadd d21, d21, d9
    str d19, [sp, #48]
    str d20, [x23]
    str d21, [x24]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d26, [sp, #192]
    str d27, [sp, #184]
    str d24, [sp, #128]
    str d25, [sp, #120]
    str d31, [sp, #112]
    sub x9, x29, #272
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_15luce_color_aces_10rgb_to_aab
    sub x16, x29, #296
    str d0, [x16, #0]
    sub x16, x29, #296
    str d1, [x16, #8]
    sub x16, x29, #296
    str d2, [x16, #16]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d26, [sp, #192]
    ldr d27, [sp, #184]
    ldr d24, [sp, #128]
    ldr d25, [sp, #120]
    ldr d31, [sp, #112]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d26, [sp, #192]
    str d27, [sp, #184]
    str d24, [sp, #128]
    str d25, [sp, #120]
    str d31, [sp, #112]
    sub x9, x29, #296
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_15luce_color_aces_10aab_to_jmh
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d26, [sp, #192]
    ldr d27, [sp, #184]
    ldr d24, [sp, #128]
    ldr d25, [sp, #120]
    ldr d31, [sp, #112]
    ldr d19, [sp, #176]
    ldr d20, [x21]
    fcmp d19, d20
    b.pl Lab217c9b9011_20
Lab217c9b9011_19:
    b Lab217c9b9011_21
Lab217c9b9011_20:
    movz x10, #24
    cmp x22, x10
    b.hs Lab217c9b9011_c15
    ldr d20, [x25]
    fcmp d19, d20
    cset w14, ge
    fcmp d19, d8
    cset w15, gt
    cmp w15, #0
    fcsel d24, d24, d31, ne
    cmp w15, #0
    fcsel d19, d31, d25, ne
    cmp w14, #0
    fcsel d24, d31, d24, ne
    cmp w14, #0
    fcsel d25, d25, d19, ne
    fmov d31, d25
Lab217c9b9011_21:
    fmov d25, d31
    b Lab217c9b9011_16
Lab217c9b9011_18:
    fadd d24, d24, d25
    fdiv d8, d24, d27
    fsub d24, d13, d10
    fmul d24, d24, d8
    fadd d24, d24, d10
    fsub d25, d14, d11
    fmul d25, d25, d8
    fadd d25, d25, d11
    fsub d26, d12, d9
    fmul d26, d26, d8
    fadd d26, d26, d9
    str d24, [sp, #0]
    sub x9, x29, #320
    add x14, x9, #8
    str d25, [x14]
    sub x9, x29, #320
    add x14, x9, #16
    str d26, [x14]
    sub x9, x29, #320
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_15luce_color_aces_10rgb_to_aab
    sub x16, x29, #296
    str d0, [x16, #0]
    sub x16, x29, #296
    str d1, [x16, #8]
    sub x16, x29, #296
    str d2, [x16, #16]
    sub x9, x29, #296
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_15luce_color_aces_10aab_to_jmh
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    ldr x14, [sp, #160]
    ldr x15, [sp, #168]
    ldr d24, [sp, #176]
    str x14, [sp, #72]
    str x15, [sp, #80]
    str d24, [sp, #88]
    str d15, [x20]
    str d8, [x20, #8]
    sub x9, x29, #248
    ldr q24, [x9]
    sub x9, x29, #224
    str q24, [x9]
    sub x9, x29, #224
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr x19, [sp, #312]
    ldr x20, [sp, #304]
    ldr x21, [sp, #296]
    ldr x22, [sp, #288]
    ldr x23, [sp, #280]
    ldr x24, [sp, #272]
    ldr x25, [sp, #264]
    ldr d8, [sp, #256]
    ldr d9, [sp, #248]
    ldr d10, [sp, #240]
    ldr d11, [sp, #232]
    ldr d12, [sp, #224]
    ldr d13, [sp, #216]
    ldr d14, [sp, #208]
    ldr d15, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab217c9b9011_c1:
    adrp x0, _lb_text_0a9966a0852d@PAGE
    add x0, x0, _lb_text_0a9966a0852d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c2:
    adrp x0, _lb_text_df8414c29682@PAGE
    add x0, x0, _lb_text_df8414c29682@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c3:
    adrp x0, _lb_text_0a9966a0852d@PAGE
    add x0, x0, _lb_text_0a9966a0852d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c4:
    adrp x0, _lb_text_0a9966a0852d@PAGE
    add x0, x0, _lb_text_0a9966a0852d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c5:
    adrp x0, _lb_text_0a9966a0852d@PAGE
    add x0, x0, _lb_text_0a9966a0852d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c6:
    adrp x0, _lb_text_f69731ff181d@PAGE
    add x0, x0, _lb_text_f69731ff181d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c7:
    adrp x0, _lb_text_f69731ff181d@PAGE
    add x0, x0, _lb_text_f69731ff181d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c8:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c9:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c10:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c11:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c12:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c13:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c14:
    adrp x0, _lb_text_d875cc9031a2@PAGE
    add x0, x0, _lb_text_d875cc9031a2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab217c9b9011_c15:
    adrp x0, _lb_text_0a9966a0852d@PAGE
    add x0, x0, _lb_text_0a9966a0852d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lab217c9b9011_k0:
    .quad 4502148214488346440


    .p2align 2
    .globl _lb_15luce_color_aces_10copy_entry
_lb_15luce_color_aces_10copy_entry:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov x12, x2
    movz x10, #3
    umulh x11, x15, x10
    add x15, x15, x15, lsl #1
    cbnz x11, Le074d4adb274_c1
    movz x10, #1089
    cmp x15, x10
    b.hs Le074d4adb274_c2
    add x13, x14, x15, lsl #3
    movz x10, #3
    umulh x11, x12, x10
    add x12, x12, x12, lsl #1
    cbnz x11, Le074d4adb274_c3
    movz x10, #1089
    cmp x12, x10
    b.hs Le074d4adb274_c4
    add x14, x14, x12, lsl #3
    ldr d24, [x14]
    str d24, [x13]
    add x15, x15, #1
    movz x10, #1089
    cmp x15, x10
    b.hs Le074d4adb274_c5
    add x15, x12, #1
    movz x10, #1089
    cmp x15, x10
    b.hs Le074d4adb274_c6
    ldr d24, [x14, #8]
    str d24, [x13, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le074d4adb274_c1:
    adrp x0, _lb_text_b7855e7d2b5d@PAGE
    add x0, x0, _lb_text_b7855e7d2b5d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le074d4adb274_c2:
    adrp x0, _lb_text_b7855e7d2b5d@PAGE
    add x0, x0, _lb_text_b7855e7d2b5d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le074d4adb274_c3:
    adrp x0, _lb_text_b7855e7d2b5d@PAGE
    add x0, x0, _lb_text_b7855e7d2b5d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le074d4adb274_c4:
    adrp x0, _lb_text_b7855e7d2b5d@PAGE
    add x0, x0, _lb_text_b7855e7d2b5d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le074d4adb274_c5:
    adrp x0, _lb_text_ac3c060c145b@PAGE
    add x0, x0, _lb_text_ac3c060c145b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le074d4adb274_c6:
    adrp x0, _lb_text_ac3c060c145b@PAGE
    add x0, x0, _lb_text_ac3c060c145b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_10focus_j_of
_lb_15luce_color_aces_10focus_j_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, #1.0000000
    adrp x14, _lb_15luce_color_aces_14cusp_mid_blend@PAGE
    add x14, x14, _lb_15luce_color_aces_14cusp_mid_blend@PAGEOFF
    ldr d28, [x14]
    fdiv d26, d24, d26
    fsub d26, d28, d26
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lee2d30872931_5
Lee2d30872931_4:
    b Lee2d30872931_25
Lee2d30872931_5:
Lee2d30872931_6:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lee2d30872931_9
Lee2d30872931_8:
    fmov d27, d26
    b Lee2d30872931_25
Lee2d30872931_9:
Lee2d30872931_10:
    fmov d28, xzr
    fcmp d27, d28
    b.ne Lee2d30872931_13
Lee2d30872931_15:
    fcmp d26, d28
    b.ne Lee2d30872931_13
Lee2d30872931_12:
    orr x14, x14, x15
    fmov d27, x14
    b Lee2d30872931_25
Lee2d30872931_13:
Lee2d30872931_14:
    fcmp d27, d26
    fcsel d27, d27, d26, mi
Lee2d30872931_25:
    fsub d25, d25, d24
    fmul d25, d25, d27
    fadd d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_10focus_gain
_lb_15luce_color_aces_10focus_gain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    fmul d8, d26, d27
    fcmp d24, d25
    b.le L979edf631fab_2
L979edf631fab_1:
    fsub d25, d26, d25
    ldr d27, L979edf631fab_k0
    fsub d24, d26, d24
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L979edf631fab_8
L979edf631fab_7:
    b L979edf631fab_28
L979edf631fab_8:
L979edf631fab_9:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L979edf631fab_12
L979edf631fab_11:
    fmov d27, d24
    b L979edf631fab_28
L979edf631fab_12:
L979edf631fab_13:
    fmov d26, xzr
    fcmp d27, d26
    b.ne L979edf631fab_16
L979edf631fab_18:
    fcmp d24, d26
    b.ne L979edf631fab_16
L979edf631fab_15:
    and x14, x14, x15
    fmov d27, x14
    b L979edf631fab_28
L979edf631fab_16:
L979edf631fab_17:
    fcmp d27, d24
    fcsel d27, d27, d24, gt
L979edf631fab_28:
    fdiv d24, d25, d27
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fmul d24, d24, d24
    fmov d25, #1.0000000
    fadd d24, d24, d25
    fmul d24, d24, d8
    b L979edf631fab_3
L979edf631fab_2:
    fmov d24, d8
L979edf631fab_3:
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L979edf631fab_k0:
    .quad 4547007122018943789


    .p2align 2
    .globl _lb_15luce_color_aces_11j_intersect
_lb_15luce_color_aces_11j_intersect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    fmov d28, d4
    fdiv d25, d25, d28
    fdiv d28, d25, d26
    fcmp d24, d26
    b.pl Lcf5cc6ba6037_2
Lcf5cc6ba6037_1:
    fmov d26, #1.0000000
    fsub d25, d26, d25
    fneg d24, d24
    fmov d26, #-2.0000000
    fmul d26, d24, d26
    fmul d27, d25, d25
    fmov d29, #4.0000000
    fmul d28, d28, d29
    fmul d24, d24, d28
    fsub d24, d27, d24
    fsqrt d24, d24
    fadd d24, d25, d24
    fdiv d24, d26, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcf5cc6ba6037_2:
Lcf5cc6ba6037_3:
    fmov d26, #1.0000000
    fadd d26, d25, d26
    fmul d29, d28, d27
    fadd d26, d26, d29
    fneg d26, d26
    fmul d25, d25, d27
    fadd d24, d25, d24
    fmov d25, #-2.0000000
    fmul d25, d24, d25
    fmul d27, d26, d26
    fmov d29, #4.0000000
    fmul d28, d28, d29
    fmul d24, d24, d28
    fsub d24, d27, d24
    fsqrt d24, d24
    fsub d24, d26, d24
    fdiv d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_12vector_slope
_lb_15luce_color_aces_12vector_slope:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    fcmp d24, d25
    fsub d26, d26, d24
    fcsel d26, d24, d26, mi
    fsub d24, d24, d25
    fmul d24, d24, d26
    fmul d25, d25, d27
    fdiv d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_fits
_lb_15luce_color_aces_fits:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str d8, [sp, #144]
    str d9, [sp, #136]
    str d10, [sp, #128]
    str d11, [sp, #120]
    str d12, [sp, #112]
    str d13, [sp, #104]
    str d14, [sp, #96]
    str d15, [sp, #88]
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
    fmov d11, d3
    fmov d12, d4
    fmov d13, d5
    fmov d14, d6
    mov x19, x0
    mov x20, x1
    mov x21, #0
L44378e8a4d2a_1:
    cmp x21, #5
    b.hs L44378e8a4d2a_4
    .p2align 4
L44378e8a4d2a_2:
    lsl x14, x21, #2
    add x15, x19, x14, lsl #3
    ldr d15, [x15]
    add x12, x14, #1
    movz x10, #20
    cmp x12, x10
    b.hs L44378e8a4d2a_c1
    ldr d24, [x15, #8]
    add x14, x14, #2
    movz x10, #20
    cmp x14, x10
    b.hs L44378e8a4d2a_c2
    ldr d25, [x15, #16]
    str d24, [sp, #32]
    fmov d0, d10
    fmov d1, d11
    fmov d2, d12
    fmov d3, d8
    fmov d4, d13
    fmov d5, d15
    fmov d6, d24
    fmov d7, d25
    bl _lb_15luce_color_aces_10boundary_m
    fmov d25, d0
    ldr d24, [sp, #32]
    fmul d24, d24, d25
    fadd d24, d15, d24
    str d24, [sp, #8]
    str d25, [sp, #16]
    str d9, [sp, #24]
    sub x9, x29, #168
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x20
    bl _lb_15luce_color_aces_10jmh_to_rgb
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    sub x10, x29, #136
    sub x11, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #64]
    fcmp d24, d14
    b.gt L44378e8a4d2a_6
L44378e8a4d2a_9:
    ldr d24, [sp, #72]
    fcmp d24, d14
    b.gt L44378e8a4d2a_6
L44378e8a4d2a_8:
    ldr d24, [sp, #80]
    fcmp d24, d14
    b.gt L44378e8a4d2a_6
L44378e8a4d2a_5:
    mov x0, #0
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr d8, [sp, #144]
    ldr d9, [sp, #136]
    ldr d10, [sp, #128]
    ldr d11, [sp, #120]
    ldr d12, [sp, #112]
    ldr d13, [sp, #104]
    ldr d14, [sp, #96]
    ldr d15, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44378e8a4d2a_6:
L44378e8a4d2a_7:
    add x21, x21, #1
    cmp x21, #5
    b.lo L44378e8a4d2a_2
L44378e8a4d2a_4:
    movz x0, #1
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr d8, [sp, #144]
    ldr d9, [sp, #136]
    ldr d10, [sp, #128]
    ldr d11, [sp, #120]
    ldr d12, [sp, #112]
    ldr d13, [sp, #104]
    ldr d14, [sp, #96]
    ldr d15, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44378e8a4d2a_c1:
    adrp x0, _lb_text_83848c66dfac@PAGE
    add x0, x0, _lb_text_83848c66dfac@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L44378e8a4d2a_c2:
    adrp x0, _lb_text_2fea0a7a2ec8@PAGE
    add x0, x0, _lb_text_2fea0a7a2ec8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_15luce_color_aces_toe
_lb_15luce_color_aces_toe:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    fcmp d24, d25
    b.le L7c8a3f9d9f25_2
L7c8a3f9d9f25_1:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7c8a3f9d9f25_2:
L7c8a3f9d9f25_3:
    ldr d28, L7c8a3f9d9f25_k0
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L7c8a3f9d9f25_11
L7c8a3f9d9f25_10:
    b L7c8a3f9d9f25_31
L7c8a3f9d9f25_11:
L7c8a3f9d9f25_12:
    fmov x15, d28
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L7c8a3f9d9f25_15
L7c8a3f9d9f25_14:
    fmov d27, d28
    b L7c8a3f9d9f25_31
L7c8a3f9d9f25_15:
L7c8a3f9d9f25_16:
    fmov d29, xzr
    fcmp d27, d29
    b.ne L7c8a3f9d9f25_19
L7c8a3f9d9f25_21:
    fcmp d28, d29
    b.ne L7c8a3f9d9f25_19
L7c8a3f9d9f25_18:
    and x14, x14, x15
    fmov d27, x14
    b L7c8a3f9d9f25_31
L7c8a3f9d9f25_19:
L7c8a3f9d9f25_20:
    fcmp d27, d28
    fcsel d27, d27, d28, gt
L7c8a3f9d9f25_31:
    fmul d26, d26, d26
    fmul d28, d27, d27
    fadd d26, d26, d28
    fsqrt d26, d26
    fadd d28, d25, d26
    fadd d25, d25, d27
    fdiv d25, d28, d25
    fmul d28, d25, d24
    fsub d26, d28, d26
    fmul d25, d25, d27
    fmul d24, d25, d24
    fmov d25, #0.5000000
    fmul d27, d26, d26
    fmov d28, #4.0000000
    fmul d24, d24, d28
    fadd d24, d27, d24
    fsqrt d24, d24
    fadd d24, d26, d24
    fmul d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7c8a3f9d9f25_k0:
    .quad 4562254508917369340

.subsections_via_symbols
