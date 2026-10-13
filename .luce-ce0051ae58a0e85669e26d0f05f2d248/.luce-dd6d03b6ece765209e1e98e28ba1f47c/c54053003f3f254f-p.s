    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_13film_exposure_apply
_lb_13film_exposure_apply:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #280]
    sub x16, x29, #280
    str d0, [x16, #0]
    sub x16, x29, #280
    str d1, [x16, #8]
    sub x16, x29, #280
    str d2, [x16, #16]
    mov x19, x0
    sub x9, x29, #280
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #232
    bl _lb_13film_exposure_terms
    sub x10, x29, #232
    sub x11, x29, #128
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
    fmov d24, xzr
    str d24, [sp, #136]
    str d24, [sp, #144]
    str d24, [sp, #152]
    mov x14, #0
Lca565f8a1c38_1:
    cmp x14, #13
    b.hs Lca565f8a1c38_4
    .p2align 4
Lca565f8a1c38_2:
    add x15, x14, x14, lsl #1
    sub x9, x29, #128
    add x12, x9, x14, lsl #3
    mov x13, #0
Lca565f8a1c38_5:
    cmp x13, #3
    b.hs Lca565f8a1c38_8
    .p2align 4
Lca565f8a1c38_6:
    sub x9, x29, #152
    add x7, x9, x13, lsl #3
    ldr d25, [x7]
    add x6, x15, x13
    movz x10, #39
    cmp x6, x10
    b.hs Lca565f8a1c38_c1
    ldr d26, [x19, x6, lsl #3]
    ldr d27, [x12]
    fmul d26, d26, d27
    fadd d25, d25, d26
    str d25, [x7]
    add x13, x13, #1
    cmp x13, #3
    b.lo Lca565f8a1c38_6
Lca565f8a1c38_8:
    add x14, x14, #1
    cmp x14, #13
    b.lo Lca565f8a1c38_2
Lca565f8a1c38_4:
    ldr d25, Lca565f8a1c38_k0
    ldr d26, [sp, #136]
    ldr d27, [sp, #144]
    fadd d28, d26, d27
    ldr d29, [sp, #152]
    fadd d28, d28, d29
    fmul d25, d25, d28
    fmov d28, #3.0000000
    fdiv d25, d25, d28
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lca565f8a1c38_11
Lca565f8a1c38_10:
    b Lca565f8a1c38_31
Lca565f8a1c38_11:
Lca565f8a1c38_12:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lca565f8a1c38_15
Lca565f8a1c38_14:
    fmov d26, d25
    b Lca565f8a1c38_31
Lca565f8a1c38_15:
Lca565f8a1c38_16:
    fcmp d24, d26
    b.ne Lca565f8a1c38_19
Lca565f8a1c38_21:
    fcmp d24, d25
    b.ne Lca565f8a1c38_19
Lca565f8a1c38_18:
    and x14, x14, x15
    fmov d26, x14
    b Lca565f8a1c38_31
Lca565f8a1c38_19:
Lca565f8a1c38_20:
    fcmp d26, d25
    fcsel d26, d26, d25, gt
Lca565f8a1c38_31:
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lca565f8a1c38_33
Lca565f8a1c38_32:
    b Lca565f8a1c38_53
Lca565f8a1c38_33:
Lca565f8a1c38_34:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lca565f8a1c38_37
Lca565f8a1c38_36:
    fmov d27, d25
    b Lca565f8a1c38_53
Lca565f8a1c38_37:
Lca565f8a1c38_38:
    fcmp d24, d27
    b.ne Lca565f8a1c38_41
Lca565f8a1c38_43:
    fcmp d24, d25
    b.ne Lca565f8a1c38_41
Lca565f8a1c38_40:
    and x14, x14, x15
    fmov d27, x14
    b Lca565f8a1c38_53
Lca565f8a1c38_41:
Lca565f8a1c38_42:
    fcmp d27, d25
    fcsel d27, d27, d25, gt
Lca565f8a1c38_53:
    fmov x14, d29
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lca565f8a1c38_55
Lca565f8a1c38_54:
    b Lca565f8a1c38_75
Lca565f8a1c38_55:
Lca565f8a1c38_56:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lca565f8a1c38_59
Lca565f8a1c38_58:
    fmov d29, d25
    b Lca565f8a1c38_75
Lca565f8a1c38_59:
Lca565f8a1c38_60:
    fcmp d24, d29
    b.ne Lca565f8a1c38_63
Lca565f8a1c38_65:
    fcmp d24, d25
    b.ne Lca565f8a1c38_63
Lca565f8a1c38_62:
    and x14, x14, x15
    fmov d29, x14
    b Lca565f8a1c38_75
Lca565f8a1c38_63:
Lca565f8a1c38_64:
    fcmp d29, d25
    fcsel d29, d29, d25, gt
Lca565f8a1c38_75:
    str d26, [sp, #32]
    str d27, [sp, #40]
    str d29, [sp, #48]
    sub x9, x29, #256
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca565f8a1c38_c1:
    adrp x0, _lb_text_b16a42c383c6@PAGE
    add x0, x0, _lb_text_b16a42c383c6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lca565f8a1c38_k0:
    .quad 4581421828931458171


    .p2align 2
    .globl _lb_17luce_color_camera_training
_lb_17luce_color_camera_training:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1312
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1296]
    mov x19, x0
    sub x0, x29, #664
    mov x1, #0
    movz x2, #648
    bl _memset
    adrp x14, _lb_22luce_color_camera_data_training@PAGE
    add x14, x14, _lb_22luce_color_camera_data_training@PAGEOFF
    mov x15, #0
Ld0acf7a12d41_1:
    cmp x15, #81
    b.hs Ld0acf7a12d41_4
    .p2align 4
Ld0acf7a12d41_2:
    sub x9, x29, #664
    add x12, x9, x15, lsl #3
    movz x10, #81
    umulh x11, x19, x10
    mul x13, x19, x10
    cbnz x11, Ld0acf7a12d41_c1
    adds x13, x13, x15
    b.cs Ld0acf7a12d41_c2
    movz x10, #15390
    cmp x13, x10
    b.hs Ld0acf7a12d41_c3
    ldr d24, [x14, x13, lsl #3]
    str d24, [x12]
    add x15, x15, #1
    cmp x15, #81
    b.lo Ld0acf7a12d41_2
Ld0acf7a12d41_4:
    sub x10, x29, #664
    sub x0, x29, #1312
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #1312
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0acf7a12d41_c1:
    adrp x0, _lb_text_0288f6cd2526@PAGE
    add x0, x0, _lb_text_0288f6cd2526@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0acf7a12d41_c2:
    adrp x0, _lb_text_0288f6cd2526@PAGE
    add x0, x0, _lb_text_0288f6cd2526@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0acf7a12d41_c3:
    adrp x0, _lb_text_0288f6cd2526@PAGE
    add x0, x0, _lb_text_0288f6cd2526@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_17luce_color_camera_key
_lb_17luce_color_camera_key:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #120]
    sub x16, x29, #24
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #40
    str x2, [x16]
    str x3, [x16, #8]
    mov x14, x4
    ldr x15, [sp, #104]
    ldr x12, [sp, #112]
    mov x13, #0
    mov x7, #0
Lf0940382fdf0_1:
    cmp x7, x12
    b.hs Lf0940382fdf0_4
    .p2align 4
Lf0940382fdf0_2:
    ldrb w6, [x15, x7]
    cmp w6, #32
    b.eq Lf0940382fdf0_5
Lf0940382fdf0_8:
    cmp x13, #16
    b.lo Lf0940382fdf0_6
Lf0940382fdf0_5:
    b Lf0940382fdf0_4
Lf0940382fdf0_6:
Lf0940382fdf0_7:
    add x5, x14, x13
    str w6, [sp, #104]
    ldrb w6, [sp, #104]
    cmp w6, #65
    cset w4, hs
    cmp w6, #90
    cset w3, ls
    cmp w4, #0
    csel w4, w3, w4, ne
    and w4, w4, #255
    orr w3, w6, #32
    cmp w4, #0
    csel w6, w3, w6, ne
    strb w6, [x5]
    add x13, x13, #1
    add x7, x7, #1
    cmp x7, x12
    b.lo Lf0940382fdf0_2
Lf0940382fdf0_4:
    ldr x15, [sp, #88]
    ldr x12, [sp, #96]
    mov x7, x13
    mov x6, #0
Lf0940382fdf0_10:
    cmp x6, x12
    b.hs Lf0940382fdf0_12
    .p2align 4
Lf0940382fdf0_13:
    cmp x7, #64
    b.hs Lf0940382fdf0_12
Lf0940382fdf0_11:
    ldrb w5, [x15, x6]
    str w5, [sp, #104]
    ldrb w5, [sp, #104]
    cmp w5, #65
    cset w4, hs
    cmp w5, #90
    cset w3, ls
    cmp w4, #0
    csel w4, w3, w4, ne
    and w4, w4, #255
    orr w3, w5, #32
    cmp w4, #0
    csel w5, w3, w5, ne
    and w4, w5, #255
    cmp w4, #97
    b.lo Lf0940382fdf0_17
Lf0940382fdf0_18:
    cmp w4, #122
    b.ls Lf0940382fdf0_14
Lf0940382fdf0_17:
    cmp w4, #48
    b.lo Lf0940382fdf0_15
Lf0940382fdf0_19:
    cmp w4, #57
    b.hi Lf0940382fdf0_15
Lf0940382fdf0_14:
    strb w5, [x14, x7]
    add x7, x7, #1
    b Lf0940382fdf0_16
Lf0940382fdf0_15:
Lf0940382fdf0_16:
    add x6, x6, #1
    cmp x6, x12
    b.lo Lf0940382fdf0_13
Lf0940382fdf0_12:
    subs x15, x7, x13
    b.cc Lf0940382fdf0_c1
    cmp x15, x13
    b.lo Lf0940382fdf0_21
Lf0940382fdf0_23:
    cmp x13, #0
    b.ls Lf0940382fdf0_21
Lf0940382fdf0_20:
    movz w12, #1
    mov x6, #0
Lf0940382fdf0_24:
    cmp x6, x13
    b.hs Lf0940382fdf0_27
    .p2align 4
Lf0940382fdf0_25:
    and w12, w12, #255
    cbnz w12, Lf0940382fdf0_28
Lf0940382fdf0_70:
    b Lf0940382fdf0_29
Lf0940382fdf0_28:
    adds x12, x13, x6
    b.cs Lf0940382fdf0_c2
    movz x10, #64
    cmp x12, x10
    b.hs Lf0940382fdf0_c3
    ldrb w12, [x12, x14]
    movz x10, #64
    cmp x6, x10
    b.hs Lf0940382fdf0_c4
    ldrb w5, [x14, x6]
    cmp w12, w5
    cset w12, eq
Lf0940382fdf0_29:
    and w12, w12, #255
    add x6, x6, #1
    cmp x6, x13
    b.lo Lf0940382fdf0_25
Lf0940382fdf0_27:
    and w12, w12, #255
    cbz w12, Lf0940382fdf0_31
Lf0940382fdf0_30:
    mov x12, x13
Lf0940382fdf0_33:
    cmp x12, x15
    b.hs Lf0940382fdf0_36
    .p2align 4
Lf0940382fdf0_34:
    movz x10, #64
    cmp x12, x10
    b.hs Lf0940382fdf0_c5
    add x7, x14, x12
    adds x6, x13, x12
    b.cs Lf0940382fdf0_c6
    movz x10, #64
    cmp x6, x10
    b.hs Lf0940382fdf0_c7
    ldrb w6, [x6, x14]
    strb w6, [x7]
    add x12, x12, #1
    cmp x12, x15
    b.lo Lf0940382fdf0_34
Lf0940382fdf0_36:
    b Lf0940382fdf0_32
Lf0940382fdf0_31:
    mov x15, x7
Lf0940382fdf0_32:
    b Lf0940382fdf0_22
Lf0940382fdf0_21:
    mov x15, x7
Lf0940382fdf0_22:
    adrp x12, _lb_text_2c75416a8ed0@PAGE
    add x12, x12, _lb_text_2c75416a8ed0@PAGEOFF
    adrp x13, _lb_text_06a6ef7f3848@PAGE
    add x13, x13, _lb_text_06a6ef7f3848@PAGEOFF
    str x12, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x13, [sp, #40]
    movz x9, #2
    str x9, [sp, #48]
    adrp x12, _lb_text_b93c8ddb5ea5@PAGE
    add x12, x12, _lb_text_b93c8ddb5ea5@PAGEOFF
    adrp x13, _lb_text_2b0a3127042f@PAGE
    add x13, x13, _lb_text_2b0a3127042f@PAGEOFF
    str x12, [sp, #56]
    movz x9, #7
    str x9, [sp, #64]
    str x13, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    adrp x12, _lb_text_8266a5b68ae4@PAGE
    add x12, x12, _lb_text_8266a5b68ae4@PAGEOFF
    adrp x13, _lb_text_7e1e6b02ed36@PAGE
    add x13, x13, _lb_text_7e1e6b02ed36@PAGEOFF
    str x12, [sp, #88]
    movz x9, #6
    str x9, [sp, #96]
    str x13, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    mov x12, #0
Lf0940382fdf0_37:
    cmp x12, #3
    b.hs Lf0940382fdf0_40
    .p2align 4
Lf0940382fdf0_38:
    sub x9, x29, #104
    add x13, x9, x12, lsl #5
    ldr x7, [x13]
    ldr x6, [x13, #8]
    ldr x5, [x13, #16]
    ldr x13, [x13, #24]
    cmp x15, x6
    b.hs Lf0940382fdf0_43
Lf0940382fdf0_42:
    b Lf0940382fdf0_69
Lf0940382fdf0_43:
Lf0940382fdf0_44:
    sub x4, x15, x6
    adds x3, x4, #1
    b.cs Lf0940382fdf0_c8
    mov x2, #0
Lf0940382fdf0_46:
    cmp x2, x3
    b.hs Lf0940382fdf0_49
    .p2align 4
Lf0940382fdf0_47:
    movz w1, #1
    mov x0, #0
Lf0940382fdf0_50:
    cmp x0, x6
    b.hs Lf0940382fdf0_53
    .p2align 4
Lf0940382fdf0_51:
    and w1, w1, #255
    cbnz w1, Lf0940382fdf0_54
Lf0940382fdf0_71:
    b Lf0940382fdf0_55
Lf0940382fdf0_54:
    adds x1, x2, x0
    b.cs Lf0940382fdf0_c9
    movz x10, #64
    cmp x1, x10
    b.hs Lf0940382fdf0_c10
    ldrb w1, [x1, x14]
    ldrb w19, [x7, x0]
    cmp w1, w19
    cset w1, eq
Lf0940382fdf0_55:
    and w1, w1, #255
    add x0, x0, #1
    cmp x0, x6
    b.lo Lf0940382fdf0_51
Lf0940382fdf0_53:
    and w1, w1, #255
    cbz w1, Lf0940382fdf0_57
Lf0940382fdf0_56:
    mov x7, #0
Lf0940382fdf0_59:
    cmp x7, x13
    b.hs Lf0940382fdf0_62
    .p2align 4
Lf0940382fdf0_60:
    adds x3, x2, x7
    b.cs Lf0940382fdf0_c11
    movz x10, #64
    cmp x3, x10
    b.hs Lf0940382fdf0_c12
    add x3, x3, x14
    ldrb w1, [x5, x7]
    strb w1, [x3]
    add x7, x7, #1
    cmp x7, x13
    b.lo Lf0940382fdf0_60
Lf0940382fdf0_62:
    adds x7, x6, x2
    b.cs Lf0940382fdf0_c13
Lf0940382fdf0_63:
    cmp x7, x15
    b.hs Lf0940382fdf0_66
    .p2align 4
Lf0940382fdf0_64:
    subs x5, x7, x6
    b.cc Lf0940382fdf0_c14
    adds x5, x5, x13
    b.cs Lf0940382fdf0_c15
    movz x10, #64
    cmp x5, x10
    b.hs Lf0940382fdf0_c16
    add x5, x5, x14
    movz x10, #64
    cmp x7, x10
    b.hs Lf0940382fdf0_c17
    ldrb w3, [x14, x7]
    strb w3, [x5]
    add x7, x7, #1
    cmp x7, x15
    b.lo Lf0940382fdf0_64
Lf0940382fdf0_66:
    adds x15, x13, x4
    b.cs Lf0940382fdf0_c18
    b Lf0940382fdf0_69
Lf0940382fdf0_57:
Lf0940382fdf0_58:
    add x2, x2, #1
    cmp x2, x3
    b.lo Lf0940382fdf0_47
Lf0940382fdf0_49:
Lf0940382fdf0_69:
    add x12, x12, #1
    cmp x12, #3
    b.lo Lf0940382fdf0_38
Lf0940382fdf0_40:
    mov x0, x15
    ldr x19, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf0940382fdf0_c1:
    adrp x0, _lb_text_98480793b592@PAGE
    add x0, x0, _lb_text_98480793b592@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c2:
    adrp x0, _lb_text_b4823a382c5e@PAGE
    add x0, x0, _lb_text_b4823a382c5e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c3:
    adrp x0, _lb_text_b4823a382c5e@PAGE
    add x0, x0, _lb_text_b4823a382c5e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c4:
    adrp x0, _lb_text_b4823a382c5e@PAGE
    add x0, x0, _lb_text_b4823a382c5e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c5:
    adrp x0, _lb_text_2b0df7b1d866@PAGE
    add x0, x0, _lb_text_2b0df7b1d866@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c6:
    adrp x0, _lb_text_2b0df7b1d866@PAGE
    add x0, x0, _lb_text_2b0df7b1d866@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c7:
    adrp x0, _lb_text_2b0df7b1d866@PAGE
    add x0, x0, _lb_text_2b0df7b1d866@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c8:
    adrp x0, _lb_text_37ade61766a7@PAGE
    add x0, x0, _lb_text_37ade61766a7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c9:
    adrp x0, _lb_text_90282be126f9@PAGE
    add x0, x0, _lb_text_90282be126f9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c10:
    adrp x0, _lb_text_90282be126f9@PAGE
    add x0, x0, _lb_text_90282be126f9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c11:
    adrp x0, _lb_text_6bd5c0461915@PAGE
    add x0, x0, _lb_text_6bd5c0461915@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c12:
    adrp x0, _lb_text_6bd5c0461915@PAGE
    add x0, x0, _lb_text_6bd5c0461915@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c13:
    adrp x0, _lb_text_7180d9854186@PAGE
    add x0, x0, _lb_text_7180d9854186@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c14:
    adrp x0, _lb_text_b59905906e21@PAGE
    add x0, x0, _lb_text_b59905906e21@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c15:
    adrp x0, _lb_text_b59905906e21@PAGE
    add x0, x0, _lb_text_b59905906e21@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c16:
    adrp x0, _lb_text_b59905906e21@PAGE
    add x0, x0, _lb_text_b59905906e21@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c17:
    adrp x0, _lb_text_b59905906e21@PAGE
    add x0, x0, _lb_text_b59905906e21@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf0940382fdf0_c18:
    adrp x0, _lb_text_82a04784e969@PAGE
    add x0, x0, _lb_text_82a04784e969@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13film_exposure_Fitting_add
_lb_13film_exposure_Fitting_add:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1408
    str x19, [sp, #1400]
    str x20, [sp, #1392]
    str x21, [sp, #1384]
    str d8, [sp, #1376]
    str d9, [sp, #1368]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #696
    str x1, [x16]
    sub x16, x29, #712
    str d0, [x16]
    sub x0, x29, #696
    ldr x1, [x0]
    movz x2, #648
    bl _memcpy
    ldr x19, [sp, #1360]
    ldr d8, [sp, #696]
    sub x0, x29, #1360
    mov x1, #0
    movz x2, #648
    bl _memset
    mov x14, #0
L86ae47ed8a96_1:
    cmp x14, #81
    b.hs L86ae47ed8a96_4
    .p2align 4
L86ae47ed8a96_2:
    lsl x15, x14, #3
    sub x10, x29, #1360
    add x12, x15, x10
    sub x11, x29, #696
    ldr d24, [x15, x11]
    ldr x13, [x19, #4384]
    ldr d25, [x15, x13]
    fmul d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    cmp x14, #81
    b.lo L86ae47ed8a96_2
L86ae47ed8a96_4:
    ldr x14, [x19, #4368]
    fmov d9, xzr
    str d9, [sp, #24]
    str d9, [sp, #32]
    str d9, [sp, #40]
    mov x15, #0
L86ae47ed8a96_21:
    cmp x15, #3
    b.hs L86ae47ed8a96_24
    .p2align 4
L86ae47ed8a96_22:
    sub x9, x29, #1384
    add x12, x9, x15, lsl #3
    movz x10, #81
    mul x13, x15, x10
    mov x7, #0
L86ae47ed8a96_25:
    cmp x7, #81
    b.hs L86ae47ed8a96_28
    .p2align 4
L86ae47ed8a96_26:
    ldr d24, [x12]
    sub x10, x29, #1360
    ldr d25, [x10, x7, lsl #3]
    add x6, x13, x7
    movz x10, #243
    cmp x6, x10
    b.hs L86ae47ed8a96_c1
    ldr d26, [x14, x6, lsl #3]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x12]
    add x7, x7, #1
    cmp x7, #81
    b.lo L86ae47ed8a96_26
L86ae47ed8a96_28:
    add x15, x15, #1
    cmp x15, #3
    b.lo L86ae47ed8a96_22
L86ae47ed8a96_24:
    ldr d24, [sp, #24]
    ldr d25, [sp, #32]
    ldr d26, [sp, #40]
    ldr d27, [x19, #4376]
    fmul d24, d27, d24
    str d24, [sp, #0]
    ldr d24, [x19, #4376]
    fmul d24, d24, d25
    str d24, [sp, #8]
    ldr d24, [x19, #4376]
    fmul d24, d24, d26
    str d24, [sp, #16]
    sub x9, x29, #1408
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #904
    bl _lb_13film_exposure_terms
    sub x10, x29, #904
    sub x11, x29, #800
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
    movz x10, #4416
    add x14, x19, x10
    ldr d24, L86ae47ed8a96_k0
    add x15, x19, #4056
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    cset w13, hi
    fcmp d9, d24
    cset w7, eq
    mov x6, #0
L86ae47ed8a96_5:
    cmp x6, #3
    b.hs L86ae47ed8a96_8
    .p2align 4
L86ae47ed8a96_6:
    movz x10, #81
    mul x5, x6, x10
    fmov d25, d9
    mov x4, #0
L86ae47ed8a96_9:
    cmp x4, #81
    b.hs L86ae47ed8a96_12
    .p2align 4
L86ae47ed8a96_10:
    lsl x3, x4, #3
    sub x11, x29, #696
    ldr d26, [x3, x11]
    ldr x2, [x19, #4392]
    ldr d27, [x3, x2]
    fmul d26, d26, d27
    ldr x2, [x19, #4400]
    ldr d27, [x3, x2]
    fmul d26, d26, d27
    add x3, x5, x4
    ldr x2, [x19, #4408]
    movz x10, #243
    cmp x3, x10
    b.hs L86ae47ed8a96_c2
    ldr d27, [x2, x3, lsl #3]
    fmul d26, d26, d27
    fadd d25, d26, d25
    add x4, x4, #1
    cmp x4, #81
    b.lo L86ae47ed8a96_10
L86ae47ed8a96_12:
    ldr d26, [x14, x6, lsl #3]
    fdiv d25, d25, d26
    ldr d26, [x19, #4440]
    fmul d25, d25, d26
    fmov x5, d25
    and x4, x5, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x4, x10
    b.ls L86ae47ed8a96_32
L86ae47ed8a96_31:
    fmov d26, d25
    b L86ae47ed8a96_52
L86ae47ed8a96_32:
L86ae47ed8a96_33:
L86ae47ed8a96_51:
    cbz w13, L86ae47ed8a96_36
L86ae47ed8a96_35:
    fmov d26, d24
    b L86ae47ed8a96_52
L86ae47ed8a96_36:
L86ae47ed8a96_37:
    fcmp d9, d25
    b.ne L86ae47ed8a96_40
L86ae47ed8a96_42:
    cbz w7, L86ae47ed8a96_40
L86ae47ed8a96_39:
    and x5, x5, x12
    fmov d26, x5
    b L86ae47ed8a96_52
L86ae47ed8a96_40:
L86ae47ed8a96_41:
    fcmp d25, d24
    fcsel d26, d25, d24, gt
L86ae47ed8a96_52:
    fdiv d26, d8, d26
    movz x10, #13
    mul x5, x6, x10
    movz x10, #13
    mul x4, x5, x10
    mov x3, #0
L86ae47ed8a96_13:
    cmp x3, #13
    b.hs L86ae47ed8a96_16
    .p2align 4
L86ae47ed8a96_14:
    movz x10, #13
    mul x2, x3, x10
    add x2, x2, x4
    sub x9, x29, #800
    add x1, x9, x3, lsl #3
    mov x0, #0
L86ae47ed8a96_17:
    cmp x0, #13
    b.hs L86ae47ed8a96_20
    .p2align 4
L86ae47ed8a96_18:
    adds x20, x2, x0
    b.cs L86ae47ed8a96_c3
    movz x10, #507
    cmp x20, x10
    b.hs L86ae47ed8a96_c4
    add x20, x19, x20, lsl #3
    ldr d27, [x20]
    ldr d28, [x1]
    sub x10, x29, #800
    ldr d29, [x10, x0, lsl #3]
    fmul d28, d28, d29
    fmul d28, d28, d26
    fmul d28, d28, d26
    fadd d27, d27, d28
    str d27, [x20]
    add x0, x0, #1
    cmp x0, #13
    b.lo L86ae47ed8a96_18
L86ae47ed8a96_20:
    add x2, x5, x3
    movz x10, #39
    cmp x2, x10
    b.hs L86ae47ed8a96_c5
    add x2, x15, x2, lsl #3
    ldr d27, [x2]
    ldr d28, [x1]
    fmul d28, d28, d25
    fmul d28, d28, d26
    fmul d28, d28, d26
    fadd d27, d27, d28
    str d27, [x2]
    add x3, x3, #1
    cmp x3, #13
    b.lo L86ae47ed8a96_14
L86ae47ed8a96_16:
    add x6, x6, #1
    cmp x6, #3
    b.lo L86ae47ed8a96_6
L86ae47ed8a96_8:
    ldr x19, [sp, #1400]
    ldr x20, [sp, #1392]
    ldr x21, [sp, #1384]
    ldr d8, [sp, #1376]
    ldr d9, [sp, #1368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86ae47ed8a96_c1:
    adrp x0, _lb_text_c17e609978bf@PAGE
    add x0, x0, _lb_text_c17e609978bf@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L86ae47ed8a96_c2:
    adrp x0, _lb_text_cc64cd4e966b@PAGE
    add x0, x0, _lb_text_cc64cd4e966b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L86ae47ed8a96_c3:
    adrp x0, _lb_text_93df5543dca2@PAGE
    add x0, x0, _lb_text_93df5543dca2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L86ae47ed8a96_c4:
    adrp x0, _lb_text_93df5543dca2@PAGE
    add x0, x0, _lb_text_93df5543dca2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L86ae47ed8a96_c5:
    adrp x0, _lb_text_25832e868f2f@PAGE
    add x0, x0, _lb_text_25832e868f2f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L86ae47ed8a96_k0:
    .quad 4547007122018943789


    .p2align 2
    .globl _lb_13film_exposure_solve
_lb_13film_exposure_solve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1712
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #24
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #40
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #1392
    mov x1, #0
    movz x2, #1352
    bl _memset
    sub x11, x29, #1496
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    str xzr, [x11, #96]
    fmov d24, xzr
    ldr x14, [sp, #1688]
    ldr x15, [sp, #1696]
    fmov d25, d24
    mov x12, #0
Ld2540ffc76cd_1:
    cmp x12, #13
    b.hs Ld2540ffc76cd_4
    .p2align 4
Ld2540ffc76cd_2:
    movz x10, #14
    mul x13, x12, x10
    cmp x13, x15
    b.hs Ld2540ffc76cd_c1
    ldr d26, [x14, x13, lsl #3]
    fadd d25, d26, d25
    add x12, x12, #1
    cmp x12, #13
    b.lo Ld2540ffc76cd_2
Ld2540ffc76cd_4:
    ldr x14, [sp, #1688]
    ldr x15, [sp, #1696]
    mov x12, #0
Ld2540ffc76cd_5:
    cmp x12, #169
    b.hs Ld2540ffc76cd_8
    .p2align 4
Ld2540ffc76cd_6:
    lsl x13, x12, #3
    sub x9, x29, #1392
    add x7, x9, x13
    cmp x12, x15
    b.hs Ld2540ffc76cd_c2
    ldr d26, [x13, x14]
    str d26, [x7]
    add x12, x12, #1
    cmp x12, #169
    b.lo Ld2540ffc76cd_6
Ld2540ffc76cd_8:
    ldr x14, [sp, #1672]
    ldr x15, [sp, #1680]
    ldr d26, Ld2540ffc76cd_k0
    fmul d25, d26, d25
    mov x12, #0
Ld2540ffc76cd_9:
    cmp x12, #13
    b.hs Ld2540ffc76cd_12
    .p2align 4
Ld2540ffc76cd_10:
    lsl x13, x12, #3
    sub x9, x29, #1496
    add x7, x9, x13
    cmp x12, x15
    b.hs Ld2540ffc76cd_c3
    ldr d26, [x13, x14]
    str d26, [x7]
    movz x10, #14
    mul x13, x12, x10
    sub x9, x29, #1392
    add x13, x9, x13, lsl #3
    ldr d26, [x13]
    fadd d26, d26, d25
    str d26, [x13]
    add x12, x12, #1
    cmp x12, #13
    b.lo Ld2540ffc76cd_10
Ld2540ffc76cd_12:
    sub x11, x29, #1600
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    str xzr, [x11, #96]
    mov x14, #0
Ld2540ffc76cd_13:
    cmp x14, #13
    b.hs Ld2540ffc76cd_16
    .p2align 4
Ld2540ffc76cd_14:
    sub x10, x29, #1600
    str d24, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #13
    b.lo Ld2540ffc76cd_14
Ld2540ffc76cd_16:
    ldr d24, Ld2540ffc76cd_k1
    mov x14, #0
Ld2540ffc76cd_17:
    cmp x14, #13
    b.hs Ld2540ffc76cd_20
    .p2align 4
Ld2540ffc76cd_18:
    add x15, x14, #1
    mov x12, x14
    mov x13, x15
Ld2540ffc76cd_21:
    cmp x13, #13
    b.hs Ld2540ffc76cd_24
    .p2align 4
Ld2540ffc76cd_22:
    movz x10, #13
    mul x7, x13, x10
    add x7, x7, x14
    movz x10, #169
    cmp x7, x10
    b.hs Ld2540ffc76cd_c4
    sub x10, x29, #1392
    ldr d25, [x10, x7, lsl #3]
    fabs d25, d25
    movz x10, #13
    umulh x11, x12, x10
    mul x7, x12, x10
    cbnz x11, Ld2540ffc76cd_c5
    adds x7, x7, x14
    b.cs Ld2540ffc76cd_c6
    movz x10, #169
    cmp x7, x10
    b.hs Ld2540ffc76cd_c7
    sub x10, x29, #1392
    ldr d26, [x10, x7, lsl #3]
    fabs d26, d26
    fcmp d25, d26
    csel x12, x13, x12, gt
    add x13, x13, #1
    cmp x13, #13
    b.lo Ld2540ffc76cd_22
Ld2540ffc76cd_24:
    movz x10, #13
    umulh x11, x12, x10
    mul x13, x12, x10
    cbnz x11, Ld2540ffc76cd_c8
    adds x7, x13, x14
    b.cs Ld2540ffc76cd_c9
    movz x10, #169
    cmp x7, x10
    b.hs Ld2540ffc76cd_c10
    sub x10, x29, #1392
    ldr d25, [x10, x7, lsl #3]
    fabs d25, d25
    fcmp d25, d24
    b.pl Ld2540ffc76cd_29
Ld2540ffc76cd_28:
    sub x10, x29, #1600
    sub x11, x29, #1704
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
    sub x1, x29, #1704
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
    ldr x16, [x1, #96]
    str x16, [x0, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld2540ffc76cd_29:
Ld2540ffc76cd_30:
    cmp x14, x12
    b.eq Ld2540ffc76cd_33
Ld2540ffc76cd_32:
    movz x10, #13
    mul x7, x14, x10
    mov x6, #0
Ld2540ffc76cd_35:
    cmp x6, #13
    b.hs Ld2540ffc76cd_38
    .p2align 4
Ld2540ffc76cd_36:
    add x5, x7, x6
    movz x10, #169
    cmp x5, x10
    b.hs Ld2540ffc76cd_c11
    sub x9, x29, #1392
    add x5, x9, x5, lsl #3
    ldr d25, [x5]
    adds x4, x13, x6
    b.cs Ld2540ffc76cd_c12
    movz x10, #169
    cmp x4, x10
    b.hs Ld2540ffc76cd_c13
    sub x9, x29, #1392
    add x4, x9, x4, lsl #3
    ldr d26, [x4]
    str d26, [x5]
    str d25, [x4]
    add x6, x6, #1
    cmp x6, #13
    b.lo Ld2540ffc76cd_36
Ld2540ffc76cd_38:
    sub x9, x29, #1496
    add x13, x9, x14, lsl #3
    ldr d25, [x13]
    movz x10, #13
    cmp x12, x10
    b.hs Ld2540ffc76cd_c14
    sub x9, x29, #1496
    add x12, x9, x12, lsl #3
    ldr d26, [x12]
    str d26, [x13]
    str d25, [x12]
Ld2540ffc76cd_33:
Ld2540ffc76cd_34:
    movz x10, #13
    mul x12, x14, x10
    add x13, x12, x14
    sub x9, x29, #1392
    add x7, x9, x13, lsl #3
    sub x9, x29, #1496
    add x6, x9, x14, lsl #3
    mov x5, x15
Ld2540ffc76cd_39:
    cmp x5, #13
    b.hs Ld2540ffc76cd_42
    .p2align 4
Ld2540ffc76cd_40:
    movz x10, #13
    mul x4, x5, x10
    add x3, x4, x14
    movz x10, #169
    cmp x3, x10
    b.hs Ld2540ffc76cd_c15
    sub x10, x29, #1392
    ldr d25, [x10, x3, lsl #3]
    movz x10, #169
    cmp x13, x10
    b.hs Ld2540ffc76cd_c16
    ldr d26, [x7]
    fdiv d25, d25, d26
    mov x3, x14
Ld2540ffc76cd_43:
    cmp x3, #13
    b.hs Ld2540ffc76cd_46
    .p2align 4
Ld2540ffc76cd_44:
    add x2, x4, x3
    movz x10, #169
    cmp x2, x10
    b.hs Ld2540ffc76cd_c17
    sub x9, x29, #1392
    add x2, x9, x2, lsl #3
    ldr d26, [x2]
    add x1, x12, x3
    movz x10, #169
    cmp x1, x10
    b.hs Ld2540ffc76cd_c18
    sub x10, x29, #1392
    ldr d27, [x10, x1, lsl #3]
    fmul d27, d25, d27
    fsub d26, d26, d27
    str d26, [x2]
    add x3, x3, #1
    cmp x3, #13
    b.lo Ld2540ffc76cd_44
Ld2540ffc76cd_46:
    sub x9, x29, #1496
    add x4, x9, x5, lsl #3
    ldr d26, [x4]
    ldr d27, [x6]
    fmul d25, d25, d27
    fsub d25, d26, d25
    str d25, [x4]
    add x5, x5, #1
    cmp x5, #13
    b.lo Ld2540ffc76cd_40
Ld2540ffc76cd_42:
    mov x14, x15
    cmp x14, #13
    b.lo Ld2540ffc76cd_18
Ld2540ffc76cd_20:
    movz x14, #13
Ld2540ffc76cd_47:
    cmp x14, #0
    b.ls Ld2540ffc76cd_49
    .p2align 4
Ld2540ffc76cd_48:
    sub x14, x14, #1
    movz x10, #13
    cmp x14, x10
    b.hs Ld2540ffc76cd_c19
    lsl x15, x14, #3
    sub x10, x29, #1496
    ldr d24, [x10, x15]
    add x12, x14, #1
    movz x10, #13
    mul x13, x14, x10
Ld2540ffc76cd_50:
    cmp x12, #13
    b.hs Ld2540ffc76cd_53
    .p2align 4
Ld2540ffc76cd_51:
    add x7, x13, x12
    movz x10, #169
    cmp x7, x10
    b.hs Ld2540ffc76cd_c20
    sub x10, x29, #1392
    ldr d25, [x10, x7, lsl #3]
    sub x10, x29, #1600
    ldr d26, [x10, x12, lsl #3]
    fmul d25, d25, d26
    fsub d24, d24, d25
    add x12, x12, #1
    cmp x12, #13
    b.lo Ld2540ffc76cd_51
Ld2540ffc76cd_53:
    sub x9, x29, #1600
    add x15, x9, x15
    movz x10, #13
    mul x12, x14, x10
    add x12, x14, x12
    movz x10, #169
    cmp x12, x10
    b.hs Ld2540ffc76cd_c21
    sub x10, x29, #1392
    ldr d25, [x10, x12, lsl #3]
    fdiv d24, d24, d25
    str d24, [x15]
    cmp x14, #0
    b.hi Ld2540ffc76cd_48
Ld2540ffc76cd_49:
    sub x10, x29, #1600
    sub x11, x29, #1704
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
    sub x1, x29, #1704
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
    ldr x16, [x1, #96]
    str x16, [x0, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld2540ffc76cd_c1:
    adrp x0, _lb_text_7e1230e49999@PAGE
    add x0, x0, _lb_text_7e1230e49999@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c2:
    adrp x0, _lb_text_ba5a1620e7c2@PAGE
    add x0, x0, _lb_text_ba5a1620e7c2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c3:
    adrp x0, _lb_text_1510e28f8719@PAGE
    add x0, x0, _lb_text_1510e28f8719@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c4:
    adrp x0, _lb_text_847c8b5a0432@PAGE
    add x0, x0, _lb_text_847c8b5a0432@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c5:
    adrp x0, _lb_text_847c8b5a0432@PAGE
    add x0, x0, _lb_text_847c8b5a0432@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c6:
    adrp x0, _lb_text_847c8b5a0432@PAGE
    add x0, x0, _lb_text_847c8b5a0432@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c7:
    adrp x0, _lb_text_847c8b5a0432@PAGE
    add x0, x0, _lb_text_847c8b5a0432@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c8:
    adrp x0, _lb_text_f440fe8388ad@PAGE
    add x0, x0, _lb_text_f440fe8388ad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c9:
    adrp x0, _lb_text_f440fe8388ad@PAGE
    add x0, x0, _lb_text_f440fe8388ad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c10:
    adrp x0, _lb_text_f440fe8388ad@PAGE
    add x0, x0, _lb_text_f440fe8388ad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c11:
    adrp x0, _lb_text_48c133eef901@PAGE
    add x0, x0, _lb_text_48c133eef901@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c12:
    adrp x0, _lb_text_e69b34838ea9@PAGE
    add x0, x0, _lb_text_e69b34838ea9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c13:
    adrp x0, _lb_text_e69b34838ea9@PAGE
    add x0, x0, _lb_text_e69b34838ea9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c14:
    adrp x0, _lb_text_8b8cff787a51@PAGE
    add x0, x0, _lb_text_8b8cff787a51@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c15:
    adrp x0, _lb_text_b10a90d910a9@PAGE
    add x0, x0, _lb_text_b10a90d910a9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c16:
    adrp x0, _lb_text_b10a90d910a9@PAGE
    add x0, x0, _lb_text_b10a90d910a9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c17:
    adrp x0, _lb_text_69aabd8c5799@PAGE
    add x0, x0, _lb_text_69aabd8c5799@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c18:
    adrp x0, _lb_text_69aabd8c5799@PAGE
    add x0, x0, _lb_text_69aabd8c5799@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c19:
    adrp x0, _lb_text_57a2a68b69d6@PAGE
    add x0, x0, _lb_text_57a2a68b69d6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c20:
    adrp x0, _lb_text_56d98b2836ad@PAGE
    add x0, x0, _lb_text_56d98b2836ad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld2540ffc76cd_c21:
    adrp x0, _lb_text_c5036901c657@PAGE
    add x0, x0, _lb_text_c5036901c657@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld2540ffc76cd_k0:
    .quad 4427486594234968593
Ld2540ffc76cd_k1:
    .quad 118622047889322841


    .p2align 2
    .globl _lb_13film_exposure_terms
_lb_13film_exposure_terms:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #240]
    str d9, [sp, #232]
    str d10, [sp, #224]
    str d11, [sp, #216]
    str d12, [sp, #208]
    sub x16, x29, #72
    str d0, [x16, #0]
    sub x16, x29, #72
    str d1, [x16, #8]
    sub x16, x29, #72
    str d2, [x16, #16]
    ldr d24, [sp, #184]
    fmov d25, xzr
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L2d9991ac87fe_23
L2d9991ac87fe_22:
    fmov d8, d24
    b L2d9991ac87fe_43
L2d9991ac87fe_23:
L2d9991ac87fe_24:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L2d9991ac87fe_27
L2d9991ac87fe_26:
    fmov d8, d25
    b L2d9991ac87fe_43
L2d9991ac87fe_27:
L2d9991ac87fe_28:
    fcmp d24, d25
    b.ne L2d9991ac87fe_31
L2d9991ac87fe_33:
    fcmp d25, d25
    b.ne L2d9991ac87fe_31
L2d9991ac87fe_30:
    and x14, x14, x15
    fmov d8, x14
    b L2d9991ac87fe_43
L2d9991ac87fe_31:
L2d9991ac87fe_32:
    fcmp d24, d25
    fcsel d8, d24, d25, gt
L2d9991ac87fe_43:
    ldr d24, [sp, #192]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L2d9991ac87fe_45
L2d9991ac87fe_44:
    fmov d9, d24
    b L2d9991ac87fe_65
L2d9991ac87fe_45:
L2d9991ac87fe_46:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L2d9991ac87fe_49
L2d9991ac87fe_48:
    fmov d9, d25
    b L2d9991ac87fe_65
L2d9991ac87fe_49:
L2d9991ac87fe_50:
    fcmp d24, d25
    b.ne L2d9991ac87fe_53
L2d9991ac87fe_55:
    fcmp d25, d25
    b.ne L2d9991ac87fe_53
L2d9991ac87fe_52:
    and x14, x14, x15
    fmov d9, x14
    b L2d9991ac87fe_65
L2d9991ac87fe_53:
L2d9991ac87fe_54:
    fcmp d24, d25
    fcsel d9, d24, d25, gt
L2d9991ac87fe_65:
    ldr d24, [sp, #200]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L2d9991ac87fe_67
L2d9991ac87fe_66:
    fmov d10, d24
    b L2d9991ac87fe_87
L2d9991ac87fe_67:
L2d9991ac87fe_68:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L2d9991ac87fe_71
L2d9991ac87fe_70:
    fmov d10, d25
    b L2d9991ac87fe_87
L2d9991ac87fe_71:
L2d9991ac87fe_72:
    fcmp d24, d25
    b.ne L2d9991ac87fe_75
L2d9991ac87fe_77:
    fcmp d25, d25
    b.ne L2d9991ac87fe_75
L2d9991ac87fe_74:
    and x14, x14, x15
    fmov d10, x14
    b L2d9991ac87fe_87
L2d9991ac87fe_75:
L2d9991ac87fe_76:
    fcmp d24, d25
    fcsel d10, d24, d25, gt
L2d9991ac87fe_87:
    str d8, [sp, #104]
    str d9, [sp, #112]
    str d10, [sp, #120]
    fmul d11, d8, d9
    fsqrt d24, d11
    str d24, [sp, #128]
    fmul d24, d9, d10
    fsqrt d24, d24
    str d24, [sp, #136]
    fmul d24, d8, d10
    fsqrt d24, d24
    str d24, [sp, #144]
    fmul d12, d8, d8
    fmul d24, d9, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #152]
    fmul d24, d10, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #160]
    fmul d12, d9, d9
    fmul d24, d8, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #168]
    fmul d24, d10, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #176]
    fmul d12, d10, d10
    fmul d24, d8, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #184]
    fmul d24, d9, d12
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #192]
    fmul d24, d10, d11
    fmov d0, d24
    bl _lb_13luce_std_math_10cbrt_value
    fmov d24, d0
    str d24, [sp, #200]
    sub x10, x29, #152
    sub x11, x29, #256
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
    sub x1, x29, #256
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
    ldr x16, [x1, #96]
    str x16, [x0, #96]
    ldr d8, [sp, #240]
    ldr d9, [sp, #232]
    ldr d10, [sp, #224]
    ldr d11, [sp, #216]
    ldr d12, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_color_camera_lower
_lb_17luce_color_camera_lower:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    uxtb w14, w0
    cmp w14, #65
    cset w15, hs
    cmp w14, #90
    cset w12, ls
    cmp w15, #0
    csel w15, w12, w15, ne
    and w15, w15, #255
    orr w12, w14, #32
    cmp w15, #0
    csel w14, w12, w14, ne
    and w14, w14, #255
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_22
_lb_test_22:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #35984
    sub sp, sp, x16
    sub x16, x29, #8
    str d8, [x16]
    sub x16, x29, #16
    str d9, [x16]
    sub x16, x29, #24
    str d10, [x16]
    sub x16, x29, #32
    str d11, [x16]
    sub x16, x29, #40
    str d12, [x16]
    sub x16, x29, #48
    str d13, [x16]
    sub x16, x29, #56
    str d14, [x16]
    movz x0, #17
    movz x16, #9008
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9008
    sub x10, x29, x16
    movz x16, #17960
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    fmov d8, #10.0000000
    ldr d9, L10c75d0fb2de_k0
    fmov d0, d8
    fmov d1, d9
    movz x16, #9104
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d24, d0
    ldr d25, L10c75d0fb2de_k1
    fsub d24, d24, d25
    fabs d24, d24
    ldr d10, L10c75d0fb2de_k2
    fcmp d24, d10
    b.mi L10c75d0fb2de_1
L10c75d0fb2de_2:
    mov x9, #0
    str x9, [sp, #18008]
    mov x9, #0
    str x9, [sp, #18016]
    adrp x14, _lb_text_1e22844a74c6@PAGE
    add x14, x14, _lb_text_1e22844a74c6@PAGEOFF
    adrp x15, _lb_text_74b3df099d96@PAGE
    add x15, x15, _lb_text_74b3df099d96@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17976
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_1:
    ldr d24, L10c75d0fb2de_k3
    fmov d0, d24
    fmov d1, d9
    movz x16, #9104
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d24, d0
    ldr d25, L10c75d0fb2de_k4
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d10
    b.mi L10c75d0fb2de_4
L10c75d0fb2de_5:
    mov x9, #0
    str x9, [sp, #17992]
    mov x9, #0
    str x9, [sp, #18000]
    adrp x14, _lb_text_1f8a82365469@PAGE
    add x14, x14, _lb_text_1f8a82365469@PAGEOFF
    adrp x15, _lb_text_3c405ce9cf2b@PAGE
    add x15, x15, _lb_text_3c405ce9cf2b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17992
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_4:
    fmov d11, #1.0000000
    ldr d24, L10c75d0fb2de_k5
    fdiv d24, d11, d24
    fmov d0, d24
    fmov d1, d9
    movz x16, #9104
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d24, d0
    ldr d25, L10c75d0fb2de_k6
    fcmp d24, d25
    b.mi L10c75d0fb2de_7
L10c75d0fb2de_8:
    mov x9, #0
    str x9, [sp, #17976]
    mov x9, #0
    str x9, [sp, #17984]
    adrp x14, _lb_text_e039b3515501@PAGE
    add x14, x14, _lb_text_e039b3515501@PAGEOFF
    adrp x15, _lb_text_51840e33ea49@PAGE
    add x15, x15, _lb_text_51840e33ea49@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18008
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_7:
    ldr d24, L10c75d0fb2de_k7
    fmov d0, d8
    fmov d1, d24
    movz x16, #9104
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d12, d0
    fmov d0, d8
    fmov d1, d9
    movz x16, #9104
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d24, d0
    fmov d25, #0.5000000
    fadd d24, d24, d25
    fcmp d12, d24
    b.gt L10c75d0fb2de_10
L10c75d0fb2de_11:
    mov x9, #0
    str x9, [sp, #17960]
    mov x9, #0
    str x9, [sp, #17968]
    adrp x14, _lb_text_ca8bec9b02f6@PAGE
    add x14, x14, _lb_text_ca8bec9b02f6@PAGEOFF
    adrp x15, _lb_text_24f95f049216@PAGE
    add x15, x15, _lb_text_24f95f049216@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18024
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_10:
    movz x0, #4
    movz x16, #9008
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9008
    sub x10, x29, x16
    movz x16, #26976
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    ldr d12, L10c75d0fb2de_k8
    fmov d0, d12
    fmov d1, d9
    movz x16, #18120
    sub x9, x29, x16
    mov x0, x9
    mov x1, #0
    bl _lb_13film_exposure_failure
    fmov d13, d0
    fmov d0, d12
    fmov d1, d9
    movz x16, #18120
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d14, d0
    fmov d0, d12
    fmov d1, d9
    movz x16, #18120
    sub x9, x29, x16
    mov x0, x9
    movz x1, #2
    bl _lb_13film_exposure_failure
    fmov d24, d0
    str d13, [x29, #-80]
    str d14, [x29, #-72]
    str d24, [x29, #-64]
    fadd d25, d13, d14
    fadd d25, d24, d25
    fmov d12, #3.0000000
    fdiv d25, d25, d12
    fsub d25, d25, d11
    fabs d25, d25
    fcmp d25, d10
    b.pl L10c75d0fb2de_14
L10c75d0fb2de_16:
    fcmp d14, d13
    b.pl L10c75d0fb2de_14
L10c75d0fb2de_15:
    fcmp d14, d24
    b.mi L10c75d0fb2de_13
L10c75d0fb2de_14:
    mov x9, #0
    str x9, [sp, #8992]
    mov x9, #0
    str x9, [sp, #9000]
    adrp x14, _lb_text_6cdf0ea8839c@PAGE
    add x14, x14, _lb_text_6cdf0ea8839c@PAGEOFF
    adrp x15, _lb_text_b2008291b37b@PAGE
    add x15, x15, _lb_text_b2008291b37b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #26992
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_13:
    movz x0, #6
    movz x16, #9008
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9008
    sub x10, x29, x16
    movz x16, #35944
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    fmov d0, d11
    fmov d1, d9
    movz x16, #27088
    sub x9, x29, x16
    mov x0, x9
    mov x1, #0
    bl _lb_13film_exposure_failure
    fmov d24, d0
    fmov d25, #0.2500000
    fcmp d24, d25
    b.mi L10c75d0fb2de_18
L10c75d0fb2de_19:
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    adrp x14, _lb_text_d8a929d53928@PAGE
    add x14, x14, _lb_text_d8a929d53928@PAGEOFF
    adrp x15, _lb_text_09121c53f3e3@PAGE
    add x15, x15, _lb_text_09121c53f3e3@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #35960
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_18:
    fmov d0, d8
    fmov d1, d9
    movz x16, #27088
    sub x9, x29, x16
    mov x0, x9
    mov x1, #0
    bl _lb_13film_exposure_failure
    fmov d10, d0
    fmov d0, d8
    fmov d1, d9
    movz x16, #27088
    sub x9, x29, x16
    mov x0, x9
    movz x1, #1
    bl _lb_13film_exposure_failure
    fmov d24, d0
    fcmp d10, d24
    b.le L10c75d0fb2de_22
L10c75d0fb2de_23:
    fmov d25, #2.0000000
    fmul d24, d24, d25
    fadd d24, d10, d24
    fdiv d24, d24, d12
    fsub d24, d24, d11
    fabs d24, d24
    ldr d25, L10c75d0fb2de_k9
    fcmp d24, d25
    b.mi L10c75d0fb2de_21
L10c75d0fb2de_22:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_42f6a59f7299@PAGE
    add x14, x14, _lb_text_42f6a59f7299@PAGEOFF
    adrp x15, _lb_text_05ac9a96dacd@PAGE
    add x15, x15, _lb_text_05ac9a96dacd@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #35976
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10c75d0fb2de_21:
    mov x0, #0
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    sub x16, x29, #24
    ldr d10, [x16]
    sub x16, x29, #32
    ldr d11, [x16]
    sub x16, x29, #40
    ldr d12, [x16]
    sub x16, x29, #48
    ldr d13, [x16]
    sub x16, x29, #56
    ldr d14, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L10c75d0fb2de_k0:
    .quad 4595653203753948938
L10c75d0fb2de_k1:
    .quad 4612406594367767183
L10c75d0fb2de_k2:
    .quad 4594572339843380019
L10c75d0fb2de_k3:
    .quad 4636737291354636288
L10c75d0fb2de_k4:
    .quad 4615243862133010596
L10c75d0fb2de_k5:
    .quad 4638496509959077888
L10c75d0fb2de_k6:
    .quad 4581421828931458171
L10c75d0fb2de_k7:
    .quad 4586646004499207946
L10c75d0fb2de_k8:
    .quad 4629700416936869888
L10c75d0fb2de_k9:
    .quad 4596373779694328218


    .p2align 2
    .globl _lb_13film_exposure_failure
_lb_13film_exposure_failure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str d8, [sp, #136]
    str d9, [sp, #128]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
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
    mov x14, x1
    movz x10, #3
    umulh x11, x14, x10
    add x14, x14, x14, lsl #1
    cbnz x11, Ld411a24a1639_c1
    movz x10, #9
    cmp x14, x10
    b.hs Ld411a24a1639_c2
    sub x10, x29, #88
    ldr d8, [x10, x14, lsl #3]
    fmov d26, xzr
    fcmp d8, d26
    b.hi Ld411a24a1639_2
Ld411a24a1639_1:
    fmov d0, d26
    ldr d8, [sp, #136]
    ldr d9, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld411a24a1639_2:
Ld411a24a1639_3:
    ldr d27, Ld411a24a1639_k0
    fmul d24, d27, d24
    ldr d27, Ld411a24a1639_k1
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Ld411a24a1639_11
Ld411a24a1639_10:
    b Ld411a24a1639_31
Ld411a24a1639_11:
Ld411a24a1639_12:
    fmov x12, d27
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Ld411a24a1639_15
Ld411a24a1639_14:
    fmov d25, d27
    b Ld411a24a1639_31
Ld411a24a1639_15:
Ld411a24a1639_16:
    fcmp d25, d26
    b.ne Ld411a24a1639_19
Ld411a24a1639_21:
    fcmp d27, d26
    b.ne Ld411a24a1639_19
Ld411a24a1639_18:
    and x15, x15, x12
    fmov d25, x15
    b Ld411a24a1639_31
Ld411a24a1639_19:
Ld411a24a1639_20:
    fcmp d25, d27
    fcsel d25, d25, d27, gt
Ld411a24a1639_31:
    fdiv d24, d24, d25
    fmov d9, #1.0000000
    add x15, x14, #2
    movz x10, #9
    cmp x15, x10
    b.hs Ld411a24a1639_c3
    sub x10, x29, #88
    ldr d25, [x10, x15, lsl #3]
    fdiv d24, d24, d25
    add x14, x14, #1
    movz x10, #9
    cmp x14, x10
    b.hs Ld411a24a1639_c4
    sub x10, x29, #88
    ldr d25, [x10, x14, lsl #3]
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fadd d24, d9, d24
    fmov d0, d24
    bl _lb_13luce_std_math_10log2_value
    fmov d24, d0
    fmul d24, d8, d24
    fmov d0, d24
    ldr d8, [sp, #136]
    ldr d9, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld411a24a1639_c1:
    adrp x0, _lb_text_40ced1401f40@PAGE
    add x0, x0, _lb_text_40ced1401f40@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld411a24a1639_c2:
    adrp x0, _lb_text_40ced1401f40@PAGE
    add x0, x0, _lb_text_40ced1401f40@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld411a24a1639_c3:
    adrp x0, _lb_text_bbb56ee9ae31@PAGE
    add x0, x0, _lb_text_bbb56ee9ae31@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld411a24a1639_c4:
    adrp x0, _lb_text_bbb56ee9ae31@PAGE
    add x0, x0, _lb_text_bbb56ee9ae31@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld411a24a1639_k0:
    .quad 4595653203753948938
Ld411a24a1639_k1:
    .quad 4517329193108106637


    .p2align 2
    .globl _lb_test_23
_lb_test_23:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #184]
    movz x0, #4
    movz x1, #2
    sub x8, x29, #48
    bl _lb_picture_Picture_create
    ldrb w14, [sp, #176]
    cbz w14, Lbb0b41cf72ab_1
Lbb0b41cf72ab_2:
    movz x0, #1
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_1:
    sub x10, x29, #48
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x14, #0
Lbb0b41cf72ab_4:
    cmp x14, #8
    b.hs Lbb0b41cf72ab_7
    .p2align 4
Lbb0b41cf72ab_5:
    and x15, x14, #1
    cmp x15, #0
    movz x10, #255
    mov x11, #0
    csel w15, w10, w11, eq
    lsl x12, x14, #2
    ldr x13, [sp, #104]
    ldr x7, [sp, #112]
    cmp x12, x7
    b.hs Lbb0b41cf72ab_c1
    strb w15, [x12, x13]
    add x13, x12, #1
    ldr x7, [sp, #104]
    ldr x6, [sp, #112]
    cmp x13, x6
    b.hs Lbb0b41cf72ab_c2
    strb w15, [x13, x7]
    add x13, x12, #2
    ldr x7, [sp, #104]
    ldr x6, [sp, #112]
    cmp x13, x6
    b.hs Lbb0b41cf72ab_c3
    strb w15, [x13, x7]
    add x15, x12, #3
    ldr x12, [sp, #104]
    ldr x13, [sp, #112]
    cmp x15, x13
    b.hs Lbb0b41cf72ab_c4
    movz x9, #255
    strb w9, [x15, x12]
    add x14, x14, #1
    cmp x14, #8
    b.lo Lbb0b41cf72ab_5
Lbb0b41cf72ab_7:
    sub x0, x29, #104
    movz x1, #2
    sub x8, x29, #48
    bl _lb_picture_Picture_shrunk
    ldrb w14, [sp, #176]
    cbz w14, Lbb0b41cf72ab_13
Lbb0b41cf72ab_14:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #72
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_13:
    sub x10, x29, #48
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [sp, #56]
    cmp x14, #2
    b.ne Lbb0b41cf72ab_17
Lbb0b41cf72ab_18:
    ldr x14, [sp, #64]
    cmp x14, #1
    b.eq Lbb0b41cf72ab_16
Lbb0b41cf72ab_17:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_57e0c50dab27@PAGE
    add x14, x14, _lb_text_57e0c50dab27@PAGEOFF
    adrp x15, _lb_text_99248b4704eb@PAGE
    add x15, x15, _lb_text_99248b4704eb@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #152
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_16:
    ldr x14, [sp, #72]
    ldr x15, [sp, #80]
    mov x9, #0
    cmp x9, x15
    b.hs Lbb0b41cf72ab_c5
    ldrb w12, [x14]
    cmp w12, #187
    b.lo Lbb0b41cf72ab_21
Lbb0b41cf72ab_22:
    ldrb w12, [x14]
    cmp w12, #188
    b.ls Lbb0b41cf72ab_20
Lbb0b41cf72ab_21:
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    adrp x14, _lb_text_ffabb5fb0cd8@PAGE
    add x14, x14, _lb_text_ffabb5fb0cd8@PAGEOFF
    adrp x15, _lb_text_bfdd43f9739a@PAGE
    add x15, x15, _lb_text_bfdd43f9739a@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #168
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_20:
    movz x9, #3
    cmp x9, x15
    b.hs Lbb0b41cf72ab_c6
    ldrb w14, [x14, #3]
    cmp w14, #255
    b.eq Lbb0b41cf72ab_24
Lbb0b41cf72ab_25:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_b671c01eea9e@PAGE
    add x14, x14, _lb_text_b671c01eea9e@PAGEOFF
    adrp x15, _lb_text_2b94a033770b@PAGE
    add x15, x15, _lb_text_2b94a033770b@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #184
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_24:
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    mov x0, #0
    ldr x19, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbb0b41cf72ab_c1:
    adrp x0, _lb_text_72e2a4be6cd8@PAGE
    add x0, x0, _lb_text_72e2a4be6cd8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbb0b41cf72ab_c2:
    adrp x0, _lb_text_3778e85f317a@PAGE
    add x0, x0, _lb_text_3778e85f317a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbb0b41cf72ab_c3:
    adrp x0, _lb_text_a9db4ddbaf32@PAGE
    add x0, x0, _lb_text_a9db4ddbaf32@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbb0b41cf72ab_c4:
    adrp x0, _lb_text_d1b7f7213e87@PAGE
    add x0, x0, _lb_text_d1b7f7213e87@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbb0b41cf72ab_c5:
    adrp x0, _lb_text_ffabb5fb0cd8@PAGE
    add x0, x0, _lb_text_ffabb5fb0cd8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbb0b41cf72ab_c6:
    adrp x0, _lb_text_b671c01eea9e@PAGE
    add x0, x0, _lb_text_b671c01eea9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_picture_Picture_create
_lb_picture_Picture_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    str x22, [sp, #72]
    mov x19, x0
    mov x20, x1
    cmp x19, #0
    b.eq Lae2d4e736f77_1
Lae2d4e736f77_6:
    cmp x20, #0
    b.eq Lae2d4e736f77_1
Lae2d4e736f77_5:
    movz x10, #16384
    cmp x19, x10
    b.hi Lae2d4e736f77_1
Lae2d4e736f77_4:
    movz x10, #16384
    cmp x20, x10
    b.ls Lae2d4e736f77_2
Lae2d4e736f77_1:
    adrp x14, _lb_picture_invalid@PAGE
    add x14, x14, _lb_picture_invalid@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_6fbeb5e41d0d@PAGE
    add x20, x20, _lb_text_6fbeb5e41d0d@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #38
    str x9, [x14, #16]
    adrp x15, _lb_text_e68b0e310842@PAGE
    add x15, x15, _lb_text_e68b0e310842@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #40]
    sub x1, x29, #104
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lae2d4e736f77_2:
Lae2d4e736f77_3:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    mul x12, x19, x20
    movz x10, #4
    umulh x11, x12, x10
    lsl x21, x12, #2
    cbnz x11, Lae2d4e736f77_c1
    movz x10, #16384, lsl #48
    cmp x21, x10
    b.ls Lae2d4e736f77_9
Lae2d4e736f77_8:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, _lb_text_42f0af4a8c6e@PAGE
    add x15, x15, _lb_text_42f0af4a8c6e@PAGEOFF
    str x15, [x14, #8]
    movz x9, #47
    str x9, [x14, #16]
    adrp x15, _lb_text_aa9d836ffc9f@PAGE
    add x15, x15, _lb_text_aa9d836ffc9f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x21, #0
    movz w15, #1
    b Lae2d4e736f77_10
Lae2d4e736f77_9:
    cbz x14, Lae2d4e736f77_12
Lae2d4e736f77_11:
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x21
    movz x2, #1
    sub x8, x29, #64
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #64]
    cmp x21, #0
    cset w15, ne
    cmp w14, #0
    cset w14, eq
    and w14, w15, w14
    cbz w14, Lae2d4e736f77_14
Lae2d4e736f77_13:
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
    adrp x15, _lb_text_aa9d836ffc9f@PAGE
    add x15, x15, _lb_text_aa9d836ffc9f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x21, #0
    movz w15, #1
    b Lae2d4e736f77_10
Lae2d4e736f77_14:
    ldr x22, [sp, #48]
    mov x0, x22
    mov x2, x21
    mov x1, #0
    bl _memset
    mov x14, x0
    mov x14, x22
    mov w15, #0
Lae2d4e736f77_10:
    cbz w15, Lae2d4e736f77_15
Lae2d4e736f77_16:
    movz x9, #1
    strb w9, [sp, #40]
    sub x1, x29, #104
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lae2d4e736f77_15:
    str x19, [sp, #8]
    str x20, [sp, #16]
    str x14, [sp, #24]
    str x21, [sp, #32]
    mov x9, #0
    strb w9, [sp, #40]
    sub x1, x29, #104
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lae2d4e736f77_12:
    adrp x0, _lb_text_aa9d836ffc9f@PAGE
    add x0, x0, _lb_text_aa9d836ffc9f@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Lae2d4e736f77_c1:
    adrp x0, _lb_text_aa9d836ffc9f@PAGE
    add x0, x0, _lb_text_aa9d836ffc9f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_picture_Picture_shrunk
_lb_picture_Picture_shrunk:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1280
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1264]
    str x20, [sp, #1256]
    str x21, [sp, #1248]
    str x22, [sp, #1240]
    str x23, [sp, #1232]
    str x24, [sp, #1224]
    str x25, [sp, #1216]
    str x26, [sp, #1208]
    str x27, [sp, #1200]
    str x28, [sp, #1192]
    str d8, [sp, #1184]
    str d9, [sp, #1176]
    str d10, [sp, #1168]
    mov x19, x0
    mov x14, x1
    ldr x15, [x19]
    ldr x12, [x19, #8]
    cmp x15, x12
    csel x13, x15, x12, hi
    cmp x14, #0
    b.eq Lf64d2ce58c34_4
Lf64d2ce58c34_7:
    cmp x13, x14
    b.hi Lf64d2ce58c34_5
Lf64d2ce58c34_4:
    mov x0, x19
    sub x8, x29, #152
    bl _lb_picture_Picture_copied
    ldrb w14, [sp, #1160]
    cbz w14, Lf64d2ce58c34_8
Lf64d2ce58c34_9:
    movz x9, #1
    strb w9, [sp, #104]
    sub x1, x29, #1208
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    ldr d8, [sp, #1184]
    ldr d9, [sp, #1176]
    ldr d10, [sp, #1168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf64d2ce58c34_8:
    sub x10, x29, #152
    sub x11, x29, #1208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, #0
    strb w9, [sp, #104]
    sub x1, x29, #1208
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    ldr d8, [sp, #1184]
    ldr d9, [sp, #1176]
    ldr d10, [sp, #1168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf64d2ce58c34_5:
    umulh x11, x14, x15
    mul x15, x14, x15
    cbnz x11, Lf64d2ce58c34_c1
    cmp x13, #0
    cset w7, eq
    cbnz w7, Lf64d2ce58c34_12
Lf64d2ce58c34_13:
    udiv x15, x15, x13
    cmp x15, #0
    movz x11, #1
    csel x20, x15, x11, hi
    umulh x11, x14, x12
    mul x14, x14, x12
    cbnz x11, Lf64d2ce58c34_c2
    cbnz w7, Lf64d2ce58c34_14
Lf64d2ce58c34_15:
    udiv x14, x14, x13
    cmp x14, #0
    movz x11, #1
    csel x21, x14, x11, hi
    mov x0, x20
    mov x1, x21
    sub x8, x29, #152
    bl _lb_picture_Picture_create
    ldrb w14, [sp, #1160]
    cbz w14, Lf64d2ce58c34_16
Lf64d2ce58c34_17:
    movz x9, #1
    strb w9, [sp, #104]
    sub x1, x29, #1208
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    ldr d8, [sp, #1184]
    ldr d9, [sp, #1176]
    ldr d10, [sp, #1168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf64d2ce58c34_16:
    sub x10, x29, #152
    sub x11, x29, #1240
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x0, x29, #1136
    mov x1, #0
    movz x2, #1024
    bl _memset
    ldr d8, Lf64d2ce58c34_k0
    mov x22, #0
Lf64d2ce58c34_19:
    cmp x22, #256
    b.hs Lf64d2ce58c34_22
    .p2align 4
Lf64d2ce58c34_20:
    sub x9, x29, #1136
    add x23, x9, x22, lsl #2
    ucvtf d24, x22
    fdiv d24, d24, d8
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_decode
    fmov d24, d0
    fcvt s24, d24
    str s24, [x23]
    add x22, x22, #1
    cmp x22, #256
    b.lo Lf64d2ce58c34_20
Lf64d2ce58c34_22:
    adrp x22, _lb_memory_heap@PAGE
    add x22, x22, _lb_memory_heap@PAGEOFF
    ldr x14, [x22]
    add x9, x22, #8
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    ldr x15, [x9]
    cbz x15, Lf64d2ce58c34_27
Lf64d2ce58c34_26:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #4096
    movz x2, #1
    sub x8, x29, #1168
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #128]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Lf64d2ce58c34_29
Lf64d2ce58c34_28:
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
    adrp x15, _lb_text_68bb87b67254@PAGE
    add x15, x15, _lb_text_68bb87b67254@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Lf64d2ce58c34_25
Lf64d2ce58c34_29:
    ldr x24, [sp, #112]
    mov x0, x24
    mov x1, #0
    movz x2, #4096
    bl _memset
    mov x14, x0
    mov x14, x24
    movz x15, #4096
    mov w12, #0
Lf64d2ce58c34_25:
    cbz w12, Lf64d2ce58c34_30
Lf64d2ce58c34_31:
    movz x9, #1
    strb w9, [sp, #104]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #1168
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #1240
    bl _lb_picture_Picture_close
    sub x10, x29, #1168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    sub x1, x29, #1208
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    ldr d8, [sp, #1184]
    ldr d9, [sp, #1176]
    ldr d10, [sp, #1168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf64d2ce58c34_30:
    str x14, [sp, #24]
    str x15, [sp, #32]
    sub x9, x29, #1256
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_19luce_color_transfer_15srgb_byte_table
    cmp x21, #0
    cset w24, eq
    cmp x20, #0
    cset w25, eq
    fmov s8, #1.0000000
    ldr s9, Lf64d2ce58c34_k1
    fmov s10, #0.5000000
    adrp x26, _lb_text_36565de1f420@PAGE
    add x26, x26, _lb_text_36565de1f420@PAGEOFF
    mov x27, #0
Lf64d2ce58c34_33:
    cmp x27, x21
    b.hs Lf64d2ce58c34_36
    .p2align 4
Lf64d2ce58c34_34:
    ldr x14, [x19, #8]
    umulh x11, x27, x14
    mul x15, x27, x14
    cbnz x11, Lf64d2ce58c34_c3
    cbnz w24, Lf64d2ce58c34_37
Lf64d2ce58c34_38:
    udiv x28, x15, x21
    add x15, x27, #1
    umulh x11, x14, x15
    mul x14, x14, x15
    cbnz x11, Lf64d2ce58c34_c4
    cbnz w24, Lf64d2ce58c34_39
Lf64d2ce58c34_40:
    udiv x14, x14, x21
    cmp x14, x28
    b.ls Lf64d2ce58c34_73
Lf64d2ce58c34_72:
    b Lf64d2ce58c34_74
Lf64d2ce58c34_73:
    adds x14, x28, #1
    b.cs Lf64d2ce58c34_c5
Lf64d2ce58c34_74:
Lf64d2ce58c34_76:
    mov x12, #0
Lf64d2ce58c34_41:
    cmp x12, x20
    b.hs Lf64d2ce58c34_44
    .p2align 4
Lf64d2ce58c34_42:
    ldr x13, [x19]
    umulh x11, x12, x13
    mul x7, x12, x13
    cbnz x11, Lf64d2ce58c34_c6
    cbnz w25, Lf64d2ce58c34_45
Lf64d2ce58c34_46:
    udiv x7, x7, x20
    add x6, x12, #1
    umulh x11, x13, x6
    mul x5, x13, x6
    cbnz x11, Lf64d2ce58c34_c7
    cbnz w25, Lf64d2ce58c34_47
Lf64d2ce58c34_48:
    udiv x5, x5, x20
    cmp x5, x7
    b.ls Lf64d2ce58c34_78
Lf64d2ce58c34_77:
    b Lf64d2ce58c34_79
Lf64d2ce58c34_78:
    adds x5, x7, #1
    b.cs Lf64d2ce58c34_c8
Lf64d2ce58c34_79:
Lf64d2ce58c34_81:
    mov x4, x28
    fmov s16, wzr
    fmov s24, s16
    fmov s16, wzr
    fmov s25, s16
    fmov s16, wzr
    fmov s26, s16
    fmov s16, wzr
    fmov s27, s16
Lf64d2ce58c34_49:
    cmp x4, x14
    b.hs Lf64d2ce58c34_52
    .p2align 4
Lf64d2ce58c34_50:
    umulh x11, x13, x4
    mul x3, x13, x4
    cbnz x11, Lf64d2ce58c34_c9
    adds x3, x3, x7
    b.cs Lf64d2ce58c34_c10
    movz x10, #4
    umulh x11, x3, x10
    lsl x3, x3, #2
    cbnz x11, Lf64d2ce58c34_c11
    mov x2, x7
Lf64d2ce58c34_53:
    cmp x2, x5
    b.hs Lf64d2ce58c34_56
    .p2align 4
Lf64d2ce58c34_54:
    ldr x1, [x19, #16]
    ldr x0, [x19, #24]
    cmp x3, x0
    b.hs Lf64d2ce58c34_c12
    ldrb w23, [x1, x3]
    movz x10, #256
    cmp x23, x10
    b.hs Lf64d2ce58c34_c13
    sub x10, x29, #1136
    ldr s28, [x10, x23, lsl #2]
    fadd s24, s28, s24
    add x23, x3, #1
    cmp x23, x0
    b.hs Lf64d2ce58c34_c14
    ldrb w23, [x1, x23]
    movz x10, #256
    cmp x23, x10
    b.hs Lf64d2ce58c34_c15
    sub x10, x29, #1136
    ldr s28, [x10, x23, lsl #2]
    fadd s25, s28, s25
    adds x23, x3, #2
    b.cs Lf64d2ce58c34_c16
    cmp x23, x0
    b.hs Lf64d2ce58c34_c17
    ldrb w23, [x1, x23]
    movz x10, #256
    cmp x23, x10
    b.hs Lf64d2ce58c34_c18
    sub x10, x29, #1136
    ldr s28, [x10, x23, lsl #2]
    fadd s26, s28, s26
    adds x23, x3, #3
    b.cs Lf64d2ce58c34_c19
    cmp x23, x0
    b.hs Lf64d2ce58c34_c20
    ldrb w1, [x1, x23]
    ucvtf s28, x1
    fadd s27, s28, s27
    adds x3, x3, #4
    b.cs Lf64d2ce58c34_c21
    add x2, x2, #1
    cmp x2, x5
    b.lo Lf64d2ce58c34_54
Lf64d2ce58c34_56:
    add x4, x4, #1
    cmp x4, x14
    b.lo Lf64d2ce58c34_50
Lf64d2ce58c34_52:
    subs x13, x5, x7
    b.cc Lf64d2ce58c34_c22
    subs x7, x14, x28
    b.cc Lf64d2ce58c34_c23
    umulh x11, x13, x7
    mul x13, x13, x7
    cbnz x11, Lf64d2ce58c34_c24
    ucvtf s28, x13
    fdiv s28, s8, s28
    umulh x11, x20, x27
    mul x13, x20, x27
    cbnz x11, Lf64d2ce58c34_c25
    adds x12, x13, x12
    b.cs Lf64d2ce58c34_c26
    movz x10, #4
    umulh x11, x12, x10
    lsl x12, x12, #2
    cbnz x11, Lf64d2ce58c34_c27
    ldr x13, [sp, #56]
    ldr x7, [sp, #64]
    cmp x12, x7
    b.hs Lf64d2ce58c34_c28
    add x13, x12, x13
    fmul s24, s28, s24
    fmul s24, s24, s9
    fadd s24, s24, s10
    fcvt d24, s24
    fcvtzu x7, d24
    ldr x5, [sp, #24]
    ldr x4, [sp, #32]
    cmp x7, x4
    b.hs Lf64d2ce58c34_c29
    ldrb w7, [x7, x5]
    strb w7, [x13]
    add x13, x12, #1
    ldr x7, [sp, #56]
    ldr x5, [sp, #64]
    cmp x13, x5
    b.hs Lf64d2ce58c34_c30
    add x13, x13, x7
    fmul s24, s28, s25
    fmul s24, s24, s9
    fadd s24, s24, s10
    fcvt d24, s24
    fcvtzu x7, d24
    ldr x5, [sp, #24]
    ldr x4, [sp, #32]
    cmp x7, x4
    b.hs Lf64d2ce58c34_c31
    ldrb w7, [x7, x5]
    strb w7, [x13]
    adds x13, x12, #2
    b.cs Lf64d2ce58c34_c32
    ldr x7, [sp, #56]
    ldr x5, [sp, #64]
    cmp x13, x5
    b.hs Lf64d2ce58c34_c33
    add x13, x13, x7
    fmul s24, s28, s26
    fmul s24, s24, s9
    fadd s24, s24, s10
    fcvt d24, s24
    fcvtzu x7, d24
    ldr x5, [sp, #24]
    ldr x4, [sp, #32]
    cmp x7, x4
    b.hs Lf64d2ce58c34_c34
    ldrb w7, [x7, x5]
    strb w7, [x13]
    adds x12, x12, #3
    b.cs Lf64d2ce58c34_c35
    ldr x13, [sp, #56]
    ldr x7, [sp, #64]
    cmp x12, x7
    b.hs Lf64d2ce58c34_c36
    add x23, x12, x13
    fmul s24, s28, s27
    fadd s24, s24, s10
    fcvt d24, s24
    str x15, [sp, #128]
    str x14, [sp, #120]
    str x6, [sp, #112]
    fmov d0, d24
    mov x2, x26
    movz x0, #8
    movz x1, #1
    bl _lb_core_6f_to_u
    mov x12, x0
    ldr x15, [sp, #128]
    ldr x14, [sp, #120]
    ldr x6, [sp, #112]
    strb w12, [x23]
    mov x12, x6
    cmp x12, x20
    b.lo Lf64d2ce58c34_42
Lf64d2ce58c34_44:
    mov x27, x15
    cmp x27, x21
    b.lo Lf64d2ce58c34_34
Lf64d2ce58c34_36:
    sub x10, x29, #1240
    sub x11, x29, #1208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, #0
    strb w9, [sp, #104]
    ldr x14, [sp, #24]
    ldr x15, [sp, #32]
    str x14, [sp, #8]
    str x15, [sp, #16]
    ldr x14, [x22]
    ldr x9, [sp, #136]
    ldr x15, [x9]
    cbz x15, Lf64d2ce58c34_57
Lf64d2ce58c34_58:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1272
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lf64d2ce58c34_57:
    sub x1, x29, #1208
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    ldr d8, [sp, #1184]
    ldr d9, [sp, #1176]
    ldr d10, [sp, #1168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf64d2ce58c34_12:
    adrp x0, _lb_text_57081b6acbf2@PAGE
    add x0, x0, _lb_text_57081b6acbf2@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_14:
    adrp x0, _lb_text_e9add987fd71@PAGE
    add x0, x0, _lb_text_e9add987fd71@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_27:
    adrp x0, _lb_text_68bb87b67254@PAGE
    add x0, x0, _lb_text_68bb87b67254@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_37:
    adrp x0, _lb_text_3328e87ae141@PAGE
    add x0, x0, _lb_text_3328e87ae141@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_39:
    adrp x0, _lb_text_a1378f026d5c@PAGE
    add x0, x0, _lb_text_a1378f026d5c@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_45:
    adrp x0, _lb_text_5f9254a7d9f0@PAGE
    add x0, x0, _lb_text_5f9254a7d9f0@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_47:
    adrp x0, _lb_text_7c3017c8a94d@PAGE
    add x0, x0, _lb_text_7c3017c8a94d@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c1:
    adrp x0, _lb_text_57081b6acbf2@PAGE
    add x0, x0, _lb_text_57081b6acbf2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c2:
    adrp x0, _lb_text_e9add987fd71@PAGE
    add x0, x0, _lb_text_e9add987fd71@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c3:
    adrp x0, _lb_text_3328e87ae141@PAGE
    add x0, x0, _lb_text_3328e87ae141@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c4:
    adrp x0, _lb_text_a1378f026d5c@PAGE
    add x0, x0, _lb_text_a1378f026d5c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c5:
    adrp x0, _lb_text_78800689a63a@PAGE
    add x0, x0, _lb_text_78800689a63a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c6:
    adrp x0, _lb_text_5f9254a7d9f0@PAGE
    add x0, x0, _lb_text_5f9254a7d9f0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c7:
    adrp x0, _lb_text_7c3017c8a94d@PAGE
    add x0, x0, _lb_text_7c3017c8a94d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c8:
    adrp x0, _lb_text_78800689a63a@PAGE
    add x0, x0, _lb_text_78800689a63a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c9:
    adrp x0, _lb_text_6a518d579a8d@PAGE
    add x0, x0, _lb_text_6a518d579a8d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c10:
    adrp x0, _lb_text_6a518d579a8d@PAGE
    add x0, x0, _lb_text_6a518d579a8d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c11:
    adrp x0, _lb_text_6a518d579a8d@PAGE
    add x0, x0, _lb_text_6a518d579a8d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c12:
    adrp x0, _lb_text_abd9b546d991@PAGE
    add x0, x0, _lb_text_abd9b546d991@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c13:
    adrp x0, _lb_text_abd9b546d991@PAGE
    add x0, x0, _lb_text_abd9b546d991@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c14:
    adrp x0, _lb_text_6483384102f8@PAGE
    add x0, x0, _lb_text_6483384102f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c15:
    adrp x0, _lb_text_6483384102f8@PAGE
    add x0, x0, _lb_text_6483384102f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c16:
    adrp x0, _lb_text_2e9d599a8b06@PAGE
    add x0, x0, _lb_text_2e9d599a8b06@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c17:
    adrp x0, _lb_text_2e9d599a8b06@PAGE
    add x0, x0, _lb_text_2e9d599a8b06@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c18:
    adrp x0, _lb_text_2e9d599a8b06@PAGE
    add x0, x0, _lb_text_2e9d599a8b06@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c19:
    adrp x0, _lb_text_ee48a023ab14@PAGE
    add x0, x0, _lb_text_ee48a023ab14@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c20:
    adrp x0, _lb_text_ee48a023ab14@PAGE
    add x0, x0, _lb_text_ee48a023ab14@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c21:
    adrp x0, _lb_text_5875bd696193@PAGE
    add x0, x0, _lb_text_5875bd696193@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c22:
    adrp x0, _lb_text_edd8527f0aa1@PAGE
    add x0, x0, _lb_text_edd8527f0aa1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c23:
    adrp x0, _lb_text_edd8527f0aa1@PAGE
    add x0, x0, _lb_text_edd8527f0aa1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c24:
    adrp x0, _lb_text_edd8527f0aa1@PAGE
    add x0, x0, _lb_text_edd8527f0aa1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c25:
    adrp x0, _lb_text_08f570037cdd@PAGE
    add x0, x0, _lb_text_08f570037cdd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c26:
    adrp x0, _lb_text_08f570037cdd@PAGE
    add x0, x0, _lb_text_08f570037cdd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c27:
    adrp x0, _lb_text_08f570037cdd@PAGE
    add x0, x0, _lb_text_08f570037cdd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c28:
    adrp x0, _lb_text_83cf26a35b3b@PAGE
    add x0, x0, _lb_text_83cf26a35b3b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c29:
    adrp x0, _lb_text_83cf26a35b3b@PAGE
    add x0, x0, _lb_text_83cf26a35b3b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c30:
    adrp x0, _lb_text_8c6a5a0b00cc@PAGE
    add x0, x0, _lb_text_8c6a5a0b00cc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c31:
    adrp x0, _lb_text_8c6a5a0b00cc@PAGE
    add x0, x0, _lb_text_8c6a5a0b00cc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c32:
    adrp x0, _lb_text_e1a832841af7@PAGE
    add x0, x0, _lb_text_e1a832841af7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c33:
    adrp x0, _lb_text_e1a832841af7@PAGE
    add x0, x0, _lb_text_e1a832841af7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c34:
    adrp x0, _lb_text_e1a832841af7@PAGE
    add x0, x0, _lb_text_e1a832841af7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c35:
    adrp x0, _lb_text_36565de1f420@PAGE
    add x0, x0, _lb_text_36565de1f420@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf64d2ce58c34_c36:
    adrp x0, _lb_text_36565de1f420@PAGE
    add x0, x0, _lb_text_36565de1f420@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lf64d2ce58c34_k0:
    .quad 4643176031446892544
Lf64d2ce58c34_k1:
    .quad 1166012416


    .p2align 2
    .globl _lb_picture_Picture_close
_lb_picture_Picture_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    mov x19, x0
    add x20, x19, #16
    ldr x14, [x19, #24]
    cmp x14, #0
    b.ls La3aa47d3f7f5_2
La3aa47d3f7f5_1:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x12, [x19, #16]
    str x12, [sp, #0]
    str x14, [sp, #8]
    ldr x14, [x15]
    ldr x15, [x15, #8]
    cbz x15, La3aa47d3f7f5_4
La3aa47d3f7f5_5:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #48
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
La3aa47d3f7f5_4:
La3aa47d3f7f5_2:
La3aa47d3f7f5_3:
    sub x11, x29, #32
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x20, #0]
    mov x9, #0
    str x9, [x19]
    mov x9, #0
    str x9, [x19, #8]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_picture_Picture_copied
_lb_picture_Picture_copied:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #112]
    mov x19, x0
    ldr x14, [x19]
    ldr x15, [x19, #8]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #56
    bl _lb_picture_Picture_create
    ldrb w14, [sp, #104]
    cbz w14, L8fd7b3faa8a3_1
L8fd7b3faa8a3_2:
    movz x9, #1
    strb w9, [sp, #64]
    sub x1, x29, #96
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8fd7b3faa8a3_1:
    sub x10, x29, #56
    sub x11, x29, #128
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x19, #16
    ldr x15, [x19, #24]
    ldr x2, [x14]
    ldr x3, [x14, #8]
    mov x4, x15
    sub x9, x29, #112
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_memory_copy_0g1_u8
    sub x10, x29, #128
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, #0
    strb w9, [sp, #64]
    sub x1, x29, #96
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_19luce_color_transfer_15srgb_byte_table
_lb_19luce_color_transfer_15srgb_byte_table:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    str d8, [sp, #48]
    str d9, [sp, #40]
    str d10, [sp, #32]
    str d11, [sp, #24]
    str d12, [sp, #16]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    ldr x19, [sp, #8]
    cmp x19, #1
    cset w14, hi
    sub x15, x19, #1
    ucvtf d24, x15
    fmov d8, #1.0000000
    cmp w14, #0
    fcsel d9, d24, d8, ne
    fmov d10, xzr
    ldr d11, L89d1c1a2e89d_k0
    fmov d12, #0.5000000
    adrp x20, _lb_text_362cfa803f18@PAGE
    add x20, x20, _lb_text_362cfa803f18@PAGEOFF
    fcmp d10, d8
    cset w21, ls
    mov x22, #0
L89d1c1a2e89d_4:
    cmp x22, x19
    b.hs L89d1c1a2e89d_7
    .p2align 4
L89d1c1a2e89d_5:
    ldr x14, [sp, #0]
    add x23, x14, x22
    ucvtf d24, x22
    fdiv d24, d24, d9
    cbz w21, L89d1c1a2e89d_13
L89d1c1a2e89d_12:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L89d1c1a2e89d_15
L89d1c1a2e89d_14:
    b L89d1c1a2e89d_27
L89d1c1a2e89d_15:
L89d1c1a2e89d_16:
    fcmp d24, d10
    cset w14, mi
    fcmp d24, d8
    fcsel d24, d8, d24, gt
    cmp w14, #0
    fcsel d24, d10, d24, ne
L89d1c1a2e89d_27:
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_encode
    fmov d24, d0
    fmul d24, d24, d11
    fadd d24, d24, d12
    frintm d24, d24
    fmov d0, d24
    mov x2, x20
    movz x0, #8
    movz x1, #1
    bl _lb_core_6f_to_u
    mov x14, x0
    strb w14, [x23]
    add x22, x22, #1
    cmp x22, x19
    b.lo L89d1c1a2e89d_5
L89d1c1a2e89d_7:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L89d1c1a2e89d_13:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L89d1c1a2e89d_k0:
    .quad 4643176031446892544


    .p2align 2
    .globl _lb_picture_9max_above
_lb_picture_9max_above:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x15, x14
    b.ls L05992df7fc16_2
L05992df7fc16_1:
    b L05992df7fc16_3
L05992df7fc16_2:
    adds x15, x14, #1
    b.cs L05992df7fc16_c1
L05992df7fc16_3:
    mov x0, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L05992df7fc16_c1:
    adrp x0, _lb_text_78800689a63a@PAGE
    add x0, x0, _lb_text_78800689a63a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_6f_to_u
_lb_core_6f_to_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    mov w14, w0
    mov w15, w1
    mov x12, x2
    subs w13, w14, #1
    b.vs L5e51c7fb331a_c1
    sxtw x7, w13
    cmp x7, #64
    b.hs L5e51c7fb331a_21
L5e51c7fb331a_22:
    movz x9, #1
    lsl x13, x9, x13
    ucvtf d24, x13
    fmov d25, #2.0000000
    fmul d24, d25, d24
    cmp w15, #0
    b.ne L5e51c7fb331a_2
L5e51c7fb331a_1:
    fsub d25, d8, d8
    fmov d26, xzr
    fcmp d25, d26
    b.ne L5e51c7fb331a_4
L5e51c7fb331a_8:
    fcmp d8, d26
    b.mi L5e51c7fb331a_4
L5e51c7fb331a_7:
    fcmp d8, d24
    b.lt L5e51c7fb331a_5
L5e51c7fb331a_4:
    adrp x14, _lb_text_d5ee4082093a@PAGE
    add x14, x14, _lb_text_d5ee4082093a@PAGEOFF
    mov x0, x12
    mov x1, x14
    bl _lb_core_7trap_at
L5e51c7fb331a_5:
L5e51c7fb331a_6:
    fcvtzu x14, d8
    mov x0, x14
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5e51c7fb331a_2:
L5e51c7fb331a_3:
    fcmp d8, d8
    b.ne L5e51c7fb331a_10
L5e51c7fb331a_13:
    fmov d25, xzr
    fcmp d8, d25
    b.pl L5e51c7fb331a_11
L5e51c7fb331a_10:
    mov x0, #0
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5e51c7fb331a_11:
L5e51c7fb331a_12:
    fcmp d8, d24
    b.lt L5e51c7fb331a_16
L5e51c7fb331a_15:
    cmp w14, #64
    b.lt L5e51c7fb331a_29
L5e51c7fb331a_28:
    movn x14, #0
    b L5e51c7fb331a_35
L5e51c7fb331a_29:
L5e51c7fb331a_30:
    sxtw x15, w14
    cmp x15, #64
    b.hs L5e51c7fb331a_32
L5e51c7fb331a_33:
    movz x9, #1
    lsl x14, x9, x14
    subs x14, x14, #1
    b.cc L5e51c7fb331a_c2
L5e51c7fb331a_35:
    mov x0, x14
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5e51c7fb331a_16:
L5e51c7fb331a_17:
    fcvtzu x14, d8
    mov x0, x14
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5e51c7fb331a_21:
    adrp x0, _lb_text_e719dc980536@PAGE
    add x0, x0, _lb_text_e719dc980536@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L5e51c7fb331a_32:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L5e51c7fb331a_c1:
    adrp x0, _lb_text_e719dc980536@PAGE
    add x0, x0, _lb_text_e719dc980536@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L5e51c7fb331a_c2:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_24
_lb_test_24:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    str x19, [sp, #264]
    movz x0, #2
    movz x1, #1
    sub x8, x29, #48
    bl _lb_picture_Picture_create
    ldrb w14, [sp, #256]
    cbz w14, L3240dd3723db_1
L3240dd3723db_2:
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_1:
    sub x10, x29, #48
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [sp, #184]
    ldr x15, [sp, #192]
    mov x9, #0
    cmp x9, x15
    b.hs L3240dd3723db_c1
    movz x9, #10
    strb w9, [x14]
    ldr x14, [sp, #184]
    ldr x15, [sp, #192]
    movz x9, #4
    cmp x9, x15
    b.hs L3240dd3723db_c2
    movz x9, #20
    strb w9, [x14, #4]
    sub x0, x29, #104
    movz x1, #6
    sub x8, x29, #48
    bl _lb_picture_Picture_oriented
    ldrb w14, [sp, #256]
    cbz w14, L3240dd3723db_4
L3240dd3723db_5:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #72
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_4:
    sub x10, x29, #48
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [sp, #136]
    cmp x14, #1
    b.ne L3240dd3723db_8
L3240dd3723db_9:
    ldr x14, [sp, #144]
    cmp x14, #2
    b.eq L3240dd3723db_7
L3240dd3723db_8:
    mov x9, #0
    str x9, [sp, #120]
    mov x9, #0
    str x9, [sp, #128]
    adrp x14, _lb_text_2f6510616895@PAGE
    add x14, x14, _lb_text_2f6510616895@PAGEOFF
    adrp x15, _lb_text_ce627ef1f072@PAGE
    add x15, x15, _lb_text_ce627ef1f072@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #152
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_7:
    ldr x14, [sp, #152]
    ldr x15, [sp, #160]
    mov x9, #0
    cmp x9, x15
    b.hs L3240dd3723db_c3
    ldrb w12, [x14]
    cmp w12, #10
    b.ne L3240dd3723db_12
L3240dd3723db_13:
    movz x9, #4
    cmp x9, x15
    b.hs L3240dd3723db_c4
    ldrb w14, [x14, #4]
    cmp w14, #20
    b.eq L3240dd3723db_11
L3240dd3723db_12:
    mov x9, #0
    str x9, [sp, #104]
    mov x9, #0
    str x9, [sp, #112]
    adrp x14, _lb_text_af1d6a6d23a6@PAGE
    add x14, x14, _lb_text_af1d6a6d23a6@PAGEOFF
    adrp x15, _lb_text_8be8aa21c578@PAGE
    add x15, x15, _lb_text_8be8aa21c578@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #168
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_11:
    sub x0, x29, #104
    movz x1, #8
    sub x8, x29, #48
    bl _lb_picture_Picture_oriented
    ldrb w14, [sp, #256]
    cbz w14, L3240dd3723db_15
L3240dd3723db_16:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #72
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_15:
    sub x10, x29, #48
    sub x11, x29, #200
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [sp, #88]
    ldr x15, [sp, #96]
    mov x9, #0
    cmp x9, x15
    b.hs L3240dd3723db_c5
    ldrb w12, [x14]
    cmp w12, #20
    b.ne L3240dd3723db_19
L3240dd3723db_20:
    movz x9, #4
    cmp x9, x15
    b.hs L3240dd3723db_c6
    ldrb w14, [x14, #4]
    cmp w14, #10
    b.eq L3240dd3723db_18
L3240dd3723db_19:
    mov x9, #0
    str x9, [sp, #56]
    mov x9, #0
    str x9, [sp, #64]
    adrp x14, _lb_text_685cfcb0f7c5@PAGE
    add x14, x14, _lb_text_685cfcb0f7c5@PAGEOFF
    adrp x15, _lb_text_045fa0f156b8@PAGE
    add x15, x15, _lb_text_045fa0f156b8@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #216
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #200
    bl _lb_picture_Picture_close
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_18:
    sub x0, x29, #104
    movz x1, #2
    sub x8, x29, #48
    bl _lb_picture_Picture_oriented
    ldrb w14, [sp, #256]
    cbz w14, L3240dd3723db_22
L3240dd3723db_23:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #72
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #200
    bl _lb_picture_Picture_close
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_22:
    sub x10, x29, #48
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [sp, #40]
    ldr x15, [sp, #48]
    mov x9, #0
    cmp x9, x15
    b.hs L3240dd3723db_c7
    ldrb w14, [x14]
    cmp w14, #20
    b.eq L3240dd3723db_25
L3240dd3723db_26:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_eca68ad9c419@PAGE
    add x14, x14, _lb_text_eca68ad9c419@PAGEOFF
    adrp x15, _lb_text_bafb3a463fe6@PAGE
    add x15, x15, _lb_text_bafb3a463fe6@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #264
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
    sub x11, x29, #32
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #248
    bl _lb_picture_Picture_close
    sub x0, x29, #200
    bl _lb_picture_Picture_close
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_25:
    sub x0, x29, #248
    bl _lb_picture_Picture_close
    sub x0, x29, #200
    bl _lb_picture_Picture_close
    sub x0, x29, #136
    bl _lb_picture_Picture_close
    sub x0, x29, #104
    bl _lb_picture_Picture_close
    mov x0, #0
    ldr x19, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3240dd3723db_c1:
    adrp x0, _lb_text_b136e71d626c@PAGE
    add x0, x0, _lb_text_b136e71d626c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c2:
    adrp x0, _lb_text_87a927bef3bc@PAGE
    add x0, x0, _lb_text_87a927bef3bc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c3:
    adrp x0, _lb_text_af1d6a6d23a6@PAGE
    add x0, x0, _lb_text_af1d6a6d23a6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c4:
    adrp x0, _lb_text_af1d6a6d23a6@PAGE
    add x0, x0, _lb_text_af1d6a6d23a6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c5:
    adrp x0, _lb_text_685cfcb0f7c5@PAGE
    add x0, x0, _lb_text_685cfcb0f7c5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c6:
    adrp x0, _lb_text_685cfcb0f7c5@PAGE
    add x0, x0, _lb_text_685cfcb0f7c5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3240dd3723db_c7:
    adrp x0, _lb_text_eca68ad9c419@PAGE
    add x0, x0, _lb_text_eca68ad9c419@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_picture_Picture_oriented
_lb_picture_Picture_oriented:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    str x23, [sp, #160]
    str x24, [sp, #152]
    str x25, [sp, #144]
    str x26, [sp, #136]
    str x27, [sp, #128]
    str x28, [sp, #120]
    mov x19, x0
    mov x20, x1
    cmp x20, #2
    b.lo Le86f0aef6b63_1
Le86f0aef6b63_4:
    cmp x20, #8
    b.ls Le86f0aef6b63_2
Le86f0aef6b63_1:
    mov x0, x19
    sub x8, x29, #128
    bl _lb_picture_Picture_copied
    ldrb w14, [sp, #112]
    cbz w14, Le86f0aef6b63_5
Le86f0aef6b63_6:
    movz x9, #1
    strb w9, [sp, #72]
    sub x1, x29, #168
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    ldr x25, [sp, #144]
    ldr x26, [sp, #136]
    ldr x27, [sp, #128]
    ldr x28, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le86f0aef6b63_5:
    sub x10, x29, #128
    sub x11, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, #0
    strb w9, [sp, #72]
    sub x1, x29, #168
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    ldr x25, [sp, #144]
    ldr x26, [sp, #136]
    ldr x27, [sp, #128]
    ldr x28, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le86f0aef6b63_2:
Le86f0aef6b63_3:
    cmp x20, #5
    cset w14, hs
    cbz w14, Le86f0aef6b63_10
Le86f0aef6b63_9:
    ldr x15, [x19, #8]
    mov x21, x15
    b Le86f0aef6b63_11
Le86f0aef6b63_10:
    ldr x21, [x19]
Le86f0aef6b63_11:
    cbz w14, Le86f0aef6b63_13
Le86f0aef6b63_12:
    ldr x14, [x19]
    mov x22, x14
    b Le86f0aef6b63_14
Le86f0aef6b63_13:
    ldr x22, [x19, #8]
Le86f0aef6b63_14:
    mov x0, x21
    mov x1, x22
    sub x8, x29, #128
    bl _lb_picture_Picture_create
    ldrb w14, [sp, #112]
    cbz w14, Le86f0aef6b63_15
Le86f0aef6b63_16:
    movz x9, #1
    strb w9, [sp, #72]
    sub x1, x29, #168
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    ldr x25, [sp, #144]
    ldr x26, [sp, #136]
    ldr x27, [sp, #128]
    ldr x28, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le86f0aef6b63_15:
    ldr x23, [sp, #80]
    ldr x24, [sp, #88]
    ldr x25, [sp, #96]
    ldr x26, [sp, #104]
    ldr x27, [x19]
    ldr x28, [x19, #8]
    mov x14, #0
Le86f0aef6b63_18:
    cmp x14, x22
    b.hs Le86f0aef6b63_21
    .p2align 4
Le86f0aef6b63_19:
    mov x15, #0
Le86f0aef6b63_22:
    cmp x15, x21
    b.hs Le86f0aef6b63_25
    .p2align 4
Le86f0aef6b63_23:
    sub x9, x20, #2
    cmp x9, #6
    b.hs Le86f0aef6b63_33
    adr x10, Le86f0aef6b63_jt0
    ldrsw x9, [x10, x9, lsl #2]
    add x10, x10, x9
    br x10
Le86f0aef6b63_jt0:
    .long Le86f0aef6b63_27 - Le86f0aef6b63_jt0
    .long Le86f0aef6b63_28 - Le86f0aef6b63_jt0
    .long Le86f0aef6b63_29 - Le86f0aef6b63_jt0
    .long Le86f0aef6b63_30 - Le86f0aef6b63_jt0
    .long Le86f0aef6b63_31 - Le86f0aef6b63_jt0
    .long Le86f0aef6b63_32 - Le86f0aef6b63_jt0
Le86f0aef6b63_27:
    subs x12, x27, #1
    b.cc Le86f0aef6b63_c1
    subs x12, x12, x15
    b.cc Le86f0aef6b63_c2
    mov x13, x14
    b Le86f0aef6b63_26
Le86f0aef6b63_28:
    subs x12, x27, #1
    b.cc Le86f0aef6b63_c3
    subs x12, x12, x15
    b.cc Le86f0aef6b63_c4
    subs x13, x28, #1
    b.cc Le86f0aef6b63_c5
    subs x13, x13, x14
    b.cc Le86f0aef6b63_c6
    b Le86f0aef6b63_26
Le86f0aef6b63_29:
    subs x12, x28, #1
    b.cc Le86f0aef6b63_c7
    subs x13, x12, x14
    b.cc Le86f0aef6b63_c8
    mov x12, x15
    b Le86f0aef6b63_26
Le86f0aef6b63_30:
    mov x12, x14
    mov x13, x15
    b Le86f0aef6b63_26
Le86f0aef6b63_31:
    subs x12, x28, #1
    b.cc Le86f0aef6b63_c9
    subs x13, x12, x15
    b.cc Le86f0aef6b63_c10
    mov x12, x14
    b Le86f0aef6b63_26
Le86f0aef6b63_32:
    subs x12, x27, #1
    b.cc Le86f0aef6b63_c11
    subs x12, x12, x14
    b.cc Le86f0aef6b63_c12
    subs x13, x28, #1
    b.cc Le86f0aef6b63_c13
    subs x13, x13, x15
    b.cc Le86f0aef6b63_c14
    b Le86f0aef6b63_26
Le86f0aef6b63_33:
    subs x12, x27, #1
    b.cc Le86f0aef6b63_c15
    subs x12, x12, x14
    b.cc Le86f0aef6b63_c16
    mov x13, x15
Le86f0aef6b63_26:
    umulh x11, x27, x13
    mul x13, x27, x13
    cbnz x11, Le86f0aef6b63_c17
    adds x12, x13, x12
    b.cs Le86f0aef6b63_c18
    movz x10, #4
    umulh x11, x12, x10
    lsl x12, x12, #2
    cbnz x11, Le86f0aef6b63_c19
    umulh x11, x21, x14
    mul x13, x21, x14
    cbnz x11, Le86f0aef6b63_c20
    adds x13, x13, x15
    b.cs Le86f0aef6b63_c21
    movz x10, #4
    umulh x11, x13, x10
    lsl x13, x13, #2
    cbnz x11, Le86f0aef6b63_c22
    adds x7, x13, #4
    b.cs Le86f0aef6b63_c23
    cmp x13, x26
    b.hi Le86f0aef6b63_c24
    cmp x7, x26
    b.hi Le86f0aef6b63_c25
    cmp x13, x7
    b.hi Le86f0aef6b63_35
Le86f0aef6b63_34:
    add x13, x13, x25
    str x13, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    ldr x13, [x19, #16]
    ldr x7, [x19, #24]
    adds x6, x12, #4
    b.cs Le86f0aef6b63_c26
    cmp x12, x7
    b.hi Le86f0aef6b63_c27
    cmp x6, x7
    b.hi Le86f0aef6b63_c28
    cmp x12, x6
    b.hi Le86f0aef6b63_37
Le86f0aef6b63_36:
    add x12, x12, x13
    str x12, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    str x14, [sp, #112]
    str x15, [sp, #104]
    sub x9, x29, #184
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #200
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #4
    bl _lb_memory_copy_0g1_u8
    ldr x14, [sp, #112]
    ldr x15, [sp, #104]
    add x15, x15, #1
    cmp x15, x21
    b.lo Le86f0aef6b63_23
Le86f0aef6b63_25:
    add x14, x14, #1
    cmp x14, x22
    b.lo Le86f0aef6b63_19
Le86f0aef6b63_21:
    str x23, [sp, #40]
    str x24, [sp, #48]
    str x25, [sp, #56]
    str x26, [sp, #64]
    mov x9, #0
    strb w9, [sp, #72]
    sub x1, x29, #168
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldp x16, x17, [x1, #16]
    stp x16, x17, [x0, #16]
    ldr x16, [x1, #32]
    str x16, [x0, #32]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    ldr x24, [sp, #152]
    ldr x25, [sp, #144]
    ldr x26, [sp, #136]
    ldr x27, [sp, #128]
    ldr x28, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le86f0aef6b63_35:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_37:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c1:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c2:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c3:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c4:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c5:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c6:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c7:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c8:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c9:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c10:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c11:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c12:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c13:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c14:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c15:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c16:
    adrp x0, _lb_text_c8c602150abb@PAGE
    add x0, x0, _lb_text_c8c602150abb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c17:
    adrp x0, _lb_text_17908631982c@PAGE
    add x0, x0, _lb_text_17908631982c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c18:
    adrp x0, _lb_text_17908631982c@PAGE
    add x0, x0, _lb_text_17908631982c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c19:
    adrp x0, _lb_text_17908631982c@PAGE
    add x0, x0, _lb_text_17908631982c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c20:
    adrp x0, _lb_text_fdb9b0be8aed@PAGE
    add x0, x0, _lb_text_fdb9b0be8aed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c21:
    adrp x0, _lb_text_fdb9b0be8aed@PAGE
    add x0, x0, _lb_text_fdb9b0be8aed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c22:
    adrp x0, _lb_text_fdb9b0be8aed@PAGE
    add x0, x0, _lb_text_fdb9b0be8aed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c23:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c24:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c25:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c26:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c27:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le86f0aef6b63_c28:
    adrp x0, _lb_text_1e7127369b75@PAGE
    add x0, x0, _lb_text_1e7127369b75@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_25
_lb_test_25:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    movz x9, #255
    strb w9, [sp, #220]
    movz x9, #216
    strb w9, [sp, #221]
    movz x9, #255
    strb w9, [sp, #222]
    movz x9, #224
    strb w9, [sp, #223]
    sub x9, x29, #4
    str x9, [sp, #200]
    movz x9, #4
    str x9, [sp, #208]
    sub x9, x29, #24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_kind
    mov w14, w0
    cmp w14, #2
    b.eq L583a5a406bd9_1
L583a5a406bd9_2:
    mov x9, #0
    str x9, [sp, #184]
    mov x9, #0
    str x9, [sp, #192]
    adrp x14, _lb_text_95417ccb4cb8@PAGE
    add x14, x14, _lb_text_95417ccb4cb8@PAGEOFF
    adrp x15, _lb_text_770c034fa3c2@PAGE
    add x15, x15, _lb_text_770c034fa3c2@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #40
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L583a5a406bd9_1:
    movz x9, #137
    strb w9, [sp, #176]
    movz x9, #80
    strb w9, [sp, #177]
    movz x9, #78
    strb w9, [sp, #178]
    movz x9, #71
    strb w9, [sp, #179]
    movz x9, #13
    strb w9, [sp, #180]
    movz x9, #10
    strb w9, [sp, #181]
    movz x9, #26
    strb w9, [sp, #182]
    movz x9, #10
    strb w9, [sp, #183]
    sub x9, x29, #48
    str x9, [sp, #160]
    movz x9, #8
    str x9, [sp, #168]
    sub x9, x29, #64
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_kind
    mov w14, w0
    cmp w14, #3
    b.eq L583a5a406bd9_4
L583a5a406bd9_5:
    mov x9, #0
    str x9, [sp, #144]
    mov x9, #0
    str x9, [sp, #152]
    adrp x14, _lb_text_e6959f970928@PAGE
    add x14, x14, _lb_text_e6959f970928@PAGEOFF
    adrp x15, _lb_text_567a984bc21b@PAGE
    add x15, x15, _lb_text_567a984bc21b@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #80
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L583a5a406bd9_4:
    adrp x14, _lb_text_0933383cad27@PAGE
    add x14, x14, _lb_text_0933383cad27@PAGEOFF
    str x14, [sp, #128]
    movz x9, #12
    str x9, [sp, #136]
    sub x9, x29, #96
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_kind
    mov w14, w0
    cmp w14, #0
    b.eq L583a5a406bd9_7
L583a5a406bd9_8:
    mov x9, #0
    str x9, [sp, #112]
    mov x9, #0
    str x9, [sp, #120]
    adrp x14, _lb_text_adb2b9d788d2@PAGE
    add x14, x14, _lb_text_adb2b9d788d2@PAGEOFF
    adrp x15, _lb_text_65e681471360@PAGE
    add x15, x15, _lb_text_65e681471360@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #112
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L583a5a406bd9_7:
    adrp x14, _lb_text_a62a05152b41@PAGE
    add x14, x14, _lb_text_a62a05152b41@PAGEOFF
    str x14, [sp, #96]
    movz x9, #12
    str x9, [sp, #104]
    sub x9, x29, #128
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_13is_photo_name
    mov w14, w0
    cbz w14, L583a5a406bd9_11
L583a5a406bd9_13:
    adrp x14, _lb_text_2b297356d16f@PAGE
    add x14, x14, _lb_text_2b297356d16f@PAGEOFF
    str x14, [sp, #80]
    movz x9, #12
    str x9, [sp, #88]
    sub x9, x29, #144
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_13is_photo_name
    mov w14, w0
    cbz w14, L583a5a406bd9_11
L583a5a406bd9_12:
    adrp x14, _lb_text_8786d47f332a@PAGE
    add x14, x14, _lb_text_8786d47f332a@PAGEOFF
    str x14, [sp, #64]
    movz x9, #6
    str x9, [sp, #72]
    sub x9, x29, #160
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_13is_photo_name
    mov w14, w0
    cbnz w14, L583a5a406bd9_10
L583a5a406bd9_11:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_40c66b5c00bf@PAGE
    add x14, x14, _lb_text_40c66b5c00bf@PAGEOFF
    adrp x15, _lb_text_3af9cf68d1f7@PAGE
    add x15, x15, _lb_text_3af9cf68d1f7@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #176
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L583a5a406bd9_10:
    adrp x14, _lb_text_07e773c0d416@PAGE
    add x14, x14, _lb_text_07e773c0d416@PAGEOFF
    str x14, [sp, #32]
    movz x9, #9
    str x9, [sp, #40]
    sub x9, x29, #192
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_13is_photo_name
    mov w14, w0
    cbnz w14, L583a5a406bd9_16
L583a5a406bd9_17:
    adrp x14, _lb_text_f49f839d7ad5@PAGE
    add x14, x14, _lb_text_f49f839d7ad5@PAGEOFF
    str x14, [sp, #16]
    movz x9, #3
    str x9, [sp, #24]
    sub x9, x29, #208
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_source_13is_photo_name
    mov w14, w0
    cbz w14, L583a5a406bd9_15
L583a5a406bd9_16:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_449c40cbae03@PAGE
    add x14, x14, _lb_text_449c40cbae03@PAGEOFF
    adrp x15, _lb_text_87acbe6751ba@PAGE
    add x15, x15, _lb_text_87acbe6751ba@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #224
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L583a5a406bd9_15:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.subsections_via_symbols
