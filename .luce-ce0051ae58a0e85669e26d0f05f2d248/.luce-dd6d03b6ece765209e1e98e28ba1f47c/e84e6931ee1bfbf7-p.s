    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_scene_12grey_through
_lb_scene_12grey_through:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6160
    sub sp, sp, x16
    str x19, [sp, #6152]
    sub x16, x29, #3096
    str x1, [x16]
    str x2, [x16, #8]
    mov x19, x0
    sub x9, x29, #3096
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #3080
    bl _lb_settings_parse
    sub x10, x29, #3080
    movz x16, #6152
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    mov x0, x19
    movz x16, #6152
    sub x1, x29, x16
    sub x8, x29, #160
    bl _lb_scene_Scene_matrix
    ldrb w14, [x29, #-88]
    cbz w14, L46597e7a0768_1
L46597e7a0768_2:
    fmov d0, xzr
    fmov d1, xzr
    fmov d2, xzr
    movz x0, #1
    ldr x19, [sp, #6152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46597e7a0768_1:
    sub x10, x29, #160
    sub x11, x29, #80
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
    ldr d24, L46597e7a0768_k0
    ldr d25, [sp, #6080]
    ldr d26, [sp, #6088]
    fadd d25, d25, d26
    ldr d26, [sp, #6096]
    fadd d25, d25, d26
    fmul d25, d24, d25
    ldr d26, [sp, #6104]
    ldr d27, [sp, #6112]
    fadd d26, d26, d27
    ldr d27, [sp, #6120]
    fadd d26, d26, d27
    fmul d26, d24, d26
    ldr d27, [sp, #6128]
    ldr d28, [sp, #6136]
    fadd d27, d27, d28
    ldr d28, [sp, #6144]
    fadd d27, d27, d28
    fmul d24, d24, d27
    fmov d0, d25
    fmov d1, d26
    fmov d2, d24
    mov x0, #0
    ldr x19, [sp, #6152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L46597e7a0768_k0:
    .quad 4595653203753948938


    .p2align 2
    .globl _lb_scene_Scene_matrix
_lb_scene_Scene_matrix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1184
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1168]
    str x20, [sp, #1160]
    str x21, [sp, #1152]
    str d8, [sp, #1144]
    str d9, [sp, #1136]
    str d10, [sp, #1128]
    mov x19, x0
    mov x20, x1
    movz x9, #2
    str w9, [sp, #1112]
    ldrb w14, [sp, #1112]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c1
    ldr d24, [x20, x14, lsl #3]
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d8, d0
    ldr x14, [x19, #8]
    cmp x14, #0
    b.hi L1f9d4be7566f_2
L1f9d4be7566f_1:
    fmov d9, #1.0000000
    str d9, [sp, #1056]
    fmov d10, xzr
    str d10, [sp, #1064]
    str d10, [sp, #1072]
    str d10, [sp, #1080]
    str d9, [sp, #1088]
    str d10, [sp, #1096]
    str d10, [sp, #1104]
    str d10, [sp, #1112]
    str d9, [sp, #1120]
    sub x10, x29, #128
    sub x11, x29, #856
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
    str w9, [sp, #1112]
    ldrb w14, [sp, #1112]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c2
    ldr d24, [x20, x14, lsl #3]
    fcmp d24, d10
    b.le L1f9d4be7566f_5
L1f9d4be7566f_4:
    movz x9, #1
    str w9, [sp, #1112]
    ldrb w14, [sp, #1112]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c3
    ldr d25, [x20, x14, lsl #3]
    fmov d0, d24
    fmov d1, d25
    bl _lb_22luce_color_temperature_white
    fmov d24, d0
    fmov d25, d1
    str d24, [sp, #312]
    str d25, [sp, #320]
    ldr d24, [x19, #72]
    ldr d25, [x19, #80]
    fmov d0, d24
    fmov d1, d25
    bl _lb_22luce_color_temperature_white
    fmov d24, d0
    fmov d25, d1
    str d24, [sp, #296]
    str d25, [sp, #304]
    adrp x19, _lb_14luce_color_xyz_8aces_ap1@PAGE
    add x19, x19, _lb_14luce_color_xyz_8aces_ap1@PAGEOFF
    mov x0, x19
    sub x8, x29, #200
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #200
    sub x11, x29, #128
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
    sub x11, x29, #968
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x19, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x19, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x19, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #968
    mov x0, x9
    sub x8, x29, #1040
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x9, x29, #1040
    mov x0, x9
    sub x8, x29, #200
    bl _lb_14luce_color_xyz_invert
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
    sub x11, x29, #200
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
    sub x9, x29, #872
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    sub x9, x29, #888
    ldr d2, [x9, #0]
    ldr d3, [x9, #8]
    sub x8, x29, #200
    bl _lb_14luce_color_xyz_adapt
    sub x10, x29, #200
    sub x11, x29, #344
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
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x11, x29, #416
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #696]
    str d10, [sp, #704]
    str d10, [sp, #712]
    str d10, [sp, #720]
    str d9, [sp, #728]
    str d10, [sp, #736]
    str d10, [sp, #744]
    str d10, [sp, #752]
    str d9, [sp, #760]
    sub x10, x29, #488
    sub x11, x29, #416
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
    sub x10, x29, #416
    sub x11, x29, #128
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
L1f9d4be7566f_66:
    cmp x14, #3
    b.hs L1f9d4be7566f_69
    .p2align 4
L1f9d4be7566f_67:
    add x15, x14, x14, lsl #1
    mov x12, #0
L1f9d4be7566f_70:
    cmp x12, #3
    b.hs L1f9d4be7566f_73
    .p2align 4
L1f9d4be7566f_71:
    fmov d24, d10
    mov x13, #0
L1f9d4be7566f_74:
    cmp x13, #3
    b.hs L1f9d4be7566f_77
    .p2align 4
L1f9d4be7566f_75:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c4
    sub x10, x29, #344
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c5
    sub x10, x29, #200
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L1f9d4be7566f_75
L1f9d4be7566f_77:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L1f9d4be7566f_c6
    sub x10, x29, #128
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L1f9d4be7566f_71
L1f9d4be7566f_73:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f9d4be7566f_67
L1f9d4be7566f_69:
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x10, x29, #200
    sub x11, x29, #344
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
    sub x10, x29, #344
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
    sub x11, x29, #416
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #696]
    str d10, [sp, #704]
    str d10, [sp, #712]
    str d10, [sp, #720]
    str d9, [sp, #728]
    str d10, [sp, #736]
    str d10, [sp, #744]
    str d10, [sp, #752]
    str d9, [sp, #760]
    sub x10, x29, #488
    sub x11, x29, #416
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
    sub x10, x29, #416
    sub x11, x29, #128
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
L1f9d4be7566f_80:
    cmp x14, #3
    b.hs L1f9d4be7566f_83
    .p2align 4
L1f9d4be7566f_81:
    add x15, x14, x14, lsl #1
    mov x12, #0
L1f9d4be7566f_84:
    cmp x12, #3
    b.hs L1f9d4be7566f_87
    .p2align 4
L1f9d4be7566f_85:
    fmov d24, d10
    mov x13, #0
L1f9d4be7566f_88:
    cmp x13, #3
    b.hs L1f9d4be7566f_91
    .p2align 4
L1f9d4be7566f_89:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c7
    sub x10, x29, #560
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c8
    sub x10, x29, #272
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L1f9d4be7566f_89
L1f9d4be7566f_91:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L1f9d4be7566f_c9
    sub x10, x29, #128
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L1f9d4be7566f_85
L1f9d4be7566f_87:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f9d4be7566f_81
L1f9d4be7566f_83:
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x11, x29, #856
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
L1f9d4be7566f_5:
L1f9d4be7566f_6:
    dup v24.2d, v8.d[0]
    mov x14, #0
L1f9d4be7566f_61:
    cmp x14, #8
    b.hs L1f9d4be7566f_63
    .p2align 4
L1f9d4be7566f_62:
    sub x9, x29, #856
    add x15, x9, x14, lsl #3
    ldr q25, [x15]
    fmul v25.2d, v25.2d, v24.2d
    str q25, [x15]
    add x14, x14, #2
    cmp x14, #8
    b.lo L1f9d4be7566f_62
L1f9d4be7566f_63:
    movz x14, #8
L1f9d4be7566f_7:
    cmp x14, #9
    b.hs L1f9d4be7566f_10
    .p2align 4
L1f9d4be7566f_8:
    sub x9, x29, #856
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fmul d24, d24, d8
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #9
    b.lo L1f9d4be7566f_8
L1f9d4be7566f_10:
    sub x10, x29, #856
    sub x11, x29, #784
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
    strb w9, [sp, #472]
    sub x1, x29, #784
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
    ldr x19, [sp, #1168]
    ldr x20, [sp, #1160]
    ldr x21, [sp, #1152]
    ldr d8, [sp, #1144]
    ldr d9, [sp, #1136]
    ldr d10, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1f9d4be7566f_2:
    adrp x21, _lb_14luce_color_xyz_srgb@PAGE
    add x21, x21, _lb_14luce_color_xyz_srgb@PAGEOFF
    mov x0, x21
    sub x8, x29, #560
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x10, x29, #560
    sub x11, x29, #344
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
    add x14, x21, #48
    adrp x21, _lb_14luce_color_xyz_8aces_ap1@PAGE
    add x21, x21, _lb_14luce_color_xyz_8aces_ap1@PAGEOFF
    add x15, x21, #48
    ldr d0, [x14, #0]
    ldr d1, [x14, #8]
    ldr d2, [x15, #0]
    ldr d3, [x15, #8]
    sub x8, x29, #632
    bl _lb_14luce_color_xyz_adapt
    sub x10, x29, #632
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
    sub x10, x29, #344
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
    sub x11, x29, #416
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d9, #1.0000000
    str d9, [sp, #696]
    fmov d10, xzr
    str d10, [sp, #704]
    str d10, [sp, #712]
    str d10, [sp, #720]
    str d9, [sp, #728]
    str d10, [sp, #736]
    str d10, [sp, #744]
    str d10, [sp, #752]
    str d9, [sp, #760]
    sub x10, x29, #488
    sub x11, x29, #416
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
    sub x10, x29, #416
    sub x11, x29, #128
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
L1f9d4be7566f_94:
    cmp x14, #3
    b.hs L1f9d4be7566f_97
    .p2align 4
L1f9d4be7566f_95:
    add x15, x14, x14, lsl #1
    mov x12, #0
L1f9d4be7566f_98:
    cmp x12, #3
    b.hs L1f9d4be7566f_101
    .p2align 4
L1f9d4be7566f_99:
    fmov d24, d10
    mov x13, #0
L1f9d4be7566f_102:
    cmp x13, #3
    b.hs L1f9d4be7566f_105
    .p2align 4
L1f9d4be7566f_103:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c10
    sub x10, x29, #704
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c11
    sub x10, x29, #632
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L1f9d4be7566f_103
L1f9d4be7566f_105:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L1f9d4be7566f_c12
    sub x10, x29, #128
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L1f9d4be7566f_99
L1f9d4be7566f_101:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f9d4be7566f_95
L1f9d4be7566f_97:
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x10, x29, #200
    sub x11, x29, #344
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
    sub x10, x29, #344
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
    sub x11, x29, #1104
    ldp x16, x17, [x21, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x21, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x21, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x21, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #1104
    mov x0, x9
    sub x8, x29, #1176
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x9, x29, #1176
    mov x0, x9
    sub x8, x29, #344
    bl _lb_14luce_color_xyz_invert
    sub x10, x29, #344
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
    sub x10, x29, #632
    sub x11, x29, #344
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
    sub x10, x29, #344
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
    sub x10, x29, #560
    sub x11, x29, #344
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
    sub x11, x29, #416
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #696]
    str d10, [sp, #704]
    str d10, [sp, #712]
    str d10, [sp, #720]
    str d9, [sp, #728]
    str d10, [sp, #736]
    str d10, [sp, #744]
    str d10, [sp, #752]
    str d9, [sp, #760]
    sub x10, x29, #488
    sub x11, x29, #416
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
    sub x10, x29, #416
    sub x11, x29, #128
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
L1f9d4be7566f_108:
    cmp x14, #3
    b.hs L1f9d4be7566f_111
    .p2align 4
L1f9d4be7566f_109:
    add x15, x14, x14, lsl #1
    mov x12, #0
L1f9d4be7566f_112:
    cmp x12, #3
    b.hs L1f9d4be7566f_115
    .p2align 4
L1f9d4be7566f_113:
    fmov d24, d10
    mov x13, #0
L1f9d4be7566f_116:
    cmp x13, #3
    b.hs L1f9d4be7566f_119
    .p2align 4
L1f9d4be7566f_117:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c13
    sub x10, x29, #632
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c14
    sub x10, x29, #344
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L1f9d4be7566f_117
L1f9d4be7566f_119:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L1f9d4be7566f_c15
    sub x10, x29, #128
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L1f9d4be7566f_113
L1f9d4be7566f_115:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f9d4be7566f_109
L1f9d4be7566f_111:
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x10, x29, #200
    sub x11, x29, #128
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
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x10, x29, #200
    sub x11, x29, #128
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
    sub x10, x29, #128
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
    sub x11, x29, #904
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #992]
    ldrb w14, [sp, #992]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c16
    ldr d24, [x20, x14, lsl #3]
    mov x9, #0
    str w9, [sp, #992]
    ldrb w14, [sp, #992]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c17
    ldr d25, [x20, x14, lsl #3]
    fcmp d25, d10
    b.le L1f9d4be7566f_13
L1f9d4be7566f_12:
    movz x9, #1
    str w9, [sp, #992]
    ldrb w14, [sp, #992]
    movz x10, #118
    cmp x14, x10
    b.hs L1f9d4be7566f_c18
    ldr d25, [x20, x14, lsl #3]
    b L1f9d4be7566f_14
L1f9d4be7566f_13:
    fmov d25, d10
L1f9d4be7566f_14:
    fmov d0, d24
    fmov d1, d25
    sub x9, x29, #904
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #400
    bl _lb_12luce_raw_raw_rendering
    ldrb w14, [sp, #904]
    cbz w14, L1f9d4be7566f_15
L1f9d4be7566f_16:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_4b56a59b2dd4@PAGE
    add x15, x15, _lb_text_4b56a59b2dd4@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #472]
    sub x1, x29, #784
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
    ldr x19, [sp, #1168]
    ldr x20, [sp, #1160]
    ldr x21, [sp, #1152]
    ldr d8, [sp, #1144]
    ldr d9, [sp, #1136]
    ldr d10, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1f9d4be7566f_15:
    sub x10, x29, #400
    sub x11, x29, #176
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
    ldr x16, [x10, #112]
    str x16, [x11, #112]
    sub x10, x29, #136
    sub x11, x29, #344
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
    mov x15, #0
L1f9d4be7566f_18:
    cmp x15, #3
    b.hs L1f9d4be7566f_21
    .p2align 4
L1f9d4be7566f_19:
    add x12, x15, x15, lsl #1
    mov x13, #0
L1f9d4be7566f_22:
    cmp x13, #3
    b.hs L1f9d4be7566f_25
    .p2align 4
L1f9d4be7566f_23:
    add x7, x12, x13
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c19
    sub x9, x29, #344
    add x7, x9, x7, lsl #3
    ldr d24, [x7]
    lsl x6, x13, #3
    sub x11, x29, #160
    ldr d25, [x6, x11]
    ldr d26, [x6, x14]
    fdiv d25, d25, d26
    ldr d26, [sp, #1120]
    fmul d25, d25, d26
    fmul d25, d25, d8
    fmul d24, d24, d25
    str d24, [x7]
    add x13, x13, #1
    cmp x13, #3
    b.lo L1f9d4be7566f_23
L1f9d4be7566f_25:
    add x15, x15, #1
    cmp x15, #3
    b.lo L1f9d4be7566f_19
L1f9d4be7566f_21:
    sub x10, x29, #272
    sub x11, x29, #128
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
    sub x10, x29, #344
    sub x11, x29, #200
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
    sub x11, x29, #272
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L1f9d4be7566f_49:
    cmp x14, #3
    b.hs L1f9d4be7566f_52
    .p2align 4
L1f9d4be7566f_50:
    add x15, x14, x14, lsl #1
    sub x9, x29, #128
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L1f9d4be7566f_53:
    cmp x6, #3
    b.hs L1f9d4be7566f_56
    .p2align 4
L1f9d4be7566f_54:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L1f9d4be7566f_c20
    sub x9, x29, #272
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #200
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L1f9d4be7566f_c21
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L1f9d4be7566f_c22
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L1f9d4be7566f_c23
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L1f9d4be7566f_c24
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L1f9d4be7566f_54
L1f9d4be7566f_56:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f9d4be7566f_50
L1f9d4be7566f_52:
    sub x10, x29, #272
    sub x11, x29, #128
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
    sub x10, x29, #128
    sub x11, x29, #200
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
    sub x10, x29, #200
    sub x11, x29, #784
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
    strb w9, [sp, #472]
    sub x1, x29, #784
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
    ldr x19, [sp, #1168]
    ldr x20, [sp, #1160]
    ldr x21, [sp, #1152]
    ldr d8, [sp, #1144]
    ldr d9, [sp, #1136]
    ldr d10, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1f9d4be7566f_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c4:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c5:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c6:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c7:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c8:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c9:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c10:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c11:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c12:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c13:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c14:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c15:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c16:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c17:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c18:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c19:
    adrp x0, _lb_text_29373da1dee8@PAGE
    add x0, x0, _lb_text_29373da1dee8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c20:
    adrp x0, _lb_text_2a9a79fb4e42@PAGE
    add x0, x0, _lb_text_2a9a79fb4e42@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c21:
    adrp x0, _lb_text_2a9a79fb4e42@PAGE
    add x0, x0, _lb_text_2a9a79fb4e42@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c22:
    adrp x0, _lb_text_2a9a79fb4e42@PAGE
    add x0, x0, _lb_text_2a9a79fb4e42@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c23:
    adrp x0, _lb_text_2a9a79fb4e42@PAGE
    add x0, x0, _lb_text_2a9a79fb4e42@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f9d4be7566f_c24:
    adrp x0, _lb_text_2a9a79fb4e42@PAGE
    add x0, x0, _lb_text_2a9a79fb4e42@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_rendering
_lb_12luce_raw_raw_rendering:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3744
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #3728]
    str x20, [sp, #3720]
    str d8, [sp, #3712]
    str d9, [sp, #3704]
    sub x16, x29, #1968
    str x0, [x16]
    str x1, [x16, #8]
    fmov d8, d0
    fmov d9, d1
    fmov d24, xzr
    fcmp d8, d24
    b.mi L73ef73373d3d_1
L73ef73373d3d_6:
    fcmp d8, d24
    b.le L73ef73373d3d_5
L73ef73373d3d_7:
    ldr d24, L73ef73373d3d_k0
    fcmp d8, d24
    b.mi L73ef73373d3d_1
L73ef73373d3d_8:
    ldr d24, L73ef73373d3d_k1
    fcmp d8, d24
    b.gt L73ef73373d3d_1
L73ef73373d3d_5:
    ldr d24, L73ef73373d3d_k2
    ldr d25, L73ef73373d3d_k3
    fcmp d9, d25
    b.mi L73ef73373d3d_1
L73ef73373d3d_4:
    fcmp d9, d24
    b.le L73ef73373d3d_2
L73ef73373d3d_1:
    adrp x14, _lb_18luce_raster_errors_invalid@PAGE
    add x14, x14, _lb_18luce_raster_errors_invalid@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_600f063967f1@PAGE
    add x20, x20, _lb_text_600f063967f1@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #54
    str x9, [x14, #16]
    adrp x15, _lb_text_e4bb9a18e1d8@PAGE
    add x15, x15, _lb_text_e4bb9a18e1d8@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #1912]
    sub x1, x29, #1952
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
    ldp x16, x17, [x1, #80]
    stp x16, x17, [x0, #80]
    ldp x16, x17, [x1, #96]
    stp x16, x17, [x0, #96]
    ldp x16, x17, [x1, #112]
    stp x16, x17, [x0, #112]
    ldr x19, [sp, #3728]
    ldr x20, [sp, #3720]
    ldr d8, [sp, #3712]
    ldr d9, [sp, #3704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L73ef73373d3d_2:
L73ef73373d3d_3:
    sub x9, x29, #1968
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #1824
    bl _lb_12luce_raw_raw_parse
    ldrb w14, [sp, #3696]
    cbz w14, L73ef73373d3d_10
L73ef73373d3d_11:
    movz x9, #1
    strb w9, [sp, #1912]
    sub x1, x29, #1952
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
    ldp x16, x17, [x1, #80]
    stp x16, x17, [x0, #80]
    ldp x16, x17, [x1, #96]
    stp x16, x17, [x0, #96]
    ldp x16, x17, [x1, #112]
    stp x16, x17, [x0, #112]
    ldr x19, [sp, #3728]
    ldr x20, [sp, #3720]
    ldr d8, [sp, #3712]
    ldr d9, [sp, #3704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L73ef73373d3d_10:
    sub x10, x29, #1824
    sub x0, x29, #3744
    mov x1, x10
    movz x2, #1776
    bl _memcpy
    fmov d0, d8
    fmov d1, d9
    sub x0, x29, #3744
    sub x8, x29, #464
    bl _lb_12luce_raw_raw_development
    ldrb w14, [sp, #3488]
    cbz w14, L73ef73373d3d_13
L73ef73373d3d_14:
    movz x9, #1
    strb w9, [sp, #1912]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #488
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #3744
    bl _lb_12luce_raw_raw_Meta_close
    sub x10, x29, #488
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    sub x1, x29, #1952
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
    ldp x16, x17, [x1, #80]
    stp x16, x17, [x0, #80]
    ldp x16, x17, [x1, #96]
    stp x16, x17, [x0, #96]
    ldp x16, x17, [x1, #112]
    stp x16, x17, [x0, #112]
    ldr x19, [sp, #3728]
    ldr x20, [sp, #3720]
    ldr d8, [sp, #3712]
    ldr d9, [sp, #3704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L73ef73373d3d_13:
    sub x10, x29, #464
    sub x0, x29, #248
    mov x1, x10
    movz x2, #208
    bl _memcpy
    sub x11, x29, #368
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    str xzr, [x11, #112]
    sub x10, x29, #248
    sub x11, x29, #368
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    sub x10, x29, #184
    sub x11, x29, #328
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
    ldr d24, [sp, #1760]
    fmov d0, d24
    bl _lb_13luce_std_math_10exp2_value
    fmov d24, d0
    str d24, [sp, #3488]
    sub x10, x29, #368
    sub x11, x29, #1952
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
    ldr x16, [x10, #112]
    str x16, [x11, #112]
    mov x9, #0
    strb w9, [sp, #1912]
    sub x0, x29, #3744
    bl _lb_12luce_raw_raw_Meta_close
    sub x1, x29, #1952
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
    ldp x16, x17, [x1, #80]
    stp x16, x17, [x0, #80]
    ldp x16, x17, [x1, #96]
    stp x16, x17, [x0, #96]
    ldp x16, x17, [x1, #112]
    stp x16, x17, [x0, #112]
    ldr x19, [sp, #3728]
    ldr x20, [sp, #3720]
    ldr d8, [sp, #3712]
    ldr d9, [sp, #3704]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L73ef73373d3d_k0:
    .quad 4655046358980362240
L73ef73373d3d_k1:
    .quad 4677104761256804352
L73ef73373d3d_k2:
    .quad 4639481672377565184
L73ef73373d3d_k3:
    .quad 13862853709232340992


    .p2align 2
    .globl _lb_12luce_raw_raw_development
_lb_12luce_raw_raw_development:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1840
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1824]
    str x20, [sp, #1816]
    str x21, [sp, #1808]
    str x22, [sp, #1800]
    str x23, [sp, #1792]
    str d8, [sp, #1784]
    str d9, [sp, #1776]
    str d10, [sp, #1768]
    str d11, [sp, #1760]
    str d12, [sp, #1752]
    str d13, [sp, #1744]
    str d14, [sp, #1736]
    fmov d24, d0
    fmov d25, d1
    mov x19, x0
    add x20, x19, #1248
    adrp x21, _lb_12luce_raw_raw_6d50_xy@PAGE
    add x21, x21, _lb_12luce_raw_raw_6d50_xy@PAGEOFF
    sub x11, x29, #1344
    ldp x16, x17, [x21, #0]
    stp x16, x17, [x11, #0]
    fmov d8, #1.0000000
    str d8, [sp, #472]
    str d8, [sp, #480]
    str d8, [sp, #488]
    fmov d9, xzr
    fcmp d24, d9
    b.le L8396a6516c40_2
L8396a6516c40_1:
    fmov d0, d24
    fmov d1, d25
    bl _lb_12luce_raw_raw_8white_of
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x10, x29, #120
    sub x11, x29, #1344
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x9, x29, #1344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    bl _lb_12luce_raw_raw_13white_neutral
    sub x16, x29, #128
    str d0, [x16, #0]
    sub x16, x29, #128
    str d1, [x16, #8]
    sub x16, x29, #128
    str d2, [x16, #16]
    sub x10, x29, #128
    sub x11, x29, #1368
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L8396a6516c40_6
L8396a6516c40_2:
    ldrb w14, [x19, #1224]
    cbz w14, L8396a6516c40_5
L8396a6516c40_4:
    add x14, x19, #1200
    ldr d24, [x19, #1200]
    ldr d25, [x19, #1208]
    ldr d26, [x19, #1216]
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_122
L8396a6516c40_121:
    b L8396a6516c40_142
L8396a6516c40_122:
L8396a6516c40_123:
    fmov x12, d26
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L8396a6516c40_126
L8396a6516c40_125:
    fmov d25, d26
    b L8396a6516c40_142
L8396a6516c40_126:
L8396a6516c40_127:
    fcmp d25, d9
    b.ne L8396a6516c40_130
L8396a6516c40_132:
    fcmp d26, d9
    b.ne L8396a6516c40_130
L8396a6516c40_129:
    and x15, x15, x12
    fmov d25, x15
    b L8396a6516c40_142
L8396a6516c40_130:
L8396a6516c40_131:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L8396a6516c40_142:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_144
L8396a6516c40_143:
    b L8396a6516c40_164
L8396a6516c40_144:
L8396a6516c40_145:
    fmov x12, d25
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L8396a6516c40_148
L8396a6516c40_147:
    fmov d24, d25
    b L8396a6516c40_164
L8396a6516c40_148:
L8396a6516c40_149:
    fcmp d9, d24
    b.ne L8396a6516c40_152
L8396a6516c40_154:
    fcmp d9, d25
    b.ne L8396a6516c40_152
L8396a6516c40_151:
    and x15, x15, x12
    fmov d24, x15
    b L8396a6516c40_164
L8396a6516c40_152:
L8396a6516c40_153:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
L8396a6516c40_164:
    mov x15, #0
L8396a6516c40_7:
    cmp x15, #3
    b.hs L8396a6516c40_10
    .p2align 4
L8396a6516c40_8:
    lsl x12, x15, #3
    sub x10, x29, #1368
    add x13, x12, x10
    ldr d25, [x12, x14]
    fdiv d25, d25, d24
    str d25, [x13]
    add x15, x15, #1
    cmp x15, #3
    b.lo L8396a6516c40_8
L8396a6516c40_10:
    ldr d10, [sp, #472]
    ldr d11, [sp, #480]
    ldr d12, [sp, #488]
    sub x11, x29, #1672
    ldp x16, x17, [x21, #0]
    stp x16, x17, [x11, #0]
    add x22, x21, #8
    ldr d13, L8396a6516c40_k0
    fmov d14, #0.5000000
    mov x23, #0
L8396a6516c40_65:
    cmp x23, #30
    b.hs L8396a6516c40_68
    .p2align 4
L8396a6516c40_66:
    sub x9, x29, #1672
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    sub x8, x29, #248
    bl _lb_12luce_raw_raw_15camera_matrices
    sub x10, x29, #248
    sub x11, x29, #1744
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
    sub x9, x29, #1744
    mov x0, x9
    sub x8, x29, #400
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #1512]
    cbz w14, L8396a6516c40_69
L8396a6516c40_70:
    fmov d16, xzr
    str d16, [sp, #1344]
    fmov d16, xzr
    str d16, [sp, #1352]
    movz x9, #1
    str w9, [sp, #1360]
    fmov d16, xzr
    fmov d24, d16
    fmov d16, xzr
    fmov d25, d16
    movz w14, #1
    b L8396a6516c40_93
L8396a6516c40_69:
    sub x10, x29, #400
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
    ldr d24, [sp, #1368]
    fmul d24, d24, d10
    ldr d25, [sp, #1376]
    fmul d25, d25, d11
    fadd d24, d24, d25
    ldr d25, [sp, #1384]
    fmul d25, d25, d12
    fadd d24, d24, d25
    ldr d25, [sp, #1392]
    fmul d25, d25, d10
    ldr d26, [sp, #1400]
    fmul d26, d26, d11
    fadd d25, d25, d26
    ldr d26, [sp, #1408]
    fmul d26, d26, d12
    fadd d25, d25, d26
    ldr d26, [sp, #1416]
    fmul d26, d26, d10
    ldr d27, [sp, #1424]
    fmul d27, d27, d11
    fadd d26, d26, d27
    ldr d27, [sp, #1432]
    fmul d27, d27, d12
    fadd d26, d26, d27
    fadd d27, d24, d25
    fadd d26, d27, d26
    fcmp d26, d9
    b.ls L8396a6516c40_80
L8396a6516c40_83:
    fmov x14, d26
    and x14, x14, #9218868437227405312
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne L8396a6516c40_81
L8396a6516c40_80:
    ldr d24, [x21]
    ldr d25, [x22]
    b L8396a6516c40_88
L8396a6516c40_81:
    fdiv d24, d24, d26
    fdiv d25, d25, d26
L8396a6516c40_88:
    ldr d26, [sp, #168]
    fsub d27, d24, d26
    fabs d27, d27
    ldr d28, [sp, #176]
    fsub d29, d25, d28
    fabs d29, d29
    fadd d27, d27, d29
    fcmp d27, d13
    b.pl L8396a6516c40_73
L8396a6516c40_72:
    str d24, [sp, #1344]
    str d25, [sp, #1352]
    mov x9, #0
    str w9, [sp, #1360]
    mov w14, #0
    b L8396a6516c40_93
L8396a6516c40_73:
    cmp x23, #29
    cset w14, eq
    fadd d26, d24, d26
    fmul d26, d26, d14
    fadd d27, d25, d28
    fmul d27, d27, d14
    cmp w14, #0
    fcsel d24, d26, d24, ne
    cmp w14, #0
    fcsel d25, d27, d25, ne
    str d24, [sp, #168]
    str d25, [sp, #176]
    add x23, x23, #1
    cmp x23, #30
    b.lo L8396a6516c40_66
L8396a6516c40_68:
    ldr d24, [sp, #168]
    ldr d25, [sp, #176]
    str d24, [sp, #1344]
    str d25, [sp, #1352]
    mov x9, #0
    str w9, [sp, #1360]
    mov w14, #0
L8396a6516c40_93:
    str d24, [sp, #1344]
    str d25, [sp, #1352]
    strb w14, [sp, #1360]
    ldrb w14, [sp, #1360]
    cbz w14, L8396a6516c40_11
L8396a6516c40_12:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_11:
    sub x10, x29, #496
    sub x11, x29, #1344
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L8396a6516c40_6
L8396a6516c40_5:
    add x14, x19, #1232
    ldr d24, [x19, #1240]
    fcmp d24, d9
    b.le L8396a6516c40_15
L8396a6516c40_14:
    sub x11, x29, #120
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    b L8396a6516c40_16
L8396a6516c40_15:
    ldrb w14, [x19, #1736]
    cbz w14, L8396a6516c40_18
L8396a6516c40_17:
    sub x11, x29, #136
    ldp x16, x17, [x21, #0]
    stp x16, x17, [x11, #0]
    b L8396a6516c40_19
L8396a6516c40_18:
    adrp x14, _lb_12luce_raw_raw_6d65_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d65_xy@PAGEOFF
    sub x11, x29, #136
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
L8396a6516c40_19:
    sub x10, x29, #136
    sub x11, x29, #120
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L8396a6516c40_16:
    sub x10, x29, #120
    sub x11, x29, #1344
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x9, x29, #1344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    bl _lb_12luce_raw_raw_13white_neutral
    sub x16, x29, #128
    str d0, [x16, #0]
    sub x16, x29, #128
    str d1, [x16, #8]
    sub x16, x29, #128
    str d2, [x16, #16]
    sub x10, x29, #128
    sub x11, x29, #1368
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
L8396a6516c40_6:
L8396a6516c40_3:
    sub x0, x29, #520
    mov x1, #0
    movz x2, #208
    bl _memset
    sub x10, x29, #520
    sub x0, x29, #312
    mov x1, x10
    movz x2, #208
    bl _memcpy
    ldr d24, L8396a6516c40_k1
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w15, hi
    fcmp d9, d24
    cset w12, eq
    mov x13, #0
L8396a6516c40_20:
    cmp x13, #3
    b.hs L8396a6516c40_23
    .p2align 4
L8396a6516c40_21:
    lsl x7, x13, #3
    sub x10, x29, #272
    add x6, x7, x10
    sub x11, x29, #1368
    ldr d25, [x7, x11]
    fmov x7, d25
    and x5, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls L8396a6516c40_168
L8396a6516c40_167:
    b L8396a6516c40_188
L8396a6516c40_168:
L8396a6516c40_169:
L8396a6516c40_187:
    cbz w15, L8396a6516c40_172
L8396a6516c40_171:
    fmov d25, d24
    b L8396a6516c40_188
L8396a6516c40_172:
L8396a6516c40_173:
    fcmp d25, d9
    b.ne L8396a6516c40_176
L8396a6516c40_178:
    cbz w12, L8396a6516c40_176
L8396a6516c40_175:
    and x7, x7, x14
    fmov d25, x7
    b L8396a6516c40_188
L8396a6516c40_176:
L8396a6516c40_177:
    fcmp d25, d24
    fcsel d25, d25, d24, gt
L8396a6516c40_188:
    fdiv d25, d8, d25
    str d25, [x6]
    add x13, x13, #1
    cmp x13, #3
    b.lo L8396a6516c40_21
L8396a6516c40_23:
    ldr d24, [sp, #1568]
    ldr d25, [sp, #1576]
    ldr d26, [sp, #1584]
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_190
L8396a6516c40_189:
    b L8396a6516c40_210
L8396a6516c40_190:
L8396a6516c40_191:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_194
L8396a6516c40_193:
    fmov d25, d26
    b L8396a6516c40_210
L8396a6516c40_194:
L8396a6516c40_195:
    fcmp d25, d9
    b.ne L8396a6516c40_198
L8396a6516c40_200:
    fcmp d26, d9
    b.ne L8396a6516c40_198
L8396a6516c40_197:
    orr x14, x14, x15
    fmov d25, x14
    b L8396a6516c40_210
L8396a6516c40_198:
L8396a6516c40_199:
    fcmp d25, d26
    fcsel d25, d25, d26, mi
L8396a6516c40_210:
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_212
L8396a6516c40_211:
    b L8396a6516c40_232
L8396a6516c40_212:
L8396a6516c40_213:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_216
L8396a6516c40_215:
    fmov d24, d25
    b L8396a6516c40_232
L8396a6516c40_216:
L8396a6516c40_217:
    fcmp d9, d24
    b.ne L8396a6516c40_220
L8396a6516c40_222:
    fcmp d9, d25
    b.ne L8396a6516c40_220
L8396a6516c40_219:
    orr x14, x14, x15
    fmov d24, x14
    b L8396a6516c40_232
L8396a6516c40_220:
L8396a6516c40_221:
    fcmp d24, d25
    fcsel d24, d24, d25, mi
L8396a6516c40_232:
    mov x14, #0
L8396a6516c40_24:
    cmp x14, #3
    b.hs L8396a6516c40_27
    .p2align 4
L8396a6516c40_25:
    sub x9, x29, #272
    add x15, x9, x14, lsl #3
    ldr d25, [x15]
    fdiv d25, d25, d24
    str d25, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_25
L8396a6516c40_27:
    sub x9, x29, #1344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    bl _lb_12luce_raw_raw_14temperature_of
    fmov d24, d0
    fmov d25, d1
    ldr x14, [sp, #1568]
    ldr x15, [sp, #1576]
    ldr x12, [sp, #1584]
    str d24, [sp, #1528]
    str d25, [sp, #1536]
    str x14, [sp, #1544]
    str x15, [sp, #1552]
    str x12, [sp, #1560]
    ldrb w14, [x19, #1736]
    cbz w14, L8396a6516c40_29
L8396a6516c40_28:
    sub x9, x29, #1344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    sub x8, x29, #456
    bl _lb_12luce_raw_raw_15camera_matrices
    sub x10, x29, #456
    sub x11, x29, #528
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
    sub x10, x29, #384
    sub x11, x29, #600
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
    sub x11, x29, #384
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19, #1728]
    cmp x14, #0
    b.ls L8396a6516c40_32
L8396a6516c40_31:
    ldr d24, [x19, #1680]
    ldr d25, [x19, #1688]
    ldr d26, [x19, #1696]
    str d24, [sp, #1168]
    str d9, [sp, #1176]
    str d9, [sp, #1184]
    str d9, [sp, #1192]
    str d25, [sp, #1200]
    str d9, [sp, #1208]
    str d9, [sp, #1216]
    str d9, [sp, #1224]
    str d26, [sp, #1232]
    sub x10, x29, #672
    sub x11, x29, #744
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
    sub x10, x29, #744
    sub x11, x29, #816
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
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #1344
    sub x11, x29, #1760
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19, #1720]
    cmp x14, #2
    b.ne L8396a6516c40_95
L8396a6516c40_94:
    add x14, x19, #1536
    sub x11, x29, #816
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
    add x14, x19, #1608
    sub x11, x29, #960
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
    sub x9, x29, #1760
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x20
    bl _lb_12luce_raw_raw_weight
    fmov d24, d0
    sub x10, x29, #816
    sub x11, x29, #1832
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
    sub x10, x29, #960
    sub x11, x29, #816
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
    sub x11, x29, #960
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fsub d25, d8, d24
    sub x9, x29, #1832
    sub x10, x29, #960
    sub x14, x9, x10
    sub x9, x29, #960
    sub x10, x29, #1832
    sub x15, x9, x10
    cmp x14, #72
    cset w14, hs
    cmp x15, #72
    cset w15, hs
    and w14, w14, w15
    sub x9, x29, #960
    sub x10, x29, #1832
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    sub x9, x29, #816
    sub x10, x29, #960
    sub x15, x9, x10
    sub x9, x29, #960
    sub x10, x29, #816
    sub x12, x9, x10
    cmp x15, #72
    cset w15, hs
    cmp x12, #72
    cset w12, hs
    and w15, w15, w12
    sub x9, x29, #960
    sub x10, x29, #816
    cmp x9, x10
    cset w12, eq
    orr w15, w15, w12
    and w14, w14, w15
    cbnz w14, L8396a6516c40_241
L8396a6516c40_246:
    mov x14, #0
    b L8396a6516c40_245
L8396a6516c40_241:
    dup v26.2d, v24.d[0]
    dup v27.2d, v25.d[0]
    mov x14, #0
L8396a6516c40_242:
    cmp x14, #8
    b.hs L8396a6516c40_244
    .p2align 4
L8396a6516c40_243:
    lsl x15, x14, #3
    sub x10, x29, #1832
    add x12, x15, x10
    ldr q28, [x12]
    fmul v28.2d, v28.2d, v26.2d
    sub x10, x29, #816
    add x12, x15, x10
    ldr q29, [x12]
    fmul v29.2d, v29.2d, v27.2d
    fadd v28.2d, v28.2d, v29.2d
    sub x10, x29, #960
    add x15, x15, x10
    str q28, [x15]
    add x14, x14, #2
    cmp x14, #8
    b.lo L8396a6516c40_243
L8396a6516c40_244:
    movz x14, #8
L8396a6516c40_245:
L8396a6516c40_235:
    cmp x14, #9
    b.hs L8396a6516c40_238
    .p2align 4
L8396a6516c40_236:
    lsl x15, x14, #3
    sub x10, x29, #960
    add x12, x15, x10
    sub x11, x29, #1832
    ldr d26, [x15, x11]
    fmul d26, d24, d26
    sub x11, x29, #816
    ldr d27, [x15, x11]
    fmul d27, d27, d25
    fadd d26, d26, d27
    str d26, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo L8396a6516c40_236
L8396a6516c40_238:
    sub x10, x29, #960
    sub x11, x29, #816
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
    sub x10, x29, #816
    sub x11, x29, #960
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
    sub x10, x29, #960
    sub x11, x29, #816
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
    b L8396a6516c40_96
L8396a6516c40_95:
    add x14, x19, #1536
    sub x11, x29, #816
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
L8396a6516c40_96:
    sub x10, x29, #816
    sub x11, x29, #960
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
    sub x10, x29, #960
    sub x11, x29, #816
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
    sub x10, x29, #888
    sub x11, x29, #960
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
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_248:
    cmp x14, #3
    b.hs L8396a6516c40_251
    .p2align 4
L8396a6516c40_249:
    add x15, x14, x14, lsl #1
    sub x9, x29, #960
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_252:
    cmp x6, #3
    b.hs L8396a6516c40_255
    .p2align 4
L8396a6516c40_253:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c1
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #888
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_253
L8396a6516c40_255:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_249
L8396a6516c40_251:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
    sub x11, x29, #1440
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
    sub x9, x29, #1440
    mov x0, x9
    sub x8, x29, #968
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #944]
    cbz w14, L8396a6516c40_34
L8396a6516c40_35:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_34:
    sub x10, x29, #968
    sub x11, x29, #456
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
    sub x10, x29, #456
    sub x11, x29, #960
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
    ldr d24, [sp, #472]
    ldr d25, [sp, #480]
    ldr d26, [sp, #488]
    ldr d27, [sp, #880]
    fmul d27, d27, d24
    ldr d28, [sp, #888]
    fmul d28, d28, d25
    fadd d27, d27, d28
    ldr d28, [sp, #896]
    fmul d28, d28, d26
    fadd d27, d27, d28
    ldr d28, [sp, #904]
    fmul d28, d28, d24
    ldr d29, [sp, #912]
    fmul d29, d29, d25
    fadd d28, d28, d29
    ldr d29, [sp, #920]
    fmul d29, d29, d26
    fadd d28, d28, d29
    ldr d29, [sp, #928]
    fmul d24, d29, d24
    ldr d29, [sp, #936]
    fmul d25, d29, d25
    fadd d24, d24, d25
    ldr d25, [sp, #944]
    fmul d25, d25, d26
    fadd d24, d24, d25
    sub x10, x29, #600
    sub x11, x29, #960
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
    str d27, [sp, #1168]
    str d9, [sp, #1176]
    str d9, [sp, #1184]
    str d9, [sp, #1192]
    str d28, [sp, #1200]
    str d9, [sp, #1208]
    str d9, [sp, #1216]
    str d9, [sp, #1224]
    str d24, [sp, #1232]
    sub x10, x29, #672
    sub x11, x29, #744
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
    sub x10, x29, #744
    sub x11, x29, #1512
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
    sub x9, x29, #1512
    mov x0, x9
    sub x8, x29, #1040
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #872]
    cbz w14, L8396a6516c40_37
L8396a6516c40_38:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_37:
    sub x10, x29, #1040
    sub x11, x29, #600
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
    sub x10, x29, #456
    sub x11, x29, #1032
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_262:
    cmp x14, #3
    b.hs L8396a6516c40_265
    .p2align 4
L8396a6516c40_263:
    add x15, x14, x14, lsl #1
    sub x9, x29, #600
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_266:
    cmp x6, #3
    b.hs L8396a6516c40_269
    .p2align 4
L8396a6516c40_267:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c6
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #1032
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c7
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c8
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c9
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c10
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_267
L8396a6516c40_269:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_263
L8396a6516c40_265:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
    sub x11, x29, #456
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
    sub x10, x29, #960
    sub x11, x29, #600
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
    sub x10, x29, #456
    sub x11, x29, #960
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_272:
    cmp x14, #3
    b.hs L8396a6516c40_275
    .p2align 4
L8396a6516c40_273:
    add x15, x14, x14, lsl #1
    sub x9, x29, #600
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_276:
    cmp x6, #3
    b.hs L8396a6516c40_279
    .p2align 4
L8396a6516c40_277:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c11
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #960
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c12
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c13
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c14
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c15
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_277
L8396a6516c40_279:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_273
L8396a6516c40_275:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
    sub x11, x29, #456
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
    sub x10, x29, #456
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
    b L8396a6516c40_33
L8396a6516c40_32:
    sub x10, x29, #528
    sub x11, x29, #456
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
    ldr d0, [x21, #0]
    ldr d1, [x21, #8]
    sub x9, x29, #1344
    ldr d2, [x9, #0]
    ldr d3, [x9, #8]
    sub x8, x29, #536
    bl _lb_12luce_raw_raw_adaptation
    ldrb w14, [sp, #1376]
    cbz w14, L8396a6516c40_40
L8396a6516c40_41:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_40:
    sub x10, x29, #456
    sub x11, x29, #960
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
    sub x11, x29, #456
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_282:
    cmp x14, #3
    b.hs L8396a6516c40_285
    .p2align 4
L8396a6516c40_283:
    add x15, x14, x14, lsl #1
    sub x9, x29, #960
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_286:
    cmp x6, #3
    b.hs L8396a6516c40_289
    .p2align 4
L8396a6516c40_287:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c16
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #456
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c17
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c18
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c19
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c20
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_287
L8396a6516c40_289:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_283
L8396a6516c40_285:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
    sub x11, x29, #456
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
    sub x10, x29, #456
    sub x11, x29, #1584
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
    sub x10, x29, #1584
    sub x11, x29, #456
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
    ldr d24, [x21]
    ldr d25, [x21, #8]
    ldr d26, L8396a6516c40_k2
    fcmp d25, d26
    fcsel d26, d25, d26, gt
    fdiv d27, d24, d26
    fsub d24, d8, d24
    fsub d24, d24, d25
    fdiv d24, d24, d26
    sub x10, x29, #456
    sub x11, x29, #528
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
    ldr d25, [sp, #1312]
    fmul d25, d27, d25
    ldr d26, [sp, #1320]
    fmul d26, d26, d8
    fadd d25, d25, d26
    ldr d26, [sp, #1328]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #1336]
    fmul d26, d27, d26
    ldr d28, [sp, #1344]
    fmul d28, d28, d8
    fadd d26, d26, d28
    ldr d28, [sp, #1352]
    fmul d28, d24, d28
    fadd d26, d26, d28
    ldr d28, [sp, #1360]
    fmul d27, d27, d28
    ldr d28, [sp, #1368]
    fmul d28, d28, d8
    fadd d27, d27, d28
    ldr d28, [sp, #1376]
    fmul d24, d24, d28
    fadd d24, d27, d24
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_300
L8396a6516c40_299:
    b L8396a6516c40_320
L8396a6516c40_300:
L8396a6516c40_301:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_304
L8396a6516c40_303:
    fmov d26, d24
    b L8396a6516c40_320
L8396a6516c40_304:
L8396a6516c40_305:
    fcmp d26, d9
    b.ne L8396a6516c40_308
L8396a6516c40_310:
    fcmp d24, d9
    b.ne L8396a6516c40_308
L8396a6516c40_307:
    and x14, x14, x15
    fmov d26, x14
    b L8396a6516c40_320
L8396a6516c40_308:
L8396a6516c40_309:
    fcmp d26, d24
    fcsel d26, d26, d24, gt
L8396a6516c40_320:
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_322
L8396a6516c40_321:
    b L8396a6516c40_342
L8396a6516c40_322:
L8396a6516c40_323:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_326
L8396a6516c40_325:
    fmov d25, d26
    b L8396a6516c40_342
L8396a6516c40_326:
L8396a6516c40_327:
    fcmp d25, d9
    b.ne L8396a6516c40_330
L8396a6516c40_332:
    fcmp d9, d26
    b.ne L8396a6516c40_330
L8396a6516c40_329:
    and x14, x14, x15
    fmov d25, x14
    b L8396a6516c40_342
L8396a6516c40_330:
L8396a6516c40_331:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L8396a6516c40_342:
    mov x14, #0
L8396a6516c40_43:
    cmp x14, #9
    b.hs L8396a6516c40_46
    .p2align 4
L8396a6516c40_44:
    sub x9, x29, #1584
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d25
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #9
    b.lo L8396a6516c40_44
L8396a6516c40_46:
    sub x9, x29, #1584
    mov x0, x9
    sub x8, x29, #464
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #1448]
    cbz w14, L8396a6516c40_47
L8396a6516c40_48:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_47:
    sub x10, x29, #464
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
L8396a6516c40_33:
    ldr d24, [sp, #472]
    ldr d25, [sp, #480]
    ldr d26, [sp, #488]
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_344
L8396a6516c40_343:
    b L8396a6516c40_364
L8396a6516c40_344:
L8396a6516c40_345:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_348
L8396a6516c40_347:
    fmov d25, d26
    b L8396a6516c40_364
L8396a6516c40_348:
L8396a6516c40_349:
    fcmp d25, d9
    b.ne L8396a6516c40_352
L8396a6516c40_354:
    fcmp d26, d9
    b.ne L8396a6516c40_352
L8396a6516c40_351:
    and x14, x14, x15
    fmov d25, x14
    b L8396a6516c40_364
L8396a6516c40_352:
L8396a6516c40_353:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L8396a6516c40_364:
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8396a6516c40_366
L8396a6516c40_365:
    b L8396a6516c40_386
L8396a6516c40_366:
L8396a6516c40_367:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8396a6516c40_370
L8396a6516c40_369:
    fmov d24, d25
    b L8396a6516c40_386
L8396a6516c40_370:
L8396a6516c40_371:
    fcmp d9, d24
    b.ne L8396a6516c40_374
L8396a6516c40_376:
    fcmp d9, d25
    b.ne L8396a6516c40_374
L8396a6516c40_373:
    and x14, x14, x15
    fmov d24, x14
    b L8396a6516c40_386
L8396a6516c40_374:
L8396a6516c40_375:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
L8396a6516c40_386:
    sub x9, x29, #1368
    ldr q25, [x9]
    dup v27.2d, v24.d[0]
    fdiv v25.2d, v25.2d, v27.2d
    sub x9, x29, #480
    str q25, [x9]
    fdiv d24, d26, d24
    str d24, [sp, #1376]
    ldr d25, [sp, #1360]
    ldr d26, [sp, #1368]
    str d25, [sp, #1168]
    str d9, [sp, #1176]
    str d9, [sp, #1184]
    str d9, [sp, #1192]
    str d26, [sp, #1200]
    str d9, [sp, #1208]
    str d9, [sp, #1216]
    str d9, [sp, #1224]
    str d24, [sp, #1232]
    sub x10, x29, #672
    sub x11, x29, #744
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
    sub x10, x29, #744
    sub x11, x29, #528
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
    sub x10, x29, #528
    sub x11, x29, #456
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
    adrp x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGE
    add x14, x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGEOFF
    mov x0, x14
    sub x8, x29, #608
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #1304]
    cbz w14, L8396a6516c40_99
L8396a6516c40_100:
    movz x9, #1
    strb w9, [sp, #1224]
    sub x10, x29, #688
    sub x11, x29, #968
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
    b L8396a6516c40_112
L8396a6516c40_99:
    sub x10, x29, #608
    sub x11, x29, #1040
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
    adrp x14, _lb_12luce_raw_raw_6d65_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d65_xy@PAGEOFF
    ldr d0, [x21, #0]
    ldr d1, [x21, #8]
    ldr d2, [x14, #0]
    ldr d3, [x14, #8]
    sub x8, x29, #608
    bl _lb_12luce_raw_raw_adaptation
    ldrb w14, [sp, #1304]
    cbz w14, L8396a6516c40_102
L8396a6516c40_103:
    movz x9, #1
    strb w9, [sp, #1224]
    sub x10, x29, #688
    sub x11, x29, #968
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
    b L8396a6516c40_112
L8396a6516c40_102:
    sub x10, x29, #1040
    sub x11, x29, #1112
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
    sub x11, x29, #1040
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_389:
    cmp x14, #3
    b.hs L8396a6516c40_392
    .p2align 4
L8396a6516c40_390:
    add x15, x14, x14, lsl #1
    sub x9, x29, #1112
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_393:
    cmp x6, #3
    b.hs L8396a6516c40_396
    .p2align 4
L8396a6516c40_394:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c21
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #1040
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c22
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c23
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c24
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c25
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_394
L8396a6516c40_396:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_390
L8396a6516c40_392:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
    sub x11, x29, #600
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
    sub x10, x29, #600
    sub x11, x29, #528
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
    sub x10, x29, #528
    sub x11, x29, #1040
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
    ldr d24, [x21]
    ldr d25, [x21, #8]
    ldr d26, L8396a6516c40_k2
    fcmp d25, d26
    fcsel d26, d25, d26, gt
    fdiv d27, d24, d26
    fsub d24, d8, d24
    fsub d24, d24, d25
    fdiv d24, d24, d26
    sub x10, x29, #1040
    sub x11, x29, #1112
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
    ldr d25, [sp, #728]
    fmul d25, d27, d25
    ldr d26, [sp, #736]
    fmul d26, d26, d8
    fadd d25, d25, d26
    ldr d26, [sp, #744]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #752]
    fmul d26, d27, d26
    ldr d28, [sp, #760]
    fmul d28, d28, d8
    fadd d26, d26, d28
    ldr d28, [sp, #768]
    fmul d28, d24, d28
    fadd d26, d26, d28
    ldr d28, [sp, #776]
    fmul d27, d27, d28
    ldr d28, [sp, #784]
    fmul d28, d28, d8
    fadd d27, d27, d28
    ldr d28, [sp, #792]
    fmul d24, d24, d28
    fadd d24, d27, d24
    str d25, [sp, #1288]
    str d26, [sp, #1296]
    str d24, [sp, #1304]
    mov x14, #0
L8396a6516c40_105:
    cmp x14, #9
    b.hs L8396a6516c40_108
    .p2align 4
L8396a6516c40_106:
    sub x9, x29, #528
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    movz x10, #3
    udiv x12, x14, x10
    sub x10, x29, #552
    ldr d25, [x10, x12, lsl #3]
    fdiv d24, d24, d25
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #9
    b.lo L8396a6516c40_106
L8396a6516c40_108:
    sub x10, x29, #528
    sub x11, x29, #688
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
    strb w9, [sp, #1224]
    sub x10, x29, #688
    sub x11, x29, #968
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
L8396a6516c40_112:
    ldrb w14, [sp, #944]
    cbz w14, L8396a6516c40_50
L8396a6516c40_51:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_50:
    sub x10, x29, #968
    sub x11, x29, #528
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
    sub x10, x29, #384
    sub x11, x29, #600
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
    sub x10, x29, #456
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_406:
    cmp x14, #3
    b.hs L8396a6516c40_409
    .p2align 4
L8396a6516c40_407:
    add x15, x14, x14, lsl #1
    sub x9, x29, #600
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_410:
    cmp x6, #3
    b.hs L8396a6516c40_413
    .p2align 4
L8396a6516c40_411:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c26
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #384
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c27
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c28
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c29
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c30
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_411
L8396a6516c40_413:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_407
L8396a6516c40_409:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
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
    sub x10, x29, #528
    sub x11, x29, #456
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
    sub x10, x29, #384
    sub x11, x29, #528
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_416:
    cmp x14, #3
    b.hs L8396a6516c40_419
    .p2align 4
L8396a6516c40_417:
    add x15, x14, x14, lsl #1
    sub x9, x29, #456
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_420:
    cmp x6, #3
    b.hs L8396a6516c40_423
    .p2align 4
L8396a6516c40_421:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c31
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #528
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c32
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c33
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c34
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c35
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_421
L8396a6516c40_423:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_417
L8396a6516c40_419:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
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
    sub x10, x29, #384
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
    b L8396a6516c40_30
L8396a6516c40_29:
    adrp x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGE
    add x14, x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGEOFF
    sub x11, x29, #384
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x20, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x20, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x20, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x20, #64]
    str x16, [x11, #64]
    sub x11, x29, #456
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_426:
    cmp x14, #3
    b.hs L8396a6516c40_429
    .p2align 4
L8396a6516c40_427:
    add x15, x14, x14, lsl #1
    sub x9, x29, #384
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_430:
    cmp x6, #3
    b.hs L8396a6516c40_433
    .p2align 4
L8396a6516c40_431:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c36
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #456
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c37
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c38
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c39
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c40
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_431
L8396a6516c40_433:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_427
L8396a6516c40_429:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
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
    sub x10, x29, #384
    sub x11, x29, #1656
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
L8396a6516c40_53:
    cmp x14, #3
    b.hs L8396a6516c40_56
    .p2align 4
L8396a6516c40_54:
    add x15, x14, x14, lsl #1
    sub x9, x29, #1656
    add x12, x9, x15, lsl #3
    ldr d24, [x12]
    add x13, x15, #1
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c41
    ldr d25, [x12, #8]
    fadd d24, d24, d25
    add x13, x15, #2
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c42
    ldr d25, [x12, #16]
    fadd d24, d24, d25
    mov x12, #0
L8396a6516c40_57:
    cmp x12, #3
    b.hs L8396a6516c40_60
    .p2align 4
L8396a6516c40_58:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c43
    sub x9, x29, #1656
    add x13, x9, x13, lsl #3
    ldr d25, [x13]
    fdiv d25, d25, d24
    str d25, [x13]
    add x12, x12, #1
    cmp x12, #3
    b.lo L8396a6516c40_58
L8396a6516c40_60:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_54
L8396a6516c40_56:
    sub x9, x29, #1656
    mov x0, x9
    sub x8, x29, #392
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #1520]
    cbz w14, L8396a6516c40_61
L8396a6516c40_62:
    movz x9, #1
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_61:
    sub x10, x29, #392
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
L8396a6516c40_30:
    sub x10, x29, #248
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
    adrp x14, _lb_12luce_raw_raw_6d65_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d65_xy@PAGEOFF
    ldr d24, [x14]
    ldr d25, [x14, #8]
    ldr d26, L8396a6516c40_k2
    fcmp d25, d26
    fcsel d26, d25, d26, gt
    fdiv d27, d24, d26
    fsub d24, d8, d24
    fsub d24, d24, d25
    fdiv d24, d24, d26
    str d27, [sp, #1432]
    str d8, [sp, #1440]
    str d24, [sp, #1448]
    adrp x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGE
    add x14, x14, _lb_12luce_raw_raw_13xyz_from_srgb@PAGEOFF
    sub x11, x29, #552
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
    sub x10, x29, #384
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
    sub x11, x29, #816
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
L8396a6516c40_441:
    cmp x14, #3
    b.hs L8396a6516c40_444
    .p2align 4
L8396a6516c40_442:
    add x15, x14, x14, lsl #1
    sub x9, x29, #552
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L8396a6516c40_445:
    cmp x6, #3
    b.hs L8396a6516c40_448
    .p2align 4
L8396a6516c40_446:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L8396a6516c40_c44
    sub x9, x29, #816
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #624
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L8396a6516c40_c45
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c46
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L8396a6516c40_c47
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L8396a6516c40_c48
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L8396a6516c40_446
L8396a6516c40_448:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8396a6516c40_442
L8396a6516c40_444:
    sub x10, x29, #816
    sub x11, x29, #888
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
    sub x10, x29, #888
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
    sub x10, x29, #384
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
    mov x14, #0
L8396a6516c40_113:
    cmp x14, #9
    b.hs L8396a6516c40_116
    .p2align 4
L8396a6516c40_114:
    sub x9, x29, #480
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    movz x10, #3
    udiv x12, x14, x10
    sub x10, x29, #408
    ldr d25, [x10, x12, lsl #3]
    fdiv d24, d24, d25
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #9
    b.lo L8396a6516c40_114
L8396a6516c40_116:
    sub x10, x29, #480
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
    sub x10, x29, #384
    sub x11, x29, #456
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
    sub x10, x29, #456
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
    sub x10, x29, #312
    sub x0, x29, #1328
    mov x1, x10
    movz x2, #208
    bl _memcpy
    mov x9, #0
    strb w9, [sp, #720]
    sub x1, x29, #1328
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #216
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1824]
    ldr x20, [sp, #1816]
    ldr x21, [sp, #1808]
    ldr x22, [sp, #1800]
    ldr x23, [sp, #1792]
    ldr d8, [sp, #1784]
    ldr d9, [sp, #1776]
    ldr d10, [sp, #1768]
    ldr d11, [sp, #1760]
    ldr d12, [sp, #1752]
    ldr d13, [sp, #1744]
    ldr d14, [sp, #1736]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8396a6516c40_c1:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c2:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c3:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c4:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c5:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c6:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c7:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c8:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c9:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c10:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c11:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c12:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c13:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c14:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c15:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c16:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c17:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c18:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c19:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c20:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c21:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c22:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c23:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c24:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c25:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c26:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c27:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c28:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c29:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c30:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c31:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c32:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c33:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c34:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c35:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c36:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c37:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c38:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c39:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c40:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c41:
    adrp x0, _lb_text_0c2396fe01f8@PAGE
    add x0, x0, _lb_text_0c2396fe01f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c42:
    adrp x0, _lb_text_0c2396fe01f8@PAGE
    add x0, x0, _lb_text_0c2396fe01f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c43:
    adrp x0, _lb_text_dc41f8a10a74@PAGE
    add x0, x0, _lb_text_dc41f8a10a74@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c44:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c45:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c46:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c47:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8396a6516c40_c48:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8396a6516c40_k0:
    .quad 4502148214488346440
L8396a6516c40_k1:
    .quad 4562254508917369340
L8396a6516c40_k2:
    .quad 4517329193108106637


    .p2align 2
    .globl _lb_12luce_raw_raw_8white_of
_lb_12luce_raw_raw_8white_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    fmov d24, d0
    fmov d25, d1
    ldr d26, L91fb1106cad7_k0
    ldr d27, L91fb1106cad7_k1
    ldr d28, L91fb1106cad7_k2
    fcmp d27, d28
    b.hi L91fb1106cad7_18
L91fb1106cad7_17:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L91fb1106cad7_20
L91fb1106cad7_19:
    b L91fb1106cad7_32
L91fb1106cad7_20:
L91fb1106cad7_21:
    fcmp d24, d27
    cset w14, mi
    fcmp d24, d28
    fcsel d24, d28, d24, gt
    cmp w14, #0
    fcsel d24, d27, d24, ne
L91fb1106cad7_32:
    fdiv d24, d26, d24
    adrp x14, _lb_12luce_raw_raw_10tint_scale@PAGE
    add x14, x14, _lb_12luce_raw_raw_10tint_scale@PAGEOFF
    ldr d26, [x14]
    fdiv d25, d25, d26
    adrp x14, _lb_12luce_raw_raw_robertson@PAGE
    add x14, x14, _lb_12luce_raw_raw_robertson@PAGEOFF
    mov x15, #0
L91fb1106cad7_1:
    cmp x15, #30
    b.hs L91fb1106cad7_4
    .p2align 4
L91fb1106cad7_2:
    lsl x12, x15, #2
    add x13, x12, #4
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c1
    ldr d26, [x14, x13, lsl #3]
    fcmp d24, d26
    b.mi L91fb1106cad7_5
L91fb1106cad7_8:
    cmp x15, #29
    b.ne L91fb1106cad7_6
L91fb1106cad7_5:
    fsub d24, d26, d24
    add x15, x14, x12, lsl #3
    ldr d27, [x15]
    fsub d26, d26, d27
    fdiv d24, d24, d26
    add x13, x12, #1
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c2
    ldr d26, [x15, #8]
    fmul d26, d26, d24
    add x13, x12, #5
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c3
    ldr d27, [x15, #40]
    fmov d28, #1.0000000
    fsub d29, d28, d24
    fmul d27, d27, d29
    fadd d26, d26, d27
    add x13, x12, #2
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c4
    ldr d27, [x15, #16]
    fmul d27, d27, d24
    add x13, x12, #6
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c5
    ldr d30, [x15, #48]
    fmul d30, d30, d29
    fadd d27, d27, d30
    add x13, x12, #3
    movz x10, #124
    cmp x13, x10
    b.hs L91fb1106cad7_c6
    ldr d30, [x15, #24]
    fmul d31, d30, d30
    fadd d31, d31, d28
    fsqrt d31, d31
    add x15, x12, #7
    movz x10, #124
    cmp x15, x10
    b.hs L91fb1106cad7_c7
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
    str d25, [sp, #0]
    str d24, [sp, #8]
    sub x9, x29, #16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L91fb1106cad7_6:
L91fb1106cad7_7:
    add x15, x15, #1
    cmp x15, #30
    b.lo L91fb1106cad7_2
L91fb1106cad7_4:
    adrp x14, _lb_12luce_raw_raw_6d50_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d50_xy@PAGEOFF
    sub x11, x29, #16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    sub x9, x29, #16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L91fb1106cad7_18:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c1:
    adrp x0, _lb_text_1c9a208a0b57@PAGE
    add x0, x0, _lb_text_1c9a208a0b57@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c2:
    adrp x0, _lb_text_2c8d367df81e@PAGE
    add x0, x0, _lb_text_2c8d367df81e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c3:
    adrp x0, _lb_text_2c8d367df81e@PAGE
    add x0, x0, _lb_text_2c8d367df81e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c4:
    adrp x0, _lb_text_6067d9ca7505@PAGE
    add x0, x0, _lb_text_6067d9ca7505@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c5:
    adrp x0, _lb_text_6067d9ca7505@PAGE
    add x0, x0, _lb_text_6067d9ca7505@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c6:
    adrp x0, _lb_text_d89876933d2a@PAGE
    add x0, x0, _lb_text_d89876933d2a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91fb1106cad7_c7:
    adrp x0, _lb_text_97eac99f6a2d@PAGE
    add x0, x0, _lb_text_97eac99f6a2d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L91fb1106cad7_k0:
    .quad 4696837146684686336
L91fb1106cad7_k1:
    .quad 4655046358980362240
L91fb1106cad7_k2:
    .quad 4677104761256804352


    .p2align 2
    .globl _lb_12luce_raw_raw_13white_neutral
_lb_12luce_raw_raw_13white_neutral:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #344
    str d0, [x16, #0]
    sub x16, x29, #344
    str d1, [x16, #8]
    mov x14, x0
    sub x9, x29, #344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_12luce_raw_raw_15camera_matrices
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
    sub x10, x29, #88
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
    sub x10, x29, #232
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
    ldr d24, [sp, #8]
    ldr d25, [sp, #16]
    ldr d26, L7acfefc22841_k0
    fcmp d25, d26
    fcsel d26, d25, d26, gt
    fdiv d27, d24, d26
    fmov d28, #1.0000000
    fsub d24, d28, d24
    fsub d24, d24, d25
    fdiv d24, d24, d26
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
    ldr d25, [sp, #184]
    fmul d25, d27, d25
    ldr d26, [sp, #192]
    fmul d26, d28, d26
    fadd d25, d25, d26
    ldr d26, [sp, #200]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #208]
    fmul d26, d27, d26
    ldr d29, [sp, #216]
    fmul d29, d28, d29
    fadd d26, d26, d29
    ldr d29, [sp, #224]
    fmul d29, d24, d29
    fadd d26, d26, d29
    ldr d29, [sp, #232]
    fmul d27, d27, d29
    ldr d29, [sp, #240]
    fmul d29, d28, d29
    fadd d27, d27, d29
    ldr d29, [sp, #248]
    fmul d24, d24, d29
    fadd d24, d27, d24
    str d25, [sp, #328]
    str d26, [sp, #336]
    str d24, [sp, #344]
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L7acfefc22841_17
L7acfefc22841_16:
    b L7acfefc22841_37
L7acfefc22841_17:
L7acfefc22841_18:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L7acfefc22841_21
L7acfefc22841_20:
    fmov d26, d24
    b L7acfefc22841_37
L7acfefc22841_21:
L7acfefc22841_22:
    fmov d27, xzr
    fcmp d26, d27
    b.ne L7acfefc22841_25
L7acfefc22841_27:
    fcmp d24, d27
    b.ne L7acfefc22841_25
L7acfefc22841_24:
    and x14, x14, x15
    fmov d26, x14
    b L7acfefc22841_37
L7acfefc22841_25:
L7acfefc22841_26:
    fcmp d26, d24
    fcsel d26, d26, d24, gt
L7acfefc22841_37:
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L7acfefc22841_39
L7acfefc22841_38:
    b L7acfefc22841_59
L7acfefc22841_39:
L7acfefc22841_40:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L7acfefc22841_43
L7acfefc22841_42:
    fmov d25, d26
    b L7acfefc22841_59
L7acfefc22841_43:
L7acfefc22841_44:
    fmov d24, xzr
    fcmp d25, d24
    b.ne L7acfefc22841_47
L7acfefc22841_49:
    fcmp d26, d24
    b.ne L7acfefc22841_47
L7acfefc22841_46:
    and x14, x14, x15
    fmov d25, x14
    b L7acfefc22841_59
L7acfefc22841_47:
L7acfefc22841_48:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L7acfefc22841_59:
    sub x11, x29, #48
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmov d24, xzr
    fcmp d25, d24
    cset w14, gt
    ldr d24, L7acfefc22841_k1
    fcmp d24, d28
    cset w15, ls
    mov x12, #0
L7acfefc22841_1:
    cmp x12, #3
    b.hs L7acfefc22841_4
    .p2align 4
L7acfefc22841_2:
    lsl x13, x12, #3
    sub x9, x29, #48
    add x7, x9, x13
    cbz w14, L7acfefc22841_6
L7acfefc22841_5:
    sub x10, x29, #24
    ldr d26, [x10, x13]
    fdiv d26, d26, d25
    cbz w15, L7acfefc22841_61
L7acfefc22841_60:
    fmov x13, d26
    and x13, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L7acfefc22841_63
L7acfefc22841_62:
    b L7acfefc22841_75
L7acfefc22841_63:
L7acfefc22841_64:
    fcmp d26, d24
    cset w13, mi
    fcmp d26, d28
    fcsel d26, d28, d26, gt
    cmp w13, #0
    fcsel d26, d24, d26, ne
L7acfefc22841_75:
    b L7acfefc22841_7
L7acfefc22841_6:
    fmov d26, d28
L7acfefc22841_7:
    str d26, [x7]
    add x12, x12, #1
    cmp x12, #3
    b.lo L7acfefc22841_2
L7acfefc22841_4:
    sub x10, x29, #48
    sub x11, x29, #328
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #328
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7acfefc22841_61:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L7acfefc22841_k0:
    .quad 4517329193108106637
L7acfefc22841_k1:
    .quad 4562254508917369340


    .p2align 2
    .globl _lb_12luce_raw_raw_14temperature_of
_lb_12luce_raw_raw_14temperature_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    sub x16, x29, #16
    str d0, [x16, #0]
    sub x16, x29, #16
    str d1, [x16, #8]
    fmov d24, #1.5000000
    ldr d25, [sp, #0]
    fsub d24, d24, d25
    fmov d26, #6.0000000
    ldr d27, [sp, #8]
    fmul d26, d26, d27
    fadd d24, d24, d26
    fmov d26, #2.0000000
    fmul d25, d25, d26
    fdiv d25, d25, d24
    fmov d26, #3.0000000
    fmul d26, d27, d26
    fdiv d24, d26, d24
    fmov d26, xzr
    fmov d27, #1.0000000
    adrp x14, _lb_12luce_raw_raw_robertson@PAGE
    add x14, x14, _lb_12luce_raw_raw_robertson@PAGEOFF
    fmov d28, d26
    fmov d29, d26
    fmov d30, d26
    movz x15, #1
L89adcb136bc7_1:
    cmp x15, #30
    b.hi L89adcb136bc7_4
    .p2align 4
L89adcb136bc7_2:
    lsl x12, x15, #2
    add x13, x12, #3
    movz x10, #124
    cmp x13, x10
    b.hs L89adcb136bc7_c1
    ldr d31, [x14, x13, lsl #3]
    fmul d19, d31, d31
    fadd d19, d27, d19
    fsqrt d19, d19
    fdiv d20, d27, d19
    fdiv d31, d31, d19
    add x13, x12, #1
    movz x10, #124
    cmp x13, x10
    b.hs L89adcb136bc7_c2
    ldr d19, [x14, x13, lsl #3]
    fsub d21, d25, d19
    add x13, x12, #2
    movz x10, #124
    cmp x13, x10
    b.hs L89adcb136bc7_c3
    ldr d22, [x14, x13, lsl #3]
    fsub d23, d24, d22
    fneg d21, d21
    fmul d21, d31, d21
    fmul d23, d20, d23
    fadd d21, d21, d23
    fcmp d21, d26
    b.ls L89adcb136bc7_5
L89adcb136bc7_8:
    cmp x15, #30
    cset w13, eq
    cbz w13, L89adcb136bc7_6
L89adcb136bc7_5:
    fcmp d21, d26
    fcsel d21, d26, d21, gt
    fneg d21, d21
    cmp x15, #1
    b.ne L89adcb136bc7_13
L89adcb136bc7_12:
    b L89adcb136bc7_14
L89adcb136bc7_13:
    fadd d26, d21, d28
    fdiv d26, d21, d26
L89adcb136bc7_14:
    ldr d28, L89adcb136bc7_k0
    subs x15, x12, #4
    b.cc L89adcb136bc7_c4
    movz x10, #124
    cmp x15, x10
    b.hs L89adcb136bc7_c5
    ldr d21, [x14, x15, lsl #3]
    fmul d21, d21, d26
    ldr d23, [x14, x12, lsl #3]
    fsub d27, d27, d26
    fmul d23, d23, d27
    fadd d21, d21, d23
    fdiv d28, d28, d21
    subs x15, x12, #3
    b.cc L89adcb136bc7_c6
    movz x10, #124
    cmp x15, x10
    b.hs L89adcb136bc7_c7
    ldr d21, [x14, x15, lsl #3]
    fmul d21, d21, d26
    fmul d19, d19, d27
    fadd d19, d21, d19
    fsub d25, d25, d19
    subs x15, x12, #2
    b.cc L89adcb136bc7_c8
    movz x10, #124
    cmp x15, x10
    b.hs L89adcb136bc7_c9
    ldr d19, [x14, x15, lsl #3]
    fmul d19, d19, d26
    fmul d21, d22, d27
    fadd d19, d19, d21
    fsub d24, d24, d19
    fmul d19, d20, d27
    fmul d29, d29, d26
    fadd d29, d19, d29
    fmul d27, d31, d27
    fmul d26, d30, d26
    fadd d26, d27, d26
    fmul d27, d29, d29
    fmul d30, d26, d26
    fadd d27, d27, d30
    fsqrt d27, d27
    fdiv d29, d29, d27
    fdiv d26, d26, d27
    fmul d25, d25, d29
    fmul d24, d24, d26
    fadd d24, d25, d24
    adrp x14, _lb_12luce_raw_raw_10tint_scale@PAGE
    add x14, x14, _lb_12luce_raw_raw_10tint_scale@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    fmov d0, d28
    fmov d1, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89adcb136bc7_6:
L89adcb136bc7_7:
    cbnz w13, L89adcb136bc7_4
L89adcb136bc7_16:
    add x15, x15, #1
    fmov d28, d21
    fmov d29, d20
    fmov d30, d31
    cmp x15, #30
    b.ls L89adcb136bc7_2
L89adcb136bc7_4:
    ldr d24, L89adcb136bc7_k1
    fmov d0, d24
    fmov d1, d26
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89adcb136bc7_c1:
    adrp x0, _lb_text_e553d2a7ba92@PAGE
    add x0, x0, _lb_text_e553d2a7ba92@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c2:
    adrp x0, _lb_text_7823e0829cee@PAGE
    add x0, x0, _lb_text_7823e0829cee@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c3:
    adrp x0, _lb_text_6c3d2fa8ab66@PAGE
    add x0, x0, _lb_text_6c3d2fa8ab66@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c4:
    adrp x0, _lb_text_47c3fa05b8f1@PAGE
    add x0, x0, _lb_text_47c3fa05b8f1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c5:
    adrp x0, _lb_text_47c3fa05b8f1@PAGE
    add x0, x0, _lb_text_47c3fa05b8f1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c6:
    adrp x0, _lb_text_dc617ddb8b02@PAGE
    add x0, x0, _lb_text_dc617ddb8b02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c7:
    adrp x0, _lb_text_dc617ddb8b02@PAGE
    add x0, x0, _lb_text_dc617ddb8b02@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c8:
    adrp x0, _lb_text_3162aee37d25@PAGE
    add x0, x0, _lb_text_3162aee37d25@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L89adcb136bc7_c9:
    adrp x0, _lb_text_3162aee37d25@PAGE
    add x0, x0, _lb_text_3162aee37d25@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L89adcb136bc7_k0:
    .quad 4696837146684686336
L89adcb136bc7_k1:
    .quad 4662219572839972864


    .p2align 2
    .globl _lb_12luce_raw_raw_15camera_matrices
_lb_12luce_raw_raw_15camera_matrices:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #976
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #960]
    str d8, [sp, #952]
    sub x16, x29, #760
    str d0, [x16, #0]
    sub x16, x29, #760
    str d1, [x16, #8]
    mov x19, x0
    sub x9, x29, #760
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x19
    bl _lb_12luce_raw_raw_weight
    fmov d8, d0
    ldr x14, [x19, #472]
    cmp x14, #2
    b.ne La6b78e9afc2c_2
La6b78e9afc2c_1:
    mov x0, x19
    sub x8, x29, #168
    bl _lb_12luce_raw_raw_15normalize_color
    sub x10, x29, #168
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
    add x14, x19, #72
    mov x0, x14
    sub x8, x29, #168
    bl _lb_12luce_raw_raw_15normalize_color
    sub x10, x29, #240
    sub x11, x29, #832
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
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d24, #1.0000000
    fsub d24, d24, d8
    sub x9, x29, #832
    sub x10, x29, #168
    sub x14, x9, x10
    sub x9, x29, #168
    sub x10, x29, #832
    sub x15, x9, x10
    cmp x14, #72
    cset w14, hs
    cmp x15, #72
    cset w15, hs
    and w14, w14, w15
    sub x9, x29, #168
    sub x10, x29, #832
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    sub x9, x29, #240
    sub x10, x29, #168
    sub x15, x9, x10
    sub x9, x29, #168
    sub x10, x29, #240
    sub x12, x9, x10
    cmp x15, #72
    cset w15, hs
    cmp x12, #72
    cset w12, hs
    and w15, w15, w12
    sub x9, x29, #168
    sub x10, x29, #240
    cmp x9, x10
    cset w12, eq
    orr w15, w15, w12
    and w14, w14, w15
    cbnz w14, La6b78e9afc2c_20
La6b78e9afc2c_25:
    mov x14, #0
    b La6b78e9afc2c_24
La6b78e9afc2c_20:
    dup v25.2d, v8.d[0]
    dup v26.2d, v24.d[0]
    mov x14, #0
La6b78e9afc2c_21:
    cmp x14, #8
    b.hs La6b78e9afc2c_23
    .p2align 4
La6b78e9afc2c_22:
    lsl x15, x14, #3
    sub x10, x29, #832
    add x12, x15, x10
    ldr q27, [x12]
    fmul v27.2d, v27.2d, v25.2d
    sub x10, x29, #240
    add x12, x15, x10
    ldr q28, [x12]
    fmul v28.2d, v28.2d, v26.2d
    fadd v27.2d, v27.2d, v28.2d
    sub x10, x29, #168
    add x15, x15, x10
    str q27, [x15]
    add x14, x14, #2
    cmp x14, #8
    b.lo La6b78e9afc2c_22
La6b78e9afc2c_23:
    movz x14, #8
La6b78e9afc2c_24:
La6b78e9afc2c_14:
    cmp x14, #9
    b.hs La6b78e9afc2c_17
    .p2align 4
La6b78e9afc2c_15:
    lsl x15, x14, #3
    sub x10, x29, #168
    add x12, x15, x10
    sub x11, x29, #832
    ldr d25, [x15, x11]
    fmul d25, d25, d8
    sub x11, x29, #240
    ldr d26, [x15, x11]
    fmul d26, d26, d24
    fadd d25, d25, d26
    str d25, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo La6b78e9afc2c_15
La6b78e9afc2c_17:
    sub x10, x29, #168
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
    sub x10, x29, #240
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
    sub x10, x29, #312
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
    b La6b78e9afc2c_3
La6b78e9afc2c_2:
    mov x0, x19
    sub x8, x29, #312
    bl _lb_12luce_raw_raw_15normalize_color
    sub x10, x29, #312
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
La6b78e9afc2c_3:
    sub x10, x29, #384
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
    ldr x14, [x19, #472]
    cmp x14, #2
    b.ne La6b78e9afc2c_5
La6b78e9afc2c_4:
    add x14, x19, #288
    add x15, x19, #360
    sub x11, x29, #904
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
    sub x11, x29, #384
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
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d24, #1.0000000
    fsub d24, d24, d8
    sub x9, x29, #904
    sub x10, x29, #168
    sub x14, x9, x10
    sub x9, x29, #168
    sub x10, x29, #904
    sub x15, x9, x10
    cmp x14, #72
    cset w14, hs
    cmp x15, #72
    cset w15, hs
    and w14, w14, w15
    sub x9, x29, #168
    sub x10, x29, #904
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    sub x9, x29, #384
    sub x10, x29, #168
    sub x15, x9, x10
    sub x9, x29, #168
    sub x10, x29, #384
    sub x12, x9, x10
    cmp x15, #72
    cset w15, hs
    cmp x12, #72
    cset w12, hs
    and w15, w15, w12
    sub x9, x29, #168
    sub x10, x29, #384
    cmp x9, x10
    cset w12, eq
    orr w15, w15, w12
    and w14, w14, w15
    cbnz w14, La6b78e9afc2c_33
La6b78e9afc2c_38:
    mov x14, #0
    b La6b78e9afc2c_37
La6b78e9afc2c_33:
    dup v25.2d, v8.d[0]
    dup v26.2d, v24.d[0]
    mov x14, #0
La6b78e9afc2c_34:
    cmp x14, #8
    b.hs La6b78e9afc2c_36
    .p2align 4
La6b78e9afc2c_35:
    lsl x15, x14, #3
    sub x10, x29, #904
    add x12, x15, x10
    ldr q27, [x12]
    fmul v27.2d, v27.2d, v25.2d
    sub x10, x29, #384
    add x12, x15, x10
    ldr q28, [x12]
    fmul v28.2d, v28.2d, v26.2d
    fadd v27.2d, v27.2d, v28.2d
    sub x10, x29, #168
    add x15, x15, x10
    str q27, [x15]
    add x14, x14, #2
    cmp x14, #8
    b.lo La6b78e9afc2c_35
La6b78e9afc2c_36:
    movz x14, #8
La6b78e9afc2c_37:
La6b78e9afc2c_27:
    cmp x14, #9
    b.hs La6b78e9afc2c_30
    .p2align 4
La6b78e9afc2c_28:
    lsl x15, x14, #3
    sub x10, x29, #168
    add x12, x15, x10
    sub x11, x29, #904
    ldr d25, [x15, x11]
    fmul d25, d25, d8
    sub x11, x29, #384
    ldr d26, [x15, x11]
    fmul d26, d26, d24
    fadd d25, d25, d26
    str d25, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo La6b78e9afc2c_28
La6b78e9afc2c_30:
    sub x10, x29, #168
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
    sub x10, x29, #240
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
    sub x10, x29, #384
    sub x11, x29, #456
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
    b La6b78e9afc2c_6
La6b78e9afc2c_5:
    add x14, x19, #288
    sub x11, x29, #456
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
La6b78e9afc2c_6:
    sub x10, x29, #456
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
    sub x11, x29, #384
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr x14, [x19, #480]
    cmp x14, #2
    b.ne La6b78e9afc2c_8
La6b78e9afc2c_7:
    add x14, x19, #144
    mov x0, x14
    sub x8, x29, #456
    bl _lb_12luce_raw_raw_17normalize_forward
    sub x10, x29, #456
    sub x11, x29, #528
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
    add x14, x19, #216
    mov x0, x14
    sub x8, x29, #456
    bl _lb_12luce_raw_raw_17normalize_forward
    sub x10, x29, #528
    sub x11, x29, #976
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
    sub x10, x29, #456
    sub x11, x29, #528
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
    fmov d24, #1.0000000
    fsub d24, d24, d8
    sub x9, x29, #976
    sub x10, x29, #168
    sub x14, x9, x10
    sub x9, x29, #168
    sub x10, x29, #976
    sub x15, x9, x10
    cmp x14, #72
    cset w14, hs
    cmp x15, #72
    cset w15, hs
    and w14, w14, w15
    sub x9, x29, #168
    sub x10, x29, #976
    cmp x9, x10
    cset w15, eq
    orr w14, w14, w15
    and w14, w14, #1
    sub x9, x29, #528
    sub x10, x29, #168
    sub x15, x9, x10
    sub x9, x29, #168
    sub x10, x29, #528
    sub x12, x9, x10
    cmp x15, #72
    cset w15, hs
    cmp x12, #72
    cset w12, hs
    and w15, w15, w12
    sub x9, x29, #168
    sub x10, x29, #528
    cmp x9, x10
    cset w12, eq
    orr w15, w15, w12
    and w14, w14, w15
    cbnz w14, La6b78e9afc2c_46
La6b78e9afc2c_51:
    mov x14, #0
    b La6b78e9afc2c_50
La6b78e9afc2c_46:
    dup v25.2d, v8.d[0]
    dup v26.2d, v24.d[0]
    mov x14, #0
La6b78e9afc2c_47:
    cmp x14, #8
    b.hs La6b78e9afc2c_49
    .p2align 4
La6b78e9afc2c_48:
    lsl x15, x14, #3
    sub x10, x29, #976
    add x12, x15, x10
    ldr q27, [x12]
    fmul v27.2d, v27.2d, v25.2d
    sub x10, x29, #528
    add x12, x15, x10
    ldr q28, [x12]
    fmul v28.2d, v28.2d, v26.2d
    fadd v27.2d, v27.2d, v28.2d
    sub x10, x29, #168
    add x15, x15, x10
    str q27, [x15]
    add x14, x14, #2
    cmp x14, #8
    b.lo La6b78e9afc2c_48
La6b78e9afc2c_49:
    movz x14, #8
La6b78e9afc2c_50:
La6b78e9afc2c_40:
    cmp x14, #9
    b.hs La6b78e9afc2c_43
    .p2align 4
La6b78e9afc2c_41:
    lsl x15, x14, #3
    sub x10, x29, #168
    add x12, x15, x10
    sub x11, x29, #976
    ldr d25, [x15, x11]
    fmul d25, d25, d8
    sub x11, x29, #528
    ldr d26, [x15, x11]
    fmul d26, d26, d24
    fadd d25, d25, d26
    str d25, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo La6b78e9afc2c_41
La6b78e9afc2c_43:
    sub x10, x29, #168
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
    sub x10, x29, #168
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
    b La6b78e9afc2c_11
La6b78e9afc2c_8:
    cmp x14, #1
    b.ne La6b78e9afc2c_11
La6b78e9afc2c_10:
    add x14, x19, #144
    mov x0, x14
    sub x8, x29, #168
    bl _lb_12luce_raw_raw_17normalize_forward
    sub x10, x29, #168
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
La6b78e9afc2c_11:
La6b78e9afc2c_12:
La6b78e9afc2c_9:
    ldr d24, [x19, #432]
    ldr d25, [x19, #440]
    ldr d26, [x19, #448]
    str d24, [sp, #520]
    fmov d24, xzr
    str d24, [sp, #528]
    str d24, [sp, #536]
    str d24, [sp, #544]
    str d25, [sp, #552]
    str d24, [sp, #560]
    str d24, [sp, #568]
    str d24, [sp, #576]
    str d26, [sp, #584]
    sub x10, x29, #456
    sub x11, x29, #528
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
    sub x10, x29, #528
    sub x11, x29, #456
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
    sub x10, x29, #456
    sub x11, x29, #528
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
    sub x10, x29, #312
    sub x11, x29, #456
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
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
La6b78e9afc2c_55:
    cmp x14, #3
    b.hs La6b78e9afc2c_58
    .p2align 4
La6b78e9afc2c_56:
    add x15, x14, x14, lsl #1
    sub x9, x29, #456
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
La6b78e9afc2c_59:
    cmp x6, #3
    b.hs La6b78e9afc2c_62
    .p2align 4
La6b78e9afc2c_60:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs La6b78e9afc2c_c1
    sub x9, x29, #96
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #312
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs La6b78e9afc2c_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs La6b78e9afc2c_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs La6b78e9afc2c_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs La6b78e9afc2c_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo La6b78e9afc2c_60
La6b78e9afc2c_62:
    add x14, x14, #1
    cmp x14, #3
    b.lo La6b78e9afc2c_56
La6b78e9afc2c_58:
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
    sub x10, x29, #312
    sub x11, x29, #456
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
    sub x10, x29, #528
    sub x11, x29, #600
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
    sub x10, x29, #456
    sub x11, x29, #528
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
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
La6b78e9afc2c_65:
    cmp x14, #3
    b.hs La6b78e9afc2c_68
    .p2align 4
La6b78e9afc2c_66:
    add x15, x14, x14, lsl #1
    sub x9, x29, #600
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
La6b78e9afc2c_69:
    cmp x6, #3
    b.hs La6b78e9afc2c_72
    .p2align 4
La6b78e9afc2c_70:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs La6b78e9afc2c_c6
    sub x9, x29, #96
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #528
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs La6b78e9afc2c_c7
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs La6b78e9afc2c_c8
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs La6b78e9afc2c_c9
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs La6b78e9afc2c_c10
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo La6b78e9afc2c_70
La6b78e9afc2c_72:
    add x14, x14, #1
    cmp x14, #3
    b.lo La6b78e9afc2c_66
La6b78e9afc2c_68:
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
    sub x10, x29, #312
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
    sub x10, x29, #384
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
    sub x10, x29, #240
    sub x0, x29, #744
    mov x1, x10
    movz x2, #144
    bl _memcpy
    sub x1, x29, #744
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #144
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #960]
    ldr d8, [sp, #952]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La6b78e9afc2c_c1:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c2:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c3:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c4:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c5:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c6:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c7:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c8:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c9:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La6b78e9afc2c_c10:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_diagonal
_lb_12luce_raw_raw_diagonal:
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
    .globl _lb_12luce_raw_raw_multiply
_lb_12luce_raw_raw_multiply:
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
L1f487d9e1cbe_1:
    cmp x14, #3
    b.hs L1f487d9e1cbe_4
    .p2align 4
L1f487d9e1cbe_2:
    add x15, x14, x14, lsl #1
    sub x9, x29, #80
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
L1f487d9e1cbe_5:
    cmp x6, #3
    b.hs L1f487d9e1cbe_8
    .p2align 4
L1f487d9e1cbe_6:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs L1f487d9e1cbe_c1
    sub x9, x29, #224
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #152
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs L1f487d9e1cbe_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs L1f487d9e1cbe_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs L1f487d9e1cbe_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs L1f487d9e1cbe_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo L1f487d9e1cbe_6
L1f487d9e1cbe_8:
    add x14, x14, #1
    cmp x14, #3
    b.lo L1f487d9e1cbe_2
L1f487d9e1cbe_4:
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
L1f487d9e1cbe_c1:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f487d9e1cbe_c2:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f487d9e1cbe_c3:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f487d9e1cbe_c4:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1f487d9e1cbe_c5:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_invert
_lb_12luce_raw_raw_invert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str d8, [sp, #160]
    str d9, [sp, #152]
    sub x16, x29, #112
    str x0, [x16]
    sub x9, x29, #112
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
    ldr d9, Leaedd1d21cc3_k0
    fcmp d8, d9
    b.mi Leaedd1d21cc3_1
Leaedd1d21cc3_4:
    fmov x14, d21
    and x14, x14, #9218868437227405312
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne Leaedd1d21cc3_2
Leaedd1d21cc3_1:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_fa29d74cf221@PAGE
    add x20, x20, _lb_text_fa29d74cf221@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #28
    str x9, [x14, #16]
    adrp x15, _lb_text_6602e37805f3@PAGE
    add x15, x15, _lb_text_6602e37805f3@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #72]
    sub x1, x29, #192
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr d8, [sp, #160]
    ldr d9, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Leaedd1d21cc3_2:
Leaedd1d21cc3_3:
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
    sub x10, x29, #112
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
    mov x9, #0
    strb w9, [sp, #72]
    sub x1, x29, #192
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr d8, [sp, #160]
    ldr d9, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Leaedd1d21cc3_k0:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_12luce_raw_raw_apply
_lb_12luce_raw_raw_apply:
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
.subsections_via_symbols
