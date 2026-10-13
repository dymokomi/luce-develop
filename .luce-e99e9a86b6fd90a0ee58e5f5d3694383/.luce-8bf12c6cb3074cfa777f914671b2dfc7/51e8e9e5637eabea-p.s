    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_test_40
_lb_test_40:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #48336
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
    str d8, [x16]
    sub x16, x29, #56
    str d9, [x16]
    sub x16, x29, #64
    str d10, [x16]
    sub x16, x29, #72
    str d11, [x16]
    sub x16, x29, #80
    str d12, [x16]
    sub x16, x29, #88
    str d13, [x16]
    sub x16, x29, #96
    str d14, [x16]
    sub x16, x29, #104
    str d15, [x16]
    movz x16, #15912
    sub x8, x29, x16
    bl _lb_24film_chemistry_reference_10portra_400
    ldrb w14, [x29, #-112]
    cbz w14, L31a7a7da814a_3
L31a7a7da814a_4:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #47536
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b L31a7a7da814a_1
L31a7a7da814a_3:
    movz x16, #15912
    sub x10, x29, x16
    movz x16, #31712
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    b L31a7a7da814a_2
L31a7a7da814a_1:
    mov x9, #0
    str x9, [sp, #784]
    mov x9, #0
    str x9, [sp, #792]
    adrp x14, _lb_text_554099b8f05b@PAGE
    add x14, x14, _lb_text_554099b8f05b@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #47552
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #47568
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #780]
    movz x16, #47568
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #47528
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_2:
    movz x16, #31712
    sub x10, x29, x16
    movz x16, #47512
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    fmov d24, #3.2500000
    fmov d0, d24
    movz x16, #47512
    sub x0, x29, x16
    mov x1, #0
    sub x8, x29, #416
    bl _lb_24film_chemistry_reference_14calibrated_c41
    ldrb w14, [x29, #-112]
    cbz w14, L31a7a7da814a_11
L31a7a7da814a_12:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #47592
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b L31a7a7da814a_9
L31a7a7da814a_11:
    sub x10, x29, #416
    sub x0, x29, #720
    mov x1, x10
    movz x2, #304
    bl _memcpy
    b L31a7a7da814a_10
L31a7a7da814a_9:
    mov x9, #0
    str x9, [sp, #728]
    mov x9, #0
    str x9, [sp, #736]
    adrp x14, _lb_text_cb6055b0d812@PAGE
    add x14, x14, _lb_text_cb6055b0d812@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #47608
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #47624
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #724]
    movz x16, #47624
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #47584
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x14, x0
    mov x15, x1
    str x14, [x19, #8]
    str x15, [x19, #16]
    str w20, [x19, #20]
    sub x11, x29, #128
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #128
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_10:
    sub x10, x29, #720
    movz x16, #47888
    sub x0, x29, x16
    mov x1, x10
    movz x2, #264
    bl _memcpy
    sub x10, x29, #456
    movz x16, #47928
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    fmov d8, #2.0000000
    ldr d24, [sp, #16544]
    ldr d25, L31a7a7da814a_k0
    fsub d9, d24, d25
    ldr d24, L31a7a7da814a_k1
    ldr d25, L31a7a7da814a_k2
    fdiv d24, d24, d25
    fadd d10, d9, d24
    ldr d24, [sp, #16560]
    fmov d11, #0.5000000
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L31a7a7da814a_115
L31a7a7da814a_114:
    fmov d12, d24
    b L31a7a7da814a_135
L31a7a7da814a_115:
L31a7a7da814a_116:
    fmov x15, d11
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L31a7a7da814a_119
L31a7a7da814a_118:
    fmov d12, d11
    b L31a7a7da814a_135
L31a7a7da814a_119:
L31a7a7da814a_120:
    fmov d25, xzr
    fcmp d24, d25
    b.ne L31a7a7da814a_123
L31a7a7da814a_125:
    fcmp d11, d25
    b.ne L31a7a7da814a_123
L31a7a7da814a_122:
    and x14, x14, x15
    fmov d12, x14
    b L31a7a7da814a_135
L31a7a7da814a_123:
L31a7a7da814a_124:
    fcmp d24, d11
    fcsel d12, d24, d11, gt
L31a7a7da814a_135:
    fmov d0, d8
    movz x16, #47888
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #200
    sub x8, x29, #336
    bl _lb_14film_chemistry_9make_grid
    ldrb w14, [x29, #-112]
    cbz w14, L31a7a7da814a_19
L31a7a7da814a_20:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #48176
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b L31a7a7da814a_17
L31a7a7da814a_19:
    sub x10, x29, #336
    sub x0, x29, #560
    mov x1, x10
    movz x2, #224
    bl _memcpy
    b L31a7a7da814a_18
L31a7a7da814a_17:
    mov x9, #0
    str x9, [sp, #144]
    mov x9, #0
    str x9, [sp, #152]
    adrp x14, _lb_text_90054d10a7c5@PAGE
    add x14, x14, _lb_text_90054d10a7c5@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #48192
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #48208
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #140]
    movz x16, #48208
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #48168
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x14, x0
    mov x15, x1
    str x14, [x19, #8]
    str x15, [x19, #16]
    str w20, [x19, #20]
    sub x11, x29, #128
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_release
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [sp, #448]
    ldr x12, [sp, #456]
    movz x10, #112
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, L31a7a7da814a_c1
    str x15, [sp, #0]
    str x12, [sp, #8]
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L31a7a7da814a_68
L31a7a7da814a_69:
    ldr x14, [x14, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x16, #48336
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L31a7a7da814a_68:
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #128
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_18:
    sub x10, x29, #560
    movz x16, #48152
    sub x0, x29, x16
    mov x1, x10
    movz x2, #224
    bl _memcpy
    ldr d13, L31a7a7da814a_k3
    fmov d14, xzr
    fmov d15, #1.0000000
    fmov d24, #10.0000000
    mov x19, #0
    .p2align 4
L31a7a7da814a_25:
    cmp x19, #200
    b.hs L31a7a7da814a_28
L31a7a7da814a_26:
    ucvtf d25, x19
    fadd d25, d25, d11
    fmul d25, d25, d8
    fsub d25, d25, d13
    fcmp d25, d14
    b.pl L31a7a7da814a_30
L31a7a7da814a_29:
    fdiv d25, d25, d12
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d25
    bl _lb_13luce_std_math_9exp_value
    fmov d25, d0
    sub x16, x29, #112
    ldr d24, [x16]
    fmul d25, d25, d11
    b L31a7a7da814a_31
L31a7a7da814a_30:
    fneg d25, d25
    fdiv d25, d25, d12
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d25
    bl _lb_13luce_std_math_9exp_value
    fmov d25, d0
    sub x16, x29, #112
    ldr d24, [x16]
    fmul d25, d25, d11
    fsub d25, d15, d25
L31a7a7da814a_31:
    sub x16, x29, #112
    str d24, [x16]
    sub x16, x29, #168
    str d25, [x16]
    fmov d0, d24
    fmov d1, d9
    bl _lb_13luce_std_math_9pow_value
    fmov d26, d0
    sub x16, x29, #112
    ldr d24, [x16]
    sub x16, x29, #168
    ldr d25, [x16]
    fsub d27, d15, d25
    fmul d26, d27, d26
    sub x16, x29, #112
    str d24, [x16]
    sub x16, x29, #176
    str d26, [x16]
    sub x16, x29, #168
    str d25, [x16]
    fmov d0, d24
    fmov d1, d10
    bl _lb_13luce_std_math_9pow_value
    fmov d27, d0
    sub x16, x29, #112
    ldr d24, [x16]
    sub x16, x29, #176
    ldr d26, [x16]
    sub x16, x29, #168
    ldr d25, [x16]
    fmul d25, d27, d25
    fadd d25, d25, d26
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d25
    bl _lb_13luce_std_math_11log10_value
    fmov d25, d0
    sub x16, x29, #112
    ldr d24, [x16]
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d25
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_at
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x16, x29, #112
    ldr d24, [x16]
    sub x10, x29, #160
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x20, #0
    .p2align 4
L31a7a7da814a_32:
    cmp x20, #3
    b.hs L31a7a7da814a_35
L31a7a7da814a_33:
    sub x10, x29, #136
    ldr d25, [x10, x20, lsl #3]
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d25
    mov x1, x20
    mov x2, x19
    movz x16, #48152
    sub x0, x29, x16
    bl _lb_14film_chemistry_expose
    sub x16, x29, #112
    ldr d24, [x16]
    add x20, x20, #1
    b L31a7a7da814a_32
L31a7a7da814a_35:
    add x19, x19, #1
    b L31a7a7da814a_25
L31a7a7da814a_28:
    ldr d24, [sp, #704]
    ldr d25, L31a7a7da814a_k4
    fmov d0, d24
    fmov d1, d25
    movz x16, #48152
    sub x0, x29, x16
    movz x16, #47872
    sub x1, x29, x16
    movz x16, #47696
    sub x2, x29, x16
    bl _lb_14film_chemistry_develop
    mov w14, w0
    cbz w14, L31a7a7da814a_38
L31a7a7da814a_39:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #48232
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b L31a7a7da814a_36
L31a7a7da814a_38:
    b L31a7a7da814a_37
L31a7a7da814a_36:
    mov x9, #0
    str x9, [sp, #88]
    mov x9, #0
    str x9, [sp, #96]
    adrp x14, _lb_text_6059aa98dc0f@PAGE
    add x14, x14, _lb_text_6059aa98dc0f@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #48248
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #48264
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #84]
    movz x16, #48264
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #48224
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x14, x0
    mov x15, x1
    str x14, [x19, #8]
    str x15, [x19, #16]
    str w20, [x19, #20]
    sub x11, x29, #128
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #48152
    sub x0, x29, x16
    bl _lb_14film_chemistry_Grid_release
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_release
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [sp, #448]
    ldr x12, [sp, #456]
    movz x10, #112
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, L31a7a7da814a_c2
    str x15, [sp, #0]
    str x12, [sp, #8]
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L31a7a7da814a_86
L31a7a7da814a_87:
    ldr x14, [x14, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x16, #48336
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L31a7a7da814a_86:
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #128
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_37:
    sub x0, x29, #1704
    mov x1, #0
    movz x2, #1600
    bl _memset
    adrp x19, _lb_24film_chemistry_reference_extinction@PAGE
    add x19, x19, _lb_24film_chemistry_reference_extinction@PAGEOFF
    ldr d9, L31a7a7da814a_k5
    add x20, x19, #8
    add x21, x19, #16
    mov x22, #0
    .p2align 4
L31a7a7da814a_44:
    cmp x22, #200
    b.hs L31a7a7da814a_47
L31a7a7da814a_45:
    mov x3, x22
    movz x16, #48152
    sub x0, x29, x16
    movz x1, #4
    mov x2, #0
    bl _lb_14film_chemistry_Grid_12record_total
    fmov d24, d0
    ldr d25, [x19]
    fmul d24, d24, d25
    fdiv d10, d24, d9
    mov x3, x22
    movz x16, #48152
    sub x0, x29, x16
    movz x1, #4
    movz x2, #1
    bl _lb_14film_chemistry_Grid_12record_total
    fmov d24, d0
    ldr d25, [x20]
    fmul d24, d24, d25
    fdiv d12, d24, d9
    mov x3, x22
    movz x16, #48152
    sub x0, x29, x16
    movz x1, #4
    movz x2, #2
    bl _lb_14film_chemistry_Grid_12record_total
    fmov d24, d0
    ldr d25, [x21]
    fmul d24, d24, d25
    fdiv d24, d24, d9
    str d10, [sp, #48]
    str d12, [sp, #56]
    str d24, [sp, #64]
    sub x9, x29, #1704
    add x23, x9, x22, lsl #3
    movz x16, #48288
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #47512
    sub x0, x29, x16
    bl _lb_10film_model_Model_scanned
    sub x16, x29, #1728
    str d0, [x16, #0]
    sub x16, x29, #1728
    str d1, [x16, #8]
    sub x16, x29, #1728
    str d2, [x16, #16]
    sub x16, x29, #1720
    ldr d24, [x16]
    str d24, [x23]
    add x22, x22, #1
    b L31a7a7da814a_44
L31a7a7da814a_47:
    sub x16, x29, #1664
    ldr d9, [x16]
    ldr d10, [x29, #-152]
    ldr d24, L31a7a7da814a_k6
    fmov d12, d14
    movz x19, #100
    movz x14, #100
    .p2align 4
L31a7a7da814a_48:
    cmp x14, #150
    b.hs L31a7a7da814a_51
L31a7a7da814a_49:
    sub x10, x29, #1704
    ldr d25, [x10, x14, lsl #3]
    fcmp d25, d12
    cset w15, gt
    cmp w15, #0
    fcsel d12, d25, d12, ne
    cmp w15, #0
    csel x19, x14, x19, ne
    add x14, x14, #1
    b L31a7a7da814a_48
L31a7a7da814a_51:
    fmov d15, d24
    movz x14, #50
    .p2align 4
L31a7a7da814a_55:
    cmp x14, #100
    b.hs L31a7a7da814a_58
L31a7a7da814a_56:
    sub x10, x29, #1704
    ldr d24, [x10, x14, lsl #3]
    fmov x15, d15
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L31a7a7da814a_137
L31a7a7da814a_136:
    b L31a7a7da814a_157
L31a7a7da814a_137:
L31a7a7da814a_138:
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L31a7a7da814a_141
L31a7a7da814a_140:
    fmov d15, d24
    b L31a7a7da814a_157
L31a7a7da814a_141:
L31a7a7da814a_142:
    fcmp d14, d15
    b.ne L31a7a7da814a_145
L31a7a7da814a_147:
    fcmp d24, d14
    b.ne L31a7a7da814a_145
L31a7a7da814a_144:
    orr x15, x15, x12
    fmov d15, x15
    b L31a7a7da814a_157
L31a7a7da814a_145:
L31a7a7da814a_146:
    fcmp d15, d24
    fcsel d15, d15, d24, mi
L31a7a7da814a_157:
    add x14, x14, #1
    b L31a7a7da814a_55
L31a7a7da814a_58:
    fsub d14, d10, d9
    movz x16, #49392
    sub sp, x29, x16
    movz x16, #49392
    sub x9, x29, x16
    movz x16, #48368
    sub x16, x29, x16
    str x9, [x16]
    movz x9, #1024
    movz x16, #48360
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #48352
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #48344
    sub x16, x29, x16
    str x9, [x16]
    adrp x14, _lb_text_a39b2844ce12@PAGE
    add x14, x14, _lb_text_a39b2844ce12@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #15
    movz x3, #1
    bl _lb_core_10stream_put
    fmov d0, d9
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_38e5953880b7@PAGE
    add x14, x14, _lb_text_38e5953880b7@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    fmov d0, d10
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_48f29aec81fa@PAGE
    add x14, x14, _lb_text_48f29aec81fa@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #7
    movz x3, #1
    bl _lb_core_10stream_put
    fmov d0, d14
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_2d40651715c6@PAGE
    add x14, x14, _lb_text_2d40651715c6@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #10
    movz x3, #1
    bl _lb_core_10stream_put
    fsub d24, d12, d10
    sub x16, x29, #112
    str d24, [x16]
    fmov d0, d24
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    sub x16, x29, #112
    ldr d24, [x16]
    adrp x20, _lb_text_ce3ec287b641@PAGE
    add x20, x20, _lb_text_ce3ec287b641@PAGEOFF
    sub x16, x29, #112
    str d24, [x16]
    mov x1, x20
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #2
    movz x3, #1
    bl _lb_core_10stream_put
    sub x16, x29, #112
    ldr d24, [x16]
    fdiv d24, d24, d14
    ldr d25, L31a7a7da814a_k7
    fmul d24, d24, d25
    sub x16, x29, #112
    str d25, [x16]
    fmov d0, d24
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    sub x16, x29, #112
    ldr d25, [x16]
    adrp x14, _lb_text_72c20479c320@PAGE
    add x14, x14, _lb_text_72c20479c320@PAGEOFF
    sub x16, x29, #112
    str d25, [x16]
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #4
    movz x3, #1
    bl _lb_core_10stream_put
    sub x16, x29, #112
    ldr d25, [x16]
    ucvtf d24, x19
    fadd d24, d24, d11
    fmul d24, d24, d8
    fsub d8, d24, d13
    sub x16, x29, #112
    str d25, [x16]
    fmov d0, d8
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    sub x16, x29, #112
    ldr d25, [x16]
    adrp x14, _lb_text_55b98d73f29a@PAGE
    add x14, x14, _lb_text_55b98d73f29a@PAGEOFF
    sub x16, x29, #112
    str d25, [x16]
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #16
    movz x3, #1
    bl _lb_core_10stream_put
    sub x16, x29, #112
    ldr d25, [x16]
    fsub d11, d9, d15
    sub x16, x29, #112
    str d25, [x16]
    fmov d0, d11
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    sub x16, x29, #112
    ldr d25, [x16]
    sub x16, x29, #112
    str d25, [x16]
    mov x1, x20
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #2
    movz x3, #1
    bl _lb_core_10stream_put
    sub x16, x29, #112
    ldr d25, [x16]
    fdiv d24, d11, d14
    fmul d24, d25, d24
    fmov d0, d24
    movz x16, #48368
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_df19076b85a6@PAGE
    add x14, x14, _lb_text_df19076b85a6@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #37
    movz x3, #1
    bl _lb_core_10stream_put
    adrp x14, _lb_text_ec3c9fbe6361@PAGE
    add x14, x14, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x1, x14
    movz x16, #48368
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    movz x16, #48368
    sub x0, x29, x16
    movz x1, #1
    bl _lb_core_12stream_flush
    movz x16, #48336
    sub sp, x29, x16
    fcmp d12, d10
    b.le L31a7a7da814a_60
L31a7a7da814a_61:
    fcmp d15, d9
    b.mi L31a7a7da814a_59
L31a7a7da814a_60:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_6a07b603fab7@PAGE
    add x14, x14, _lb_text_6a07b603fab7@PAGEOFF
    adrp x15, _lb_text_7512526eecdc@PAGE
    add x15, x15, _lb_text_7512526eecdc@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #48304
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
    sub x11, x29, #128
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #48152
    sub x0, x29, x16
    bl _lb_14film_chemistry_Grid_release
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_release
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [sp, #448]
    ldr x12, [sp, #456]
    movz x10, #112
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, L31a7a7da814a_c3
    str x15, [sp, #0]
    str x12, [sp, #8]
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L31a7a7da814a_100
L31a7a7da814a_101:
    ldr x14, [x14, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x16, #48336
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L31a7a7da814a_100:
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #128
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_59:
    fmov d24, #12.0000000
    fsub d24, d8, d24
    fabs d24, d24
    fmov d25, #6.0000000
    fcmp d24, d25
    b.mi L31a7a7da814a_63
L31a7a7da814a_64:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_de60e530bbb5@PAGE
    add x14, x14, _lb_text_de60e530bbb5@PAGEOFF
    adrp x15, _lb_text_1de8ef69758b@PAGE
    add x15, x15, _lb_text_1de8ef69758b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #48320
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
    sub x11, x29, #128
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #48152
    sub x0, x29, x16
    bl _lb_14film_chemistry_Grid_release
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_release
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [sp, #448]
    ldr x12, [sp, #456]
    movz x10, #112
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, L31a7a7da814a_c4
    str x15, [sp, #0]
    str x12, [sp, #8]
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L31a7a7da814a_106
L31a7a7da814a_107:
    ldr x14, [x14, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x16, #48336
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L31a7a7da814a_106:
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #128
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
    ldr x21, [x16]
    sub x16, x29, #32
    ldr x22, [x16]
    sub x16, x29, #40
    ldr x23, [x16]
    sub x16, x29, #48
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_63:
    movz x16, #48152
    sub x0, x29, x16
    bl _lb_14film_chemistry_Grid_release
    movz x16, #47928
    sub x0, x29, x16
    bl _lb_24film_chemistry_reference_Calibration_release
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [sp, #448]
    ldr x12, [sp, #456]
    movz x10, #112
    umulh x11, x12, x10
    mul x12, x12, x10
    cbnz x11, L31a7a7da814a_c5
    str x15, [sp, #0]
    str x12, [sp, #8]
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L31a7a7da814a_110
L31a7a7da814a_111:
    ldr x14, [x14, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x16, #48336
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L31a7a7da814a_110:
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31856
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31840
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    mov x0, #0
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
    ldr d8, [x16]
    sub x16, x29, #56
    ldr d9, [x16]
    sub x16, x29, #64
    ldr d10, [x16]
    sub x16, x29, #72
    ldr d11, [x16]
    sub x16, x29, #80
    ldr d12, [x16]
    sub x16, x29, #88
    ldr d13, [x16]
    sub x16, x29, #96
    ldr d14, [x16]
    sub x16, x29, #104
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_c1:
    adrp x0, _lb_text_7f6e2c8656be@PAGE
    add x0, x0, _lb_text_7f6e2c8656be@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L31a7a7da814a_c2:
    adrp x0, _lb_text_7f6e2c8656be@PAGE
    add x0, x0, _lb_text_7f6e2c8656be@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L31a7a7da814a_c3:
    adrp x0, _lb_text_7f6e2c8656be@PAGE
    add x0, x0, _lb_text_7f6e2c8656be@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L31a7a7da814a_c4:
    adrp x0, _lb_text_7f6e2c8656be@PAGE
    add x0, x0, _lb_text_7f6e2c8656be@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L31a7a7da814a_c5:
    adrp x0, _lb_text_7f6e2c8656be@PAGE
    add x0, x0, _lb_text_7f6e2c8656be@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L31a7a7da814a_k0:
    .quad 4601778099247172813
L31a7a7da814a_k1:
    .quad 4601922214435248669
L31a7a7da814a_k2:
    .quad 4603759683083215831
L31a7a7da814a_k3:
    .quad 4641240890982006784
L31a7a7da814a_k4:
    .quad 4587366580439587226
L31a7a7da814a_k5:
    .quad 4711630319722168320
L31a7a7da814a_k6:
    .quad 4741671816366391296
L31a7a7da814a_k7:
    .quad 4636737291354636288


    .p2align 2
    .globl _main
_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    str x19, [sp, #760]
    str x20, [sp, #752]
    str x21, [sp, #744]
    str x22, [sp, #736]
    str x23, [sp, #728]
    str x24, [sp, #720]
    str x25, [sp, #712]
    str x26, [sp, #704]
    str x27, [sp, #696]
    str x28, [sp, #688]
    sub x16, x29, #84
    str w0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    bl _lb_init_globals
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    adrp x14, _lb_memory_11c_allocator@PAGE
    add x14, x14, _lb_memory_11c_allocator@PAGEOFF
    adrp x15, _lb_vt_memory_CAllocator_Allocator@PAGE
    add x15, x15, _lb_vt_memory_CAllocator_Allocator@PAGEOFF
    str x14, [x19]
    str x15, [x19, #8]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x20, #0]
    adrp x14, _lb_text_9337422336ec@PAGE
    add x14, x14, _lb_text_9337422336ec@PAGEOFF
    adrp x19, _lb_core_12test_running@PAGE
    add x19, x19, _lb_core_12test_running@PAGEOFF
    str x14, [x19]
    add x21, x19, #8
    movz x9, #72
    str x9, [x21]
    adrp x22, _lb_testing_arena@PAGE
    add x22, x22, _lb_testing_arena@PAGEOFF
    adrp x23, _lb_testing_11arena_bytes@PAGE
    add x23, x23, _lb_testing_11arena_bytes@PAGEOFF
    str x23, [x22]
    add x24, x22, #8
    movz x9, #16, lsl #16
    str x9, [x24]
    add x25, x22, #16
    mov x9, #0
    str x9, [x25]
    adrp x26, _lb_testing_saved@PAGE
    add x26, x26, _lb_testing_saved@PAGEOFF
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    adrp x27, _lb_vt_memory_FixedBuffer_Allocator@PAGE
    add x27, x27, _lb_vt_memory_FixedBuffer_Allocator@PAGEOFF
    str x22, [x20]
    str x27, [x20, #8]
    adrp x28, _lb_testing_12current_seed@PAGE
    add x28, x28, _lb_testing_12current_seed@PAGEOFF
    movz x9, #1
    str x9, [x28]
    bl _lb_test_0
    mov w14, w0
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    str w14, [sp, #680]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    ldr w14, [sp, #680]
    add x15, x15, #8
    sub x11, x29, #128
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #652]
    adrp x12, _lb_text_6e883b67d54a@PAGE
    add x12, x12, _lb_text_6e883b67d54a@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #128
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_5f406f88b008@PAGE
    add x14, x14, _lb_text_5f406f88b008@PAGEOFF
    str x14, [x19]
    movz x9, #51
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #31154
    movk x9, #40503, lsl #16
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_1
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #144
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #636]
    adrp x12, _lb_text_70ee6f4919c8@PAGE
    add x12, x12, _lb_text_70ee6f4919c8@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #144
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_aee854872403@PAGE
    add x14, x14, _lb_text_aee854872403@PAGEOFF
    str x14, [x19]
    movz x9, #76
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #62307
    movk x9, #15470, lsl #16
    movk x9, #1, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_2
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #160
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #620]
    adrp x12, _lb_text_7d295ed25f65@PAGE
    add x12, x12, _lb_text_7d295ed25f65@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #160
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_4cbcef27b66c@PAGE
    add x14, x14, _lb_text_4cbcef27b66c@PAGEOFF
    str x14, [x19]
    movz x9, #87
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #27924
    movk x9, #55974, lsl #16
    movk x9, #1, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_3
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #176
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #604]
    adrp x12, _lb_text_c6d9b60ba4b9@PAGE
    add x12, x12, _lb_text_c6d9b60ba4b9@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #176
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_fab3866bcaa4@PAGE
    add x14, x14, _lb_text_fab3866bcaa4@PAGEOFF
    str x14, [x19]
    movz x9, #42
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #59077
    movk x9, #30941, lsl #16
    movk x9, #2, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_4
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #192
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #588]
    adrp x12, _lb_text_153a2f99b84a@PAGE
    add x12, x12, _lb_text_153a2f99b84a@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #192
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_1ecb84882ef3@PAGE
    add x14, x14, _lb_text_1ecb84882ef3@PAGEOFF
    str x14, [x19]
    movz x9, #48
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #24694
    movk x9, #5909, lsl #16
    movk x9, #3, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_5
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #208
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #572]
    adrp x12, _lb_text_2a9fb221a03a@PAGE
    add x12, x12, _lb_text_2a9fb221a03a@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #208
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_32d898523cfc@PAGE
    add x14, x14, _lb_text_32d898523cfc@PAGEOFF
    str x14, [x19]
    movz x9, #43
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #55847
    movk x9, #46412, lsl #16
    movk x9, #3, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_6
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #224
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #556]
    adrp x12, _lb_text_9a0486d2af72@PAGE
    add x12, x12, _lb_text_9a0486d2af72@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #224
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_aa4d05341cab@PAGE
    add x14, x14, _lb_text_aa4d05341cab@PAGEOFF
    str x14, [x19]
    movz x9, #25
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #21464
    movk x9, #21380, lsl #16
    movk x9, #4, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_7
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #240
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #540]
    adrp x12, _lb_text_3683ff6ff150@PAGE
    add x12, x12, _lb_text_3683ff6ff150@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #240
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_119ad3e7177e@PAGE
    add x14, x14, _lb_text_119ad3e7177e@PAGEOFF
    str x14, [x19]
    movz x9, #59
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #52617
    movk x9, #61883, lsl #16
    movk x9, #4, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_8
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #256
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #524]
    adrp x12, _lb_text_dfcce9c24d95@PAGE
    add x12, x12, _lb_text_dfcce9c24d95@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #256
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_aaeb8dfecdd6@PAGE
    add x14, x14, _lb_text_aaeb8dfecdd6@PAGEOFF
    str x14, [x19]
    movz x9, #44
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #18234
    movk x9, #36851, lsl #16
    movk x9, #5, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_9
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #272
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #508]
    adrp x12, _lb_text_28a0781c9805@PAGE
    add x12, x12, _lb_text_28a0781c9805@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #272
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_8e732dc73d44@PAGE
    add x14, x14, _lb_text_8e732dc73d44@PAGEOFF
    str x14, [x19]
    movz x9, #52
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #49387
    movk x9, #11818, lsl #16
    movk x9, #6, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_10
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #288
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #492]
    adrp x12, _lb_text_f7aab473a4ad@PAGE
    add x12, x12, _lb_text_f7aab473a4ad@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #288
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_f71aa9131327@PAGE
    add x14, x14, _lb_text_f71aa9131327@PAGEOFF
    str x14, [x19]
    movz x9, #73
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #15004
    movk x9, #52322, lsl #16
    movk x9, #6, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_11
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #304
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #476]
    adrp x12, _lb_text_875fa64d2b76@PAGE
    add x12, x12, _lb_text_875fa64d2b76@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #304
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_a048c3678dcd@PAGE
    add x14, x14, _lb_text_a048c3678dcd@PAGEOFF
    str x14, [x19]
    movz x9, #91
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #46157
    movk x9, #27289, lsl #16
    movk x9, #7, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_12
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #320
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #460]
    adrp x12, _lb_text_abdd44caafad@PAGE
    add x12, x12, _lb_text_abdd44caafad@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #320
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_5ff7077ec9cd@PAGE
    add x14, x14, _lb_text_5ff7077ec9cd@PAGEOFF
    str x14, [x19]
    movz x9, #61
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #11774
    movk x9, #2257, lsl #16
    movk x9, #8, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_13
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #336
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #444]
    adrp x12, _lb_text_37d6c56274e4@PAGE
    add x12, x12, _lb_text_37d6c56274e4@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #336
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_ea9cab3d71e2@PAGE
    add x14, x14, _lb_text_ea9cab3d71e2@PAGEOFF
    str x14, [x19]
    movz x9, #70
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #42927
    movk x9, #42760, lsl #16
    movk x9, #8, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_14
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #352
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #428]
    adrp x12, _lb_text_219eec6bb73b@PAGE
    add x12, x12, _lb_text_219eec6bb73b@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #352
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_cb7611338757@PAGE
    add x14, x14, _lb_text_cb7611338757@PAGEOFF
    str x14, [x19]
    movz x9, #62
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #8544
    movk x9, #17728, lsl #16
    movk x9, #9, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_15
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #368
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #412]
    adrp x12, _lb_text_56c6af561d98@PAGE
    add x12, x12, _lb_text_56c6af561d98@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #368
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_c4a7a0933171@PAGE
    add x14, x14, _lb_text_c4a7a0933171@PAGEOFF
    str x14, [x19]
    movz x9, #64
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #39697
    movk x9, #58231, lsl #16
    movk x9, #9, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_16
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #384
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #396]
    adrp x12, _lb_text_172389d13c4d@PAGE
    add x12, x12, _lb_text_172389d13c4d@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #384
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_6b5c7c3830be@PAGE
    add x14, x14, _lb_text_6b5c7c3830be@PAGEOFF
    str x14, [x19]
    movz x9, #73
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #5314
    movk x9, #33199, lsl #16
    movk x9, #10, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_17
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #400
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #380]
    adrp x12, _lb_text_a92831329918@PAGE
    add x12, x12, _lb_text_a92831329918@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #400
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_390b24fb1eee@PAGE
    add x14, x14, _lb_text_390b24fb1eee@PAGEOFF
    str x14, [x19]
    movz x9, #46
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #36467
    movk x9, #8166, lsl #16
    movk x9, #11, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_18
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #416
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #364]
    adrp x12, _lb_text_565ada65ab46@PAGE
    add x12, x12, _lb_text_565ada65ab46@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #416
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_84f7172d46f1@PAGE
    add x14, x14, _lb_text_84f7172d46f1@PAGEOFF
    str x14, [x19]
    movz x9, #71
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #2084
    movk x9, #48670, lsl #16
    movk x9, #11, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_19
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #432
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #348]
    adrp x12, _lb_text_1ce22d4b8e85@PAGE
    add x12, x12, _lb_text_1ce22d4b8e85@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #432
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_4a3435210c33@PAGE
    add x14, x14, _lb_text_4a3435210c33@PAGEOFF
    str x14, [x19]
    movz x9, #20
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #33237
    movk x9, #23637, lsl #16
    movk x9, #12, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_20
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #448
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #332]
    adrp x12, _lb_text_7ac9b3d4fa5d@PAGE
    add x12, x12, _lb_text_7ac9b3d4fa5d@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #448
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_fb7ec5f569e4@PAGE
    add x14, x14, _lb_text_fb7ec5f569e4@PAGEOFF
    str x14, [x19]
    movz x9, #58
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #64390
    movk x9, #64140, lsl #16
    movk x9, #12, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_21
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #464
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #316]
    adrp x12, _lb_text_c155a3ca9615@PAGE
    add x12, x12, _lb_text_c155a3ca9615@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #464
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_ee681cf6ae2c@PAGE
    add x14, x14, _lb_text_ee681cf6ae2c@PAGEOFF
    str x14, [x19]
    movz x9, #88
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #30007
    movk x9, #39108, lsl #16
    movk x9, #13, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_22
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #480
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #300]
    adrp x12, _lb_text_60343b954c6c@PAGE
    add x12, x12, _lb_text_60343b954c6c@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #480
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_282d3cdafc39@PAGE
    add x14, x14, _lb_text_282d3cdafc39@PAGEOFF
    str x14, [x19]
    movz x9, #48
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #61160
    movk x9, #14075, lsl #16
    movk x9, #14, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_23
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #496
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #284]
    adrp x12, _lb_text_7f95ebc32ae5@PAGE
    add x12, x12, _lb_text_7f95ebc32ae5@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #496
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_f55c1de03b8c@PAGE
    add x14, x14, _lb_text_f55c1de03b8c@PAGEOFF
    str x14, [x19]
    movz x9, #62
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #26777
    movk x9, #54579, lsl #16
    movk x9, #14, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_24
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #512
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #268]
    adrp x12, _lb_text_c4eb8aa54303@PAGE
    add x12, x12, _lb_text_c4eb8aa54303@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #512
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_31156a5cd724@PAGE
    add x14, x14, _lb_text_31156a5cd724@PAGEOFF
    str x14, [x19]
    movz x9, #58
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #57930
    movk x9, #29546, lsl #16
    movk x9, #15, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_25
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #528
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #252]
    adrp x12, _lb_text_0ed59c72aabc@PAGE
    add x12, x12, _lb_text_0ed59c72aabc@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #528
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_2a3ef9149743@PAGE
    add x14, x14, _lb_text_2a3ef9149743@PAGEOFF
    str x14, [x19]
    movz x9, #70
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #23547
    movk x9, #4514, lsl #16
    movk x9, #16, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_26
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #544
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #236]
    adrp x12, _lb_text_8f861c9f513d@PAGE
    add x12, x12, _lb_text_8f861c9f513d@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #544
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_468a21618486@PAGE
    add x14, x14, _lb_text_468a21618486@PAGEOFF
    str x14, [x19]
    movz x9, #72
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #54700
    movk x9, #45017, lsl #16
    movk x9, #16, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_27
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #560
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #220]
    adrp x12, _lb_text_c1a87f6c1e1f@PAGE
    add x12, x12, _lb_text_c1a87f6c1e1f@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #560
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_91f652d7490e@PAGE
    add x14, x14, _lb_text_91f652d7490e@PAGEOFF
    str x14, [x19]
    movz x9, #52
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #20317
    movk x9, #19985, lsl #16
    movk x9, #17, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_28
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #576
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #204]
    adrp x12, _lb_text_dd5ed1bbf44e@PAGE
    add x12, x12, _lb_text_dd5ed1bbf44e@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #576
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_74c5c6f91885@PAGE
    add x14, x14, _lb_text_74c5c6f91885@PAGEOFF
    str x14, [x19]
    movz x9, #44
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #51470
    movk x9, #60488, lsl #16
    movk x9, #17, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_29
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #592
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #188]
    adrp x12, _lb_text_09f8c6385d8b@PAGE
    add x12, x12, _lb_text_09f8c6385d8b@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #592
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_08f388786a82@PAGE
    add x14, x14, _lb_text_08f388786a82@PAGEOFF
    str x14, [x19]
    movz x9, #77
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #17087
    movk x9, #35456, lsl #16
    movk x9, #18, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_30
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #608
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #172]
    adrp x12, _lb_text_fbc881aa5884@PAGE
    add x12, x12, _lb_text_fbc881aa5884@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #608
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_aa4b3520d61b@PAGE
    add x14, x14, _lb_text_aa4b3520d61b@PAGEOFF
    str x14, [x19]
    movz x9, #47
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #48240
    movk x9, #10423, lsl #16
    movk x9, #19, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_31
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #624
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #156]
    adrp x12, _lb_text_b4ba384437cd@PAGE
    add x12, x12, _lb_text_b4ba384437cd@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #624
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_b4d0705522a6@PAGE
    add x14, x14, _lb_text_b4d0705522a6@PAGEOFF
    str x14, [x19]
    movz x9, #79
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #13857
    movk x9, #50927, lsl #16
    movk x9, #19, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_32
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #640
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #140]
    adrp x12, _lb_text_8c7901e6ab18@PAGE
    add x12, x12, _lb_text_8c7901e6ab18@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #640
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_21adb5cb1dbb@PAGE
    add x14, x14, _lb_text_21adb5cb1dbb@PAGEOFF
    str x14, [x19]
    movz x9, #65
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #45010
    movk x9, #25894, lsl #16
    movk x9, #20, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_33
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #656
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #124]
    adrp x12, _lb_text_f2ff00a42291@PAGE
    add x12, x12, _lb_text_f2ff00a42291@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #656
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_a2283bfa19d4@PAGE
    add x14, x14, _lb_text_a2283bfa19d4@PAGEOFF
    str x14, [x19]
    movz x9, #57
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #10627
    movk x9, #862, lsl #16
    movk x9, #21, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_34
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #672
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #108]
    adrp x12, _lb_text_7a0ef5df566a@PAGE
    add x12, x12, _lb_text_7a0ef5df566a@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #672
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_a7aa14e6373a@PAGE
    add x14, x14, _lb_text_a7aa14e6373a@PAGEOFF
    str x14, [x19]
    movz x9, #41
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #41780
    movk x9, #41365, lsl #16
    movk x9, #21, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_35
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #688
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #92]
    adrp x12, _lb_text_060076754e50@PAGE
    add x12, x12, _lb_text_060076754e50@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #688
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_42d02fc37292@PAGE
    add x14, x14, _lb_text_42d02fc37292@PAGEOFF
    str x14, [x19]
    movz x9, #69
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #7397
    movk x9, #16333, lsl #16
    movk x9, #22, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_36
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #704
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #76]
    adrp x12, _lb_text_dad2fa051b5c@PAGE
    add x12, x12, _lb_text_dad2fa051b5c@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #704
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_67832fa4d562@PAGE
    add x14, x14, _lb_text_67832fa4d562@PAGEOFF
    str x14, [x19]
    movz x9, #75
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #38550
    movk x9, #56836, lsl #16
    movk x9, #22, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_37
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #720
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #60]
    adrp x12, _lb_text_1345759573e5@PAGE
    add x12, x12, _lb_text_1345759573e5@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #720
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_0b125c07abdb@PAGE
    add x14, x14, _lb_text_0b125c07abdb@PAGEOFF
    str x14, [x19]
    movz x9, #50
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #4167
    movk x9, #31804, lsl #16
    movk x9, #23, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_38
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #736
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #44]
    adrp x12, _lb_text_0a65e563746a@PAGE
    add x12, x12, _lb_text_0a65e563746a@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #736
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_cbc9170f98c1@PAGE
    add x14, x14, _lb_text_cbc9170f98c1@PAGEOFF
    str x14, [x19]
    movz x9, #57
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #35320
    movk x9, #6771, lsl #16
    movk x9, #24, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_39
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #752
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #28]
    adrp x12, _lb_text_e399b289864e@PAGE
    add x12, x12, _lb_text_e399b289864e@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #752
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    str x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    ldr x15, [sp, #672]
    adrp x14, _lb_text_ab10d1039b9c@PAGE
    add x14, x14, _lb_text_ab10d1039b9c@PAGEOFF
    str x14, [x19]
    movz x9, #59
    str x9, [x21]
    str x23, [x22]
    movz x9, #16, lsl #16
    str x9, [x24]
    mov x9, #0
    str x9, [x25]
    ldp x16, x17, [x20, #0]
    stp x16, x17, [x26, #0]
    str x22, [x20]
    str x27, [x20, #8]
    movz x9, #937
    movk x9, #47275, lsl #16
    movk x9, #24, lsl #32
    str x9, [x28]
    str x15, [sp, #672]
    bl _lb_test_40
    mov w14, w0
    ldr x15, [sp, #672]
    ldp x16, x17, [x26, #0]
    stp x16, x17, [x20, #0]
    sub x11, x29, #768
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #12]
    adrp x12, _lb_text_98dde4f0b82e@PAGE
    add x12, x12, _lb_text_98dde4f0b82e@PAGEOFF
    str x15, [sp, #672]
    mov x0, x14
    mov x1, x12
    sub x9, x29, #768
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_11test_report
    ldr x15, [sp, #672]
    ldr x0, [x15]
    ldr x1, [x15, #8]
    bl _lb_core_15message_handled
    bl _lb_core_12test_summary
    mov w14, w0
    mov x0, x14
    ldr x19, [sp, #760]
    ldr x20, [sp, #752]
    ldr x21, [sp, #744]
    ldr x22, [sp, #736]
    ldr x23, [sp, #728]
    ldr x24, [sp, #720]
    ldr x25, [sp, #712]
    ldr x26, [sp, #704]
    ldr x27, [sp, #696]
    ldr x28, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_begin
_lb_testing_begin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    mov x19, x0
    adrp x20, _lb_testing_arena@PAGE
    add x20, x20, _lb_testing_arena@PAGEOFF
    adrp x14, _lb_testing_11arena_bytes@PAGE
    add x14, x14, _lb_testing_11arena_bytes@PAGEOFF
    str x14, [x20]
    movz x9, #16, lsl #16
    str x9, [x20, #8]
    mov x9, #0
    str x9, [x20, #16]
    adrp x21, _lb_testing_saved@PAGE
    add x21, x21, _lb_testing_saved@PAGEOFF
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x21, #0]
    adrp x15, _lb_vt_memory_FixedBuffer_Allocator@PAGE
    add x15, x15, _lb_vt_memory_FixedBuffer_Allocator@PAGEOFF
    str x20, [x14]
    str x15, [x14, #8]
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    movz x10, #31153
    movk x10, #40503, lsl #16
    umulh x11, x19, x10
    mul x15, x19, x10
    cbnz x11, L22b34836e88f_c1
    adds x15, x15, #1
    b.cs L22b34836e88f_c2
    str x15, [x14]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22b34836e88f_c1:
    adrp x0, _lb_text_e127019fe30f@PAGE
    add x0, x0, _lb_text_e127019fe30f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L22b34836e88f_c2:
    adrp x0, _lb_text_e127019fe30f@PAGE
    add x0, x0, _lb_text_e127019fe30f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11test_report
_lb_core_11test_report:
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
    str x27, [sp, #72]
    sub x16, x29, #120
    str x2, [x16]
    str x3, [x16, #8]
    uxtb w19, w0
    mov x20, x1
    adrp x21, _lb_core_15assert_position@PAGE
    add x21, x21, _lb_core_15assert_position@PAGEOFF
    ldr x14, [x21]
    mov x0, x14
    bl _strlen
    mov x14, x0
    cmp x14, #0
    b.ls L2c5ac79172d9_2
L2c5ac79172d9_1:
    ldr x14, [x21]
    mov x20, x14
    b L2c5ac79172d9_3
L2c5ac79172d9_2:
L2c5ac79172d9_3:
    mov x0, x20
    bl _strlen
    mov x22, x0
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    str x14, [x21]
    str w19, [sp, #56]
    ldr x19, [sp, #24]
    ldr x21, [sp, #32]
    adrp x15, _lb_core_12test_running@PAGE
    add x15, x15, _lb_core_12test_running@PAGEOFF
    ldr x23, [x15]
    add x12, x15, #8
    ldr x24, [x12]
    str x14, [x15]
    mov x9, #0
    str x9, [x12]
    ldrb w14, [sp, #56]
    cbz w14, L2c5ac79172d9_5
L2c5ac79172d9_4:
    adrp x15, _lb_core_12tests_failed@PAGE
    add x15, x15, _lb_core_12tests_failed@PAGEOFF
    ldrsw x12, [x15]
    adds w12, w12, #1
    b.vs L2c5ac79172d9_c1
    str w12, [x15]
    b L2c5ac79172d9_6
L2c5ac79172d9_5:
    adrp x15, _lb_core_12tests_passed@PAGE
    add x15, x15, _lb_core_12tests_passed@PAGEOFF
    ldrsw x12, [x15]
    adds w12, w12, #1
    b.vs L2c5ac79172d9_c2
    str w12, [x15]
L2c5ac79172d9_6:
    cbnz w14, L2c5ac79172d9_8
L2c5ac79172d9_7:
    adrp x19, _lb_text_db4023f3c37d@PAGE
    add x19, x19, _lb_text_db4023f3c37d@PAGEOFF
    mov x20, #0
L2c5ac79172d9_12:
    cmp x20, #6
    b.hs L2c5ac79172d9_14
    .p2align 4
L2c5ac79172d9_13:
    movz x9, #6
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x21, x0
    cmp x21, #0
    b.ge L2c5ac79172d9_21
L2c5ac79172d9_23:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_32
L2c5ac79172d9_31:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_21
L2c5ac79172d9_20:
    cmp x20, #6
    b.lo L2c5ac79172d9_13
    b L2c5ac79172d9_14
L2c5ac79172d9_21:
    cmp x21, #0
    b.gt L2c5ac79172d9_26
L2c5ac79172d9_25:
    b L2c5ac79172d9_14
L2c5ac79172d9_26:
    adds x20, x20, x21
    b.cs L2c5ac79172d9_c3
    cmp x20, #6
    b.lo L2c5ac79172d9_13
L2c5ac79172d9_14:
L2c5ac79172d9_35:
    mov x19, #0
L2c5ac79172d9_36:
    cmp x19, x24
    b.hs L2c5ac79172d9_38
    .p2align 4
L2c5ac79172d9_37:
    sub x14, x24, x19
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x23, x19
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x20, x0
    cmp x20, #0
    b.ge L2c5ac79172d9_45
L2c5ac79172d9_47:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_56
L2c5ac79172d9_55:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_45
L2c5ac79172d9_44:
    cmp x19, x24
    b.lo L2c5ac79172d9_37
    b L2c5ac79172d9_38
L2c5ac79172d9_45:
    cmp x20, #0
    b.gt L2c5ac79172d9_50
L2c5ac79172d9_49:
    b L2c5ac79172d9_38
L2c5ac79172d9_50:
    adds x19, x19, x20
    b.cs L2c5ac79172d9_c4
    cmp x19, x24
    b.lo L2c5ac79172d9_37
L2c5ac79172d9_38:
L2c5ac79172d9_59:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L2c5ac79172d9_60:
    cmp x20, #1
    b.hs L2c5ac79172d9_62
    .p2align 4
L2c5ac79172d9_61:
    movz x9, #1
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x21, x0
    cmp x21, #0
    b.ge L2c5ac79172d9_69
L2c5ac79172d9_71:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_80
L2c5ac79172d9_79:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_69
L2c5ac79172d9_68:
    cmp x20, #1
    b.lo L2c5ac79172d9_61
    b L2c5ac79172d9_62
L2c5ac79172d9_69:
    cmp x21, #0
    b.gt L2c5ac79172d9_74
L2c5ac79172d9_73:
    b L2c5ac79172d9_62
L2c5ac79172d9_74:
    add x20, x20, x21
    cmp x20, #1
    b.lo L2c5ac79172d9_61
L2c5ac79172d9_62:
L2c5ac79172d9_83:
    b L2c5ac79172d9_230
L2c5ac79172d9_8:
L2c5ac79172d9_9:
    adrp x25, _lb_text_30e6b10a8d45@PAGE
    add x25, x25, _lb_text_30e6b10a8d45@PAGEOFF
    mov x26, #0
L2c5ac79172d9_84:
    cmp x26, #6
    b.hs L2c5ac79172d9_86
    .p2align 4
L2c5ac79172d9_85:
    movz x9, #6
    sub x14, x9, x26
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x25, x26
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x27, x0
    cmp x27, #0
    b.ge L2c5ac79172d9_93
L2c5ac79172d9_95:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_104
L2c5ac79172d9_103:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_93
L2c5ac79172d9_92:
    cmp x26, #6
    b.lo L2c5ac79172d9_85
    b L2c5ac79172d9_86
L2c5ac79172d9_93:
    cmp x27, #0
    b.gt L2c5ac79172d9_98
L2c5ac79172d9_97:
    b L2c5ac79172d9_86
L2c5ac79172d9_98:
    adds x26, x26, x27
    b.cs L2c5ac79172d9_c5
    cmp x26, #6
    b.lo L2c5ac79172d9_85
L2c5ac79172d9_86:
L2c5ac79172d9_107:
    mov x25, #0
L2c5ac79172d9_108:
    cmp x25, x24
    b.hs L2c5ac79172d9_110
    .p2align 4
L2c5ac79172d9_109:
    sub x14, x24, x25
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x23, x25
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x26, x0
    cmp x26, #0
    b.ge L2c5ac79172d9_117
L2c5ac79172d9_119:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_128
L2c5ac79172d9_127:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_117
L2c5ac79172d9_116:
    cmp x25, x24
    b.lo L2c5ac79172d9_109
    b L2c5ac79172d9_110
L2c5ac79172d9_117:
    cmp x26, #0
    b.gt L2c5ac79172d9_122
L2c5ac79172d9_121:
    b L2c5ac79172d9_110
L2c5ac79172d9_122:
    adds x25, x25, x26
    b.cs L2c5ac79172d9_c6
    cmp x25, x24
    b.lo L2c5ac79172d9_109
L2c5ac79172d9_110:
L2c5ac79172d9_131:
    adrp x23, _lb_text_d2a7257a4051@PAGE
    add x23, x23, _lb_text_d2a7257a4051@PAGEOFF
    mov x24, #0
L2c5ac79172d9_132:
    cmp x24, #7
    b.hs L2c5ac79172d9_134
    .p2align 4
L2c5ac79172d9_133:
    movz x9, #7
    sub x14, x9, x24
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x23, x24
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x25, x0
    cmp x25, #0
    b.ge L2c5ac79172d9_141
L2c5ac79172d9_143:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_152
L2c5ac79172d9_151:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_141
L2c5ac79172d9_140:
    cmp x24, #7
    b.lo L2c5ac79172d9_133
    b L2c5ac79172d9_134
L2c5ac79172d9_141:
    cmp x25, #0
    b.gt L2c5ac79172d9_146
L2c5ac79172d9_145:
    b L2c5ac79172d9_134
L2c5ac79172d9_146:
    adds x24, x24, x25
    b.cs L2c5ac79172d9_c7
    cmp x24, #7
    b.lo L2c5ac79172d9_133
L2c5ac79172d9_134:
L2c5ac79172d9_155:
    mov x23, #0
L2c5ac79172d9_156:
    cmp x23, x22
    b.hs L2c5ac79172d9_158
    .p2align 4
L2c5ac79172d9_157:
    sub x14, x22, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x23
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L2c5ac79172d9_165
L2c5ac79172d9_167:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_176
L2c5ac79172d9_175:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_165
L2c5ac79172d9_164:
    cmp x23, x22
    b.lo L2c5ac79172d9_157
    b L2c5ac79172d9_158
L2c5ac79172d9_165:
    cmp x24, #0
    b.gt L2c5ac79172d9_170
L2c5ac79172d9_169:
    b L2c5ac79172d9_158
L2c5ac79172d9_170:
    adds x23, x23, x24
    b.cs L2c5ac79172d9_c8
    cmp x23, x22
    b.lo L2c5ac79172d9_157
L2c5ac79172d9_158:
L2c5ac79172d9_179:
    adrp x20, _lb_text_3c214eb16494@PAGE
    add x20, x20, _lb_text_3c214eb16494@PAGEOFF
    mov x22, #0
L2c5ac79172d9_180:
    cmp x22, #2
    b.hs L2c5ac79172d9_182
    .p2align 4
L2c5ac79172d9_181:
    movz x9, #2
    sub x14, x9, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x22
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L2c5ac79172d9_189
L2c5ac79172d9_191:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_200
L2c5ac79172d9_199:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_189
L2c5ac79172d9_188:
    cmp x22, #2
    b.lo L2c5ac79172d9_181
    b L2c5ac79172d9_182
L2c5ac79172d9_189:
    cmp x23, #0
    b.gt L2c5ac79172d9_194
L2c5ac79172d9_193:
    b L2c5ac79172d9_182
L2c5ac79172d9_194:
    adds x22, x22, x23
    b.cs L2c5ac79172d9_c9
    cmp x22, #2
    b.lo L2c5ac79172d9_181
L2c5ac79172d9_182:
L2c5ac79172d9_203:
    mov x20, #0
L2c5ac79172d9_204:
    cmp x20, x21
    b.hs L2c5ac79172d9_206
    .p2align 4
L2c5ac79172d9_205:
    sub x14, x21, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L2c5ac79172d9_213
L2c5ac79172d9_215:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_224
L2c5ac79172d9_223:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_213
L2c5ac79172d9_212:
    cmp x20, x21
    b.lo L2c5ac79172d9_205
    b L2c5ac79172d9_206
L2c5ac79172d9_213:
    cmp x22, #0
    b.gt L2c5ac79172d9_218
L2c5ac79172d9_217:
    b L2c5ac79172d9_206
L2c5ac79172d9_218:
    adds x20, x20, x22
    b.cs L2c5ac79172d9_c10
    cmp x20, x21
    b.lo L2c5ac79172d9_205
L2c5ac79172d9_206:
L2c5ac79172d9_227:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L2c5ac79172d9_228:
    cmp x20, #1
    b.hs L2c5ac79172d9_230
    .p2align 4
L2c5ac79172d9_229:
    movz x9, #1
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x21, x0
    cmp x21, #0
    b.ge L2c5ac79172d9_237
L2c5ac79172d9_239:
    bl ___error
    mov x14, x0
    cbz x14, L2c5ac79172d9_248
L2c5ac79172d9_247:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2c5ac79172d9_237
L2c5ac79172d9_236:
    cmp x20, #1
    b.lo L2c5ac79172d9_229
    b L2c5ac79172d9_230
L2c5ac79172d9_237:
    cmp x21, #0
    b.gt L2c5ac79172d9_242
L2c5ac79172d9_241:
    b L2c5ac79172d9_230
L2c5ac79172d9_242:
    add x20, x20, x21
    cmp x20, #1
    b.lo L2c5ac79172d9_229
L2c5ac79172d9_230:
L2c5ac79172d9_251:
L2c5ac79172d9_11:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr x27, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2c5ac79172d9_32:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_56:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_80:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_104:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_128:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_152:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_176:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_200:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_224:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_248:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c1:
    adrp x0, _lb_text_b2b50652b3c6@PAGE
    add x0, x0, _lb_text_b2b50652b3c6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c2:
    adrp x0, _lb_text_2dffb1f304a5@PAGE
    add x0, x0, _lb_text_2dffb1f304a5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c4:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c5:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c6:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c7:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c8:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c9:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2c5ac79172d9_c10:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_CAllocator_allocate
_lb_memory_CAllocator_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #24
    str x0, [x16]
    mov x19, x1
    mov x14, x2
    cmp x19, #0
    b.ne La7a1ee25ac29_2
La7a1ee25ac29_1:
    movz x9, #8
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    movz x9, #1
    strb w9, [sp, #32]
    ldrb w14, [sp, #63]
    strb w14, [sp, #33]
    ldrh w14, [sp, #62]
    strh w14, [sp, #34]
    ldr w14, [sp, #60]
    str w14, [sp, #36]
    sub x1, x29, #64
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7a1ee25ac29_2:
La7a1ee25ac29_3:
    cmp x14, #0
    b.eq La7a1ee25ac29_6
La7a1ee25ac29_8:
    subs x15, x14, #1
    b.cc La7a1ee25ac29_c1
    and x15, x15, x14
    cmp x15, #0
    b.eq La7a1ee25ac29_6
La7a1ee25ac29_5:
    sub x11, x29, #40
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x1, x29, #64
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7a1ee25ac29_6:
La7a1ee25ac29_7:
    cmp x14, #8
    movz x11, #8
    csel x14, x14, x11, hi
    mov x9, #0
    str x9, [sp, #8]
    mov x1, x14
    mov x2, x19
    sub x0, x29, #72
    bl _posix_memalign
    mov w14, w0
    cmp w14, #0
    b.eq La7a1ee25ac29_14
La7a1ee25ac29_13:
    sub x11, x29, #40
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x1, x29, #64
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7a1ee25ac29_14:
La7a1ee25ac29_15:
    ldr x14, [sp, #8]
    cbz x14, La7a1ee25ac29_18
La7a1ee25ac29_17:
    b La7a1ee25ac29_19
La7a1ee25ac29_18:
    sub x11, x29, #40
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #40
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x1, x29, #64
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7a1ee25ac29_19:
    str x14, [sp, #16]
    str x19, [sp, #24]
    movz x9, #1
    strb w9, [sp, #32]
    ldrb w14, [sp, #63]
    strb w14, [sp, #33]
    ldrh w14, [sp, #62]
    strh w14, [sp, #34]
    ldr w14, [sp, #60]
    str w14, [sp, #36]
    sub x1, x29, #64
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7a1ee25ac29_c1:
    adrp x0, _lb_text_e7d5f1e22dd7@PAGE
    add x0, x0, _lb_text_e7d5f1e22dd7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_CAllocator_resize
_lb_memory_CAllocator_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #8
    str x0, [x16]
    sub x16, x29, #24
    str x1, [x16]
    str x2, [x16, #8]
    mov x14, x3
    ldr x15, [sp, #32]
    cmp x14, x15
    cset w14, ls
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_CAllocator_release
_lb_memory_CAllocator_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    str x2, [x16, #8]
    ldr x14, [sp, #64]
    cmp x14, #0
    b.ne L04309720f641_2
L04309720f641_1:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L04309720f641_2:
    adrp x14, _lb_memory_diagnostic@PAGE
    add x14, x14, _lb_memory_diagnostic@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L04309720f641_6
L04309720f641_5:
    ldr x14, [sp, #56]
    mov x0, x14
    bl _free
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L04309720f641_6:
    adrp x19, _lb_memory_12records_lock@PAGE
    add x19, x19, _lb_memory_12records_lock@PAGEOFF
    mov x0, x19
    bl _lb_memory_lock
    adrp x20, _lb_memory_quarantine@PAGE
    add x20, x20, _lb_memory_quarantine@PAGEOFF
    ldr x14, [sp, #56]
    mov x15, #0
L04309720f641_24:
    cmp x15, #256
    b.hs L04309720f641_27
    .p2align 4
L04309720f641_25:
    movz x10, #24
    mul x12, x15, x10
    add x12, x20, x12
    ldr x13, [x12]
    ldrb w12, [x12, #16]
    cbz w12, L04309720f641_29
L04309720f641_31:
    cmp x14, x13
    b.ne L04309720f641_33
L04309720f641_32:
    movz w14, #1
    b L04309720f641_37
L04309720f641_33:
L04309720f641_29:
L04309720f641_30:
    add x15, x15, #1
    cmp x15, #256
    b.lo L04309720f641_25
L04309720f641_27:
    mov w14, #0
L04309720f641_37:
    cbz w14, L04309720f641_10
L04309720f641_9:
    mov x0, x19
    bl _lb_memory_unlock
    adrp x14, _lb_text_56395c18a0bf@PAGE
    add x14, x14, _lb_text_56395c18a0bf@PAGEOFF
    str x14, [sp, #24]
    movz x9, #39
    str x9, [sp, #32]
    adrp x14, _lb_text_ece21c9a3310@PAGE
    add x14, x14, _lb_text_ece21c9a3310@PAGEOFF
    mov x0, x14
    sub x9, x29, #88
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L04309720f641_10:
L04309720f641_11:
    ldr x14, [sp, #56]
    ldr x15, [sp, #64]
    mov x0, x14
    mov x2, x15
    movz x1, #221
    bl _memset
    mov x14, x0
    cbz x14, L04309720f641_13
L04309720f641_12:
    adrp x21, _lb_memory_15quarantine_next@PAGE
    add x21, x21, _lb_memory_15quarantine_next@PAGEOFF
    ldr x14, [x21]
    and x14, x14, #255
    movz x10, #24
    mul x14, x14, x10
    add x20, x20, x14
    ldrb w14, [x20, #16]
    cbz w14, L04309720f641_17
L04309720f641_19:
    ldr x22, [x20]
    ldr x14, [x20, #8]
    mov x15, #0
L04309720f641_38:
    cmp x15, x14
    b.hs L04309720f641_41
    .p2align 4
L04309720f641_39:
    ldrb w12, [x22, x15]
    cmp w12, #221
    b.eq L04309720f641_43
L04309720f641_42:
    mov w14, #0
    b L04309720f641_47
L04309720f641_43:
    add x15, x15, #1
    cmp x15, x14
    b.lo L04309720f641_39
L04309720f641_41:
    movz w14, #1
L04309720f641_47:
    cbnz w14, L04309720f641_21
L04309720f641_20:
    mov x0, x19
    bl _lb_memory_unlock
    adrp x14, _lb_text_1c52b617e5a9@PAGE
    add x14, x14, _lb_text_1c52b617e5a9@PAGEOFF
    str x14, [sp, #8]
    movz x9, #62
    str x9, [sp, #16]
    adrp x14, _lb_text_904f49a55ce1@PAGE
    add x14, x14, _lb_text_904f49a55ce1@PAGEOFF
    mov x0, x14
    sub x9, x29, #104
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L04309720f641_21:
L04309720f641_22:
    mov x0, x22
    bl _free
L04309720f641_17:
L04309720f641_18:
    ldr x14, [sp, #56]
    ldr x15, [sp, #64]
    str x14, [x20]
    str x15, [x20, #8]
    movz x9, #1
    strb w9, [x20, #16]
    ldrb w14, [sp, #79]
    strb w14, [x20, #17]
    ldrh w14, [sp, #78]
    strh w14, [x20, #18]
    ldr w14, [sp, #76]
    str w14, [x20, #20]
    ldr x14, [x21]
    adds x14, x14, #1
    b.cs L04309720f641_c1
    str x14, [x21]
    mov x0, x19
    bl _lb_memory_unlock
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L04309720f641_13:
    adrp x0, _lb_text_167649b399ad@PAGE
    add x0, x0, _lb_text_167649b399ad@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L04309720f641_c1:
    adrp x0, _lb_text_225383b33319@PAGE
    add x0, x0, _lb_text_225383b33319@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_FixedBuffer_allocate
_lb_memory_FixedBuffer_allocate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    str x21, [sp, #96]
    str x22, [sp, #88]
    str x23, [sp, #80]
    mov x19, x0
    mov x20, x1
    mov x14, x2
    cmp x20, #0
    b.ne Lf3d9e60c9a4f_2
Lf3d9e60c9a4f_1:
    ldr x14, [x19]
    str x14, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    movz x9, #1
    strb w9, [sp, #24]
    ldrb w14, [sp, #79]
    strb w14, [sp, #25]
    ldrh w14, [sp, #78]
    strh w14, [sp, #26]
    ldr w14, [sp, #76]
    str w14, [sp, #28]
    sub x1, x29, #120
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    ldr x22, [sp, #88]
    ldr x23, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf3d9e60c9a4f_2:
    cmp x14, #0
    movz x11, #1
    csel x14, x14, x11, hi
    mov x21, x14
    ldr x22, [x19, #16]
    ldr x14, [x19]
    ldr x23, [x19, #8]
    cmp x22, x23
    b.ls Lf3d9e60c9a4f_23
Lf3d9e60c9a4f_22:
    sub x11, x29, #64
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #64
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    mov x14, #0
    mov x15, #0
    b Lf3d9e60c9a4f_40
Lf3d9e60c9a4f_23:
    mov x0, x14
    mov x1, x22
    movz x2, #64
    sub x3, x29, #128
    bl _lb_core_6qadd_u
    mov w14, w0
    ldr x15, [sp, #0]
    and w14, w14, #255
    cbz w14, Lf3d9e60c9a4f_27
Lf3d9e60c9a4f_26:
    b Lf3d9e60c9a4f_28
Lf3d9e60c9a4f_27:
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #96
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    mov x14, #0
    mov x15, #0
    b Lf3d9e60c9a4f_40
Lf3d9e60c9a4f_28:
    cmp x21, #0
    b.eq Lf3d9e60c9a4f_30
Lf3d9e60c9a4f_31:
    udiv x11, x15, x21
    msub x14, x11, x21, x15
    cmp x14, #0
    b.ne Lf3d9e60c9a4f_33
Lf3d9e60c9a4f_32:
    mov x14, #0
    b Lf3d9e60c9a4f_34
Lf3d9e60c9a4f_33:
    subs x14, x21, x14
    b.cc Lf3d9e60c9a4f_c1
Lf3d9e60c9a4f_34:
    sub x15, x23, x22
    cmp x14, x15
    b.ls Lf3d9e60c9a4f_36
Lf3d9e60c9a4f_35:
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #96
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    mov x14, #0
    mov x15, #0
    b Lf3d9e60c9a4f_40
Lf3d9e60c9a4f_36:
    adds x14, x22, x14
    b.cs Lf3d9e60c9a4f_c2
    str x14, [sp, #32]
    movz x9, #1
    strb w9, [sp, #40]
    sub x10, x29, #96
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #56]
    str x14, [sp, #64]
    str x15, [sp, #72]
Lf3d9e60c9a4f_40:
    str x14, [sp, #64]
    str x15, [sp, #72]
    ldrb w15, [sp, #72]
    cbz w15, Lf3d9e60c9a4f_11
Lf3d9e60c9a4f_10:
    b Lf3d9e60c9a4f_12
Lf3d9e60c9a4f_11:
    sub x11, x29, #72
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #72
    sub x11, x29, #120
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x1, x29, #120
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    ldr x22, [sp, #88]
    ldr x23, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf3d9e60c9a4f_12:
    ldr x15, [x19, #8]
    cmp x14, x15
    b.hi Lf3d9e60c9a4f_14
Lf3d9e60c9a4f_17:
    sub x12, x15, x14
    cmp x20, x12
    b.ls Lf3d9e60c9a4f_15
Lf3d9e60c9a4f_14:
    sub x11, x29, #72
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #72
    sub x11, x29, #120
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x1, x29, #120
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    ldr x22, [sp, #88]
    ldr x23, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf3d9e60c9a4f_15:
    adds x12, x20, x14
    b.cs Lf3d9e60c9a4f_c3
    str x12, [x19, #16]
    ldr x13, [x19]
    cmp x12, x15
    b.hi Lf3d9e60c9a4f_c4
    cmp x14, x12
    b.hi Lf3d9e60c9a4f_20
Lf3d9e60c9a4f_19:
    add x14, x13, x14
    str x14, [sp, #8]
    str x20, [sp, #16]
    movz x9, #1
    strb w9, [sp, #24]
    ldrb w14, [sp, #79]
    strb w14, [sp, #25]
    ldrh w14, [sp, #78]
    strh w14, [sp, #26]
    ldr w14, [sp, #76]
    str w14, [sp, #28]
    sub x1, x29, #120
    sub x16, x29, #8
    ldr x0, [x16]
    ldp x16, x17, [x1, #0]
    stp x16, x17, [x0, #0]
    ldr x16, [x1, #16]
    str x16, [x0, #16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    ldr x22, [sp, #88]
    ldr x23, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf3d9e60c9a4f_30:
    adrp x0, _lb_text_d6e93485ac4b@PAGE
    add x0, x0, _lb_text_d6e93485ac4b@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
Lf3d9e60c9a4f_20:
    adrp x0, _lb_text_3da52cc4ade1@PAGE
    add x0, x0, _lb_text_3da52cc4ade1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf3d9e60c9a4f_c1:
    adrp x0, _lb_text_1371da679736@PAGE
    add x0, x0, _lb_text_1371da679736@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf3d9e60c9a4f_c2:
    adrp x0, _lb_text_a9dc294a99dd@PAGE
    add x0, x0, _lb_text_a9dc294a99dd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf3d9e60c9a4f_c3:
    adrp x0, _lb_text_659a7c4f4e25@PAGE
    add x0, x0, _lb_text_659a7c4f4e25@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf3d9e60c9a4f_c4:
    adrp x0, _lb_text_3da52cc4ade1@PAGE
    add x0, x0, _lb_text_3da52cc4ade1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_FixedBuffer_resize
_lb_memory_FixedBuffer_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #24
    str x1, [x16]
    str x2, [x16, #8]
    mov x14, x0
    mov x15, x3
    ldr x12, [sp, #32]
    cmp x15, x12
    b.ne Lca8314e69d59_2
Lca8314e69d59_1:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_2:
    cmp x12, #0
    b.ne Lca8314e69d59_6
Lca8314e69d59_5:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_6:
    ldr x13, [sp, #24]
    ldr x7, [x14]
    movn x10, #0
    and x13, x13, x10
    movn x10, #0
    and x7, x7, x10
    cmp x13, x7
    b.hs Lca8314e69d59_25
Lca8314e69d59_24:
    mov w13, #0
    mov x7, #0
    b Lca8314e69d59_29
Lca8314e69d59_25:
    sub x7, x13, x7
    movz w13, #1
Lca8314e69d59_29:
    cbz w13, Lca8314e69d59_10
Lca8314e69d59_9:
    b Lca8314e69d59_11
Lca8314e69d59_10:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_11:
    ldr x13, [x14, #16]
    cmp x7, x13
    b.hi Lca8314e69d59_13
Lca8314e69d59_16:
    sub x13, x13, x7
    cmp x13, x12
    b.eq Lca8314e69d59_14
Lca8314e69d59_13:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_14:
    ldr x12, [x14, #8]
    cmp x7, x12
    b.hi Lca8314e69d59_18
Lca8314e69d59_21:
    sub x12, x12, x7
    cmp x15, x12
    b.ls Lca8314e69d59_19
Lca8314e69d59_18:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_19:
    adds x15, x15, x7
    b.cs Lca8314e69d59_c1
    str x15, [x14, #16]
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lca8314e69d59_c1:
    adrp x0, _lb_text_f4819b05d50b@PAGE
    add x0, x0, _lb_text_f4819b05d50b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_FixedBuffer_release
_lb_memory_FixedBuffer_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x1, [x16]
    str x2, [x16, #8]
    mov x19, x0
    ldr x20, [sp, #16]
    cmp x20, #0
    b.ne L74a86f973e24_2
L74a86f973e24_1:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74a86f973e24_2:
L74a86f973e24_3:
    adrp x14, _lb_memory_diagnostic@PAGE
    add x14, x14, _lb_memory_diagnostic@PAGEOFF
    ldrb w14, [x14]
    cbz w14, L74a86f973e24_6
L74a86f973e24_5:
    ldr x14, [sp, #8]
    mov x0, x14
    mov x2, x20
    movz x1, #221
    bl _memset
    mov x14, x0
    cbz x14, L74a86f973e24_9
L74a86f973e24_8:
L74a86f973e24_6:
L74a86f973e24_7:
    ldr x14, [sp, #8]
    ldr x15, [x19]
    subs x14, x14, x15
    b.cc L74a86f973e24_c1
    adds x15, x20, x14
    b.cs L74a86f973e24_c2
    ldr x12, [x19, #16]
    cmp x15, x12
    b.ne L74a86f973e24_11
L74a86f973e24_10:
    str x14, [x19, #16]
L74a86f973e24_11:
L74a86f973e24_12:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L74a86f973e24_9:
    adrp x0, _lb_text_d9b15aac46e7@PAGE
    add x0, x0, _lb_text_d9b15aac46e7@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L74a86f973e24_c1:
    adrp x0, _lb_text_1284d0d980f0@PAGE
    add x0, x0, _lb_text_1284d0d980f0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L74a86f973e24_c2:
    adrp x0, _lb_text_c16fbbd5fea8@PAGE
    add x0, x0, _lb_text_c16fbbd5fea8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
.subsections_via_symbols
