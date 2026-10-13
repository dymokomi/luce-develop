    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_test_6
_lb_test_6:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #12432
    sub sp, sp, x16
    str d8, [sp, #12424]
    str d9, [sp, #12416]
    str d10, [sp, #12408]
    str d11, [sp, #12400]
    sub x8, x29, #3088
    bl _lb_settings_defaults
    sub x10, x29, #3088
    movz x16, #12256
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d8, #20.0000000
    fmov d0, d8
    movz x16, #12256
    sub x0, x29, x16
    movz x1, #4
    bl _lb_settings_Settings_set
    ldr d9, L88a904d38438_k0
    fmov d0, d9
    movz x16, #12256
    sub x0, x29, x16
    movz x1, #19
    bl _lb_settings_Settings_set
    fmov d24, #30.0000000
    fmov d0, d24
    movz x16, #12256
    sub x0, x29, x16
    movz x1, #84
    bl _lb_settings_Settings_set
    movz x16, #12256
    sub x0, x29, x16
    movz x16, #6144
    sub x8, x29, x16
    bl _lb_settings_compile
    movz x16, #6144
    sub x10, x29, x16
    sub x0, x29, #3088
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #4
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c1
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fcmp d8, d24
    b.eq L88a904d38438_1
L88a904d38438_2:
    mov x9, #0
    str x9, [sp, #160]
    mov x9, #0
    str x9, [sp, #168]
    adrp x14, _lb_text_db75572261ab@PAGE
    add x14, x14, _lb_text_db75572261ab@PAGEOFF
    adrp x15, _lb_text_eb5c48e5fc97@PAGE
    add x15, x15, _lb_text_eb5c48e5fc97@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12272
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_1:
    movz x9, #9
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c2
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fmov d8, #3.0000000
    fcmp d24, d8
    b.eq L88a904d38438_4
L88a904d38438_5:
    mov x9, #0
    str x9, [sp, #144]
    mov x9, #0
    str x9, [sp, #152]
    adrp x14, _lb_text_de5b1dc71f91@PAGE
    add x14, x14, _lb_text_de5b1dc71f91@PAGEOFF
    adrp x15, _lb_text_b34b21e7c7ad@PAGE
    add x15, x15, _lb_text_b34b21e7c7ad@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12288
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_4:
    movz x9, #117
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c3
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    mov x9, #0
    scvtf d25, x9
    fcmp d25, d24
    b.eq L88a904d38438_7
L88a904d38438_8:
    mov x9, #0
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #136]
    adrp x14, _lb_text_dda0f8390f7b@PAGE
    add x14, x14, _lb_text_dda0f8390f7b@PAGEOFF
    adrp x15, _lb_text_a89020177ea0@PAGE
    add x15, x15, _lb_text_a89020177ea0@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12304
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_7:
    movz x9, #84
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c4
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fmov d10, xzr
    fcmp d24, d10
    b.eq L88a904d38438_10
L88a904d38438_11:
    mov x9, #0
    str x9, [sp, #112]
    mov x9, #0
    str x9, [sp, #120]
    adrp x14, _lb_text_0cbca8485cfc@PAGE
    add x14, x14, _lb_text_0cbca8485cfc@PAGEOFF
    adrp x15, _lb_text_c3f8e6119bb7@PAGE
    add x15, x15, _lb_text_c3f8e6119bb7@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12320
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_10:
    fmov d11, #1.5000000
    fmov d0, d11
    movz x16, #12256
    sub x0, x29, x16
    movz x1, #2
    bl _lb_settings_Settings_set
    movz x9, #1
    str w9, [sp, #9328]
    movz x9, #1
    cmp w9, #0
    movz x10, #1
    movz x11, #1
    csel w14, w10, w11, ne
    and w14, w14, #255
    cbnz w14, L88a904d38438_72
L88a904d38438_75:
    b L88a904d38438_73
L88a904d38438_72:
    ldrb w14, [sp, #2656]
L88a904d38438_73:
    and w14, w14, #255
    cbz w14, L88a904d38438_44
L88a904d38438_43:
    sub x16, x29, #3104
    ldrb w14, [x16]
    strb w14, [sp, #2688]
L88a904d38438_44:
L88a904d38438_45:
    movz x16, #12256
    sub x0, x29, x16
    movz x16, #6144
    sub x8, x29, x16
    bl _lb_settings_compile
    movz x16, #6144
    sub x10, x29, x16
    sub x0, x29, #3088
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #2
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c5
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fcmp d10, d24
    b.eq L88a904d38438_13
L88a904d38438_14:
    mov x9, #0
    str x9, [sp, #96]
    mov x9, #0
    str x9, [sp, #104]
    adrp x14, _lb_text_08ea68cfa7f3@PAGE
    add x14, x14, _lb_text_08ea68cfa7f3@PAGEOFF
    adrp x15, _lb_text_03b14d0f6f1b@PAGE
    add x15, x15, _lb_text_03b14d0f6f1b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12336
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_13:
    movz x9, #2
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c6
    movz x16, #12256
    sub x10, x29, x16
    ldr d24, [x10, x14, lsl #3]
    fcmp d11, d24
    b.eq L88a904d38438_16
L88a904d38438_17:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_155da90ae1ef@PAGE
    add x14, x14, _lb_text_155da90ae1ef@PAGEOFF
    adrp x15, _lb_text_81fec90fc088@PAGE
    add x15, x15, _lb_text_81fec90fc088@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12352
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_16:
    movz x0, #1
    sub x8, x29, #3744
    bl _lb_recipe_mode
    sub x10, x29, #3744
    movz x16, #9856
    sub x0, x29, x16
    mov x1, x10
    movz x2, #656
    bl _memcpy
    movz x16, #12256
    sub x0, x29, x16
    movz x16, #6144
    sub x8, x29, x16
    bl _lb_settings_compile
    movz x16, #6144
    sub x10, x29, x16
    sub x0, x29, #3088
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #4
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c7
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fcmp d10, d24
    b.eq L88a904d38438_19
L88a904d38438_20:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_cc83dbd8b6b3@PAGE
    add x14, x14, _lb_text_cc83dbd8b6b3@PAGEOFF
    adrp x15, _lb_text_94357a52a432@PAGE
    add x15, x15, _lb_text_94357a52a432@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12368
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_19:
    movz x9, #19
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c8
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fcmp d9, d24
    b.eq L88a904d38438_22
L88a904d38438_23:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_d94c740bddb5@PAGE
    add x14, x14, _lb_text_d94c740bddb5@PAGEOFF
    adrp x15, _lb_text_117184249b47@PAGE
    add x15, x15, _lb_text_117184249b47@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12384
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_22:
    movz x9, #117
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c9
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    movz x9, #3
    scvtf d9, x9
    fcmp d24, d9
    b.eq L88a904d38438_25
L88a904d38438_26:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_6d6a2baff7bd@PAGE
    add x14, x14, _lb_text_6d6a2baff7bd@PAGEOFF
    adrp x15, _lb_text_5493d650c7cb@PAGE
    add x15, x15, _lb_text_5493d650c7cb@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12400
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_25:
    movz x16, #9856
    sub x0, x29, x16
    movz x1, #6
    bl _lb_recipe_Recipe_11set_compare
    ldr x14, [sp, #3224]
    mov x1, x14
    movz x16, #12256
    sub x0, x29, x16
    movz x16, #9200
    sub x8, x29, x16
    bl _lb_settings_10compile_to
    movz x16, #9200
    sub x10, x29, x16
    movz x16, #6144
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #9
    str w9, [sp, #6272]
    movz x16, #6160
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c10
    movz x16, #6144
    sub x10, x29, x16
    ldr d24, [x10, x14, lsl #3]
    fcmp d8, d24
    b.ne L88a904d38438_29
L88a904d38438_30:
    movz x9, #117
    str w9, [sp, #6272]
    movz x16, #6160
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c11
    movz x16, #6144
    sub x10, x29, x16
    ldr d24, [x10, x14, lsl #3]
    fcmp d9, d24
    b.ne L88a904d38438_28
L88a904d38438_29:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_6ff5272bbb06@PAGE
    add x14, x14, _lb_text_6ff5272bbb06@PAGEOFF
    adrp x15, _lb_text_d6c80a5642c9@PAGE
    add x15, x15, _lb_text_d6c80a5642c9@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12416
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_28:
    movz x9, #1
    cmp w9, #0
    movz x10, #1
    movz x11, #1
    csel w14, w10, w11, ne
    and w14, w14, #255
    cbnz w14, L88a904d38438_79
L88a904d38438_82:
    b L88a904d38438_80
L88a904d38438_79:
    ldrb w14, [sp, #2656]
L88a904d38438_80:
    and w14, w14, #255
    cbz w14, L88a904d38438_62
L88a904d38438_61:
    movz x9, #2
    str x9, [sp, #3216]
    ldr x14, [sp, #3224]
    cmp x14, #2
    b.ne L88a904d38438_65
L88a904d38438_64:
    movn x9, #0
    str x9, [sp, #3224]
L88a904d38438_65:
L88a904d38438_66:
L88a904d38438_62:
L88a904d38438_63:
    movz x16, #12256
    sub x0, x29, x16
    movz x16, #6144
    sub x8, x29, x16
    bl _lb_settings_compile
    movz x16, #6144
    sub x10, x29, x16
    sub x0, x29, #3088
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #9
    str w9, [sp, #9328]
    sub x16, x29, #3104
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L88a904d38438_c12
    sub x10, x29, #3088
    ldr d24, [x10, x14, lsl #3]
    fcmp d10, d24
    b.eq L88a904d38438_32
L88a904d38438_33:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_c51a97a477c4@PAGE
    add x14, x14, _lb_text_c51a97a477c4@PAGEOFF
    adrp x15, _lb_text_17131564d600@PAGE
    add x15, x15, _lb_text_17131564d600@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12432
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_32:
    mov x0, #0
    ldr d8, [sp, #12424]
    ldr d9, [sp, #12416]
    ldr d10, [sp, #12408]
    ldr d11, [sp, #12400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L88a904d38438_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c5:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c6:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c7:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c8:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c9:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c10:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c11:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L88a904d38438_c12:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L88a904d38438_k0:
    .quad 4632233691727265792


    .p2align 2
    .globl _lb_settings_compile
_lb_settings_compile:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6128
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    mov x14, x0
    ldr x15, [x14, #3040]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #3064
    bl _lb_settings_10compile_to
    sub x10, x29, #3064
    movz x16, #6120
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #6120
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #3056
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_settings_10compile_to
_lb_settings_10compile_to:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #12976
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #12960]
    str x20, [sp, #12952]
    str x21, [sp, #12944]
    str x22, [sp, #12936]
    str x23, [sp, #12928]
    str x24, [sp, #12920]
    str x25, [sp, #12912]
    str x26, [sp, #12904]
    str x27, [sp, #12896]
    str x28, [sp, #12888]
    mov x19, x0
    mov x20, x1
    mov x10, x19
    movz x16, #12312
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    add x14, x19, #2400
    mov x10, x14
    movz x16, #12968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #656
    bl _memcpy
    str x20, [sp, #648]
    movz x16, #6200
    sub x8, x29, x16
    bl _lb_settings_defaults
    movz x16, #6200
    sub x10, x29, x16
    sub x0, x29, #3144
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    adrp x19, _lb_parameters_parameters@PAGE
    add x19, x19, _lb_parameters_parameters@PAGEOFF
    adrp x20, _lb_recipe_owned@PAGE
    add x20, x20, _lb_recipe_owned@PAGEOFF
    mov x21, #0
L8ceb162ee6db_1:
    cmp x21, #118
    b.hs L8ceb162ee6db_4
    .p2align 4
L8ceb162ee6db_2:
    movz x10, #80
    mul x14, x21, x10
    add x14, x19, x14
    ldr x22, [x14, #32]
    ldr x23, [x14, #40]
    mov x24, #0
L8ceb162ee6db_36:
    cmp x24, #16
    b.hs L8ceb162ee6db_39
    .p2align 4
L8ceb162ee6db_37:
    add x14, x20, x24, lsl #4
    ldr x25, [x14]
    ldr x26, [x14, #8]
    mov x14, #0
    mov x27, #0
L8ceb162ee6db_40:
    cmp x27, x26
    b.hi L8ceb162ee6db_43
    .p2align 4
L8ceb162ee6db_41:
    cmp x26, x27
    cset w28, eq
    cbnz w28, L8ceb162ee6db_44
L8ceb162ee6db_47:
    cmp x27, x26
    b.hs L8ceb162ee6db_c1
    ldrb w15, [x25, x27]
    cmp w15, #124
    b.ne L8ceb162ee6db_45
L8ceb162ee6db_44:
    cmp x14, x26
    b.hi L8ceb162ee6db_c2
    cmp x14, x27
    b.hi L8ceb162ee6db_52
L8ceb162ee6db_51:
    add x15, x25, x14
    sub x14, x27, x14
    cmp x14, x23
    cset w12, eq
    cbnz w12, L8ceb162ee6db_53
L8ceb162ee6db_59:
    b L8ceb162ee6db_54
L8ceb162ee6db_53:
    mov x0, x15
    mov x1, x22
    mov x2, x14
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L8ceb162ee6db_54:
    and w14, w12, #255
    cbz w14, L8ceb162ee6db_49
L8ceb162ee6db_48:
    b L8ceb162ee6db_58
L8ceb162ee6db_49:
L8ceb162ee6db_50:
    adds x14, x27, #1
    b.cs L8ceb162ee6db_c3
    b L8ceb162ee6db_46
L8ceb162ee6db_45:
L8ceb162ee6db_46:
    cbnz w28, L8ceb162ee6db_43
L8ceb162ee6db_56:
    add x27, x27, #1
    cmp x27, x26
    b.ls L8ceb162ee6db_41
L8ceb162ee6db_43:
    add x24, x24, #1
    cmp x24, #16
    b.lo L8ceb162ee6db_37
L8ceb162ee6db_39:
    movn x24, #0
L8ceb162ee6db_58:
    cmp x24, #0
    b.lt L8ceb162ee6db_6
L8ceb162ee6db_8:
    mov x1, x24
    movz x16, #12968
    sub x0, x29, x16
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L8ceb162ee6db_6
L8ceb162ee6db_5:
    lsl x14, x21, #3
    movz x16, #12312
    sub x9, x29, x16
    add x15, x9, x14
    sub x10, x29, #3144
    ldr d24, [x10, x14]
    str d24, [x15]
L8ceb162ee6db_6:
L8ceb162ee6db_7:
    add x21, x21, #1
    cmp x21, #118
    b.lo L8ceb162ee6db_2
L8ceb162ee6db_4:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #8
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L8ceb162ee6db_10
L8ceb162ee6db_9:
    mov x19, #0
L8ceb162ee6db_12:
    cmp x19, #5
    b.hs L8ceb162ee6db_15
    .p2align 4
L8ceb162ee6db_13:
    movz x10, #264
    mul x14, x19, x10
    movz x16, #11368
    sub x9, x29, x16
    add x20, x9, x14
    sub x0, x29, #352
    mov x1, #0
    movz x2, #264
    bl _memset
    sub x10, x29, #352
    mov x0, x20
    mov x1, x10
    movz x2, #264
    bl _memcpy
    add x19, x19, #1
    cmp x19, #5
    b.lo L8ceb162ee6db_13
L8ceb162ee6db_15:
L8ceb162ee6db_10:
L8ceb162ee6db_11:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #13
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L8ceb162ee6db_17
L8ceb162ee6db_16:
    mov x9, #0
    str x9, [sp, #3056]
L8ceb162ee6db_17:
L8ceb162ee6db_18:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #5
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L8ceb162ee6db_20
L8ceb162ee6db_19:
    fmov d24, xzr
    fmov d0, d24
    movz x16, #12312
    sub x0, x29, x16
    movz x1, #9
    bl _lb_settings_Settings_set
L8ceb162ee6db_20:
L8ceb162ee6db_21:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #10
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L8ceb162ee6db_23
L8ceb162ee6db_25:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #9
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L8ceb162ee6db_23
L8ceb162ee6db_22:
    movz x9, #3
    scvtf d24, x9
    fmov d0, d24
    movz x16, #12312
    sub x0, x29, x16
    movz x1, #117
    bl _lb_settings_Settings_set
    b L8ceb162ee6db_33
L8ceb162ee6db_23:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #15
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L8ceb162ee6db_27
L8ceb162ee6db_26:
    movz x9, #4
    scvtf d24, x9
    fmov d0, d24
    movz x16, #12312
    sub x0, x29, x16
    movz x1, #117
    bl _lb_settings_Settings_set
    b L8ceb162ee6db_33
L8ceb162ee6db_27:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #11
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L8ceb162ee6db_30
L8ceb162ee6db_29:
    mov x9, #0
    scvtf d24, x9
    fmov d0, d24
    movz x16, #12312
    sub x0, x29, x16
    movz x1, #117
    bl _lb_settings_Settings_set
    b L8ceb162ee6db_33
L8ceb162ee6db_30:
    movz x16, #12968
    sub x0, x29, x16
    movz x1, #12
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L8ceb162ee6db_33
L8ceb162ee6db_32:
    mov x9, #0
    scvtf d24, x9
    fmov d0, d24
    movz x16, #12312
    sub x0, x29, x16
    movz x1, #117
    bl _lb_settings_Settings_set
L8ceb162ee6db_33:
L8ceb162ee6db_34:
L8ceb162ee6db_31:
L8ceb162ee6db_28:
L8ceb162ee6db_24:
    movz x16, #12312
    sub x10, x29, x16
    movz x16, #9256
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #9256
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #3056
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #12960]
    ldr x20, [sp, #12952]
    ldr x21, [sp, #12944]
    ldr x22, [sp, #12936]
    ldr x23, [sp, #12928]
    ldr x24, [sp, #12920]
    ldr x25, [sp, #12912]
    ldr x26, [sp, #12904]
    ldr x27, [sp, #12896]
    ldr x28, [sp, #12888]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8ceb162ee6db_52:
    adrp x0, _lb_text_3acbce669427@PAGE
    add x0, x0, _lb_text_3acbce669427@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8ceb162ee6db_c1:
    adrp x0, _lb_text_1f676810d458@PAGE
    add x0, x0, _lb_text_1f676810d458@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8ceb162ee6db_c2:
    adrp x0, _lb_text_3acbce669427@PAGE
    add x0, x0, _lb_text_3acbce669427@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8ceb162ee6db_c3:
    adrp x0, _lb_text_e96d75bb7f90@PAGE
    add x0, x0, _lb_text_e96d75bb7f90@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_7
_lb_test_7:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    str x19, [sp, #296]
    str x20, [sp, #288]
    str x21, [sp, #280]
    str x22, [sp, #272]
    str x23, [sp, #264]
    str x24, [sp, #256]
    str x25, [sp, #248]
    str x26, [sp, #240]
    str x27, [sp, #232]
    str x28, [sp, #224]
    str d8, [sp, #216]
    str d9, [sp, #208]
    str d10, [sp, #200]
    adrp x14, _lb_10film_print_10built_once@PAGE
    add x14, x14, _lb_10film_print_10built_once@PAGEOFF
    adrp x15, _lb_10film_print_11build_model@GOTPAGE
    ldr x15, [x15, _lb_10film_print_11build_model@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_10film_print_built@PAGE
    add x14, x14, _lb_10film_print_built@PAGEOFF
    ldr x19, [x14]
    cbz x19, Lada0f755b077_2
Lada0f755b077_1:
    b Lada0f755b077_3
Lada0f755b077_2:
    adrp x14, _lb_text_db01e8faf96c@PAGE
    add x14, x14, _lb_text_db01e8faf96c@PAGEOFF
    str x14, [sp, #104]
    movz x9, #29
    str x9, [sp, #112]
    adrp x14, _lb_text_24da2132d91a@PAGE
    add x14, x14, _lb_text_24da2132d91a@PAGEOFF
    mov x0, x14
    sub x9, x29, #200
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, _lb_text_24da2132d91a@PAGE
    add x0, x0, _lb_text_24da2132d91a@PAGEOFF
    adrp x1, _lb_text_82fae1890416@PAGE
    add x1, x1, _lb_text_82fae1890416@PAGEOFF
    bl _lb_core_7trap_at
Lada0f755b077_3:
    sub x11, x29, #224
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    movz x10, #28896
    add x20, x19, x10
    adrp x21, _lb_10film_print_14lad_below_grey@PAGE
    add x21, x21, _lb_10film_print_14lad_below_grey@PAGEOFF
    mov x22, #0
    .p2align 4
Lada0f755b077_4:
    cmp x22, #3
    b.hs Lada0f755b077_7
Lada0f755b077_5:
    lsl x14, x22, #3
    sub x9, x29, #224
    add x23, x9, x14
    ldr d24, [x14, x20]
    ldr d25, [x21]
    fadd d24, d24, d25
    fmov d0, d24
    mov x0, x19
    mov x1, x22
    bl _lb_10film_print_PrintModel_amount
    fmov d24, d0
    str d24, [x23]
    add x22, x22, #1
    b Lada0f755b077_4
Lada0f755b077_7:
    sub x9, x29, #224
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_PrintModel_read
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
    sub sp, x29, #1360
    sub x9, x29, #1360
    sub x16, x29, #336
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #328
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #320
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #312
    str x9, [x16]
    adrp x14, _lb_text_1b7dafc7939c@PAGE
    add x14, x14, _lb_text_1b7dafc7939c@PAGEOFF
    mov x1, x14
    sub x0, x29, #336
    movz x2, #30
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1232]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x20, _lb_text_38e5953880b7@PAGE
    add x20, x20, _lb_text_38e5953880b7@PAGEOFF
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1240]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1248]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    adrp x14, _lb_text_6f6abc1643dd@PAGE
    add x14, x14, _lb_text_6f6abc1643dd@PAGEOFF
    mov x1, x14
    sub x0, x29, #336
    movz x2, #23
    movz x3, #1
    bl _lb_core_10stream_put
    adrp x21, _lb_text_ec3c9fbe6361@PAGE
    add x21, x21, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x1, x21
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #336
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #304
    adrp x14, _lb_10film_print_12lad_status_a@PAGE
    add x14, x14, _lb_10film_print_12lad_status_a@PAGEOFF
    ldr d24, Lada0f755b077_k0
    mov x15, #0
    .p2align 4
Lada0f755b077_8:
    cmp x15, #3
    b.hs Lada0f755b077_11
Lada0f755b077_9:
    lsl x12, x15, #3
    sub x10, x29, #128
    ldr d25, [x10, x12]
    ldr d26, [x12, x14]
    fsub d25, d25, d26
    fabs d25, d25
    fcmp d25, d24
    b.mi Lada0f755b077_12
Lada0f755b077_13:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_86f4751c9c86@PAGE
    add x14, x14, _lb_text_86f4751c9c86@PAGEOFF
    adrp x15, _lb_text_1a89d5142224@PAGE
    add x15, x15, _lb_text_1a89d5142224@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #240
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #296]
    ldr x20, [sp, #288]
    ldr x21, [sp, #280]
    ldr x22, [sp, #272]
    ldr x23, [sp, #264]
    ldr x24, [sp, #256]
    ldr x25, [sp, #248]
    ldr x26, [sp, #240]
    ldr x27, [sp, #232]
    ldr x28, [sp, #224]
    ldr d8, [sp, #216]
    ldr d9, [sp, #208]
    ldr d10, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lada0f755b077_12:
    add x15, x15, #1
    b Lada0f755b077_8
Lada0f755b077_11:
    fmov d24, xzr
    str d24, [sp, #40]
    str d24, [sp, #48]
    str d24, [sp, #56]
    movz x10, #28896
    add x22, x19, x10
    adrp x23, _lb_10film_print_14lad_below_grey@PAGE
    add x23, x23, _lb_10film_print_14lad_below_grey@PAGEOFF
    ldr d8, Lada0f755b077_k1
    adrp x24, _lb_text_f0af374e7dd5@PAGE
    add x24, x24, _lb_text_f0af374e7dd5@PAGEOFF
    adrp x25, _lb_text_37811709eadd@PAGE
    add x25, x25, _lb_text_37811709eadd@PAGEOFF
    adrp x26, _lb_text_f168d65e7578@PAGE
    add x26, x26, _lb_text_f168d65e7578@PAGEOFF
    ldr d9, Lada0f755b077_k2
    ldr d10, Lada0f755b077_k3
    mov x27, #0
    .p2align 4
Lada0f755b077_15:
    cmp x27, #3
    b.hs Lada0f755b077_18
Lada0f755b077_16:
    sub x10, x29, #224
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    lsl x28, x27, #3
    sub x9, x29, #288
    add x14, x9, x28
    ldr d24, [x28, x22]
    ldr d25, [x23]
    fadd d24, d24, d25
    fadd d24, d24, d8
    str x14, [sp, #120]
    fmov d0, d24
    mov x0, x19
    mov x1, x27
    bl _lb_10film_print_PrintModel_amount
    fmov d24, d0
    ldr x14, [sp, #120]
    str d24, [x14]
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_PrintModel_read
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    sub x10, x29, #176
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub sp, x29, #1360
    sub x9, x29, #1360
    sub x16, x29, #336
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #328
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #320
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #312
    str x9, [x16]
    mov x1, x24
    sub x0, x29, #336
    movz x2, #21
    movz x3, #1
    bl _lb_core_10stream_put
    mov x1, x27
    sub x0, x29, #336
    bl _lb_core_10format_u64
    mov w14, w0
    mov x1, x25
    sub x0, x29, #336
    movz x2, #11
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1208]
    ldr d25, [sp, #1232]
    fsub d24, d24, d25
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1216]
    ldr d25, [sp, #1240]
    fsub d24, d24, d25
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1224]
    ldr d25, [sp, #1248]
    fsub d24, d24, d25
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x26
    sub x0, x29, #336
    movz x2, #8
    movz x3, #1
    bl _lb_core_10stream_put
    mov x1, x21
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #336
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #304
    movz x14, #2
    movz x15, #1
    movz x12, #1
    and w15, w15, w12
    movz x12, #24
    sub x9, x29, #152
    sub x10, x29, #264
    sub x13, x9, x10
    sub x9, x29, #264
    sub x10, x29, #152
    sub x7, x9, x10
    cmp x13, x12
    cset w13, hs
    cmp x7, x12
    cset w7, hs
    and w13, w13, w7
    sub x9, x29, #152
    sub x10, x29, #264
    cmp x9, x10
    cset w7, eq
    orr w13, w13, w7
    and w15, w15, w13
    sub x9, x29, #128
    sub x10, x29, #264
    sub x13, x9, x10
    sub x9, x29, #264
    sub x10, x29, #128
    sub x7, x9, x10
    cmp x13, x12
    cset w13, hs
    cmp x7, x12
    cset w12, hs
    and w12, w13, w12
    sub x9, x29, #128
    sub x10, x29, #264
    cmp x9, x10
    cset w13, eq
    orr w12, w12, w13
    and w15, w15, w12
    cbnz w15, Lada0f755b077_30
Lada0f755b077_35:
    mov x14, #0
    b Lada0f755b077_34
Lada0f755b077_30:
    mov x15, #0
    .p2align 4
Lada0f755b077_31:
    cmp x15, x14
    b.hs Lada0f755b077_33
Lada0f755b077_32:
    sub x9, x29, #264
    add x12, x9, x15, lsl #3
    ldr q24, [x12]
    sub x9, x29, #152
    add x12, x9, x15, lsl #3
    ldr q25, [x12]
    sub x9, x29, #128
    add x12, x9, x15, lsl #3
    ldr q26, [x12]
    fsub v25.2d, v25.2d, v26.2d
    fadd v24.2d, v24.2d, v25.2d
    sub x9, x29, #264
    add x12, x9, x15, lsl #3
    str q24, [x12]
    add x15, x15, #2
    b Lada0f755b077_31
Lada0f755b077_33:
Lada0f755b077_34:
    .p2align 4
Lada0f755b077_19:
    cmp x14, #3
    b.hs Lada0f755b077_22
Lada0f755b077_20:
    lsl x15, x14, #3
    sub x9, x29, #264
    add x12, x9, x15
    ldr d24, [x12]
    sub x10, x29, #152
    ldr d25, [x10, x15]
    sub x10, x29, #128
    ldr d26, [x10, x15]
    fsub d25, d25, d26
    fadd d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    b Lada0f755b077_19
Lada0f755b077_22:
    sub x11, x29, #152
    ldr d24, [x28, x11]
    sub x10, x29, #128
    ldr d25, [x10, x28]
    fsub d24, d24, d25
    fcmp d24, d9
    b.le Lada0f755b077_24
Lada0f755b077_25:
    fcmp d24, d10
    b.mi Lada0f755b077_23
Lada0f755b077_24:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_5102d8e73529@PAGE
    add x14, x14, _lb_text_5102d8e73529@PAGEOFF
    adrp x15, _lb_text_cf6e84fdcf25@PAGE
    add x15, x15, _lb_text_cf6e84fdcf25@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #304
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #296]
    ldr x20, [sp, #288]
    ldr x21, [sp, #280]
    ldr x22, [sp, #272]
    ldr x23, [sp, #264]
    ldr x24, [sp, #256]
    ldr x25, [sp, #248]
    ldr x26, [sp, #240]
    ldr x27, [sp, #232]
    ldr x28, [sp, #224]
    ldr d8, [sp, #216]
    ldr d9, [sp, #208]
    ldr d10, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lada0f755b077_23:
    add x27, x27, #1
    b Lada0f755b077_15
Lada0f755b077_18:
    sub sp, x29, #1360
    sub x9, x29, #1360
    sub x16, x29, #336
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #328
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #320
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #312
    str x9, [x16]
    adrp x14, _lb_text_cb82b370222c@PAGE
    add x14, x14, _lb_text_cb82b370222c@PAGEOFF
    mov x1, x14
    sub x0, x29, #336
    movz x2, #42
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1096]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1104]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x20
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr d24, [sp, #1112]
    fmov d0, d24
    sub x0, x29, #336
    bl _lb_core_10format_f64
    mov w14, w0
    mov x1, x21
    sub x0, x29, #336
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    sub x0, x29, #336
    movz x1, #1
    bl _lb_core_12stream_flush
    sub sp, x29, #304
    mov x0, #0
    ldr x19, [sp, #296]
    ldr x20, [sp, #288]
    ldr x21, [sp, #280]
    ldr x22, [sp, #272]
    ldr x23, [sp, #264]
    ldr x24, [sp, #256]
    ldr x25, [sp, #248]
    ldr x26, [sp, #240]
    ldr x27, [sp, #232]
    ldr x28, [sp, #224]
    ldr d8, [sp, #216]
    ldr d9, [sp, #208]
    ldr d10, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lada0f755b077_k0:
    .quad 4585925428558828667
Lada0f755b077_k1:
    .quad 4582862980812216730
Lada0f755b077_k2:
    .quad 4589708452245819884
Lada0f755b077_k3:
    .quad 4592951043977526641


    .p2align 2
    .globl _lb_10film_print_11build_model
_lb_10film_print_11build_model:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4304
    sub sp, sp, x16
    str x19, [sp, #4296]
    adrp x19, _lb_10film_print_built@PAGE
    add x19, x19, _lb_10film_print_built@PAGEOFF
    movz x16, #4296
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_2383
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
    .globl _lb_sync_Once_run
_lb_sync_Once_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    mov x19, x0
    mov x14, x1
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
    mov w15, w9
    cmp w15, #0
    b.ne L13de82885788_2
L13de82885788_1:
    mov x17, x14
    str x17, [sp, #-16]!
    ldr x17, [sp], #16
    blr x17
    movz x9, #2
    stlr w9, [x19]
    mov x1, x19
    movz x0, #257
    mov x2, #0
    bl ___ulock_wake
    mov w14, w0
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 4
L13de82885788_2:
L13de82885788_3:
L13de82885788_5:
    ldar w14, [x19]
    cmp w14, #2
    b.eq L13de82885788_7
L13de82885788_6:
    mov x1, x19
    movz x0, #1
    movz x2, #1
    mov x3, #0
    bl ___ulock_wait
    mov w14, w0
    b L13de82885788_2
L13de82885788_7:
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_PrintModel_amount
_lb_10film_print_PrintModel_amount:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    mov x14, x0
    mov x15, x1
    ldr d25, [x14, #4288]
    fsub d24, d24, d25
    ldr d26, [x14, #4296]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    b.hi Leba167ac9b87_5
Leba167ac9b87_4:
    fmov x12, d24
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Leba167ac9b87_7
Leba167ac9b87_6:
    b Leba167ac9b87_19
Leba167ac9b87_7:
Leba167ac9b87_8:
    fcmp d24, d25
    cset w12, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w12, #0
    fcsel d24, d25, d24, ne
Leba167ac9b87_19:
    movz x9, #1023
    ucvtf d27, x9
    fmul d24, d27, d24
    frintm d27, d24
    movz x9, #1022
    ucvtf d28, x9
    fmov x12, d27
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Leba167ac9b87_21
Leba167ac9b87_20:
    b Leba167ac9b87_41
Leba167ac9b87_21:
Leba167ac9b87_22:
    fmov x13, d28
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls Leba167ac9b87_25
Leba167ac9b87_24:
    fmov d27, d28
    b Leba167ac9b87_41
Leba167ac9b87_25:
Leba167ac9b87_26:
    fcmp d25, d27
    b.ne Leba167ac9b87_29
Leba167ac9b87_31:
    fcmp d25, d28
    b.ne Leba167ac9b87_29
Leba167ac9b87_28:
    orr x12, x12, x13
    fmov d27, x12
    b Leba167ac9b87_41
Leba167ac9b87_29:
Leba167ac9b87_30:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
Leba167ac9b87_41:
    fcvtzu x12, d27
    ucvtf d25, x12
    fsub d24, d24, d25
    movz x10, #3
    umulh x11, x12, x10
    add x13, x12, x12, lsl #1
    cbnz x11, Leba167ac9b87_c1
    adds x13, x13, x15
    b.cs Leba167ac9b87_c2
    movz x10, #4320
    add x14, x14, x10
    movz x10, #3072
    cmp x13, x10
    b.hs Leba167ac9b87_c3
    ldr d25, [x14, x13, lsl #3]
    fsub d26, d26, d24
    fmul d25, d25, d26
    adds x12, x12, #1
    b.cs Leba167ac9b87_c4
    movz x10, #3
    umulh x11, x12, x10
    add x12, x12, x12, lsl #1
    cbnz x11, Leba167ac9b87_c5
    adds x15, x12, x15
    b.cs Leba167ac9b87_c6
    movz x10, #3072
    cmp x15, x10
    b.hs Leba167ac9b87_c7
    ldr d26, [x14, x15, lsl #3]
    fmul d24, d24, d26
    fadd d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Leba167ac9b87_5:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c1:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c2:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c3:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c4:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c5:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c6:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Leba167ac9b87_c7:
    adrp x0, _lb_text_854988bb1602@PAGE
    add x0, x0, _lb_text_854988bb1602@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10film_print_PrintModel_read
_lb_10film_print_PrintModel_read:
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
    sub x16, x29, #128
    str d0, [x16, #0]
    sub x16, x29, #128
    str d1, [x16, #8]
    sub x16, x29, #128
    str d2, [x16, #16]
    mov x19, x0
    sub x11, x29, #152
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    fmov d8, xzr
    add x20, x19, #16
    movz x10, #28920
    add x21, x19, x10
    ldr d9, L7a541e105294_k0
    fmov x22, d9
    and x14, x22, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w23, hi
    fcmp d8, d9
    cset w24, eq
    mov x25, #0
L7a541e105294_1:
    cmp x25, #3
    b.hs L7a541e105294_4
    .p2align 4
L7a541e105294_2:
    movz x10, #81
    mul x26, x25, x10
    fmov d10, d8
    mov x27, #0
L7a541e105294_5:
    cmp x27, #81
    b.hs L7a541e105294_8
    .p2align 4
L7a541e105294_6:
    ldr d24, [sp, #48]
    add x14, x20, x27, lsl #3
    ldr d25, [x14]
    fmul d24, d24, d25
    ldr d25, [sp, #56]
    add x15, x27, #81
    movz x10, #243
    cmp x15, x10
    b.hs L7a541e105294_c1
    ldr d26, [x14, #648]
    fmul d25, d25, d26
    fadd d24, d24, d25
    ldr d25, [sp, #64]
    add x15, x27, #162
    movz x10, #243
    cmp x15, x10
    b.hs L7a541e105294_c2
    ldr d26, [x14, #1296]
    fmul d25, d25, d26
    fadd d24, d24, d25
    fmov d0, d24
    mov x0, x19
    bl _lb_10film_print_PrintModel_passed
    fmov d24, d0
    add x14, x26, x27
    movz x10, #243
    cmp x14, x10
    b.hs L7a541e105294_c3
    ldr d25, [x21, x14, lsl #3]
    fmul d24, d24, d25
    fadd d10, d24, d10
    add x27, x27, #1
    cmp x27, #81
    b.lo L7a541e105294_6
L7a541e105294_8:
    sub x9, x29, #152
    add x26, x9, x25, lsl #3
    fmov x14, d10
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L7a541e105294_13
L7a541e105294_12:
    b L7a541e105294_33
L7a541e105294_13:
L7a541e105294_14:
L7a541e105294_32:
    cbz w23, L7a541e105294_17
L7a541e105294_16:
    fmov d10, d9
    b L7a541e105294_33
L7a541e105294_17:
L7a541e105294_18:
    fcmp d8, d10
    b.ne L7a541e105294_21
L7a541e105294_23:
    cbz w24, L7a541e105294_21
L7a541e105294_20:
    and x14, x14, x22
    fmov d10, x14
    b L7a541e105294_33
L7a541e105294_21:
L7a541e105294_22:
    fcmp d10, d9
    fcsel d10, d10, d9, gt
L7a541e105294_33:
    fmov d0, d10
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d24, d24
    str d24, [x26]
    add x25, x25, #1
    cmp x25, #3
    b.lo L7a541e105294_2
L7a541e105294_4:
    sub x10, x29, #152
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7a541e105294_c1:
    adrp x0, _lb_text_9e17714cb18c@PAGE
    add x0, x0, _lb_text_9e17714cb18c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a541e105294_c2:
    adrp x0, _lb_text_9e17714cb18c@PAGE
    add x0, x0, _lb_text_9e17714cb18c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a541e105294_c3:
    adrp x0, _lb_text_ddda5b06f58a@PAGE
    add x0, x0, _lb_text_ddda5b06f58a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L7a541e105294_k0:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_core_10stream_put
_lb_core_10stream_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    mov x19, x0
    mov x20, x1
    mov x21, x2
    mov w22, w3
    ldr x14, [x19, #16]
    ldr x15, [x19, #8]
    cmp x14, x15
    b.hi Lc7afc0f61986_1
Lc7afc0f61986_4:
    sub x14, x15, x14
    cmp x21, x14
    b.ls Lc7afc0f61986_2
Lc7afc0f61986_1:
    mov x0, x19
    mov x1, x22
    bl _lb_core_12stream_flush
Lc7afc0f61986_2:
Lc7afc0f61986_3:
    ldr x14, [x19, #8]
    cmp x21, x14
    b.lo Lc7afc0f61986_6
Lc7afc0f61986_5:
    cmp w22, #2
    b.ne Lc7afc0f61986_15
Lc7afc0f61986_14:
    mov x19, #0
Lc7afc0f61986_22:
    cmp x19, x21
    b.hs Lc7afc0f61986_24
    .p2align 4
Lc7afc0f61986_23:
    sub x14, x21, x19
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x19
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge Lc7afc0f61986_31
Lc7afc0f61986_33:
    bl ___error
    mov x14, x0
    cbz x14, Lc7afc0f61986_42
Lc7afc0f61986_41:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne Lc7afc0f61986_31
Lc7afc0f61986_30:
    cmp x19, x21
    b.lo Lc7afc0f61986_23
    b Lc7afc0f61986_24
Lc7afc0f61986_31:
    cmp x22, #0
    b.gt Lc7afc0f61986_36
Lc7afc0f61986_35:
    b Lc7afc0f61986_24
Lc7afc0f61986_36:
    adds x19, x19, x22
    b.cs Lc7afc0f61986_c1
    cmp x19, x21
    b.lo Lc7afc0f61986_23
Lc7afc0f61986_24:
Lc7afc0f61986_45:
    adrp x14, _lb_core_10crash_file@PAGE
    add x14, x14, _lb_core_10crash_file@PAGEOFF
    ldrsw x19, [x14]
    cmp w19, #0
    b.lt Lc7afc0f61986_18
Lc7afc0f61986_17:
    mov x22, #0
Lc7afc0f61986_46:
    cmp x22, x21
    b.hs Lc7afc0f61986_48
    .p2align 4
Lc7afc0f61986_47:
    sub x14, x21, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x22
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge Lc7afc0f61986_55
Lc7afc0f61986_57:
    bl ___error
    mov x14, x0
    cbz x14, Lc7afc0f61986_66
Lc7afc0f61986_65:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne Lc7afc0f61986_55
Lc7afc0f61986_54:
    cmp x22, x21
    b.lo Lc7afc0f61986_47
    b Lc7afc0f61986_48
Lc7afc0f61986_55:
    cmp x23, #0
    b.gt Lc7afc0f61986_60
Lc7afc0f61986_59:
    b Lc7afc0f61986_48
Lc7afc0f61986_60:
    adds x22, x22, x23
    b.cs Lc7afc0f61986_c2
    cmp x22, x21
    b.lo Lc7afc0f61986_47
Lc7afc0f61986_48:
Lc7afc0f61986_69:
Lc7afc0f61986_18:
Lc7afc0f61986_19:
    b Lc7afc0f61986_72
Lc7afc0f61986_15:
    mov x19, #0
Lc7afc0f61986_70:
    cmp x19, x21
    b.hs Lc7afc0f61986_72
    .p2align 4
Lc7afc0f61986_71:
    sub x14, x21, x19
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x19
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge Lc7afc0f61986_79
Lc7afc0f61986_81:
    bl ___error
    mov x14, x0
    cbz x14, Lc7afc0f61986_90
Lc7afc0f61986_89:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne Lc7afc0f61986_79
Lc7afc0f61986_78:
    cmp x19, x21
    b.lo Lc7afc0f61986_71
    b Lc7afc0f61986_72
Lc7afc0f61986_79:
    cmp x23, #0
    b.gt Lc7afc0f61986_84
Lc7afc0f61986_83:
    b Lc7afc0f61986_72
Lc7afc0f61986_84:
    adds x19, x19, x23
    b.cs Lc7afc0f61986_c3
    cmp x19, x21
    b.lo Lc7afc0f61986_71
Lc7afc0f61986_72:
Lc7afc0f61986_93:
Lc7afc0f61986_16:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc7afc0f61986_6:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x19, #16]
    ldr x15, [x19, #8]
    lsr x15, x15, #1
    cmp x14, x15
    b.ls Lc7afc0f61986_10
Lc7afc0f61986_9:
    mov x0, x19
    mov x1, x22
    bl _lb_core_12stream_flush
Lc7afc0f61986_10:
Lc7afc0f61986_11:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc7afc0f61986_42:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
Lc7afc0f61986_66:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
Lc7afc0f61986_90:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
Lc7afc0f61986_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc7afc0f61986_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc7afc0f61986_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_10format_f64
_lb_core_10format_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    fmov d24, d0
    mov x19, x0
    sub x9, x29, #48
    str x9, [sp, #0]
    movz x9, #40
    str x9, [sp, #8]
    fmov d0, d24
    sub x9, x29, #64
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_10float_text_11display_f64
    mov x14, x0
    mov x0, x19
    mov x2, x14
    sub x1, x29, #48
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x14
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_12stream_flush
_lb_core_12stream_flush:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    str x24, [sp, #16]
    mov x19, x0
    mov w20, w1
    ldr x14, [x19, #16]
    cmp x14, #0
    b.ls L0b5c6df95abb_2
L0b5c6df95abb_1:
    mov x0, x19
    bl _lb_core_13format_finish
    mov x21, x0
    mov x22, x1
    cmp w20, #2
    b.ne L0b5c6df95abb_5
L0b5c6df95abb_4:
    mov x20, #0
L0b5c6df95abb_12:
    cmp x20, x22
    b.hs L0b5c6df95abb_14
    .p2align 4
L0b5c6df95abb_13:
    sub x14, x22, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x21, x20
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L0b5c6df95abb_21
L0b5c6df95abb_23:
    bl ___error
    mov x14, x0
    cbz x14, L0b5c6df95abb_32
L0b5c6df95abb_31:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L0b5c6df95abb_21
L0b5c6df95abb_20:
    cmp x20, x22
    b.lo L0b5c6df95abb_13
    b L0b5c6df95abb_14
L0b5c6df95abb_21:
    cmp x23, #0
    b.gt L0b5c6df95abb_26
L0b5c6df95abb_25:
    b L0b5c6df95abb_14
L0b5c6df95abb_26:
    adds x20, x20, x23
    b.cs L0b5c6df95abb_c1
    cmp x20, x22
    b.lo L0b5c6df95abb_13
L0b5c6df95abb_14:
L0b5c6df95abb_35:
    adrp x14, _lb_core_10crash_file@PAGE
    add x14, x14, _lb_core_10crash_file@PAGEOFF
    ldrsw x20, [x14]
    cmp w20, #0
    b.lt L0b5c6df95abb_8
L0b5c6df95abb_7:
    mov x23, #0
L0b5c6df95abb_36:
    cmp x23, x22
    b.hs L0b5c6df95abb_38
    .p2align 4
L0b5c6df95abb_37:
    sub x14, x22, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x21, x23
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L0b5c6df95abb_45
L0b5c6df95abb_47:
    bl ___error
    mov x14, x0
    cbz x14, L0b5c6df95abb_56
L0b5c6df95abb_55:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L0b5c6df95abb_45
L0b5c6df95abb_44:
    cmp x23, x22
    b.lo L0b5c6df95abb_37
    b L0b5c6df95abb_38
L0b5c6df95abb_45:
    cmp x24, #0
    b.gt L0b5c6df95abb_50
L0b5c6df95abb_49:
    b L0b5c6df95abb_38
L0b5c6df95abb_50:
    adds x23, x23, x24
    b.cs L0b5c6df95abb_c2
    cmp x23, x22
    b.lo L0b5c6df95abb_37
L0b5c6df95abb_38:
L0b5c6df95abb_59:
L0b5c6df95abb_8:
L0b5c6df95abb_9:
    b L0b5c6df95abb_62
L0b5c6df95abb_5:
    mov x23, #0
L0b5c6df95abb_60:
    cmp x23, x22
    b.hs L0b5c6df95abb_62
    .p2align 4
L0b5c6df95abb_61:
    sub x14, x22, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x21, x23
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L0b5c6df95abb_69
L0b5c6df95abb_71:
    bl ___error
    mov x14, x0
    cbz x14, L0b5c6df95abb_80
L0b5c6df95abb_79:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L0b5c6df95abb_69
L0b5c6df95abb_68:
    cmp x23, x22
    b.lo L0b5c6df95abb_61
    b L0b5c6df95abb_62
L0b5c6df95abb_69:
    cmp x24, #0
    b.gt L0b5c6df95abb_74
L0b5c6df95abb_73:
    b L0b5c6df95abb_62
L0b5c6df95abb_74:
    adds x23, x23, x24
    b.cs L0b5c6df95abb_c3
    cmp x23, x22
    b.lo L0b5c6df95abb_61
L0b5c6df95abb_62:
L0b5c6df95abb_83:
L0b5c6df95abb_6:
L0b5c6df95abb_2:
L0b5c6df95abb_3:
    mov x9, #0
    str x9, [x19, #16]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr x24, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0b5c6df95abb_32:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L0b5c6df95abb_56:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L0b5c6df95abb_80:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L0b5c6df95abb_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b5c6df95abb_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0b5c6df95abb_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_10format_u64
_lb_core_10format_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    mov x14, x0
    mov x15, x1
    cmp x15, #0
    b.ne L3d0444c1a664_2
L3d0444c1a664_1:
    movz x9, #48
    strb w9, [sp, #31]
    movz x12, #1
    b L3d0444c1a664_3
L3d0444c1a664_2:
    mov x12, #0
L3d0444c1a664_3:
L3d0444c1a664_4:
    cmp x15, #0
    b.eq L3d0444c1a664_6
    .p2align 4
L3d0444c1a664_5:
    adds x12, x12, #1
    b.cs L3d0444c1a664_c1
    movz x9, #24
    subs x13, x9, x12
    b.cc L3d0444c1a664_c2
    movz x10, #24
    cmp x13, x10
    b.hs L3d0444c1a664_c3
    sub x10, x29, #24
    add x13, x13, x10
    movz x10, #10
    udiv x11, x15, x10
    msub x7, x11, x10, x15
    add x7, x7, #48
    strb w7, [x13]
    movz x10, #10
    udiv x15, x15, x10
    cmp x15, #0
    b.ne L3d0444c1a664_5
L3d0444c1a664_6:
    movz x9, #24
    subs x15, x9, x12
    b.cc L3d0444c1a664_c4
    movz x10, #24
    cmp x15, x10
    b.hi L3d0444c1a664_c5
    sub x10, x29, #24
    add x15, x15, x10
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3d0444c1a664_c1:
    adrp x0, _lb_text_105b41d2ac52@PAGE
    add x0, x0, _lb_text_105b41d2ac52@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3d0444c1a664_c2:
    adrp x0, _lb_text_9ed797c4c423@PAGE
    add x0, x0, _lb_text_9ed797c4c423@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3d0444c1a664_c3:
    adrp x0, _lb_text_9ed797c4c423@PAGE
    add x0, x0, _lb_text_9ed797c4c423@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3d0444c1a664_c4:
    adrp x0, _lb_text_0fa9687985bb@PAGE
    add x0, x0, _lb_text_0fa9687985bb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3d0444c1a664_c5:
    adrp x0, _lb_text_0fa9687985bb@PAGE
    add x0, x0, _lb_text_0fa9687985bb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_11film_stocks_10kodak_2383
_lb_11film_stocks_10kodak_2383:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #10896
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #10880]
    movz x16, #4304
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4288
    bl _memset
    adrp x14, _lb_text_516fb02edbe1@PAGE
    add x14, x14, _lb_text_516fb02edbe1@PAGEOFF
    str x14, [sp, #6592]
    movz x9, #34
    str x9, [sp, #6600]
    ldr d24, L64ded788ba2d_k0
    str d24, [sp, #4648]
    ldr d25, L64ded788ba2d_k1
    str d25, [sp, #4656]
    ldr d25, L64ded788ba2d_k2
    str d25, [sp, #4664]
    ldr d25, L64ded788ba2d_k3
    str d25, [sp, #4672]
    str d24, [sp, #4680]
    ldr d24, L64ded788ba2d_k4
    str d24, [sp, #4688]
    ldr d24, L64ded788ba2d_k5
    str d24, [sp, #4696]
    ldr d24, L64ded788ba2d_k6
    str d24, [sp, #4704]
    ldr d24, L64ded788ba2d_k7
    str d24, [sp, #4712]
    ldr d24, L64ded788ba2d_k8
    str d24, [sp, #4720]
    ldr d24, L64ded788ba2d_k9
    str d24, [sp, #4728]
    ldr d24, L64ded788ba2d_k10
    str d24, [sp, #4736]
    ldr d24, L64ded788ba2d_k11
    str d24, [sp, #4744]
    ldr d24, L64ded788ba2d_k12
    str d24, [sp, #4752]
    ldr d24, L64ded788ba2d_k13
    str d24, [sp, #4760]
    ldr d24, L64ded788ba2d_k14
    str d24, [sp, #4768]
    ldr d24, L64ded788ba2d_k15
    str d24, [sp, #4776]
    ldr d24, L64ded788ba2d_k16
    str d24, [sp, #4784]
    ldr d24, L64ded788ba2d_k17
    str d24, [sp, #4792]
    str d24, [sp, #4800]
    str d24, [sp, #4808]
    str d24, [sp, #4816]
    str d24, [sp, #4824]
    str d24, [sp, #4832]
    ldr d25, L64ded788ba2d_k18
    str d25, [sp, #4840]
    ldr d25, L64ded788ba2d_k19
    str d25, [sp, #4848]
    ldr d25, L64ded788ba2d_k20
    str d25, [sp, #4856]
    ldr d26, L64ded788ba2d_k21
    str d26, [sp, #4864]
    ldr d26, L64ded788ba2d_k22
    str d26, [sp, #4872]
    ldr d26, L64ded788ba2d_k23
    str d26, [sp, #4880]
    ldr d26, L64ded788ba2d_k24
    str d26, [sp, #4888]
    ldr d26, L64ded788ba2d_k25
    str d26, [sp, #4896]
    ldr d26, L64ded788ba2d_k26
    str d26, [sp, #4904]
    ldr d26, L64ded788ba2d_k27
    str d26, [sp, #4912]
    ldr d26, L64ded788ba2d_k28
    str d26, [sp, #4920]
    ldr d26, L64ded788ba2d_k29
    str d26, [sp, #4928]
    ldr d26, L64ded788ba2d_k30
    str d26, [sp, #4936]
    ldr d26, L64ded788ba2d_k31
    str d26, [sp, #4944]
    ldr d26, L64ded788ba2d_k32
    str d26, [sp, #4952]
    ldr d26, L64ded788ba2d_k33
    str d26, [sp, #4960]
    ldr d26, L64ded788ba2d_k34
    str d26, [sp, #4968]
    ldr d26, L64ded788ba2d_k35
    str d26, [sp, #4976]
    ldr d26, L64ded788ba2d_k36
    str d26, [sp, #4984]
    ldr d26, L64ded788ba2d_k37
    str d26, [sp, #4992]
    ldr d26, L64ded788ba2d_k38
    str d26, [sp, #5000]
    ldr d26, L64ded788ba2d_k39
    str d26, [sp, #5008]
    ldr d26, L64ded788ba2d_k40
    str d26, [sp, #5016]
    ldr d26, L64ded788ba2d_k41
    str d26, [sp, #5024]
    ldr d26, L64ded788ba2d_k42
    str d26, [sp, #5032]
    ldr d26, L64ded788ba2d_k43
    str d26, [sp, #5040]
    ldr d26, L64ded788ba2d_k44
    str d26, [sp, #5048]
    ldr d26, L64ded788ba2d_k45
    str d26, [sp, #5056]
    ldr d26, L64ded788ba2d_k46
    str d26, [sp, #5064]
    ldr d26, L64ded788ba2d_k47
    str d26, [sp, #5072]
    ldr d26, L64ded788ba2d_k48
    str d26, [sp, #5080]
    ldr d26, L64ded788ba2d_k49
    str d26, [sp, #5088]
    ldr d26, L64ded788ba2d_k50
    str d26, [sp, #5096]
    ldr d26, L64ded788ba2d_k51
    str d26, [sp, #5104]
    ldr d26, L64ded788ba2d_k52
    str d26, [sp, #5112]
    ldr d26, L64ded788ba2d_k53
    str d26, [sp, #5120]
    ldr d26, L64ded788ba2d_k54
    str d26, [sp, #5128]
    ldr d26, L64ded788ba2d_k55
    str d26, [sp, #5136]
    ldr d26, L64ded788ba2d_k56
    str d26, [sp, #5144]
    ldr d26, L64ded788ba2d_k57
    str d26, [sp, #5152]
    ldr d26, L64ded788ba2d_k58
    str d26, [sp, #5160]
    ldr d26, L64ded788ba2d_k59
    str d26, [sp, #5168]
    ldr d26, L64ded788ba2d_k60
    str d26, [sp, #5176]
    ldr d26, L64ded788ba2d_k61
    str d26, [sp, #5184]
    ldr d26, L64ded788ba2d_k62
    str d26, [sp, #5192]
    ldr d26, L64ded788ba2d_k63
    str d26, [sp, #5200]
    ldr d26, L64ded788ba2d_k64
    str d26, [sp, #5208]
    ldr d26, L64ded788ba2d_k65
    str d26, [sp, #5216]
    ldr d26, L64ded788ba2d_k66
    str d26, [sp, #5224]
    ldr d26, L64ded788ba2d_k67
    str d26, [sp, #5232]
    str d26, [sp, #5240]
    str d26, [sp, #5248]
    str d26, [sp, #5256]
    str d26, [sp, #5264]
    str d26, [sp, #5272]
    str d26, [sp, #5280]
    str d26, [sp, #5288]
    str d25, [sp, #5296]
    ldr d26, L64ded788ba2d_k68
    str d26, [sp, #5304]
    ldr d26, L64ded788ba2d_k69
    str d26, [sp, #5312]
    ldr d26, L64ded788ba2d_k70
    str d26, [sp, #5320]
    ldr d26, L64ded788ba2d_k71
    str d26, [sp, #5328]
    ldr d8, L64ded788ba2d_k72
    str d8, [sp, #5336]
    ldr d26, L64ded788ba2d_k73
    str d26, [sp, #5344]
    ldr d27, L64ded788ba2d_k74
    str d27, [sp, #5352]
    ldr d27, L64ded788ba2d_k75
    str d27, [sp, #5360]
    ldr d27, L64ded788ba2d_k76
    str d27, [sp, #5368]
    ldr d27, L64ded788ba2d_k77
    str d27, [sp, #5376]
    ldr d27, L64ded788ba2d_k78
    str d27, [sp, #5384]
    str d26, [sp, #5392]
    str d26, [sp, #5400]
    ldr d26, L64ded788ba2d_k79
    str d26, [sp, #5408]
    ldr d26, L64ded788ba2d_k80
    str d26, [sp, #5416]
    ldr d26, L64ded788ba2d_k81
    str d26, [sp, #5424]
    ldr d26, L64ded788ba2d_k82
    str d26, [sp, #5432]
    ldr d26, L64ded788ba2d_k83
    str d26, [sp, #5440]
    ldr d26, L64ded788ba2d_k84
    str d26, [sp, #5448]
    ldr d26, L64ded788ba2d_k85
    str d26, [sp, #5456]
    ldr d26, L64ded788ba2d_k86
    str d26, [sp, #5464]
    ldr d26, L64ded788ba2d_k87
    str d26, [sp, #5472]
    ldr d26, L64ded788ba2d_k88
    str d26, [sp, #5480]
    ldr d26, L64ded788ba2d_k89
    str d26, [sp, #5488]
    ldr d26, L64ded788ba2d_k90
    str d26, [sp, #5496]
    ldr d26, L64ded788ba2d_k91
    str d26, [sp, #5504]
    ldr d26, L64ded788ba2d_k92
    str d26, [sp, #5512]
    ldr d26, L64ded788ba2d_k93
    str d26, [sp, #5520]
    ldr d26, L64ded788ba2d_k94
    str d26, [sp, #5528]
    ldr d26, L64ded788ba2d_k95
    str d26, [sp, #5536]
    ldr d26, L64ded788ba2d_k96
    str d26, [sp, #5544]
    ldr d26, L64ded788ba2d_k97
    str d26, [sp, #5552]
    ldr d26, L64ded788ba2d_k98
    str d26, [sp, #5560]
    ldr d26, L64ded788ba2d_k99
    str d26, [sp, #5568]
    ldr d26, L64ded788ba2d_k100
    str d26, [sp, #5576]
    ldr d26, L64ded788ba2d_k101
    str d26, [sp, #5584]
    ldr d26, L64ded788ba2d_k102
    str d26, [sp, #5592]
    ldr d26, L64ded788ba2d_k103
    str d26, [sp, #5600]
    ldr d26, L64ded788ba2d_k104
    str d26, [sp, #5608]
    ldr d26, L64ded788ba2d_k105
    str d26, [sp, #5616]
    ldr d26, L64ded788ba2d_k106
    str d26, [sp, #5624]
    ldr d26, L64ded788ba2d_k107
    str d26, [sp, #5632]
    ldr d26, L64ded788ba2d_k108
    str d26, [sp, #5640]
    ldr d26, L64ded788ba2d_k109
    str d26, [sp, #5648]
    ldr d26, L64ded788ba2d_k110
    str d26, [sp, #5656]
    ldr d26, L64ded788ba2d_k111
    str d26, [sp, #5664]
    ldr d26, L64ded788ba2d_k112
    str d26, [sp, #5672]
    ldr d26, L64ded788ba2d_k113
    str d26, [sp, #5680]
    ldr d26, L64ded788ba2d_k114
    str d26, [sp, #5688]
    str d8, [sp, #5696]
    ldr d26, L64ded788ba2d_k115
    str d26, [sp, #5704]
    ldr d26, L64ded788ba2d_k116
    str d26, [sp, #5712]
    ldr d26, L64ded788ba2d_k117
    str d26, [sp, #5720]
    str d25, [sp, #5728]
    str d24, [sp, #5736]
    ldr d24, L64ded788ba2d_k118
    str d24, [sp, #5744]
    ldr d24, L64ded788ba2d_k119
    str d24, [sp, #5752]
    ldr d24, L64ded788ba2d_k120
    str d24, [sp, #5760]
    ldr d26, L64ded788ba2d_k121
    str d26, [sp, #5768]
    ldr d26, L64ded788ba2d_k122
    str d26, [sp, #5776]
    ldr d26, L64ded788ba2d_k123
    str d26, [sp, #5784]
    ldr d27, L64ded788ba2d_k124
    str d27, [sp, #5792]
    ldr d27, L64ded788ba2d_k125
    str d27, [sp, #5800]
    ldr d27, L64ded788ba2d_k126
    str d27, [sp, #5808]
    str d27, [sp, #5816]
    str d27, [sp, #5824]
    str d27, [sp, #5832]
    str d27, [sp, #5840]
    str d27, [sp, #5848]
    str d27, [sp, #5856]
    str d27, [sp, #5864]
    str d27, [sp, #5872]
    str d27, [sp, #5880]
    str d27, [sp, #5888]
    str d27, [sp, #5896]
    str d27, [sp, #5904]
    str d27, [sp, #5912]
    str d27, [sp, #5920]
    str d27, [sp, #5928]
    str d27, [sp, #5936]
    ldr d28, L64ded788ba2d_k127
    str d28, [sp, #5944]
    ldr d28, L64ded788ba2d_k128
    str d28, [sp, #5952]
    ldr d28, L64ded788ba2d_k129
    str d28, [sp, #5960]
    ldr d28, L64ded788ba2d_k130
    str d28, [sp, #5968]
    ldr d28, L64ded788ba2d_k131
    str d28, [sp, #5976]
    ldr d28, L64ded788ba2d_k132
    str d28, [sp, #5984]
    ldr d28, L64ded788ba2d_k133
    str d28, [sp, #5992]
    ldr d28, L64ded788ba2d_k134
    str d28, [sp, #6000]
    ldr d28, L64ded788ba2d_k135
    str d28, [sp, #6008]
    ldr d28, L64ded788ba2d_k136
    str d28, [sp, #6016]
    ldr d28, L64ded788ba2d_k137
    str d28, [sp, #6024]
    ldr d28, L64ded788ba2d_k138
    str d28, [sp, #6032]
    ldr d28, L64ded788ba2d_k139
    str d28, [sp, #6040]
    ldr d28, L64ded788ba2d_k140
    str d28, [sp, #6048]
    ldr d28, L64ded788ba2d_k141
    str d28, [sp, #6056]
    ldr d28, L64ded788ba2d_k142
    str d28, [sp, #6064]
    ldr d28, L64ded788ba2d_k143
    str d28, [sp, #6072]
    ldr d28, L64ded788ba2d_k144
    str d28, [sp, #6080]
    ldr d28, L64ded788ba2d_k145
    str d28, [sp, #6088]
    ldr d28, L64ded788ba2d_k146
    str d28, [sp, #6096]
    ldr d28, L64ded788ba2d_k147
    str d28, [sp, #6104]
    ldr d28, L64ded788ba2d_k148
    str d28, [sp, #6112]
    ldr d28, L64ded788ba2d_k149
    str d28, [sp, #6120]
    ldr d28, L64ded788ba2d_k150
    str d28, [sp, #6128]
    ldr d28, L64ded788ba2d_k151
    str d28, [sp, #6136]
    ldr d28, L64ded788ba2d_k152
    str d28, [sp, #6144]
    ldr d28, L64ded788ba2d_k153
    str d28, [sp, #6152]
    ldr d28, L64ded788ba2d_k154
    str d28, [sp, #6160]
    ldr d28, L64ded788ba2d_k155
    str d28, [sp, #6168]
    ldr d28, L64ded788ba2d_k156
    str d28, [sp, #6176]
    ldr d28, L64ded788ba2d_k157
    str d28, [sp, #6184]
    ldr d28, L64ded788ba2d_k158
    str d28, [sp, #6192]
    ldr d28, L64ded788ba2d_k159
    str d28, [sp, #6200]
    ldr d28, L64ded788ba2d_k160
    str d28, [sp, #6208]
    ldr d28, L64ded788ba2d_k161
    str d28, [sp, #6216]
    str d25, [sp, #6224]
    ldr d25, L64ded788ba2d_k162
    str d25, [sp, #6232]
    ldr d25, L64ded788ba2d_k163
    str d25, [sp, #6240]
    ldr d25, L64ded788ba2d_k164
    str d25, [sp, #6248]
    str d24, [sp, #6256]
    ldr d24, L64ded788ba2d_k165
    str d24, [sp, #6264]
    ldr d24, L64ded788ba2d_k166
    str d24, [sp, #6272]
    ldr d24, L64ded788ba2d_k167
    str d24, [sp, #6280]
    ldr d24, L64ded788ba2d_k168
    str d24, [sp, #6288]
    ldr d25, L64ded788ba2d_k169
    str d25, [sp, #6296]
    ldr d25, L64ded788ba2d_k170
    str d25, [sp, #6304]
    str d27, [sp, #6312]
    str d27, [sp, #6320]
    str d27, [sp, #6328]
    str d27, [sp, #6336]
    str d27, [sp, #6344]
    str d27, [sp, #6352]
    str d27, [sp, #6360]
    str d27, [sp, #6368]
    str d27, [sp, #6376]
    str d24, [sp, #6384]
    str d24, [sp, #6392]
    str d24, [sp, #6400]
    str d24, [sp, #6408]
    str d24, [sp, #6416]
    str d24, [sp, #6424]
    str d24, [sp, #6432]
    str d26, [sp, #6440]
    str d26, [sp, #6448]
    ldr d24, L64ded788ba2d_k171
    str d24, [sp, #6456]
    str d24, [sp, #6464]
    str d27, [sp, #6472]
    str d27, [sp, #6480]
    str d27, [sp, #6488]
    str d27, [sp, #6496]
    str d27, [sp, #6504]
    str d27, [sp, #6512]
    str d27, [sp, #6520]
    str d27, [sp, #6528]
    str d27, [sp, #6536]
    str d27, [sp, #6544]
    str d27, [sp, #6552]
    str d27, [sp, #6560]
    str d27, [sp, #6568]
    str d27, [sp, #6576]
    str d27, [sp, #6584]
    movz x16, #6248
    sub x10, x29, x16
    movz x16, #4288
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    fmov d24, #-1.0000000
    str d24, [sp, #8552]
    ldr d24, L64ded788ba2d_k172
    str d24, [sp, #8560]
    movz x9, #73
    str x9, [sp, #8568]
    ldr d24, L64ded788ba2d_k173
    str d24, [sp, #4288]
    str d24, [sp, #4296]
    str d24, [sp, #4304]
    str d24, [sp, #4312]
    str d24, [sp, #4320]
    str d24, [sp, #4328]
    str d24, [sp, #4336]
    str d24, [sp, #4344]
    str d24, [sp, #4352]
    str d24, [sp, #4360]
    str d24, [sp, #4368]
    str d24, [sp, #4376]
    str d24, [sp, #4384]
    str d24, [sp, #4392]
    str d24, [sp, #4400]
    ldr d24, L64ded788ba2d_k174
    str d24, [sp, #4408]
    ldr d24, L64ded788ba2d_k175
    str d24, [sp, #4416]
    ldr d24, L64ded788ba2d_k176
    str d24, [sp, #4424]
    ldr d24, L64ded788ba2d_k177
    str d24, [sp, #4432]
    ldr d24, L64ded788ba2d_k178
    str d24, [sp, #4440]
    ldr d24, L64ded788ba2d_k179
    str d24, [sp, #4448]
    str d24, [sp, #4456]
    str d24, [sp, #4464]
    str d24, [sp, #4472]
    ldr d24, L64ded788ba2d_k180
    str d24, [sp, #4480]
    ldr d24, L64ded788ba2d_k181
    str d24, [sp, #4488]
    ldr d24, L64ded788ba2d_k182
    str d24, [sp, #4496]
    ldr d24, L64ded788ba2d_k183
    str d24, [sp, #4504]
    ldr d24, L64ded788ba2d_k184
    str d24, [sp, #4512]
    ldr d24, L64ded788ba2d_k185
    str d24, [sp, #4520]
    ldr d24, L64ded788ba2d_k186
    str d24, [sp, #4528]
    ldr d24, L64ded788ba2d_k187
    str d24, [sp, #4536]
    ldr d24, L64ded788ba2d_k188
    str d24, [sp, #4544]
    ldr d24, L64ded788ba2d_k189
    str d24, [sp, #4552]
    ldr d24, L64ded788ba2d_k190
    str d24, [sp, #4560]
    ldr d24, L64ded788ba2d_k191
    str d24, [sp, #4568]
    ldr d24, L64ded788ba2d_k192
    str d24, [sp, #4576]
    ldr d24, L64ded788ba2d_k193
    str d24, [sp, #4584]
    ldr d24, L64ded788ba2d_k194
    str d24, [sp, #4592]
    ldr d24, L64ded788ba2d_k195
    str d24, [sp, #4600]
    ldr d24, L64ded788ba2d_k196
    str d24, [sp, #4608]
    ldr d24, L64ded788ba2d_k197
    str d24, [sp, #4616]
    ldr d24, L64ded788ba2d_k198
    str d24, [sp, #4624]
    ldr d24, L64ded788ba2d_k199
    str d24, [sp, #4632]
    ldr d24, L64ded788ba2d_k200
    str d24, [sp, #4640]
    ldr d24, L64ded788ba2d_k201
    str d24, [sp, #4648]
    ldr d24, L64ded788ba2d_k202
    str d24, [sp, #4656]
    ldr d24, L64ded788ba2d_k203
    str d24, [sp, #4664]
    ldr d24, L64ded788ba2d_k204
    str d24, [sp, #4672]
    ldr d24, L64ded788ba2d_k205
    str d24, [sp, #4680]
    ldr d24, L64ded788ba2d_k206
    str d24, [sp, #4688]
    ldr d24, L64ded788ba2d_k207
    str d24, [sp, #4696]
    ldr d24, L64ded788ba2d_k208
    str d24, [sp, #4704]
    ldr d24, L64ded788ba2d_k209
    str d24, [sp, #4712]
    ldr d24, L64ded788ba2d_k210
    str d24, [sp, #4720]
    ldr d24, L64ded788ba2d_k211
    str d24, [sp, #4728]
    ldr d24, L64ded788ba2d_k212
    str d24, [sp, #4736]
    ldr d24, L64ded788ba2d_k213
    str d24, [sp, #4744]
    ldr d24, L64ded788ba2d_k214
    str d24, [sp, #4752]
    ldr d24, L64ded788ba2d_k215
    str d24, [sp, #4760]
    ldr d24, L64ded788ba2d_k216
    str d24, [sp, #4768]
    ldr d24, L64ded788ba2d_k217
    str d24, [sp, #4776]
    ldr d24, L64ded788ba2d_k218
    str d24, [sp, #4784]
    ldr d24, L64ded788ba2d_k219
    str d24, [sp, #4792]
    ldr d24, L64ded788ba2d_k220
    str d24, [sp, #4800]
    ldr d24, L64ded788ba2d_k221
    str d24, [sp, #4808]
    ldr d24, L64ded788ba2d_k222
    str d24, [sp, #4816]
    ldr d24, L64ded788ba2d_k223
    str d24, [sp, #4824]
    ldr d24, L64ded788ba2d_k224
    str d24, [sp, #4832]
    ldr d24, L64ded788ba2d_k225
    str d24, [sp, #4840]
    ldr d24, L64ded788ba2d_k226
    str d24, [sp, #4848]
    ldr d24, L64ded788ba2d_k227
    str d24, [sp, #4856]
    str d24, [sp, #4864]
    str d24, [sp, #4872]
    str d24, [sp, #4880]
    str d24, [sp, #4888]
    str d24, [sp, #4896]
    str d24, [sp, #4904]
    str d24, [sp, #4912]
    str d24, [sp, #4920]
    str d24, [sp, #4928]
    str d24, [sp, #4936]
    str d24, [sp, #4944]
    str d24, [sp, #4952]
    str d24, [sp, #4960]
    str d24, [sp, #4968]
    str d24, [sp, #4976]
    str d24, [sp, #4984]
    str d24, [sp, #4992]
    str d24, [sp, #5000]
    str d24, [sp, #5008]
    str d24, [sp, #5016]
    str d24, [sp, #5024]
    str d24, [sp, #5032]
    str d24, [sp, #5040]
    str d24, [sp, #5048]
    ldr d24, L64ded788ba2d_k228
    str d24, [sp, #5056]
    str d24, [sp, #5064]
    str d24, [sp, #5072]
    str d24, [sp, #5080]
    str d24, [sp, #5088]
    str d24, [sp, #5096]
    str d24, [sp, #5104]
    str d24, [sp, #5112]
    ldr d24, L64ded788ba2d_k229
    str d24, [sp, #5120]
    ldr d24, L64ded788ba2d_k230
    str d24, [sp, #5128]
    ldr d24, L64ded788ba2d_k231
    str d24, [sp, #5136]
    str d8, [sp, #5144]
    ldr d24, L64ded788ba2d_k232
    str d24, [sp, #5152]
    ldr d24, L64ded788ba2d_k233
    str d24, [sp, #5160]
    str d24, [sp, #5168]
    str d24, [sp, #5176]
    str d24, [sp, #5184]
    ldr d24, L64ded788ba2d_k234
    str d24, [sp, #5192]
    ldr d24, L64ded788ba2d_k235
    str d24, [sp, #5200]
    ldr d24, L64ded788ba2d_k236
    str d24, [sp, #5208]
    ldr d24, L64ded788ba2d_k237
    str d24, [sp, #5216]
    ldr d24, L64ded788ba2d_k238
    str d24, [sp, #5224]
    ldr d24, L64ded788ba2d_k239
    str d24, [sp, #5232]
    ldr d24, L64ded788ba2d_k240
    str d24, [sp, #5240]
    ldr d24, L64ded788ba2d_k241
    str d24, [sp, #5248]
    ldr d24, L64ded788ba2d_k242
    str d24, [sp, #5256]
    ldr d24, L64ded788ba2d_k243
    str d24, [sp, #5264]
    ldr d24, L64ded788ba2d_k244
    str d24, [sp, #5272]
    ldr d24, L64ded788ba2d_k245
    str d24, [sp, #5280]
    ldr d24, L64ded788ba2d_k246
    str d24, [sp, #5288]
    ldr d24, L64ded788ba2d_k247
    str d24, [sp, #5296]
    ldr d24, L64ded788ba2d_k248
    str d24, [sp, #5304]
    ldr d24, L64ded788ba2d_k249
    str d24, [sp, #5312]
    ldr d24, L64ded788ba2d_k250
    str d24, [sp, #5320]
    ldr d24, L64ded788ba2d_k251
    str d24, [sp, #5328]
    ldr d24, L64ded788ba2d_k252
    str d24, [sp, #5336]
    ldr d24, L64ded788ba2d_k253
    str d24, [sp, #5344]
    ldr d24, L64ded788ba2d_k254
    str d24, [sp, #5352]
    ldr d24, L64ded788ba2d_k255
    str d24, [sp, #5360]
    ldr d24, L64ded788ba2d_k256
    str d24, [sp, #5368]
    ldr d24, L64ded788ba2d_k257
    str d24, [sp, #5376]
    ldr d24, L64ded788ba2d_k258
    str d24, [sp, #5384]
    ldr d24, L64ded788ba2d_k259
    str d24, [sp, #5392]
    ldr d24, L64ded788ba2d_k260
    str d24, [sp, #5400]
    ldr d24, L64ded788ba2d_k261
    str d24, [sp, #5408]
    ldr d24, L64ded788ba2d_k262
    str d24, [sp, #5416]
    ldr d24, L64ded788ba2d_k263
    str d24, [sp, #5424]
    ldr d24, L64ded788ba2d_k264
    str d24, [sp, #5432]
    ldr d24, L64ded788ba2d_k265
    str d24, [sp, #5440]
    ldr d24, L64ded788ba2d_k266
    str d24, [sp, #5448]
    ldr d24, L64ded788ba2d_k267
    str d24, [sp, #5456]
    ldr d24, L64ded788ba2d_k268
    str d24, [sp, #5464]
    ldr d24, L64ded788ba2d_k269
    str d24, [sp, #5472]
    ldr d24, L64ded788ba2d_k270
    str d24, [sp, #5480]
    ldr d24, L64ded788ba2d_k271
    str d24, [sp, #5488]
    ldr d24, L64ded788ba2d_k272
    str d24, [sp, #5496]
    ldr d24, L64ded788ba2d_k273
    str d24, [sp, #5504]
    ldr d24, L64ded788ba2d_k274
    str d24, [sp, #5512]
    ldr d24, L64ded788ba2d_k275
    str d24, [sp, #5520]
    ldr d24, L64ded788ba2d_k276
    str d24, [sp, #5528]
    ldr d24, L64ded788ba2d_k277
    str d24, [sp, #5536]
    ldr d24, L64ded788ba2d_k278
    str d24, [sp, #5544]
    ldr d24, L64ded788ba2d_k279
    str d24, [sp, #5552]
    ldr d24, L64ded788ba2d_k280
    str d24, [sp, #5560]
    ldr d24, L64ded788ba2d_k281
    str d24, [sp, #5568]
    str d24, [sp, #5576]
    str d24, [sp, #5584]
    str d24, [sp, #5592]
    str d24, [sp, #5600]
    str d24, [sp, #5608]
    ldr d24, L64ded788ba2d_k282
    str d24, [sp, #5616]
    ldr d24, L64ded788ba2d_k283
    str d24, [sp, #5624]
    str d24, [sp, #5632]
    str d24, [sp, #5640]
    str d24, [sp, #5648]
    str d24, [sp, #5656]
    str d24, [sp, #5664]
    str d24, [sp, #5672]
    str d24, [sp, #5680]
    str d24, [sp, #5688]
    str d24, [sp, #5696]
    str d24, [sp, #5704]
    str d24, [sp, #5712]
    str d24, [sp, #5720]
    str d24, [sp, #5728]
    str d24, [sp, #5736]
    str d24, [sp, #5744]
    str d24, [sp, #5752]
    str d24, [sp, #5760]
    str d24, [sp, #5768]
    str d24, [sp, #5776]
    str d24, [sp, #5784]
    str d24, [sp, #5792]
    str d24, [sp, #5800]
    str d24, [sp, #5808]
    str d24, [sp, #5816]
    ldr d24, L64ded788ba2d_k284
    str d24, [sp, #5824]
    str d24, [sp, #5832]
    str d24, [sp, #5840]
    ldr d24, L64ded788ba2d_k285
    str d24, [sp, #5848]
    ldr d24, L64ded788ba2d_k286
    str d24, [sp, #5856]
    ldr d24, L64ded788ba2d_k287
    str d24, [sp, #5864]
    ldr d24, L64ded788ba2d_k288
    str d24, [sp, #5872]
    ldr d24, L64ded788ba2d_k289
    str d24, [sp, #5880]
    str d24, [sp, #5888]
    str d24, [sp, #5896]
    str d24, [sp, #5904]
    ldr d24, L64ded788ba2d_k290
    str d24, [sp, #5912]
    ldr d24, L64ded788ba2d_k291
    str d24, [sp, #5920]
    ldr d24, L64ded788ba2d_k292
    str d24, [sp, #5928]
    ldr d24, L64ded788ba2d_k293
    str d24, [sp, #5936]
    ldr d24, L64ded788ba2d_k294
    str d24, [sp, #5944]
    ldr d24, L64ded788ba2d_k295
    str d24, [sp, #5952]
    ldr d24, L64ded788ba2d_k296
    str d24, [sp, #5960]
    ldr d24, L64ded788ba2d_k297
    str d24, [sp, #5968]
    ldr d24, L64ded788ba2d_k298
    str d24, [sp, #5976]
    ldr d24, L64ded788ba2d_k299
    str d24, [sp, #5984]
    ldr d24, L64ded788ba2d_k300
    str d24, [sp, #5992]
    ldr d24, L64ded788ba2d_k301
    str d24, [sp, #6000]
    ldr d24, L64ded788ba2d_k302
    str d24, [sp, #6008]
    ldr d24, L64ded788ba2d_k303
    str d24, [sp, #6016]
    ldr d24, L64ded788ba2d_k304
    str d24, [sp, #6024]
    ldr d24, L64ded788ba2d_k305
    str d24, [sp, #6032]
    ldr d24, L64ded788ba2d_k306
    str d24, [sp, #6040]
    ldr d24, L64ded788ba2d_k307
    str d24, [sp, #6048]
    ldr d24, L64ded788ba2d_k308
    str d24, [sp, #6056]
    ldr d24, L64ded788ba2d_k309
    str d24, [sp, #6064]
    ldr d24, L64ded788ba2d_k310
    str d24, [sp, #6072]
    ldr d24, L64ded788ba2d_k311
    str d24, [sp, #6080]
    ldr d24, L64ded788ba2d_k312
    str d24, [sp, #6088]
    ldr d24, L64ded788ba2d_k313
    str d24, [sp, #6096]
    ldr d24, L64ded788ba2d_k314
    str d24, [sp, #6104]
    ldr d24, L64ded788ba2d_k315
    str d24, [sp, #6112]
    ldr d24, L64ded788ba2d_k316
    str d24, [sp, #6120]
    ldr d24, L64ded788ba2d_k317
    str d24, [sp, #6128]
    ldr d24, L64ded788ba2d_k318
    str d24, [sp, #6136]
    ldr d24, L64ded788ba2d_k319
    str d24, [sp, #6144]
    ldr d24, L64ded788ba2d_k320
    str d24, [sp, #6152]
    ldr d24, L64ded788ba2d_k321
    str d24, [sp, #6160]
    ldr d24, L64ded788ba2d_k322
    str d24, [sp, #6168]
    ldr d24, L64ded788ba2d_k323
    str d24, [sp, #6176]
    ldr d24, L64ded788ba2d_k324
    str d24, [sp, #6184]
    ldr d24, L64ded788ba2d_k325
    str d24, [sp, #6192]
    ldr d24, L64ded788ba2d_k326
    str d24, [sp, #6200]
    ldr d24, L64ded788ba2d_k327
    str d24, [sp, #6208]
    ldr d24, L64ded788ba2d_k328
    str d24, [sp, #6216]
    ldr d24, L64ded788ba2d_k329
    str d24, [sp, #6224]
    ldr d24, L64ded788ba2d_k330
    str d24, [sp, #6232]
    ldr d24, L64ded788ba2d_k331
    str d24, [sp, #6240]
    ldr d24, L64ded788ba2d_k332
    str d24, [sp, #6248]
    ldr d24, L64ded788ba2d_k333
    str d24, [sp, #6256]
    ldr d24, L64ded788ba2d_k334
    str d24, [sp, #6264]
    ldr d24, L64ded788ba2d_k335
    str d24, [sp, #6272]
    ldr d24, L64ded788ba2d_k336
    str d24, [sp, #6280]
    ldr d24, L64ded788ba2d_k337
    str d24, [sp, #6288]
    str d24, [sp, #6296]
    str d24, [sp, #6304]
    str d24, [sp, #6312]
    str d24, [sp, #6320]
    str d24, [sp, #6328]
    ldr d24, L64ded788ba2d_k338
    str d24, [sp, #6336]
    ldr d24, L64ded788ba2d_k339
    str d24, [sp, #6344]
    str d24, [sp, #6352]
    str d24, [sp, #6360]
    str d24, [sp, #6368]
    str d24, [sp, #6376]
    str d24, [sp, #6384]
    str d24, [sp, #6392]
    str d24, [sp, #6400]
    str d24, [sp, #6408]
    str d24, [sp, #6416]
    str d24, [sp, #6424]
    str d24, [sp, #6432]
    str d24, [sp, #6440]
    str d24, [sp, #6448]
    str d24, [sp, #6456]
    str d24, [sp, #6464]
    str d24, [sp, #6472]
    str d24, [sp, #6480]
    str d24, [sp, #6488]
    str d24, [sp, #6496]
    str d24, [sp, #6504]
    str d24, [sp, #6512]
    str d24, [sp, #6520]
    str d24, [sp, #6528]
    str d24, [sp, #6536]
    str d24, [sp, #6544]
    str d24, [sp, #6552]
    str d24, [sp, #6560]
    str d24, [sp, #6568]
    str d24, [sp, #6576]
    str d24, [sp, #6584]
    movz x16, #6608
    sub x10, x29, x16
    sub x0, x29, #2320
    mov x1, x10
    movz x2, #2304
    bl _memcpy
    movz x16, #4304
    sub x10, x29, x16
    movz x16, #10896
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    movz x16, #10896
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #4288
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr d8, [sp, #10880]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L64ded788ba2d_k0:
    .quad 4598829142211170612
L64ded788ba2d_k1:
    .quad 4598980463158650261
L64ded788ba2d_k2:
    .quad 4599011087636116380
L64ded788ba2d_k3:
    .quad 4598940831481929400
L64ded788ba2d_k4:
    .quad 4598530103195913211
L64ded788ba2d_k5:
    .quad 4598067133154219524
L64ded788ba2d_k6:
    .quad 4597061929717390429
L64ded788ba2d_k7:
    .quad 4596056726280561335
L64ded788ba2d_k8:
    .quad 4595047919964030344
L64ded788ba2d_k9:
    .quad 4594078745324220213
L64ded788ba2d_k10:
    .quad 4592828546067662163
L64ded788ba2d_k11:
    .quad 4591380188427499812
L64ded788ba2d_k12:
    .quad 4590104769013028487
L64ded788ba2d_k13:
    .quad 4589283312440996109
L64ded788ba2d_k14:
    .quad 4588087156379966505
L64ded788ba2d_k15:
    .quad 4586545123867554847
L64ded788ba2d_k16:
    .quad 4585478671475793514
L64ded788ba2d_k17:
    .quad 4584758095535414234
L64ded788ba2d_k18:
    .quad 4584686037941376306
L64ded788ba2d_k19:
    .quad 4584772507054221820
L64ded788ba2d_k20:
    .quad 4585421025400563171
L64ded788ba2d_k21:
    .quad 4586112778303327280
L64ded788ba2d_k22:
    .quad 4587395403477202397
L64ded788ba2d_k23:
    .quad 4588332152199695460
L64ded788ba2d_k24:
    .quad 4589557131298340235
L64ded788ba2d_k25:
    .quad 4590717258562350875
L64ded788ba2d_k26:
    .quad 4591963854939207028
L64ded788ba2d_k27:
    .quad 4593441035616984551
L64ded788ba2d_k28:
    .quad 4594294918106333997
L64ded788ba2d_k29:
    .quad 4595393796415412398
L64ded788ba2d_k30:
    .quad 4596514292002702177
L64ded788ba2d_k31:
    .quad 4597768094138962123
L64ded788ba2d_k32:
    .quad 4598724658699815617
L64ded788ba2d_k33:
    .quad 4599479461997362912
L64ded788ba2d_k34:
    .quad 4600464849595831576
L64ded788ba2d_k35:
    .quad 4601563727904909977
L64ded788ba2d_k36:
    .quad 4602664407653839326
L64ded788ba2d_k37:
    .quad 4603221052567782320
L64ded788ba2d_k38:
    .quad 4603771392442246994
L64ded788ba2d_k39:
    .quad 4604320831596786195
L64ded788ba2d_k40:
    .quad 4604871171471250869
L64ded788ba2d_k41:
    .quad 4605425114225417440
L64ded788ba2d_k42:
    .quad 4605927715943831988
L64ded788ba2d_k43:
    .quad 4606389785265600201
L64ded788ba2d_k44:
    .quad 4606787002752734278
L64ded788ba2d_k45:
    .quad 4607133779924041807
L64ded788ba2d_k46:
    .quad 4607306718149732834
L64ded788ba2d_k47:
    .quad 4607415705260715200
L64ded788ba2d_k48:
    .quad 4607500823293672502
L64ded788ba2d_k49:
    .quad 4607544508210057996
L64ded788ba2d_k50:
    .quad 4607576934127375063
L64ded788ba2d_k51:
    .quad 4607567026208194848
L64ded788ba2d_k52:
    .quad 4607545859289946207
L64ded788ba2d_k53:
    .quad 4607482358535200283
L64ded788ba2d_k54:
    .quad 4607389134022913714
L64ded788ba2d_k55:
    .quad 4607248621714539754
L64ded788ba2d_k56:
    .quad 4606999572655146166
L64ded788ba2d_k57:
    .quad 4606591546528906399
L64ded788ba2d_k58:
    .quad 4606170009603784520
L64ded788ba2d_k59:
    .quad 4605728656840302212
L64ded788ba2d_k60:
    .quad 4605189125604943226
L64ded788ba2d_k61:
    .quad 4604674814527497516
L64ded788ba2d_k62:
    .quad 4604159602730126331
L64ded788ba2d_k63:
    .quad 4603635383733500405
L64ded788ba2d_k64:
    .quad 4603113866896650902
L64ded788ba2d_k65:
    .quad 4602505880946955885
L64ded788ba2d_k66:
    .quad 4601464648713107826
L64ded788ba2d_k67:
    .quad 4600421615039408819
L64ded788ba2d_k68:
    .quad 4585781313370752811
L64ded788ba2d_k69:
    .quad 4586213658934980379
L64ded788ba2d_k70:
    .quad 4587640399296931352
L64ded788ba2d_k71:
    .quad 4588649205613462343
L64ded788ba2d_k72:
    .quad 4589261695162784730
L64ded788ba2d_k73:
    .quad 4589593160095359199
L64ded788ba2d_k74:
    .quad 4589924625027933667
L64ded788ba2d_k75:
    .quad 4590263295719911929
L64ded788ba2d_k76:
    .quad 4590940637103868451
L64ded788ba2d_k77:
    .quad 4591488274818556704
L64ded788ba2d_k78:
    .quad 4590508291539640884
L64ded788ba2d_k79:
    .quad 4590097563253624694
L64ded788ba2d_k80:
    .quad 4590803727675196388
L64ded788ba2d_k81:
    .quad 4592288114112377704
L64ded788ba2d_k82:
    .quad 4593794117827770397
L64ded788ba2d_k83:
    .quad 4594921819174463970
L64ded788ba2d_k84:
    .quad 4596247678904761844
L64ded788ba2d_k85:
    .quad 4597883386289422808
L64ded788ba2d_k86:
    .quad 4599014690515818276
L64ded788ba2d_k87:
    .quad 4600349557445370891
L64ded788ba2d_k88:
    .quad 4601693431574178247
L64ded788ba2d_k89:
    .quad 4602857161717890784
L64ded788ba2d_k90:
    .quad 4603527297342443513
L64ded788ba2d_k91:
    .quad 4604150595530871590
L64ded788ba2d_k92:
    .quad 4604624374211670966
L64ded788ba2d_k93:
    .quad 4605063925535302327
L64ded788ba2d_k94:
    .quad 4605418809185939122
L64ded788ba2d_k95:
    .quad 4605721451080898419
L64ded788ba2d_k96:
    .quad 4605972751940105693
L64ded788ba2d_k97:
    .quad 4606102455609373963
L64ded788ba2d_k98:
    .quad 4606070930411982370
L64ded788ba2d_k99:
    .quad 4605954737541596211
L64ded788ba2d_k100:
    .quad 4605678216524475662
L64ded788ba2d_k101:
    .quad 4605215246482781975
L64ded788ba2d_k102:
    .quad 4604636984290627604
L64ded788ba2d_k103:
    .quad 4603921812669801169
L64ded788ba2d_k104:
    .quad 4603169711532030296
L64ded788ba2d_k105:
    .quad 4602073535382728317
L64ded788ba2d_k106:
    .quad 4600468452475533473
L64ded788ba2d_k107:
    .quad 4598984066038352157
L64ded788ba2d_k108:
    .quad 4597948238124056943
L64ded788ba2d_k109:
    .quad 4596298119220588393
L64ded788ba2d_k110:
    .quad 4594997479648203794
L64ded788ba2d_k111:
    .quad 4593992276211374699
L64ded788ba2d_k112:
    .quad 4592425023541049767
L64ded788ba2d_k113:
    .quad 4591243278998827749
L64ded788ba2d_k114:
    .quad 4590083151734817109
L64ded788ba2d_k115:
    .quad 4588231271568042361
L64ded788ba2d_k116:
    .quad 4587150407657473442
L64ded788ba2d_k117:
    .quad 4586156012859750036
L64ded788ba2d_k118:
    .quad 4583583556752596009
L64ded788ba2d_k119:
    .quad 4583381795489289811
L64ded788ba2d_k120:
    .quad 4582228873984682964
L64ded788ba2d_k121:
    .quad 4581767705382840225
L64ded788ba2d_k122:
    .quad 4579627594839913765
L64ded788ba2d_k123:
    .quad 4578993488012379999
L64ded788ba2d_k124:
    .quad 4578013504733464180
L64ded788ba2d_k125:
    .quad 4577091167529778702
L64ded788ba2d_k126:
    .quad 4576399414627014594
L64ded788ba2d_k127:
    .quad 4596489071844788902
L64ded788ba2d_k128:
    .quad 4597422217687580069
L64ded788ba2d_k129:
    .quad 4598521095996658470
L64ded788ba2d_k130:
    .quad 4599468653358257222
L64ded788ba2d_k131:
    .quad 4600693632456901997
L64ded788ba2d_k132:
    .quad 4601922214435248669
L64ded788ba2d_k133:
    .quad 4602922914272450393
L64ded788ba2d_k134:
    .quad 4603511084383784980
L64ded788ba2d_k135:
    .quad 4604096552335343144
L64ded788ba2d_k136:
    .quad 4604636083570702130
L64ded788ba2d_k137:
    .quad 4605012584499550303
L64ded788ba2d_k138:
    .quad 4605286403356894429
L64ded788ba2d_k139:
    .quad 4605429617825044811
L64ded788ba2d_k140:
    .quad 4605507079738635583
L64ded788ba2d_k141:
    .quad 4605469249501765671
L64ded788ba2d_k142:
    .quad 4605344049432124772
L64ded788ba2d_k143:
    .quad 4605127876650010988
L64ded788ba2d_k144:
    .quad 4604757680760641133
L64ded788ba2d_k145:
    .quad 4604282100639990809
L64ded788ba2d_k146:
    .quad 4603699334848209066
L64ded788ba2d_k147:
    .quad 4603073334500004567
L64ded788ba2d_k148:
    .quad 4602206841931698484
L64ded788ba2d_k149:
    .quad 4600949436915736642
L64ded788ba2d_k150:
    .quad 4599692031899774799
L64ded788ba2d_k151:
    .quad 4598436428323663905
L64ded788ba2d_k152:
    .quad 4596694435987796997
L64ded788ba2d_k153:
    .quad 4595188432272404303
L64ded788ba2d_k154:
    .quad 4594039113647499352
L64ded788ba2d_k155:
    .quad 4592396200503434596
L64ded788ba2d_k156:
    .quad 4590890196788041902
L64ded788ba2d_k157:
    .quad 4589737275283435055
L64ded788ba2d_k158:
    .quad 4588433032831348559
L64ded788ba2d_k159:
    .quad 4587525107146470667
L64ded788ba2d_k160:
    .quad 4586732473612053460
L64ded788ba2d_k161:
    .quad 4586069543746904523
L64ded788ba2d_k162:
    .quad 4584844564648259748
L64ded788ba2d_k163:
    .quad 4584361778768205631
L64ded788ba2d_k164:
    .quad 4583295326376444297
L64ded788ba2d_k165:
    .quad 4581911820570916081
L64ded788ba2d_k166:
    .quad 4580903014254385090
L64ded788ba2d_k167:
    .quad 4580701252991078892
L64ded788ba2d_k168:
    .quad 4579051134087610342
L64ded788ba2d_k169:
    .quad 4578820549786688972
L64ded788ba2d_k170:
    .quad 4578186442959155207
L64ded788ba2d_k171:
    .quad 4578935841937149657
L64ded788ba2d_k172:
    .quad 4587366580439587226
L64ded788ba2d_k173:
    .quad 4589232872125169559
L64ded788ba2d_k174:
    .quad 4589249445371798283
L64ded788ba2d_k175:
    .quad 4589805729997771086
L64ded788ba2d_k176:
    .quad 4590684112069093428
L64ded788ba2d_k177:
    .quad 4590988915691873863
L64ded788ba2d_k178:
    .quad 4591114295905499858
L64ded788ba2d_k179:
    .quad 4591140957215293891
L64ded788ba2d_k180:
    .quad 4591506289217066186
L64ded788ba2d_k181:
    .quad 4592369539193640562
L64ded788ba2d_k182:
    .quad 4593435991585401896
L64ded788ba2d_k183:
    .quad 4594067936685114524
L64ded788ba2d_k184:
    .quad 4594727263670561564
L64ded788ba2d_k185:
    .quad 4595599881134360872
L64ded788ba2d_k186:
    .quad 4596728303056994823
L64ded788ba2d_k187:
    .quad 4597838350293149103
L64ded788ba2d_k188:
    .quad 4598659086289241102
L64ded788ba2d_k189:
    .quad 4599519273818068867
L64ded788ba2d_k190:
    .quad 4600553840724468417
L64ded788ba2d_k191:
    .quad 4601734324258794772
L64ded788ba2d_k192:
    .quad 4602876076836325740
L64ded788ba2d_k193:
    .quad 4603672313250444843
L64ded788ba2d_k194:
    .quad 4604647522713755651
L64ded788ba2d_k195:
    .quad 4605742167639184323
L64ded788ba2d_k196:
    .quad 4607183995059886988
L64ded788ba2d_k197:
    .quad 4608110205359252004
L64ded788ba2d_k198:
    .quad 4609106671812804000
L64ded788ba2d_k199:
    .quad 4610098769774717446
L64ded788ba2d_k200:
    .quad 4611034302525311120
L64ded788ba2d_k201:
    .quad 4611749091340169228
L64ded788ba2d_k202:
    .quad 4612149461347042465
L64ded788ba2d_k203:
    .quad 4612622541969899599
L64ded788ba2d_k204:
    .quad 4613126697430185589
L64ded788ba2d_k205:
    .quad 4613631010516458537
L64ded788ba2d_k206:
    .quad 4614126879353430165
L64ded788ba2d_k207:
    .quad 4614552356928225993
L64ded788ba2d_k208:
    .quad 4614883101284860082
L64ded788ba2d_k209:
    .quad 4615150952872697943
L64ded788ba2d_k210:
    .quad 4615375232134140993
L64ded788ba2d_k211:
    .quad 4615563932958527817
L64ded788ba2d_k212:
    .quad 4615728021610951061
L64ded788ba2d_k213:
    .quad 4615871618885069769
L64ded788ba2d_k214:
    .quad 4615978421750232861
L64ded788ba2d_k215:
    .quad 4616074596120275358
L64ded788ba2d_k216:
    .quad 4616149423428084118
L64ded788ba2d_k217:
    .quad 4616201980435735532
L64ded788ba2d_k218:
    .quad 4616228641745529565
L64ded788ba2d_k219:
    .quad 4616251047153675734
L64ded788ba2d_k220:
    .quad 4616267575364308183
L64ded788ba2d_k221:
    .quad 4616279903968288110
L64ded788ba2d_k222:
    .quad 4616290566240405910
L64ded788ba2d_k223:
    .quad 4616296837502887023
L64ded788ba2d_k224:
    .quad 4616298481316751013
L64ded788ba2d_k225:
    .quad 4616299708547649472
L64ded788ba2d_k226:
    .quad 4616301127181532093
L64ded788ba2d_k227:
    .quad 4616301431174506941
L64ded788ba2d_k228:
    .quad 4586011897671674180
L64ded788ba2d_k229:
    .quad 4586019103431077973
L64ded788ba2d_k230:
    .quad 4586274187313972238
L64ded788ba2d_k231:
    .quad 4587749926839869002
L64ded788ba2d_k232:
    .quad 4589394281135814518
L64ded788ba2d_k233:
    .quad 4589498044071229134
L64ded788ba2d_k234:
    .quad 4589570822241207441
L64ded788ba2d_k235:
    .quad 4590116298228074556
L64ded788ba2d_k236:
    .quad 4591107090146096065
L64ded788ba2d_k237:
    .quad 4592186512904784225
L64ded788ba2d_k238:
    .quad 4593258729904068593
L64ded788ba2d_k239:
    .quad 4594200882946114501
L64ded788ba2d_k240:
    .quad 4595162131250580459
L64ded788ba2d_k241:
    .quad 4596333067153696788
L64ded788ba2d_k242:
    .quad 4597464731668062447
L64ded788ba2d_k243:
    .quad 4598537669243287194
L64ded788ba2d_k244:
    .quad 4599471715806003834
L64ded788ba2d_k245:
    .quad 4600562847923723158
L64ded788ba2d_k246:
    .quad 4601799536381399096
L64ded788ba2d_k247:
    .quad 4602948044358371120
L64ded788ba2d_k248:
    .quad 4603803998503549157
L64ded788ba2d_k249:
    .quad 4604835773178179737
L64ded788ba2d_k250:
    .quad 4606017247504424113
L64ded788ba2d_k251:
    .quad 4607398321366153550
L64ded788ba2d_k252:
    .quad 4608373665937453178
L64ded788ba2d_k253:
    .quad 4609375086350595281
L64ded788ba2d_k254:
    .quad 4610353313225656427
L64ded788ba2d_k255:
    .quad 4611245656455823617
L64ded788ba2d_k256:
    .quad 4611841302542539639
L64ded788ba2d_k257:
    .quad 4612263019611646612
L64ded788ba2d_k258:
    .quad 4612756433986821323
L64ded788ba2d_k259:
    .quad 4613263584340859515
L64ded788ba2d_k260:
    .quad 4613765397929339273
L64ded788ba2d_k261:
    .quad 4614245616757605789
L64ded788ba2d_k262:
    .quad 4614637159709209379
L64ded788ba2d_k263:
    .quad 4614938653186263697
L64ded788ba2d_k264:
    .quad 4615188580447584623
L64ded788ba2d_k265:
    .quad 4615398718406197730
L64ded788ba2d_k266:
    .quad 4615576610591478865
L64ded788ba2d_k267:
    .quad 4615732817944554211
L64ded788ba2d_k268:
    .quad 4615865606579567230
L64ded788ba2d_k269:
    .quad 4615963154547496075
L64ded788ba2d_k270:
    .quad 4616054690209922380
L64ded788ba2d_k271:
    .quad 4616122942262275180
L64ded788ba2d_k272:
    .quad 4616184641577170156
L64ded788ba2d_k273:
    .quad 4616211798282923200
L64ded788ba2d_k274:
    .quad 4616232402251218420
L64ded788ba2d_k275:
    .quad 4616246971396012963
L64ded788ba2d_k276:
    .quad 4616258354244071142
L64ded788ba2d_k277:
    .quad 4616267946911277441
L64ded788ba2d_k278:
    .quad 4616272382956910401
L64ded788ba2d_k279:
    .quad 4616273182345844260
L64ded788ba2d_k280:
    .quad 4616274567202729676
L64ded788ba2d_k281:
    .quad 4616275760656630929
L64ded788ba2d_k282:
    .quad 4616276762707548019
L64ded788ba2d_k283:
    .quad 4616282144509102727
L64ded788ba2d_k284:
    .quad 4591971060698610821
L64ded788ba2d_k285:
    .quad 4592002766039987509
L64ded788ba2d_k286:
    .quad 4592708930461559203
L64ded788ba2d_k287:
    .quad 4593624061905840888
L64ded788ba2d_k288:
    .quad 4593714854474328677
L64ded788ba2d_k289:
    .quad 4593775382853320536
L64ded788ba2d_k290:
    .quad 4593778625445052243
L64ded788ba2d_k291:
    .quad 4594015694929437026
L64ded788ba2d_k292:
    .quad 4594502443977163229
L64ded788ba2d_k293:
    .quad 4595048280252000533
L64ded788ba2d_k294:
    .quad 4595556646577938115
L64ded788ba2d_k295:
    .quad 4596261369847629050
L64ded788ba2d_k296:
    .quad 4597185148203195286
L64ded788ba2d_k297:
    .quad 4598272317153242524
L64ded788ba2d_k298:
    .quad 4598818693860035112
L64ded788ba2d_k299:
    .quad 4599504141723320902
L64ded788ba2d_k300:
    .quad 4600415670287900690
L64ded788ba2d_k301:
    .quad 4601486806423274489
L64ded788ba2d_k302:
    .quad 4602689627811752601
L64ded788ba2d_k303:
    .quad 4603378768626732834
L64ded788ba2d_k304:
    .quad 4604207881318131743
L64ded788ba2d_k305:
    .quad 4605225424617939833
L64ded788ba2d_k306:
    .quad 4606347901789065655
L64ded788ba2d_k307:
    .quad 4607534870506855423
L64ded788ba2d_k308:
    .quad 4608505441262550039
L64ded788ba2d_k309:
    .quad 4609508933331520733
L64ded788ba2d_k310:
    .quad 4610496842945780725
L64ded788ba2d_k311:
    .quad 4611414991801812748
L64ded788ba2d_k312:
    .quad 4611920363233998128
L64ded788ba2d_k313:
    .quad 4612330483534064622
L64ded788ba2d_k314:
    .quad 4612821465965440553
L64ded788ba2d_k315:
    .quad 4613329269341424714
L64ded788ba2d_k316:
    .quad 4613832434009792682
L64ded788ba2d_k317:
    .quad 4614324992701038194
L64ded788ba2d_k318:
    .quad 4614730226595508991
L64ded788ba2d_k319:
    .quad 4615039286119937291
L64ded788ba2d_k320:
    .quad 4615295000506779388
L64ded788ba2d_k321:
    .quad 4615509979834991918
L64ded788ba2d_k322:
    .quad 4615690979504015939
L64ded788ba2d_k323:
    .quad 4615850024124856528
L64ded788ba2d_k324:
    .quad 4615988667439385128
L64ded788ba2d_k325:
    .quad 4616086530659287889
L64ded788ba2d_k326:
    .quad 4616181826827403049
L64ded788ba2d_k327:
    .quad 4616220231273225451
L64ded788ba2d_k328:
    .quad 4616252015427595618
L64ded788ba2d_k329:
    .quad 4616277190549512619
L64ded788ba2d_k330:
    .quad 4616298717755731450
L64ded788ba2d_k331:
    .quad 4616313793555484073
L64ded788ba2d_k332:
    .quad 4616325334029529210
L64ded788ba2d_k333:
    .quad 4616335669790674025
L64ded788ba2d_k334:
    .quad 4616340736340254817
L64ded788ba2d_k335:
    .quad 4616341434398197059
L64ded788ba2d_k336:
    .quad 4616342819255082476
L64ded788ba2d_k337:
    .quad 4616344215370966961
L64ded788ba2d_k338:
    .quad 4616344305442959508
L64ded788ba2d_k339:
    .quad 4616350599223438758


    .p2align 2
    .globl _lb_10film_print_make
_lb_10film_print_make:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #36000
    sub sp, sp, x16
    sub x16, x29, #8
    str x19, [x16]
    sub x16, x29, #16
    str x20, [x16]
    sub x16, x29, #24
    str d8, [x16]
    sub x16, x29, #32
    str d9, [x16]
    sub x16, x29, #40
    str d10, [x16]
    sub x16, x29, #48
    str d11, [x16]
    sub x16, x29, #56
    str d12, [x16]
    movz x16, #4344
    sub x16, x29, x16
    str x0, [x16]
    movz x16, #4360
    sub x16, x29, x16
    str d0, [x16]
    movz x16, #4376
    sub x16, x29, x16
    str d1, [x16]
    movz x16, #4392
    sub x16, x29, x16
    str d2, [x16]
    movz x16, #4408
    sub x16, x29, x16
    str d3, [x16]
    movz x16, #4424
    sub x16, x29, x16
    str d4, [x16]
    movz x16, #4440
    sub x16, x29, x16
    str w1, [x16]
    movz x16, #4344
    sub x0, x29, x16
    ldr x1, [x0]
    movz x2, #4288
    bl _memcpy
    ldr d8, [sp, #31640]
    ldr d9, [sp, #31624]
    ldr d10, [sp, #31608]
    ldr d11, [sp, #31592]
    ldr d12, [sp, #31576]
    movz x16, #4440
    sub x16, x29, x16
    ldrb w19, [x16]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, Ldc51e41d8031_4
Ldc51e41d8031_3:
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #31616
    movz x2, #8
    movz x16, #4368
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    movz x16, #4352
    sub x16, x29, x16
    ldrb w14, [x16]
    cbnz w14, Ldc51e41d8031_5
Ldc51e41d8031_6:
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
    adrp x15, _lb_text_5858b571e312@PAGE
    add x15, x15, _lb_text_5858b571e312@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    movz w15, #1
    b Ldc51e41d8031_7
Ldc51e41d8031_5:
    ldr x20, [sp, #31632]
    movz x16, #35960
    sub x0, x29, x16
    mov x1, #0
    movz x2, #31616
    bl _memset
    movz x16, #4344
    sub x10, x29, x16
    movz x16, #35960
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4288
    bl _memcpy
    str d9, [sp, #4328]
    str d10, [sp, #4336]
    str d11, [sp, #4344]
    str d12, [sp, #4352]
    sub x8, x29, #2000
    bl _lb_densitometry_8status_a
    sub x10, x29, #2000
    movz x16, #7040
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    fmov d0, d8
    sub x8, x29, #704
    bl _lb_19luce_color_spectral_planck
    sub x10, x29, #704
    movz x16, #5096
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    movz x16, #4352
    sub x16, x29, x16
    strb w19, [x16]
    sub x11, x29, #128
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d24, #1.0000000
    str d24, [x29, #-200]
    fmov d25, xzr
    str d25, [x29, #-192]
    str d25, [x29, #-184]
    str d25, [x29, #-176]
    str d24, [x29, #-168]
    str d25, [x29, #-160]
    str d25, [x29, #-152]
    str d25, [x29, #-144]
    str d24, [x29, #-136]
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
    movz x16, #4424
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
    movz x16, #35960
    sub x10, x29, x16
    mov x0, x20
    mov x1, x10
    movz x2, #31616
    bl _memcpy
    mov x14, x20
    mov w15, #0
Ldc51e41d8031_7:
    and w15, w15, #255
    cbz w15, Ldc51e41d8031_8
Ldc51e41d8031_9:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    movz x16, #35984
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b Ldc51e41d8031_1
Ldc51e41d8031_8:
    mov x19, x14
    b Ldc51e41d8031_2
Ldc51e41d8031_1:
    adrp x14, _lb_text_7314a44ef11a@PAGE
    add x14, x14, _lb_text_7314a44ef11a@PAGEOFF
    str x14, [sp, #0]
    movz x9, #38
    str x9, [sp, #8]
    adrp x14, _lb_text_ef613e9eedc0@PAGE
    add x14, x14, _lb_text_ef613e9eedc0@PAGEOFF
    mov x0, x14
    movz x16, #36000
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    movz x16, #35976
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
    mov x19, #0
Ldc51e41d8031_2:
    mov x0, x19
    bl _lb_10film_print_build
    mov x0, x19
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr x20, [x16]
    sub x16, x29, #24
    ldr d8, [x16]
    sub x16, x29, #32
    ldr d9, [x16]
    sub x16, x29, #40
    ldr d10, [x16]
    sub x16, x29, #48
    ldr d11, [x16]
    sub x16, x29, #56
    ldr d12, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc51e41d8031_4:
    adrp x0, _lb_text_5858b571e312@PAGE
    add x0, x0, _lb_text_5858b571e312@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13luce_std_math_min
_lb_13luce_std_math_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L44a023ec51ee_2
L44a023ec51ee_1:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44a023ec51ee_2:
L44a023ec51ee_3:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L44a023ec51ee_6
L44a023ec51ee_5:
    fmov d0, d25
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44a023ec51ee_6:
L44a023ec51ee_7:
    fmov d26, xzr
    fcmp d26, d24
    b.ne L44a023ec51ee_10
L44a023ec51ee_12:
    fcmp d26, d25
    b.ne L44a023ec51ee_10
L44a023ec51ee_9:
    orr x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44a023ec51ee_10:
L44a023ec51ee_11:
    fcmp d24, d25
    fcsel d24, d24, d25, mi
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_PrintModel_passed
_lb_10film_print_PrintModel_passed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d8, d0
    mov x14, x0
    movz x10, #31608
    add x14, x14, x10
    ldrb w14, [x14]
    cbz w14, L4d1fe589a3fc_2
L4d1fe589a3fc_1:
    adrp x14, _lb_10film_print_15reflection_once@PAGE
    add x14, x14, _lb_10film_print_15reflection_once@PAGEOFF
    adrp x15, _lb_10film_print_15make_reflection@GOTPAGE
    ldr x15, [x15, _lb_10film_print_15make_reflection@GOTPAGEOFF]
    mov x0, x14
    mov x1, x15
    bl _lb_sync_Once_run
    adrp x14, _lb_10film_print_15reflection_most@PAGE
    add x14, x14, _lb_10film_print_15reflection_most@PAGEOFF
    ldr d24, [x14]
    fdiv d24, d8, d24
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    b.hi L4d1fe589a3fc_12
L4d1fe589a3fc_11:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L4d1fe589a3fc_14
L4d1fe589a3fc_13:
    b L4d1fe589a3fc_26
L4d1fe589a3fc_14:
L4d1fe589a3fc_15:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
L4d1fe589a3fc_26:
    movz x9, #599
    ucvtf d27, x9
    fmul d24, d27, d24
    frintm d27, d24
    movz x9, #598
    ucvtf d28, x9
    fmov x14, d27
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L4d1fe589a3fc_28
L4d1fe589a3fc_27:
    b L4d1fe589a3fc_48
L4d1fe589a3fc_28:
L4d1fe589a3fc_29:
    fmov x15, d28
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L4d1fe589a3fc_32
L4d1fe589a3fc_31:
    fmov d27, d28
    b L4d1fe589a3fc_48
L4d1fe589a3fc_32:
L4d1fe589a3fc_33:
    fcmp d25, d27
    b.ne L4d1fe589a3fc_36
L4d1fe589a3fc_38:
    fcmp d25, d28
    b.ne L4d1fe589a3fc_36
L4d1fe589a3fc_35:
    orr x14, x14, x15
    fmov d27, x14
    b L4d1fe589a3fc_48
L4d1fe589a3fc_36:
L4d1fe589a3fc_37:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
L4d1fe589a3fc_48:
    fcvtzu x14, d27
    ucvtf d25, x14
    fsub d24, d24, d25
    adrp x15, _lb_10film_print_16reflection_table@PAGE
    add x15, x15, _lb_10film_print_16reflection_table@PAGEOFF
    movz x10, #600
    cmp x14, x10
    b.hs L4d1fe589a3fc_c1
    add x15, x15, x14, lsl #3
    ldr d25, [x15]
    fsub d26, d26, d24
    fmul d25, d25, d26
    add x14, x14, #1
    movz x10, #600
    cmp x14, x10
    b.hs L4d1fe589a3fc_c2
    ldr d26, [x15, #8]
    fmul d24, d24, d26
    fadd d24, d25, d24
    b L4d1fe589a3fc_3
L4d1fe589a3fc_2:
    fmov d24, #10.0000000
    fneg d25, d8
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
L4d1fe589a3fc_3:
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4d1fe589a3fc_12:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L4d1fe589a3fc_c1:
    adrp x0, _lb_text_0f44361964ad@PAGE
    add x0, x0, _lb_text_0f44361964ad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4d1fe589a3fc_c2:
    adrp x0, _lb_text_0f44361964ad@PAGE
    add x0, x0, _lb_text_0f44361964ad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
.subsections_via_symbols
