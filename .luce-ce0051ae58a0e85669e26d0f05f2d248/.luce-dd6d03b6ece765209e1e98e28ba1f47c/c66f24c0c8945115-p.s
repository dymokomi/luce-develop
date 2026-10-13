    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_densitometry_8status_m
_lb_densitometry_8status_m:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3904
    sub x16, x29, #8
    str x8, [x16]
    movz x0, #3
    sub x8, x29, #1952
    bl _lb_densitometry_status
    sub x10, x29, #1952
    sub x0, x29, #3896
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    sub x1, x29, #3896
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1944
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_densitometry_printing
_lb_densitometry_printing:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3904
    sub x16, x29, #8
    str x8, [x16]
    sub x0, x29, #1952
    mov x1, #0
    movz x2, #1944
    bl _memset
    fmov d24, xzr
    adrp x14, _lb_densitometry_21printing_responsivity@PAGE
    add x14, x14, _lb_densitometry_21printing_responsivity@PAGEOFF
    adrp x15, _lb_densitometry_21printing_responsivity@PAGE
    add x15, x15, _lb_densitometry_21printing_responsivity@PAGEOFF
    mov x12, #0
Lc9877203be05_1:
    cmp x12, #3
    b.hs Lc9877203be05_4
    .p2align 4
Lc9877203be05_2:
    movz x10, #81
    mul x13, x12, x10
    fmov d25, d24
    mov x7, #0
Lc9877203be05_5:
    cmp x7, #81
    b.hs Lc9877203be05_8
    .p2align 4
