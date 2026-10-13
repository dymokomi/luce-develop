    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_12film_develop_14normal_minutes
_lb_12film_develop_14normal_minutes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    str d8, [sp, #0]
    mov x14, x0
    mov x15, x1
    adrp x19, _lb_12film_develop_processes@PAGE
    add x19, x19, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x15, x10
    b.hs L0c372d75f238_c1
    movz x10, #112
    mul x15, x15, x10
    add x15, x19, x15
    ldr d24, [x15, #24]
    ldr d25, [x14, #56]
    fmov d26, xzr
    fcmp d25, d26
    b.hi L0c372d75f238_2
L0c372d75f238_1:
    fmov d0, d24
    ldr x19, [sp, #8]
    ldr d8, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0c372d75f238_2:
L0c372d75f238_3:
    fmul d8, d24, d25
    mov x0, x14
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    movz x10, #19
    cmp x14, x10
    b.hs L0c372d75f238_c2
    movz x10, #112
    mul x14, x14, x10
    add x14, x19, x14
    ldr d24, [x14, #24]
    fdiv d24, d8, d24
    fmov d0, d24
    ldr x19, [sp, #8]
    ldr d8, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0c372d75f238_c1:
    adrp x0, _lb_text_814b0f450e67@PAGE
    add x0, x0, _lb_text_814b0f450e67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0c372d75f238_c2:
    adrp x0, _lb_text_b382f26118e6@PAGE
    add x0, x0, _lb_text_b382f26118e6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12film_develop_ratio
_lb_12film_develop_ratio:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str d8, [sp, #120]
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    mov x14, x0
    adrp x15, _lb_12film_develop_processes@PAGE
    add x15, x15, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x14, x10
    b.hs L1bb5ea711d10_c1
    movz x10, #112
    mul x14, x14, x10
    add x14, x15, x14
    sub x11, x29, #120
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
    ldrb w15, [sp, #104]
    cbz w15, L1bb5ea711d10_2
L1bb5ea711d10_1:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr d8, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1bb5ea711d10_2:
L1bb5ea711d10_3:
    fmov d28, xzr
    fcmp d26, d28
    b.le L1bb5ea711d10_6
L1bb5ea711d10_5:
    b L1bb5ea711d10_7
L1bb5ea711d10_6:
    ldr d26, [sp, #32]
L1bb5ea711d10_7:
    fcmp d24, d28
    fcsel d24, d24, d26, gt
    fdiv d8, d24, d26
    sub x11, x29, #120
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
    ldr d24, [sp, #40]
    ldr d26, L1bb5ea711d10_k0
    fadd d29, d24, d26
    fcmp d25, d28
    fcsel d24, d25, d24, gt
    fadd d24, d26, d24
    ldr d25, [sp, #48]
    fmul d25, d25, d27
    adrp x14, _lb_12film_develop_12gas_constant@PAGE
    add x14, x14, _lb_12film_develop_12gas_constant@PAGEOFF
    ldr d26, [x14]
    fmul d25, d25, d26
    fmul d25, d29, d25
    fmul d25, d29, d25
    fdiv d25, d25, d26
    fmov d26, #1.0000000
    fdiv d27, d26, d29
    fdiv d24, d26, d24
    fsub d24, d27, d24
    fmul d24, d25, d24
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
L1bb5ea711d10_18:
    fmul d24, d8, d24
    adrp x14, _lb_12film_develop_least@PAGE
    add x14, x14, _lb_12film_develop_least@PAGEOFF
    ldr d25, [x14]
    adrp x14, _lb_12film_develop_most@PAGE
    add x14, x14, _lb_12film_develop_most@PAGEOFF
    ldr d26, [x14]
    fcmp d25, d26
    b.hi L1bb5ea711d10_20
L1bb5ea711d10_19:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L1bb5ea711d10_22
L1bb5ea711d10_21:
    b L1bb5ea711d10_34
L1bb5ea711d10_22:
L1bb5ea711d10_23:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
L1bb5ea711d10_34:
    fmov d0, d24
    ldr d8, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1bb5ea711d10_20:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L1bb5ea711d10_c1:
    adrp x0, _lb_text_20783cdc9dff@PAGE
    add x0, x0, _lb_text_20783cdc9dff@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L1bb5ea711d10_k0:
    .quad 4643512921809643110


    .p2align 2
    .globl _lb_12film_develop_Development_9factor_at
_lb_12film_develop_Development_9factor_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str d8, [sp, #32]
    str d9, [sp, #24]
    str d10, [sp, #16]
    str d11, [sp, #8]
    fmov d24, d0
    fmov d8, d1
    mov x19, x0
    mov x14, x1
    add x15, x19, #32
    movz x10, #3
    cmp x14, x10
    b.hs L8662c4905d5b_c1
    lsl x14, x14, #3
    ldr d9, [x15, x14]
    fmov d25, #10.0000000
    add x15, x19, #56
    ldr d26, [x14, x15]
    ldr d27, [x19, #24]
    fsub d24, d24, d27
    fmul d24, d26, d24
    fmov d0, d25
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d9, d24
    ldr d25, [x19, #80]
    fsub d26, d8, d25
    fmov d8, xzr
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8662c4905d5b_9
L8662c4905d5b_8:
    b L8662c4905d5b_29
L8662c4905d5b_9:
L8662c4905d5b_10:
    fmov x15, d8
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8662c4905d5b_13
L8662c4905d5b_12:
    fmov d26, d8
    b L8662c4905d5b_29
L8662c4905d5b_13:
L8662c4905d5b_14:
    fcmp d26, d8
    b.ne L8662c4905d5b_17
L8662c4905d5b_19:
    fcmp d8, d8
    b.ne L8662c4905d5b_17
L8662c4905d5b_16:
    and x14, x14, x15
    fmov d26, x14
    b L8662c4905d5b_29
L8662c4905d5b_17:
L8662c4905d5b_18:
    fcmp d26, d8
    fcsel d26, d26, d8, gt
L8662c4905d5b_29:
    fmov d9, #1.0000000
    fsub d25, d9, d25
    ldr d27, L8662c4905d5b_k0
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8662c4905d5b_31
L8662c4905d5b_30:
    b L8662c4905d5b_51
L8662c4905d5b_31:
L8662c4905d5b_32:
    fmov x15, d27
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8662c4905d5b_35
L8662c4905d5b_34:
    fmov d25, d27
    b L8662c4905d5b_51
L8662c4905d5b_35:
L8662c4905d5b_36:
    fcmp d8, d25
    b.ne L8662c4905d5b_39
L8662c4905d5b_41:
    fcmp d8, d27
    b.ne L8662c4905d5b_39
L8662c4905d5b_38:
    and x14, x14, x15
    fmov d25, x14
    b L8662c4905d5b_51
L8662c4905d5b_39:
L8662c4905d5b_40:
    fcmp d25, d27
    fcsel d25, d25, d27, gt
L8662c4905d5b_51:
    fdiv d25, d26, d25
    fneg d10, d24
    fmul d24, d25, d10
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fsub d11, d9, d24
    fmov d0, d10
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fsub d24, d9, d24
    ldr d25, L8662c4905d5b_k1
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L8662c4905d5b_53
L8662c4905d5b_52:
    b L8662c4905d5b_73
L8662c4905d5b_53:
L8662c4905d5b_54:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L8662c4905d5b_57
L8662c4905d5b_56:
    fmov d24, d25
    b L8662c4905d5b_73
L8662c4905d5b_57:
L8662c4905d5b_58:
    fcmp d8, d24
    b.ne L8662c4905d5b_61
L8662c4905d5b_63:
    fcmp d8, d25
    b.ne L8662c4905d5b_61
L8662c4905d5b_60:
    and x14, x14, x15
    fmov d24, x14
    b L8662c4905d5b_73
L8662c4905d5b_61:
L8662c4905d5b_62:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
L8662c4905d5b_73:
    fdiv d24, d11, d24
    fmov d0, d24
    ldr x19, [sp, #40]
    ldr d8, [sp, #32]
    ldr d9, [sp, #24]
    ldr d10, [sp, #16]
    ldr d11, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8662c4905d5b_c1:
    adrp x0, _lb_text_6aee4c5ca3a5@PAGE
    add x0, x0, _lb_text_6aee4c5ca3a5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8662c4905d5b_k0:
    .quad 4472406533629990549
L8662c4905d5b_k1:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_test_38
_lb_test_38:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18208
    sub sp, sp, x16
    str x19, [sp, #18200]
    str x20, [sp, #18192]
    str x21, [sp, #18184]
    str x22, [sp, #18176]
    str d8, [sp, #18168]
    str d9, [sp, #18160]
    str d10, [sp, #18152]
    str d11, [sp, #18144]
    str d12, [sp, #18136]
    str d13, [sp, #18128]
    movz x0, #17
    movz x16, #9032
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9032
    sub x10, x29, x16
    movz x16, #17984
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #17984
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x19, x0
    ldr d8, [sp, #4872]
    fmov d24, #-2.0000000
    ldr d25, Le4ecb5950264_k0
    ldr d26, Le4ecb5950264_k1
    ldr d27, Le4ecb5950264_k2
    str d24, [sp, #18096]
    str d25, [sp, #18104]
    str d26, [sp, #18112]
    str d27, [sp, #18120]
    ldr d24, Le4ecb5950264_k3
    ldr d25, Le4ecb5950264_k4
    ldr d26, Le4ecb5950264_k5
    ldr d27, Le4ecb5950264_k6
    str d24, [sp, #18064]
    str d25, [sp, #18072]
    str d26, [sp, #18080]
    str d27, [sp, #18088]
    fmov d24, #6.0000000
    fmov d25, #10.0000000
    fmov d26, #12.0000000
    str d24, [sp, #18040]
    str d25, [sp, #18048]
    str d26, [sp, #18056]
    ldr d24, Le4ecb5950264_k7
    str d24, [sp, #17848]
    ldr d24, Le4ecb5950264_k8
    str d24, [sp, #17856]
    ldr d24, Le4ecb5950264_k9
    str d24, [sp, #17864]
    ldr d24, Le4ecb5950264_k10
    str d24, [sp, #17872]
    ldr d24, Le4ecb5950264_k11
    str d24, [sp, #17880]
    ldr d24, Le4ecb5950264_k12
    str d24, [sp, #17888]
    ldr d24, Le4ecb5950264_k13
    str d24, [sp, #17896]
    ldr d24, Le4ecb5950264_k14
    str d24, [sp, #17904]
    ldr d24, Le4ecb5950264_k15
    str d24, [sp, #17912]
    ldr d24, Le4ecb5950264_k16
    str d24, [sp, #17920]
    ldr d24, Le4ecb5950264_k17
    str d24, [sp, #17928]
    ldr d24, Le4ecb5950264_k18
    str d24, [sp, #17936]
    sub x10, x29, #360
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
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    fmov d9, #20.0000000
    fmov d10, #1.0000000
    ldr d11, Le4ecb5950264_k19
    mov x20, #0
Le4ecb5950264_1:
    cmp x20, #3
    b.hs Le4ecb5950264_4
    .p2align 4
Le4ecb5950264_2:
    sub x10, x29, #168
    ldr d24, [x10, x20, lsl #3]
    fmov d0, d24
    fmov d1, d9
    mov x1, x19
    movz x16, #17984
    sub x0, x29, x16
    mov x2, #0
    sub x8, x29, #472
    bl _lb_12film_develop_developing
    sub x10, x29, #472
    movz x16, #18192
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    lsl x21, x20, #2
    mov x22, #0
Le4ecb5950264_5:
    cmp x22, #4
    b.hs Le4ecb5950264_8
    .p2align 4
Le4ecb5950264_6:
    ldr d24, [sp, #104]
    ldr d25, [sp, #24]
    fsub d25, d25, d10
    fmul d24, d24, d25
    fadd d12, d8, d24
    lsl x14, x22, #3
    sub x10, x29, #144
    ldr d24, [x10, x14]
    fsub d13, d24, d8
    sub x10, x29, #112
    ldr d24, [x10, x14]
    ldr d25, [sp, #16]
    fmov d0, d24
    fmov d1, d25
    movz x16, #18192
    sub x0, x29, x16
    mov x1, #0
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fmul d24, d24, d13
    fadd d24, d24, d12
    add x14, x21, x22
    movz x10, #12
    cmp x14, x10
    b.hs Le4ecb5950264_c1
    sub x10, x29, #264
    ldr d25, [x10, x14, lsl #3]
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d11
    b.mi Le4ecb5950264_9
Le4ecb5950264_10:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_13a20acbb3db@PAGE
    add x14, x14, _lb_text_13a20acbb3db@PAGEOFF
    adrp x15, _lb_text_553ee12ec8a8@PAGE
    add x15, x15, _lb_text_553ee12ec8a8@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18208
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18200]
    ldr x20, [sp, #18192]
    ldr x21, [sp, #18184]
    ldr x22, [sp, #18176]
    ldr d8, [sp, #18168]
    ldr d9, [sp, #18160]
    ldr d10, [sp, #18152]
    ldr d11, [sp, #18144]
    ldr d12, [sp, #18136]
    ldr d13, [sp, #18128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le4ecb5950264_9:
    add x22, x22, #1
    cmp x22, #4
    b.lo Le4ecb5950264_6
Le4ecb5950264_8:
    add x20, x20, #1
    cmp x20, #3
    b.lo Le4ecb5950264_2
Le4ecb5950264_4:
    mov x0, #0
    ldr x19, [sp, #18200]
    ldr x20, [sp, #18192]
    ldr x21, [sp, #18184]
    ldr x22, [sp, #18176]
    ldr d8, [sp, #18168]
    ldr d9, [sp, #18160]
    ldr d10, [sp, #18152]
    ldr d11, [sp, #18144]
    ldr d12, [sp, #18136]
    ldr d13, [sp, #18128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le4ecb5950264_c1:
    adrp x0, _lb_text_13a20acbb3db@PAGE
    add x0, x0, _lb_text_13a20acbb3db@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Le4ecb5950264_k0:
    .quad 13832355895505741414
Le4ecb5950264_k1:
    .quad 13828753015803845018
Le4ecb5950264_k2:
    .quad 13819745816549104026
Le4ecb5950264_k3:
    .quad 4604600955493608640
Le4ecb5950264_k4:
    .quad 4607519738412107458
Le4ecb5950264_k5:
    .quad 4609277943706632900
Le4ecb5950264_k6:
    .quad 4610894735972858908
Le4ecb5950264_k7:
    .quad 4603059823701122456
Le4ecb5950264_k8:
    .quad 4605660202125966180
Le4ecb5950264_k9:
    .quad 4607934069577825544
Le4ecb5950264_k10:
    .quad 4609353153820409987
Le4ecb5950264_k11:
    .quad 4606049313133770991
Le4ecb5950264_k12:
    .quad 4608549711646887091
Le4ecb5950264_k13:
    .quad 4610524540083489053
Le4ecb5950264_k14:
    .quad 4612004648101024367
Le4ecb5950264_k15:
    .quad 4607485511054939442
Le4ecb5950264_k16:
    .quad 4609728303669369949
Le4ecb5950264_k17:
    .quad 4611785322799171423
Le4ecb5950264_k18:
    .quad 4612734681600621124
Le4ecb5950264_k19:
    .quad 4590429028186199163


    .p2align 2
    .globl _lb_test_39
_lb_test_39:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18208
    sub sp, sp, x16
    str x19, [sp, #18200]
    str x20, [sp, #18192]
    str x21, [sp, #18184]
    str x22, [sp, #18176]
    str d8, [sp, #18168]
    str d9, [sp, #18160]
    str d10, [sp, #18152]
    str d11, [sp, #18144]
    str d12, [sp, #18136]
    str d13, [sp, #18128]
    movz x0, #5
    movz x16, #9032
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9032
    sub x10, x29, x16
    movz x16, #17984
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #17984
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x19, x0
    ldr d8, [sp, #4872]
    ldr d24, L24a74ef3db82_k0
    ldr d25, L24a74ef3db82_k1
    ldr d26, L24a74ef3db82_k2
    fmov d27, #-0.2500000
    str d24, [sp, #18096]
    str d25, [sp, #18104]
    str d26, [sp, #18112]
    str d27, [sp, #18120]
    ldr d24, L24a74ef3db82_k3
    ldr d25, L24a74ef3db82_k4
    fmov d26, #0.8125000
    ldr d27, L24a74ef3db82_k5
    str d24, [sp, #18064]
    str d25, [sp, #18072]
    str d26, [sp, #18080]
    str d27, [sp, #18088]
    fmov d24, #4.0000000
    fmov d25, #10.0000000
    str d24, [sp, #18048]
    str d25, [sp, #18056]
    ldr d24, L24a74ef3db82_k6
    ldr d25, L24a74ef3db82_k7
    ldr d26, L24a74ef3db82_k8
    ldr d27, L24a74ef3db82_k9
    ldr d28, L24a74ef3db82_k10
    ldr d29, L24a74ef3db82_k11
    ldr d30, L24a74ef3db82_k12
    ldr d31, L24a74ef3db82_k13
    str d24, [sp, #17984]
    str d25, [sp, #17992]
    str d26, [sp, #18000]
    str d27, [sp, #18008]
    str d28, [sp, #18016]
    str d29, [sp, #18024]
    str d30, [sp, #18032]
    str d31, [sp, #18040]
    fmov d9, #20.0000000
    fmov d10, #1.0000000
    ldr d11, L24a74ef3db82_k14
    mov x20, #0
L24a74ef3db82_1:
    cmp x20, #2
    b.hs L24a74ef3db82_4
    .p2align 4
L24a74ef3db82_2:
    sub x10, x29, #160
    ldr d24, [x10, x20, lsl #3]
    fmov d0, d24
    fmov d1, d9
    mov x1, x19
    movz x16, #17984
    sub x0, x29, x16
    mov x2, #0
    sub x8, x29, #432
    bl _lb_12film_develop_developing
    sub x10, x29, #432
    movz x16, #18192
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    lsl x21, x20, #2
    mov x22, #0
L24a74ef3db82_5:
    cmp x22, #4
    b.hs L24a74ef3db82_8
    .p2align 4
L24a74ef3db82_6:
    ldr d24, [sp, #104]
    ldr d25, [sp, #24]
    fsub d25, d25, d10
    fmul d24, d24, d25
    fadd d12, d8, d24
    lsl x14, x22, #3
    sub x10, x29, #144
    ldr d24, [x10, x14]
    fsub d13, d24, d8
    sub x10, x29, #112
    ldr d24, [x10, x14]
    ldr d25, [sp, #16]
    fmov d0, d24
    fmov d1, d25
    movz x16, #18192
    sub x0, x29, x16
    mov x1, #0
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fmul d24, d24, d13
    fadd d24, d24, d12
    add x14, x21, x22
    movz x10, #8
    cmp x14, x10
    b.hs L24a74ef3db82_c1
    sub x10, x29, #224
    ldr d25, [x10, x14, lsl #3]
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d11
    b.mi L24a74ef3db82_9
L24a74ef3db82_10:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_e6597e9df0fe@PAGE
    add x14, x14, _lb_text_e6597e9df0fe@PAGEOFF
    adrp x15, _lb_text_efaa026efd83@PAGE
    add x15, x15, _lb_text_efaa026efd83@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18208
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18200]
    ldr x20, [sp, #18192]
    ldr x21, [sp, #18184]
    ldr x22, [sp, #18176]
    ldr d8, [sp, #18168]
    ldr d9, [sp, #18160]
    ldr d10, [sp, #18152]
    ldr d11, [sp, #18144]
    ldr d12, [sp, #18136]
    ldr d13, [sp, #18128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24a74ef3db82_9:
    add x22, x22, #1
    cmp x22, #4
    b.lo L24a74ef3db82_6
L24a74ef3db82_8:
    add x20, x20, #1
    cmp x20, #2
    b.lo L24a74ef3db82_2
L24a74ef3db82_4:
    mov x0, #0
    ldr x19, [sp, #18200]
    ldr x20, [sp, #18192]
    ldr x21, [sp, #18184]
    ldr x22, [sp, #18176]
    ldr d8, [sp, #18168]
    ldr d9, [sp, #18160]
    ldr d10, [sp, #18152]
    ldr d11, [sp, #18144]
    ldr d12, [sp, #18136]
    ldr d13, [sp, #18128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24a74ef3db82_c1:
    adrp x0, _lb_text_e6597e9df0fe@PAGE
    add x0, x0, _lb_text_e6597e9df0fe@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L24a74ef3db82_k0:
    .quad 13835170645272847974
L24a74ef3db82_k1:
    .quad 13832581075487109939
L24a74ef3db82_k2:
    .quad 13829203375766582067
L24a74ef3db82_k3:
    .quad 4596903403010506988
L24a74ef3db82_k4:
    .quad 4602136585777511504
L24a74ef3db82_k5:
    .quad 4608639333279471763
L24a74ef3db82_k6:
    .quad 4594096759722729695
L24a74ef3db82_k7:
    .quad 4599931623399950909
L24a74ef3db82_k8:
    .quad 4603848854355837767
L24a74ef3db82_k9:
    .quad 4607163503681582452
L24a74ef3db82_k10:
    .quad 4599185827301658355
L24a74ef3db82_k11:
    .quad 4604185723607965080
L24a74ef3db82_k12:
    .quad 4607457588737249745
L24a74ef3db82_k13:
    .quad 4609860709498414642
L24a74ef3db82_k14:
    .quad 4591870180066957722


    .p2align 2
    .globl _lb_test_40
_lb_test_40:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18480
    sub sp, sp, x16
    str x19, [sp, #18472]
    str x20, [sp, #18464]
    str x21, [sp, #18456]
    str x22, [sp, #18448]
    str d8, [sp, #18440]
    str d9, [sp, #18432]
    str d10, [sp, #18424]
    str d11, [sp, #18416]
    str d12, [sp, #18408]
    str d13, [sp, #18400]
    str d14, [sp, #18392]
    str d15, [sp, #18384]
    movz x0, #15
    movz x16, #9048
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9048
    sub x10, x29, x16
    movz x16, #18000
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #18000
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x19, x0
    fmov d8, xzr
    str d8, [sp, #18360]
    str d8, [sp, #18368]
    str d8, [sp, #18376]
    ldr d9, L31a7a7da814a_k0
    ldr d10, L31a7a7da814a_k1
    fmov d11, #1.0000000
    fmov d12, #6.0000000
    ldr d13, L31a7a7da814a_k2
    fmov d14, #8.0000000
    fmov d15, #11.0000000
    fmov d24, #14.0000000
    ldr d25, L31a7a7da814a_k3
    fmov d26, #3.0000000
    ldr d27, L31a7a7da814a_k4
    fmov d28, #5.0000000
    fmov d29, #0.2500000
    mov x20, #0
L31a7a7da814a_1:
    cmp x20, #3
    b.hs L31a7a7da814a_4
    .p2align 4
L31a7a7da814a_2:
    ldr x14, [sp, #5120]
    movz x10, #96
    mul x15, x20, x10
    fmov d30, d10
    fmov d31, d9
    mov x12, #0
L31a7a7da814a_5:
    cmp x12, x14
    b.hs L31a7a7da814a_8
    .p2align 4
L31a7a7da814a_6:
    adds x13, x15, x12
    b.cs L31a7a7da814a_c1
    movz x10, #288
    cmp x13, x10
    b.hs L31a7a7da814a_c2
    movz x16, #13352
    sub x10, x29, x16
    ldr d19, [x10, x13, lsl #3]
    fmov x13, d30
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls L31a7a7da814a_34
L31a7a7da814a_33:
    b L31a7a7da814a_54
L31a7a7da814a_34:
L31a7a7da814a_35:
    fmov x7, d19
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L31a7a7da814a_38
L31a7a7da814a_37:
    fmov d30, d19
    b L31a7a7da814a_54
L31a7a7da814a_38:
L31a7a7da814a_39:
    fcmp d8, d30
    b.ne L31a7a7da814a_42
L31a7a7da814a_44:
    fcmp d8, d19
    b.ne L31a7a7da814a_42
L31a7a7da814a_41:
    and x13, x13, x7
    fmov d30, x13
    b L31a7a7da814a_54
L31a7a7da814a_42:
L31a7a7da814a_43:
    fcmp d30, d19
    fcsel d30, d30, d19, gt
L31a7a7da814a_54:
    fmov x13, d31
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls L31a7a7da814a_56
L31a7a7da814a_55:
    b L31a7a7da814a_76
L31a7a7da814a_56:
L31a7a7da814a_57:
    fmov x7, d19
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L31a7a7da814a_60
L31a7a7da814a_59:
    fmov d31, d19
    b L31a7a7da814a_76
L31a7a7da814a_60:
L31a7a7da814a_61:
    fcmp d8, d31
    b.ne L31a7a7da814a_64
L31a7a7da814a_66:
    fcmp d8, d19
    b.ne L31a7a7da814a_64
L31a7a7da814a_63:
    orr x13, x13, x7
    fmov d31, x13
    b L31a7a7da814a_76
L31a7a7da814a_64:
L31a7a7da814a_65:
    fcmp d31, d19
    fcsel d31, d31, d19, mi
L31a7a7da814a_76:
    add x12, x12, #1
    cmp x12, x14
    b.lo L31a7a7da814a_6
L31a7a7da814a_8:
    fadd d19, d11, d31
    str d19, [sp, #18240]
    str d24, [sp, #18328]
    str d25, [sp, #18296]
    str d26, [sp, #18288]
    str d27, [sp, #18280]
    str d28, [sp, #18272]
    str d29, [sp, #18264]
    str d30, [sp, #18256]
    str d31, [sp, #18248]
    fmov d0, d12
    fmov d1, d13
    mov x1, x19
    movz x16, #18000
    sub x0, x29, x16
    mov x2, #0
    movz x16, #18208
    sub x8, x29, x16
    bl _lb_12film_develop_developing
    ldr d19, [sp, #18240]
    ldr d24, [sp, #18328]
    ldr d25, [sp, #18296]
    ldr d26, [sp, #18288]
    ldr d27, [sp, #18280]
    ldr d28, [sp, #18272]
    ldr d29, [sp, #18264]
    ldr d30, [sp, #18256]
    ldr d31, [sp, #18248]
    str d19, [sp, #18240]
    str d24, [sp, #18328]
    str d25, [sp, #18296]
    str d26, [sp, #18288]
    str d27, [sp, #18280]
    str d28, [sp, #18272]
    str d29, [sp, #18264]
    str d30, [sp, #18256]
    str d31, [sp, #18248]
    fmov d0, d30
    fmov d1, d31
    fmov d2, d19
    mov x2, x20
    movz x16, #18000
    sub x0, x29, x16
    movz x16, #18208
    sub x9, x29, x16
    mov x1, x9
    bl _lb_12film_develop_8speed_at
    fmov d20, d0
    ldr d19, [sp, #18240]
    ldr d24, [sp, #18328]
    ldr d25, [sp, #18296]
    ldr d26, [sp, #18288]
    ldr d27, [sp, #18280]
    ldr d28, [sp, #18272]
    ldr d29, [sp, #18264]
    ldr d30, [sp, #18256]
    ldr d31, [sp, #18248]
    str d14, [sp, #18336]
    str d15, [sp, #18344]
    str d24, [sp, #18352]
    str d8, [sp, #18304]
    str d8, [sp, #18312]
    str d8, [sp, #18320]
    mov x21, #0
L31a7a7da814a_9:
    cmp x21, #3
    b.hs L31a7a7da814a_12
    .p2align 4
L31a7a7da814a_10:
    lsl x22, x21, #3
    sub x11, x29, #144
    ldr d21, [x22, x11]
    str d19, [sp, #18240]
    str d24, [sp, #18328]
    str d25, [sp, #18296]
    str d26, [sp, #18288]
    str d27, [sp, #18280]
    str d28, [sp, #18272]
    str d29, [sp, #18264]
    str d30, [sp, #18256]
    str d31, [sp, #18248]
    str d20, [sp, #18232]
    fmov d0, d21
    fmov d1, d13
    mov x1, x19
    movz x16, #18000
    sub x0, x29, x16
    mov x2, #0
    movz x16, #18416
    sub x8, x29, x16
    bl _lb_12film_develop_developing
    ldr d19, [sp, #18240]
    ldr d24, [sp, #18328]
    ldr d25, [sp, #18296]
    ldr d26, [sp, #18288]
    ldr d27, [sp, #18280]
    ldr d28, [sp, #18272]
    ldr d29, [sp, #18264]
    ldr d30, [sp, #18256]
    ldr d31, [sp, #18248]
    ldr d20, [sp, #18232]
    str d19, [sp, #18240]
    str d24, [sp, #18328]
    str d25, [sp, #18296]
    str d26, [sp, #18288]
    str d27, [sp, #18280]
    str d28, [sp, #18272]
    str d29, [sp, #18264]
    str d30, [sp, #18256]
    str d31, [sp, #18248]
    str d20, [sp, #18232]
    fmov d0, d30
    fmov d1, d31
    fmov d2, d19
    mov x2, x20
    movz x16, #18000
    sub x0, x29, x16
    movz x16, #18416
    sub x9, x29, x16
    mov x1, x9
    bl _lb_12film_develop_8speed_at
    fmov d21, d0
    ldr d19, [sp, #18240]
    ldr d24, [sp, #18328]
    ldr d25, [sp, #18296]
    ldr d26, [sp, #18288]
    ldr d27, [sp, #18280]
    ldr d28, [sp, #18272]
    ldr d29, [sp, #18264]
    ldr d30, [sp, #18256]
    ldr d31, [sp, #18248]
    ldr d20, [sp, #18232]
    sub x10, x29, #176
    add x14, x22, x10
    fsub d21, d20, d21
    fdiv d21, d21, d25
    str d21, [x14]
    sub x10, x29, #120
    add x14, x22, x10
    ldr d22, [x14]
    fdiv d21, d21, d26
    fadd d21, d22, d21
    str d21, [x14]
    add x21, x21, #1
    cmp x21, #3
    b.lo L31a7a7da814a_10
L31a7a7da814a_12:
    ldr d30, [sp, #18304]
    fsub d31, d30, d11
    fabs d31, d31
    fcmp d31, d27
    b.mi L31a7a7da814a_13
L31a7a7da814a_14:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_a6ad6107f99f@PAGE
    add x14, x14, _lb_text_a6ad6107f99f@PAGEOFF
    adrp x15, _lb_text_ea0d6ecb2e0f@PAGE
    add x15, x15, _lb_text_ea0d6ecb2e0f@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18432
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
    ldr x22, [sp, #18448]
    ldr d8, [sp, #18440]
    ldr d9, [sp, #18432]
    ldr d10, [sp, #18424]
    ldr d11, [sp, #18416]
    ldr d12, [sp, #18408]
    ldr d13, [sp, #18400]
    ldr d14, [sp, #18392]
    ldr d15, [sp, #18384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_13:
    ldr d31, [sp, #18312]
    fsub d31, d31, d30
    fsub d31, d31, d11
    fabs d31, d31
    fcmp d31, d27
    b.mi L31a7a7da814a_16
L31a7a7da814a_17:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_050d53dd0b34@PAGE
    add x14, x14, _lb_text_050d53dd0b34@PAGEOFF
    adrp x15, _lb_text_4b5532b3272d@PAGE
    add x15, x15, _lb_text_4b5532b3272d@PAGEOFF
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
    ldr x22, [sp, #18448]
    ldr d8, [sp, #18440]
    ldr d9, [sp, #18432]
    ldr d10, [sp, #18424]
    ldr d11, [sp, #18416]
    ldr d12, [sp, #18408]
    ldr d13, [sp, #18400]
    ldr d14, [sp, #18392]
    ldr d15, [sp, #18384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_16:
    ldr d31, [sp, #18320]
    fsub d30, d31, d30
    fdiv d31, d28, d26
    fsub d30, d30, d31
    fabs d30, d30
    fcmp d30, d29
    b.mi L31a7a7da814a_19
L31a7a7da814a_20:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_ff1ca7235209@PAGE
    add x14, x14, _lb_text_ff1ca7235209@PAGEOFF
    adrp x15, _lb_text_0786bd7a0a26@PAGE
    add x15, x15, _lb_text_0786bd7a0a26@PAGEOFF
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
    ldr x22, [sp, #18448]
    ldr d8, [sp, #18440]
    ldr d9, [sp, #18432]
    ldr d10, [sp, #18424]
    ldr d11, [sp, #18416]
    ldr d12, [sp, #18408]
    ldr d13, [sp, #18400]
    ldr d14, [sp, #18392]
    ldr d15, [sp, #18384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_19:
    add x20, x20, #1
    cmp x20, #3
    b.lo L31a7a7da814a_2
L31a7a7da814a_4:
    ldr d24, [sp, #18360]
    fsub d24, d24, d11
    fabs d24, d24
    ldr d25, L31a7a7da814a_k5
    fcmp d24, d25
    b.mi L31a7a7da814a_22
L31a7a7da814a_23:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_bd6d910a119a@PAGE
    add x14, x14, _lb_text_bd6d910a119a@PAGEOFF
    adrp x15, _lb_text_6c5787a1d865@PAGE
    add x15, x15, _lb_text_6c5787a1d865@PAGEOFF
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
    ldr x22, [sp, #18448]
    ldr d8, [sp, #18440]
    ldr d9, [sp, #18432]
    ldr d10, [sp, #18424]
    ldr d11, [sp, #18416]
    ldr d12, [sp, #18408]
    ldr d13, [sp, #18400]
    ldr d14, [sp, #18392]
    ldr d15, [sp, #18384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_22:
    mov x0, #0
    ldr x19, [sp, #18472]
    ldr x20, [sp, #18464]
    ldr x21, [sp, #18456]
    ldr x22, [sp, #18448]
    ldr d8, [sp, #18440]
    ldr d9, [sp, #18432]
    ldr d10, [sp, #18424]
    ldr d11, [sp, #18416]
    ldr d12, [sp, #18408]
    ldr d13, [sp, #18400]
    ldr d14, [sp, #18392]
    ldr d15, [sp, #18384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31a7a7da814a_c1:
    adrp x0, _lb_text_1f897593cc0a@PAGE
    add x0, x0, _lb_text_1f897593cc0a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L31a7a7da814a_c2:
    adrp x0, _lb_text_1f897593cc0a@PAGE
    add x0, x0, _lb_text_1f897593cc0a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L31a7a7da814a_k0:
    .quad 4741671816366391296
L31a7a7da814a_k1:
    .quad 13965043853221167104
L31a7a7da814a_k2:
    .quad 4630544841867001856
L31a7a7da814a_k3:
    .quad 4599094494301215282
L31a7a7da814a_k4:
    .quad 4594572339843380019
L31a7a7da814a_k5:
    .quad 4587366580439587226


    .p2align 2
    .globl _lb_12film_develop_8speed_at
_lb_12film_develop_8speed_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    str x24, [sp, #384]
    str x25, [sp, #376]
    str x26, [sp, #368]
    str x27, [sp, #360]
    str d8, [sp, #352]
    str d9, [sp, #344]
    str d10, [sp, #336]
    str d11, [sp, #328]
    str d12, [sp, #320]
    str d13, [sp, #312]
    str d14, [sp, #304]
    str d15, [sp, #296]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #424
    str x1, [x16]
    sub x16, x29, #168
    str x2, [x16]
    sub x16, x29, #184
    str d0, [x16]
    sub x16, x29, #200
    str d1, [x16]
    sub x16, x29, #216
    str d2, [x16]
    sub x0, x29, #424
    ldr x1, [x0]
    movz x2, #208
    bl _memcpy
    ldr x19, [sp, #280]
    ldr x20, [sp, #264]
    ldr d8, [sp, #248]
    ldr d9, [sp, #232]
    ldr d10, [sp, #216]
    fsub d11, d8, d9
    fmov d12, xzr
    ldr d24, [x19, #4624]
    ldr d25, [x19, #4632]
    ldr x14, [x19, #4640]
    subs x14, x14, #1
    b.cc L0e67d754c218_c1
    ucvtf d26, x14
    fmul d25, d25, d26
    fadd d13, d24, d25
    movz x10, #4648
    add x21, x19, x10
    fmov d14, #1.0000000
    sub x9, x29, #336
    add x22, x9, x20, lsl #3
    ldr d15, L0e67d754c218_k0
    fmov x23, d14
    and x14, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w24, hi
    fcmp d12, d14
    cset w25, eq
    fcmp d12, d14
    cset w26, ls
    fmov d25, d12
    movz w27, #1
L0e67d754c218_1:
    fcmp d24, d13
    b.hi L0e67d754c218_3
    .p2align 4
L0e67d754c218_2:
    ldr d26, [sp, #120]
    fadd d26, d26, d24
    ldr x14, [x19, #4640]
    ldr d27, [x19, #4624]
    fsub d27, d26, d27
    ldr d28, [x19, #4632]
    fdiv d27, d27, d28
    subs x15, x14, #1
    b.cc L0e67d754c218_c2
    ucvtf d28, x15
    fcmp d12, d28
    b.hi L0e67d754c218_20
L0e67d754c218_19:
    fmov x15, d27
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L0e67d754c218_22
L0e67d754c218_21:
    b L0e67d754c218_34
L0e67d754c218_22:
L0e67d754c218_23:
    fcmp d27, d12
    cset w15, mi
    fcmp d27, d28
    fcsel d27, d28, d27, gt
    cmp w15, #0
    fcsel d27, d12, d27, ne
L0e67d754c218_34:
    frintm d28, d27
    subs x14, x14, #2
    b.cc L0e67d754c218_c3
    ucvtf d29, x14
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L0e67d754c218_36
L0e67d754c218_35:
    b L0e67d754c218_56
L0e67d754c218_36:
L0e67d754c218_37:
    fmov x15, d29
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L0e67d754c218_40
L0e67d754c218_39:
    fmov d28, d29
    b L0e67d754c218_56
L0e67d754c218_40:
L0e67d754c218_41:
    fcmp d12, d28
    b.ne L0e67d754c218_44
L0e67d754c218_46:
    fcmp d29, d12
    b.ne L0e67d754c218_44
L0e67d754c218_43:
    orr x14, x14, x15
    fmov d28, x14
    b L0e67d754c218_56
L0e67d754c218_44:
L0e67d754c218_45:
    fcmp d28, d29
    fcsel d28, d28, d29, mi
L0e67d754c218_56:
    fcvtzu x14, d28
    ucvtf d28, x14
    fsub d27, d27, d28
    movz x10, #96
    umulh x11, x20, x10
    mul x15, x20, x10
    cbnz x11, L0e67d754c218_c4
    adds x14, x14, x15
    b.cs L0e67d754c218_c5
    movz x10, #288
    cmp x14, x10
    b.hs L0e67d754c218_c6
    add x15, x21, x14, lsl #3
    ldr d28, [x15]
    fsub d29, d14, d27
    fmul d28, d28, d29
    add x14, x14, #1
    movz x10, #288
    cmp x14, x10
    b.hs L0e67d754c218_c7
    ldr d29, [x15, #8]
    fmul d27, d27, d29
    fadd d27, d28, d27
    fsub d27, d8, d27
    fdiv d27, d27, d11
    ldr d28, [sp, #8]
    str d25, [sp, #288]
    str d24, [sp, #280]
    str d27, [sp, #272]
    fmov d0, d26
    fmov d1, d28
    mov x1, x20
    sub x0, x29, #424
    bl _lb_12film_develop_Development_9factor_at
    fmov d26, d0
    ldr d25, [sp, #288]
    ldr d24, [sp, #280]
    ldr d27, [sp, #272]
    fmul d26, d27, d26
    cbz w24, L0e67d754c218_58
L0e67d754c218_57:
    fmov d26, d14
    b L0e67d754c218_78
L0e67d754c218_58:
L0e67d754c218_59:
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L0e67d754c218_62
L0e67d754c218_61:
    b L0e67d754c218_78
L0e67d754c218_62:
L0e67d754c218_63:
    cbz w25, L0e67d754c218_66
L0e67d754c218_68:
    fcmp d26, d12
    b.ne L0e67d754c218_66
L0e67d754c218_65:
    orr x14, x23, x14
    fmov d26, x14
    b L0e67d754c218_78
L0e67d754c218_66:
L0e67d754c218_67:
    fcmp d14, d26
    fcsel d26, d14, d26, mi
L0e67d754c218_78:
    movz x10, #3
    cmp x20, x10
    b.hs L0e67d754c218_c8
    ldr d27, [x22]
    ldr d28, [sp, #16]
    fsub d28, d28, d14
    fmul d27, d27, d28
    fsub d28, d14, d26
    fmul d27, d28, d27
    fadd d26, d27, d26
    cbz w26, L0e67d754c218_80
L0e67d754c218_79:
    fmov x14, d26
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L0e67d754c218_82
L0e67d754c218_81:
    b L0e67d754c218_94
L0e67d754c218_82:
L0e67d754c218_83:
    fcmp d26, d12
    cset w14, mi
    fcmp d26, d14
    fcsel d26, d14, d26, gt
    cmp w14, #0
    fcsel d26, d12, d26, ne
L0e67d754c218_94:
    fsub d26, d14, d26
    fmul d26, d26, d11
    ldr d27, [sp, #128]
    fmul d26, d26, d27
    fadd d26, d26, d9
    cbnz w27, L0e67d754c218_5
L0e67d754c218_8:
    fcmp d25, d10
    b.lt L0e67d754c218_5
L0e67d754c218_7:
    fcmp d26, d10
    b.pl L0e67d754c218_5
L0e67d754c218_4:
    fsub d24, d24, d15
    fsub d27, d25, d10
    fsub d25, d25, d26
    ldr d26, L0e67d754c218_k1
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L0e67d754c218_96
L0e67d754c218_95:
    b L0e67d754c218_116
L0e67d754c218_96:
L0e67d754c218_97:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L0e67d754c218_100
L0e67d754c218_99:
    fmov d25, d26
    b L0e67d754c218_116
L0e67d754c218_100:
L0e67d754c218_101:
    fcmp d25, d12
    b.ne L0e67d754c218_104
L0e67d754c218_106:
    fcmp d26, d12
    b.ne L0e67d754c218_104
L0e67d754c218_103:
    and x14, x14, x15
    fmov d25, x14
    b L0e67d754c218_116
L0e67d754c218_104:
L0e67d754c218_105:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L0e67d754c218_116:
    fdiv d25, d27, d25
    fmul d25, d25, d15
    fadd d24, d25, d24
    fmov d0, d24
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr d8, [sp, #352]
    ldr d9, [sp, #344]
    ldr d10, [sp, #336]
    ldr d11, [sp, #328]
    ldr d12, [sp, #320]
    ldr d13, [sp, #312]
    ldr d14, [sp, #304]
    ldr d15, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0e67d754c218_5:
L0e67d754c218_6:
    fadd d24, d15, d24
    fmov d25, d26
    mov w27, #0
    fcmp d24, d13
    b.ls L0e67d754c218_2
L0e67d754c218_3:
    fmov d0, d13
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr d8, [sp, #352]
    ldr d9, [sp, #344]
    ldr d10, [sp, #336]
    ldr d11, [sp, #328]
    ldr d12, [sp, #320]
    ldr d13, [sp, #312]
    ldr d14, [sp, #304]
    ldr d15, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0e67d754c218_20:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_80:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c1:
    adrp x0, _lb_text_17d7793c2cd0@PAGE
    add x0, x0, _lb_text_17d7793c2cd0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c2:
    adrp x0, _lb_text_0d7b0f036e9a@PAGE
    add x0, x0, _lb_text_0d7b0f036e9a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c3:
    adrp x0, _lb_text_41e8af3fbfa2@PAGE
    add x0, x0, _lb_text_41e8af3fbfa2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c4:
    adrp x0, _lb_text_35e2a38c12a9@PAGE
    add x0, x0, _lb_text_35e2a38c12a9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c5:
    adrp x0, _lb_text_bd75a7c59501@PAGE
    add x0, x0, _lb_text_bd75a7c59501@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c6:
    adrp x0, _lb_text_bd75a7c59501@PAGE
    add x0, x0, _lb_text_bd75a7c59501@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c7:
    adrp x0, _lb_text_bd75a7c59501@PAGE
    add x0, x0, _lb_text_bd75a7c59501@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0e67d754c218_c8:
    adrp x0, _lb_text_88209f8482b9@PAGE
    add x0, x0, _lb_text_88209f8482b9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L0e67d754c218_k0:
    .quad 4576918229304087675
L0e67d754c218_k1:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_test_41
_lb_test_41:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #72]
    str d8, [sp, #64]
    str d9, [sp, #56]
    str d10, [sp, #48]
    str d11, [sp, #40]
    str d12, [sp, #32]
    movz x9, #2
    scvtf d24, x9
    fmov d8, xzr
    fmov d25, #2.0000000
    fcmp d8, d25
    b.hi L6f27b3af88a9_10
L6f27b3af88a9_9:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L6f27b3af88a9_12
L6f27b3af88a9_11:
    b L6f27b3af88a9_24
L6f27b3af88a9_12:
L6f27b3af88a9_13:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L6f27b3af88a9_24:
    fcvtzu x14, d24
    adrp x15, _lb_12film_develop_standards@PAGE
    add x15, x15, _lb_12film_develop_standards@PAGEOFF
    movz x10, #3
    cmp x14, x10
    b.hs L6f27b3af88a9_c1
    ldr x19, [x15, x14, lsl #3]
    fmov d9, #7.0000000
    fmov d10, #24.0000000
    fmov d11, #1.0000000
    fmov d0, d9
    fmov d1, d10
    fmov d2, d8
    fmov d3, d11
    mov x0, x19
    bl _lb_12film_develop_ratio
    fmov d24, d0
    ldr d25, L6f27b3af88a9_k0
    fcmp d24, d25
    b.gt L6f27b3af88a9_1
L6f27b3af88a9_2:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_f5693a3892ad@PAGE
    add x14, x14, _lb_text_f5693a3892ad@PAGEOFF
    adrp x15, _lb_text_837567041666@PAGE
    add x15, x15, _lb_text_837567041666@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #64
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #72]
    ldr d8, [sp, #64]
    ldr d9, [sp, #56]
    ldr d10, [sp, #48]
    ldr d11, [sp, #40]
    ldr d12, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6f27b3af88a9_1:
    fmov d24, #1.7500000
    fmov d0, d9
    fmov d1, d10
    fmov d2, d8
    fmov d3, d24
    mov x0, x19
    bl _lb_12film_develop_ratio
    fmov d12, d0
    fmov d0, d9
    fmov d1, d10
    fmov d2, d8
    fmov d3, d11
    mov x0, x19
    bl _lb_12film_develop_ratio
    fmov d24, d0
    fcmp d12, d24
    b.gt L6f27b3af88a9_4
L6f27b3af88a9_5:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_52c1c0765fae@PAGE
    add x14, x14, _lb_text_52c1c0765fae@PAGEOFF
    adrp x15, _lb_text_64007e4561f1@PAGE
    add x15, x15, _lb_text_64007e4561f1@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #80
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #72]
    ldr d8, [sp, #64]
    ldr d9, [sp, #56]
    ldr d10, [sp, #48]
    ldr d11, [sp, #40]
    ldr d12, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6f27b3af88a9_4:
    mov x0, #0
    ldr x19, [sp, #72]
    ldr d8, [sp, #64]
    ldr d9, [sp, #56]
    ldr d10, [sp, #48]
    ldr d11, [sp, #40]
    ldr d12, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6f27b3af88a9_10:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L6f27b3af88a9_c1:
    adrp x0, _lb_text_48de866d503a@PAGE
    add x0, x0, _lb_text_48de866d503a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L6f27b3af88a9_k0:
    .quad 4608533498688228557


    .p2align 2
    .globl _lb_test_42
_lb_test_42:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18416
    sub sp, sp, x16
    str x19, [sp, #18408]
    str x20, [sp, #18400]
    str d8, [sp, #18392]
    str d9, [sp, #18384]
    str d10, [sp, #18376]
    str d11, [sp, #18368]
    movz x0, #11
    movz x16, #9000
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #9000
    sub x10, x29, x16
    movz x16, #17952
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    add x14, x14, #112
    adrp x15, _lb_text_fed35fd7f6f4@PAGE
    add x15, x15, _lb_text_fed35fd7f6f4@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, L7c88f6ef432f_3
L7c88f6ef432f_24:
    b L7c88f6ef432f_4
L7c88f6ef432f_3:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L7c88f6ef432f_4:
    and w14, w13, #255
    cbnz w14, L7c88f6ef432f_1
L7c88f6ef432f_2:
    mov x9, #0
    str x9, [sp, #448]
    mov x9, #0
    str x9, [sp, #456]
    adrp x14, _lb_text_8b8ce3e65e8d@PAGE
    add x14, x14, _lb_text_8b8ce3e65e8d@PAGEOFF
    adrp x15, _lb_text_713537645d5f@PAGE
    add x15, x15, _lb_text_713537645d5f@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17968
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18408]
    ldr x20, [sp, #18400]
    ldr d8, [sp, #18392]
    ldr d9, [sp, #18384]
    ldr d10, [sp, #18376]
    ldr d11, [sp, #18368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7c88f6ef432f_1:
    movz x16, #17952
    sub x0, x29, x16
    movz x1, #1
    bl _lb_12film_develop_14normal_minutes
    fmov d8, d0
    fmov d9, #1.0000000
    ldr d24, L7c88f6ef432f_k0
    ldr d25, L7c88f6ef432f_k1
    fdiv d10, d24, d25
    fadd d24, d9, d10
    fmul d24, d8, d24
    fmov d11, xzr
    fmov d0, d24
    fmov d1, d11
    movz x16, #17952
    sub x0, x29, x16
    movz x1, #1
    mov x2, #0
    sub x8, x29, #256
    bl _lb_12film_develop_developing
    sub x10, x29, #256
    movz x16, #18176
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    fsub d24, d9, d10
    fmul d24, d8, d24
    fmov d0, d24
    fmov d1, d11
    movz x16, #17952
    sub x0, x29, x16
    movz x1, #1
    mov x2, #0
    sub x8, x29, #256
    bl _lb_12film_develop_developing
    sub x10, x29, #256
    movz x16, #18384
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    ldr d24, L7c88f6ef432f_k2
    ldr d25, L7c88f6ef432f_k3
    ldr d26, L7c88f6ef432f_k4
    str d24, [sp, #18344]
    str d25, [sp, #18352]
    str d26, [sp, #18360]
    ldr d24, L7c88f6ef432f_k5
    ldr d25, L7c88f6ef432f_k6
    ldr d26, L7c88f6ef432f_k7
    str d24, [sp, #18320]
    str d25, [sp, #18328]
    str d26, [sp, #18336]
    ldr d8, L7c88f6ef432f_k8
    fmov d10, #-1.0000000
    ldr d11, L7c88f6ef432f_k9
    mov x19, #0
L7c88f6ef432f_6:
    cmp x19, #3
    b.hs L7c88f6ef432f_9
    .p2align 4
L7c88f6ef432f_7:
    ldr d24, [sp, #240]
    fmov d0, d10
    fmov d1, d24
    mov x1, x19
    movz x16, #18176
    sub x0, x29, x16
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fsub d24, d24, d9
    fmul d24, d24, d8
    lsl x20, x19, #3
    sub x10, x29, #72
    ldr d25, [x10, x20]
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d11
    b.mi L7c88f6ef432f_10
L7c88f6ef432f_11:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_1521f106a7bb@PAGE
    add x14, x14, _lb_text_1521f106a7bb@PAGEOFF
    adrp x15, _lb_text_15ffbd3bbb5b@PAGE
    add x15, x15, _lb_text_15ffbd3bbb5b@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18400
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18408]
    ldr x20, [sp, #18400]
    ldr d8, [sp, #18392]
    ldr d9, [sp, #18384]
    ldr d10, [sp, #18376]
    ldr d11, [sp, #18368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7c88f6ef432f_10:
    ldr d24, [sp, #32]
    fmov d0, d10
    fmov d1, d24
    mov x1, x19
    movz x16, #18384
    sub x0, x29, x16
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fsub d24, d9, d24
    fmul d24, d24, d8
    sub x10, x29, #96
    ldr d25, [x10, x20]
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d11
    b.mi L7c88f6ef432f_13
L7c88f6ef432f_14:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_b5b2cb0bd47b@PAGE
    add x14, x14, _lb_text_b5b2cb0bd47b@PAGEOFF
    adrp x15, _lb_text_2b9f59c1ed85@PAGE
    add x15, x15, _lb_text_2b9f59c1ed85@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18416
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #18408]
    ldr x20, [sp, #18400]
    ldr d8, [sp, #18392]
    ldr d9, [sp, #18384]
    ldr d10, [sp, #18376]
    ldr d11, [sp, #18368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7c88f6ef432f_13:
    add x19, x19, #1
    cmp x19, #3
    b.lo L7c88f6ef432f_7
L7c88f6ef432f_9:
    mov x0, #0
    ldr x19, [sp, #18408]
    ldr x20, [sp, #18400]
    ldr d8, [sp, #18392]
    ldr d9, [sp, #18384]
    ldr d10, [sp, #18376]
    ldr d11, [sp, #18368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7c88f6ef432f_k0:
    .quad 4630826316843712512
L7c88f6ef432f_k1:
    .quad 4641064969121562624
L7c88f6ef432f_k2:
    .quad 4593311331947716280
L7c88f6ef432f_k3:
    .quad 4591870180066957722
L7c88f6ef432f_k4:
    .quad 4594212051873190380
L7c88f6ef432f_k5:
    .quad 4596013491724138578
L7c88f6ef432f_k6:
    .quad 4595292915783759299
L7c88f6ef432f_k7:
    .quad 4597454643604897137
L7c88f6ef432f_k8:
    .quad 4606281698874543309
L7c88f6ef432f_k9:
    .quad 4581421828931458171


    .p2align 2
    .globl _lb_test_43
_lb_test_43:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #17920
    sub sp, sp, x16
    movz x0, #2
    movz x16, #8952
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8952
    sub x10, x29, x16
    movz x16, #17904
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    fmov d24, xzr
    fmov d0, d24
    movz x16, #17904
    sub x0, x29, x16
    bl _lb_12film_develop_10chosen_for
    mov x14, x0
    cmp x14, #0
    b.ne L20450d2e3456_2
L20450d2e3456_4:
    fmov d24, #2.0000000
    fmov d0, d24
    movz x16, #17904
    sub x0, x29, x16
    bl _lb_12film_develop_10chosen_for
    mov x14, x0
    cmp x14, #1
    b.ne L20450d2e3456_2
L20450d2e3456_3:
    fmov d24, #5.0000000
    fmov d0, d24
    movz x16, #17904
    sub x0, x29, x16
    bl _lb_12film_develop_10chosen_for
    mov x14, x0
    cmp x14, #0
    b.eq L20450d2e3456_1
L20450d2e3456_2:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_e1382e03ce2a@PAGE
    add x14, x14, _lb_text_e1382e03ce2a@PAGEOFF
    adrp x15, _lb_text_2ec4abf99204@PAGE
    add x15, x15, _lb_text_2ec4abf99204@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17920
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
L20450d2e3456_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12film_develop_10chosen_for
_lb_12film_develop_10chosen_for:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    str x20, [sp, #0]
    fmov d24, d0
    mov x19, x0
    frinta d24, d24
    fcvtzs x14, d24
    subs x20, x14, #1
    b.vs L0f7976158697_c1
    cmp x20, #0
    b.lt L0f7976158697_1
L0f7976158697_5:
    cmp x20, #19
    b.ge L0f7976158697_1
L0f7976158697_4:
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x20, x10
    b.hs L0f7976158697_c2
    movz x10, #112
    mul x15, x20, x10
    add x14, x14, x15
    ldr x15, [x14, #16]
    ldr x12, [x19, #16]
    cmp x15, x12
    b.eq L0f7976158697_2
L0f7976158697_6:
    cmp x12, #1
    cset w15, eq
    cbnz w15, L0f7976158697_11
L0f7976158697_16:
    b L0f7976158697_12
L0f7976158697_11:
    adrp x15, _lb_text_fed35fd7f6f4@PAGE
    add x15, x15, _lb_text_fed35fd7f6f4@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, L0f7976158697_13
L0f7976158697_17:
    b L0f7976158697_14
L0f7976158697_13:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L0f7976158697_14:
    and w15, w13, #255
L0f7976158697_12:
    and w14, w15, #255
    cbnz w14, L0f7976158697_2
L0f7976158697_1:
    mov x0, x19
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    mov x0, x14
    ldr x19, [sp, #8]
    ldr x20, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0f7976158697_2:
L0f7976158697_3:
    mov x0, x20
    ldr x19, [sp, #8]
    ldr x20, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0f7976158697_c1:
    adrp x0, _lb_text_b864cd210404@PAGE
    add x0, x0, _lb_text_b864cd210404@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0f7976158697_c2:
    adrp x0, _lb_text_d674490a11d3@PAGE
    add x0, x0, _lb_text_d674490a11d3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_44
_lb_test_44:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #17968
    sub sp, sp, x16
    str x19, [sp, #17960]
    str d8, [sp, #17952]
    str d9, [sp, #17944]
    adrp x19, _lb_12film_develop_processes@PAGE
    add x19, x19, _lb_12film_develop_processes@PAGEOFF
    add x14, x19, #2016
    adrp x15, _lb_text_9264579e222b@PAGE
    add x15, x15, _lb_text_9264579e222b@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #7
    cset w13, eq
    cbnz w13, L38ea52ba2818_4
L38ea52ba2818_14:
    b L38ea52ba2818_5
L38ea52ba2818_4:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L38ea52ba2818_5:
    and w14, w13, #255
    cbz w14, L38ea52ba2818_2
L38ea52ba2818_3:
    fmov d24, #12.0000000
    fmov d25, #28.0000000
    fmov d8, xzr
    fmov d9, #1.0000000
    fmov d0, d24
    fmov d1, d25
    fmov d2, d8
    fmov d3, d9
    movz x0, #18
    bl _lb_12film_develop_ratio
    fmov d24, d0
    fcmp d9, d24
    b.eq L38ea52ba2818_1
L38ea52ba2818_2:
    mov x9, #0
    str x9, [sp, #8976]
    mov x9, #0
    str x9, [sp, #8984]
    adrp x14, _lb_text_76cf70379c85@PAGE
    add x14, x14, _lb_text_76cf70379c85@PAGEOFF
    adrp x15, _lb_text_3a752856abe2@PAGE
    add x15, x15, _lb_text_3a752856abe2@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #8992
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #17960]
    ldr d8, [sp, #17952]
    ldr d9, [sp, #17944]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38ea52ba2818_1:
    movz x0, #5
    movz x16, #8976
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8976
    sub x10, x29, x16
    movz x16, #17944
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    fmov d0, d8
    fmov d1, d8
    movz x16, #17944
    sub x0, x29, x16
    movz x1, #12
    mov x2, #0
    sub x8, x29, #440
    bl _lb_12film_develop_developing
    sub x10, x29, #440
    sub x0, x29, #232
    mov x1, x10
    movz x2, #208
    bl _memcpy
    add x14, x19, #1344
    adrp x15, _lb_text_a5b01d461bfe@PAGE
    add x15, x15, _lb_text_a5b01d461bfe@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #19
    cset w13, eq
    cbnz w13, L38ea52ba2818_11
L38ea52ba2818_15:
    b L38ea52ba2818_12
L38ea52ba2818_11:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L38ea52ba2818_12:
    and w14, w13, #255
    cbz w14, L38ea52ba2818_8
L38ea52ba2818_10:
    ldr d24, [sp, #17848]
    ldr d25, L38ea52ba2818_k0
    fcmp d24, d25
    b.pl L38ea52ba2818_8
L38ea52ba2818_9:
    ldr d24, [sp, #17872]
    ldr d25, L38ea52ba2818_k1
    fcmp d24, d25
    b.gt L38ea52ba2818_7
L38ea52ba2818_8:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_e405e524e911@PAGE
    add x14, x14, _lb_text_e405e524e911@PAGEOFF
    adrp x15, _lb_text_5ac6e4130d54@PAGE
    add x15, x15, _lb_text_5ac6e4130d54@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17960
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #17960]
    ldr d8, [sp, #17952]
    ldr d9, [sp, #17944]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38ea52ba2818_7:
    mov x0, #0
    ldr x19, [sp, #17960]
    ldr d8, [sp, #17952]
    ldr d9, [sp, #17944]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L38ea52ba2818_k0:
    .quad 13817944376698155827
L38ea52ba2818_k1:
    .quad 4596373779694328218


    .p2align 2
    .globl _lb_test_45
_lb_test_45:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #26912
    sub sp, sp, x16
    movz x0, #4
    movz x16, #8952
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8952
    sub x10, x29, x16
    movz x16, #26856
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x9, #2
    scvtf d24, x9
    fmov d0, d24
    movz x16, #26856
    sub x0, x29, x16
    bl _lb_12film_develop_10chosen_for
    mov x14, x0
    cmp x14, #1
    b.ne Ldd40a7ae503e_2
Ldd40a7ae503e_4:
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    add x14, x14, #112
    adrp x15, _lb_text_fed35fd7f6f4@PAGE
    add x15, x15, _lb_text_fed35fd7f6f4@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, Ldd40a7ae503e_15
Ldd40a7ae503e_19:
    b Ldd40a7ae503e_16
Ldd40a7ae503e_15:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
Ldd40a7ae503e_16:
    and w14, w13, #255
    cbz w14, Ldd40a7ae503e_2
Ldd40a7ae503e_3:
    b Ldd40a7ae503e_1
Ldd40a7ae503e_2:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_a5557c7e097f@PAGE
    add x14, x14, _lb_text_a5557c7e097f@PAGEOFF
    adrp x15, _lb_text_4336a69a87ff@PAGE
    add x15, x15, _lb_text_4336a69a87ff@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #26872
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
Ldd40a7ae503e_1:
    movz x16, #26856
    sub x9, x29, x16
    mov x0, x9
    movz x16, #17904
    sub x8, x29, x16
    bl _lb_12film_develop_15cross_processed
    movz x16, #17904
    sub x10, x29, x16
    movz x16, #8952
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    ldr x14, [sp, #17976]
    cmp x14, #0
    b.eq Ldd40a7ae503e_6
Ldd40a7ae503e_7:
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    adrp x14, _lb_text_5ab555eeead1@PAGE
    add x14, x14, _lb_text_5ab555eeead1@PAGEOFF
    adrp x15, _lb_text_2920281f75d9@PAGE
    add x15, x15, _lb_text_2920281f75d9@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #26888
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
Ldd40a7ae503e_6:
    ldr x14, [sp, #22600]
    ldr d24, [sp, #22608]
    subs x14, x14, #1
    b.cc Ldd40a7ae503e_c1
    movz x10, #288
    cmp x14, x10
    b.hs Ldd40a7ae503e_c2
    movz x16, #4304
    sub x10, x29, x16
    ldr d25, [x10, x14, lsl #3]
    fcmp d24, d25
    b.pl Ldd40a7ae503e_10
Ldd40a7ae503e_11:
    ldr d25, Ldd40a7ae503e_k0
    fcmp d24, d25
    b.mi Ldd40a7ae503e_9
Ldd40a7ae503e_10:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_6fcf4c36c1ed@PAGE
    add x14, x14, _lb_text_6fcf4c36c1ed@PAGEOFF
    adrp x15, _lb_text_619d50d0c5cf@PAGE
    add x15, x15, _lb_text_619d50d0c5cf@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #26904
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
Ldd40a7ae503e_9:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldd40a7ae503e_c1:
    adrp x0, _lb_text_6fcf4c36c1ed@PAGE
    add x0, x0, _lb_text_6fcf4c36c1ed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ldd40a7ae503e_c2:
    adrp x0, _lb_text_6fcf4c36c1ed@PAGE
    add x0, x0, _lb_text_6fcf4c36c1ed@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ldd40a7ae503e_k0:
    .quad 4596373779694328218


    .p2align 2
    .globl _lb_12film_develop_15cross_processed
_lb_12film_develop_15cross_processed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #26864
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    movz x16, #8960
    sub x16, x29, x16
    str x0, [x16]
    movz x16, #8960
    sub x0, x29, x16
    ldr x1, [x0]
    movz x2, #8952
    bl _memcpy
    movz x16, #8960
    sub x10, x29, x16
    movz x16, #17912
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    mov x9, #0
    str x9, [sp, #8968]
    ldr x14, [sp, #22544]
    fmov d24, xzr
    adrp x15, _lb_12film_develop_10clear_base@PAGE
    add x15, x15, _lb_12film_develop_10clear_base@PAGEOFF
    adrp x12, _lb_12film_develop_14cross_contrast@PAGE
    add x12, x12, _lb_12film_develop_14cross_contrast@PAGEOFF
    mov x13, #0
Lf00ca4be54ff_1:
    cmp x13, #3
    b.hs Lf00ca4be54ff_4
    .p2align 4
Lf00ca4be54ff_2:
    movz x10, #96
    mul x7, x13, x10
    fmov d25, d24
    mov x6, #0
Lf00ca4be54ff_5:
    cmp x6, x14
    b.hs Lf00ca4be54ff_8
    .p2align 4
Lf00ca4be54ff_6:
    adds x5, x7, x6
    b.cs Lf00ca4be54ff_c1
    movz x10, #288
    cmp x5, x10
    b.hs Lf00ca4be54ff_c2
    movz x16, #4312
    sub x10, x29, x16
    ldr d26, [x10, x5, lsl #3]
    fmov x5, d25
    and x4, x5, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x4, x10
    b.ls Lf00ca4be54ff_18
Lf00ca4be54ff_17:
    b Lf00ca4be54ff_38
Lf00ca4be54ff_18:
Lf00ca4be54ff_19:
    fmov x4, d26
    and x3, x4, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x3, x10
    b.ls Lf00ca4be54ff_22
Lf00ca4be54ff_21:
    fmov d25, d26
    b Lf00ca4be54ff_38
Lf00ca4be54ff_22:
Lf00ca4be54ff_23:
    fcmp d24, d25
    b.ne Lf00ca4be54ff_26
Lf00ca4be54ff_28:
    fcmp d26, d24
    b.ne Lf00ca4be54ff_26
Lf00ca4be54ff_25:
    and x5, x5, x4
    fmov d25, x5
    b Lf00ca4be54ff_38
Lf00ca4be54ff_26:
Lf00ca4be54ff_27:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
Lf00ca4be54ff_38:
    add x6, x6, #1
    cmp x6, x14
    b.lo Lf00ca4be54ff_6
Lf00ca4be54ff_8:
    mov x6, #0
Lf00ca4be54ff_9:
    cmp x6, #96
    b.hs Lf00ca4be54ff_12
    .p2align 4
Lf00ca4be54ff_10:
    cmp x6, x14
    b.hs Lf00ca4be54ff_14
Lf00ca4be54ff_13:
    mov x5, x6
    b Lf00ca4be54ff_15
Lf00ca4be54ff_14:
    subs x5, x14, #1
    b.cc Lf00ca4be54ff_c3
Lf00ca4be54ff_15:
    adds x5, x7, x5
    b.cs Lf00ca4be54ff_c4
    movz x10, #288
    cmp x5, x10
    b.hs Lf00ca4be54ff_c5
    movz x16, #4312
    sub x10, x29, x16
    ldr d26, [x10, x5, lsl #3]
    add x5, x7, x6
    movz x10, #288
    cmp x5, x10
    b.hs Lf00ca4be54ff_c6
    movz x16, #13264
    sub x9, x29, x16
    add x5, x9, x5, lsl #3
    ldr d27, [x15]
    ldr d28, [x12]
    fsub d26, d25, d26
    fmul d26, d28, d26
    fadd d26, d27, d26
    str d26, [x5]
    add x6, x6, #1
    cmp x6, #96
    b.lo Lf00ca4be54ff_10
Lf00ca4be54ff_12:
    add x13, x13, #1
    cmp x13, #3
    b.lo Lf00ca4be54ff_2
Lf00ca4be54ff_4:
    movz x16, #17912
    sub x10, x29, x16
    movz x16, #26864
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #26864
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #8952
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf00ca4be54ff_c1:
    adrp x0, _lb_text_f04c5c67a1c8@PAGE
    add x0, x0, _lb_text_f04c5c67a1c8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf00ca4be54ff_c2:
    adrp x0, _lb_text_f04c5c67a1c8@PAGE
    add x0, x0, _lb_text_f04c5c67a1c8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf00ca4be54ff_c3:
    adrp x0, _lb_text_807c2699e047@PAGE
    add x0, x0, _lb_text_807c2699e047@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf00ca4be54ff_c4:
    adrp x0, _lb_text_807c2699e047@PAGE
    add x0, x0, _lb_text_807c2699e047@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf00ca4be54ff_c5:
    adrp x0, _lb_text_807c2699e047@PAGE
    add x0, x0, _lb_text_807c2699e047@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf00ca4be54ff_c6:
    adrp x0, _lb_text_6484e8bca2eb@PAGE
    add x0, x0, _lb_text_6484e8bca2eb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_46
_lb_test_46:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #18144
    sub sp, sp, x16
    str d8, [sp, #18136]
    movz x0, #15
    movz x16, #8960
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8960
    sub x10, x29, x16
    movz x16, #17912
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x9, #1
    scvtf d24, x9
    fmov d8, xzr
    fmov d25, #2.0000000
    fcmp d8, d25
    b.hi L9d866f302a1c_13
L9d866f302a1c_12:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L9d866f302a1c_15
L9d866f302a1c_14:
    b L9d866f302a1c_27
L9d866f302a1c_15:
L9d866f302a1c_16:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d25
    fcsel d24, d25, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L9d866f302a1c_27:
    fcvtzu x14, d24
    adrp x15, _lb_12film_develop_standards@PAGE
    add x15, x15, _lb_12film_develop_standards@PAGEOFF
    movz x10, #3
    cmp x14, x10
    b.hs L9d866f302a1c_c1
    ldr x14, [x15, x14, lsl #3]
    fmov d24, #8.0000000
    fmov d0, d24
    fmov d1, d8
    mov x1, x14
    movz x16, #17912
    sub x0, x29, x16
    mov x2, #0
    sub x8, x29, #216
    bl _lb_12film_develop_developing
    sub x10, x29, #216
    movz x16, #18120
    sub x0, x29, x16
    mov x1, x10
    movz x2, #208
    bl _memcpy
    ldrb w14, [sp, #40]
    cbz w14, L9d866f302a1c_2
L9d866f302a1c_4:
    ldr d24, [sp, #312]
    ldr d25, [sp, #24]
    fmov d0, d24
    fmov d1, d25
    movz x16, #18120
    sub x0, x29, x16
    movz x1, #1
    bl _lb_12film_develop_Development_9factor_at
    fmov d24, d0
    fmov d25, #1.0000000
    fcmp d24, d25
    b.le L9d866f302a1c_2
L9d866f302a1c_3:
    ldr d24, [sp, #120]
    ldr d26, [sp, #32]
    fsub d25, d26, d25
    fmul d24, d24, d25
    fcmp d24, d8
    b.gt L9d866f302a1c_1
L9d866f302a1c_2:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_4b06837a1ea5@PAGE
    add x14, x14, _lb_text_4b06837a1ea5@PAGEOFF
    adrp x15, _lb_text_a530b422e28e@PAGE
    add x15, x15, _lb_text_a530b422e28e@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #18136
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #18136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9d866f302a1c_1:
    mov x0, #0
    ldr d8, [sp, #18136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9d866f302a1c_13:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L9d866f302a1c_c1:
    adrp x0, _lb_text_48de866d503a@PAGE
    add x0, x0, _lb_text_48de866d503a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_47
_lb_test_47:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #26896
    sub sp, sp, x16
    str x19, [sp, #26888]
    movz x0, #21
    movz x16, #8960
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8960
    sub x10, x29, x16
    movz x16, #17912
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    adrp x14, _lb_text_e0c11dff9de2@PAGE
    add x14, x14, _lb_text_e0c11dff9de2@PAGEOFF
    ldr x15, [sp, #8992]
    cmp x15, #27
    cset w12, eq
    cbnz w12, L91680bc9395c_4
L91680bc9395c_18:
    b L91680bc9395c_5
L91680bc9395c_4:
    ldr x12, [sp, #8984]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L91680bc9395c_5:
    and w14, w12, #255
    cbz w14, L91680bc9395c_2
L91680bc9395c_3:
    movz x16, #17912
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    adrp x19, _lb_12film_develop_processes@PAGE
    add x19, x19, _lb_12film_develop_processes@PAGEOFF
    movz x10, #19
    cmp x14, x10
    b.hs L91680bc9395c_c1
    movz x10, #112
    mul x14, x14, x10
    add x14, x19, x14
    adrp x15, _lb_text_645ab60132e7@PAGE
    add x15, x15, _lb_text_645ab60132e7@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #5
    cset w13, eq
    cbnz w13, L91680bc9395c_6
L91680bc9395c_19:
    b L91680bc9395c_7
L91680bc9395c_6:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L91680bc9395c_7:
    and w14, w13, #255
    cbnz w14, L91680bc9395c_1
L91680bc9395c_2:
    mov x9, #0
    str x9, [sp, #8968]
    mov x9, #0
    str x9, [sp, #8976]
    adrp x14, _lb_text_06df0d8ca45b@PAGE
    add x14, x14, _lb_text_06df0d8ca45b@PAGEOFF
    adrp x15, _lb_text_985090c6ab8c@PAGE
    add x15, x15, _lb_text_985090c6ab8c@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #17928
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #26888]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L91680bc9395c_1:
    movz x0, #17
    movz x16, #8960
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    movz x16, #8960
    sub x10, x29, x16
    movz x16, #26880
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    adrp x14, _lb_text_19b8ca6b1c7e@PAGE
    add x14, x14, _lb_text_19b8ca6b1c7e@PAGEOFF
    ldr x15, [sp, #24]
    cmp x15, #15
    cset w12, eq
    cbnz w12, L91680bc9395c_13
L91680bc9395c_20:
    b L91680bc9395c_14
L91680bc9395c_13:
    ldr x12, [sp, #16]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L91680bc9395c_14:
    and w14, w12, #255
    cbz w14, L91680bc9395c_10
L91680bc9395c_12:
    movz x16, #26880
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    movz x10, #19
    cmp x14, x10
    b.hs L91680bc9395c_c2
    movz x10, #112
    mul x14, x14, x10
    add x14, x19, x14
    adrp x15, _lb_text_0fbc98868fab@PAGE
    add x15, x15, _lb_text_0fbc98868fab@PAGEOFF
    ldr x12, [x14, #8]
    cmp x12, #4
    cset w13, eq
    cbnz w13, L91680bc9395c_15
L91680bc9395c_21:
    b L91680bc9395c_16
L91680bc9395c_15:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L91680bc9395c_16:
    and w14, w13, #255
    cbz w14, L91680bc9395c_10
L91680bc9395c_11:
    movz x16, #26880
    sub x0, x29, x16
    bl _lb_12film_develop_11standard_of
    mov x14, x0
    mov x1, x14
    movz x16, #26880
    sub x0, x29, x16
    bl _lb_12film_develop_14normal_minutes
    fmov d24, d0
    fmov d25, #8.0000000
    fcmp d24, d25
    b.eq L91680bc9395c_9
L91680bc9395c_10:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_510163c3c328@PAGE
    add x14, x14, _lb_text_510163c3c328@PAGEOFF
    adrp x15, _lb_text_28ee2f3ba1ab@PAGE
    add x15, x15, _lb_text_28ee2f3ba1ab@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #26896
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #26888]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L91680bc9395c_9:
    mov x0, #0
    ldr x19, [sp, #26888]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L91680bc9395c_c1:
    adrp x0, _lb_text_06df0d8ca45b@PAGE
    add x0, x0, _lb_text_06df0d8ca45b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L91680bc9395c_c2:
    adrp x0, _lb_text_510163c3c328@PAGE
    add x0, x0, _lb_text_510163c3c328@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_48
_lb_test_48:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #12480
    sub sp, sp, x16
    str d8, [sp, #12472]
    str d9, [sp, #12464]
    str d10, [sp, #12456]
    ldr d8, Lf728fd046245_k0
    ldr d9, Lf728fd046245_k1
    fmov d0, d8
    fmov d1, d9
    movz x0, #3
    movz x16, #8264
    sub x8, x29, x16
    bl _lb_13film_halation_kernel
    movz x16, #8264
    sub x10, x29, x16
    movz x16, #4144
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4120
    bl _memcpy
    fmov d24, #2.0000000
    fmul d10, d8, d24
    fmov d24, #1.0000000
    fdiv d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_10asin_value
    fmov d24, d0
    fmov d0, d24
    bl _lb_13luce_std_math_9tan_value
    fmov d24, d0
    fmul d24, d24, d10
    ldr d25, Lf728fd046245_k2
    fsub d25, d24, d25
    fabs d25, d25
    fmov d26, #3.0000000
    fcmp d25, d26
    b.mi Lf728fd046245_1
Lf728fd046245_2:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_0f1cde1e611e@PAGE
    add x14, x14, _lb_text_0f1cde1e611e@PAGEOFF
    adrp x15, _lb_text_29ca27abcbbd@PAGE
    add x15, x15, _lb_text_29ca27abcbbd@PAGEOFF
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
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_1:
    ldr d25, Lf728fd046245_k3
    fmul d24, d24, d25
    mov x14, #0
    mov x15, #0
Lf728fd046245_4:
    cmp x15, #256
    b.hs Lf728fd046245_7
    .p2align 4
Lf728fd046245_5:
    lsl x12, x15, #1
    movz x16, #4120
    sub x9, x29, x16
    add x13, x9, x12, lsl #3
    ldr d25, [x13]
    fmul d25, d25, d25
    add x12, x12, #1
    movz x10, #512
    cmp x12, x10
    b.hs Lf728fd046245_c1
    ldr d26, [x13, #8]
    fmul d26, d26, d26
    fadd d25, d25, d26
    fsqrt d25, d25
    fcmp d25, d24
    b.le Lf728fd046245_9
Lf728fd046245_8:
    adds x14, x14, #1
    b.cs Lf728fd046245_c2
    b Lf728fd046245_10
Lf728fd046245_9:
Lf728fd046245_10:
    add x15, x15, #1
    cmp x15, #256
    b.lo Lf728fd046245_5
Lf728fd046245_7:
    movz x15, #192
    cmp x14, x15
    b.hi Lf728fd046245_11
Lf728fd046245_12:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_860d6e532bd2@PAGE
    add x14, x14, _lb_text_860d6e532bd2@PAGEOFF
    adrp x15, _lb_text_78dda46742b4@PAGE
    add x15, x15, _lb_text_78dda46742b4@PAGEOFF
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
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_11:
    ldr d24, [sp, #8336]
    ldr d25, [sp, #8344]
    fcmp d24, d25
    b.le Lf728fd046245_17
Lf728fd046245_18:
    ldr d26, [sp, #8352]
    fcmp d25, d26
    b.gt Lf728fd046245_16
Lf728fd046245_17:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_2bcb2adae95a@PAGE
    add x14, x14, _lb_text_2bcb2adae95a@PAGEOFF
    adrp x15, _lb_text_6a28b37d66ed@PAGE
    add x15, x15, _lb_text_6a28b37d66ed@PAGEOFF
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
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_16:
    ldr d25, Lf728fd046245_k4
    fcmp d24, d25
    b.le Lf728fd046245_21
Lf728fd046245_22:
    fmov d25, #0.2500000
    fcmp d24, d25
    b.mi Lf728fd046245_20
Lf728fd046245_21:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_b7f3c401215c@PAGE
    add x14, x14, _lb_text_b7f3c401215c@PAGEOFF
    adrp x15, _lb_text_5beda9671ce1@PAGE
    add x15, x15, _lb_text_5beda9671ce1@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12448
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_20:
    fmov d0, d8
    fmov d1, d9
    mov x0, #0
    movz x16, #12384
    sub x8, x29, x16
    bl _lb_13film_halation_kernel
    movz x16, #12384
    sub x10, x29, x16
    movz x16, #8264
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4120
    bl _memcpy
    ldr d24, [sp, #4216]
    ldr d25, Lf728fd046245_k5
    ldr d26, [sp, #8336]
    fmul d25, d25, d26
    fcmp d24, d25
    b.mi Lf728fd046245_24
Lf728fd046245_25:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_c094d1fab519@PAGE
    add x14, x14, _lb_text_c094d1fab519@PAGEOFF
    adrp x15, _lb_text_5f109dc38695@PAGE
    add x15, x15, _lb_text_5f109dc38695@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12464
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_24:
    fmov d0, d8
    fmov d1, d9
    movz x0, #2
    movz x16, #12384
    sub x8, x29, x16
    bl _lb_13film_halation_kernel
    movz x16, #12384
    sub x10, x29, x16
    movz x16, #8264
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4120
    bl _memcpy
    ldr d24, [sp, #4216]
    ldr d25, [sp, #8336]
    fcmp d24, d25
    b.mi Lf728fd046245_27
Lf728fd046245_28:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_8b5347002b60@PAGE
    add x14, x14, _lb_text_8b5347002b60@PAGEOFF
    adrp x15, _lb_text_32b6d88d91fe@PAGE
    add x15, x15, _lb_text_32b6d88d91fe@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12480
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_27:
    mov x0, #0
    ldr d8, [sp, #12472]
    ldr d9, [sp, #12464]
    ldr d10, [sp, #12456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf728fd046245_c1:
    adrp x0, _lb_text_a44a4f039e1d@PAGE
    add x0, x0, _lb_text_a44a4f039e1d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf728fd046245_c2:
    adrp x0, _lb_text_291575c1c5d4@PAGE
    add x0, x0, _lb_text_291575c1c5d4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lf728fd046245_k0:
    .quad 4638496509959077888
Lf728fd046245_k1:
    .quad 4609344146621155246
Lf728fd046245_k2:
    .quad 4642261237772582912
Lf728fd046245_k3:
    .quad 4606281698874543309
Lf728fd046245_k4:
    .quad 4590429028186199163
Lf728fd046245_k5:
    .quad 4587366580439587226


    .p2align 2
    .globl _lb_13film_halation_kernel
_lb_13film_halation_kernel:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #16656
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #16640]
    str x20, [sp, #16632]
    str x21, [sp, #16624]
    str x22, [sp, #16616]
    str x23, [sp, #16608]
    str x24, [sp, #16600]
    str x25, [sp, #16592]
    str x26, [sp, #16584]
    str x27, [sp, #16576]
    str d8, [sp, #16568]
    str d9, [sp, #16560]
    str d10, [sp, #16552]
    str d11, [sp, #16544]
    str d12, [sp, #16536]
    str d13, [sp, #16528]
    str d14, [sp, #16520]
    str d15, [sp, #16512]
    fmov d8, d0
    fmov d9, d1
    mov x19, x0
    fmov d24, #10.0000000
    fmul d24, d24, d8
    movz x9, #512
    ucvtf d25, x9
    fdiv d10, d24, d25
    movz x16, #16640
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #16640
    sub x9, x29, x16
    str x9, [sp, #0]
    movz x9, #512
    str x9, [sp, #8]
    fmov d0, d8
    fmov d1, d9
    fmov d2, d10
    mov x0, x19
    movz x1, #512
    movz x16, #16656
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_13film_halation_rings
    fmov d8, d0
    movz x16, #8384
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4120
    bl _memset
    movz x16, #8384
    sub x10, x29, x16
    movz x16, #4264
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4120
    bl _memcpy
    adrp x14, _lb_13film_halation_reaching@PAGE
    add x14, x14, _lb_13film_halation_reaching@PAGEOFF
    adrp x15, _lb_13film_halation_absorbed@PAGE
    add x15, x15, _lb_13film_halation_absorbed@PAGEOFF
    movz x16, #4264
    sub x10, x29, x16
    sub x12, x14, x10
    movz x16, #4264
    sub x9, x29, x16
    sub x13, x9, x14
    cmp x12, #24
    cset w12, hs
    cmp x13, #24
    cset w13, hs
    and w12, w12, w13
    movz x16, #4264
    sub x9, x29, x16
    cmp x9, x14
    cset w13, eq
    orr w12, w12, w13
    and w12, w12, #1
    movz x16, #4264
    sub x10, x29, x16
    sub x13, x15, x10
    movz x16, #4264
    sub x9, x29, x16
    sub x7, x9, x15
    cmp x13, #24
    cset w13, hs
    cmp x7, #24
    cset w7, hs
    and w13, w13, w7
    movz x16, #4264
    sub x9, x29, x16
    cmp x9, x15
    cset w7, eq
    orr w13, w13, w7
    and w12, w12, w13
    cbnz w12, L66aae258eedd_35
L66aae258eedd_40:
    mov x12, #0
    b L66aae258eedd_39
L66aae258eedd_35:
    dup v24.2d, v8.d[0]
    mov x12, #0
L66aae258eedd_36:
    cmp x12, #2
    b.hs L66aae258eedd_38
    .p2align 4
L66aae258eedd_37:
    lsl x13, x12, #3
    add x7, x13, x14
    ldr q25, [x7]
    fmul v25.2d, v24.2d, v25.2d
    add x7, x13, x15
    ldr q26, [x7]
    fmul v25.2d, v25.2d, v26.2d
    movz x16, #4264
    sub x10, x29, x16
    add x13, x13, x10
    str q25, [x13]
    add x12, x12, #2
    cmp x12, #2
    b.lo L66aae258eedd_37
L66aae258eedd_38:
    movz x12, #2
L66aae258eedd_39:
L66aae258eedd_1:
    cmp x12, #3
    b.hs L66aae258eedd_4
    .p2align 4
L66aae258eedd_2:
    lsl x13, x12, #3
    movz x16, #4264
    sub x10, x29, x16
    add x7, x13, x10
    ldr d24, [x13, x14]
    fmul d24, d24, d8
    ldr d25, [x13, x15]
    fmul d24, d24, d25
    str d24, [x7]
    add x12, x12, #1
    cmp x12, #3
    b.lo L66aae258eedd_2
L66aae258eedd_4:
    movz x16, #8368
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4104
    bl _memset
    fmov d9, xzr
    str d9, [sp, #8288]
    ldr d11, L66aae258eedd_k0
    fmov x14, d8
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w15, hi
    fmov x12, d11
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    cset w13, hi
    fcmp d8, d9
    cset w7, eq
    fcmp d9, d11
    cset w6, eq
    fcmp d8, d11
    cset w5, gt
    and x14, x14, x12
    fmov d24, x14
    mov x14, #0
L66aae258eedd_5:
    cmp x14, #512
    b.hs L66aae258eedd_8
    .p2align 4
L66aae258eedd_6:
    add x12, x14, #1
    movz x10, #513
    cmp x12, x10
    b.hs L66aae258eedd_c1
    movz x16, #8368
    sub x9, x29, x16
    add x4, x9, x12, lsl #3
    lsl x14, x14, #3
    movz x16, #8368
    sub x11, x29, x16
    ldr d25, [x14, x11]
    movz x16, #16640
    sub x11, x29, x16
    ldr d26, [x14, x11]
    cbz w15, L66aae258eedd_42
L66aae258eedd_41:
    fmov d27, d8
    b L66aae258eedd_62
L66aae258eedd_42:
L66aae258eedd_43:
L66aae258eedd_61:
    cbz w13, L66aae258eedd_46
L66aae258eedd_45:
    fmov d27, d11
    b L66aae258eedd_62
L66aae258eedd_46:
L66aae258eedd_47:
    cbz w7, L66aae258eedd_50
L66aae258eedd_52:
    cbz w6, L66aae258eedd_50
L66aae258eedd_49:
    fmov d27, d24
    b L66aae258eedd_62
L66aae258eedd_50:
L66aae258eedd_51:
    cmp w5, #0
    fcsel d27, d8, d11, ne
L66aae258eedd_62:
    fdiv d26, d26, d27
    fadd d25, d26, d25
    str d25, [x4]
    mov x14, x12
    cmp x14, #512
    b.lo L66aae258eedd_6
L66aae258eedd_8:
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d24, [x14]
    fmov d25, #3.0000000
    fmov d26, #5.0000000
    fsqrt d26, d26
    fsub d25, d25, d26
    fmul d8, d25, d24
    fmov d12, #0.5000000
    fmov d13, #1.0000000
    ldr d14, L66aae258eedd_k1
    adrp x19, _lb_13film_halation_11exit_spread@PAGE
    add x19, x19, _lb_13film_halation_11exit_spread@PAGEOFF
    fmov d15, #-2.0000000
    ldr d24, L66aae258eedd_k2
    fmov d25, #7.0000000
    fmov x20, d11
    and x14, x20, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w21, hi
    fcmp d9, d11
    cset w22, eq
    fcmp d9, d13
    cset w23, ls
    mov x14, #0
    mov x24, #0
L66aae258eedd_9:
    cmp x24, #256
    b.hs L66aae258eedd_12
    .p2align 4
L66aae258eedd_10:
    ucvtf d26, x24
    fadd d27, d12, d26
    movz x9, #256
    ucvtf d28, x9
    fdiv d27, d27, d28
    mov x25, x14
    .p2align 4
L66aae258eedd_13:
    adds x14, x25, #1
    b.cs L66aae258eedd_c2
    cmp x14, #512
    b.hs L66aae258eedd_15
L66aae258eedd_16:
    movz x16, #8368
    sub x10, x29, x16
    ldr d28, [x10, x14, lsl #3]
    fcmp d28, d27
    b.pl L66aae258eedd_15
L66aae258eedd_14:
    mov x25, x14
    b L66aae258eedd_13
L66aae258eedd_15:
    movz x10, #513
    cmp x25, x10
    b.hs L66aae258eedd_c3
    movz x16, #8368
    sub x10, x29, x16
    ldr d28, [x10, x25, lsl #3]
    fsub d27, d27, d28
    movz x10, #513
    cmp x14, x10
    b.hs L66aae258eedd_c4
    movz x16, #8368
    sub x10, x29, x16
    ldr d29, [x10, x14, lsl #3]
    fsub d28, d29, d28
    fmov x14, d28
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L66aae258eedd_64
L66aae258eedd_63:
    b L66aae258eedd_84
L66aae258eedd_64:
L66aae258eedd_65:
L66aae258eedd_83:
    cbz w21, L66aae258eedd_68
L66aae258eedd_67:
    fmov d28, d11
    b L66aae258eedd_84
L66aae258eedd_68:
L66aae258eedd_69:
    fcmp d28, d9
    b.ne L66aae258eedd_72
L66aae258eedd_74:
    cbz w22, L66aae258eedd_72
L66aae258eedd_71:
    and x14, x14, x20
    fmov d28, x14
    b L66aae258eedd_84
L66aae258eedd_72:
L66aae258eedd_73:
    fcmp d28, d11
    fcsel d28, d28, d11, gt
L66aae258eedd_84:
    fdiv d27, d27, d28
    ucvtf d28, x25
    cbz w23, L66aae258eedd_86
L66aae258eedd_85:
    fmov x14, d27
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L66aae258eedd_88
L66aae258eedd_87:
    b L66aae258eedd_100
L66aae258eedd_88:
L66aae258eedd_89:
    fcmp d27, d9
    cset w14, mi
    fcmp d27, d13
    fcsel d27, d13, d27, gt
    cmp w14, #0
    fcsel d27, d9, d27, ne
L66aae258eedd_100:
    fadd d27, d28, d27
    fmul d27, d27, d10
    fmul d28, d8, d26
    fmul d26, d14, d26
    frintm d29, d26
    fsub d26, d26, d29
    ldr d29, [x19]
    fmul d26, d26, d24
    fsub d26, d13, d26
    str d24, [sp, #8280]
    str d25, [sp, #8272]
    str d27, [sp, #8264]
    str d28, [sp, #8256]
    str d29, [sp, #8248]
    fmov d0, d26
    bl _lb_13luce_std_math_9log_value
    fmov d26, d0
    ldr d24, [sp, #8280]
    ldr d25, [sp, #8272]
    ldr d27, [sp, #8264]
    ldr d28, [sp, #8256]
    ldr d29, [sp, #8248]
    fmul d26, d15, d26
    fsqrt d26, d26
    fmul d26, d29, d26
    fmul d29, d25, d28
    lsl x26, x24, #1
    movz x16, #4240
    sub x9, x29, x16
    add x27, x9, x26, lsl #3
    str d29, [sp, #8248]
    str d24, [sp, #8280]
    str d25, [sp, #8272]
    str d27, [sp, #8264]
    str d28, [sp, #8256]
    str d26, [sp, #8240]
    fmov d0, d28
    bl _lb_13luce_std_math_9cos_value
    fmov d30, d0
    ldr d29, [sp, #8248]
    ldr d24, [sp, #8280]
    ldr d25, [sp, #8272]
    ldr d27, [sp, #8264]
    ldr d28, [sp, #8256]
    ldr d26, [sp, #8240]
    fmul d30, d27, d30
    str d29, [sp, #8248]
    str d24, [sp, #8280]
    str d25, [sp, #8272]
    str d27, [sp, #8264]
    str d28, [sp, #8256]
    str d26, [sp, #8240]
    str d30, [sp, #8232]
    fmov d0, d29
    bl _lb_13luce_std_math_9cos_value
    fmov d31, d0
    ldr d29, [sp, #8248]
    ldr d24, [sp, #8280]
    ldr d25, [sp, #8272]
    ldr d27, [sp, #8264]
    ldr d28, [sp, #8256]
    ldr d26, [sp, #8240]
    ldr d30, [sp, #8232]
    fmul d31, d26, d31
    fadd d30, d31, d30
    str d30, [x27]
    add x14, x26, #1
    movz x10, #512
    cmp x14, x10
    b.hs L66aae258eedd_c5
    movz x16, #4240
    sub x9, x29, x16
    add x26, x9, x14, lsl #3
    str d29, [sp, #8248]
    str d24, [sp, #8280]
    str d25, [sp, #8272]
    str d27, [sp, #8264]
    str d26, [sp, #8240]
    fmov d0, d28
    bl _lb_13luce_std_math_9sin_value
    fmov d28, d0
    ldr d29, [sp, #8248]
    ldr d24, [sp, #8280]
    ldr d25, [sp, #8272]
    ldr d27, [sp, #8264]
    ldr d26, [sp, #8240]
    fmul d27, d27, d28
    str d24, [sp, #8280]
    str d25, [sp, #8272]
    str d26, [sp, #8240]
    str d27, [sp, #8256]
    fmov d0, d29
    bl _lb_13luce_std_math_9sin_value
    fmov d28, d0
    ldr d24, [sp, #8280]
    ldr d25, [sp, #8272]
    ldr d26, [sp, #8240]
    ldr d27, [sp, #8256]
    fmul d26, d26, d28
    fadd d26, d26, d27
    str d26, [x26]
    add x24, x24, #1
    mov x14, x25
    cmp x24, #256
    b.lo L66aae258eedd_10
L66aae258eedd_12:
    movz x16, #4264
    sub x10, x29, x16
    movz x16, #12544
    sub x0, x29, x16
    mov x1, x10
    movz x2, #4120
    bl _memcpy
    movz x16, #12544
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #4120
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #16640]
    ldr x20, [sp, #16632]
    ldr x21, [sp, #16624]
    ldr x22, [sp, #16616]
    ldr x23, [sp, #16608]
    ldr x24, [sp, #16600]
    ldr x25, [sp, #16592]
    ldr x26, [sp, #16584]
    ldr x27, [sp, #16576]
    ldr d8, [sp, #16568]
    ldr d9, [sp, #16560]
    ldr d10, [sp, #16552]
    ldr d11, [sp, #16544]
    ldr d12, [sp, #16536]
    ldr d13, [sp, #16528]
    ldr d14, [sp, #16520]
    ldr d15, [sp, #16512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66aae258eedd_86:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L66aae258eedd_c1:
    adrp x0, _lb_text_da5e715a362d@PAGE
    add x0, x0, _lb_text_da5e715a362d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L66aae258eedd_c2:
    adrp x0, _lb_text_711a43ab41da@PAGE
    add x0, x0, _lb_text_711a43ab41da@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L66aae258eedd_c3:
    adrp x0, _lb_text_d7c742ecdc54@PAGE
    add x0, x0, _lb_text_d7c742ecdc54@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L66aae258eedd_c4:
    adrp x0, _lb_text_d7c742ecdc54@PAGE
    add x0, x0, _lb_text_d7c742ecdc54@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L66aae258eedd_c5:
    adrp x0, _lb_text_5d2413cfcb6c@PAGE
    add x0, x0, _lb_text_5d2413cfcb6c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L66aae258eedd_k0:
    .quad 4427486594234968593
L66aae258eedd_k1:
    .quad 4603741974827699659
L66aae258eedd_k2:
    .quad 4607173411600762667


    .p2align 2
    .globl _lb_13film_halation_rings
_lb_13film_halation_rings:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #232]
    str x20, [sp, #224]
    str x21, [sp, #216]
    str x22, [sp, #208]
    str x23, [sp, #200]
    str x24, [sp, #192]
    str x25, [sp, #184]
    str x26, [sp, #176]
    str x27, [sp, #168]
    str x28, [sp, #160]
    str d8, [sp, #152]
    str d9, [sp, #144]
    str d10, [sp, #136]
    str d11, [sp, #128]
    str d12, [sp, #120]
    str d13, [sp, #112]
    str d14, [sp, #104]
    str d15, [sp, #96]
    sub x16, x29, #240
    str x2, [x16]
    str x3, [x16, #8]
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
    mov x19, x0
    mov x20, x1
    ldr x14, [sp, #0]
    ldr x15, [sp, #8]
    fmov d24, xzr
    mov x12, #0
L8485eed690a2_1:
    cmp x12, x20
    b.hs L8485eed690a2_4
    .p2align 4
L8485eed690a2_2:
    cmp x12, x15
    b.hs L8485eed690a2_c1
    str d24, [x14, x12, lsl #3]
    add x12, x12, #1
    cmp x12, x20
    b.lo L8485eed690a2_2
L8485eed690a2_4:
    fmov d11, #1.0000000
    fdiv d24, d11, d9
    fmov d0, d24
    bl _lb_13luce_std_math_10asin_value
    fmov d12, d0
    fmov d24, xzr
    fmov d13, #0.5000000
    adrp x21, _lb_13luce_std_math_pi@PAGE
    add x21, x21, _lb_13luce_std_math_pi@PAGEOFF
    fmov d14, #2.0000000
    cmp x19, #0
    cset w22, eq
    cmp x19, #1
    cset w23, eq
    cmp x19, #2
    cset w19, eq
    fmov d15, #10.0000000
    fmov d25, #-2.0000000
    adrp x24, _lb_13film_halation_12grey_density@PAGE
    add x24, x24, _lb_13film_halation_12grey_density@PAGEOFF
    adrp x25, _lb_13film_halation_16undercoat_return@PAGE
    add x25, x25, _lb_13film_halation_16undercoat_return@PAGEOFF
    adrp x26, _lb_13film_halation_14rem_jet_return@PAGE
    add x26, x26, _lb_13film_halation_14rem_jet_return@PAGEOFF
    ldr d26, L8485eed690a2_k0
    mov x27, #0
L8485eed690a2_5:
    cmp x27, #4000
    b.ge L8485eed690a2_8
    .p2align 4
L8485eed690a2_6:
    scvtf d27, x27
    fadd d27, d13, d27
    movz x9, #4000
    scvtf d28, x9
    fdiv d27, d27, d28
    ldr d29, [x21]
    fmul d27, d27, d29
    fdiv d27, d27, d14
    fdiv d29, d29, d14
    fdiv d28, d29, d28
    str d27, [sp, #64]
    str d28, [sp, #56]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d24, [sp, #72]
    fmov d0, d27
    bl _lb_13luce_std_math_9sin_value
    fmov d29, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #56]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d24, [sp, #72]
    fmul d29, d14, d29
    str d27, [sp, #64]
    str d28, [sp, #56]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d24, [sp, #72]
    str d29, [sp, #48]
    fmov d0, d27
    bl _lb_13luce_std_math_9cos_value
    fmov d30, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #56]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d24, [sp, #72]
    ldr d29, [sp, #48]
    fmul d29, d30, d29
    fmul d28, d28, d29
    fcmp d27, d12
    cset w28, ge
    cbz w28, L8485eed690a2_10
L8485eed690a2_9:
    fmov d29, d11
    b L8485eed690a2_11
L8485eed690a2_10:
    str d27, [sp, #64]
    str d28, [sp, #48]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d24, [sp, #72]
    fmov d0, d27
    bl _lb_13luce_std_math_9sin_value
    fmov d29, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #48]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d24, [sp, #72]
    fmul d29, d29, d9
    fcmp d29, d11
    b.lt L8485eed690a2_40
L8485eed690a2_39:
    fmov d29, d11
    b L8485eed690a2_50
L8485eed690a2_40:
L8485eed690a2_41:
    str d27, [sp, #64]
    str d28, [sp, #48]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d29, [sp, #40]
    str d24, [sp, #72]
    fmov d0, d27
    bl _lb_13luce_std_math_9cos_value
    fmov d30, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #48]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d29, [sp, #40]
    ldr d24, [sp, #72]
    fmul d29, d29, d29
    fsub d29, d11, d29
    fsqrt d29, d29
    fmul d31, d30, d9
    fsub d19, d31, d29
    fadd d31, d31, d29
    fdiv d31, d19, d31
    fmul d29, d29, d9
    fsub d19, d29, d30
    fadd d29, d29, d30
    fdiv d29, d19, d29
    fmul d30, d31, d31
    fmul d29, d29, d29
    fadd d29, d30, d29
    fmul d29, d13, d29
L8485eed690a2_50:
L8485eed690a2_11:
    cbz w22, L8485eed690a2_13
L8485eed690a2_12:
    ldr d29, [x26]
    b L8485eed690a2_14
L8485eed690a2_13:
    cbz w23, L8485eed690a2_16
L8485eed690a2_15:
    ldr d30, [x25]
    fmul d29, d30, d29
    b L8485eed690a2_17
L8485eed690a2_16:
    cbz w19, L8485eed690a2_19
L8485eed690a2_18:
    ldr d30, [x24]
    fmul d30, d25, d30
    str d27, [sp, #64]
    str d28, [sp, #48]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d24, [sp, #72]
    str d29, [sp, #56]
    str d30, [sp, #40]
    fmov d0, d27
    bl _lb_13luce_std_math_9cos_value
    fmov d31, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #48]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d24, [sp, #72]
    ldr d29, [sp, #56]
    ldr d30, [sp, #40]
    fdiv d30, d30, d31
    str d27, [sp, #64]
    str d28, [sp, #48]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d24, [sp, #72]
    str d29, [sp, #56]
    fmov d0, d15
    fmov d1, d30
    bl _lb_13luce_std_math_9pow_value
    fmov d30, d0
    ldr d27, [sp, #64]
    ldr d28, [sp, #48]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d24, [sp, #72]
    ldr d29, [sp, #56]
    fmul d29, d30, d29
    b L8485eed690a2_20
L8485eed690a2_19:
L8485eed690a2_20:
L8485eed690a2_17:
L8485eed690a2_14:
    fmul d28, d28, d29
    fmul d29, d13, d29
    movz x14, #1
L8485eed690a2_21:
    cmp x14, #4
    b.le L8485eed690a2_24
L8485eed690a2_59:
    b L8485eed690a2_23
    .p2align 4
L8485eed690a2_24:
    fcmp d28, d26
    b.gt L8485eed690a2_22
L8485eed690a2_60:
    b L8485eed690a2_23
L8485eed690a2_22:
    scvtf d30, x14
    fmul d30, d14, d30
    fmul d30, d30, d8
    str d27, [sp, #64]
    str d25, [sp, #88]
    str d26, [sp, #80]
    str d29, [sp, #56]
    str d24, [sp, #48]
    str d28, [sp, #40]
    str x14, [sp, #32]
    str d30, [sp, #24]
    fmov d0, d27
    bl _lb_13luce_std_math_9tan_value
    fmov d31, d0
    ldr d27, [sp, #64]
    ldr d25, [sp, #88]
    ldr d26, [sp, #80]
    ldr d29, [sp, #56]
    ldr d24, [sp, #48]
    ldr d28, [sp, #40]
    ldr x14, [sp, #32]
    ldr d30, [sp, #24]
    fmul d30, d31, d30
    ucvtf d31, x20
    fmul d31, d31, d10
    fcmp d30, d31
    b.pl L8485eed690a2_26
L8485eed690a2_25:
    fdiv d30, d30, d10
    frintm d30, d30
    fcvtzu x15, d30
    ldr x12, [sp, #0]
    ldr x13, [sp, #8]
    cmp x15, x13
    b.hs L8485eed690a2_c2
    add x15, x12, x15, lsl #3
    ldr d30, [x15]
    fadd d30, d30, d28
    str d30, [x15]
    fadd d24, d24, d28
    b L8485eed690a2_27
L8485eed690a2_26:
L8485eed690a2_27:
    cbnz w28, L8485eed690a2_29
L8485eed690a2_28:
    b L8485eed690a2_23
L8485eed690a2_29:
L8485eed690a2_30:
    fmul d28, d29, d28
    adds x14, x14, #1
    b.vs L8485eed690a2_c3
    cmp x14, #4
    b.le L8485eed690a2_24
    b L8485eed690a2_59
L8485eed690a2_23:
    add x27, x27, #1
    cmp x27, #4000
    b.lt L8485eed690a2_6
L8485eed690a2_8:
    fmov d0, d24
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    ldr x27, [sp, #168]
    ldr x28, [sp, #160]
    ldr d8, [sp, #152]
    ldr d9, [sp, #144]
    ldr d10, [sp, #136]
    ldr d11, [sp, #128]
    ldr d12, [sp, #120]
    ldr d13, [sp, #112]
    ldr d14, [sp, #104]
    ldr d15, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8485eed690a2_c1:
    adrp x0, _lb_text_36ccf04cd41e@PAGE
    add x0, x0, _lb_text_36ccf04cd41e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8485eed690a2_c2:
    adrp x0, _lb_text_4d82ca88303d@PAGE
    add x0, x0, _lb_text_4d82ca88303d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8485eed690a2_c3:
    adrp x0, _lb_text_a3c0ec1c1545@PAGE
    add x0, x0, _lb_text_a3c0ec1c1545@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8485eed690a2_k0:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_13luce_std_math_9tan_value
_lb_13luce_std_math_9tan_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str d8, [sp, #24]
    str d9, [sp, #16]
    str d10, [sp, #8]
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15936, lsl #48
    sub x14, x14, x10
    movz x10, #752, lsl #48
    cmp x14, x10
    b.hs L946603555467_2
L946603555467_1:
    ldr d25, L946603555467_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L946603555467_k1
    fmul d26, d25, d26
    fsub d26, d24, d26
    ldr d27, L946603555467_k2
    fmul d27, d25, d27
    fneg d27, d27
    fadd d28, d26, d27
    fsub d29, d28, d26
    fsub d30, d28, d29
    fsub d26, d26, d30
    fsub d27, d27, d29
    fadd d26, d26, d27
    ldr d27, L946603555467_k3
    fmul d27, d25, d27
    fsub d26, d26, d27
    fadd d27, d26, d28
    fsub d28, d27, d28
    fsub d26, d26, d28
    fcvtzs x14, d25
    fmul d25, d27, d27
    fmov d28, #-0.5000000
    ldr d29, L946603555467_k4
    ldr d30, L946603555467_k5
    fmul d30, d25, d30
    fadd d29, d29, d30
    fmul d29, d25, d29
    fadd d28, d28, d29
    fmul d28, d25, d28
    fmul d29, d25, d27
    ldr d30, L946603555467_k6
    ldr d31, L946603555467_k7
    ldr d19, L946603555467_k8
    fmul d19, d25, d19
    fadd d31, d31, d19
    fmul d25, d25, d31
    fadd d25, d30, d25
    fmul d25, d29, d25
    and x15, x14, #255
    lsl x15, x15, #1
    adrp x12, _lb_20luce_std_math_tables_10sine_table@PAGE
    add x12, x12, _lb_20luce_std_math_tables_10sine_table@PAGEOFF
    add x13, x12, x15, lsl #3
    ldr x7, [x13]
    fmov d29, x7
    add x15, x15, #1
    movz x10, #512
    cmp x15, x10
    b.hs L946603555467_c1
    ldr x15, [x13, #8]
    fmov d30, x15
    add x14, x14, #64
    and x14, x14, #255
    lsl x14, x14, #1
    add x15, x12, x14, lsl #3
    ldr x12, [x15]
    fmov d31, x12
    add x14, x14, #1
    movz x10, #512
    cmp x14, x10
    b.hs L946603555467_c2
    ldr x14, [x15, #8]
    fmov d19, x14
    fmul d20, d27, d31
    fneg d21, d20
    fmadd d21, d31, d27, d21
    fadd d22, d29, d20
    fsub d23, d22, d29
    fsub d23, d20, d23
    fadd d21, d21, d23
    fmul d23, d27, d19
    fadd d23, d30, d23
    fadd d21, d21, d23
    fmul d23, d27, d29
    fsub d23, d31, d23
    fmul d23, d26, d23
    fadd d21, d21, d23
    fmul d23, d28, d29
    fmul d8, d25, d31
    fadd d23, d23, d8
    fadd d21, d21, d23
    fneg d29, d29
    fneg d30, d30
    fmul d23, d29, d27
    fneg d8, d23
    fmadd d8, d29, d27, d8
    fadd d9, d31, d23
    fsub d10, d9, d31
    fsub d23, d23, d10
    fadd d23, d8, d23
    fmul d27, d30, d27
    fadd d27, d19, d27
    fadd d27, d23, d27
    fsub d30, d29, d20
    fmul d26, d26, d30
    fadd d26, d27, d26
    fmul d27, d28, d31
    fmul d25, d29, d25
    fadd d25, d27, d25
    fadd d25, d26, d25
L946603555467_42:
    fadd d26, d21, d22
    fsub d27, d26, d22
    fsub d27, d21, d27
    fadd d28, d25, d9
    fsub d29, d28, d9
    fsub d25, d25, d29
    fabs d29, d26
    ldr d30, L946603555467_k9
    fcmp d29, d30
    b.lt L946603555467_5
L946603555467_7:
    fabs d29, d28
    fcmp d29, d30
    b.lt L946603555467_5
L946603555467_4:
    fdiv d29, d26, d28
    fneg d30, d29
    fmadd d26, d30, d28, d26
    fmul d25, d29, d25
    fsub d25, d27, d25
    fadd d25, d26, d25
    fdiv d25, d25, d28
    fabs d26, d29
    ldr d27, L946603555467_k10
    fmul d26, d27, d26
    fsub d27, d25, d26
    fadd d27, d29, d27
    fadd d26, d25, d26
    fadd d26, d29, d26
    fcmp d27, d26
    b.ne L946603555467_9
L946603555467_8:
    fadd d24, d29, d25
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L946603555467_9:
L946603555467_10:
L946603555467_5:
L946603555467_6:
L946603555467_2:
L946603555467_3:
    fmov d0, d24
    bl _lb_13luce_std_math_12tan_accurate
    fmov d24, d0
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L946603555467_c1:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L946603555467_c2:
    adrp x0, _lb_text_225d9bc28c67@PAGE
    add x0, x0, _lb_text_225d9bc28c67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L946603555467_k0:
    .quad 4630930978448722051
L946603555467_k1:
    .quad 4582731459155984384
L946603555467_k2:
    .quad 4445346703003877376
L946603555467_k3:
    .quad 13559410162067261426
L946603555467_k4:
    .quad 4586165620538955093
L946603555467_k5:
    .quad 13787419979223755799
L946603555467_k6:
    .quad 13818544856648471893
L946603555467_k7:
    .quad 4575957461383581969
L946603555467_k8:
    .quad 13774824197408792602
L946603555467_k9:
    .quad 4517110426252607488
L946603555467_k10:
    .quad 4336966441157787648


    .p2align 2
    .globl _lb_13luce_std_math_12tan_accurate
_lb_13luce_std_math_12tan_accurate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str d8, [sp, #120]
    str d9, [sp, #112]
    str d10, [sp, #104]
    str d11, [sp, #96]
    str d12, [sp, #88]
    str d13, [sp, #80]
    fmov d24, d0
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #15936, lsl #48
    cmp x14, x10
    b.hs L0587b78146e3_2
L0587b78146e3_1:
    fmov d0, d24
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    ldr d11, [sp, #96]
    ldr d12, [sp, #88]
    ldr d13, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0587b78146e3_2:
L0587b78146e3_3:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.lo L0587b78146e3_6
L0587b78146e3_5:
    fsub d24, d24, d24
    fmov d0, d24
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    ldr d11, [sp, #96]
    ldr d12, [sp, #88]
    ldr d13, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0587b78146e3_6:
L0587b78146e3_7:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16361, lsl #48
    cmp x14, x10
    b.hi L0587b78146e3_15
L0587b78146e3_14:
    fmov d25, xzr
    mov x14, #0
    b L0587b78146e3_29
L0587b78146e3_15:
L0587b78146e3_16:
    movz x10, #11544
    movk x10, #21572, lsl #16
    movk x10, #8699, lsl #32
    movk x10, #16697, lsl #48
    cmp x14, x10
    b.lo L0587b78146e3_19
L0587b78146e3_18:
    fmov d0, d24
    bl _lb_13luce_std_math_12reduce_large
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    b L0587b78146e3_29
L0587b78146e3_19:
L0587b78146e3_20:
    ldr d25, L0587b78146e3_k0
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, L0587b78146e3_k1
    fmul d26, d25, d26
    fsub d24, d24, d26
    ldr d26, L0587b78146e3_k2
    fmul d26, d25, d26
    fneg d26, d26
    fadd d27, d24, d26
    fsub d28, d27, d24
    fsub d29, d27, d28
    fsub d24, d24, d29
    fsub d26, d26, d28
    fadd d24, d24, d26
    ldr d26, L0587b78146e3_k3
    fmul d26, d25, d26
    fneg d26, d26
    fadd d28, d26, d27
    fsub d29, d28, d27
    fsub d30, d28, d29
    fsub d27, d27, d30
    fsub d26, d26, d29
    fadd d26, d27, d26
    fadd d24, d24, d26
    ldr d26, L0587b78146e3_k4
    fmul d26, d25, d26
    fsub d24, d24, d26
    fadd d26, d24, d28
    fsub d27, d26, d28
    fsub d27, d24, d27
    fcvtzs x14, d25
    fmov d24, d26
    fmov d25, d27
L0587b78146e3_29:
    fmul d26, d24, d24
    fneg d27, d26
    fmadd d28, d24, d24, d27
    fmul d29, d26, d24
    fneg d30, d29
    fmadd d30, d24, d26, d30
    adrp x15, _lb_13luce_std_math_10sixth_high@PAGE
    add x15, x15, _lb_13luce_std_math_10sixth_high@PAGEOFF
    ldr d31, [x15]
    fmul d19, d31, d29
    fneg d19, d19
    fmadd d20, d29, d31, d19
    fadd d21, d19, d24
    fsub d22, d21, d24
    fsub d19, d19, d22
    adrp x15, _lb_13luce_std_math_16sin_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16sin_coefficients@PAGEOFF
    sub x11, x29, #112
    ldp x16, x17, [x15, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x15, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x15, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x15, #48]
    stp x16, x17, [x11, #48]
    ldr d22, [sp, #16]
    ldr d23, [sp, #24]
    ldr d8, [sp, #32]
    ldr d9, [sp, #40]
    ldr d10, [sp, #48]
    ldr d11, [sp, #56]
    ldr d12, [sp, #64]
    ldr d13, [sp, #72]
    fmul d13, d13, d26
    fadd d12, d12, d13
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
    fmul d28, d28, d24
    fadd d28, d28, d30
    fmul d28, d31, d28
    adrp x15, _lb_13luce_std_math_9sixth_low@PAGE
    add x15, x15, _lb_13luce_std_math_9sixth_low@PAGEOFF
    ldr d30, [x15]
    fmul d30, d30, d29
    fadd d28, d28, d30
    fadd d28, d28, d20
    fsub d28, d19, d28
    fmov d30, #1.0000000
    fmov d31, #0.5000000
    fmul d19, d31, d26
    fsub d20, d30, d19
    fmul d20, d20, d25
    fmul d29, d26, d29
    fmul d29, d22, d29
    fadd d29, d20, d29
    fadd d28, d28, d29
    fadd d29, d28, d21
    fsub d20, d29, d21
    fsub d28, d28, d20
L0587b78146e3_41:
    fmadd d27, d24, d24, d27
    fneg d19, d19
    fadd d20, d30, d19
    fsub d30, d20, d30
    fsub d30, d19, d30
    adrp x15, _lb_13luce_std_math_16cos_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16cos_coefficients@PAGEOFF
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
    ldr d19, [sp, #8]
    ldr d21, [sp, #16]
    ldr d22, [sp, #24]
    ldr d23, [sp, #32]
    ldr d8, [sp, #40]
    ldr d9, [sp, #48]
    ldr d10, [sp, #56]
    ldr d11, [sp, #64]
    ldr d12, [sp, #72]
    fmul d12, d26, d12
    fadd d11, d11, d12
    fmul d11, d26, d11
    fadd d10, d10, d11
    fmul d10, d26, d10
    fadd d9, d9, d10
    fmul d9, d26, d9
    fadd d8, d8, d9
    fmul d8, d26, d8
    fadd d23, d23, d8
    fmul d23, d26, d23
    fadd d22, d22, d23
    fmul d22, d26, d22
    fadd d21, d21, d22
    fmul d21, d26, d21
    fadd d19, d19, d21
    fmov d21, #2.0000000
    fmul d24, d21, d24
    fmul d24, d24, d25
    fadd d24, d24, d27
    fmul d24, d31, d24
    fsub d24, d30, d24
    fmul d25, d26, d26
    fmul d25, d19, d25
    fadd d24, d24, d25
    fadd d25, d24, d20
    fsub d26, d25, d20
    fsub d24, d24, d26
L0587b78146e3_49:
    and x14, x14, #1
    cmp x14, #1
    b.ne L0587b78146e3_10
L0587b78146e3_9:
    fdiv d26, d25, d29
    fmul d27, d29, d26
    fneg d30, d27
    fmadd d30, d26, d29, d30
    fsub d25, d25, d27
    fsub d25, d25, d30
    fadd d24, d24, d25
    fmul d25, d28, d26
    fsub d24, d24, d25
    fdiv d24, d24, d29
    fadd d25, d26, d24
    fsub d26, d25, d26
    fsub d24, d24, d26
L0587b78146e3_55:
    fadd d24, d25, d24
    fneg d24, d24
    fmov d0, d24
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    ldr d11, [sp, #96]
    ldr d12, [sp, #88]
    ldr d13, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0587b78146e3_10:
L0587b78146e3_11:
    fdiv d26, d29, d25
    fmul d27, d25, d26
    fneg d30, d27
    fmadd d30, d26, d25, d30
    fsub d27, d29, d27
    fsub d27, d27, d30
    fadd d27, d28, d27
    fmul d24, d24, d26
    fsub d24, d27, d24
    fdiv d24, d24, d25
    fadd d25, d26, d24
    fsub d26, d25, d26
    fsub d24, d24, d26
L0587b78146e3_61:
    fadd d24, d25, d24
    fmov d0, d24
    ldr d8, [sp, #120]
    ldr d9, [sp, #112]
    ldr d10, [sp, #104]
    ldr d11, [sp, #96]
    ldr d12, [sp, #88]
    ldr d13, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L0587b78146e3_k0:
    .quad 4603909380684499075
L0587b78146e3_k1:
    .quad 4609753056924401664
L0587b78146e3_k2:
    .quad 4454258360616747008
L0587b78146e3_k3:
    .quad 4297306550709518336
L0587b78146e3_k4:
    .quad 4142048980368378305


    .p2align 2
    .globl _lb_test_49
_lb_test_49:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5728
    sub sp, sp, x16
    str x19, [sp, #5720]
    str x20, [sp, #5712]
    str x21, [sp, #5704]
    str x22, [sp, #5696]
    str x23, [sp, #5688]
    str d8, [sp, #5680]
    str d9, [sp, #5672]
    str d10, [sp, #5664]
    str d11, [sp, #5656]
    str d12, [sp, #5648]
    str d13, [sp, #5640]
    str d14, [sp, #5632]
    str d15, [sp, #5624]
    sub x0, x29, #384
    mov x1, #0
    movz x2, #216
    bl _memset
    fmov d8, xzr
    fmov d24, #0.5000000
    fmov d9, #1.0000000
    mov x14, #0
L8668a29e3526_1:
    cmp x14, #9
    b.hs L8668a29e3526_4
    .p2align 4
L8668a29e3526_2:
    movz x10, #24
    mul x15, x14, x10
    sub x10, x29, #384
    add x15, x15, x10
    str d8, [x15]
    str d24, [x15, #8]
    str d9, [x15, #16]
    add x14, x14, #1
    cmp x14, #9
    b.lo L8668a29e3526_2
L8668a29e3526_4:
    ldr d10, L8668a29e3526_k0
    fmov d25, #1.5000000
    str d10, [sp, #5344]
    str d24, [sp, #5352]
    str d25, [sp, #5360]
    fmov d11, #3.0000000
    ldr d25, L8668a29e3526_k1
    str d11, [sp, #5368]
    str d24, [sp, #5376]
    str d25, [sp, #5384]
    ldr d12, L8668a29e3526_k2
    ldr d13, L8668a29e3526_k3
    ldr d14, L8668a29e3526_k4
    str d12, [sp, #5312]
    str d13, [sp, #5320]
    str d8, [sp, #5328]
    str d14, [sp, #5336]
    movz x16, #5536
    sub x0, x29, x16
    mov x1, #0
    movz x2, #5120
    bl _memset
    ldr d15, L8668a29e3526_k5
    ldr d24, L8668a29e3526_k6
    adrp x19, _lb_11film_grains_10even_place@GOTPAGE
    ldr x19, [x19, _lb_11film_grains_10even_place@GOTPAGEOFF]
    fmov d25, #10.0000000
    fmov d26, d8
    mov x20, #0
L8668a29e3526_5:
    cmp x20, #300
    b.ge L8668a29e3526_8
    .p2align 4
L8668a29e3526_6:
    add w14, w20, #77
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w21, w20, w10
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w22, w14, w10
    mov x23, #0
L8668a29e3526_9:
    cmp x23, #300
    b.ge L8668a29e3526_12
    .p2align 4
L8668a29e3526_10:
    scvtf d27, x23
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w14, w23, w10
    add w14, w14, w21
    lsr w15, w14, #16
    eor w14, w14, w15
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #15
    eor w14, w14, w15
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #16
    eor w14, w14, w15
    lsr w14, w14, #8
    ucvtf d28, x14
    fdiv d28, d28, d15
    fadd d27, d28, d27
    fmul d27, d27, d24
    scvtf d28, x20
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w14, w23, w10
    add w14, w22, w14
    lsr w15, w14, #16
    eor w14, w14, w15
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #15
    eor w14, w14, w15
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #16
    eor w14, w14, w15
    lsr w14, w14, #8
    ucvtf d29, x14
    fdiv d29, d29, d15
    fadd d28, d29, d28
    fmul d28, d28, d24
    sub x9, x29, #384
    str x9, [sp, #176]
    movz x9, #9
    str x9, [sp, #184]
    movz x9, #1
    strb w9, [sp, #173]
    mov x9, #0
    strb w9, [sp, #174]
    mov x9, #0
    strb w9, [sp, #175]
    str d9, [sp, #96]
    str d9, [sp, #104]
    str d9, [sp, #112]
    str d8, [sp, #120]
    str d8, [sp, #128]
    str d8, [sp, #136]
    str d8, [sp, #144]
    str d8, [sp, #152]
    str d8, [sp, #160]
    movz x16, #5536
    sub x9, x29, x16
    str x9, [sp, #80]
    movz x9, #128
    str x9, [sp, #88]
    str d27, [sp, #5568]
    str d28, [sp, #5560]
    str d25, [sp, #5584]
    str d24, [sp, #5616]
    str d26, [sp, #5576]
    movz x16, #16
    sub sp, sp, x16
    movz x16, #5648
    sub x9, x29, x16
    ldr x10, [x9, #0]
    str x10, [sp, #0]
    ldr x10, [x9, #8]
    str x10, [sp, #8]
    fmov d0, d27
    fmov d1, d28
    fmov d2, d27
    fmov d3, d28
    mov x5, x19
    movz x16, #5552
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #1
    movz x16, #5555
    sub x9, x29, x16
    ldr x3, [x9]
    movz x16, #5632
    sub x9, x29, x16
    mov x4, x9
    sub x6, x29, #416
    bl _lb_11film_grains_gather
    movz x16, #16
    add sp, sp, x16
    mov x14, x0
    ldr d27, [sp, #5568]
    ldr d28, [sp, #5560]
    ldr d25, [sp, #5584]
    ldr d24, [sp, #5616]
    ldr d26, [sp, #5576]
    movz x16, #5536
    sub x9, x29, x16
    str x9, [sp, #64]
    movz x9, #128
    str x9, [sp, #72]
    str d25, [sp, #5584]
    str d24, [sp, #5616]
    str d26, [sp, #5576]
    fmov d0, d27
    fmov d1, d28
    mov x2, x14
    movz x16, #5664
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_11film_grains_6dye_at
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    ldr d25, [sp, #5584]
    ldr d24, [sp, #5616]
    ldr d26, [sp, #5576]
    ldr d27, [sp, #5592]
    fneg d27, d27
    str d25, [sp, #5584]
    str d24, [sp, #5616]
    str d26, [sp, #5576]
    fmov d0, d25
    fmov d1, d27
    bl _lb_13luce_std_math_9pow_value
    fmov d27, d0
    ldr d25, [sp, #5584]
    ldr d24, [sp, #5616]
    ldr d26, [sp, #5576]
    fadd d26, d27, d26
    add x23, x23, #1
    cmp x23, #300
    b.lt L8668a29e3526_10
L8668a29e3526_12:
    add x20, x20, #1
    cmp x20, #300
    b.lt L8668a29e3526_6
L8668a29e3526_8:
    movz x9, #24464
    movk x9, #1, lsl #16
    scvtf d24, x9
    fdiv d24, d26, d24
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d15, d24
    fmul d24, d10, d12
    fmul d25, d11, d13
    str d24, [sp, #40]
    str d25, [sp, #48]
    str d8, [sp, #56]
    sub x9, x29, #384
    str x9, [sp, #24]
    movz x9, #3
    str x9, [sp, #32]
    movz x16, #5688
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d14
    movz x16, #5704
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_11film_grains_13field_density
    fmov d24, d0
    fdiv d24, d15, d24
    fsub d24, d24, d9
    fabs d24, d24
    ldr d25, L8668a29e3526_k7
    fcmp d24, d25
    b.mi L8668a29e3526_15
L8668a29e3526_16:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_e4679d761ea7@PAGE
    add x14, x14, _lb_text_e4679d761ea7@PAGEOFF
    adrp x15, _lb_text_2bfcfbd4d7b0@PAGE
    add x15, x15, _lb_text_2bfcfbd4d7b0@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #5720
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #5720]
    ldr x20, [sp, #5712]
    ldr x21, [sp, #5704]
    ldr x22, [sp, #5696]
    ldr x23, [sp, #5688]
    ldr d8, [sp, #5680]
    ldr d9, [sp, #5672]
    ldr d10, [sp, #5664]
    ldr d11, [sp, #5656]
    ldr d12, [sp, #5648]
    ldr d13, [sp, #5640]
    ldr d14, [sp, #5632]
    ldr d15, [sp, #5624]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8668a29e3526_15:
    mov x0, #0
    ldr x19, [sp, #5720]
    ldr x20, [sp, #5712]
    ldr x21, [sp, #5704]
    ldr x22, [sp, #5696]
    ldr x23, [sp, #5688]
    ldr d8, [sp, #5680]
    ldr d9, [sp, #5672]
    ldr d10, [sp, #5664]
    ldr d11, [sp, #5656]
    ldr d12, [sp, #5648]
    ldr d13, [sp, #5640]
    ldr d14, [sp, #5632]
    ldr d15, [sp, #5624]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8668a29e3526_k0:
    .quad 4608083138725491507
L8668a29e3526_k1:
    .quad 4606281698874543309
L8668a29e3526_k2:
    .quad 4604480259023595110
L8668a29e3526_k3:
    .quad 4600877379321698714
L8668a29e3526_k4:
    .quad 4608533498688228557
L8668a29e3526_k5:
    .quad 4715268809856909312
L8668a29e3526_k6:
    .quad 4600336947366414254
L8668a29e3526_k7:
    .quad 4584304132692975288


    .p2align 2
    .globl _lb_11film_grains_mixed
_lb_11film_grains_mixed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov w14, w0
    mov w15, w1
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w14, w14, w10
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w15, w15, w10
    add w14, w14, w15
    lsr w15, w14, #16
    eor w14, w14, w15
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #15
    eor w14, w14, w15
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w14, w14, w10
    lsr w15, w14, #16
    eor w14, w14, w15
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_10even_place
_lb_11film_grains_10even_place:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #16
    str x1, [x16]
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    mov x14, x0
    sub x11, x29, #80
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    sub x9, x29, #80
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_gather
_lb_11film_grains_gather:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #752
    str x19, [sp, #744]
    str x20, [sp, #736]
    str x21, [sp, #728]
    str x22, [sp, #720]
    str x23, [sp, #712]
    str x24, [sp, #704]
    str x25, [sp, #696]
    str x26, [sp, #688]
    str x27, [sp, #680]
    str x28, [sp, #672]
    str d8, [sp, #664]
    str d9, [sp, #656]
    str d10, [sp, #648]
    str d11, [sp, #640]
    str d12, [sp, #632]
    str d13, [sp, #624]
    str d14, [sp, #616]
    str d15, [sp, #608]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #256
    str x3, [x16]
    sub x16, x29, #328
    str x4, [x16]
    ldr x9, [x29, #16]
    sub x16, x29, #376
    str x9, [x16, #0]
    ldr x9, [x29, #24]
    sub x16, x29, #376
    str x9, [x16, #8]
    sub x9, x29, #328
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
    fmov d8, d0
    fmov d9, d1
    fmov d10, d2
    fmov d11, d3
    mov x17, x2
    str x17, [sp, #368]
    mov x20, x5
    mov x21, x6
    adrp x22, _lb_11film_grains_9size_high@PAGE
    add x22, x22, _lb_11film_grains_9size_high@PAGEOFF
    adrp x9, _lb_11film_grains_10cell_radii@PAGE
    add x9, x9, _lb_11film_grains_10cell_radii@PAGEOFF
    str x9, [sp, #584]
    adrp x9, _lb_11film_grains_11cell_grains@PAGE
    add x9, x9, _lb_11film_grains_11cell_grains@PAGEOFF
    str x9, [sp, #576]
    adrp x9, _lb_11film_grains_13normal_beyond@PAGE
    add x9, x9, _lb_11film_grains_13normal_beyond@PAGEOFF
    str x9, [sp, #568]
    adrp x9, _lb_13luce_std_math_pi@PAGE
    add x9, x9, _lb_13luce_std_math_pi@PAGEOFF
    str x9, [sp, #560]
    adrp x27, _lb_11film_grains_8size_low@PAGE
    add x27, x27, _lb_11film_grains_8size_low@PAGEOFF
    ldr d16, L826754e9baa1_k0
    fmov x9, d16
    str x9, [sp, #520]
    ldr x9, [sp, #520]
    and x14, x9, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w9, hi
    str w9, [sp, #512]
    fmov d16, xzr
    ldr d17, L826754e9baa1_k0
    fcmp d16, d17
    cset w9, eq
    str w9, [sp, #360]
    ldr d16, L826754e9baa1_k1
    fmov x9, d16
    str x9, [sp, #352]
    ldr x9, [sp, #352]
    and x13, x9, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    cset w9, hi
    str w9, [sp, #344]
    fmov d16, xzr
    ldr d17, L826754e9baa1_k1
    fcmp d16, d17
    cset w9, eq
    str w9, [sp, #336]
    fmov d16, xzr
    fmov x6, d16
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    cset w5, hi
    fmov d16, xzr
    fmov d17, xzr
    fcmp d16, d17
    cset w4, eq
    fmov d16, xzr
    fmov x3, d16
    and x2, x3, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x2, x10
    cset w2, hi
    fmov d16, xzr
    fmov d17, xzr
    fcmp d16, d17
    cset w1, eq
    mov x9, #0
    str x9, [sp, #280]
    mov x19, #0
L826754e9baa1_1:
    ldr x10, [sp, #368]
    cmp x19, x10
    b.hs L826754e9baa1_4
    .p2align 4
L826754e9baa1_2:
    movz x10, #3
    cmp x19, x10
    b.hs L826754e9baa1_c1
    sub x10, x29, #256
    ldrb w0, [x10, x19]
    cbnz w0, L826754e9baa1_6
L826754e9baa1_5:
    ldr x9, [sp, #280]
    str x9, [sp, #272]
    b L826754e9baa1_3
L826754e9baa1_6:
    add x9, x19, x19, lsl #1
    str x9, [sp, #264]
    ldr x9, [sp, #280]
    str x9, [sp, #256]
    mov x9, #0
    str x9, [sp, #248]
L826754e9baa1_9:
    ldr x9, [sp, #248]
    cmp x9, #3
    b.hs L826754e9baa1_12
    .p2align 4
L826754e9baa1_10:
    ldr x9, [sp, #264]
    ldr x10, [sp, #248]
    add x9, x9, x10
    str x9, [sp, #240]
    ldr x23, [sp, #592]
    ldr x24, [sp, #600]
    ldr x9, [sp, #240]
    cmp x9, x24
    b.hs L826754e9baa1_c2
    ldr x9, [sp, #240]
    movz x10, #24
    mul x24, x9, x10
    add x23, x23, x24
    ldr d12, [x23]
    ldr d13, [x23, #8]
    ldr d14, [x23, #16]
    fmov d17, xzr
    fcmp d12, d17
    b.hi L826754e9baa1_14
L826754e9baa1_13:
    ldr x9, [sp, #256]
    str x9, [sp, #232]
    b L826754e9baa1_11
L826754e9baa1_14:
    ldr d24, [x22]
    fmul d24, d24, d14
    sub x9, x29, #328
    ldr x10, [sp, #240]
    add x9, x9, x10, lsl #3
    str x9, [sp, #224]
    ldr x9, [sp, #240]
    add x24, x9, #1
    lsl w9, w24, #3
    str w9, [sp, #216]
    fsub d16, d8, d24
    str d16, [sp, #208]
    fadd d16, d24, d10
    str d16, [sp, #200]
    fsub d16, d9, d24
    str d16, [sp, #192]
    fadd d27, d24, d11
    fmul d24, d24, d24
    sub x9, x29, #224
    ldr x10, [sp, #248]
    add x28, x9, x10, lsl #3
    ldr x9, [sp, #256]
    str x9, [sp, #168]
    mov w9, #0
    str w9, [sp, #160]
L826754e9baa1_17:
    ldr w9, [sp, #160]
    cmp w9, #8
    b.hs L826754e9baa1_20
    .p2align 4
L826754e9baa1_18:
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    ldr x0, [sp, #160]
    bl _lb_11film_grains_7bin_low
    fmov d28, d0
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    ldr x9, [sp, #240]
    movz x10, #9
    cmp x9, x10
    b.hs L826754e9baa1_c3
    ldr x9, [sp, #224]
    ldr d29, [x9]
    fcmp d28, d29
    b.lt L826754e9baa1_22
L826754e9baa1_21:
    b L826754e9baa1_20
L826754e9baa1_22:
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    ldr x0, [sp, #160]
    bl _lb_11film_grains_8bin_high
    fmov d29, d0
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    fsub d29, d29, d28
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    ldr x0, [sp, #160]
    bl _lb_11film_grains_8bin_high
    fmov d30, d0
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    str d30, [sp, #136]
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    ldr x0, [sp, #160]
    bl _lb_11film_grains_7bin_low
    fmov d31, d0
    ldr d30, [sp, #136]
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    fsub d30, d30, d31
    ldr x9, [sp, #584]
    ldr d31, [x9]
    fmul d31, d31, d14
    ldr x9, [sp, #576]
    ldr d19, [x9]
    fmul d30, d30, d12
    fmov x23, d30
    and x24, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x24, x10
    b.ls L826754e9baa1_120
L826754e9baa1_119:
    b L826754e9baa1_140
L826754e9baa1_120:
L826754e9baa1_121:
L826754e9baa1_139:
    ldr w9, [sp, #512]
    cbz w9, L826754e9baa1_124
L826754e9baa1_123:
    ldr d30, L826754e9baa1_k0
    b L826754e9baa1_140
L826754e9baa1_124:
L826754e9baa1_125:
    fmov d17, xzr
    fcmp d30, d17
    b.ne L826754e9baa1_128
L826754e9baa1_130:
    ldr w9, [sp, #360]
    cbz w9, L826754e9baa1_128
L826754e9baa1_127:
    ldr x10, [sp, #520]
    and x23, x23, x10
    fmov d30, x23
    b L826754e9baa1_140
L826754e9baa1_128:
L826754e9baa1_129:
    ldr d17, L826754e9baa1_k0
    fcmp d30, d17
    ldr d18, L826754e9baa1_k0
    fcsel d30, d30, d18, gt
L826754e9baa1_140:
    fdiv d30, d19, d30
    fsqrt d30, d30
    fmov x23, d31
    and x24, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x24, x10
    b.ls L826754e9baa1_142
L826754e9baa1_141:
    fmov d30, d31
    b L826754e9baa1_162
L826754e9baa1_142:
L826754e9baa1_143:
    fmov x24, d30
    and x0, x24, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls L826754e9baa1_146
L826754e9baa1_145:
    b L826754e9baa1_162
L826754e9baa1_146:
L826754e9baa1_147:
    fmov d16, xzr
    fcmp d16, d31
    b.ne L826754e9baa1_150
L826754e9baa1_152:
    fmov d17, xzr
    fcmp d30, d17
    b.ne L826754e9baa1_150
L826754e9baa1_149:
    and x0, x23, x24
    fmov d30, x0
    b L826754e9baa1_162
L826754e9baa1_150:
L826754e9baa1_151:
    fcmp d31, d30
    fcsel d30, d31, d30, gt
L826754e9baa1_162:
    fmul d31, d12, d29
    fmul d31, d31, d30
    fmul d31, d31, d30
    ldr w9, [sp, #216]
    ldr w10, [sp, #160]
    add w0, w9, w10
    ldr d16, [sp, #208]
    fdiv d19, d16, d30
    frintm d19, d19
    fcvtzs x23, d19
    adds x9, x23, #4
    b.vs L826754e9baa1_c4
    str x9, [sp, #120]
    ldr d16, [sp, #200]
    fdiv d19, d16, d30
    frintm d19, d19
    fcvtzs x24, d19
    adds x9, x24, #4
    b.vs L826754e9baa1_c5
    str x9, [sp, #112]
    ldr d16, [sp, #192]
    fdiv d19, d16, d30
    frintm d19, d19
    fcvtzs x14, d19
    adds x14, x14, #4
    b.vs L826754e9baa1_c6
    fdiv d19, d27, d30
    frintm d19, d19
    fcvtzs x15, d19
    adds x9, x15, #4
    b.vs L826754e9baa1_c7
    str x9, [sp, #104]
    movz x10, #31161
    movk x10, #40503, lsl #16
    mul w9, w0, w10
    str w9, [sp, #96]
    movz x10, #51819
    movk x10, #34283, lsl #16
    mul w9, w0, w10
    str w9, [sp, #88]
    fmov d17, xzr
    fcmp d31, d17
    cset w9, ls
    str w9, [sp, #80]
    fneg d19, d31
    fsqrt d20, d31
    ldr x9, [sp, #168]
    str x9, [sp, #56]
L826754e9baa1_25:
    ldr x10, [sp, #104]
    cmp x14, x10
    b.le L826754e9baa1_26
L826754e9baa1_115:
    ldr x9, [sp, #56]
    mov x14, x9
    b L826754e9baa1_28
    .p2align 4
L826754e9baa1_26:
    ldr w9, [sp, #88]
    eor w15, w9, w14
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w9, w15, w10
    str w9, [sp, #40]
    ldr x9, [sp, #56]
    mov x25, x9
    ldr x9, [sp, #120]
    mov x26, x9
L826754e9baa1_29:
    ldr x10, [sp, #112]
    cmp x26, x10
    b.le L826754e9baa1_30
L826754e9baa1_116:
    b L826754e9baa1_32
    .p2align 4
L826754e9baa1_30:
    ldr w9, [sp, #96]
    add w12, w9, w26
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w12, w12, w10
    ldr w10, [sp, #40]
    add w12, w12, w10
    lsr w13, w12, #16
    eor w12, w12, w13
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w12, w12, w10
    lsr w13, w12, #15
    eor w12, w12, w13
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w12, w12, w10
    lsr w13, w12, #16
    eor w12, w12, w13
    ldr w9, [sp, #80]
    cbz w9, L826754e9baa1_70
L826754e9baa1_69:
    mov w13, #0
    b L826754e9baa1_106
L826754e9baa1_70:
    ldr x9, [sp, #568]
    ldr d21, [x9]
    fcmp d31, d21
    b.le L826754e9baa1_74
L826754e9baa1_73:
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w13, w12, w10
    movz x10, #48495
    movk x10, #30079, lsl #16
    add w7, w13, w10
    lsr w23, w7, #16
    eor w7, w7, w23
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w7, w7, w10
    lsr w23, w7, #15
    eor w7, w7, w23
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w7, w7, w10
    lsr w23, w7, #16
    eor w7, w7, w23
    lsr w7, w7, #8
    ucvtf d21, x7
    ldr d17, L826754e9baa1_k2
    fdiv d21, d21, d17
    fmov x7, d21
    and x23, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x23, x10
    b.ls L826754e9baa1_180
L826754e9baa1_179:
    b L826754e9baa1_200
L826754e9baa1_180:
L826754e9baa1_181:
L826754e9baa1_199:
    ldr w9, [sp, #344]
    cbz w9, L826754e9baa1_184
L826754e9baa1_183:
    ldr d21, L826754e9baa1_k1
    b L826754e9baa1_200
L826754e9baa1_184:
L826754e9baa1_185:
    fmov d17, xzr
    fcmp d21, d17
    b.ne L826754e9baa1_188
L826754e9baa1_190:
    ldr w9, [sp, #336]
    cbz w9, L826754e9baa1_188
L826754e9baa1_187:
    ldr x10, [sp, #352]
    and x7, x7, x10
    fmov d21, x7
    b L826754e9baa1_200
L826754e9baa1_188:
L826754e9baa1_189:
    ldr d17, L826754e9baa1_k1
    fcmp d21, d17
    ldr d18, L826754e9baa1_k1
    fcsel d21, d21, d18, gt
L826754e9baa1_200:
    movz x10, #45262
    movk x10, #45550, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #65535, lsl #48
    add w13, w13, w10
    lsr w7, w13, #16
    eor w13, w13, w7
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w13, w13, w10
    lsr w7, w13, #15
    eor w13, w13, w7
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w13, w13, w10
    lsr w7, w13, #16
    eor w13, w13, w7
    lsr w13, w13, #8
    ucvtf d22, x13
    ldr d17, L826754e9baa1_k2
    fdiv d22, d22, d17
    str d19, [sp, #72]
    str d22, [sp, #16]
    str w12, [sp, #32]
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d31, [sp, #128]
    str d20, [sp, #64]
    str x14, [sp, #48]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    fmov d0, d21
    bl _lb_13luce_std_math_9log_value
    fmov d21, d0
    ldr d19, [sp, #72]
    ldr d22, [sp, #16]
    ldr w12, [sp, #32]
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d31, [sp, #128]
    ldr d20, [sp, #64]
    ldr x14, [sp, #48]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    fmov d17, #-2.0000000
    fmul d21, d21, d17
    fsqrt d21, d21
    ldr x9, [sp, #560]
    ldr d23, [x9]
    fmov d17, #2.0000000
    fmul d23, d23, d17
    fmul d22, d23, d22
    str d19, [sp, #72]
    str d21, [sp, #8]
    str w12, [sp, #32]
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d31, [sp, #128]
    str d20, [sp, #64]
    str x14, [sp, #48]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    fmov d0, d22
    bl _lb_13luce_std_math_9cos_value
    fmov d22, d0
    ldr d19, [sp, #72]
    ldr d21, [sp, #8]
    ldr w12, [sp, #32]
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d31, [sp, #128]
    ldr d20, [sp, #64]
    ldr x14, [sp, #48]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    fmul d21, d21, d22
    fmul d21, d21, d20
    fadd d21, d21, d31
    fmov d17, #0.5000000
    fadd d21, d21, d17
    frintm d21, d21
    movz x9, #96
    ucvtf d22, x9
    fmov d16, xzr
    fcmp d16, d22
    b.hi L826754e9baa1_210
L826754e9baa1_209:
    fmov x13, d21
    and x13, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L826754e9baa1_212
L826754e9baa1_211:
    b L826754e9baa1_224
L826754e9baa1_212:
L826754e9baa1_213:
    fmov d17, xzr
    fcmp d21, d17
    cset w13, mi
    fcmp d21, d22
    fcsel d21, d22, d21, gt
    cmp w13, #0
    fmov d17, xzr
    fcsel d21, d17, d21, ne
L826754e9baa1_224:
    fcvtzu w13, d21
    b L826754e9baa1_106
L826754e9baa1_74:
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w13, w12, w10
    movz x10, #41216
    movk x10, #37132, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #65535, lsl #48
    add w13, w13, w10
    lsr w7, w13, #16
    eor w13, w13, w7
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w13, w13, w10
    lsr w7, w13, #15
    eor w13, w13, w7
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w13, w13, w10
    lsr w7, w13, #16
    eor w13, w13, w7
    lsr w13, w13, #8
    ucvtf d21, x13
    ldr d17, L826754e9baa1_k2
    fdiv d21, d21, d17
    str d19, [sp, #72]
    str w12, [sp, #32]
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d31, [sp, #128]
    str d20, [sp, #64]
    str x14, [sp, #48]
    str d21, [sp, #16]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    fmov d0, d19
    bl _lb_13luce_std_math_9exp_value
    fmov d22, d0
    ldr d19, [sp, #72]
    ldr w12, [sp, #32]
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d31, [sp, #128]
    ldr d20, [sp, #64]
    ldr x14, [sp, #48]
    ldr d21, [sp, #16]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    fmov d23, d22
    mov w13, #0
L826754e9baa1_77:
    fcmp d21, d22
    b.le L826754e9baa1_79
    .p2align 4
L826754e9baa1_80:
    cmp w13, #96
    b.hs L826754e9baa1_79
L826754e9baa1_78:
    add w13, w13, #1
    mov w7, w13
    ucvtf d15, x7
    fdiv d15, d31, d15
    fmul d23, d15, d23
    fadd d22, d23, d22
    fcmp d21, d22
    b.gt L826754e9baa1_80
L826754e9baa1_79:
L826754e9baa1_106:
    movz x10, #26125
    movk x10, #25, lsl #16
    mul w23, w12, w10
    mov w12, #0
L826754e9baa1_33:
    cmp w12, w13
    b.hs L826754e9baa1_36
    .p2align 4
L826754e9baa1_34:
    lsl w7, w12, #1
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w0, w7, w10
    add w0, w23, w0
    lsr w15, w0, #16
    eor w15, w0, w15
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w15, w15, w10
    lsr w0, w15, #15
    eor w15, w15, w0
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w15, w15, w10
    lsr w0, w15, #16
    eor w15, w15, w0
    and w0, w15, #65535
    ucvtf d21, x0
    ldr d17, L826754e9baa1_k3
    fdiv d21, d21, d17
    fmov d16, #1.0000000
    ldr d17, L826754e9baa1_k4
    fdiv d22, d16, d17
    fadd d21, d21, d22
    lsr w15, w15, #16
    ucvtf d23, x15
    ldr d17, L826754e9baa1_k3
    fdiv d23, d23, d17
    fadd d22, d22, d23
    scvtf d23, x26
    fadd d21, d23, d21
    fmov d17, #4.0000000
    fsub d21, d21, d17
    fmul d15, d21, d30
    scvtf d21, x14
    fadd d21, d21, d22
    fmov d17, #4.0000000
    fsub d21, d21, d17
    fmul d21, d21, d30
    fsub d22, d8, d15
    fsub d23, d15, d10
    fmov x15, d22
    and x0, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls L826754e9baa1_242
L826754e9baa1_241:
    b L826754e9baa1_262
L826754e9baa1_242:
L826754e9baa1_243:
    fmov x0, d23
    and x24, x0, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x24, x10
    b.ls L826754e9baa1_246
L826754e9baa1_245:
    fmov d22, d23
    b L826754e9baa1_262
L826754e9baa1_246:
L826754e9baa1_247:
    fmov d17, xzr
    fcmp d22, d17
    b.ne L826754e9baa1_250
L826754e9baa1_252:
    fmov d17, xzr
    fcmp d23, d17
    b.ne L826754e9baa1_250
L826754e9baa1_249:
    and x15, x15, x0
    fmov d22, x15
    b L826754e9baa1_262
L826754e9baa1_250:
L826754e9baa1_251:
    fcmp d22, d23
    fcsel d22, d22, d23, gt
L826754e9baa1_262:
    fmov x15, d22
    and x0, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls L826754e9baa1_264
L826754e9baa1_263:
    b L826754e9baa1_284
L826754e9baa1_264:
L826754e9baa1_265:
L826754e9baa1_283:
    cbz w5, L826754e9baa1_268
L826754e9baa1_267:
    fmov d22, xzr
    b L826754e9baa1_284
L826754e9baa1_268:
L826754e9baa1_269:
    fmov d16, xzr
    fcmp d16, d22
    b.ne L826754e9baa1_272
L826754e9baa1_274:
    cbz w4, L826754e9baa1_272
L826754e9baa1_271:
    and x15, x15, x6
    fmov d22, x15
    b L826754e9baa1_284
L826754e9baa1_272:
L826754e9baa1_273:
    fmov d17, xzr
    fcmp d22, d17
    fmov d18, xzr
    fcsel d22, d22, d18, gt
L826754e9baa1_284:
    fsub d23, d9, d21
    fsub d25, d21, d11
    fmov x15, d23
    and x0, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls L826754e9baa1_286
L826754e9baa1_285:
    b L826754e9baa1_306
L826754e9baa1_286:
L826754e9baa1_287:
    fmov x0, d25
    and x24, x0, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x24, x10
    b.ls L826754e9baa1_290
L826754e9baa1_289:
    fmov d23, d25
    b L826754e9baa1_306
L826754e9baa1_290:
L826754e9baa1_291:
    fmov d17, xzr
    fcmp d23, d17
    b.ne L826754e9baa1_294
L826754e9baa1_296:
    fmov d17, xzr
    fcmp d25, d17
    b.ne L826754e9baa1_294
L826754e9baa1_293:
    and x15, x15, x0
    fmov d23, x15
    b L826754e9baa1_306
L826754e9baa1_294:
L826754e9baa1_295:
    fcmp d23, d25
    fcsel d23, d23, d25, gt
L826754e9baa1_306:
    fmov x15, d23
    and x0, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls L826754e9baa1_308
L826754e9baa1_307:
    b L826754e9baa1_328
L826754e9baa1_308:
L826754e9baa1_309:
L826754e9baa1_327:
    cbz w2, L826754e9baa1_312
L826754e9baa1_311:
    fmov d23, xzr
    b L826754e9baa1_328
L826754e9baa1_312:
L826754e9baa1_313:
    fmov d16, xzr
    fcmp d16, d23
    b.ne L826754e9baa1_316
L826754e9baa1_318:
    cbz w1, L826754e9baa1_316
L826754e9baa1_315:
    and x15, x15, x3
    fmov d23, x15
    b L826754e9baa1_328
L826754e9baa1_316:
L826754e9baa1_317:
    fmov d17, xzr
    fcmp d23, d17
    fmov d18, xzr
    fcsel d23, d23, d18, gt
L826754e9baa1_328:
    fmul d25, d22, d22
    fmul d22, d23, d23
    fadd d25, d25, d22
    fcmp d25, d24
    b.lt L826754e9baa1_38
L826754e9baa1_37:
    b L826754e9baa1_35
L826754e9baa1_38:
    add w15, w7, #1
    movz x10, #62303
    movk x10, #15470, lsl #16
    mul w15, w15, w10
    add w15, w23, w15
    lsr w7, w15, #16
    eor w15, w15, w7
    movz x10, #13613
    movk x10, #32747, lsl #16
    mul w15, w15, w10
    lsr w7, w15, #15
    eor w15, w15, w7
    movz x10, #42635
    movk x10, #33900, lsl #16
    mul w15, w15, w10
    lsr w7, w15, #16
    eor w15, w15, w7
    ldr d22, [x27]
    ldr d23, [x22]
    fsub d23, d23, d22
    and w7, w15, #65535
    ucvtf d26, x7
    fmul d26, d23, d26
    ldr d17, L826754e9baa1_k3
    fdiv d26, d26, d17
    fadd d26, d22, d26
    lsr w15, w15, #16
    ucvtf d22, x15
    ldr d17, L826754e9baa1_k3
    fdiv d22, d22, d17
    fmul d26, d26, d14
    fmul d26, d26, d26
    fcmp d25, d26
    b.lt L826754e9baa1_42
L826754e9baa1_41:
    b L826754e9baa1_35
L826754e9baa1_42:
    str d19, [sp, #72]
    str w4, [sp, #312]
    str w1, [sp, #288]
    str d27, [sp, #184]
    str d24, [sp, #176]
    str d28, [sp, #152]
    str d29, [sp, #144]
    str d30, [sp, #136]
    str d31, [sp, #128]
    str d20, [sp, #64]
    str x14, [sp, #48]
    str w13, [sp, #24]
    str w12, [sp, #32]
    str d21, [sp, #16]
    str x6, [sp, #328]
    str w5, [sp, #320]
    str x3, [sp, #304]
    str w2, [sp, #296]
    str d22, [sp, #8]
    str d26, [sp, #0]
    mov x17, x20
    str x17, [sp, #-16]!
    fmov d0, d15
    fmov d1, d21
    mov x0, x21
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    sub x16, x29, #360
    str d0, [x16, #0]
    sub x16, x29, #360
    str d1, [x16, #8]
    sub x16, x29, #360
    str d2, [x16, #16]
    sub x16, x29, #360
    str d3, [x16, #24]
    ldr d19, [sp, #72]
    ldr w4, [sp, #312]
    ldr w1, [sp, #288]
    ldr d27, [sp, #184]
    ldr d24, [sp, #176]
    ldr d28, [sp, #152]
    ldr d29, [sp, #144]
    ldr d30, [sp, #136]
    ldr d31, [sp, #128]
    ldr d20, [sp, #64]
    ldr x14, [sp, #48]
    ldr w13, [sp, #24]
    ldr w12, [sp, #32]
    ldr d21, [sp, #16]
    ldr x6, [sp, #328]
    ldr w5, [sp, #320]
    ldr x3, [sp, #304]
    ldr w2, [sp, #296]
    ldr d22, [sp, #8]
    ldr d26, [sp, #0]
    sub x10, x29, #360
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    fmul d25, d29, d22
    fadd d25, d25, d28
    ldr d22, [x28]
    fcmp d25, d22
    b.lt L826754e9baa1_46
L826754e9baa1_45:
    b L826754e9baa1_35
L826754e9baa1_46:
    cmp x25, #128
    b.hs L826754e9baa1_50
L826754e9baa1_49:
    ldr x15, [sp, #376]
    ldr x7, [sp, #384]
    cmp x25, x7
    b.hs L826754e9baa1_c8
    movz x10, #40
    mul x7, x25, x10
    add x15, x15, x7
    ldr d25, [sp, #552]
    fmul d25, d25, d13
    str d15, [x15]
    str d21, [x15, #8]
    str d26, [x15, #16]
    str d25, [x15, #24]
    str x19, [x15, #32]
L826754e9baa1_50:
L826754e9baa1_51:
    adds x25, x25, #1
    b.cs L826754e9baa1_c9
L826754e9baa1_35:
    add w12, w12, #1
    cmp w12, w13
    b.lo L826754e9baa1_34
L826754e9baa1_36:
    ldr x9, [sp, #112]
    cmp x9, x26
    b.ne L826754e9baa1_52
L826754e9baa1_117:
    b L826754e9baa1_32
L826754e9baa1_52:
    add x26, x26, #1
    ldr x10, [sp, #112]
    cmp x26, x10
    b.le L826754e9baa1_30
    b L826754e9baa1_116
L826754e9baa1_32:
    ldr x9, [sp, #104]
    cmp x9, x14
    b.ne L826754e9baa1_53
L826754e9baa1_118:
    mov x14, x25
    b L826754e9baa1_28
L826754e9baa1_53:
    add x14, x14, #1
    mov x9, x25
    str x9, [sp, #56]
    ldr x10, [sp, #104]
    cmp x14, x10
    b.le L826754e9baa1_26
    b L826754e9baa1_115
L826754e9baa1_28:
    ldr w9, [sp, #160]
    add w15, w9, #1
    mov x9, x14
    str x9, [sp, #168]
    mov w9, w15
    str w9, [sp, #160]
    ldr w9, [sp, #160]
    cmp w9, #8
    b.lo L826754e9baa1_18
L826754e9baa1_20:
    ldr x9, [sp, #168]
    str x9, [sp, #232]
L826754e9baa1_11:
    ldr x9, [sp, #248]
    add x14, x9, #1
    ldr x9, [sp, #232]
    str x9, [sp, #256]
    mov x9, x14
    str x9, [sp, #248]
    ldr x9, [sp, #248]
    cmp x9, #3
    b.lo L826754e9baa1_10
L826754e9baa1_12:
    ldr x9, [sp, #256]
    str x9, [sp, #272]
L826754e9baa1_3:
    add x19, x19, #1
    ldr x9, [sp, #272]
    str x9, [sp, #280]
    ldr x10, [sp, #368]
    cmp x19, x10
    b.lo L826754e9baa1_2
L826754e9baa1_4:
    ldr x0, [sp, #280]
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    ldr d9, [sp, #656]
    ldr d10, [sp, #648]
    ldr d11, [sp, #640]
    ldr d12, [sp, #632]
    ldr d13, [sp, #624]
    ldr d14, [sp, #616]
    ldr d15, [sp, #608]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L826754e9baa1_210:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c1:
    adrp x0, _lb_text_ab7e4aa9d223@PAGE
    add x0, x0, _lb_text_ab7e4aa9d223@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c2:
    adrp x0, _lb_text_87637d4a96e1@PAGE
    add x0, x0, _lb_text_87637d4a96e1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c3:
    adrp x0, _lb_text_acfbad1edc49@PAGE
    add x0, x0, _lb_text_acfbad1edc49@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c4:
    adrp x0, _lb_text_353111178499@PAGE
    add x0, x0, _lb_text_353111178499@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c5:
    adrp x0, _lb_text_315e04fa61ec@PAGE
    add x0, x0, _lb_text_315e04fa61ec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c6:
    adrp x0, _lb_text_582569a148e4@PAGE
    add x0, x0, _lb_text_582569a148e4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c7:
    adrp x0, _lb_text_7bb1656af6c8@PAGE
    add x0, x0, _lb_text_7bb1656af6c8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c8:
    adrp x0, _lb_text_3260db24d976@PAGE
    add x0, x0, _lb_text_3260db24d976@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L826754e9baa1_c9:
    adrp x0, _lb_text_952ec22d246d@PAGE
    add x0, x0, _lb_text_952ec22d246d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L826754e9baa1_k0:
    .quad 4472406533629990549
L826754e9baa1_k1:
    .quad 4502148214488346440
L826754e9baa1_k2:
    .quad 4715268809856909312
L826754e9baa1_k3:
    .quad 4679240012837945344
L826754e9baa1_k4:
    .quad 4683743612465315840


    .p2align 2
    .globl _lb_11film_grains_6dye_at
_lb_11film_grains_6dye_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    fmov d24, d0
    fmov d25, d1
    mov x14, x2
    fmov d26, xzr
    str d26, [sp, #24]
    str d26, [sp, #32]
    str d26, [sp, #40]
    ldr x15, [sp, #96]
    ldr x12, [sp, #104]
    fmov d26, #1.0000000
    mov x13, #0
Le6e778ff9fef_1:
    cmp x13, x14
    b.hs Le6e778ff9fef_4
    .p2align 4
Le6e778ff9fef_2:
    cmp x13, x12
    b.hs Le6e778ff9fef_c1
    movz x10, #40
    mul x7, x13, x10
    add x7, x15, x7
    ldr d27, [x7]
    ldr d28, [x7, #8]
    ldr d29, [x7, #16]
    ldr d30, [x7, #24]
    ldr x7, [x7, #32]
    fsub d27, d24, d27
    fmul d27, d27, d27
    fsub d28, d25, d28
    fmul d28, d28, d28
    fadd d27, d27, d28
    fdiv d27, d27, d29
    fcmp d27, d26
    b.pl Le6e778ff9fef_6
Le6e778ff9fef_5:
    movz x10, #3
    cmp x7, x10
    b.hs Le6e778ff9fef_c2
    sub x9, x29, #88
    add x7, x9, x7, lsl #3
    ldr d28, [x7]
    fsub d27, d26, d27
    fmul d29, d27, d30
    fmul d27, d27, d29
    fadd d27, d28, d27
    str d27, [x7]
Le6e778ff9fef_6:
Le6e778ff9fef_7:
    add x13, x13, #1
    cmp x13, x14
    b.lo Le6e778ff9fef_2
Le6e778ff9fef_4:
    sub x10, x29, #88
    sub x11, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #112
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le6e778ff9fef_c1:
    adrp x0, _lb_text_57b13475b8e3@PAGE
    add x0, x0, _lb_text_57b13475b8e3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le6e778ff9fef_c2:
    adrp x0, _lb_text_01f0f1e436b8@PAGE
    add x0, x0, _lb_text_01f0f1e436b8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_11film_grains_13field_density
_lb_11film_grains_13field_density:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #88]
    str x20, [sp, #80]
    str d8, [sp, #72]
    str d9, [sp, #64]
    str d10, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str d0, [x16, #0]
    sub x16, x29, #80
    str d1, [x16, #8]
    sub x16, x29, #80
    str d2, [x16, #16]
    fmov d8, d3
    fmov d24, xzr
    adrp x19, _lb_11film_grains_16size_square_mean@PAGE
    add x19, x19, _lb_11film_grains_16size_square_mean@PAGEOFF
    fmov d9, d24
    mov x20, #0
Ld8365f525abc_1:
    cmp x20, #3
    b.hs Ld8365f525abc_4
    .p2align 4
Ld8365f525abc_2:
    ldr x14, [sp, #40]
    ldr x15, [sp, #48]
    cmp x20, x15
    b.hs Ld8365f525abc_c1
    movz x10, #24
    mul x15, x20, x10
    add x14, x14, x15
    ldr d24, [x14, #8]
    ldr d25, [x14, #16]
    sub x10, x29, #80
    ldr d26, [x10, x20, lsl #3]
    fmul d26, d26, d25
    fmul d25, d26, d25
    ldr d26, [x19]
    fmul d10, d25, d26
    fmul d24, d24, d8
    fmov d0, d24
    bl _lb_11film_grains_11light_taken
    fmov d24, d0
    fmul d24, d10, d24
    fadd d9, d24, d9
    add x20, x20, #1
    cmp x20, #3
    b.lo Ld8365f525abc_2
Ld8365f525abc_4:
    fmov d0, d9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr d8, [sp, #72]
    ldr d9, [sp, #64]
    ldr d10, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld8365f525abc_c1:
    adrp x0, _lb_text_3d322059a012@PAGE
    add x0, x0, _lb_text_3d322059a012@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
.subsections_via_symbols
