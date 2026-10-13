    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_test_33
_lb_test_33:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6128
    sub sp, sp, x16
    sub x8, x29, #3056
    bl _lb_settings_defaults
    sub x10, x29, #3056
    movz x16, #6112
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    ldr d24, L72c6b8db2c08_k0
    ldr d25, L72c6b8db2c08_k1
    fmov d0, d24
    fmov d1, d25
    movz x16, #6112
    sub x0, x29, x16
    movz x1, #1
    sub x8, x29, #144
    bl _lb_geometry_9frame_map
    sub x10, x29, #144
    sub x11, x29, #72
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
    fmov d24, #0.2500000
    fmov d25, #0.7500000
    sub x10, x29, #72
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
    ldr d26, [sp, #6032]
    fmul d26, d26, d24
    ldr d27, [sp, #6040]
    fmul d27, d27, d25
    fadd d26, d26, d27
    ldr d27, [sp, #6048]
    fadd d26, d26, d27
    fabs d27, d26
    ldr d28, L72c6b8db2c08_k2
    fcmp d27, d28
    b.le L72c6b8db2c08_10
L72c6b8db2c08_9:
    fmov d27, #1.0000000
    fdiv d26, d27, d26
    b L72c6b8db2c08_11
L72c6b8db2c08_10:
    ldr d26, L72c6b8db2c08_k3
L72c6b8db2c08_11:
    ldr d27, [sp, #5984]
    fmul d27, d27, d24
    ldr d29, [sp, #5992]
    fmul d29, d29, d25
    fadd d27, d27, d29
    ldr d29, [sp, #6000]
    fadd d27, d27, d29
    fmul d27, d27, d26
    ldr d29, [sp, #6008]
    fmul d29, d29, d24
    ldr d30, [sp, #6016]
    fmul d30, d30, d25
    fadd d29, d29, d30
    ldr d30, [sp, #6024]
    fadd d29, d29, d30
    fmul d26, d29, d26
    fsub d24, d27, d24
    fabs d24, d24
    fcmp d24, d28
    b.pl L72c6b8db2c08_2
L72c6b8db2c08_3:
    fsub d24, d26, d25
    fabs d24, d24
    fcmp d24, d28
    b.mi L72c6b8db2c08_1
L72c6b8db2c08_2:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_fee2b4788c3a@PAGE
    add x14, x14, _lb_text_fee2b4788c3a@PAGEOFF
    adrp x15, _lb_text_864319750167@PAGE
    add x15, x15, _lb_text_864319750167@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6128
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L72c6b8db2c08_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L72c6b8db2c08_k0:
    .quad 4663319084467748864
L72c6b8db2c08_k1:
    .quad 4661014508095930368
L72c6b8db2c08_k2:
    .quad 4427486594234968593
L72c6b8db2c08_k3:
    .quad 4786511204640096256


    .p2align 2
    .globl _lb_geometry_9frame_map
_lb_geometry_9frame_map:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    fmov d24, d0
    fmov d25, d1
    mov x19, x0
    uxtb w20, w1
    fmov d0, d24
    fmov d1, d25
    mov x0, x19
    sub x8, x29, #168
    bl _lb_geometry_18frame_without_crop
    sub x10, x29, #168
    sub x11, x29, #96
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
    cbnz w20, L63663c619790_2
L63663c619790_1:
    sub x10, x29, #96
    sub x11, x29, #312
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
    sub x1, x29, #312
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63663c619790_2:
L63663c619790_3:
    mov x0, x19
    bl _lb_geometry_7crop_of
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    fmov d28, xzr
    fcmp d24, d28
    b.ne L63663c619790_6
L63663c619790_10:
    fcmp d25, d28
    b.ne L63663c619790_6
L63663c619790_9:
    fmov d29, #1.0000000
    fcmp d26, d29
    b.ne L63663c619790_6
L63663c619790_8:
    fcmp d27, d29
    b.ne L63663c619790_6
L63663c619790_5:
    sub x10, x29, #96
    sub x11, x29, #312
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
    sub x1, x29, #312
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63663c619790_6:
L63663c619790_7:
    fsub d26, d26, d24
    str d26, [sp, #80]
    str d28, [sp, #88]
    str d24, [sp, #96]
    str d28, [sp, #104]
    fsub d24, d27, d25
    str d24, [sp, #112]
    str d25, [sp, #120]
    str d28, [sp, #128]
    str d28, [sp, #136]
    fmov d24, #1.0000000
    str d24, [sp, #144]
    sub x10, x29, #240
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
    sub x10, x29, #96
    sub x11, x29, #240
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
    sub x10, x29, #168
    sub x11, x29, #96
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
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L63663c619790_13:
    cmp x14, #3
    b.hs L63663c619790_16
    .p2align 4
L63663c619790_14:
    add x15, x14, x14, lsl #1
    sub x9, x29, #240
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L63663c619790_17:
    cmp x6, #3
    b.hs L63663c619790_20
    .p2align 4
L63663c619790_18:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L63663c619790_c1
    sub x9, x29, #168
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #96
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L63663c619790_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L63663c619790_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L63663c619790_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L63663c619790_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L63663c619790_18
L63663c619790_20:
    add x14, x14, #1
    cmp x14, #3
    b.lo L63663c619790_14
L63663c619790_16:
    sub x10, x29, #168
    sub x11, x29, #96
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
    sub x10, x29, #168
    sub x11, x29, #312
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
    sub x1, x29, #312
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63663c619790_c1:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L63663c619790_c2:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L63663c619790_c3:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L63663c619790_c4:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L63663c619790_c5:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_geometry_project
_lb_geometry_project:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
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
    ldr d26, [sp, #88]
    fmul d26, d26, d24
    ldr d27, [sp, #96]
    fmul d27, d27, d25
    fadd d26, d26, d27
    ldr d27, [sp, #104]
    fadd d26, d26, d27
    fabs d27, d26
    ldr d28, Lde9ddacb7317_k0
    fcmp d27, d28
    b.le Lde9ddacb7317_2
Lde9ddacb7317_1:
    fmov d27, #1.0000000
    fdiv d26, d27, d26
    b Lde9ddacb7317_3
Lde9ddacb7317_2:
    ldr d26, Lde9ddacb7317_k1
Lde9ddacb7317_3:
    ldr d27, [sp, #40]
    fmul d27, d27, d24
    ldr d28, [sp, #48]
    fmul d28, d28, d25
    fadd d27, d27, d28
    ldr d28, [sp, #56]
    fadd d27, d27, d28
    fmul d27, d27, d26
    ldr d28, [sp, #64]
    fmul d24, d28, d24
    ldr d28, [sp, #72]
    fmul d25, d28, d25
    fadd d24, d24, d25
    ldr d25, [sp, #80]
    fadd d24, d24, d25
    fmul d24, d24, d26
    fmov d0, d27
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lde9ddacb7317_k0:
    .quad 4427486594234968593
Lde9ddacb7317_k1:
    .quad 4786511204640096256


    .p2align 2
    .globl _lb_geometry_18frame_without_crop
_lb_geometry_18frame_without_crop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #576
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #560]
    str d8, [sp, #552]
    str d9, [sp, #544]
    str d10, [sp, #536]
    str d11, [sp, #528]
    fmov d8, d0
    fmov d9, d1
    mov x19, x0
    fmov d16, #1.0000000
    str d16, [sp, #384]
    fmov d16, xzr
    str d16, [sp, #392]
    fmov d16, xzr
    str d16, [sp, #400]
    fmov d16, xzr
    str d16, [sp, #408]
    fmov d16, #1.0000000
    str d16, [sp, #416]
    fmov d16, xzr
    str d16, [sp, #424]
    fmov d16, xzr
    str d16, [sp, #432]
    fmov d16, xzr
    str d16, [sp, #440]
    fmov d16, #1.0000000
    str d16, [sp, #448]
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
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d24, [x14]
    ldr d17, L4a85fa1ffe3b_k0
    fdiv d24, d24, d17
    movz x9, #92
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c1
    ldr d25, [x19, x14, lsl #3]
    fmul d25, d24, d25
    movz x9, #93
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c2
    ldr d26, [x19, x14, lsl #3]
    ldr d17, L4a85fa1ffe3b_k1
    fdiv d26, d26, d17
    adrp x14, _lb_geometry_13reach_degrees@PAGE
    add x14, x14, _lb_geometry_13reach_degrees@PAGEOFF
    ldr d27, [x14]
    fmul d26, d26, d27
    fmul d26, d24, d26
    movz x9, #94
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c3
    ldr d28, [x19, x14, lsl #3]
    ldr d17, L4a85fa1ffe3b_k1
    fdiv d28, d28, d17
    fmul d27, d27, d28
    fmul d24, d24, d27
    str d25, [sp, #72]
    str d26, [sp, #80]
    str d24, [sp, #88]
    movz x9, #95
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c4
    ldr d27, [x19, x14, lsl #3]
    ldr d17, L4a85fa1ffe3b_k1
    fdiv d27, d27, d17
    movz x9, #96
    str w9, [sp, #440]
    ldrb w14, [sp, #440]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c5
    ldr d28, [x19, x14, lsl #3]
    ldr d17, L4a85fa1ffe3b_k1
    fdiv d10, d28, d17
    fmov d17, xzr
    fcmp d25, d17
    b.ne L4a85fa1ffe3b_2
L4a85fa1ffe3b_7:
    fmov d16, xzr
    fcmp d16, d26
    b.ne L4a85fa1ffe3b_2
L4a85fa1ffe3b_6:
    fmov d16, xzr
    fcmp d16, d24
    b.ne L4a85fa1ffe3b_2
L4a85fa1ffe3b_5:
    fmov d16, xzr
    fcmp d16, d27
    b.ne L4a85fa1ffe3b_2
L4a85fa1ffe3b_4:
    fmov d16, #1.0000000
    fcmp d16, d10
    b.ne L4a85fa1ffe3b_2
L4a85fa1ffe3b_1:
    sub x10, x29, #120
    sub x11, x29, #480
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
    sub x1, x29, #480
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
    ldr x19, [sp, #560]
    ldr d8, [sp, #552]
    ldr d9, [sp, #544]
    ldr d10, [sp, #536]
    ldr d11, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4a85fa1ffe3b_2:
    sub x9, x29, #504
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d27
    fmov d4, d8
    fmov d5, d9
    sub x8, x29, #120
    bl _lb_geometry_correction
    sub x10, x29, #120
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
    sub x11, x29, #112
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    fmov d16, xzr
    str d16, [sp, #400]
    fmov d16, xzr
    str d16, [sp, #408]
    str d8, [sp, #416]
    fmov d16, xzr
    str d16, [sp, #424]
    str d8, [sp, #432]
    str d9, [sp, #440]
    fmov d16, xzr
    str d16, [sp, #448]
    str d9, [sp, #456]
    ldr d24, L4a85fa1ffe3b_k2
    ldr d25, L4a85fa1ffe3b_k2
    ldr d26, L4a85fa1ffe3b_k3
    ldr d27, L4a85fa1ffe3b_k3
    mov x14, #0
L4a85fa1ffe3b_9:
    cmp x14, #4
    b.hs L4a85fa1ffe3b_12
    .p2align 4
L4a85fa1ffe3b_10:
    lsl x15, x14, #1
    lsl x12, x15, #3
    sub x9, x29, #176
    add x13, x9, x12
    ldr d28, [x13]
    add x15, x15, #1
    movz x10, #8
    cmp x15, x10
    b.hs L4a85fa1ffe3b_c6
    ldr d29, [x13, #8]
    sub x10, x29, #576
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
    ldr d30, [sp, #376]
    fmul d30, d28, d30
    ldr d31, [sp, #384]
    fmul d31, d29, d31
    fadd d30, d30, d31
    ldr d31, [sp, #392]
    fadd d30, d30, d31
    fabs d31, d30
    ldr d17, L4a85fa1ffe3b_k4
    fcmp d31, d17
    b.le L4a85fa1ffe3b_63
L4a85fa1ffe3b_62:
    fmov d16, #1.0000000
    fdiv d30, d16, d30
    b L4a85fa1ffe3b_64
L4a85fa1ffe3b_63:
    ldr d30, L4a85fa1ffe3b_k5
L4a85fa1ffe3b_64:
    ldr d31, [sp, #328]
    fmul d31, d28, d31
    ldr d19, [sp, #336]
    fmul d19, d29, d19
    fadd d31, d31, d19
    ldr d19, [sp, #344]
    fadd d31, d31, d19
    fmul d31, d31, d30
    ldr d19, [sp, #352]
    fmul d28, d28, d19
    ldr d19, [sp, #360]
    fmul d29, d29, d19
    fadd d28, d28, d29
    ldr d29, [sp, #368]
    fadd d28, d28, d29
    fmul d28, d28, d30
    sub x9, x29, #112
    add x15, x9, x12
    str d31, [x15]
    str d28, [x15, #8]
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_70
L4a85fa1ffe3b_69:
    b L4a85fa1ffe3b_90
L4a85fa1ffe3b_70:
L4a85fa1ffe3b_71:
    fmov x12, d31
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L4a85fa1ffe3b_74
L4a85fa1ffe3b_73:
    fmov d24, d31
    b L4a85fa1ffe3b_90
L4a85fa1ffe3b_74:
L4a85fa1ffe3b_75:
    fmov d16, xzr
    fcmp d16, d24
    b.ne L4a85fa1ffe3b_78
L4a85fa1ffe3b_80:
    fmov d17, xzr
    fcmp d31, d17
    b.ne L4a85fa1ffe3b_78
L4a85fa1ffe3b_77:
    orr x15, x15, x12
    fmov d24, x15
    b L4a85fa1ffe3b_90
L4a85fa1ffe3b_78:
L4a85fa1ffe3b_79:
    fcmp d24, d31
    fcsel d24, d24, d31, mi
L4a85fa1ffe3b_90:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_92
L4a85fa1ffe3b_91:
    b L4a85fa1ffe3b_112
L4a85fa1ffe3b_92:
L4a85fa1ffe3b_93:
    fmov x12, d28
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L4a85fa1ffe3b_96
L4a85fa1ffe3b_95:
    fmov d25, d28
    b L4a85fa1ffe3b_112
L4a85fa1ffe3b_96:
L4a85fa1ffe3b_97:
    fmov d16, xzr
    fcmp d16, d25
    b.ne L4a85fa1ffe3b_100
L4a85fa1ffe3b_102:
    fmov d17, xzr
    fcmp d28, d17
    b.ne L4a85fa1ffe3b_100
L4a85fa1ffe3b_99:
    orr x15, x15, x12
    fmov d25, x15
    b L4a85fa1ffe3b_112
L4a85fa1ffe3b_100:
L4a85fa1ffe3b_101:
    fcmp d25, d28
    fcsel d25, d25, d28, mi
L4a85fa1ffe3b_112:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_114
L4a85fa1ffe3b_113:
    b L4a85fa1ffe3b_134
L4a85fa1ffe3b_114:
L4a85fa1ffe3b_115:
    fmov x12, d31
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L4a85fa1ffe3b_118
L4a85fa1ffe3b_117:
    fmov d26, d31
    b L4a85fa1ffe3b_134
L4a85fa1ffe3b_118:
L4a85fa1ffe3b_119:
    fmov d16, xzr
    fcmp d16, d26
    b.ne L4a85fa1ffe3b_122
L4a85fa1ffe3b_124:
    fmov d17, xzr
    fcmp d31, d17
    b.ne L4a85fa1ffe3b_122
L4a85fa1ffe3b_121:
    and x15, x15, x12
    fmov d26, x15
    b L4a85fa1ffe3b_134
L4a85fa1ffe3b_122:
L4a85fa1ffe3b_123:
    fcmp d26, d31
    fcsel d26, d26, d31, gt
L4a85fa1ffe3b_134:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_136
L4a85fa1ffe3b_135:
    b L4a85fa1ffe3b_156
L4a85fa1ffe3b_136:
L4a85fa1ffe3b_137:
    fmov x12, d28
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L4a85fa1ffe3b_140
L4a85fa1ffe3b_139:
    fmov d27, d28
    b L4a85fa1ffe3b_156
L4a85fa1ffe3b_140:
L4a85fa1ffe3b_141:
    fmov d16, xzr
    fcmp d16, d27
    b.ne L4a85fa1ffe3b_144
L4a85fa1ffe3b_146:
    fmov d17, xzr
    fcmp d28, d17
    b.ne L4a85fa1ffe3b_144
L4a85fa1ffe3b_143:
    and x15, x15, x12
    fmov d27, x15
    b L4a85fa1ffe3b_156
L4a85fa1ffe3b_144:
L4a85fa1ffe3b_145:
    fcmp d27, d28
    fcsel d27, d27, d28, gt
L4a85fa1ffe3b_156:
    add x14, x14, #1
    cmp x14, #4
    b.lo L4a85fa1ffe3b_10
L4a85fa1ffe3b_12:
    fmov d17, #0.5000000
    fmul d28, d8, d17
    fmov d17, #0.5000000
    fmul d29, d9, d17
    sub x10, x29, #576
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
    ldr d30, [sp, #440]
    fmul d30, d30, d28
    ldr d31, [sp, #448]
    fmul d31, d31, d29
    fadd d30, d30, d31
    ldr d31, [sp, #456]
    fadd d30, d30, d31
    fabs d31, d30
    ldr d17, L4a85fa1ffe3b_k4
    fcmp d31, d17
    b.le L4a85fa1ffe3b_158
L4a85fa1ffe3b_157:
    fmov d16, #1.0000000
    fdiv d30, d16, d30
    b L4a85fa1ffe3b_159
L4a85fa1ffe3b_158:
    ldr d30, L4a85fa1ffe3b_k5
L4a85fa1ffe3b_159:
    ldr d31, [sp, #392]
    fmul d31, d31, d28
    ldr d19, [sp, #400]
    fmul d19, d19, d29
    fadd d31, d31, d19
    ldr d19, [sp, #408]
    fadd d31, d31, d19
    fmul d31, d31, d30
    ldr d19, [sp, #416]
    fmul d19, d19, d28
    ldr d20, [sp, #424]
    fmul d20, d20, d29
    fadd d19, d19, d20
    ldr d20, [sp, #432]
    fadd d19, d19, d20
    fmul d30, d19, d30
    movz x9, #97
    str w9, [sp, #448]
    ldrb w14, [sp, #448]
    movz x10, #118
    cmp x14, x10
    b.hs L4a85fa1ffe3b_c7
    ldr d19, [x19, x14, lsl #3]
    fmov d17, #0.5000000
    fcmp d19, d17
    b.le L4a85fa1ffe3b_14
L4a85fa1ffe3b_13:
    ldr d24, L4a85fa1ffe3b_k6
    fmov d25, #4.0000000
    mov x14, #0
L4a85fa1ffe3b_16:
    cmp x14, #50
    b.hs L4a85fa1ffe3b_19
    .p2align 4
L4a85fa1ffe3b_17:
    fadd d26, d24, d25
    fmov d17, #0.5000000
    fmul d26, d26, d17
    fmul d27, d28, d26
    fmul d19, d29, d26
    sub x10, x29, #112
    sub x11, x29, #240
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    fsub d20, d31, d27
    fsub d21, d30, d19
    fadd d27, d27, d31
    fadd d19, d19, d30
    str d20, [sp, #400]
    str d21, [sp, #408]
    str d27, [sp, #416]
    str d21, [sp, #424]
    str d27, [sp, #432]
    str d19, [sp, #440]
    str d20, [sp, #448]
    str d19, [sp, #456]
    fmov d27, xzr
    mov x15, #0
L4a85fa1ffe3b_38:
    cmp x15, #4
    b.hs L4a85fa1ffe3b_41
    .p2align 4
L4a85fa1ffe3b_39:
    lsl x12, x15, #1
    sub x9, x29, #240
    add x13, x9, x12, lsl #3
    ldr d19, [x13]
    add x12, x12, #1
    movz x10, #8
    cmp x12, x10
    b.hs L4a85fa1ffe3b_c8
    ldr d20, [x13, #8]
    add x15, x15, #1
    and x12, x15, #3
    lsl x12, x12, #1
    sub x9, x29, #240
    add x13, x9, x12, lsl #3
    ldr d21, [x13]
    add x12, x12, #1
    movz x10, #8
    cmp x12, x10
    b.hs L4a85fa1ffe3b_c9
    ldr d22, [x13, #8]
    fsub d21, d21, d19
    fsub d22, d22, d20
    mov x12, #0
L4a85fa1ffe3b_46:
    cmp x12, #4
    b.hs L4a85fa1ffe3b_49
    .p2align 4
L4a85fa1ffe3b_47:
    lsl x13, x12, #1
    add x7, x13, #1
    movz x10, #8
    cmp x7, x10
    b.hs L4a85fa1ffe3b_c10
    sub x10, x29, #176
    ldr d23, [x10, x7, lsl #3]
    fsub d23, d23, d20
    fmul d23, d23, d21
    sub x10, x29, #176
    ldr d11, [x10, x13, lsl #3]
    fsub d11, d11, d19
    fmul d11, d11, d22
    fsub d23, d23, d11
    fmov d16, xzr
    fcmp d16, d27
    b.ne L4a85fa1ffe3b_51
L4a85fa1ffe3b_50:
    fmov d17, xzr
    fcmp d23, d17
    fmov d17, #1.0000000
    fmov d18, #-1.0000000
    fcsel d27, d17, d18, ge
    b L4a85fa1ffe3b_52
L4a85fa1ffe3b_51:
    fmul d23, d27, d23
    fmov d17, xzr
    fcmp d23, d17
    b.pl L4a85fa1ffe3b_57
L4a85fa1ffe3b_56:
    mov w15, #0
    b L4a85fa1ffe3b_61
L4a85fa1ffe3b_57:
L4a85fa1ffe3b_52:
    add x12, x12, #1
    cmp x12, #4
    b.lo L4a85fa1ffe3b_47
L4a85fa1ffe3b_49:
    cmp x15, #4
    b.lo L4a85fa1ffe3b_39
L4a85fa1ffe3b_41:
    movz w15, #1
L4a85fa1ffe3b_61:
    cmp w15, #0
    fcsel d24, d26, d24, ne
    cmp w15, #0
    fcsel d25, d25, d26, ne
    add x14, x14, #1
    cmp x14, #50
    b.lo L4a85fa1ffe3b_17
L4a85fa1ffe3b_19:
    b L4a85fa1ffe3b_15
L4a85fa1ffe3b_14:
    fsub d26, d26, d31
    fsub d24, d31, d24
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L4a85fa1ffe3b_165
L4a85fa1ffe3b_164:
    b L4a85fa1ffe3b_185
L4a85fa1ffe3b_165:
L4a85fa1ffe3b_166:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_169
L4a85fa1ffe3b_168:
    fmov d26, d24
    b L4a85fa1ffe3b_185
L4a85fa1ffe3b_169:
L4a85fa1ffe3b_170:
    fmov d17, xzr
    fcmp d26, d17
    b.ne L4a85fa1ffe3b_173
L4a85fa1ffe3b_175:
    fmov d17, xzr
    fcmp d24, d17
    b.ne L4a85fa1ffe3b_173
L4a85fa1ffe3b_172:
    and x14, x14, x15
    fmov d26, x14
    b L4a85fa1ffe3b_185
L4a85fa1ffe3b_173:
L4a85fa1ffe3b_174:
    fcmp d26, d24
    fcsel d26, d26, d24, gt
L4a85fa1ffe3b_185:
    fdiv d24, d26, d28
    fsub d26, d27, d30
    fsub d25, d30, d25
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L4a85fa1ffe3b_187
L4a85fa1ffe3b_186:
    b L4a85fa1ffe3b_207
L4a85fa1ffe3b_187:
L4a85fa1ffe3b_188:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_191
L4a85fa1ffe3b_190:
    fmov d26, d25
    b L4a85fa1ffe3b_207
L4a85fa1ffe3b_191:
L4a85fa1ffe3b_192:
    fmov d17, xzr
    fcmp d26, d17
    b.ne L4a85fa1ffe3b_195
L4a85fa1ffe3b_197:
    fmov d17, xzr
    fcmp d25, d17
    b.ne L4a85fa1ffe3b_195
L4a85fa1ffe3b_194:
    and x14, x14, x15
    fmov d26, x14
    b L4a85fa1ffe3b_207
L4a85fa1ffe3b_195:
L4a85fa1ffe3b_196:
    fcmp d26, d25
    fcsel d26, d26, d25, gt
L4a85fa1ffe3b_207:
    fdiv d25, d26, d29
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L4a85fa1ffe3b_209
L4a85fa1ffe3b_208:
    b L4a85fa1ffe3b_229
L4a85fa1ffe3b_209:
L4a85fa1ffe3b_210:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4a85fa1ffe3b_213
L4a85fa1ffe3b_212:
    fmov d24, d25
    b L4a85fa1ffe3b_229
L4a85fa1ffe3b_213:
L4a85fa1ffe3b_214:
    fmov d16, xzr
    fcmp d16, d24
    b.ne L4a85fa1ffe3b_217
L4a85fa1ffe3b_219:
    fmov d17, xzr
    fcmp d25, d17
    b.ne L4a85fa1ffe3b_217
L4a85fa1ffe3b_216:
    and x14, x14, x15
    fmov d24, x14
    b L4a85fa1ffe3b_229
L4a85fa1ffe3b_217:
L4a85fa1ffe3b_218:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
L4a85fa1ffe3b_229:
L4a85fa1ffe3b_15:
    fdiv d24, d24, d10
    fmul d25, d24, d8
    str d25, [sp, #384]
    fmov d16, xzr
    str d16, [sp, #392]
    fmov d17, #0.5000000
    fmul d25, d25, d17
    fsub d25, d31, d25
    str d25, [sp, #400]
    fmov d16, xzr
    str d16, [sp, #408]
    fmul d24, d24, d9
    str d24, [sp, #416]
    fmov d17, #0.5000000
    fmul d24, d24, d17
    fsub d24, d30, d24
    str d24, [sp, #424]
    fmov d16, xzr
    str d16, [sp, #432]
    fmov d16, xzr
    str d16, [sp, #440]
    fmov d16, #1.0000000
    str d16, [sp, #448]
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
    fmov d16, #1.0000000
    fdiv d24, d16, d8
    str d24, [sp, #312]
    fmov d16, xzr
    str d16, [sp, #320]
    fmov d16, xzr
    str d16, [sp, #328]
    fmov d16, xzr
    str d16, [sp, #336]
    fmov d16, #1.0000000
    fdiv d24, d16, d9
    str d24, [sp, #344]
    fmov d16, xzr
    str d16, [sp, #352]
    fmov d16, xzr
    str d16, [sp, #360]
    fmov d16, xzr
    str d16, [sp, #368]
    fmov d16, #1.0000000
    str d16, [sp, #376]
    sub x10, x29, #264
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
    sub x9, x29, #576
    mov x0, x9
    sub x8, x29, #192
    bl _lb_geometry_invert
    sub x10, x29, #192
    sub x11, x29, #336
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
    sub x11, x29, #120
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L4a85fa1ffe3b_230:
    cmp x14, #3
    b.hs L4a85fa1ffe3b_233
    .p2align 4
L4a85fa1ffe3b_231:
    add x15, x14, x14, lsl #1
    sub x9, x29, #336
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L4a85fa1ffe3b_234:
    cmp x6, #3
    b.hs L4a85fa1ffe3b_237
    .p2align 4
L4a85fa1ffe3b_235:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L4a85fa1ffe3b_c11
    sub x9, x29, #120
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #192
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L4a85fa1ffe3b_c12
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L4a85fa1ffe3b_c13
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L4a85fa1ffe3b_c14
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L4a85fa1ffe3b_c15
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L4a85fa1ffe3b_235
L4a85fa1ffe3b_237:
    add x14, x14, #1
    cmp x14, #3
    b.lo L4a85fa1ffe3b_231
L4a85fa1ffe3b_233:
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
    sub x11, x29, #336
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
    sub x10, x29, #264
    sub x11, x29, #408
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
    sub x10, x29, #336
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
    sub x11, x29, #120
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L4a85fa1ffe3b_240:
    cmp x14, #3
    b.hs L4a85fa1ffe3b_243
    .p2align 4
L4a85fa1ffe3b_241:
    add x15, x14, x14, lsl #1
    sub x9, x29, #408
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L4a85fa1ffe3b_244:
    cmp x6, #3
    b.hs L4a85fa1ffe3b_247
    .p2align 4
L4a85fa1ffe3b_245:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L4a85fa1ffe3b_c16
    sub x9, x29, #120
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #264
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L4a85fa1ffe3b_c17
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L4a85fa1ffe3b_c18
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L4a85fa1ffe3b_c19
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L4a85fa1ffe3b_c20
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L4a85fa1ffe3b_245
L4a85fa1ffe3b_247:
    add x14, x14, #1
    cmp x14, #3
    b.lo L4a85fa1ffe3b_241
L4a85fa1ffe3b_243:
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
    sub x11, x29, #480
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
    sub x1, x29, #480
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
    ldr x19, [sp, #560]
    ldr d8, [sp, #552]
    ldr d9, [sp, #544]
    ldr d10, [sp, #536]
    ldr d11, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4a85fa1ffe3b_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c5:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c6:
    adrp x0, _lb_text_45fcbc67f610@PAGE
    add x0, x0, _lb_text_45fcbc67f610@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c7:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c8:
    adrp x0, _lb_text_7680318cb6e2@PAGE
    add x0, x0, _lb_text_7680318cb6e2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c9:
    adrp x0, _lb_text_a78b1a3d13a1@PAGE
    add x0, x0, _lb_text_a78b1a3d13a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c10:
    adrp x0, _lb_text_f704b7c4fd4e@PAGE
    add x0, x0, _lb_text_f704b7c4fd4e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c11:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c12:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c13:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c14:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c15:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c16:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c17:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c18:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c19:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4a85fa1ffe3b_c20:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L4a85fa1ffe3b_k0:
    .quad 4640537203540230144
L4a85fa1ffe3b_k1:
    .quad 4636737291354636288
L4a85fa1ffe3b_k2:
    .quad 9094988921128908188
L4a85fa1ffe3b_k3:
    .quad 18318360957983683996
L4a85fa1ffe3b_k4:
    .quad 4427486594234968593
L4a85fa1ffe3b_k5:
    .quad 4786511204640096256
L4a85fa1ffe3b_k6:
    .quad 4576918229304087675


    .p2align 2
    .globl _lb_geometry_7crop_of
_lb_geometry_7crop_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x14, x0
    movz x9, #98
    str w9, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs Laab19f0b9f13_c1
    ldr d24, [x14, x15, lsl #3]
    movz x9, #99
    str w9, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs Laab19f0b9f13_c2
    ldr d25, [x14, x15, lsl #3]
    movz x9, #100
    str w9, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs Laab19f0b9f13_c3
    ldr d26, [x14, x15, lsl #3]
    ldr d27, Laab19f0b9f13_k0
    fadd d28, d24, d27
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Laab19f0b9f13_11
Laab19f0b9f13_10:
    b Laab19f0b9f13_31
Laab19f0b9f13_11:
Laab19f0b9f13_12:
    fmov x12, d28
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Laab19f0b9f13_15
Laab19f0b9f13_14:
    fmov d26, d28
    b Laab19f0b9f13_31
Laab19f0b9f13_15:
Laab19f0b9f13_16:
    fmov d29, xzr
    fcmp d26, d29
    b.ne Laab19f0b9f13_19
Laab19f0b9f13_21:
    fcmp d28, d29
    b.ne Laab19f0b9f13_19
Laab19f0b9f13_18:
    and x15, x15, x12
    fmov d26, x15
    b Laab19f0b9f13_31
Laab19f0b9f13_19:
Laab19f0b9f13_20:
    fcmp d26, d28
    fcsel d26, d26, d28, gt
Laab19f0b9f13_31:
    movz x9, #101
    str w9, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs Laab19f0b9f13_c4
    ldr d28, [x14, x15, lsl #3]
    fadd d27, d25, d27
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Laab19f0b9f13_33
Laab19f0b9f13_32:
    b Laab19f0b9f13_53
Laab19f0b9f13_33:
Laab19f0b9f13_34:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Laab19f0b9f13_37
Laab19f0b9f13_36:
    fmov d28, d27
    b Laab19f0b9f13_53
Laab19f0b9f13_37:
Laab19f0b9f13_38:
    fmov d29, xzr
    fcmp d28, d29
    b.ne Laab19f0b9f13_41
Laab19f0b9f13_43:
    fcmp d27, d29
    b.ne Laab19f0b9f13_41
Laab19f0b9f13_40:
    and x14, x14, x15
    fmov d28, x14
    b Laab19f0b9f13_53
Laab19f0b9f13_41:
Laab19f0b9f13_42:
    fcmp d28, d27
    fcsel d28, d28, d27, gt
Laab19f0b9f13_53:
    fmov d27, #1.0000000
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Laab19f0b9f13_55
Laab19f0b9f13_54:
    b Laab19f0b9f13_75
Laab19f0b9f13_55:
Laab19f0b9f13_56:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Laab19f0b9f13_59
Laab19f0b9f13_58:
    fmov d26, d27
    b Laab19f0b9f13_75
Laab19f0b9f13_59:
Laab19f0b9f13_60:
    fmov d29, xzr
    fcmp d26, d29
    b.ne Laab19f0b9f13_63
Laab19f0b9f13_65:
    fcmp d27, d29
    b.ne Laab19f0b9f13_63
Laab19f0b9f13_62:
    orr x14, x14, x15
    fmov d26, x14
    b Laab19f0b9f13_75
Laab19f0b9f13_63:
Laab19f0b9f13_64:
    fcmp d26, d27
    fcsel d26, d26, d27, mi
Laab19f0b9f13_75:
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Laab19f0b9f13_77
Laab19f0b9f13_76:
    b Laab19f0b9f13_97
Laab19f0b9f13_77:
Laab19f0b9f13_78:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Laab19f0b9f13_81
Laab19f0b9f13_80:
    fmov d28, d27
    b Laab19f0b9f13_97
Laab19f0b9f13_81:
Laab19f0b9f13_82:
    fmov d29, xzr
    fcmp d28, d29
    b.ne Laab19f0b9f13_85
Laab19f0b9f13_87:
    fcmp d27, d29
    b.ne Laab19f0b9f13_85
Laab19f0b9f13_84:
    orr x14, x14, x15
    fmov d28, x14
    b Laab19f0b9f13_97
Laab19f0b9f13_85:
Laab19f0b9f13_86:
    fcmp d28, d27
    fcsel d28, d28, d27, mi
Laab19f0b9f13_97:
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    fmov d3, d28
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Laab19f0b9f13_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Laab19f0b9f13_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Laab19f0b9f13_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Laab19f0b9f13_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Laab19f0b9f13_k0:
    .quad 4576918229304087675


    .p2align 2
    .globl _lb_geometry_multiply
_lb_geometry_multiply:
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
L9fdd5e34e497_1:
    cmp x14, #3
    b.hs L9fdd5e34e497_4
    .p2align 4
L9fdd5e34e497_2:
    add x15, x14, x14, lsl #1
    sub x9, x29, #80
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L9fdd5e34e497_5:
    cmp x6, #3
    b.hs L9fdd5e34e497_8
    .p2align 4
L9fdd5e34e497_6:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L9fdd5e34e497_c1
    sub x9, x29, #224
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #152
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L9fdd5e34e497_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L9fdd5e34e497_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L9fdd5e34e497_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L9fdd5e34e497_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L9fdd5e34e497_6
L9fdd5e34e497_8:
    add x14, x14, #1
    cmp x14, #3
    b.lo L9fdd5e34e497_2
L9fdd5e34e497_4:
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
L9fdd5e34e497_c1:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L9fdd5e34e497_c2:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L9fdd5e34e497_c3:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L9fdd5e34e497_c4:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L9fdd5e34e497_c5:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_geometry_correction
_lb_geometry_correction:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #752]
    str d9, [sp, #744]
    str d10, [sp, #736]
    str d11, [sp, #728]
    str d12, [sp, #720]
    str d13, [sp, #712]
    str d14, [sp, #704]
    str d15, [sp, #696]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    fmov d8, d3
    fmov d24, d4
    fmov d25, d5
    fmul d26, d24, d24
    fmul d27, d25, d25
    fadd d26, d26, d27
    fsqrt d26, d26
    fmov d27, #28.0000000
    fmul d26, d27, d26
    ldr d27, L7500d951f6bc_k0
    fdiv d26, d26, d27
    str d26, [sp, #600]
    fmov d9, xzr
    str d9, [sp, #608]
    fmov d10, #0.5000000
    fmul d11, d24, d10
    str d11, [sp, #616]
    str d9, [sp, #624]
    str d26, [sp, #632]
    fmul d12, d25, d10
    str d12, [sp, #640]
    str d9, [sp, #648]
    str d9, [sp, #656]
    fmov d13, #1.0000000
    str d13, [sp, #664]
    sub x10, x29, #168
    sub x11, x29, #768
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
    ldr d14, [sp, #672]
    fmov d0, d14
    bl _lb_13luce_std_math_9cos_value
    fmov d15, d0
    fmov d0, d14
    bl _lb_13luce_std_math_9sin_value
    fmov d14, d0
    ldr d24, [sp, #680]
    str d24, [sp, #664]
    fmov d0, d24
    bl _lb_13luce_std_math_9cos_value
    fmov d25, d0
    ldr d24, [sp, #664]
    str d25, [sp, #656]
    fmov d0, d24
    bl _lb_13luce_std_math_9sin_value
    fmov d24, d0
    ldr d25, [sp, #656]
    ldr d26, [sp, #688]
    str d26, [sp, #664]
    str d25, [sp, #656]
    str d24, [sp, #648]
    fmov d0, d26
    bl _lb_13luce_std_math_9cos_value
    fmov d27, d0
    ldr d26, [sp, #664]
    ldr d25, [sp, #656]
    ldr d24, [sp, #648]
    str d25, [sp, #656]
    str d24, [sp, #648]
    str d27, [sp, #688]
    fmov d0, d26
    bl _lb_13luce_std_math_9sin_value
    fmov d26, d0
    ldr d25, [sp, #656]
    ldr d24, [sp, #648]
    ldr d27, [sp, #688]
    str d15, [sp, #504]
    fneg d28, d14
    str d28, [sp, #512]
    str d9, [sp, #520]
    str d14, [sp, #528]
    str d15, [sp, #536]
    str d9, [sp, #544]
    str d9, [sp, #552]
    str d9, [sp, #560]
    str d13, [sp, #568]
    sub x10, x29, #264
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
    str d13, [sp, #432]
    str d9, [sp, #440]
    str d9, [sp, #448]
    str d9, [sp, #456]
    str d25, [sp, #464]
    fneg d28, d24
    str d28, [sp, #472]
    str d9, [sp, #480]
    str d24, [sp, #488]
    str d25, [sp, #496]
    sub x10, x29, #336
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
    str d27, [sp, #360]
    str d9, [sp, #368]
    str d26, [sp, #376]
    str d9, [sp, #384]
    str d13, [sp, #392]
    str d9, [sp, #400]
    fneg d24, d26
    str d24, [sp, #408]
    str d9, [sp, #416]
    str d27, [sp, #424]
    sub x10, x29, #408
    sub x11, x29, #336
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
    sub x11, x29, #480
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
    sub x10, x29, #264
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
    sub x10, x29, #336
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
    sub x11, x29, #288
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L7500d951f6bc_18:
    cmp x14, #3
    b.hs L7500d951f6bc_21
    .p2align 4
L7500d951f6bc_19:
    add x15, x14, x14, lsl #1
    sub x9, x29, #144
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L7500d951f6bc_22:
    cmp x6, #3
    b.hs L7500d951f6bc_25
    .p2align 4
L7500d951f6bc_23:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L7500d951f6bc_c1
    sub x9, x29, #288
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #216
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L7500d951f6bc_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L7500d951f6bc_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L7500d951f6bc_23
L7500d951f6bc_25:
    add x14, x14, #1
    cmp x14, #3
    b.lo L7500d951f6bc_19
L7500d951f6bc_21:
    sub x10, x29, #288
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
    sub x10, x29, #144
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
    sub x10, x29, #480
    sub x11, x29, #552
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
    sub x11, x29, #480
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
    sub x11, x29, #288
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L7500d951f6bc_28:
    cmp x14, #3
    b.hs L7500d951f6bc_31
    .p2align 4
L7500d951f6bc_29:
    add x15, x14, x14, lsl #1
    sub x9, x29, #552
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L7500d951f6bc_32:
    cmp x6, #3
    b.hs L7500d951f6bc_35
    .p2align 4
L7500d951f6bc_33:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L7500d951f6bc_c6
    sub x9, x29, #288
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #480
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L7500d951f6bc_c7
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c8
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L7500d951f6bc_c9
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c10
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L7500d951f6bc_33
L7500d951f6bc_35:
    add x14, x14, #1
    cmp x14, #3
    b.lo L7500d951f6bc_29
L7500d951f6bc_31:
    sub x10, x29, #288
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
    sub x10, x29, #144
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
    sub x11, x29, #408
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
    sub x10, x29, #768
    sub x11, x29, #480
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
    sub x10, x29, #408
    sub x11, x29, #552
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
    sub x9, x29, #768
    mov x0, x9
    sub x8, x29, #360
    bl _lb_geometry_invert
    sub x10, x29, #552
    sub x11, x29, #624
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
    sub x10, x29, #360
    sub x11, x29, #552
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
    sub x11, x29, #288
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L7500d951f6bc_38:
    cmp x14, #3
    b.hs L7500d951f6bc_41
    .p2align 4
L7500d951f6bc_39:
    add x15, x14, x14, lsl #1
    sub x9, x29, #624
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L7500d951f6bc_42:
    cmp x6, #3
    b.hs L7500d951f6bc_45
    .p2align 4
L7500d951f6bc_43:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L7500d951f6bc_c11
    sub x9, x29, #288
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #552
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L7500d951f6bc_c12
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c13
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L7500d951f6bc_c14
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c15
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L7500d951f6bc_43
L7500d951f6bc_45:
    add x14, x14, #1
    cmp x14, #3
    b.lo L7500d951f6bc_39
L7500d951f6bc_41:
    sub x10, x29, #288
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
    sub x10, x29, #144
    sub x11, x29, #360
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
    sub x10, x29, #480
    sub x11, x29, #552
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
    sub x10, x29, #360
    sub x11, x29, #432
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
    sub x11, x29, #288
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L7500d951f6bc_48:
    cmp x14, #3
    b.hs L7500d951f6bc_51
    .p2align 4
L7500d951f6bc_49:
    add x15, x14, x14, lsl #1
    sub x9, x29, #552
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L7500d951f6bc_52:
    cmp x6, #3
    b.hs L7500d951f6bc_55
    .p2align 4
L7500d951f6bc_53:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L7500d951f6bc_c16
    sub x9, x29, #288
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #432
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L7500d951f6bc_c17
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c18
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L7500d951f6bc_c19
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c20
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L7500d951f6bc_53
L7500d951f6bc_55:
    add x14, x14, #1
    cmp x14, #3
    b.lo L7500d951f6bc_49
L7500d951f6bc_51:
    sub x10, x29, #288
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
    sub x10, x29, #144
    sub x11, x29, #360
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
    sub x10, x29, #360
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
    fmul d24, d8, d10
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d24, d0
    str d24, [sp, #336]
    str d9, [sp, #344]
    fsub d25, d13, d24
    fmul d25, d25, d11
    str d25, [sp, #352]
    str d9, [sp, #360]
    fdiv d24, d13, d24
    str d24, [sp, #368]
    fsub d24, d13, d24
    fmul d24, d24, d12
    str d24, [sp, #376]
    str d9, [sp, #384]
    str d9, [sp, #392]
    str d13, [sp, #400]
    sub x10, x29, #432
    sub x11, x29, #360
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
    sub x10, x29, #360
    sub x11, x29, #432
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
    sub x11, x29, #360
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
    sub x11, x29, #288
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L7500d951f6bc_58:
    cmp x14, #3
    b.hs L7500d951f6bc_61
    .p2align 4
L7500d951f6bc_59:
    add x15, x14, x14, lsl #1
    sub x9, x29, #432
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L7500d951f6bc_62:
    cmp x6, #3
    b.hs L7500d951f6bc_65
    .p2align 4
L7500d951f6bc_63:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L7500d951f6bc_c21
    sub x9, x29, #288
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #360
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L7500d951f6bc_c22
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c23
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L7500d951f6bc_c24
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L7500d951f6bc_c25
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L7500d951f6bc_63
L7500d951f6bc_65:
    add x14, x14, #1
    cmp x14, #3
    b.lo L7500d951f6bc_59
L7500d951f6bc_61:
    sub x10, x29, #288
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
    sub x10, x29, #144
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
    sub x11, x29, #696
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
    sub x1, x29, #696
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
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    ldr d10, [sp, #736]
    ldr d11, [sp, #728]
    ldr d12, [sp, #720]
    ldr d13, [sp, #712]
    ldr d14, [sp, #704]
    ldr d15, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7500d951f6bc_c1:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c2:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c3:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c4:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c5:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c6:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c7:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c8:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c9:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c10:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c11:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c12:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c13:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c14:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c15:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c16:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c17:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c18:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c19:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c20:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c21:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c22:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c23:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c24:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7500d951f6bc_c25:
    adrp x0, _lb_text_b25f17a6e892@PAGE
    add x0, x0, _lb_text_b25f17a6e892@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L7500d951f6bc_k0:
    .quad 4631286528430634435


    .p2align 2
    .globl _lb_geometry_invert
_lb_geometry_invert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #160]
    str d9, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
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
    ldr d24, [sp, #112]
    ldr d25, [sp, #144]
    fmul d26, d24, d25
    ldr d27, [sp, #120]
    ldr d28, [sp, #136]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [sp, #128]
    fmul d30, d27, d29
    ldr d31, [sp, #104]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [sp, #80]
    fmul d21, d26, d20
    ldr d22, [sp, #88]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [sp, #96]
    fmul d8, d19, d23
    fadd d21, d21, d8
    fabs d8, d21
    ldr d9, Le59dcf173f8b_k0
    fcmp d8, d9
    b.pl Le59dcf173f8b_2
Le59dcf173f8b_1:
    fmov d24, #1.0000000
    str d24, [sp, #80]
    fmov d25, xzr
    str d25, [sp, #88]
    str d25, [sp, #96]
    str d25, [sp, #104]
    str d24, [sp, #112]
    str d25, [sp, #120]
    str d25, [sp, #128]
    str d25, [sp, #136]
    str d24, [sp, #144]
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
    sub x1, x29, #168
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
    ldr d8, [sp, #160]
    ldr d9, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le59dcf173f8b_2:
Le59dcf173f8b_3:
    fmov d8, #1.0000000
    fdiv d21, d8, d21
    fmul d26, d26, d21
    str d26, [sp, #80]
    fmul d26, d28, d23
    fmul d8, d25, d22
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #88]
    fmul d26, d27, d22
    fmul d8, d24, d23
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #96]
    fmul d26, d30, d21
    str d26, [sp, #104]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #112]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #120]
    fmul d25, d19, d21
    str d25, [sp, #128]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #136]
    fmul d24, d24, d20
    fmul d25, d31, d22
    fsub d24, d24, d25
    fmul d24, d21, d24
    str d24, [sp, #144]
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
    sub x1, x29, #168
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
    ldr d8, [sp, #160]
    ldr d9, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le59dcf173f8b_k0:
    .quad 118622047889322841


    .p2align 2
    .globl _lb_test_34
_lb_test_34:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    str x19, [sp, #408]
    str d8, [sp, #400]
    str d9, [sp, #392]
    str d10, [sp, #384]
    str d11, [sp, #376]
    str d12, [sp, #368]
    ldr d8, Le30f12795519_k0
    ldr d9, Le30f12795519_k1
    sub x11, x29, #304
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmov d10, #12.0000000
    fmov d24, #-12.0000000
    adrp x19, _lb_13luce_std_math_pi@PAGE
    add x19, x19, _lb_13luce_std_math_pi@PAGEOFF
    ldr d25, [x19]
    fmul d24, d24, d25
    ldr d11, Le30f12795519_k2
    fdiv d24, d24, d11
    str d24, [sp, #120]
    fmov d12, xzr
    sub x9, x29, #304
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d12
    fmov d4, d8
    fmov d5, d9
    sub x8, x29, #192
    bl _lb_geometry_correction
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
    sub x11, x29, #368
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    ldr d24, Le30f12795519_k3
    str d24, [sp, #280]
    ldr d24, Le30f12795519_k4
    str d24, [sp, #288]
    ldr d24, Le30f12795519_k5
    ldr d25, Le30f12795519_k6
    ldr d26, Le30f12795519_k7
    ldr d27, Le30f12795519_k8
    fmov d28, #1.0000000
    ldr d29, Le30f12795519_k8
    fmov d30, #1.0000000
    mov x14, #0
Le30f12795519_1:
    cmp x14, #2
    b.hs Le30f12795519_4
    .p2align 4
Le30f12795519_2:
    sub x10, x29, #136
    ldr d31, [x10, x14, lsl #3]
    sub x10, x29, #120
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
    ldr d19, [sp, #256]
    fmul d19, d19, d31
    ldr d20, [sp, #264]
    fmul d20, d20, d24
    fadd d19, d19, d20
    ldr d20, [sp, #272]
    fadd d19, d19, d20
    fabs d20, d19
    fcmp d20, d26
    b.le Le30f12795519_17
Le30f12795519_16:
    fdiv d19, d28, d19
    b Le30f12795519_18
Le30f12795519_17:
    fmov d19, d27
Le30f12795519_18:
    ldr d20, [sp, #208]
    fmul d20, d20, d31
    ldr d21, [sp, #216]
    fmul d21, d21, d24
    fadd d20, d20, d21
    ldr d21, [sp, #224]
    fadd d20, d20, d21
    fmul d20, d20, d19
    ldr d21, [sp, #232]
    fmul d21, d21, d31
    ldr d22, [sp, #240]
    fmul d22, d22, d24
    fadd d21, d21, d22
    ldr d22, [sp, #248]
    fadd d21, d21, d22
    fmul d19, d21, d19
    sub x10, x29, #120
    sub x11, x29, #280
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
    ldr d21, [sp, #184]
    fmul d21, d21, d31
    ldr d22, [sp, #192]
    fmul d22, d22, d25
    fadd d21, d21, d22
    ldr d22, [sp, #200]
    fadd d21, d21, d22
    fabs d22, d21
    fcmp d22, d26
    b.le Le30f12795519_24
Le30f12795519_23:
    fdiv d21, d30, d21
    b Le30f12795519_25
Le30f12795519_24:
    fmov d21, d29
Le30f12795519_25:
    ldr d22, [sp, #136]
    fmul d22, d22, d31
    ldr d23, [sp, #144]
    fmul d23, d23, d25
    fadd d22, d22, d23
    ldr d23, [sp, #152]
    fadd d22, d22, d23
    fmul d22, d22, d21
    ldr d23, [sp, #160]
    fmul d31, d23, d31
    ldr d23, [sp, #168]
    fmul d23, d23, d25
    fadd d31, d31, d23
    ldr d23, [sp, #176]
    fadd d31, d31, d23
    fmul d31, d31, d21
    sub x9, x29, #368
    add x15, x9, x14, lsl #5
    fdiv d20, d20, d8
    fdiv d19, d19, d9
    fdiv d21, d22, d8
    fdiv d31, d31, d9
    str d20, [x15]
    str d19, [x15, #8]
    str d21, [x15, #16]
    str d31, [x15, #24]
    add x14, x14, #1
    cmp x14, #2
    b.lo Le30f12795519_2
Le30f12795519_4:
    sub x9, x29, #368
    str x9, [sp, #32]
    movz x9, #2
    str x9, [sp, #40]
    fmov d0, d8
    fmov d1, d9
    sub x9, x29, #384
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_10solve_turn
    fmov d25, d0
    fmov d24, d1
    fmov d26, d2
    fmul d24, d24, d11
    ldr d27, [x19]
    fdiv d24, d24, d27
    fsub d24, d24, d10
    fabs d24, d24
    ldr d27, Le30f12795519_k9
    fcmp d24, d27
    b.mi Le30f12795519_5
Le30f12795519_6:
    adrp x14, _lb_text_31f6d171b5d4@PAGE
    add x14, x14, _lb_text_31f6d171b5d4@PAGEOFF
    str x14, [sp, #16]
    movz x9, #26
    str x9, [sp, #24]
    adrp x14, _lb_text_b00f50ea0b74@PAGE
    add x14, x14, _lb_text_b00f50ea0b74@PAGEOFF
    adrp x15, _lb_text_95782def4e0c@PAGE
    add x15, x15, _lb_text_95782def4e0c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #400
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #1
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    ldr d10, [sp, #384]
    ldr d11, [sp, #376]
    ldr d12, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le30f12795519_5:
    fabs d24, d25
    ldr d25, Le30f12795519_k10
    fcmp d24, d25
    b.pl Le30f12795519_9
Le30f12795519_10:
    fcmp d12, d26
    b.eq Le30f12795519_8
Le30f12795519_9:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_b985774fcf10@PAGE
    add x14, x14, _lb_text_b985774fcf10@PAGEOFF
    adrp x15, _lb_text_ef3b4f76072c@PAGE
    add x15, x15, _lb_text_ef3b4f76072c@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #416
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    ldr d10, [sp, #384]
    ldr d11, [sp, #376]
    ldr d12, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le30f12795519_8:
    mov x0, #0
    ldr x19, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    ldr d10, [sp, #384]
    ldr d11, [sp, #376]
    ldr d12, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le30f12795519_k0:
    .quad 4663319084467748864
Le30f12795519_k1:
    .quad 4661014508095930368
Le30f12795519_k2:
    .quad 4640537203540230144
Le30f12795519_k3:
    .quad 4654311885213007872
Le30f12795519_k4:
    .quad 4661669817026084864
Le30f12795519_k5:
    .quad 4647503709213818880
Le30f12795519_k6:
    .quad 4659914996468154368
Le30f12795519_k7:
    .quad 4427486594234968593
Le30f12795519_k8:
    .quad 4786511204640096256
Le30f12795519_k9:
    .quad 4599075939470750515
Le30f12795519_k10:
    .quad 4576918229304087675


    .p2align 2
    .globl _lb_geometry_10solve_turn
_lb_geometry_10solve_turn:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #592
    str x19, [sp, #584]
    str x20, [sp, #576]
    str x21, [sp, #568]
    str x22, [sp, #560]
    str x23, [sp, #552]
    str x24, [sp, #544]
    str x25, [sp, #536]
    str x26, [sp, #528]
    str x27, [sp, #520]
    str d8, [sp, #512]
    str d9, [sp, #504]
    str d10, [sp, #496]
    str d11, [sp, #488]
    str d12, [sp, #480]
    str d13, [sp, #472]
    str d14, [sp, #464]
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    fmov d8, d0
    fmov d9, d1
    ldr x14, [sp, #448]
    ldr x15, [sp, #456]
    mov x12, #0
    mov x13, #0
    mov x7, #0
Lbdd13b3dba8e_118:
    cmp x7, x15
    b.hs Lbdd13b3dba8e_121
    .p2align 4
Lbdd13b3dba8e_119:
    add x6, x14, x7, lsl #5
    ldr d24, [x6]
    ldr d25, [x6, #8]
    ldr d26, [x6, #16]
    ldr d27, [x6, #24]
    fsub d24, d26, d24
    fsub d25, d27, d25
    fmul d25, d25, d25
    fmul d24, d24, d24
    fcmp d25, d24
    b.le Lbdd13b3dba8e_123
Lbdd13b3dba8e_122:
    adds x12, x12, #1
    b.vs Lbdd13b3dba8e_c1
    b Lbdd13b3dba8e_124
Lbdd13b3dba8e_123:
    adds x13, x13, #1
    b.vs Lbdd13b3dba8e_c2
Lbdd13b3dba8e_124:
    add x7, x7, #1
    cmp x7, x15
    b.lo Lbdd13b3dba8e_119
Lbdd13b3dba8e_121:
    adds x14, x12, x13
    b.vs Lbdd13b3dba8e_c3
    cmp x14, #0
    cset w19, gt
    cmp x12, #2
    cset w20, ge
    cmp x13, #2
    cset w21, ge
    strb w19, [sp, #445]
    strb w20, [sp, #446]
    strb w21, [sp, #447]
    mov x22, #0
    mov x14, #0
Lbdd13b3dba8e_1:
    cmp x14, #3
    b.hs Lbdd13b3dba8e_4
    .p2align 4
Lbdd13b3dba8e_2:
    sub x10, x29, #147
    ldrb w15, [x10, x14]
    cbz w15, Lbdd13b3dba8e_6
Lbdd13b3dba8e_5:
    adds x15, x22, #1
    b.cs Lbdd13b3dba8e_c4
    b Lbdd13b3dba8e_7
Lbdd13b3dba8e_6:
    mov x15, x22
Lbdd13b3dba8e_7:
    add x14, x14, #1
    mov x22, x15
    cmp x14, #3
    b.lo Lbdd13b3dba8e_2
Lbdd13b3dba8e_4:
    fmov d10, xzr
    cmp x22, #0
    b.ne Lbdd13b3dba8e_9
Lbdd13b3dba8e_8:
    fmov d0, xzr
    fmov d1, xzr
    fmov d2, xzr
    ldr x19, [sp, #584]
    ldr x20, [sp, #576]
    ldr x21, [sp, #568]
    ldr x22, [sp, #560]
    ldr x23, [sp, #552]
    ldr x24, [sp, #544]
    ldr x25, [sp, #536]
    ldr x26, [sp, #528]
    ldr x27, [sp, #520]
    ldr d8, [sp, #512]
    ldr d9, [sp, #504]
    ldr d10, [sp, #496]
    ldr d11, [sp, #488]
    ldr d12, [sp, #480]
    ldr d13, [sp, #472]
    ldr d14, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbdd13b3dba8e_9:
    sub x11, x29, #240
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    sub x11, x29, #272
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr d11, Lbdd13b3dba8e_k0
    mov x23, #0
Lbdd13b3dba8e_12:
    cmp x23, x22
    b.hi Lbdd13b3dba8e_15
    .p2align 4
Lbdd13b3dba8e_13:
    mov x14, #0
Lbdd13b3dba8e_16:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_19
    .p2align 4
Lbdd13b3dba8e_17:
    movz x10, #3
    umulh x11, x23, x10
    add x15, x23, x23, lsl #1
    cbnz x11, Lbdd13b3dba8e_c5
    adds x15, x15, x14
    b.cs Lbdd13b3dba8e_c6
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c7
    sub x9, x29, #240
    add x15, x9, x15, lsl #3
    add x14, x14, #1
    cmp x14, x23
    fcsel d24, d11, d10, eq
    str d24, [x15]
    cmp x14, x22
    b.lo Lbdd13b3dba8e_17
Lbdd13b3dba8e_19:
    movz x10, #4
    cmp x23, x10
    b.hs Lbdd13b3dba8e_c8
    sub x9, x29, #272
    add x24, x9, x23, lsl #3
    sub x10, x29, #144
    sub x11, x29, #400
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, x23, lsl #1
    adds x15, x22, x14
    b.cs Lbdd13b3dba8e_c9
    movz x10, #12
    cmp x15, x10
    b.hi Lbdd13b3dba8e_c10
    cmp x14, x15
    b.hi Lbdd13b3dba8e_24
Lbdd13b3dba8e_23:
    sub x9, x29, #240
    add x14, x9, x14, lsl #3
    cbz w19, Lbdd13b3dba8e_130
Lbdd13b3dba8e_129:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c11
    ldr d24, [x14]
    movz x15, #1
    b Lbdd13b3dba8e_131
Lbdd13b3dba8e_130:
    mov x15, #0
    fmov d24, d10
Lbdd13b3dba8e_131:
    cbz w20, Lbdd13b3dba8e_133
Lbdd13b3dba8e_132:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_c12
    ldr d25, [x14, x15, lsl #3]
    add x15, x15, #1
    b Lbdd13b3dba8e_134
Lbdd13b3dba8e_133:
    fmov d25, d10
Lbdd13b3dba8e_134:
    cbz w21, Lbdd13b3dba8e_136
Lbdd13b3dba8e_135:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_c13
    ldr d26, [x14, x15, lsl #3]
    b Lbdd13b3dba8e_137
Lbdd13b3dba8e_136:
    fmov d26, d10
Lbdd13b3dba8e_137:
    str d24, [sp, #168]
    str d25, [sp, #176]
    str d26, [sp, #184]
    str d24, [sp, #168]
    str d25, [sp, #176]
    str d26, [sp, #184]
    sub x9, x29, #424
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    fmov d4, d9
    sub x9, x29, #400
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_misfit
    fmov d24, d0
    str d24, [x24]
    cmp x22, x23
    b.eq Lbdd13b3dba8e_15
Lbdd13b3dba8e_25:
    add x23, x23, #1
    cmp x23, x22
    b.ls Lbdd13b3dba8e_13
Lbdd13b3dba8e_15:
    sub x9, x29, #272
    add x23, x9, x22, lsl #3
    ldr d11, Lbdd13b3dba8e_k1
    add x24, x22, x22, lsl #1
    fmov d12, #0.5000000
    fmov d13, #2.0000000
    mov x25, #0
Lbdd13b3dba8e_26:
    cmp x25, #400
    b.hs Lbdd13b3dba8e_29
    .p2align 4
Lbdd13b3dba8e_27:
    mov x14, #0
Lbdd13b3dba8e_30:
    cmp x14, x22
    b.hi Lbdd13b3dba8e_33
    .p2align 4
Lbdd13b3dba8e_31:
    adds x15, x14, #1
    b.cs Lbdd13b3dba8e_c14
    sub x9, x29, #272
    add x12, x9, x14, lsl #3
    add x13, x14, x14, lsl #1
Lbdd13b3dba8e_34:
    cmp x15, x22
    b.hi Lbdd13b3dba8e_37
    .p2align 4
Lbdd13b3dba8e_35:
    movz x10, #4
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c15
    sub x9, x29, #272
    add x7, x9, x15, lsl #3
    ldr d24, [x7]
    movz x10, #4
    cmp x14, x10
    b.hs Lbdd13b3dba8e_c16
    ldr d25, [x12]
    fcmp d24, d25
    b.pl Lbdd13b3dba8e_39
Lbdd13b3dba8e_38:
    str d24, [x12]
    str d25, [x7]
    add x7, x15, x15, lsl #1
    mov x6, #0
Lbdd13b3dba8e_41:
    cmp x6, #3
    b.hs Lbdd13b3dba8e_44
    .p2align 4
Lbdd13b3dba8e_42:
    add x5, x13, x6
    movz x10, #12
    cmp x5, x10
    b.hs Lbdd13b3dba8e_c17
    sub x9, x29, #240
    add x5, x9, x5, lsl #3
    ldr d24, [x5]
    add x4, x7, x6
    movz x10, #12
    cmp x4, x10
    b.hs Lbdd13b3dba8e_c18
    sub x9, x29, #240
    add x4, x9, x4, lsl #3
    ldr d25, [x4]
    str d25, [x5]
    str d24, [x4]
    add x6, x6, #1
    cmp x6, #3
    b.lo Lbdd13b3dba8e_42
Lbdd13b3dba8e_44:
Lbdd13b3dba8e_39:
Lbdd13b3dba8e_40:
    cmp x22, x15
    b.eq Lbdd13b3dba8e_37
Lbdd13b3dba8e_45:
    add x15, x15, #1
    cmp x15, x22
    b.ls Lbdd13b3dba8e_35
Lbdd13b3dba8e_37:
    cmp x22, x14
    b.eq Lbdd13b3dba8e_33
Lbdd13b3dba8e_46:
    add x14, x14, #1
    cmp x14, x22
    b.ls Lbdd13b3dba8e_31
Lbdd13b3dba8e_33:
    movz x10, #4
    cmp x22, x10
    b.hs Lbdd13b3dba8e_c19
    ldr d24, [x23]
    ldr d25, [sp, #320]
    fsub d24, d24, d25
    fcmp d24, d11
    b.pl Lbdd13b3dba8e_48
Lbdd13b3dba8e_47:
    b Lbdd13b3dba8e_29
Lbdd13b3dba8e_48:
    sub x11, x29, #296
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Lbdd13b3dba8e_51:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_54
    .p2align 4
Lbdd13b3dba8e_52:
    add x15, x14, x14, lsl #1
    mov x12, #0
Lbdd13b3dba8e_55:
    cmp x12, x22
    b.hs Lbdd13b3dba8e_58
    .p2align 4
Lbdd13b3dba8e_56:
    sub x9, x29, #296
    add x13, x9, x12, lsl #3
    ldr d24, [x13]
    add x7, x15, x12
    movz x10, #12
    cmp x7, x10
    b.hs Lbdd13b3dba8e_c20
    sub x10, x29, #240
    ldr d25, [x10, x7, lsl #3]
    ucvtf d26, x22
    fdiv d25, d25, d26
    fadd d24, d24, d25
    str d24, [x13]
    add x12, x12, #1
    cmp x12, x22
    b.lo Lbdd13b3dba8e_56
Lbdd13b3dba8e_58:
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_52
Lbdd13b3dba8e_54:
    sub x11, x29, #320
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Lbdd13b3dba8e_59:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_62
    .p2align 4
Lbdd13b3dba8e_60:
    lsl x15, x14, #3
    sub x10, x29, #320
    add x12, x15, x10
    sub x11, x29, #296
    ldr d24, [x15, x11]
    add x15, x24, x14
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c21
    sub x10, x29, #240
    ldr d25, [x10, x15, lsl #3]
    fsub d25, d24, d25
    fadd d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_60
Lbdd13b3dba8e_62:
    sub x10, x29, #144
    sub x11, x29, #440
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cbz w19, Lbdd13b3dba8e_141
Lbdd13b3dba8e_140:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c22
    ldr d24, [sp, #272]
    movz x14, #1
    b Lbdd13b3dba8e_142
Lbdd13b3dba8e_141:
    mov x14, #0
    fmov d24, d10
Lbdd13b3dba8e_142:
    cbz w20, Lbdd13b3dba8e_144
Lbdd13b3dba8e_143:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c23
    sub x10, x29, #320
    ldr d25, [x10, x14, lsl #3]
    add x14, x14, #1
    b Lbdd13b3dba8e_145
Lbdd13b3dba8e_144:
    fmov d25, d10
Lbdd13b3dba8e_145:
    cbz w21, Lbdd13b3dba8e_147
Lbdd13b3dba8e_146:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c24
    sub x10, x29, #320
    ldr d26, [x10, x14, lsl #3]
    b Lbdd13b3dba8e_148
Lbdd13b3dba8e_147:
    fmov d26, d10
Lbdd13b3dba8e_148:
    str d24, [sp, #128]
    str d25, [sp, #136]
    str d26, [sp, #144]
    str d24, [sp, #128]
    str d25, [sp, #136]
    str d26, [sp, #144]
    sub x9, x29, #464
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    fmov d4, d9
    sub x9, x29, #440
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_misfit
    fmov d14, d0
    ldr d24, [sp, #320]
    fcmp d14, d24
    b.pl Lbdd13b3dba8e_66
Lbdd13b3dba8e_65:
    sub x11, x29, #368
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Lbdd13b3dba8e_68:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_71
    .p2align 4
Lbdd13b3dba8e_69:
    lsl x15, x14, #3
    sub x10, x29, #368
    add x12, x15, x10
    sub x11, x29, #296
    ldr d24, [x15, x11]
    add x15, x24, x14
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c25
    sub x10, x29, #240
    ldr d25, [x10, x15, lsl #3]
    fsub d25, d24, d25
    fmul d25, d25, d13
    fadd d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_69
Lbdd13b3dba8e_71:
    sub x10, x29, #144
    sub x11, x29, #480
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cbz w19, Lbdd13b3dba8e_152
Lbdd13b3dba8e_151:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c26
    ldr d24, [sp, #224]
    movz x14, #1
    b Lbdd13b3dba8e_153
Lbdd13b3dba8e_152:
    mov x14, #0
    fmov d24, d10
Lbdd13b3dba8e_153:
    cbz w20, Lbdd13b3dba8e_155
Lbdd13b3dba8e_154:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c27
    sub x10, x29, #368
    ldr d25, [x10, x14, lsl #3]
    add x14, x14, #1
    b Lbdd13b3dba8e_156
Lbdd13b3dba8e_155:
    fmov d25, d10
Lbdd13b3dba8e_156:
    cbz w21, Lbdd13b3dba8e_158
Lbdd13b3dba8e_157:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c28
    sub x10, x29, #368
    ldr d26, [x10, x14, lsl #3]
    b Lbdd13b3dba8e_159
Lbdd13b3dba8e_158:
    fmov d26, d10
Lbdd13b3dba8e_159:
    str d24, [sp, #88]
    str d25, [sp, #96]
    str d26, [sp, #104]
    str d24, [sp, #88]
    str d25, [sp, #96]
    str d26, [sp, #104]
    sub x9, x29, #504
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    fmov d4, d9
    sub x9, x29, #480
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_misfit
    fmov d24, d0
    fcmp d24, d14
    cset w14, mi
    mov x15, #0
Lbdd13b3dba8e_74:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_77
    .p2align 4
Lbdd13b3dba8e_75:
    add x12, x24, x15
    movz x10, #12
    cmp x12, x10
    b.hs Lbdd13b3dba8e_c29
    sub x9, x29, #240
    add x12, x9, x12, lsl #3
    cbz w14, Lbdd13b3dba8e_79
Lbdd13b3dba8e_78:
    sub x10, x29, #368
    ldr d25, [x10, x15, lsl #3]
    b Lbdd13b3dba8e_80
Lbdd13b3dba8e_79:
    sub x10, x29, #320
    ldr d25, [x10, x15, lsl #3]
Lbdd13b3dba8e_80:
    str d25, [x12]
    add x15, x15, #1
    cmp x15, x22
    b.lo Lbdd13b3dba8e_75
Lbdd13b3dba8e_77:
    cmp w14, #0
    fcsel d24, d24, d14, ne
    str d24, [x23]
    b Lbdd13b3dba8e_107
Lbdd13b3dba8e_66:
    subs x14, x22, #1
    b.cc Lbdd13b3dba8e_c30
    movz x10, #4
    cmp x14, x10
    b.hs Lbdd13b3dba8e_c31
    sub x10, x29, #272
    ldr d24, [x10, x14, lsl #3]
    fcmp d14, d24
    b.pl Lbdd13b3dba8e_85
Lbdd13b3dba8e_84:
    mov x14, #0
Lbdd13b3dba8e_87:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_90
    .p2align 4
Lbdd13b3dba8e_88:
    add x15, x24, x14
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c32
    sub x9, x29, #240
    add x15, x9, x15, lsl #3
    sub x10, x29, #320
    ldr d24, [x10, x14, lsl #3]
    str d24, [x15]
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_88
Lbdd13b3dba8e_90:
    str d14, [x23]
    b Lbdd13b3dba8e_107
Lbdd13b3dba8e_85:
    sub x11, x29, #344
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Lbdd13b3dba8e_91:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_94
    .p2align 4
Lbdd13b3dba8e_92:
    lsl x15, x14, #3
    sub x10, x29, #344
    add x12, x15, x10
    sub x11, x29, #296
    ldr d24, [x15, x11]
    add x15, x24, x14
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c33
    sub x10, x29, #240
    ldr d25, [x10, x15, lsl #3]
    fsub d25, d25, d24
    fmul d25, d25, d12
    fadd d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_92
Lbdd13b3dba8e_94:
    sub x10, x29, #144
    sub x11, x29, #520
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cbz w19, Lbdd13b3dba8e_163
Lbdd13b3dba8e_162:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c34
    ldr d24, [sp, #248]
    movz x14, #1
    b Lbdd13b3dba8e_164
Lbdd13b3dba8e_163:
    mov x14, #0
    fmov d24, d10
Lbdd13b3dba8e_164:
    cbz w20, Lbdd13b3dba8e_166
Lbdd13b3dba8e_165:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c35
    sub x10, x29, #344
    ldr d25, [x10, x14, lsl #3]
    add x14, x14, #1
    b Lbdd13b3dba8e_167
Lbdd13b3dba8e_166:
    fmov d25, d10
Lbdd13b3dba8e_167:
    cbz w21, Lbdd13b3dba8e_169
Lbdd13b3dba8e_168:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c36
    sub x10, x29, #344
    ldr d26, [x10, x14, lsl #3]
    b Lbdd13b3dba8e_170
Lbdd13b3dba8e_169:
    fmov d26, d10
Lbdd13b3dba8e_170:
    str d24, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d24, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    sub x9, x29, #544
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    fmov d4, d9
    sub x9, x29, #520
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_misfit
    fmov d24, d0
    ldr d25, [x23]
    fcmp d24, d25
    b.pl Lbdd13b3dba8e_98
Lbdd13b3dba8e_97:
    mov x14, #0
Lbdd13b3dba8e_100:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_103
    .p2align 4
Lbdd13b3dba8e_101:
    add x15, x24, x14
    movz x10, #12
    cmp x15, x10
    b.hs Lbdd13b3dba8e_c37
    sub x9, x29, #240
    add x15, x9, x15, lsl #3
    sub x10, x29, #344
    ldr d25, [x10, x14, lsl #3]
    str d25, [x15]
    add x14, x14, #1
    cmp x14, x22
    b.lo Lbdd13b3dba8e_101
Lbdd13b3dba8e_103:
    str d24, [x23]
    b Lbdd13b3dba8e_107
Lbdd13b3dba8e_98:
    movz x26, #1
Lbdd13b3dba8e_104:
    cmp x26, x22
    b.hi Lbdd13b3dba8e_107
    .p2align 4
Lbdd13b3dba8e_105:
    add x14, x26, x26, lsl #1
    mov x15, #0
Lbdd13b3dba8e_108:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_111
    .p2align 4
Lbdd13b3dba8e_109:
    add x12, x14, x15
    movz x10, #12
    cmp x12, x10
    b.hs Lbdd13b3dba8e_c38
    sub x9, x29, #240
    add x12, x9, x12, lsl #3
    sub x10, x29, #240
    ldr d24, [x10, x15, lsl #3]
    ldr d25, [x12]
    fsub d25, d25, d24
    fmul d25, d25, d12
    fadd d24, d24, d25
    str d24, [x12]
    add x15, x15, #1
    cmp x15, x22
    b.lo Lbdd13b3dba8e_109
Lbdd13b3dba8e_111:
    sub x9, x29, #272
    add x27, x9, x26, lsl #3
    sub x10, x29, #144
    sub x11, x29, #560
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x22, x14
    movz x10, #12
    cmp x15, x10
    b.hi Lbdd13b3dba8e_c39
    cmp x14, x15
    b.hi Lbdd13b3dba8e_113
Lbdd13b3dba8e_112:
    sub x9, x29, #240
    add x14, x9, x14, lsl #3
    cbz w19, Lbdd13b3dba8e_174
Lbdd13b3dba8e_173:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c40
    ldr d24, [x14]
    movz x15, #1
    b Lbdd13b3dba8e_175
Lbdd13b3dba8e_174:
    mov x15, #0
    fmov d24, d10
Lbdd13b3dba8e_175:
    cbz w20, Lbdd13b3dba8e_177
Lbdd13b3dba8e_176:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_c41
    ldr d25, [x14, x15, lsl #3]
    add x15, x15, #1
    b Lbdd13b3dba8e_178
Lbdd13b3dba8e_177:
    fmov d25, d10
Lbdd13b3dba8e_178:
    cbz w21, Lbdd13b3dba8e_180
Lbdd13b3dba8e_179:
    cmp x15, x22
    b.hs Lbdd13b3dba8e_c42
    ldr d26, [x14, x15, lsl #3]
    b Lbdd13b3dba8e_181
Lbdd13b3dba8e_180:
    fmov d26, d10
Lbdd13b3dba8e_181:
    str d24, [sp, #8]
    str d25, [sp, #16]
    str d26, [sp, #24]
    str d24, [sp, #8]
    str d25, [sp, #16]
    str d26, [sp, #24]
    sub x9, x29, #584
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    fmov d4, d9
    sub x9, x29, #560
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_geometry_misfit
    fmov d24, d0
    str d24, [x27]
    cmp x22, x26
    b.eq Lbdd13b3dba8e_107
Lbdd13b3dba8e_114:
    add x26, x26, #1
    cmp x26, x22
    b.ls Lbdd13b3dba8e_105
Lbdd13b3dba8e_107:
Lbdd13b3dba8e_99:
Lbdd13b3dba8e_86:
Lbdd13b3dba8e_67:
    add x25, x25, #1
    cmp x25, #400
    b.lo Lbdd13b3dba8e_27
Lbdd13b3dba8e_29:
    movz x10, #12
    cmp x22, x10
    b.hi Lbdd13b3dba8e_c43
    cbz w19, Lbdd13b3dba8e_185
Lbdd13b3dba8e_184:
    mov x9, #0
    cmp x9, x22
    b.hs Lbdd13b3dba8e_c44
    ldr d24, [sp, #352]
    movz x14, #1
    b Lbdd13b3dba8e_186
Lbdd13b3dba8e_185:
    mov x14, #0
    fmov d24, d10
Lbdd13b3dba8e_186:
    cbz w20, Lbdd13b3dba8e_188
Lbdd13b3dba8e_187:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c45
    sub x10, x29, #240
    ldr d25, [x10, x14, lsl #3]
    add x14, x14, #1
    b Lbdd13b3dba8e_189
Lbdd13b3dba8e_188:
    fmov d25, d10
Lbdd13b3dba8e_189:
    cbz w21, Lbdd13b3dba8e_191
Lbdd13b3dba8e_190:
    cmp x14, x22
    b.hs Lbdd13b3dba8e_c46
    sub x10, x29, #240
    ldr d26, [x10, x14, lsl #3]
    b Lbdd13b3dba8e_192
Lbdd13b3dba8e_191:
    fmov d26, d10
Lbdd13b3dba8e_192:
Lbdd13b3dba8e_194:
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    ldr x19, [sp, #584]
    ldr x20, [sp, #576]
    ldr x21, [sp, #568]
    ldr x22, [sp, #560]
    ldr x23, [sp, #552]
    ldr x24, [sp, #544]
    ldr x25, [sp, #536]
    ldr x26, [sp, #528]
    ldr x27, [sp, #520]
    ldr d8, [sp, #512]
    ldr d9, [sp, #504]
    ldr d10, [sp, #496]
    ldr d11, [sp, #488]
    ldr d12, [sp, #480]
    ldr d13, [sp, #472]
    ldr d14, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbdd13b3dba8e_24:
    adrp x0, _lb_text_dde65c6a8819@PAGE
    add x0, x0, _lb_text_dde65c6a8819@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_113:
    adrp x0, _lb_text_ffe7481db70b@PAGE
    add x0, x0, _lb_text_ffe7481db70b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c1:
    adrp x0, _lb_text_85719f01a004@PAGE
    add x0, x0, _lb_text_85719f01a004@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c2:
    adrp x0, _lb_text_fc187e0d6f7f@PAGE
    add x0, x0, _lb_text_fc187e0d6f7f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c3:
    adrp x0, _lb_text_fe74c067b9a0@PAGE
    add x0, x0, _lb_text_fe74c067b9a0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c4:
    adrp x0, _lb_text_5dd8ae2fa41d@PAGE
    add x0, x0, _lb_text_5dd8ae2fa41d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c5:
    adrp x0, _lb_text_7a422bc42dee@PAGE
    add x0, x0, _lb_text_7a422bc42dee@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c6:
    adrp x0, _lb_text_7a422bc42dee@PAGE
    add x0, x0, _lb_text_7a422bc42dee@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c7:
    adrp x0, _lb_text_7a422bc42dee@PAGE
    add x0, x0, _lb_text_7a422bc42dee@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c8:
    adrp x0, _lb_text_dde65c6a8819@PAGE
    add x0, x0, _lb_text_dde65c6a8819@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c9:
    adrp x0, _lb_text_dde65c6a8819@PAGE
    add x0, x0, _lb_text_dde65c6a8819@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c10:
    adrp x0, _lb_text_dde65c6a8819@PAGE
    add x0, x0, _lb_text_dde65c6a8819@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c11:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c12:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c13:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c14:
    adrp x0, _lb_text_ccf920154181@PAGE
    add x0, x0, _lb_text_ccf920154181@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c15:
    adrp x0, _lb_text_ac4d2e3bf6ec@PAGE
    add x0, x0, _lb_text_ac4d2e3bf6ec@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c16:
    adrp x0, _lb_text_ac4d2e3bf6ec@PAGE
    add x0, x0, _lb_text_ac4d2e3bf6ec@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c17:
    adrp x0, _lb_text_48305997337a@PAGE
    add x0, x0, _lb_text_48305997337a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c18:
    adrp x0, _lb_text_bbbc0476f491@PAGE
    add x0, x0, _lb_text_bbbc0476f491@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c19:
    adrp x0, _lb_text_da549d90e697@PAGE
    add x0, x0, _lb_text_da549d90e697@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c20:
    adrp x0, _lb_text_fcfd5180c6a5@PAGE
    add x0, x0, _lb_text_fcfd5180c6a5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c21:
    adrp x0, _lb_text_b090460e02a7@PAGE
    add x0, x0, _lb_text_b090460e02a7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c22:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c23:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c24:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c25:
    adrp x0, _lb_text_e4dd037b8f13@PAGE
    add x0, x0, _lb_text_e4dd037b8f13@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c26:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c27:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c28:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c29:
    adrp x0, _lb_text_879e8457e2c8@PAGE
    add x0, x0, _lb_text_879e8457e2c8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c30:
    adrp x0, _lb_text_f9c07148663e@PAGE
    add x0, x0, _lb_text_f9c07148663e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c31:
    adrp x0, _lb_text_f9c07148663e@PAGE
    add x0, x0, _lb_text_f9c07148663e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c32:
    adrp x0, _lb_text_4b30fde8effb@PAGE
    add x0, x0, _lb_text_4b30fde8effb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c33:
    adrp x0, _lb_text_c820a400a83f@PAGE
    add x0, x0, _lb_text_c820a400a83f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c34:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c35:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c36:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c37:
    adrp x0, _lb_text_1049cbbaea69@PAGE
    add x0, x0, _lb_text_1049cbbaea69@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c38:
    adrp x0, _lb_text_8b2482676161@PAGE
    add x0, x0, _lb_text_8b2482676161@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c39:
    adrp x0, _lb_text_ffe7481db70b@PAGE
    add x0, x0, _lb_text_ffe7481db70b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c40:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c41:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c42:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c43:
    adrp x0, _lb_text_a568ac314dff@PAGE
    add x0, x0, _lb_text_a568ac314dff@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c44:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c45:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbdd13b3dba8e_c46:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lbdd13b3dba8e_k0:
    .quad 4587366580439587226
Lbdd13b3dba8e_k1:
    .quad 4397347889687374747


    .p2align 2
    .globl _lb_geometry_9turn_from
_lb_geometry_9turn_from:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #24
    str d0, [x16, #0]
    sub x16, x29, #24
    str d1, [x16, #8]
    sub x16, x29, #24
    str d2, [x16, #16]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #56
    str x2, [x16]
    ldr d24, [sp, #40]
    ldr d25, [sp, #48]
    ldr d26, [sp, #56]
    ldrb w14, [sp, #8]
    cbz w14, L4ee28f2fac5b_2
L4ee28f2fac5b_1:
    ldr x14, [sp, #24]
    ldr x15, [sp, #32]
    mov x9, #0
    cmp x9, x15
    b.hs L4ee28f2fac5b_c1
    ldr d24, [x14]
    movz x14, #1
    b L4ee28f2fac5b_3
L4ee28f2fac5b_2:
    mov x14, #0
L4ee28f2fac5b_3:
    ldrb w15, [sp, #9]
    cbz w15, L4ee28f2fac5b_5
L4ee28f2fac5b_4:
    ldr x15, [sp, #24]
    ldr x12, [sp, #32]
    cmp x14, x12
    b.hs L4ee28f2fac5b_c2
    ldr d25, [x15, x14, lsl #3]
    add x14, x14, #1
    b L4ee28f2fac5b_6
L4ee28f2fac5b_5:
L4ee28f2fac5b_6:
    ldrb w15, [sp, #10]
    cbz w15, L4ee28f2fac5b_8
L4ee28f2fac5b_7:
    ldr x15, [sp, #24]
    ldr x12, [sp, #32]
    cmp x14, x12
    b.hs L4ee28f2fac5b_c3
    ldr d26, [x15, x14, lsl #3]
    b L4ee28f2fac5b_9
L4ee28f2fac5b_8:
L4ee28f2fac5b_9:
    fmov d0, d24
    fmov d1, d25
    fmov d2, d26
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4ee28f2fac5b_c1:
    adrp x0, _lb_text_243a36190a9e@PAGE
    add x0, x0, _lb_text_243a36190a9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4ee28f2fac5b_c2:
    adrp x0, _lb_text_c07b52d87bfd@PAGE
    add x0, x0, _lb_text_c07b52d87bfd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4ee28f2fac5b_c3:
    adrp x0, _lb_text_4024df442931@PAGE
    add x0, x0, _lb_text_4024df442931@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_geometry_misfit
_lb_geometry_misfit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str d8, [sp, #344]
    str d9, [sp, #336]
    str d10, [sp, #328]
    str d11, [sp, #320]
    str d12, [sp, #312]
    str d13, [sp, #304]
    str d14, [sp, #296]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #344
    str d0, [x16, #0]
    sub x16, x29, #344
    str d1, [x16, #8]
    sub x16, x29, #344
    str d2, [x16, #16]
    fmov d8, d3
    fmov d9, d4
    fmov d10, xzr
    sub x9, x29, #344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d10
    fmov d4, d8
    fmov d5, d9
    sub x8, x29, #248
    bl _lb_geometry_correction
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
    ldr x14, [sp, #280]
    ldr x15, [sp, #288]
    ldr d24, Ld4cd0fdebb4e_k0
    ldr d25, Ld4cd0fdebb4e_k1
    ldr d26, Ld4cd0fdebb4e_k2
    fmov d27, #1.0000000
    ldr d28, Ld4cd0fdebb4e_k2
    fmov d29, #1.0000000
    mov x12, #0
Ld4cd0fdebb4e_1:
    cmp x12, x15
    b.hs Ld4cd0fdebb4e_4
    .p2align 4
Ld4cd0fdebb4e_2:
    add x13, x14, x12, lsl #5
    ldr d30, [x13]
    ldr d31, [x13, #8]
    ldr d19, [x13, #16]
    ldr d20, [x13, #24]
    fmul d21, d30, d8
    fmul d22, d31, d9
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
    ldr d23, [sp, #152]
    fmul d23, d21, d23
    ldr d11, [sp, #160]
    fmul d11, d22, d11
    fadd d23, d23, d11
    ldr d11, [sp, #168]
    fadd d23, d23, d11
    fabs d11, d23
    fcmp d11, d25
    b.le Ld4cd0fdebb4e_14
Ld4cd0fdebb4e_13:
    fdiv d23, d27, d23
    b Ld4cd0fdebb4e_15
Ld4cd0fdebb4e_14:
    fmov d23, d26
Ld4cd0fdebb4e_15:
    ldr d11, [sp, #104]
    fmul d11, d21, d11
    ldr d12, [sp, #112]
    fmul d12, d22, d12
    fadd d11, d11, d12
    ldr d12, [sp, #120]
    fadd d11, d11, d12
    fmul d11, d11, d23
    ldr d12, [sp, #128]
    fmul d21, d21, d12
    ldr d12, [sp, #136]
    fmul d22, d22, d12
    fadd d21, d21, d22
    ldr d22, [sp, #144]
    fadd d21, d21, d22
    fmul d21, d21, d23
    fmul d22, d19, d8
    fmul d23, d20, d9
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
    ldr d12, [sp, #80]
    fmul d12, d22, d12
    ldr d13, [sp, #88]
    fmul d13, d23, d13
    fadd d12, d12, d13
    ldr d13, [sp, #96]
    fadd d12, d12, d13
    fabs d13, d12
    fcmp d13, d25
    b.le Ld4cd0fdebb4e_21
Ld4cd0fdebb4e_20:
    fdiv d12, d29, d12
    b Ld4cd0fdebb4e_22
Ld4cd0fdebb4e_21:
    fmov d12, d28
Ld4cd0fdebb4e_22:
    ldr d13, [sp, #32]
    fmul d13, d22, d13
    ldr d14, [sp, #40]
    fmul d14, d23, d14
    fadd d13, d13, d14
    ldr d14, [sp, #48]
    fadd d13, d13, d14
    fmul d13, d13, d12
    ldr d14, [sp, #56]
    fmul d22, d22, d14
    ldr d14, [sp, #64]
    fmul d23, d23, d14
    fadd d22, d22, d23
    ldr d23, [sp, #72]
    fadd d22, d22, d23
    fmul d22, d22, d12
    fsub d23, d13, d11
    fsub d21, d22, d21
    fmul d22, d23, d23
    fmul d21, d21, d21
    fadd d23, d21, d22
    fcmp d23, d24
    b.hi Ld4cd0fdebb4e_6
Ld4cd0fdebb4e_5:
    b Ld4cd0fdebb4e_3
Ld4cd0fdebb4e_6:
Ld4cd0fdebb4e_7:
    fsub d30, d19, d30
    fsub d31, d20, d31
    fmul d31, d31, d31
    fmul d30, d30, d30
    fcmp d31, d30
    fcsel d30, d22, d21, gt
    fdiv d30, d30, d23
    fadd d10, d30, d10
Ld4cd0fdebb4e_3:
    add x12, x12, #1
    cmp x12, x15
    b.lo Ld4cd0fdebb4e_2
Ld4cd0fdebb4e_4:
    ldr d24, Ld4cd0fdebb4e_k3
    ldr d25, [sp, #8]
    fmul d25, d25, d25
    ldr d26, [sp, #16]
    fmul d26, d26, d26
    fadd d25, d25, d26
    ldr d26, [sp, #24]
    fmul d26, d26, d26
    fadd d25, d25, d26
    fmul d24, d24, d25
    fadd d24, d24, d10
    fmov d0, d24
    ldr d8, [sp, #344]
    ldr d9, [sp, #336]
    ldr d10, [sp, #328]
    ldr d11, [sp, #320]
    ldr d12, [sp, #312]
    ldr d13, [sp, #304]
    ldr d14, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Ld4cd0fdebb4e_k0:
    .quad 4337655138388951980
Ld4cd0fdebb4e_k1:
    .quad 4427486594234968593
Ld4cd0fdebb4e_k2:
    .quad 4786511204640096256
Ld4cd0fdebb4e_k3:
    .quad 4557750909289998844


    .p2align 2
    .globl _lb_test_35
_lb_test_35:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6208
    sub sp, sp, x16
    str d8, [sp, #6200]
    str d9, [sp, #6192]
    str d10, [sp, #6184]
    str d11, [sp, #6176]
    str d12, [sp, #6168]
    str d13, [sp, #6160]
    sub x8, x29, #3104
    bl _lb_settings_defaults
    sub x10, x29, #3104
    movz x16, #6160
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d8, #0.2500000
    fmov d0, d8
    movz x16, #6160
    sub x0, x29, x16
    movz x1, #98
    bl _lb_settings_Settings_set
    fmov d9, #0.7500000
    fmov d0, d9
    movz x16, #6160
    sub x0, x29, x16
    movz x1, #100
    bl _lb_settings_Settings_set
    fmov d10, #0.5000000
    fmov d0, d10
    movz x16, #6160
    sub x0, x29, x16
    movz x1, #99
    bl _lb_settings_Settings_set
    ldr d11, Lb68e74c0912a_k0
    ldr d12, Lb68e74c0912a_k1
    fmov d0, d11
    fmov d1, d12
    movz x16, #6160
    sub x0, x29, x16
    movz x1, #1
    sub x8, x29, #192
    bl _lb_geometry_9frame_map
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
    fmov d13, xzr
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
    ldr d24, [sp, #6064]
    fmul d24, d13, d24
    ldr d25, [sp, #6072]
    fmul d25, d13, d25
    fadd d24, d24, d25
    ldr d25, [sp, #6080]
    fadd d24, d24, d25
    fabs d25, d24
    ldr d26, Lb68e74c0912a_k2
    fcmp d25, d26
    b.le Lb68e74c0912a_28
Lb68e74c0912a_27:
    fmov d25, #1.0000000
    fdiv d24, d25, d24
    b Lb68e74c0912a_29
Lb68e74c0912a_28:
    ldr d24, Lb68e74c0912a_k3
Lb68e74c0912a_29:
    ldr d25, [sp, #6016]
    fmul d25, d13, d25
    ldr d27, [sp, #6024]
    fmul d27, d13, d27
    fadd d25, d25, d27
    ldr d27, [sp, #6032]
    fadd d25, d25, d27
    fmul d25, d25, d24
    ldr d27, [sp, #6040]
    fmul d27, d13, d27
    ldr d28, [sp, #6048]
    fmul d28, d13, d28
    fadd d27, d27, d28
    ldr d28, [sp, #6056]
    fadd d27, d27, d28
    fmul d24, d27, d24
    fsub d25, d25, d8
    fabs d25, d25
    fcmp d25, d26
    b.pl Lb68e74c0912a_2
Lb68e74c0912a_3:
    fsub d24, d24, d10
    fabs d24, d24
    fcmp d24, d26
    b.mi Lb68e74c0912a_1
Lb68e74c0912a_2:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_50c8bd6942c5@PAGE
    add x14, x14, _lb_text_50c8bd6942c5@PAGEOFF
    adrp x15, _lb_text_848e044923b8@PAGE
    add x15, x15, _lb_text_848e044923b8@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6176
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #6200]
    ldr d9, [sp, #6192]
    ldr d10, [sp, #6184]
    ldr d11, [sp, #6176]
    ldr d12, [sp, #6168]
    ldr d13, [sp, #6160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb68e74c0912a_1:
    fmov d8, #1.0000000
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
    ldr d24, [sp, #6064]
    fmul d24, d24, d8
    ldr d25, [sp, #6072]
    fmul d25, d25, d8
    fadd d24, d24, d25
    ldr d25, [sp, #6080]
    fadd d24, d24, d25
    fabs d25, d24
    fcmp d25, d26
    b.le Lb68e74c0912a_35
Lb68e74c0912a_34:
    fdiv d24, d8, d24
    b Lb68e74c0912a_36
Lb68e74c0912a_35:
    ldr d24, Lb68e74c0912a_k3
Lb68e74c0912a_36:
    ldr d25, [sp, #6016]
    fmul d25, d25, d8
    ldr d27, [sp, #6024]
    fmul d27, d27, d8
    fadd d25, d25, d27
    ldr d27, [sp, #6032]
    fadd d25, d25, d27
    fmul d25, d25, d24
    ldr d27, [sp, #6040]
    fmul d27, d27, d8
    ldr d28, [sp, #6048]
    fmul d28, d28, d8
    fadd d27, d27, d28
    ldr d28, [sp, #6056]
    fadd d27, d27, d28
    fmul d24, d27, d24
    fsub d25, d25, d9
    fabs d25, d25
    fcmp d25, d26
    b.pl Lb68e74c0912a_6
Lb68e74c0912a_7:
    fsub d24, d24, d8
    fabs d24, d24
    fcmp d24, d26
    b.mi Lb68e74c0912a_5
Lb68e74c0912a_6:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_18ef260a0b7c@PAGE
    add x14, x14, _lb_text_18ef260a0b7c@PAGEOFF
    adrp x15, _lb_text_c44841110da5@PAGE
    add x15, x15, _lb_text_c44841110da5@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6192
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #6200]
    ldr d9, [sp, #6192]
    ldr d10, [sp, #6184]
    ldr d11, [sp, #6176]
    ldr d12, [sp, #6168]
    ldr d13, [sp, #6160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb68e74c0912a_5:
    movz x16, #6160
    sub x0, x29, x16
    bl _lb_geometry_7crop_of
    fmov d24, d0
    fmov d26, d1
    fmov d25, d2
    fmov d27, d3
    fsub d24, d25, d24
    fmul d24, d24, d11
    frinta d24, d24
    fmov x14, d8
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w15, hi
    cbz w15, Lb68e74c0912a_42
Lb68e74c0912a_41:
    fmov d24, d8
    b Lb68e74c0912a_62
Lb68e74c0912a_42:
Lb68e74c0912a_43:
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Lb68e74c0912a_46
Lb68e74c0912a_45:
    b Lb68e74c0912a_62
Lb68e74c0912a_46:
Lb68e74c0912a_47:
    fcmp d13, d8
    b.ne Lb68e74c0912a_50
Lb68e74c0912a_52:
    fcmp d13, d24
    b.ne Lb68e74c0912a_50
Lb68e74c0912a_49:
    and x12, x14, x12
    fmov d24, x12
    b Lb68e74c0912a_62
Lb68e74c0912a_50:
Lb68e74c0912a_51:
    fcmp d8, d24
    fcsel d24, d8, d24, gt
Lb68e74c0912a_62:
    fsub d25, d27, d26
    fmul d25, d25, d12
    frinta d25, d25
Lb68e74c0912a_81:
    cbz w15, Lb68e74c0912a_64
Lb68e74c0912a_63:
    b Lb68e74c0912a_84
Lb68e74c0912a_64:
Lb68e74c0912a_65:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lb68e74c0912a_68
Lb68e74c0912a_67:
    fmov d8, d25
    b Lb68e74c0912a_84
Lb68e74c0912a_68:
Lb68e74c0912a_69:
    fcmp d13, d8
    b.ne Lb68e74c0912a_72
Lb68e74c0912a_74:
    fcmp d13, d25
    b.ne Lb68e74c0912a_72
Lb68e74c0912a_71:
    and x14, x14, x15
    fmov d8, x14
    b Lb68e74c0912a_84
Lb68e74c0912a_72:
Lb68e74c0912a_73:
    fcmp d8, d25
    fcsel d8, d8, d25, gt
Lb68e74c0912a_84:
Lb68e74c0912a_26:
    ldr d25, Lb68e74c0912a_k4
    fcmp d25, d24
    b.ne Lb68e74c0912a_10
Lb68e74c0912a_11:
    ldr d24, Lb68e74c0912a_k5
    fcmp d24, d8
    b.eq Lb68e74c0912a_9
Lb68e74c0912a_10:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_bd6400c09d1f@PAGE
    add x14, x14, _lb_text_bd6400c09d1f@PAGEOFF
    adrp x15, _lb_text_5ffa4bae81a0@PAGE
    add x15, x15, _lb_text_5ffa4bae81a0@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6208
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #6200]
    ldr d9, [sp, #6192]
    ldr d10, [sp, #6184]
    ldr d11, [sp, #6176]
    ldr d12, [sp, #6168]
    ldr d13, [sp, #6160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb68e74c0912a_9:
    mov x0, #0
    ldr d8, [sp, #6200]
    ldr d9, [sp, #6192]
    ldr d10, [sp, #6184]
    ldr d11, [sp, #6176]
    ldr d12, [sp, #6168]
    ldr d13, [sp, #6160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb68e74c0912a_k0:
    .quad 4663319084467748864
Lb68e74c0912a_k1:
    .quad 4661014508095930368
Lb68e74c0912a_k2:
    .quad 4427486594234968593
Lb68e74c0912a_k3:
    .quad 4786511204640096256
Lb68e74c0912a_k4:
    .quad 4658815484840378368
Lb68e74c0912a_k5:
    .quad 4656510908468559872


    .p2align 2
    .globl _lb_test_36
_lb_test_36:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6128
    sub sp, sp, x16
    sub x8, x29, #3056
    bl _lb_settings_defaults
    sub x10, x29, #3056
    movz x16, #6112
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    ldr d24, Lf04ee7ab2ccf_k0
    fmov d0, d24
    movz x16, #6112
    sub x0, x29, x16
    movz x1, #93
    bl _lb_settings_Settings_set
    fmov d24, #5.0000000
    fmov d0, d24
    movz x16, #6112
    sub x0, x29, x16
    movz x1, #92
    bl _lb_settings_Settings_set
    ldr d24, Lf04ee7ab2ccf_k1
    ldr d25, Lf04ee7ab2ccf_k2
    fmov d0, d24
    fmov d1, d25
    movz x16, #6112
    sub x0, x29, x16
    movz x1, #1
    sub x8, x29, #144
    bl _lb_geometry_9frame_map
    sub x10, x29, #144
    sub x11, x29, #72
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
    fmov d24, xzr
    str d24, [sp, #5976]
    str d24, [sp, #5984]
    fmov d25, #1.0000000
    str d25, [sp, #5992]
    str d24, [sp, #6000]
    str d25, [sp, #6008]
    str d25, [sp, #6016]
    str d24, [sp, #6024]
    str d25, [sp, #6032]
    fmov d26, #0.5000000
    str d26, [sp, #6040]
    str d24, [sp, #6048]
    ldr d24, Lf04ee7ab2ccf_k3
    ldr d26, Lf04ee7ab2ccf_k4
    fadd d24, d25, d24
    ldr d27, Lf04ee7ab2ccf_k5
    ldr d28, Lf04ee7ab2ccf_k6
    mov x14, #0
Lf04ee7ab2ccf_1:
    cmp x14, #5
    b.hs Lf04ee7ab2ccf_4
    .p2align 4
Lf04ee7ab2ccf_2:
    sub x9, x29, #152
    add x15, x9, x14, lsl #4
    ldr d29, [x15]
    ldr d30, [x15, #8]
    sub x10, x29, #72
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
    ldr d31, [sp, #5952]
    fmul d31, d29, d31
    ldr d19, [sp, #5960]
    fmul d19, d30, d19
    fadd d31, d31, d19
    ldr d19, [sp, #5968]
    fadd d31, d31, d19
    fabs d19, d31
    fcmp d19, d27
    b.le Lf04ee7ab2ccf_12
Lf04ee7ab2ccf_11:
    fdiv d31, d25, d31
    b Lf04ee7ab2ccf_13
Lf04ee7ab2ccf_12:
    fmov d31, d28
Lf04ee7ab2ccf_13:
    ldr d19, [sp, #5904]
    fmul d19, d29, d19
    ldr d20, [sp, #5912]
    fmul d20, d30, d20
    fadd d19, d19, d20
    ldr d20, [sp, #5920]
    fadd d19, d19, d20
    fmul d19, d19, d31
    ldr d20, [sp, #5928]
    fmul d29, d29, d20
    ldr d20, [sp, #5936]
    fmul d30, d30, d20
    fadd d29, d29, d30
    ldr d30, [sp, #5944]
    fadd d29, d29, d30
    fmul d29, d29, d31
    fcmp d19, d26
    b.lt Lf04ee7ab2ccf_6
Lf04ee7ab2ccf_9:
    fcmp d19, d24
    b.hi Lf04ee7ab2ccf_6
Lf04ee7ab2ccf_8:
    fcmp d29, d26
    b.lt Lf04ee7ab2ccf_6
Lf04ee7ab2ccf_7:
    fcmp d29, d24
    b.ls Lf04ee7ab2ccf_5
Lf04ee7ab2ccf_6:
    adrp x14, _lb_text_6fd625ebbcea@PAGE
    add x14, x14, _lb_text_6fd625ebbcea@PAGEOFF
    str x14, [sp, #0]
    movz x9, #36
    str x9, [sp, #8]
    adrp x14, _lb_text_fcbe6e51dcc8@PAGE
    add x14, x14, _lb_text_fcbe6e51dcc8@PAGEOFF
    adrp x15, _lb_text_ad17dda507e9@PAGE
    add x15, x15, _lb_text_ad17dda507e9@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6128
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #1
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf04ee7ab2ccf_5:
    add x14, x14, #1
    cmp x14, #5
    b.lo Lf04ee7ab2ccf_2
Lf04ee7ab2ccf_4:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lf04ee7ab2ccf_k0:
    .quad 4630826316843712512
Lf04ee7ab2ccf_k1:
    .quad 4663319084467748864
Lf04ee7ab2ccf_k2:
    .quad 4661014508095930368
Lf04ee7ab2ccf_k3:
    .quad 4517329193108106637
Lf04ee7ab2ccf_k4:
    .quad 13740701229962882445
Lf04ee7ab2ccf_k5:
    .quad 4427486594234968593
Lf04ee7ab2ccf_k6:
    .quad 4786511204640096256


    .p2align 2
    .globl _lb_test_37
_lb_test_37:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18480
    sub sp, sp, x16
    str x19, [sp, #18472]
    str x20, [sp, #18464]
    str x21, [sp, #18456]
    str d8, [sp, #18448]
    str d9, [sp, #18440]
    str d10, [sp, #18432]
    str d11, [sp, #18424]
    str d12, [sp, #18416]
    str d13, [sp, #18408]
    str d14, [sp, #18400]
    str d15, [sp, #18392]
    fmov d8, xzr
    fmov d9, #-3.0000000
    fmov d10, #-1.5000000
    fmov d11, #1.0000000
    ldr d12, L84348723ecc5_k0
    fmov d13, #1.0000000
    ldr d14, L84348723ecc5_k0
    fmov d15, #1.0000000
    mov x19, #0
L84348723ecc5_1:
    cmp x19, #23
    b.hs L84348723ecc5_4
    .p2align 4
L84348723ecc5_2:
    mov x0, x19
    movz x16, #9040
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9040
    sub x10, x29, x16
    movz x16, #18224
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #18224
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    fmov d0, d8
    fmov d1, d8
    mov x1, x14
    movz x16, #18224
    sub x0, x29, x16
    mov x2, #0
    movz x16, #9248
    sub x8, x29, x16
    bl _lb_12film_develop_developing
    movz x16, #9248
    sub x10, x29, x16
    movz x16, #18432
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    mov x20, #0
L84348723ecc5_5:
    cmp x20, #3
    b.hs L84348723ecc5_8
    .p2align 4
L84348723ecc5_6:
    str d9, [sp, #9208]
    str d10, [sp, #9216]
    str d8, [sp, #9224]
    mov x21, #0
L84348723ecc5_9:
    cmp x21, #3
    b.hs L84348723ecc5_12
    .p2align 4
L84348723ecc5_10:
    movz x16, #9272
    sub x10, x29, x16
    ldr d24, [x10, x21, lsl #3]
    ldr d25, [sp, #48]
    fmov d0, d24
    fmov d1, d25
    mov x1, x20
    movz x16, #18432
    sub x0, x29, x16
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fsub d24, d24, d11
    fabs d24, d24
    fcmp d24, d12
    b.mi L84348723ecc5_13
L84348723ecc5_14:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_ca701f89ffbe@PAGE
    add x14, x14, _lb_text_ca701f89ffbe@PAGEOFF
    adrp x15, _lb_text_295ec51be6ed@PAGE
    add x15, x15, _lb_text_295ec51be6ed@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18448
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18472]
    ldr x20, [sp, #18464]
    ldr x21, [sp, #18456]
    ldr d8, [sp, #18448]
    ldr d9, [sp, #18440]
    ldr d10, [sp, #18432]
    ldr d11, [sp, #18424]
    ldr d12, [sp, #18416]
    ldr d13, [sp, #18408]
    ldr d14, [sp, #18400]
    ldr d15, [sp, #18392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84348723ecc5_13:
    add x21, x21, #1
    cmp x21, #3
    b.lo L84348723ecc5_10
L84348723ecc5_12:
    movz x16, #18344
    sub x10, x29, x16
    ldr d24, [x10, x20, lsl #3]
    ldr d25, [sp, #56]
    fsub d25, d25, d13
    fmul d24, d24, d25
    fabs d24, d24
    fcmp d24, d14
    b.mi L84348723ecc5_16
L84348723ecc5_17:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_775cb1aaffdc@PAGE
    add x14, x14, _lb_text_775cb1aaffdc@PAGEOFF
    adrp x15, _lb_text_b492ce8b33d7@PAGE
    add x15, x15, _lb_text_b492ce8b33d7@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18464
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18472]
    ldr x20, [sp, #18464]
    ldr x21, [sp, #18456]
    ldr d8, [sp, #18448]
    ldr d9, [sp, #18440]
    ldr d10, [sp, #18432]
    ldr d11, [sp, #18424]
    ldr d12, [sp, #18416]
    ldr d13, [sp, #18408]
    ldr d14, [sp, #18400]
    ldr d15, [sp, #18392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84348723ecc5_16:
    add x20, x20, #1
    cmp x20, #3
    b.lo L84348723ecc5_6
L84348723ecc5_8:
    ldr d24, [sp, #160]
    fcmp d8, d24
    b.ne L84348723ecc5_20
L84348723ecc5_22:
    ldr d24, [sp, #168]
    fcmp d24, d15
    b.ne L84348723ecc5_20
L84348723ecc5_21:
    ldr d24, [sp, #176]
    fcmp d15, d24
    b.eq L84348723ecc5_19
L84348723ecc5_20:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_2085a7aad806@PAGE
    add x14, x14, _lb_text_2085a7aad806@PAGEOFF
    adrp x15, _lb_text_a56b9d71a496@PAGE
    add x15, x15, _lb_text_a56b9d71a496@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18480
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18472]
    ldr x20, [sp, #18464]
    ldr x21, [sp, #18456]
    ldr d8, [sp, #18448]
    ldr d9, [sp, #18440]
    ldr d10, [sp, #18432]
    ldr d11, [sp, #18424]
    ldr d12, [sp, #18416]
    ldr d13, [sp, #18408]
    ldr d14, [sp, #18400]
    ldr d15, [sp, #18392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L84348723ecc5_19:
    add x19, x19, #1
    cmp x19, #23
    b.lo L84348723ecc5_2
L84348723ecc5_4:
    mov x0, #0
    ldr x19, [sp, #18472]
    ldr x20, [sp, #18464]
    ldr x21, [sp, #18456]
    ldr d8, [sp, #18448]
    ldr d9, [sp, #18440]
    ldr d10, [sp, #18432]
    ldr d11, [sp, #18424]
    ldr d12, [sp, #18416]
    ldr d13, [sp, #18408]
    ldr d14, [sp, #18400]
    ldr d15, [sp, #18392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L84348723ecc5_k0:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_12film_develop_11standard_of
_lb_12film_develop_11standard_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    str x20, [sp, #16]
    str x21, [sp, #8]
    mov x19, x0
    adrp x20, _lb_12film_develop_processes@PAGE
    add x20, x20, _lb_12film_develop_processes@PAGEOFF
    mov x21, #0
L317507c7679d_1:
    cmp x21, #19
    b.hs L317507c7679d_4
    .p2align 4
L317507c7679d_2:
    movz x10, #112
    mul x14, x21, x10
    add x14, x14, x20
    ldr x15, [x14, #8]
    ldr x12, [x19, #48]
    cmp x15, x12
    cset w12, eq
    cbnz w12, L317507c7679d_8
L317507c7679d_14:
    b L317507c7679d_9
L317507c7679d_8:
    ldr x14, [x14]
    ldr x12, [x19, #40]
    mov x0, x14
    mov x1, x12
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L317507c7679d_9:
    and w14, w12, #255
    cbz w14, L317507c7679d_6
L317507c7679d_5:
    mov x0, x21
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr x21, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L317507c7679d_6:
L317507c7679d_7:
    add x21, x21, #1
    cmp x21, #19
    b.lo L317507c7679d_2
L317507c7679d_4:
    ldr x14, [x19, #16]
    scvtf d24, x14
    fmov d25, xzr
    fmov d26, #2.0000000
    fcmp d25, d26
    b.hi L317507c7679d_16
L317507c7679d_15:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L317507c7679d_18
L317507c7679d_17:
    b L317507c7679d_30
L317507c7679d_18:
L317507c7679d_19:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
L317507c7679d_30:
    fcvtzu x14, d24
    adrp x15, _lb_12film_develop_standards@PAGE
    add x15, x15, _lb_12film_develop_standards@PAGEOFF
    movz x10, #3
    cmp x14, x10
    b.hs L317507c7679d_c1
    ldr x14, [x15, x14, lsl #3]
    mov x0, x14
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr x21, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L317507c7679d_16:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L317507c7679d_c1:
    adrp x0, _lb_text_48de866d503a@PAGE
    add x0, x0, _lb_text_48de866d503a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12film_develop_developing
_lb_12film_develop_developing:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #27264
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #27248]
    str x20, [sp, #27240]
    str x21, [sp, #27232]
    str x22, [sp, #27224]
    str x23, [sp, #27216]
    str d8, [sp, #27208]
    str d9, [sp, #27200]
    str d10, [sp, #27192]
    str d11, [sp, #27184]
    fmov d8, d0
    fmov d9, d1
    mov x19, x0
    mov x20, x1
    mov x21, x2
    ldr x14, [x19, #16]
    cmp x14, #1
    cset w22, eq
    cbnz w22, L3c98a9023315_22
L3c98a9023315_27:
    mov w14, w22
    b L3c98a9023315_23
L3c98a9023315_22:
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x20, x10
    b.hs L3c98a9023315_c1
    movz x10, #112
    mul x15, x20, x10
    add x14, x14, x15
    adrp x15, _lb_text_fed35fd7f6f4@PAGE
    add x15, x15, _lb_text_fed35fd7f6f4@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, L3c98a9023315_24
L3c98a9023315_28:
    b L3c98a9023315_25
L3c98a9023315_24:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L3c98a9023315_25:
    and w14, w13, #255
L3c98a9023315_23:
    and w23, w14, #255
    mov x0, x19
    mov x1, x20
    bl _lb_12film_develop_14normal_minutes
    fmov d10, d0
    cbz w23, L3c98a9023315_2
L3c98a9023315_1:
    movz x0, #11
    movz x16, #17984
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #17984
    sub x10, x29, x16
    movz x16, #26936
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L3c98a9023315_3
L3c98a9023315_2:
    mov x10, x19
    movz x16, #26936
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
L3c98a9023315_3:
    movz x16, #26936
    sub x10, x29, x16
    movz x16, #9032
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #9448
    sub x0, x29, x16
    mov x1, #0
    movz x2, #208
    bl _memset
    fmov d11, #1.0000000
    fmov d0, d8
    fmov d1, d9
    fmov d2, d10
    fmov d3, d11
    mov x0, x20
    bl _lb_12film_develop_ratio
    fmov d24, d0
    str d24, [sp, #17816]
    adrp x14, _lb_12film_develop_14fog_activation@PAGE
    add x14, x14, _lb_12film_develop_14fog_activation@PAGEOFF
    ldr d24, [x14]
    fmov d0, d8
    fmov d1, d9
    fmov d2, d10
    fmov d3, d24
    mov x0, x20
    bl _lb_12film_develop_ratio
    fmov d24, d0
    str d24, [sp, #17824]
    cmp w23, #0
    cset w14, eq
    cmp w22, #0
    csel w14, w14, w22, ne
    movz x16, #9432
    sub x16, x29, x16
    strb w14, [x16]
    ldr d24, [x19, #80]
    str d24, [sp, #17840]
    sub x10, x29, #256
    movz x16, #9416
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x10, x29, #232
    movz x16, #9392
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #27056]
    str d24, [sp, #17896]
    sub x10, x29, #200
    movz x16, #9360
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    fmov d9, xzr
    str d9, [sp, #17928]
    str d11, [sp, #17936]
    str d11, [sp, #17944]
    str d9, [sp, #17952]
    str d9, [sp, #17960]
    str d9, [sp, #17968]
    str d11, [sp, #17976]
    str d11, [sp, #17984]
    str d11, [sp, #17992]
    str d9, [sp, #18000]
    str d9, [sp, #18008]
    str d11, [sp, #18016]
    movz x16, #9448
    sub x10, x29, x16
    movz x16, #9240
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    adrp x22, _lb_12film_develop_processes@PAGE
    add x22, x22, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x20, x10
    b.hs L3c98a9023315_c2
    movz x10, #112
    mul x14, x20, x10
    add x14, x14, x22
    ldrb w20, [x14, #96]
    cbz w20, L3c98a9023315_7
L3c98a9023315_6:
    str d11, [sp, #18032]
L3c98a9023315_7:
L3c98a9023315_8:
    movz x16, #27256
    sub x11, x29, x16
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
    cbz w23, L3c98a9023315_10
L3c98a9023315_9:
    movz x16, #27256
    sub x10, x29, x16
    sub x11, x29, #304
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
    b L3c98a9023315_11
L3c98a9023315_10:
    mov x0, x19
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    movz x10, #19
    cmp x14, x10
    b.hs L3c98a9023315_c3
    movz x10, #112
    mul x14, x14, x10
    add x14, x14, x22
    sub x11, x29, #304
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
L3c98a9023315_11:
    sub x10, x29, #304
    sub x11, x29, #192
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
    ldr d24, L3c98a9023315_k0
    ldr d25, [sp, #56]
    ldr d26, [sp, #27120]
    fsub d25, d25, d26
    fmul d24, d24, d25
    str d24, [sp, #18136]
    movz x16, #27200
    sub x9, x29, x16
    ldr q24, [x9]
    sub x9, x29, #136
    ldr q25, [x9]
    fdiv v24.2d, v24.2d, v25.2d
    movz x16, #9120
    sub x9, x29, x16
    str q24, [x9]
    ldr d24, [sp, #80]
    ldr d25, [sp, #27144]
    fsub d24, d24, d25
    ldr d25, L3c98a9023315_k1
    fcmp d9, d25
    b.hi L3c98a9023315_31
L3c98a9023315_30:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3c98a9023315_33
L3c98a9023315_32:
    b L3c98a9023315_45
L3c98a9023315_33:
L3c98a9023315_34:
    fcmp d24, d9
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d9, d24, ne
L3c98a9023315_45:
    str d24, [sp, #18160]
    ldr d24, [sp, #88]
    ldr d25, [sp, #27152]
    fsub d26, d24, d25
    str d26, [sp, #18168]
    ldr d26, [sp, #96]
    str d26, [sp, #18176]
    ldr x14, [sp, #112]
    adrp x15, _lb_12film_develop_agitations@PAGE
    add x15, x15, _lb_12film_develop_agitations@PAGEOFF
    movz x10, #4
    cmp x14, x10
    b.hs L3c98a9023315_c4
    ldr d26, [x15, x14, lsl #3]
    str d26, [sp, #18192]
    str d24, [sp, #18208]
    str d25, [sp, #18216]
    ldr x14, [sp, #27176]
    movz x10, #4
    cmp x14, x10
    b.hs L3c98a9023315_c5
    ldr d24, [x15, x14, lsl #3]
    str d24, [sp, #18224]
    cmp x21, #0
    b.le L3c98a9023315_13
L3c98a9023315_12:
    scvtf d24, x21
    fmov d25, #3.0000000
    fcmp d9, d25
    b.hi L3c98a9023315_47
L3c98a9023315_46:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3c98a9023315_49
L3c98a9023315_48:
    b L3c98a9023315_61
L3c98a9023315_49:
L3c98a9023315_50:
    fcmp d24, d9
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d9, d24, ne
L3c98a9023315_61:
    fcvtzu x14, d24
    movz x10, #4
    cmp x14, x10
    b.hs L3c98a9023315_c6
    ldr d24, [x15, x14, lsl #3]
    b L3c98a9023315_14
L3c98a9023315_13:
    fmov d24, d26
L3c98a9023315_14:
    str d24, [sp, #18184]
    cmp w20, #0
    b.ne L3c98a9023315_16
L3c98a9023315_15:
    fcmp d8, d9
    fcsel d24, d8, d10, gt
    b L3c98a9023315_17
L3c98a9023315_16:
    ldr d24, [sp, #32]
L3c98a9023315_17:
    str d24, [sp, #18200]
    movz x16, #9240
    sub x10, x29, x16
    movz x16, #27144
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    movz x16, #27144
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #208
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #27248]
    ldr x20, [sp, #27240]
    ldr x21, [sp, #27232]
    ldr x22, [sp, #27224]
    ldr x23, [sp, #27216]
    ldr d8, [sp, #27208]
    ldr d9, [sp, #27200]
    ldr d10, [sp, #27192]
    ldr d11, [sp, #27184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3c98a9023315_31:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_47:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c1:
    adrp x0, _lb_text_64f97277a4b0@PAGE
    add x0, x0, _lb_text_64f97277a4b0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c2:
    adrp x0, _lb_text_058d16168b15@PAGE
    add x0, x0, _lb_text_058d16168b15@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c3:
    adrp x0, _lb_text_7b7593d950ac@PAGE
    add x0, x0, _lb_text_7b7593d950ac@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c4:
    adrp x0, _lb_text_8888040a2b4d@PAGE
    add x0, x0, _lb_text_8888040a2b4d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c5:
    adrp x0, _lb_text_79963d781ec3@PAGE
    add x0, x0, _lb_text_79963d781ec3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3c98a9023315_c6:
    adrp x0, _lb_text_751be29817d3@PAGE
    add x0, x0, _lb_text_751be29817d3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L3c98a9023315_k0:
    .quad 4599094494301215282
L3c98a9023315_k1:
    .quad 4606281698874543309


    .p2align 2
    .globl _lb_12film_develop_crossed
_lb_12film_develop_crossed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x14, #1
    cset w14, eq
    cbnz w14, L6f4335c4aa61_1
L6f4335c4aa61_6:
    b L6f4335c4aa61_2
L6f4335c4aa61_1:
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x15, x10
    b.hs L6f4335c4aa61_c1
    movz x10, #112
    mul x15, x15, x10
    add x14, x14, x15
    adrp x15, _lb_text_fed35fd7f6f4@PAGE
    add x15, x15, _lb_text_fed35fd7f6f4@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, L6f4335c4aa61_3
L6f4335c4aa61_7:
    b L6f4335c4aa61_4
L6f4335c4aa61_3:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L6f4335c4aa61_4:
    and w14, w13, #255
L6f4335c4aa61_2:
    and w14, w14, #255
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6f4335c4aa61_c1:
    adrp x0, _lb_text_64f97277a4b0@PAGE
    add x0, x0, _lb_text_64f97277a4b0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
.subsections_via_symbols