Lc9877203be05_6:
    add x6, x13, x7
    movz x10, #243
    cmp x6, x10
    b.hs Lc9877203be05_c1
    ldr d26, [x14, x6, lsl #3]
    fadd d25, d26, d25
    add x7, x7, #1
    cmp x7, #81
    b.lo Lc9877203be05_6
Lc9877203be05_8:
    movz x10, #81
    mul x13, x12, x10
    mov x7, #0
Lc9877203be05_9:
    cmp x7, #81
    b.hs Lc9877203be05_12
    .p2align 4
Lc9877203be05_10:
    add x6, x13, x7
    movz x10, #243
    cmp x6, x10
    b.hs Lc9877203be05_c2
    lsl x6, x6, #3
    sub x9, x29, #1952
    add x5, x9, x6
    ldr d26, [x6, x15]
    fdiv d26, d26, d25
    str d26, [x5]
    add x7, x7, #1
    cmp x7, #81
    b.lo Lc9877203be05_10
Lc9877203be05_12:
    add x12, x12, #1
    cmp x12, #3
    b.lo Lc9877203be05_2
Lc9877203be05_4:
    sub x10, x29, #1952
    sub x0, x29, #3896
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    sub x1, x29, #3896
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1944
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc9877203be05_c1:
    adrp x0, _lb_text_a5544c3ea4eb@PAGE
    add x0, x0, _lb_text_a5544c3ea4eb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc9877203be05_c2:
    adrp x0, _lb_text_4fca0c5dc257@PAGE
    add x0, x0, _lb_text_4fca0c5dc257@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_densitometry_Densitometer_read
_lb_densitometry_Densitometer_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1424
    str x19, [sp, #1416]
    str x20, [sp, #1408]
    str x21, [sp, #1400]
    str x22, [sp, #1392]
    str x23, [sp, #1384]
    str x24, [sp, #1376]
    str d8, [sp, #1368]
    str d9, [sp, #1360]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #720
    str x1, [x16]
    sub x0, x29, #720
    ldr x1, [x0]
    movz x2, #648
    bl _memcpy
    ldr x19, [sp, #1352]
    sub x11, x29, #744
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x0, x29, #1392
    mov x1, #0
    movz x2, #648
    bl _memset
    fmov d8, #10.0000000
    mov x20, #0
L4f774f53885f_1:
    cmp x20, #81
    b.hs L4f774f53885f_4
    .p2align 4
L4f774f53885f_2:
    lsl x14, x20, #3
    sub x10, x29, #1392
    add x21, x14, x10
    sub x11, x29, #720
    ldr d24, [x14, x11]
    fneg d24, d24
    fmov d0, d8
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    str d24, [x21]
    add x20, x20, #1
    cmp x20, #81
    b.lo L4f774f53885f_2
L4f774f53885f_4:
    fmov d8, xzr
    ldr d9, L4f774f53885f_k0
    fmov x20, d9
    and x14, x20, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w21, hi
    fcmp d8, d9
    cset w22, eq
    mov x23, #0
L4f774f53885f_5:
    cmp x23, #3
    b.hs L4f774f53885f_8
    .p2align 4
L4f774f53885f_6:
    movz x10, #81
    mul x14, x23, x10
    fmov d24, d8
    mov x15, #0
L4f774f53885f_9:
    cmp x15, #81
    b.hs L4f774f53885f_12
    .p2align 4
L4f774f53885f_10:
    sub x10, x29, #1392
    ldr d25, [x10, x15, lsl #3]
    add x12, x14, x15
    movz x10, #243
    cmp x12, x10
    b.hs L4f774f53885f_c1
    ldr d26, [x19, x12, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x15, x15, #1
    cmp x15, #81
    b.lo L4f774f53885f_10
L4f774f53885f_12:
    sub x9, x29, #744
    add x24, x9, x23, lsl #3
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L4f774f53885f_19
L4f774f53885f_18:
    b L4f774f53885f_39
L4f774f53885f_19:
L4f774f53885f_20:
L4f774f53885f_38:
    cbz w21, L4f774f53885f_23
L4f774f53885f_22:
    fmov d24, d9
    b L4f774f53885f_39
L4f774f53885f_23:
L4f774f53885f_24:
    fcmp d8, d24
    b.ne L4f774f53885f_27
L4f774f53885f_29:
    cbz w22, L4f774f53885f_27
L4f774f53885f_26:
    and x14, x14, x20
    fmov d24, x14
    b L4f774f53885f_39
L4f774f53885f_27:
L4f774f53885f_28:
    fcmp d24, d9
    fcsel d24, d24, d9, gt
L4f774f53885f_39:
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fneg d24, d24
    str d24, [x24]
    add x23, x23, #1
    cmp x23, #3
    b.lo L4f774f53885f_6
L4f774f53885f_8:
    sub x10, x29, #744
    sub x11, x29, #1416
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #1416
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #1416]
    ldr x20, [sp, #1408]
    ldr x21, [sp, #1400]
    ldr x22, [sp, #1392]
    ldr x23, [sp, #1384]
    ldr x24, [sp, #1376]
    ldr d8, [sp, #1368]
    ldr d9, [sp, #1360]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4f774f53885f_c1:
    adrp x0, _lb_text_b393f17982ea@PAGE
    add x0, x0, _lb_text_b393f17982ea@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L4f774f53885f_k0:
    .quad 4427486594234968593


    .p2align 2
    .globl _lb_19luce_color_spectral_illuminant
_lb_19luce_color_spectral_illuminant:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3344
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #3328]
    str x20, [sp, #3320]
    str x21, [sp, #3312]
    str d8, [sp, #3304]
    str d9, [sp, #3296]
    str d10, [sp, #3288]
    str d11, [sp, #3280]
    str d12, [sp, #3272]
    str d13, [sp, #3264]
    str d14, [sp, #3256]
    str d15, [sp, #3248]
    fmov d8, d0
    fmov d24, d1
    fmov d0, d8
    fmov d1, d24
    bl _lb_22luce_color_temperature_white
    fmov d9, d0
    fmov d10, d1
    ldr d16, L355006bcce88_k0
    ldr d17, L355006bcce88_k1
    fcmp d16, d17
    b.hi L355006bcce88_21
L355006bcce88_20:
    fmov x14, d8
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L355006bcce88_23
L355006bcce88_22:
    b L355006bcce88_35
L355006bcce88_23:
L355006bcce88_24:
    ldr d17, L355006bcce88_k0
    fcmp d8, d17
    cset w14, mi
    ldr d17, L355006bcce88_k1
    fcmp d8, d17
    ldr d17, L355006bcce88_k1
    fcsel d24, d17, d8, gt
    cmp w14, #0
    ldr d17, L355006bcce88_k0
    fcsel d24, d17, d24, ne
    fmov d8, d24
L355006bcce88_35:
    ldr d16, L355006bcce88_k2
    ldr d17, L355006bcce88_k3
    fcmp d16, d17
    cset w19, ls
    ldr d16, L355006bcce88_k4
    fmov d17, #3.0000000
    fcmp d16, d17
    cset w20, ls
    fmov d11, xzr
    mov x21, #0
L355006bcce88_1:
    cmp x21, #12
    b.ge L355006bcce88_4
    .p2align 4
L355006bcce88_2:
    fmov d0, d8
    fmov d1, d11
    sub x8, x29, #2040
    bl _lb_19luce_color_spectral_shaped
    sub x9, x29, #2040
    mov x0, x9
    bl _lb_19luce_color_spectral_15chromaticity_of
    fmov d12, d0
    fmov d13, d1
    fsub d14, d12, d9
    fsub d15, d13, d10
    fabs d24, d14
    fabs d25, d15
    fadd d24, d24, d25
    ldr d17, L355006bcce88_k5
    fcmp d24, d17
    b.pl L355006bcce88_6
L355006bcce88_5:
    b L355006bcce88_4
L355006bcce88_6:
L355006bcce88_7:
    ldr d16, L355006bcce88_k6
    fmul d24, d16, d8
    fmov d0, d24
    fmov d1, d11
    sub x8, x29, #2688
    bl _lb_19luce_color_spectral_shaped
    sub x9, x29, #2688
    mov x0, x9
    bl _lb_19luce_color_spectral_15chromaticity_of
    fmov d24, d0
    fmov d25, d1
    ldr d16, L355006bcce88_k7
    fadd d26, d16, d11
    str d24, [sp, #3240]
    str d25, [sp, #3232]
    fmov d0, d8
    fmov d1, d26
    sub x8, x29, #3336
    bl _lb_19luce_color_spectral_shaped
    ldr d24, [sp, #3240]
    ldr d25, [sp, #3232]
    str d24, [sp, #3240]
    str d25, [sp, #3232]
    sub x9, x29, #3336
    mov x0, x9
    bl _lb_19luce_color_spectral_15chromaticity_of
    fmov d26, d0
    fmov d27, d1
    ldr d24, [sp, #3240]
    ldr d25, [sp, #3232]
    fsub d24, d24, d12
    ldr d16, L355006bcce88_k7
    fmul d28, d16, d8
    fdiv d24, d24, d28
    fsub d26, d26, d12
    ldr d17, L355006bcce88_k7
    fdiv d26, d26, d17
    fsub d25, d25, d13
    fdiv d25, d25, d28
    fsub d27, d27, d13
    ldr d17, L355006bcce88_k7
    fdiv d27, d27, d17
    fmul d28, d24, d27
    fmul d29, d26, d25
    fsub d28, d28, d29
    fabs d29, d28
    ldr d17, L355006bcce88_k8
    fcmp d29, d17
    b.pl L355006bcce88_10
L355006bcce88_9:
    b L355006bcce88_4
L355006bcce88_10:
L355006bcce88_11:
    fmul d27, d14, d27
    fmul d26, d15, d26
    fsub d26, d27, d26
    fdiv d26, d26, d28
    fsub d26, d8, d26
    cbz w19, L355006bcce88_37
L355006bcce88_36:
    fmov x14, d26
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L355006bcce88_39
L355006bcce88_38:
    b L355006bcce88_51
L355006bcce88_39:
L355006bcce88_40:
    ldr d17, L355006bcce88_k2
    fcmp d26, d17
    cset w14, mi
    ldr d17, L355006bcce88_k3
    fcmp d26, d17
    ldr d17, L355006bcce88_k3
    fcsel d26, d17, d26, gt
    cmp w14, #0
    ldr d17, L355006bcce88_k2
    fcsel d26, d17, d26, ne
L355006bcce88_51:
    fmul d24, d15, d24
    fmul d25, d14, d25
    fsub d24, d24, d25
    fdiv d24, d24, d28
    fsub d24, d11, d24
    cbz w20, L355006bcce88_53
L355006bcce88_52:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L355006bcce88_55
L355006bcce88_54:
    b L355006bcce88_67
L355006bcce88_55:
L355006bcce88_56:
    ldr d17, L355006bcce88_k4
    fcmp d24, d17
    cset w14, mi
    fmov d17, #3.0000000
    fcmp d24, d17
    fmov d17, #3.0000000
    fcsel d24, d17, d24, gt
    cmp w14, #0
    ldr d17, L355006bcce88_k4
    fcsel d24, d17, d24, ne
L355006bcce88_67:
    add x21, x21, #1
    fmov d8, d26
    fmov d11, d24
    cmp x21, #12
    b.lt L355006bcce88_2
L355006bcce88_4:
    fmov d0, d8
    fmov d1, d11
    sub x8, x29, #744
    bl _lb_19luce_color_spectral_shaped
    sub x10, x29, #744
    sub x0, x29, #1392
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #1392
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #3328]
    ldr x20, [sp, #3320]
    ldr x21, [sp, #3312]
    ldr d8, [sp, #3304]
    ldr d9, [sp, #3296]
    ldr d10, [sp, #3288]
    ldr d11, [sp, #3280]
    ldr d12, [sp, #3272]
    ldr d13, [sp, #3264]
    ldr d14, [sp, #3256]
    ldr d15, [sp, #3248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L355006bcce88_21:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L355006bcce88_37:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L355006bcce88_53:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L355006bcce88_k0:
    .quad 4655046358980362240
L355006bcce88_k1:
    .quad 4672601161629433856
L355006bcce88_k2:
    .quad 4652007308841189376
L355006bcce88_k3:
    .quad 4675730371722084352
L355006bcce88_k4:
    .quad 13829653735729319117
L355006bcce88_k5:
    .quad 4517329193108106637
L355006bcce88_k6:
    .quad 4607227454796291113
L355006bcce88_k7:
    .quad 4576918229304087675
L355006bcce88_k8:
    .quad 4337655138388951980


    .p2align 2
    .globl _lb_10film_model_12over_minimum
_lb_10film_model_12over_minimum:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str d8, [sp, #48]
    str d9, [sp, #40]
    str d10, [sp, #32]
    str d11, [sp, #24]
    str d12, [sp, #16]
    str d13, [sp, #8]
    str d14, [sp, #0]
    fmov d24, d0
    mov x14, x0
    mov x15, x1
    ldr x12, [x14, #4640]
    movz x10, #4648
    add x13, x14, x10
    movz x10, #96
    umulh x11, x15, x10
    mul x15, x15, x10
    cbnz x11, L47d2947aa637_c1
    adds x7, x12, x15
    b.cs L47d2947aa637_c2
    movz x10, #288
    cmp x15, x10
    b.hi L47d2947aa637_c3
    movz x10, #288
    cmp x7, x10
    b.hi L47d2947aa637_c4
    cmp x15, x7
    b.hi L47d2947aa637_2
L47d2947aa637_1:
    add x15, x13, x15, lsl #3
    ldr x13, [x14, #16]
    cmp x13, #1
    b.ne L47d2947aa637_4
L47d2947aa637_3:
    mov x9, #0
    cmp x9, x12
    b.hs L47d2947aa637_c5
    ldr d25, [x15]
    fmov d26, xzr
    mov x13, #0
L47d2947aa637_6:
    cmp x13, x12
    b.hs L47d2947aa637_9
    .p2align 4
L47d2947aa637_7:
    ldr d27, [x15, x13, lsl #3]
    fmov x7, d25
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L47d2947aa637_27
L47d2947aa637_26:
    b L47d2947aa637_47
L47d2947aa637_27:
L47d2947aa637_28:
    fmov x6, d27
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls L47d2947aa637_31
L47d2947aa637_30:
    fmov d25, d27
    b L47d2947aa637_47
L47d2947aa637_31:
L47d2947aa637_32:
    fcmp d25, d26
    b.ne L47d2947aa637_35
L47d2947aa637_37:
    fcmp d27, d26
    b.ne L47d2947aa637_35
L47d2947aa637_34:
    orr x7, x7, x6
    fmov d25, x7
    b L47d2947aa637_47
L47d2947aa637_35:
L47d2947aa637_36:
    fcmp d25, d27
    fcsel d25, d25, d27, mi
L47d2947aa637_47:
    add x13, x13, #1
    cmp x13, x12
    b.lo L47d2947aa637_7
L47d2947aa637_9:
    ldr d26, [x14, #4624]
    fsub d24, d24, d26
    ldr d26, [x14, #4632]
    fdiv d24, d24, d26
    fmov d26, xzr
    sub x14, x12, #1
    ucvtf d27, x14
    fcmp d26, d27
    b.hi L47d2947aa637_49
L47d2947aa637_48:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L47d2947aa637_51
L47d2947aa637_50:
    b L47d2947aa637_63
L47d2947aa637_51:
L47d2947aa637_52:
    fcmp d24, d26
    cset w14, mi
    fcmp d24, d27
    fcsel d24, d27, d24, gt
    cmp w14, #0
    fcsel d24, d26, d24, ne
L47d2947aa637_63:
    frintm d27, d24
    subs x14, x12, #2
    b.cc L47d2947aa637_c6
    ucvtf d28, x14
    fmov x14, d27
    and x13, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L47d2947aa637_65
L47d2947aa637_64:
    b L47d2947aa637_85
L47d2947aa637_65:
L47d2947aa637_66:
    fmov x13, d28
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls L47d2947aa637_69
L47d2947aa637_68:
    fmov d27, d28
    b L47d2947aa637_85
L47d2947aa637_69:
L47d2947aa637_70:
    fcmp d26, d27
    b.ne L47d2947aa637_73
L47d2947aa637_75:
    fcmp d26, d28
    b.ne L47d2947aa637_73
L47d2947aa637_72:
    orr x14, x14, x13
    fmov d27, x14
    b L47d2947aa637_85
L47d2947aa637_73:
L47d2947aa637_74:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
L47d2947aa637_85:
    fcvtzu x14, d27
    ucvtf d26, x14
    fsub d24, d24, d26
    cmp x14, x12
    b.hs L47d2947aa637_c7
    add x15, x15, x14, lsl #3
    ldr d26, [x15]
    add x14, x14, #1
    cmp x14, x12
    b.hs L47d2947aa637_c8
    ldr d27, [x15, #8]
    fsub d27, d27, d26
    fmul d24, d24, d27
    fadd d24, d26, d24
    fsub d24, d24, d25
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    ldr d14, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47d2947aa637_4:
L47d2947aa637_5:
    mov x9, #0
    cmp x9, x12
    b.hs L47d2947aa637_c9
    ldr d25, [x15]
    ldr d26, L47d2947aa637_k0
    fsub d8, d25, d26
    movz x9, #1
    cmp x9, x12
    b.hs L47d2947aa637_c10
    ldr d26, [x15, #8]
    fsub d26, d26, d25
    ldr d27, [x14, #4632]
    fdiv d26, d26, d27
    ldr d28, L47d2947aa637_k1
    fmov x13, d26
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls L47d2947aa637_87
L47d2947aa637_86:
    b L47d2947aa637_107
L47d2947aa637_87:
L47d2947aa637_88:
    fmov x7, d28
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L47d2947aa637_91
L47d2947aa637_90:
    fmov d26, d28
    b L47d2947aa637_107
L47d2947aa637_91:
L47d2947aa637_92:
    fmov d29, xzr
    fcmp d26, d29
    b.ne L47d2947aa637_95
L47d2947aa637_97:
    fcmp d28, d29
    b.ne L47d2947aa637_95
L47d2947aa637_94:
    and x13, x13, x7
    fmov d26, x13
    b L47d2947aa637_107
L47d2947aa637_95:
L47d2947aa637_96:
    fcmp d26, d28
    fcsel d26, d26, d28, gt
L47d2947aa637_107:
    ldr d28, [x14, #4624]
    sub x13, x12, #1
    ucvtf d29, x13
    fmul d29, d27, d29
    fadd d9, d29, d28
    fcmp d24, d28
    b.hi L47d2947aa637_12
L47d2947aa637_11:
    fsub d8, d25, d8
    ldr d25, L47d2947aa637_k2
    fmul d25, d25, d8
    fdiv d25, d26, d25
    fmov d26, #10.0000000
    fsub d24, d24, d28
    fmul d24, d25, d24
    fmov d0, d26
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d8, d24
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    ldr d14, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47d2947aa637_12:
L47d2947aa637_13:
    fcmp d24, d9
    b.lt L47d2947aa637_16
L47d2947aa637_15:
    cmp x13, x12
    b.hs L47d2947aa637_c11
    add x19, x15, x13, lsl #3
    ldr d25, [x19]
    subs x13, x12, #5
    b.cc L47d2947aa637_c12
    cmp x13, x12
    b.hs L47d2947aa637_c13
    ldr d26, [x15, x13, lsl #3]
    fsub d25, d25, d26
    fmov d26, #4.0000000
    fmul d26, d27, d26
    fdiv d25, d25, d26
    fmov d26, xzr
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L47d2947aa637_109
L47d2947aa637_108:
    fmov d10, d25
    b L47d2947aa637_129
L47d2947aa637_109:
L47d2947aa637_110:
    fmov x12, d26
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L47d2947aa637_113
L47d2947aa637_112:
    fmov d10, d26
    b L47d2947aa637_129
L47d2947aa637_113:
L47d2947aa637_114:
    fcmp d25, d26
    b.ne L47d2947aa637_117
L47d2947aa637_119:
    fcmp d26, d26
    b.ne L47d2947aa637_117
L47d2947aa637_116:
    and x15, x15, x12
    fmov d10, x15
    b L47d2947aa637_129
L47d2947aa637_117:
L47d2947aa637_118:
    fcmp d25, d26
    fcsel d10, d25, d26, gt
L47d2947aa637_129:
    ldr d25, [x14, #80]
    ldr d26, L47d2947aa637_k3
    fadd d11, d25, d26
    ldr d12, L47d2947aa637_k4
    fsub d13, d24, d9
    fsub d24, d24, d11
    fdiv d24, d24, d12
    fmov d0, d24
    bl _lb_10film_model_softplus
    fmov d14, d0
    fsub d24, d9, d11
    fdiv d24, d24, d12
    fmov d0, d24
    bl _lb_10film_model_softplus
    fmov d24, d0
    fsub d24, d14, d24
    fmul d24, d12, d24
    fsub d24, d13, d24
    ldr d25, [x19]
    fsub d25, d25, d8
    fmul d24, d24, d10
    fadd d24, d25, d24
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    ldr d14, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47d2947aa637_16:
L47d2947aa637_17:
    fsub d24, d24, d28
    fdiv d24, d24, d27
    frintm d25, d24
    sub x14, x12, #2
    ucvtf d26, x14
    fmov x14, d25
    and x13, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L47d2947aa637_131
L47d2947aa637_130:
    b L47d2947aa637_151
L47d2947aa637_131:
L47d2947aa637_132:
    fmov x13, d26
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls L47d2947aa637_135
L47d2947aa637_134:
    fmov d25, d26
    b L47d2947aa637_151
L47d2947aa637_135:
L47d2947aa637_136:
    fmov d27, xzr
    fcmp d25, d27
    b.ne L47d2947aa637_139
L47d2947aa637_141:
    fcmp d26, d27
    b.ne L47d2947aa637_139
L47d2947aa637_138:
    orr x14, x14, x13
    fmov d25, x14
    b L47d2947aa637_151
L47d2947aa637_139:
L47d2947aa637_140:
    fcmp d25, d26
    fcsel d25, d25, d26, mi
L47d2947aa637_151:
    fcvtzu x14, d25
    ucvtf d25, x14
    fsub d24, d24, d25
    cmp x14, x12
    b.hs L47d2947aa637_c14
    add x15, x15, x14, lsl #3
    ldr d25, [x15]
    add x14, x14, #1
    cmp x14, x12
    b.hs L47d2947aa637_c15
    ldr d26, [x15, #8]
    fsub d26, d26, d25
    fmul d24, d24, d26
    fadd d24, d25, d24
    fsub d24, d24, d8
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    ldr d14, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47d2947aa637_2:
    adrp x0, _lb_text_b60fd3e56ae8@PAGE
    add x0, x0, _lb_text_b60fd3e56ae8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_49:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c1:
    adrp x0, _lb_text_b60fd3e56ae8@PAGE
    add x0, x0, _lb_text_b60fd3e56ae8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c2:
    adrp x0, _lb_text_b60fd3e56ae8@PAGE
    add x0, x0, _lb_text_b60fd3e56ae8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c3:
    adrp x0, _lb_text_b60fd3e56ae8@PAGE
    add x0, x0, _lb_text_b60fd3e56ae8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c4:
    adrp x0, _lb_text_b60fd3e56ae8@PAGE
    add x0, x0, _lb_text_b60fd3e56ae8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c5:
    adrp x0, _lb_text_d120e5fbc04b@PAGE
    add x0, x0, _lb_text_d120e5fbc04b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c6:
    adrp x0, _lb_text_1e003dd76327@PAGE
    add x0, x0, _lb_text_1e003dd76327@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c7:
    adrp x0, _lb_text_6e6b8ba30000@PAGE
    add x0, x0, _lb_text_6e6b8ba30000@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c8:
    adrp x0, _lb_text_6e6b8ba30000@PAGE
    add x0, x0, _lb_text_6e6b8ba30000@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c9:
    adrp x0, _lb_text_abdae476559f@PAGE
    add x0, x0, _lb_text_abdae476559f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c10:
    adrp x0, _lb_text_2f5c93390a10@PAGE
    add x0, x0, _lb_text_2f5c93390a10@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c11:
    adrp x0, _lb_text_cbc8eae09de9@PAGE
    add x0, x0, _lb_text_cbc8eae09de9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c12:
    adrp x0, _lb_text_cbc8eae09de9@PAGE
    add x0, x0, _lb_text_cbc8eae09de9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c13:
    adrp x0, _lb_text_cbc8eae09de9@PAGE
    add x0, x0, _lb_text_cbc8eae09de9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c14:
    adrp x0, _lb_text_f9a6e3fc7ee7@PAGE
    add x0, x0, _lb_text_f9a6e3fc7ee7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L47d2947aa637_c15:
    adrp x0, _lb_text_f9a6e3fc7ee7@PAGE
    add x0, x0, _lb_text_f9a6e3fc7ee7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L47d2947aa637_k0:
    .quad 4579800533065604792
L47d2947aa637_k1:
    .quad 4576918229304087675
L47d2947aa637_k2:
    .quad 4612367379483415830
L47d2947aa637_k3:
    .quad 4612586738352862003
L47d2947aa637_k4:
    .quad 4599976659396224614


    .p2align 2
    .globl _lb_10film_model_unmix
_lb_10film_model_unmix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #800
    str x19, [sp, #792]
    str x20, [sp, #784]
    str x21, [sp, #776]
    str d8, [sp, #768]
    str d9, [sp, #760]
    str d10, [sp, #752]
    sub x16, x29, #88
    str d0, [x16, #0]
    sub x16, x29, #88
    str d1, [x16, #8]
    sub x16, x29, #88
    str d2, [x16, #16]
    sub x16, x29, #112
    str d3, [x16, #0]
    sub x16, x29, #112
    str d4, [x16, #8]
    sub x16, x29, #112
    str d5, [x16, #16]
    mov x19, x0
    sub x10, x29, #112
    sub x11, x29, #672
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d8, L358f6cee842b_k0
    ldr d9, L358f6cee842b_k1
    fmov d10, xzr
    mov x20, #0
L358f6cee842b_1:
    cmp x20, #30
    b.ge L358f6cee842b_4
    .p2align 4
L358f6cee842b_2:
    sub x9, x29, #672
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_model_Model_scanned
    sub x16, x29, #112
    str d0, [x16, #0]
    sub x16, x29, #112
    str d1, [x16, #8]
    sub x16, x29, #112
    str d2, [x16, #16]
    sub x10, x29, #112
    sub x11, x29, #696
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #696
    ldr q24, [x9]
    sub x9, x29, #88
    ldr q25, [x9]
    fsub v24.2d, v24.2d, v25.2d
    fmov d25, d24
    mov d26, v24.d[1]
    ldr d27, [sp, #120]
    ldr d28, [sp, #728]
    fsub d27, d27, d28
    sub x9, x29, #136
    str q24, [x9]
    str d27, [sp, #680]
    fabs d24, d25
    fabs d25, d26
    fadd d24, d24, d25
    fabs d25, d27
    fadd d24, d25, d24
    fcmp d24, d8
    b.pl L358f6cee842b_6
L358f6cee842b_5:
    b L358f6cee842b_4
L358f6cee842b_6:
L358f6cee842b_7:
    sub x11, x29, #208
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x21, #0
L358f6cee842b_9:
    cmp x21, #3
    b.hs L358f6cee842b_12
    .p2align 4
L358f6cee842b_10:
    sub x10, x29, #672
    sub x11, x29, #720
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #720
    add x14, x9, x21, lsl #3
    ldr d24, [x14]
    fadd d24, d24, d9
    str d24, [x14]
    sub x9, x29, #720
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_model_Model_scanned
    sub x16, x29, #256
    str d0, [x16, #0]
    sub x16, x29, #256
    str d1, [x16, #8]
    sub x16, x29, #256
    str d2, [x16, #16]
    sub x10, x29, #256
    sub x11, x29, #232
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x14, #0
L358f6cee842b_13:
    cmp x14, #3
    b.hs L358f6cee842b_16
    .p2align 4
L358f6cee842b_14:
    add x15, x14, x14, lsl #1
    add x15, x15, x21
    movz x10, #9
    cmp x15, x10
    b.hs L358f6cee842b_c1
    sub x9, x29, #208
    add x15, x9, x15, lsl #3
    lsl x12, x14, #3
    sub x10, x29, #232
    ldr d24, [x10, x12]
    sub x10, x29, #696
    ldr d25, [x10, x12]
    fsub d24, d24, d25
    fdiv d24, d24, d9
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L358f6cee842b_14
L358f6cee842b_16:
    add x21, x21, #1
    cmp x21, #3
    b.lo L358f6cee842b_10
L358f6cee842b_12:
    sub x10, x29, #208
    sub x11, x29, #792
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
    sub x10, x29, #136
    sub x11, x29, #528
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #792
    mov x0, x9
    sub x8, x29, #432
    bl _lb_10film_model_invert3
    ldrb w14, [sp, #440]
    cbz w14, L358f6cee842b_33
L358f6cee842b_32:
    sub x10, x29, #432
    sub x11, x29, #504
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
    b L358f6cee842b_34
L358f6cee842b_33:
    fmov d24, d10
    fmov d25, d10
    fmov d26, d10
    mov w14, #0
    b L358f6cee842b_39
L358f6cee842b_34:
    sub x10, x29, #504
    sub x11, x29, #352
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
    sub x10, x29, #352
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
    sub x10, x29, #528
    sub x11, x29, #624
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #200]
    ldr d25, [sp, #176]
    fmul d24, d24, d25
    ldr d26, [sp, #208]
    ldr d27, [sp, #184]
    fmul d26, d26, d27
    fadd d24, d24, d26
    ldr d26, [sp, #216]
    ldr d28, [sp, #192]
    fmul d26, d26, d28
    fadd d24, d24, d26
    ldr d26, [sp, #224]
    fmul d26, d25, d26
    ldr d29, [sp, #232]
    fmul d29, d27, d29
    fadd d26, d26, d29
    ldr d29, [sp, #240]
    fmul d29, d28, d29
    fadd d26, d26, d29
    ldr d29, [sp, #248]
    fmul d25, d25, d29
    ldr d29, [sp, #256]
    fmul d27, d27, d29
    fadd d25, d25, d27
    ldr d27, [sp, #264]
    fmul d27, d28, d27
    fadd d27, d25, d27
    fmov d25, d26
    fmov d26, d27
    movz w14, #1
L358f6cee842b_39:
    cbz w14, L358f6cee842b_18
L358f6cee842b_17:
    b L358f6cee842b_19
L358f6cee842b_18:
    b L358f6cee842b_4
L358f6cee842b_19:
    str d24, [sp, #520]
    str d25, [sp, #528]
    str d26, [sp, #536]
    movz x14, #2
    movz x15, #1
    movz x12, #1
    and w15, w15, w12
    movz x12, #24
    sub x9, x29, #280
    sub x10, x29, #672
    sub x13, x9, x10
    sub x9, x29, #672
    sub x10, x29, #280
    sub x7, x9, x10
    cmp x13, x12
    cset w13, hs
    cmp x7, x12
    cset w12, hs
    and w12, w13, w12
    sub x9, x29, #280
    sub x10, x29, #672
    cmp x9, x10
    cset w13, eq
    orr w12, w12, w13
    and w15, w15, w12
    cbnz w15, L358f6cee842b_41
L358f6cee842b_46:
    mov x14, #0
    b L358f6cee842b_45
L358f6cee842b_41:
    mov x15, #0
L358f6cee842b_42:
    cmp x15, x14
    b.hs L358f6cee842b_44
    .p2align 4
L358f6cee842b_43:
    sub x9, x29, #672
    add x12, x9, x15, lsl #3
    ldr q24, [x12]
    sub x9, x29, #280
    add x12, x9, x15, lsl #3
    ldr q25, [x12]
    fsub v24.2d, v24.2d, v25.2d
    sub x9, x29, #672
    add x12, x9, x15, lsl #3
    str q24, [x12]
    add x15, x15, #2
    cmp x15, x14
    b.lo L358f6cee842b_43
L358f6cee842b_44:
L358f6cee842b_45:
L358f6cee842b_21:
    cmp x14, #3
    b.hs L358f6cee842b_24
    .p2align 4
L358f6cee842b_22:
    lsl x15, x14, #3
    sub x9, x29, #672
    add x12, x9, x15
    ldr d24, [x12]
    sub x11, x29, #280
    ldr d25, [x15, x11]
    fsub d24, d24, d25
    str d24, [x12]
    add x14, x14, #1
    cmp x14, #3
    b.lo L358f6cee842b_22
L358f6cee842b_24:
    add x20, x20, #1
    cmp x20, #30
    b.lt L358f6cee842b_2
L358f6cee842b_4:
    sub x10, x29, #672
    sub x11, x29, #648
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #648
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #792]
    ldr x20, [sp, #784]
    ldr x21, [sp, #776]
    ldr d8, [sp, #768]
    ldr d9, [sp, #760]
    ldr d10, [sp, #752]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L358f6cee842b_c1:
    adrp x0, _lb_text_e37a66c9b67d@PAGE
    add x0, x0, _lb_text_e37a66c9b67d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L358f6cee842b_k0:
    .quad 4502148214488346440
L358f6cee842b_k1:
    .quad 4547007122018943789


    .p2align 2
    .globl _lb_10film_model_13balance_slide
_lb_10film_model_13balance_slide:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9056
    sub sp, sp, x16
    str x19, [sp, #9048]
    str x20, [sp, #9040]
    str x21, [sp, #9032]
    str x22, [sp, #9024]
    str x23, [sp, #9016]
    str x24, [sp, #9008]
    str x25, [sp, #9000]
    str d8, [sp, #8992]
    str d9, [sp, #8984]
    str d10, [sp, #8976]
    str d11, [sp, #8968]
    str d12, [sp, #8960]
    str d13, [sp, #8952]
    str d14, [sp, #8944]
    str d15, [sp, #8936]
    mov x19, x0
    adrp x14, _lb_10film_model_15lightbox_kelvin@PAGE
    add x14, x14, _lb_10film_model_15lightbox_kelvin@PAGEOFF
    ldr d24, [x14]
    fmov d0, d24
    sub x8, x29, #768
    bl _lb_19luce_color_spectral_planck
    sub x10, x29, #768
    movz x16, #8976
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    ldr d24, [x19, #15720]
    adrp x14, _lb_10film_model_7log_low@PAGE
    add x14, x14, _lb_10film_model_7log_low@PAGEOFF
    ldr d25, [x14]
    fsub d24, d24, d25
    adrp x14, _lb_10film_model_8log_high@PAGE
    add x14, x14, _lb_10film_model_8log_high@PAGEOFF
    ldr d26, [x14]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    fmov d8, xzr
    fmov d9, #1.0000000
    fcmp d8, d9
    b.hi L34be16af31cc_66
L34be16af31cc_65:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L34be16af31cc_68
L34be16af31cc_67:
    b L34be16af31cc_80
L34be16af31cc_68:
L34be16af31cc_69:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d9
    fcsel d24, d9, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L34be16af31cc_80:
    movz x9, #1023
    ucvtf d10, x9
    fmul d24, d24, d10
    frinta d24, d24
    fcvtzu x20, d24
    movz x10, #3
    umulh x11, x20, x10
    add x14, x20, x20, lsl #1
    cbnz x11, L34be16af31cc_c1
    ldr x15, [x19, #15480]
    ldr x12, [x19, #15488]
    cmp x14, x12
    b.hs L34be16af31cc_c2
    add x13, x15, x14, lsl #3
    add x7, x14, #1
    cmp x7, x12
    b.hs L34be16af31cc_c3
    ldr q24, [x13]
    adds x14, x14, #2
    b.cs L34be16af31cc_c4
    cmp x14, x12
    b.hs L34be16af31cc_c5
    ldr d25, [x15, x14, lsl #3]
    movz x16, #9000
    sub x9, x29, x16
    str q24, [x9]
    str d25, [sp, #72]
    movz x16, #9000
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    movz x16, #8976
    sub x1, x29, x16
    bl _lb_10film_model_12neutral_miss
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    ldr d24, [sp, #8920]
    ldr d25, [sp, #8928]
    ldr d11, L34be16af31cc_k0
    ldr d12, L34be16af31cc_k1
    ldr d13, L34be16af31cc_k2
    ldr d14, L34be16af31cc_k3
    fmov d15, #0.5000000
    mov x21, #0
L34be16af31cc_1:
    cmp x21, #30
    b.ge L34be16af31cc_4
    .p2align 4
L34be16af31cc_2:
    fabs d26, d24
    fabs d27, d25
    fadd d26, d26, d27
    fcmp d26, d11
    b.pl L34be16af31cc_6
L34be16af31cc_5:
    b L34be16af31cc_4
L34be16af31cc_6:
L34be16af31cc_7:
    sub x11, x29, #152
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x9, #0
    str x9, [sp, #8872]
    mov x9, #0
    str x9, [sp, #8880]
    movz x9, #1
    str x9, [sp, #8888]
    movz x9, #2
    str x9, [sp, #8896]
    mov x22, #0
L34be16af31cc_9:
    cmp x22, #2
    b.hs L34be16af31cc_12
    .p2align 4
L34be16af31cc_10:
    sub x9, x29, #184
    add x14, x9, x22, lsl #4
    ldr x23, [x14]
    ldr x14, [x14, #8]
    movz x16, #9000
    sub x10, x29, x16
    movz x16, #9024
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x10, #3
    cmp x14, x10
    b.hs L34be16af31cc_c6
    movz x16, #9024
    sub x9, x29, x16
    add x14, x9, x14, lsl #3
    ldr d26, [x14]
    fadd d26, d26, d12
    str d26, [x14]
    str d24, [sp, #8832]
    str d25, [sp, #8824]
    movz x16, #9024
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    movz x16, #8976
    sub x1, x29, x16
    bl _lb_10film_model_12neutral_miss
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    ldr d24, [sp, #8832]
    ldr d25, [sp, #8824]
    ldr d26, [sp, #8856]
    ldr d27, [sp, #8864]
    movz x10, #4
    cmp x23, x10
    b.hs L34be16af31cc_c7
    sub x9, x29, #152
    add x14, x9, x23, lsl #3
    fsub d26, d26, d24
    fdiv d26, d26, d12
    str d26, [x14]
    add x15, x23, #2
    movz x10, #4
    cmp x15, x10
    b.hs L34be16af31cc_c8
    fsub d26, d27, d25
    fdiv d26, d26, d12
    str d26, [x14, #16]
    add x22, x22, #1
    cmp x22, #2
    b.lo L34be16af31cc_10
L34be16af31cc_12:
    ldr d26, [sp, #8904]
    ldr d27, [sp, #8928]
    fmul d28, d26, d27
    ldr d29, [sp, #8912]
    ldr d30, [sp, #8920]
    fmul d31, d29, d30
    fsub d28, d28, d31
    fabs d31, d28
    fcmp d31, d13
    b.pl L34be16af31cc_14
L34be16af31cc_13:
    b L34be16af31cc_4
L34be16af31cc_14:
L34be16af31cc_15:
    fmul d27, d24, d27
    fmul d29, d25, d29
    fsub d27, d27, d29
    fdiv d27, d27, d28
    fmul d26, d25, d26
    fmul d29, d24, d30
    fsub d26, d26, d29
    fdiv d26, d26, d28
    fabs d28, d24
    fabs d29, d25
    fadd d28, d28, d29
    fmov d29, d9
L34be16af31cc_17:
    fcmp d29, d14
    b.gt L34be16af31cc_18
L34be16af31cc_119:
    b L34be16af31cc_19
    .p2align 4
L34be16af31cc_18:
    movz x16, #9000
    sub x10, x29, x16
    movz x16, #9048
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d30, [sp, #8]
    fmul d31, d27, d29
    fsub d30, d30, d31
    str d30, [sp, #8]
    ldr d30, [sp, #24]
    fmul d31, d26, d29
    fsub d30, d30, d31
    str d30, [sp, #24]
    str d24, [sp, #8832]
    str d25, [sp, #8824]
    str d27, [sp, #8816]
    str d26, [sp, #8808]
    str d28, [sp, #8800]
    str d29, [sp, #8792]
    movz x16, #9048
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    movz x16, #8976
    sub x1, x29, x16
    bl _lb_10film_model_12neutral_miss
    sub x16, x29, #216
    str d0, [x16, #0]
    sub x16, x29, #216
    str d1, [x16, #8]
    ldr d24, [sp, #8832]
    ldr d25, [sp, #8824]
    ldr d27, [sp, #8816]
    ldr d26, [sp, #8808]
    ldr d28, [sp, #8800]
    ldr d29, [sp, #8792]
    ldr d30, [sp, #8840]
    ldr d31, [sp, #8848]
    fabs d19, d30
    fabs d20, d31
    fadd d19, d19, d20
L34be16af31cc_61:
    fcmp d19, d28
    b.pl L34be16af31cc_21
L34be16af31cc_20:
    movz x16, #9048
    sub x10, x29, x16
    movz x16, #9000
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    fmov d24, d30
    fmov d25, d31
    b L34be16af31cc_19
L34be16af31cc_21:
L34be16af31cc_22:
    fmul d29, d15, d29
    fcmp d29, d14
    b.gt L34be16af31cc_18
    b L34be16af31cc_119
L34be16af31cc_19:
    add x21, x21, #1
    cmp x21, #30
    b.lt L34be16af31cc_2
L34be16af31cc_4:
    mov x9, #0
    str x9, [sp, #8920]
    movz x9, #2
    str x9, [sp, #8928]
    fcmp d8, d10
    cset w21, ls
    mov x22, #0
L34be16af31cc_24:
    cmp x22, #2
    b.hs L34be16af31cc_27
    .p2align 4
L34be16af31cc_25:
    sub x10, x29, #136
    ldr x23, [x10, x22, lsl #3]
    ucvtf d24, x20
    movz x16, #9000
    sub x9, x29, x16
    add x14, x9, x23, lsl #3
    movz x15, #1
L34be16af31cc_28:
    cmp x15, #1024
    b.lo L34be16af31cc_29
L34be16af31cc_64:
    fmov d25, d24
    b L34be16af31cc_31
    .p2align 4
L34be16af31cc_29:
    subs x12, x15, #1
    b.cc L34be16af31cc_c9
    movz x10, #3
    umulh x11, x12, x10
    add x13, x12, x12, lsl #1
    cbnz x11, L34be16af31cc_c10
    adds x13, x13, x23
    b.cs L34be16af31cc_c11
    ldr x7, [x19, #15480]
    ldr x6, [x19, #15488]
    cmp x13, x6
    b.hs L34be16af31cc_c12
    ldr d25, [x7, x13, lsl #3]
    add x13, x15, x15, lsl #1
    adds x13, x13, x23
    b.cs L34be16af31cc_c13
    cmp x13, x6
    b.hs L34be16af31cc_c14
    ldr d26, [x7, x13, lsl #3]
    movz x10, #3
    cmp x23, x10
    b.hs L34be16af31cc_c15
    ldr d27, [x14]
    fcmp d25, d27
    b.lt L34be16af31cc_33
L34be16af31cc_36:
    fcmp d27, d26
    b.lt L34be16af31cc_33
L34be16af31cc_35:
    fcmp d25, d26
    b.eq L34be16af31cc_33
L34be16af31cc_32:
    ucvtf d28, x12
    fsub d27, d25, d27
    fsub d25, d25, d26
    fdiv d25, d27, d25
    fadd d25, d28, d25
    b L34be16af31cc_31
L34be16af31cc_33:
L34be16af31cc_34:
    add x15, x15, #1
    cmp x15, #1024
    b.lo L34be16af31cc_29
    b L34be16af31cc_64
L34be16af31cc_31:
    fsub d11, d25, d24
    ldr x24, [x19, #15480]
    ldr x25, [x19, #15488]
    movz x16, #8328
    sub x0, x29, x16
    mov x1, #0
    movz x2, #8192
    bl _memset
    mov x14, #0
L34be16af31cc_38:
    cmp x14, #1024
    b.hs L34be16af31cc_41
    .p2align 4
L34be16af31cc_39:
    ucvtf d24, x14
    fadd d24, d24, d11
    cbz w21, L34be16af31cc_82
L34be16af31cc_81:
    fmov x15, d24
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L34be16af31cc_84
L34be16af31cc_83:
    b L34be16af31cc_96
L34be16af31cc_84:
L34be16af31cc_85:
    fcmp d24, d8
    cset w15, mi
    fcmp d24, d10
    fcsel d24, d10, d24, gt
    cmp w15, #0
    fcsel d24, d8, d24, ne
L34be16af31cc_96:
    frintm d25, d24
    movz x9, #1022
    ucvtf d26, x9
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L34be16af31cc_98
L34be16af31cc_97:
    b L34be16af31cc_118
L34be16af31cc_98:
L34be16af31cc_99:
    fmov x12, d26
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L34be16af31cc_102
L34be16af31cc_101:
    fmov d25, d26
    b L34be16af31cc_118
L34be16af31cc_102:
L34be16af31cc_103:
    fcmp d8, d25
    b.ne L34be16af31cc_106
L34be16af31cc_108:
    fcmp d26, d8
    b.ne L34be16af31cc_106
L34be16af31cc_105:
    orr x15, x15, x12
    fmov d25, x15
    b L34be16af31cc_118
L34be16af31cc_106:
L34be16af31cc_107:
    fcmp d25, d26
    fcsel d25, d25, d26, mi
L34be16af31cc_118:
    fcvtzu x15, d25
    ucvtf d25, x15
    fsub d24, d24, d25
    movz x16, #8328
    sub x9, x29, x16
    add x12, x9, x14, lsl #3
    movz x10, #3
    umulh x11, x15, x10
    add x13, x15, x15, lsl #1
    cbnz x11, L34be16af31cc_c16
    adds x13, x13, x23
    b.cs L34be16af31cc_c17
    cmp x13, x25
    b.hs L34be16af31cc_c18
    ldr d25, [x24, x13, lsl #3]
    fsub d26, d9, d24
    fmul d25, d25, d26
    adds x15, x15, #1
    b.cs L34be16af31cc_c19
    movz x10, #3
    umulh x11, x15, x10
    add x15, x15, x15, lsl #1
    cbnz x11, L34be16af31cc_c20
    adds x15, x15, x23
    b.cs L34be16af31cc_c21
    cmp x15, x25
    b.hs L34be16af31cc_c22
    ldr d26, [x24, x15, lsl #3]
    fmul d24, d24, d26
    fadd d24, d25, d24
    str d24, [x12]
    add x14, x14, #1
    cmp x14, #1024
    b.lo L34be16af31cc_39
L34be16af31cc_41:
    mov x14, #0
L34be16af31cc_42:
    cmp x14, #1024
    b.hs L34be16af31cc_45
    .p2align 4
L34be16af31cc_43:
    add x15, x14, x14, lsl #1
    adds x15, x15, x23
    b.cs L34be16af31cc_c23
    ldr x12, [x19, #15480]
    ldr x13, [x19, #15488]
    cmp x15, x13
    b.hs L34be16af31cc_c24
    add x15, x12, x15, lsl #3
    movz x16, #8328
    sub x10, x29, x16
    ldr d24, [x10, x14, lsl #3]
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #1024
    b.lo L34be16af31cc_43
L34be16af31cc_45:
    add x22, x22, #1
    cmp x22, #2
    b.lo L34be16af31cc_25
L34be16af31cc_27:
    ldr x19, [sp, #9048]
    ldr x20, [sp, #9040]
    ldr x21, [sp, #9032]
    ldr x22, [sp, #9024]
    ldr x23, [sp, #9016]
    ldr x24, [sp, #9008]
    ldr x25, [sp, #9000]
    ldr d8, [sp, #8992]
    ldr d9, [sp, #8984]
    ldr d10, [sp, #8976]
    ldr d11, [sp, #8968]
    ldr d12, [sp, #8960]
    ldr d13, [sp, #8952]
    ldr d14, [sp, #8944]
    ldr d15, [sp, #8936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L34be16af31cc_66:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_82:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c1:
    adrp x0, _lb_text_ced424b37810@PAGE
    add x0, x0, _lb_text_ced424b37810@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c2:
    adrp x0, _lb_text_ced424b37810@PAGE
    add x0, x0, _lb_text_ced424b37810@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c3:
    adrp x0, _lb_text_ced424b37810@PAGE
    add x0, x0, _lb_text_ced424b37810@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c4:
    adrp x0, _lb_text_ced424b37810@PAGE
    add x0, x0, _lb_text_ced424b37810@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c5:
    adrp x0, _lb_text_ced424b37810@PAGE
    add x0, x0, _lb_text_ced424b37810@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c6:
    adrp x0, _lb_text_53738566f374@PAGE
    add x0, x0, _lb_text_53738566f374@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c7:
    adrp x0, _lb_text_4e0c650b3a33@PAGE
    add x0, x0, _lb_text_4e0c650b3a33@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c8:
    adrp x0, _lb_text_978a375182b7@PAGE
    add x0, x0, _lb_text_978a375182b7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c9:
    adrp x0, _lb_text_a84d1337a38a@PAGE
    add x0, x0, _lb_text_a84d1337a38a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c10:
    adrp x0, _lb_text_a84d1337a38a@PAGE
    add x0, x0, _lb_text_a84d1337a38a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c11:
    adrp x0, _lb_text_a84d1337a38a@PAGE
    add x0, x0, _lb_text_a84d1337a38a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c12:
    adrp x0, _lb_text_a84d1337a38a@PAGE
    add x0, x0, _lb_text_a84d1337a38a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c13:
    adrp x0, _lb_text_9a3dc776b947@PAGE
    add x0, x0, _lb_text_9a3dc776b947@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c14:
    adrp x0, _lb_text_9a3dc776b947@PAGE
    add x0, x0, _lb_text_9a3dc776b947@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c15:
    adrp x0, _lb_text_f65455033e40@PAGE
    add x0, x0, _lb_text_f65455033e40@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c16:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c17:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c18:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c19:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c20:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c21:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c22:
    adrp x0, _lb_text_915a1a140be2@PAGE
    add x0, x0, _lb_text_915a1a140be2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c23:
    adrp x0, _lb_text_6e83b111aa73@PAGE
    add x0, x0, _lb_text_6e83b111aa73@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L34be16af31cc_c24:
    adrp x0, _lb_text_6e83b111aa73@PAGE
    add x0, x0, _lb_text_6e83b111aa73@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L34be16af31cc_k0:
    .quad 4502148214488346440
L34be16af31cc_k1:
    .quad 4547007122018943789
L34be16af31cc_k2:
    .quad 4427486594234968593
L34be16af31cc_k3:
    .quad 4562254508917369340


    .p2align 2
    .globl _lb_10film_model_Model_viewed
_lb_10film_model_Model_viewed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    str x19, [sp, #520]
    str x20, [sp, #512]
    str x21, [sp, #504]
    str x22, [sp, #496]
    str x23, [sp, #488]
    str d8, [sp, #480]
    str d9, [sp, #472]
    str d10, [sp, #464]
    str d11, [sp, #456]
    str d12, [sp, #448]
    str d13, [sp, #440]
    str d14, [sp, #432]
    str d15, [sp, #424]
    sub x16, x29, #136
    str d0, [x16, #0]
    sub x16, x29, #136
    str d1, [x16, #8]
    sub x16, x29, #136
    str d2, [x16, #16]
    mov x14, x0
    mov x19, x1
    fmov d8, xzr
    add x20, x14, #2032
    fmov d9, #10.0000000
    adrp x21, _lb_19luce_color_spectral_observer@PAGE
    add x21, x21, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x22, #0
    fmov d10, d8
    fmov d11, d8
    fmov d12, d8
    fmov d13, d8
    fmov d14, d8
    fmov d15, d8
L27f9a934762f_1:
    cmp x22, #81
    b.hs L27f9a934762f_4
    .p2align 4
L27f9a934762f_2:
    ldr d24, [sp, #392]
    lsl x14, x22, #3
    add x15, x14, x20
    ldr d25, [x15]
    fmul d24, d24, d25
    ldr d25, [sp, #400]
    add x12, x22, #81
    movz x10, #243
    cmp x12, x10
    b.hs L27f9a934762f_c1
    ldr d26, [x15, #648]
    fmul d25, d25, d26
    fadd d24, d24, d25
    ldr d25, [sp, #408]
    add x12, x22, #162
    movz x10, #243
    cmp x12, x10
    b.hs L27f9a934762f_c2
    ldr d26, [x15, #1296]
    fmul d25, d25, d26
    fadd d24, d24, d25
    add x23, x14, x19
    ldr d25, [x23]
    fneg d24, d24
    str d25, [sp, #416]
    fmov d0, d9
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr d25, [sp, #416]
    fmul d24, d25, d24
    add x14, x22, x22, lsl #1
    add x15, x21, x14, lsl #3
    ldr d25, [x15]
    fmul d26, d24, d25
    fadd d10, d26, d10
    add x12, x14, #1
    movz x10, #243
    cmp x12, x10
    b.hs L27f9a934762f_c3
    ldr d26, [x15, #8]
    fmul d27, d24, d26
    fadd d11, d27, d11
    add x14, x14, #2
    movz x10, #243
    cmp x14, x10
    b.hs L27f9a934762f_c4
    ldr d27, [x15, #16]
    fmul d24, d24, d27
    fadd d12, d24, d12
    ldr d24, [x23]
    fmul d25, d25, d24
    fadd d13, d25, d13
    fmul d25, d26, d24
    fadd d14, d25, d14
    fmul d24, d27, d24
    fadd d15, d24, d15
    add x22, x22, #1
    cmp x22, #81
    b.lo L27f9a934762f_2
L27f9a934762f_4:
    fadd d24, d13, d14
    fadd d24, d24, d15
    fdiv d25, d13, d24
    fdiv d24, d14, d24
    str d25, [sp, #168]
    str d24, [sp, #176]
    adrp x14, _lb_14luce_color_xyz_d65@PAGE
    add x14, x14, _lb_14luce_color_xyz_d65@PAGEOFF
    sub x9, x29, #360
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x14, #0]
    ldr d3, [x14, #8]
    sub x8, x29, #176
    bl _lb_14luce_color_xyz_adapt
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
    fdiv d24, d10, d14
    fdiv d25, d11, d14
    fdiv d26, d12, d14
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
    ldr d27, [sp, #352]
    fmul d27, d24, d27
    ldr d28, [sp, #360]
    fmul d28, d25, d28
    fadd d27, d27, d28
    ldr d28, [sp, #368]
    fmul d28, d26, d28
    fadd d9, d27, d28
    ldr d27, [sp, #376]
    fmul d27, d24, d27
    ldr d28, [sp, #384]
    fmul d28, d25, d28
    fadd d27, d27, d28
    ldr d28, [sp, #392]
    fmul d28, d26, d28
    fadd d10, d27, d28
    ldr d27, [sp, #400]
    fmul d24, d24, d27
    ldr d27, [sp, #408]
    fmul d25, d25, d27
    fadd d24, d24, d25
    ldr d25, [sp, #416]
    fmul d25, d26, d25
    fadd d11, d24, d25
    adrp x14, _lb_14luce_color_xyz_srgb@PAGE
    add x14, x14, _lb_14luce_color_xyz_srgb@PAGEOFF
    sub x11, x29, #448
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x14, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x14, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x14, #48]
    stp x16, x17, [x11, #48]
    sub x9, x29, #448
    mov x0, x9
    sub x8, x29, #520
    bl _lb_14luce_color_xyz_10rgb_to_xyz
    sub x9, x29, #520
    mov x0, x9
    sub x8, x29, #248
    bl _lb_14luce_color_xyz_invert
    sub x10, x29, #248
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
    sub x10, x29, #320
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
    ldr d24, [sp, #352]
    fmul d24, d24, d9
    ldr d25, [sp, #360]
    fmul d25, d25, d10
    fadd d24, d24, d25
    ldr d25, [sp, #368]
    fmul d25, d25, d11
    fadd d24, d24, d25
    ldr d25, [sp, #376]
    fmul d25, d25, d9
    ldr d26, [sp, #384]
    fmul d26, d26, d10
    fadd d25, d25, d26
    ldr d26, [sp, #392]
    fmul d26, d26, d11
    fadd d25, d25, d26
    ldr d26, [sp, #400]
    fmul d26, d26, d9
    ldr d27, [sp, #408]
    fmul d27, d27, d10
    fadd d26, d26, d27
    ldr d27, [sp, #416]
    fmul d27, d27, d11
    fadd d26, d26, d27
    str d24, [sp, #144]
    str d25, [sp, #152]
    str d26, [sp, #160]
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L27f9a934762f_36
L27f9a934762f_35:
    b L27f9a934762f_56
L27f9a934762f_36:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L27f9a934762f_40
L27f9a934762f_39:
    fmov d25, d26
    b L27f9a934762f_56
L27f9a934762f_40:
    fcmp d25, d8
    b.ne L27f9a934762f_44
L27f9a934762f_46:
    fcmp d26, d8
    b.ne L27f9a934762f_44
L27f9a934762f_43:
    orr x14, x14, x15
    fmov d25, x14
    b L27f9a934762f_56
L27f9a934762f_44:
    fcmp d25, d26
    fcsel d25, d25, d26, mi
L27f9a934762f_56:
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L27f9a934762f_58
L27f9a934762f_57:
    b L27f9a934762f_78
L27f9a934762f_58:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L27f9a934762f_62
L27f9a934762f_61:
    fmov d24, d25
    b L27f9a934762f_78
L27f9a934762f_62:
    fcmp d8, d24
    b.ne L27f9a934762f_66
L27f9a934762f_68:
    fcmp d8, d25
    b.ne L27f9a934762f_66
L27f9a934762f_65:
    orr x14, x14, x15
    fmov d24, x14
    b L27f9a934762f_78
L27f9a934762f_66:
    fcmp d24, d25
    fcsel d24, d24, d25, mi
L27f9a934762f_78:
    fcmp d24, d8
    b.pl L27f9a934762f_6
L27f9a934762f_8:
    fcmp d10, d8
    b.le L27f9a934762f_6
L27f9a934762f_5:
    fsub d24, d10, d24
    fdiv d24, d10, d24
    dup v25.2d, v10.d[0]
    dup v26.2d, v24.d[0]
    mov x14, #0
L27f9a934762f_28:
    cmp x14, #2
    b.hs L27f9a934762f_30
    .p2align 4
L27f9a934762f_29:
    sub x9, x29, #384
    add x15, x9, x14, lsl #3
    ldr q27, [x15]
    fsub v27.2d, v27.2d, v25.2d
    fmul v27.2d, v26.2d, v27.2d
    fadd v27.2d, v27.2d, v25.2d
    str q27, [x15]
    add x14, x14, #2
    cmp x14, #2
    b.lo L27f9a934762f_29
L27f9a934762f_30:
    movz x14, #2
L27f9a934762f_9:
    cmp x14, #3
    b.hs L27f9a934762f_12
    .p2align 4
L27f9a934762f_10:
    sub x9, x29, #384
    add x15, x9, x14, lsl #3
    ldr d25, [x15]
    fsub d25, d25, d10
    fmul d25, d25, d24
    fadd d25, d25, d10
    str d25, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L27f9a934762f_10
L27f9a934762f_12:
L27f9a934762f_6:
L27f9a934762f_7:
    ldr d24, [sp, #144]
    fmov d9, #1.0000000
    fcmp d8, d9
    cset w19, ls
    cbz w19, L27f9a934762f_80
L27f9a934762f_79:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L27f9a934762f_82
L27f9a934762f_81:
    b L27f9a934762f_94
L27f9a934762f_82:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d9
    fcsel d24, d9, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L27f9a934762f_94:
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_encode
    fmov d10, d0
    ldr d24, [sp, #152]
    cbz w19, L27f9a934762f_96
L27f9a934762f_95:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L27f9a934762f_98
L27f9a934762f_97:
    b L27f9a934762f_110
L27f9a934762f_98:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d9
    fcsel d24, d9, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L27f9a934762f_110:
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_encode
    fmov d11, d0
    ldr d24, [sp, #160]
    cbz w19, L27f9a934762f_112
L27f9a934762f_111:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L27f9a934762f_114
L27f9a934762f_113:
    b L27f9a934762f_126
L27f9a934762f_114:
    fcmp d24, d8
    cset w14, mi
    fcmp d24, d9
    fcsel d24, d9, d24, gt
    cmp w14, #0
    fcsel d24, d8, d24, ne
L27f9a934762f_126:
    fmov d0, d24
    bl _lb_19luce_color_transfer_11srgb_encode
    fmov d24, d0
    fmov d0, d10
    fmov d1, d11
    fmov d2, d24
    bl _lb_view_undisplay
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
    sub x11, x29, #152
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr d10, L27f9a934762f_k0
    fmov x19, d8
    and x14, x19, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w20, hi
    fcmp d8, d8
    cset w21, eq
    mov x22, #0
L27f9a934762f_13:
    cmp x22, #3
    b.hs L27f9a934762f_16
    .p2align 4
L27f9a934762f_14:
    lsl x14, x22, #3
    sub x10, x29, #128
    ldr d24, [x10, x14]
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L27f9a934762f_128
L27f9a934762f_127:
    b L27f9a934762f_148
L27f9a934762f_128:
    cbz w20, L27f9a934762f_132
L27f9a934762f_131:
    fmov d24, d8
    b L27f9a934762f_148
L27f9a934762f_132:
    fcmp d24, d8
    b.ne L27f9a934762f_136
L27f9a934762f_138:
    cbz w21, L27f9a934762f_136
L27f9a934762f_135:
    and x15, x15, x19
    fmov d24, x15
    b L27f9a934762f_148
L27f9a934762f_136:
    fcmp d24, d8
    fcsel d24, d24, d8, gt
L27f9a934762f_148:
    fmul d24, d10, d24
    sub x9, x29, #152
    add x23, x9, x14
    fmul d25, d24, d24
    fadd d25, d25, d9
    fsqrt d25, d25
    fadd d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_9log_value
    fmov d24, d0
    str d24, [x23]
    add x22, x22, #1
    cmp x22, #3
    b.lo L27f9a934762f_14
L27f9a934762f_16:
    sub x10, x29, #152
    sub x11, x29, #344
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #344
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr x19, [sp, #520]
    ldr x20, [sp, #512]
    ldr x21, [sp, #504]
    ldr x22, [sp, #496]
    ldr x23, [sp, #488]
    ldr d8, [sp, #480]
    ldr d9, [sp, #472]
    ldr d10, [sp, #464]
    ldr d11, [sp, #456]
    ldr d12, [sp, #448]
    ldr d13, [sp, #440]
    ldr d14, [sp, #432]
    ldr d15, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27f9a934762f_80:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_96:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_112:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_c1:
    adrp x0, _lb_text_1c9130cbbef6@PAGE
    add x0, x0, _lb_text_1c9130cbbef6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_c2:
    adrp x0, _lb_text_1c9130cbbef6@PAGE
    add x0, x0, _lb_text_1c9130cbbef6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_c3:
    adrp x0, _lb_text_08affe82b345@PAGE
    add x0, x0, _lb_text_08affe82b345@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L27f9a934762f_c4:
    adrp x0, _lb_text_fae1be660457@PAGE
    add x0, x0, _lb_text_fae1be660457@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L27f9a934762f_k0:
    .quad 4643211215818981376


    .p2align 2
    .globl _lb_10film_model_Model_scanned
_lb_10film_model_Model_scanned:
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
    movz x10, #8952
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
    movz x10, #12864
    add x14, x19, x10
    sub x9, x29, #112
    ldr q24, [x9]
    ldr q25, [x14]
    fsub v24.2d, v24.2d, v25.2d
    ldr d25, [sp, #672]
    ldr d26, [x19, #12880]
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
.subsections_via_symbols
