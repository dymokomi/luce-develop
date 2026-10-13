    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_10float_text_11display_f64
_lb_10float_text_11display_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    fmov d24, d0
    ldr x19, [sp, #40]
    ldr x20, [sp, #48]
    sub x10, x29, #56
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    fmov x14, d24
    lsr x15, x14, #63
    cmp x15, #0
    cset w21, ne
    lsr x15, x14, #52
    and x15, x15, #2047
    and x14, x14, #4503599627370495
    cmp w15, #2047
    b.ne Lbf6727161cf8_7
Lbf6727161cf8_6:
    cmp x14, #0
    cset w14, ne
    str w21, [sp, #56]
    str w14, [sp, #40]
    ldrb w14, [sp, #40]
    cbz w14, Lbf6727161cf8_20
Lbf6727161cf8_19:
    adrp x14, _lb_text_80f289c137c7@PAGE
    add x14, x14, _lb_text_80f289c137c7@PAGEOFF
    mov x15, #0
Lbf6727161cf8_41:
    cmp x15, #3
    b.hs Lbf6727161cf8_43
    .p2align 4
Lbf6727161cf8_42:
    cmp x15, x20
    b.hs Lbf6727161cf8_c1
    add x12, x19, x15
    ldrb w13, [x14, x15]
    strb w13, [x12]
    add x15, x15, #1
    cmp x15, #3
    b.lo Lbf6727161cf8_42
Lbf6727161cf8_43:
Lbf6727161cf8_45:
    movz x14, #3
    b Lbf6727161cf8_27
Lbf6727161cf8_20:
    ldrb w14, [sp, #56]
    adrp x15, _lb_text_43a07b8010c4@PAGE
    add x15, x15, _lb_text_43a07b8010c4@PAGEOFF
    adrp x12, _lb_text_4106111be737@PAGE
    add x12, x12, _lb_text_4106111be737@PAGEOFF
    cmp w14, #0
    csel x15, x15, x12, ne
    cmp w14, #0
    movz x10, #4
    movz x11, #3
    csel x14, x10, x11, ne
    mov x12, #0
Lbf6727161cf8_46:
    cmp x12, x14
    b.hs Lbf6727161cf8_48
    .p2align 4
Lbf6727161cf8_47:
    cmp x12, x20
    b.hs Lbf6727161cf8_c2
    add x13, x19, x12
    ldrb w7, [x15, x12]
    strb w7, [x13]
    add x12, x12, #1
    cmp x12, x14
    b.lo Lbf6727161cf8_47
Lbf6727161cf8_48:
Lbf6727161cf8_50:
Lbf6727161cf8_27:
    b Lbf6727161cf8_28
Lbf6727161cf8_7:
    cmp w15, #0
    b.ne Lbf6727161cf8_11
Lbf6727161cf8_13:
    cmp x14, #0
    b.ne Lbf6727161cf8_11
Lbf6727161cf8_10:
    adrp x14, _lb_text_9eb6aaf1a724@PAGE
    add x14, x14, _lb_text_9eb6aaf1a724@PAGEOFF
    adrp x15, _lb_text_f1d2737b4ddc@PAGE
    add x15, x15, _lb_text_f1d2737b4ddc@PAGEOFF
    cmp w21, #0
    csel x14, x14, x15, ne
    cmp w21, #0
    movz x10, #2
    movz x11, #1
    csel x15, x10, x11, ne
    mov x12, #0
Lbf6727161cf8_51:
    cmp x12, x15
    b.hs Lbf6727161cf8_53
    .p2align 4
Lbf6727161cf8_52:
    cmp x12, x20
    b.hs Lbf6727161cf8_c3
    add x13, x19, x12
    ldrb w7, [x14, x12]
    strb w7, [x13]
    add x12, x12, #1
    cmp x12, x15
    b.lo Lbf6727161cf8_52
Lbf6727161cf8_53:
Lbf6727161cf8_55:
    mov x14, x15
    b Lbf6727161cf8_28
Lbf6727161cf8_11:
    mov x0, x14
    mov x1, x15
    bl _lb_10float_text_shortest64
    mov x14, x0
    mov x15, x1
    str x14, [sp, #56]
    str x15, [sp, #64]
    ldrsw x15, [sp, #64]
    mov x2, x21
    mov x3, x14
    mov x4, x15
    sub x9, x29, #88
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_10float_text_layout
    mov x14, x0
Lbf6727161cf8_28:
    mov x15, #0
Lbf6727161cf8_29:
    cmp x15, x14
    b.hs Lbf6727161cf8_31
    .p2align 4
Lbf6727161cf8_30:
    cmp x15, x20
    b.hs Lbf6727161cf8_c4
    ldrb w12, [x19, x15]
    cmp w12, #46
    b.eq Lbf6727161cf8_32
Lbf6727161cf8_37:
    cmp w12, #101
    b.eq Lbf6727161cf8_32
Lbf6727161cf8_36:
    cmp w12, #105
    b.eq Lbf6727161cf8_32
Lbf6727161cf8_35:
    cmp w12, #110
    b.ne Lbf6727161cf8_33
Lbf6727161cf8_32:
    b Lbf6727161cf8_40
Lbf6727161cf8_33:
    add x15, x15, #1
    cmp x15, x14
    b.lo Lbf6727161cf8_30
Lbf6727161cf8_31:
    cmp x14, x20
    b.hs Lbf6727161cf8_c5
    movz x9, #46
    strb w9, [x19, x14]
    add x15, x14, #1
    cmp x15, x20
    b.hs Lbf6727161cf8_c6
    movz x9, #48
    strb w9, [x15, x19]
    adds x14, x14, #2
    b.cs Lbf6727161cf8_c7
Lbf6727161cf8_40:
    mov x0, x14
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbf6727161cf8_c1:
    adrp x0, _lb_text_80c1bc984595@PAGE
    add x0, x0, _lb_text_80c1bc984595@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c2:
    adrp x0, _lb_text_80c1bc984595@PAGE
    add x0, x0, _lb_text_80c1bc984595@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c3:
    adrp x0, _lb_text_80c1bc984595@PAGE
    add x0, x0, _lb_text_80c1bc984595@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c4:
    adrp x0, _lb_text_f50545c76324@PAGE
    add x0, x0, _lb_text_f50545c76324@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c5:
    adrp x0, _lb_text_a0d20385de96@PAGE
    add x0, x0, _lb_text_a0d20385de96@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c6:
    adrp x0, _lb_text_864c5e4e77dc@PAGE
    add x0, x0, _lb_text_864c5e4e77dc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lbf6727161cf8_c7:
    adrp x0, _lb_text_d204a99e0beb@PAGE
    add x0, x0, _lb_text_d204a99e0beb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_densitometry_8status_a
_lb_densitometry_8status_a:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3904
    sub x16, x29, #8
    str x8, [x16]
    mov x0, #0
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
    .globl _lb_19luce_color_spectral_planck
_lb_19luce_color_spectral_planck:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1376
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #1360]
    str x20, [sp, #1352]
    str x21, [sp, #1344]
    str x22, [sp, #1336]
    str d8, [sp, #1328]
    str d9, [sp, #1320]
    str d10, [sp, #1312]
    str d11, [sp, #1304]
    str d12, [sp, #1296]
    fmov d8, d0
    sub x0, x29, #728
    mov x1, #0
    movz x2, #648
    bl _memset
    adrp x19, _lb_19luce_color_spectral_8first_nm@PAGE
    add x19, x19, _lb_19luce_color_spectral_8first_nm@PAGEOFF
    adrp x20, _lb_19luce_color_spectral_7step_nm@PAGE
    add x20, x20, _lb_19luce_color_spectral_7step_nm@PAGEOFF
    ldr d9, Lac716039de4e_k0
    fmov d10, #1.0000000
    ldr d11, Lac716039de4e_k1
    mov x21, #0
Lac716039de4e_1:
    cmp x21, #81
    b.hs Lac716039de4e_4
    .p2align 4
Lac716039de4e_2:
    ldr d24, [x19]
    ldr d25, [x20]
    ucvtf d26, x21
    fmul d25, d25, d26
    fadd d24, d24, d25
    fmul d24, d9, d24
    sub x9, x29, #728
    add x22, x9, x21, lsl #3
    fmul d25, d24, d24
    fmul d25, d24, d25
    fmul d25, d24, d25
    fmul d12, d24, d25
    fmul d24, d24, d8
    fdiv d24, d11, d24
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fsub d24, d24, d10
    fmul d24, d24, d12
    fdiv d24, d10, d24
    str d24, [x22]
    add x21, x21, #1
    cmp x21, #81
    b.lo Lac716039de4e_2
Lac716039de4e_4:
    fmov d24, xzr
    adrp x14, _lb_19luce_color_spectral_observer@PAGE
    add x14, x14, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x15, #0
    fmov d25, d24
    fmov d26, d24
Lac716039de4e_14:
    cmp x15, #81
    b.hs Lac716039de4e_17
    .p2align 4
Lac716039de4e_15:
    sub x10, x29, #728
    ldr d27, [x10, x15, lsl #3]
    add x12, x15, x15, lsl #1
    add x13, x14, x12, lsl #3
    ldr d28, [x13]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x7, x12, #1
    movz x10, #243
    cmp x7, x10
    b.hs Lac716039de4e_c1
    ldr d28, [x13, #8]
    fmul d28, d27, d28
    fadd d26, d28, d26
    add x12, x12, #2
    movz x10, #243
    cmp x12, x10
    b.hs Lac716039de4e_c2
    ldr d28, [x13, #16]
    fmul d27, d27, d28
    fadd d24, d27, d24
    add x15, x15, #1
    cmp x15, #81
    b.lo Lac716039de4e_15
Lac716039de4e_17:
Lac716039de4e_19:
    mov x14, #0
Lac716039de4e_5:
    cmp x14, #81
    b.hs Lac716039de4e_8
    .p2align 4
Lac716039de4e_6:
    sub x9, x29, #728
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d26
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #81
    b.lo Lac716039de4e_6
Lac716039de4e_8:
    sub x10, x29, #728
    sub x0, x29, #1376
    mov x1, x10
    movz x2, #648
    bl _memcpy
    sub x1, x29, #1376
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #648
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #1360]
    ldr x20, [sp, #1352]
    ldr x21, [sp, #1344]
    ldr x22, [sp, #1336]
    ldr d8, [sp, #1328]
    ldr d9, [sp, #1320]
    ldr d10, [sp, #1312]
    ldr d11, [sp, #1304]
    ldr d12, [sp, #1296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lac716039de4e_c1:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lac716039de4e_c2:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lac716039de4e_k0:
    .quad 4472406533629990549
Lac716039de4e_k1:
    .quad 4579447605922761315


    .p2align 2
    .globl _lb_10film_print_build
_lb_10film_print_build:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #624
    str x19, [sp, #616]
    str x20, [sp, #608]
    str x21, [sp, #600]
    str x22, [sp, #592]
    str x23, [sp, #584]
    str x24, [sp, #576]
    str x25, [sp, #568]
    str x26, [sp, #560]
    str x27, [sp, #552]
    str x28, [sp, #544]
    str d8, [sp, #536]
    str d9, [sp, #528]
    str d10, [sp, #520]
    str d11, [sp, #512]
    str d12, [sp, #504]
    str d13, [sp, #496]
    str d14, [sp, #488]
    str d15, [sp, #480]
    mov x19, x0
    fmov d8, xzr
    str d8, [sp, #112]
    str d8, [sp, #120]
    str d8, [sp, #128]
    ldr d9, Lb73c67441f15_k0
    ldr d10, Lb73c67441f15_k1
    fmov d11, #0.5000000
    fmov d12, #-0.5000000
    adrp x20, _lb_10film_print_8most_dye@PAGE
    add x20, x20, _lb_10film_print_8most_dye@PAGEOFF
    movz x10, #4320
    add x21, x19, x10
    fcmp d12, d11
    cset w22, ls
    fmov x23, d8
    and x14, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w24, hi
    fcmp d8, d8
    cset w25, eq
    mov x26, #0
Lb73c67441f15_1:
    cmp x26, #1024
    b.hs Lb73c67441f15_4
    .p2align 4
Lb73c67441f15_2:
    ldr d24, [x19, #4288]
    ldr d25, [x19, #4296]
    fsub d25, d25, d24
    ucvtf d26, x26
    fmul d25, d25, d26
    movz x9, #1023
    ucvtf d26, x9
    fdiv d25, d25, d26
    fadd d13, d24, d25
    fmov d0, d13
    mov x0, x19
    mov x1, #0
    bl _lb_10film_print_12over_minimum
    fmov d14, d0
    fmov d0, d13
    mov x0, x19
    movz x1, #1
    bl _lb_10film_print_12over_minimum
    fmov d15, d0
    fmov d0, d13
    mov x0, x19
    movz x1, #2
    bl _lb_10film_print_12over_minimum
    fmov d13, d0
    mov x27, #0
Lb73c67441f15_5:
    cmp x27, #30
    b.ge Lb73c67441f15_8
    .p2align 4
Lb73c67441f15_6:
    sub x9, x29, #512
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_PrintModel_read
    sub x16, x29, #192
    str d0, [x16, #0]
    sub x16, x29, #192
    str d1, [x16, #8]
    sub x16, x29, #192
    str d2, [x16, #16]
    sub x10, x29, #192
    sub x11, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #456]
    fsub d24, d24, d14
    ldr d25, [sp, #464]
    fsub d25, d25, d15
    ldr d26, [sp, #472]
    fsub d26, d26, d13
    fabs d27, d24
    fabs d28, d25
    fadd d27, d27, d28
    fabs d28, d26
    fadd d27, d27, d28
    fcmp d27, d9
    b.pl Lb73c67441f15_10
Lb73c67441f15_9:
    b Lb73c67441f15_8
Lb73c67441f15_10:
Lb73c67441f15_11:
    sub x11, x29, #584
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x28, #0
Lb73c67441f15_13:
    cmp x28, #3
    b.hs Lb73c67441f15_16
    .p2align 4
Lb73c67441f15_14:
    sub x10, x29, #512
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #608
    add x14, x9, x28, lsl #3
    ldr d27, [x14]
    fadd d27, d27, d10
    str d27, [x14]
    str d24, [sp, #152]
    str d25, [sp, #144]
    str d26, [sp, #136]
    sub x9, x29, #608
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_PrintModel_read
    sub x16, x29, #240
    str d0, [x16, #0]
    sub x16, x29, #240
    str d1, [x16, #8]
    sub x16, x29, #240
    str d2, [x16, #16]
    ldr d24, [sp, #152]
    ldr d25, [sp, #144]
    ldr d26, [sp, #136]
    sub x10, x29, #240
    sub x11, x29, #216
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x14, #0
Lb73c67441f15_17:
    cmp x14, #3
    b.hs Lb73c67441f15_20
    .p2align 4
Lb73c67441f15_18:
    add x15, x14, x14, lsl #1
    add x15, x15, x28
    movz x10, #9
    cmp x15, x10
    b.hs Lb73c67441f15_c1
    sub x9, x29, #584
    add x15, x9, x15, lsl #3
    lsl x12, x14, #3
    sub x11, x29, #216
    ldr d27, [x12, x11]
    sub x11, x29, #168
    ldr d28, [x12, x11]
    fsub d27, d27, d28
    fdiv d27, d27, d10
    str d27, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo Lb73c67441f15_18
Lb73c67441f15_20:
    add x28, x28, #1
    cmp x28, #3
    b.lo Lb73c67441f15_14
Lb73c67441f15_16:
    str d24, [sp, #152]
    str d25, [sp, #144]
    str d26, [sp, #136]
    sub x9, x29, #584
    mov x0, x9
    sub x8, x29, #392
    bl _lb_10film_print_invert
    ldr d24, [sp, #152]
    ldr d25, [sp, #144]
    ldr d26, [sp, #136]
    ldrb w14, [sp, #304]
    cbz w14, Lb73c67441f15_22
Lb73c67441f15_21:
    sub x10, x29, #392
    sub x11, x29, #464
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    b Lb73c67441f15_23
Lb73c67441f15_22:
    b Lb73c67441f15_8
Lb73c67441f15_23:
    sub x10, x29, #464
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
    mov x14, #0
Lb73c67441f15_25:
    cmp x14, #3
    b.hs Lb73c67441f15_28
    .p2align 4
Lb73c67441f15_26:
    add x15, x14, x14, lsl #1
    sub x9, x29, #312
    add x12, x9, x15, lsl #3
    ldr d27, [x12]
    fmul d27, d27, d24
    add x13, x15, #1
    movz x10, #9
    cmp x13, x10
    b.hs Lb73c67441f15_c2
    ldr d28, [x12, #8]
    fmul d28, d28, d25
    fadd d27, d27, d28
    add x15, x15, #2
    movz x10, #9
    cmp x15, x10
    b.hs Lb73c67441f15_c3
    ldr d28, [x12, #16]
    fmul d28, d28, d26
    fadd d27, d27, d28
    sub x9, x29, #512
    add x15, x9, x14, lsl #3
    ldr d28, [x15]
    cbz w22, Lb73c67441f15_69
Lb73c67441f15_68:
    fmov x12, d27
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lb73c67441f15_71
Lb73c67441f15_70:
    b Lb73c67441f15_83
Lb73c67441f15_71:
Lb73c67441f15_72:
    fcmp d27, d12
    cset w12, mi
    fcmp d27, d11
    fcsel d27, d11, d27, gt
    cmp w12, #0
    fcsel d27, d12, d27, ne
Lb73c67441f15_83:
    fsub d27, d28, d27
    ldr d28, [x20]
    fcmp d8, d28
    b.hi Lb73c67441f15_85
Lb73c67441f15_84:
    fmov x12, d27
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Lb73c67441f15_87
Lb73c67441f15_86:
    b Lb73c67441f15_99
Lb73c67441f15_87:
Lb73c67441f15_88:
    fcmp d27, d8
    cset w12, mi
    fcmp d27, d28
    fcsel d27, d28, d27, gt
    cmp w12, #0
    fcsel d27, d8, d27, ne
Lb73c67441f15_99:
    str d27, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo Lb73c67441f15_26
Lb73c67441f15_28:
    add x27, x27, #1
    cmp x27, #30
    b.lt Lb73c67441f15_6
Lb73c67441f15_8:
    cmp x26, #0
    cset w14, hi
    sub x15, x26, #1
    add x12, x26, x26, lsl #1
    mov x13, #0
Lb73c67441f15_29:
    cmp x13, #3
    b.hs Lb73c67441f15_32
    .p2align 4
Lb73c67441f15_30:
    cbz w14, Lb73c67441f15_34
Lb73c67441f15_33:
    movz x10, #3
    umulh x11, x15, x10
    add x7, x15, x15, lsl #1
    cbnz x11, Lb73c67441f15_c4
    adds x7, x7, x13
    b.cs Lb73c67441f15_c5
    movz x10, #3072
    cmp x7, x10
    b.hs Lb73c67441f15_c6
    ldr d24, [x21, x7, lsl #3]
    b Lb73c67441f15_35
Lb73c67441f15_34:
    fmov d24, d8
Lb73c67441f15_35:
    add x7, x12, x13
    movz x10, #3072
    cmp x7, x10
    b.hs Lb73c67441f15_c7
    add x7, x21, x7, lsl #3
    sub x10, x29, #512
    ldr d25, [x10, x13, lsl #3]
    fmov x6, d25
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Lb73c67441f15_101
Lb73c67441f15_100:
    b Lb73c67441f15_121
Lb73c67441f15_101:
Lb73c67441f15_102:
Lb73c67441f15_120:
    cbz w24, Lb73c67441f15_105
Lb73c67441f15_104:
    fmov d25, d8
    b Lb73c67441f15_121
Lb73c67441f15_105:
Lb73c67441f15_106:
    fcmp d25, d8
    b.ne Lb73c67441f15_109
Lb73c67441f15_111:
    cbz w25, Lb73c67441f15_109
Lb73c67441f15_108:
    and x6, x6, x23
    fmov d25, x6
    b Lb73c67441f15_121
Lb73c67441f15_109:
Lb73c67441f15_110:
    fcmp d25, d8
    fcsel d25, d25, d8, gt
Lb73c67441f15_121:
    fmov x6, d25
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Lb73c67441f15_123
Lb73c67441f15_122:
    b Lb73c67441f15_143
Lb73c67441f15_123:
Lb73c67441f15_124:
    fmov x5, d24
    and x4, x5, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x4, x10
    b.ls Lb73c67441f15_127
Lb73c67441f15_126:
    fmov d25, d24
    b Lb73c67441f15_143
Lb73c67441f15_127:
Lb73c67441f15_128:
    fcmp d8, d25
    b.ne Lb73c67441f15_131
Lb73c67441f15_133:
    fcmp d8, d24
    b.ne Lb73c67441f15_131
Lb73c67441f15_130:
    and x6, x6, x5
    fmov d25, x6
    b Lb73c67441f15_143
Lb73c67441f15_131:
Lb73c67441f15_132:
    fcmp d25, d24
    fcsel d25, d25, d24, gt
Lb73c67441f15_143:
    str d25, [x7]
    add x13, x13, #1
    cmp x13, #3
    b.lo Lb73c67441f15_30
Lb73c67441f15_32:
    add x26, x26, #1
    cmp x26, #1024
    b.lo Lb73c67441f15_2
Lb73c67441f15_4:
    movz x10, #28896
    add x20, x19, x10
    fmov d9, #1.0000000
    ldr d10, Lb73c67441f15_k2
    fmov x22, d10
    and x14, x22, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w23, hi
    fcmp d8, d10
    cset w24, eq
    mov x25, #0
Lb73c67441f15_36:
    cmp x25, #3
    b.hs Lb73c67441f15_39
    .p2align 4
Lb73c67441f15_37:
    add x26, x20, x25, lsl #3
    ldr d24, [x19, #4296]
    str d24, [x26]
    fmov d11, d8
    mov x27, #0
Lb73c67441f15_40:
    cmp x27, #1024
    b.hs Lb73c67441f15_43
    .p2align 4
Lb73c67441f15_41:
    ldr d24, [x19, #4288]
    ldr d25, [x19, #4296]
    fsub d25, d25, d24
    ucvtf d26, x27
    fmul d25, d25, d26
    movz x9, #1023
    ucvtf d12, x9
    fdiv d25, d25, d12
    fadd d24, d24, d25
    ldr d25, [x19, #4304]
    fcmp d25, d8
    b.le Lb73c67441f15_45
Lb73c67441f15_44:
    fmov d0, d24
    mov x0, x19
    mov x1, x25
    bl _lb_10film_print_12over_minimum
    fmov d24, d0
    b Lb73c67441f15_46
Lb73c67441f15_45:
    add x14, x27, x27, lsl #1
    add x14, x14, x25
    movz x10, #3072
    cmp x14, x10
    b.hs Lb73c67441f15_c8
    ldr d24, [x21, x14, lsl #3]
Lb73c67441f15_46:
    ldr d25, [x19, #4304]
    fcmp d25, d8
    fcsel d25, d25, d9, gt
    cmp x27, #0
    b.ls Lb73c67441f15_51
Lb73c67441f15_53:
    fcmp d24, d25
    b.lt Lb73c67441f15_51
Lb73c67441f15_50:
    fsub d25, d25, d11
    fsub d24, d24, d11
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Lb73c67441f15_145
Lb73c67441f15_144:
    b Lb73c67441f15_165
Lb73c67441f15_145:
Lb73c67441f15_146:
Lb73c67441f15_164:
    cbz w23, Lb73c67441f15_149
Lb73c67441f15_148:
    fmov d24, d10
    b Lb73c67441f15_165
Lb73c67441f15_149:
Lb73c67441f15_150:
    fcmp d24, d8
    b.ne Lb73c67441f15_153
Lb73c67441f15_155:
    cbz w24, Lb73c67441f15_153
Lb73c67441f15_152:
    and x14, x14, x22
    fmov d24, x14
    b Lb73c67441f15_165
Lb73c67441f15_153:
Lb73c67441f15_154:
    fcmp d24, d10
    fcsel d24, d24, d10, gt
Lb73c67441f15_165:
    fdiv d24, d25, d24
    ldr d25, [x19, #4288]
    ldr d26, [x19, #4296]
    fsub d26, d26, d25
    sub x14, x27, #1
    ucvtf d27, x14
    fadd d24, d24, d27
    fmul d24, d26, d24
    fdiv d24, d24, d12
    fadd d24, d25, d24
    str d24, [x26]
    b Lb73c67441f15_43
Lb73c67441f15_51:
Lb73c67441f15_52:
    add x27, x27, #1
    fmov d11, d24
    cmp x27, #1024
    b.lo Lb73c67441f15_41
Lb73c67441f15_43:
    add x25, x25, #1
    cmp x25, #3
    b.lo Lb73c67441f15_37
Lb73c67441f15_39:
    movz x10, #30864
    add x14, x19, x10
    adrp x15, _lb_19luce_color_spectral_observer@PAGE
    add x15, x15, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x12, #0
    fmov d24, d8
    fmov d25, d8
    fmov d26, d8
Lb73c67441f15_166:
    cmp x12, #81
    b.hs Lb73c67441f15_169
    .p2align 4
Lb73c67441f15_167:
    ldr d27, [x14, x12, lsl #3]
    add x13, x12, x12, lsl #1
    add x7, x15, x13, lsl #3
    ldr d28, [x7]
    fmul d28, d27, d28
    fadd d24, d28, d24
    add x6, x13, #1
    movz x10, #243
    cmp x6, x10
    b.hs Lb73c67441f15_c9
    ldr d28, [x7, #8]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x13, x13, #2
    movz x10, #243
    cmp x13, x10
    b.hs Lb73c67441f15_c10
    ldr d28, [x7, #16]
    fmul d27, d27, d28
    fadd d26, d27, d26
    add x12, x12, #1
    cmp x12, #81
    b.lo Lb73c67441f15_167
Lb73c67441f15_169:
Lb73c67441f15_171:
    str d24, [x19, #31512]
    str d25, [x19, #31520]
    str d26, [x19, #31528]
    fadd d27, d24, d25
    fadd d26, d27, d26
    fdiv d24, d24, d26
    fdiv d25, d25, d26
    str d24, [sp, #0]
    str d25, [sp, #8]
    movz x10, #31536
    add x21, x19, x10
    adrp x14, _lb_14luce_color_xyz_d65@PAGE
    add x14, x14, _lb_14luce_color_xyz_d65@PAGEOFF
    sub x9, x29, #624
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x14, #0]
    ldr d3, [x14, #8]
    sub x8, x29, #216
    bl _lb_14luce_color_xyz_adapt
    sub x10, x29, #216
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x21, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x21, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x21, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x21, #48]
    ldr x16, [x10, #64]
    str x16, [x21, #64]
    ldr d24, [x19, #4304]
    fcmp d24, d8
    b.pl Lb73c67441f15_56
Lb73c67441f15_55:
    mov x0, x19
    bl _lb_10film_print_11visual_grey
    adrp x14, _lb_10film_print_14lad_below_grey@PAGE
    add x14, x14, _lb_10film_print_14lad_below_grey@PAGEOFF
    mov x15, #0
Lb73c67441f15_58:
    cmp x15, #3
    b.hs Lb73c67441f15_61
    .p2align 4
Lb73c67441f15_59:
    add x12, x20, x15, lsl #3
    ldr d24, [x12]
    ldr d25, [x14]
    fsub d24, d24, d25
    str d24, [x12]
    add x15, x15, #1
    cmp x15, #3
    b.lo Lb73c67441f15_59
Lb73c67441f15_61:
Lb73c67441f15_56:
Lb73c67441f15_57:
    ldr x19, [sp, #616]
    ldr x20, [sp, #608]
    ldr x21, [sp, #600]
    ldr x22, [sp, #592]
    ldr x23, [sp, #584]
    ldr x24, [sp, #576]
    ldr x25, [sp, #568]
    ldr x26, [sp, #560]
    ldr x27, [sp, #552]
    ldr x28, [sp, #544]
    ldr d8, [sp, #536]
    ldr d9, [sp, #528]
    ldr d10, [sp, #520]
    ldr d11, [sp, #512]
    ldr d12, [sp, #504]
    ldr d13, [sp, #496]
    ldr d14, [sp, #488]
    ldr d15, [sp, #480]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb73c67441f15_69:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_85:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c1:
    adrp x0, _lb_text_522e4e6bcf36@PAGE
    add x0, x0, _lb_text_522e4e6bcf36@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c2:
    adrp x0, _lb_text_5a4b9445fe18@PAGE
    add x0, x0, _lb_text_5a4b9445fe18@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c3:
    adrp x0, _lb_text_5a4b9445fe18@PAGE
    add x0, x0, _lb_text_5a4b9445fe18@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c4:
    adrp x0, _lb_text_3a8061649c01@PAGE
    add x0, x0, _lb_text_3a8061649c01@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c5:
    adrp x0, _lb_text_3a8061649c01@PAGE
    add x0, x0, _lb_text_3a8061649c01@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c6:
    adrp x0, _lb_text_3a8061649c01@PAGE
    add x0, x0, _lb_text_3a8061649c01@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c7:
    adrp x0, _lb_text_e02c0ef52b32@PAGE
    add x0, x0, _lb_text_e02c0ef52b32@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c8:
    adrp x0, _lb_text_8219c99b0a33@PAGE
    add x0, x0, _lb_text_8219c99b0a33@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c9:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb73c67441f15_c10:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lb73c67441f15_k0:
    .quad 4502148214488346440
Lb73c67441f15_k1:
    .quad 4547007122018943789
Lb73c67441f15_k2:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_13luce_std_math_11log10_value
_lb_13luce_std_math_11log10_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    movz x10, #16, lsl #48
    sub x15, x14, x10
    movz x10, #32736, lsl #48
    cmp x15, x10
    b.hs L671567902f2e_2
L671567902f2e_1:
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
    ldr d27, L671567902f2e_k0
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
    ldr d20, L671567902f2e_k1
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
    ldr d28, L671567902f2e_k2
    fmadd d27, d29, d27, d28
    ldr d28, L671567902f2e_k3
    ldr d31, L671567902f2e_k4
    fmadd d28, d29, d28, d31
    fmov d31, #-0.1250000
    ldr d19, L671567902f2e_k5
    fmadd d31, d29, d31, d19
    ldr d19, L671567902f2e_k6
    ldr d20, L671567902f2e_k7
    fmadd d19, d29, d19, d20
    fmul d20, d30, d30
    fmadd d31, d30, d19, d31
    fmadd d27, d30, d28, d27
    fmadd d27, d20, d31, d27
    fmul d28, d29, d30
    fmul d27, d27, d28
    fadd d26, d27, d26
    fadd d25, d26, d25
    ldr d26, L671567902f2e_k8
    ldr d27, L671567902f2e_k9
    fmul d28, d26, d21
    fneg d29, d28
    fmadd d29, d21, d26, d29
    fmul d27, d27, d21
    fmul d25, d26, d25
    fadd d25, d27, d25
    fadd d25, d25, d29
    fadd d26, d25, d28
    fsub d27, d26, d28
    fsub d25, d25, d27
    ldr d27, L671567902f2e_k10
    fabs d28, d26
    fmul d27, d27, d28
    fsub d28, d25, d27
    fadd d28, d26, d28
    fadd d27, d25, d27
    fadd d27, d26, d27
    fcmp d28, d27
    b.ne L671567902f2e_5
L671567902f2e_4:
    fadd d24, d26, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L671567902f2e_5:
L671567902f2e_2:
L671567902f2e_3:
    fmov d0, d24
    bl _lb_13luce_std_math_14log10_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L671567902f2e_k0:
    .quad 4604418534313441280
L671567902f2e_k1:
    .quad 4408728642709317424
L671567902f2e_k2:
    .quad 4599676419421066581
L671567902f2e_k3:
    .quad 13818544856648471893
L671567902f2e_k4:
    .quad 4596373779694328218
L671567902f2e_k5:
    .quad 4594314991293244562
L671567902f2e_k6:
    .quad 13815242216921733530
L671567902f2e_k7:
    .quad 4592670820000712476
L671567902f2e_k8:
    .quad 4601495173785380110
L671567902f2e_k9:
    .quad 4353102142499388115
L671567902f2e_k10:
    .quad 4327959241903046656


    .p2align 2
    .globl _lb_densitometry_status
_lb_densitometry_status:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4272
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #4256]
    str x20, [sp, #4248]
    str x21, [sp, #4240]
    str x22, [sp, #4232]
    str x23, [sp, #4224]
    str x24, [sp, #4216]
    str x25, [sp, #4208]
    str x26, [sp, #4200]
    str x27, [sp, #4192]
    str x28, [sp, #4184]
    str d8, [sp, #4176]
    str d9, [sp, #4168]
    str d10, [sp, #4160]
    str d11, [sp, #4152]
    str d12, [sp, #4144]
    str d13, [sp, #4136]
    str d14, [sp, #4128]
    mov x17, x0
    str x17, [sp, #4120]
    sub x0, x29, #2096
    mov x1, #0
    movz x2, #1944
    bl _memset
    fmov d8, xzr
    fmov d9, #10.0000000
    adrp x9, _lb_19luce_color_spectral_8first_nm@PAGE
    add x9, x9, _lb_19luce_color_spectral_8first_nm@PAGEOFF
    str x9, [sp, #2168]
    adrp x9, _lb_19luce_color_spectral_7step_nm@PAGE
    add x9, x9, _lb_19luce_color_spectral_7step_nm@PAGEOFF
    str x9, [sp, #2160]
    ldr d10, L71f1ad7f99d5_k0
    ldr d11, L71f1ad7f99d5_k1
    fmov d12, #1.0000000
    adrp x22, _lb_densitometry_tails@PAGE
    add x22, x22, _lb_densitometry_tails@PAGEOFF
    fmov d13, #5.0000000
    adrp x23, _lb_densitometry_11iso_m_green@PAGE
    add x23, x23, _lb_densitometry_11iso_m_green@PAGEOFF
    adrp x24, _lb_densitometry_9iso_m_red@PAGE
    add x24, x24, _lb_densitometry_9iso_m_red@PAGEOFF
    adrp x25, _lb_densitometry_10iso_a_blue@PAGE
    add x25, x25, _lb_densitometry_10iso_a_blue@PAGEOFF
    adrp x26, _lb_densitometry_11iso_a_green@PAGE
    add x26, x26, _lb_densitometry_11iso_a_green@PAGEOFF
    adrp x27, _lb_densitometry_9iso_a_red@PAGE
    add x27, x27, _lb_densitometry_9iso_a_red@PAGEOFF
    adrp x28, _lb_densitometry_10iso_m_blue@PAGE
    add x28, x28, _lb_densitometry_10iso_m_blue@PAGEOFF
    adrp x9, _lb_densitometry_11iso_m_green@PAGE
    add x9, x9, _lb_densitometry_11iso_m_green@PAGEOFF
    str x9, [sp, #2152]
    adrp x9, _lb_densitometry_9iso_m_red@PAGE
    add x9, x9, _lb_densitometry_9iso_m_red@PAGEOFF
    str x9, [sp, #2144]
    adrp x9, _lb_densitometry_10iso_a_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_a_blue@PAGEOFF
    str x9, [sp, #2136]
    adrp x9, _lb_densitometry_11iso_a_green@PAGE
    add x9, x9, _lb_densitometry_11iso_a_green@PAGEOFF
    str x9, [sp, #2128]
    adrp x9, _lb_densitometry_9iso_a_red@PAGE
    add x9, x9, _lb_densitometry_9iso_a_red@PAGEOFF
    str x9, [sp, #2120]
    adrp x9, _lb_densitometry_10iso_m_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_m_blue@PAGEOFF
    str x9, [sp, #2112]
    adrp x9, _lb_densitometry_11iso_m_green@PAGE
    add x9, x9, _lb_densitometry_11iso_m_green@PAGEOFF
    str x9, [sp, #2104]
    adrp x9, _lb_densitometry_9iso_m_red@PAGE
    add x9, x9, _lb_densitometry_9iso_m_red@PAGEOFF
    str x9, [sp, #2096]
    adrp x9, _lb_densitometry_10iso_a_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_a_blue@PAGEOFF
    str x9, [sp, #2088]
    adrp x9, _lb_densitometry_11iso_a_green@PAGE
    add x9, x9, _lb_densitometry_11iso_a_green@PAGEOFF
    str x9, [sp, #2080]
    adrp x9, _lb_densitometry_9iso_a_red@PAGE
    add x9, x9, _lb_densitometry_9iso_a_red@PAGEOFF
    str x9, [sp, #2072]
    adrp x9, _lb_densitometry_10iso_m_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_m_blue@PAGEOFF
    str x9, [sp, #2064]
    adrp x9, _lb_densitometry_11iso_m_green@PAGE
    add x9, x9, _lb_densitometry_11iso_m_green@PAGEOFF
    str x9, [sp, #2056]
    adrp x9, _lb_densitometry_9iso_m_red@PAGE
    add x9, x9, _lb_densitometry_9iso_m_red@PAGEOFF
    str x9, [sp, #2048]
    adrp x9, _lb_densitometry_10iso_a_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_a_blue@PAGEOFF
    str x9, [sp, #2040]
    adrp x9, _lb_densitometry_11iso_a_green@PAGE
    add x9, x9, _lb_densitometry_11iso_a_green@PAGEOFF
    str x9, [sp, #2032]
    adrp x9, _lb_densitometry_9iso_a_red@PAGE
    add x9, x9, _lb_densitometry_9iso_a_red@PAGEOFF
    str x9, [sp, #2024]
    adrp x9, _lb_densitometry_10iso_m_blue@PAGE
    add x9, x9, _lb_densitometry_10iso_m_blue@PAGEOFF
    str x9, [sp, #2016]
    adrp x13, _lb_densitometry_11iso_m_green@PAGE
    add x13, x13, _lb_densitometry_11iso_m_green@PAGEOFF
    adrp x7, _lb_densitometry_9iso_m_red@PAGE
    add x7, x7, _lb_densitometry_9iso_m_red@PAGEOFF
    adrp x6, _lb_densitometry_10iso_a_blue@PAGE
    add x6, x6, _lb_densitometry_10iso_a_blue@PAGEOFF
    adrp x5, _lb_densitometry_11iso_a_green@PAGE
    add x5, x5, _lb_densitometry_11iso_a_green@PAGEOFF
    adrp x4, _lb_densitometry_9iso_a_red@PAGE
    add x4, x4, _lb_densitometry_9iso_a_red@PAGEOFF
    adrp x3, _lb_densitometry_10iso_m_blue@PAGE
    add x3, x3, _lb_densitometry_10iso_m_blue@PAGEOFF
    mov x2, #0
L71f1ad7f99d5_1:
    cmp x2, #3
    b.hs L71f1ad7f99d5_4
    .p2align 4
L71f1ad7f99d5_2:
    movz x10, #81
    mul x1, x2, x10
    fmov d14, d8
    mov x0, #0
L71f1ad7f99d5_5:
    cmp x0, #81
    b.hs L71f1ad7f99d5_8
    .p2align 4
L71f1ad7f99d5_6:
    ldr x9, [sp, #4120]
    adds x19, x9, x2
    b.cs L71f1ad7f99d5_c1
    ldr x9, [sp, #2168]
    ldr d24, [x9]
    ldr x9, [sp, #2160]
    ldr d25, [x9]
    ucvtf d26, x0
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x20, #38
    mov x21, #0
    mov x14, #0
L71f1ad7f99d5_16:
    cmp x14, #38
    b.hs L71f1ad7f99d5_19
    .p2align 4
L71f1ad7f99d5_17:
    cmp x19, #5
    b.hs L71f1ad7f99d5_49
    adr x10, L71f1ad7f99d5_jt0
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L71f1ad7f99d5_jt0:
    .long L71f1ad7f99d5_44 - L71f1ad7f99d5_jt0
    .long L71f1ad7f99d5_45 - L71f1ad7f99d5_jt0
    .long L71f1ad7f99d5_46 - L71f1ad7f99d5_jt0
    .long L71f1ad7f99d5_47 - L71f1ad7f99d5_jt0
    .long L71f1ad7f99d5_48 - L71f1ad7f99d5_jt0
L71f1ad7f99d5_44:
    ldr d25, [x27, x14, lsl #3]
    b L71f1ad7f99d5_43
L71f1ad7f99d5_45:
    ldr d25, [x26, x14, lsl #3]
    b L71f1ad7f99d5_43
L71f1ad7f99d5_46:
    ldr d25, [x25, x14, lsl #3]
    b L71f1ad7f99d5_43
L71f1ad7f99d5_47:
    ldr d25, [x24, x14, lsl #3]
    b L71f1ad7f99d5_43
L71f1ad7f99d5_48:
    ldr d25, [x23, x14, lsl #3]
    b L71f1ad7f99d5_43
L71f1ad7f99d5_49:
    ldr d25, [x28, x14, lsl #3]
L71f1ad7f99d5_43:
L71f1ad7f99d5_51:
    fcmp d25, d10
    cset w15, gt
    cmp x14, x20
    csel x12, x14, x20, lo
    cmp w15, #0
    csel x12, x12, x20, ne
    cmp w15, #0
    csel x15, x14, x21, ne
    add x14, x14, #1
    mov x20, x12
    mov x21, x15
    cmp x14, #38
    b.lo L71f1ad7f99d5_17
L71f1ad7f99d5_19:
    ucvtf d25, x20
    fmul d25, d25, d9
    fadd d25, d25, d11
    ucvtf d26, x21
    fmul d26, d26, d9
    fadd d26, d26, d11
    fcmp d24, d25
    b.hi L71f1ad7f99d5_27
L71f1ad7f99d5_26:
    cmp x19, #5
    b.hs L71f1ad7f99d5_58
    adr x10, L71f1ad7f99d5_jt1
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L71f1ad7f99d5_jt1:
    .long L71f1ad7f99d5_53 - L71f1ad7f99d5_jt1
    .long L71f1ad7f99d5_54 - L71f1ad7f99d5_jt1
    .long L71f1ad7f99d5_55 - L71f1ad7f99d5_jt1
    .long L71f1ad7f99d5_56 - L71f1ad7f99d5_jt1
    .long L71f1ad7f99d5_57 - L71f1ad7f99d5_jt1
L71f1ad7f99d5_53:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c2
    ldr d26, [x4, x20, lsl #3]
    b L71f1ad7f99d5_52
L71f1ad7f99d5_54:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c3
    ldr d26, [x5, x20, lsl #3]
    b L71f1ad7f99d5_52
L71f1ad7f99d5_55:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c4
    ldr d26, [x6, x20, lsl #3]
    b L71f1ad7f99d5_52
L71f1ad7f99d5_56:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c5
    ldr d26, [x7, x20, lsl #3]
    b L71f1ad7f99d5_52
L71f1ad7f99d5_57:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c6
    ldr d26, [x13, x20, lsl #3]
    b L71f1ad7f99d5_52
L71f1ad7f99d5_58:
    movz x10, #38
    cmp x20, x10
    b.hs L71f1ad7f99d5_c7
    ldr d26, [x3, x20, lsl #3]
L71f1ad7f99d5_52:
L71f1ad7f99d5_60:
    movz x10, #2
    umulh x11, x19, x10
    lsl x14, x19, #1
    cbnz x11, L71f1ad7f99d5_c8
    movz x10, #12
    cmp x14, x10
    b.hs L71f1ad7f99d5_c9
    ldr d27, [x22, x14, lsl #3]
    fsub d24, d25, d24
    fmul d24, d27, d24
    fsub d24, d26, d24
    b L71f1ad7f99d5_40
L71f1ad7f99d5_27:
L71f1ad7f99d5_28:
    fcmp d24, d26
    b.lt L71f1ad7f99d5_31
L71f1ad7f99d5_30:
    cmp x19, #5
    b.hs L71f1ad7f99d5_67
    adr x10, L71f1ad7f99d5_jt2
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L71f1ad7f99d5_jt2:
    .long L71f1ad7f99d5_62 - L71f1ad7f99d5_jt2
    .long L71f1ad7f99d5_63 - L71f1ad7f99d5_jt2
    .long L71f1ad7f99d5_64 - L71f1ad7f99d5_jt2
    .long L71f1ad7f99d5_65 - L71f1ad7f99d5_jt2
    .long L71f1ad7f99d5_66 - L71f1ad7f99d5_jt2
L71f1ad7f99d5_62:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c10
    ldr x10, [sp, #2024]
    ldr d25, [x10, x21, lsl #3]
    b L71f1ad7f99d5_61
L71f1ad7f99d5_63:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c11
    ldr x10, [sp, #2032]
    ldr d25, [x10, x21, lsl #3]
    b L71f1ad7f99d5_61
L71f1ad7f99d5_64:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c12
    ldr x10, [sp, #2040]
    ldr d25, [x10, x21, lsl #3]
    b L71f1ad7f99d5_61
L71f1ad7f99d5_65:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c13
    ldr x10, [sp, #2048]
    ldr d25, [x10, x21, lsl #3]
    b L71f1ad7f99d5_61
L71f1ad7f99d5_66:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c14
    ldr x10, [sp, #2056]
    ldr d25, [x10, x21, lsl #3]
    b L71f1ad7f99d5_61
L71f1ad7f99d5_67:
    movz x10, #38
    cmp x21, x10
    b.hs L71f1ad7f99d5_c15
    ldr x10, [sp, #2016]
    ldr d25, [x10, x21, lsl #3]
L71f1ad7f99d5_61:
L71f1ad7f99d5_69:
    movz x10, #2
    umulh x11, x19, x10
    lsl x14, x19, #1
    cbnz x11, L71f1ad7f99d5_c16
    adds x14, x14, #1
    b.cs L71f1ad7f99d5_c17
    movz x10, #12
    cmp x14, x10
    b.hs L71f1ad7f99d5_c18
    ldr d27, [x22, x14, lsl #3]
    fsub d24, d24, d26
    fmul d24, d27, d24
    fadd d24, d24, d25
    b L71f1ad7f99d5_40
L71f1ad7f99d5_31:
L71f1ad7f99d5_32:
    fsub d24, d24, d11
    fdiv d24, d24, d9
    frintm d25, d24
    fcvtzu x14, d25
    ucvtf d25, x14
    fsub d24, d24, d25
    cmp x14, x21
    add x12, x14, #1
    csel x15, x12, x21, lo
    cmp x19, #5
    b.hs L71f1ad7f99d5_76
    adr x10, L71f1ad7f99d5_jt3
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L71f1ad7f99d5_jt3:
    .long L71f1ad7f99d5_71 - L71f1ad7f99d5_jt3
    .long L71f1ad7f99d5_72 - L71f1ad7f99d5_jt3
    .long L71f1ad7f99d5_73 - L71f1ad7f99d5_jt3
    .long L71f1ad7f99d5_74 - L71f1ad7f99d5_jt3
    .long L71f1ad7f99d5_75 - L71f1ad7f99d5_jt3
L71f1ad7f99d5_71:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c19
    ldr x10, [sp, #2120]
    ldr d25, [x10, x14, lsl #3]
    b L71f1ad7f99d5_70
L71f1ad7f99d5_72:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c20
    ldr x10, [sp, #2128]
    ldr d25, [x10, x14, lsl #3]
    b L71f1ad7f99d5_70
L71f1ad7f99d5_73:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c21
    ldr x10, [sp, #2136]
    ldr d25, [x10, x14, lsl #3]
    b L71f1ad7f99d5_70
L71f1ad7f99d5_74:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c22
    ldr x10, [sp, #2144]
    ldr d25, [x10, x14, lsl #3]
    b L71f1ad7f99d5_70
L71f1ad7f99d5_75:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c23
    ldr x10, [sp, #2152]
    ldr d25, [x10, x14, lsl #3]
    b L71f1ad7f99d5_70
L71f1ad7f99d5_76:
    movz x10, #38
    cmp x14, x10
    b.hs L71f1ad7f99d5_c24
    ldr x10, [sp, #2112]
    ldr d25, [x10, x14, lsl #3]
L71f1ad7f99d5_70:
L71f1ad7f99d5_78:
    fsub d26, d12, d24
    fmul d25, d26, d25
    cmp x19, #5
    b.hs L71f1ad7f99d5_85
    adr x10, L71f1ad7f99d5_jt4
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L71f1ad7f99d5_jt4:
    .long L71f1ad7f99d5_80 - L71f1ad7f99d5_jt4
    .long L71f1ad7f99d5_81 - L71f1ad7f99d5_jt4
    .long L71f1ad7f99d5_82 - L71f1ad7f99d5_jt4
    .long L71f1ad7f99d5_83 - L71f1ad7f99d5_jt4
    .long L71f1ad7f99d5_84 - L71f1ad7f99d5_jt4
L71f1ad7f99d5_80:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c25
    ldr x10, [sp, #2072]
    ldr d26, [x10, x15, lsl #3]
    b L71f1ad7f99d5_79
L71f1ad7f99d5_81:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c26
    ldr x10, [sp, #2080]
    ldr d26, [x10, x15, lsl #3]
    b L71f1ad7f99d5_79
L71f1ad7f99d5_82:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c27
    ldr x10, [sp, #2088]
    ldr d26, [x10, x15, lsl #3]
    b L71f1ad7f99d5_79
L71f1ad7f99d5_83:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c28
    ldr x10, [sp, #2096]
    ldr d26, [x10, x15, lsl #3]
    b L71f1ad7f99d5_79
L71f1ad7f99d5_84:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c29
    ldr x10, [sp, #2104]
    ldr d26, [x10, x15, lsl #3]
    b L71f1ad7f99d5_79
L71f1ad7f99d5_85:
    movz x10, #38
    cmp x15, x10
    b.hs L71f1ad7f99d5_c30
    ldr x10, [sp, #2064]
    ldr d26, [x10, x15, lsl #3]
L71f1ad7f99d5_79:
L71f1ad7f99d5_87:
    fmul d24, d24, d26
    fadd d24, d24, d25
L71f1ad7f99d5_40:
    fsub d24, d24, d13
    str x4, [sp, #1976]
    str x5, [sp, #1984]
    str x6, [sp, #1992]
    str x7, [sp, #2000]
    str x13, [sp, #2008]
    str x3, [sp, #1968]
    str x2, [sp, #1960]
    str x1, [sp, #1952]
    str x0, [sp, #1944]
    fmov d0, d9
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr x4, [sp, #1976]
    ldr x5, [sp, #1984]
    ldr x6, [sp, #1992]
    ldr x7, [sp, #2000]
    ldr x13, [sp, #2008]
    ldr x3, [sp, #1968]
    ldr x2, [sp, #1960]
    ldr x1, [sp, #1952]
    ldr x0, [sp, #1944]
    add x14, x1, x0
    movz x10, #243
    cmp x14, x10
    b.hs L71f1ad7f99d5_c31
    sub x10, x29, #2096
    str d24, [x10, x14, lsl #3]
    fadd d14, d14, d24
    add x0, x0, #1
    cmp x0, #81
    b.lo L71f1ad7f99d5_6
L71f1ad7f99d5_8:
    mov x14, #0
L71f1ad7f99d5_9:
    cmp x14, #81
    b.hs L71f1ad7f99d5_12
    .p2align 4
L71f1ad7f99d5_10:
    add x15, x1, x14
    movz x10, #243
    cmp x15, x10
    b.hs L71f1ad7f99d5_c32
    sub x9, x29, #2096
    add x15, x9, x15, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d14
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #81
    b.lo L71f1ad7f99d5_10
L71f1ad7f99d5_12:
    add x2, x2, #1
    cmp x2, #3
    b.lo L71f1ad7f99d5_2
L71f1ad7f99d5_4:
    sub x10, x29, #2096
    movz x16, #4272
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #4272
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1944
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #4256]
    ldr x20, [sp, #4248]
    ldr x21, [sp, #4240]
    ldr x22, [sp, #4232]
    ldr x23, [sp, #4224]
    ldr x24, [sp, #4216]
    ldr x25, [sp, #4208]
    ldr x26, [sp, #4200]
    ldr x27, [sp, #4192]
    ldr x28, [sp, #4184]
    ldr d8, [sp, #4176]
    ldr d9, [sp, #4168]
    ldr d10, [sp, #4160]
    ldr d11, [sp, #4152]
    ldr d12, [sp, #4144]
    ldr d13, [sp, #4136]
    ldr d14, [sp, #4128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L71f1ad7f99d5_c1:
    adrp x0, _lb_text_46ff12707fee@PAGE
    add x0, x0, _lb_text_46ff12707fee@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c2:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c3:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c4:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c5:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c6:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c7:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c8:
    adrp x0, _lb_text_356c6d90c7b7@PAGE
    add x0, x0, _lb_text_356c6d90c7b7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c9:
    adrp x0, _lb_text_356c6d90c7b7@PAGE
    add x0, x0, _lb_text_356c6d90c7b7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c10:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c11:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c12:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c13:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c14:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c15:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c16:
    adrp x0, _lb_text_b55d4fd20bf5@PAGE
    add x0, x0, _lb_text_b55d4fd20bf5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c17:
    adrp x0, _lb_text_b55d4fd20bf5@PAGE
    add x0, x0, _lb_text_b55d4fd20bf5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c18:
    adrp x0, _lb_text_b55d4fd20bf5@PAGE
    add x0, x0, _lb_text_b55d4fd20bf5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c19:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c20:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c21:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c22:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c23:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c24:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c25:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c26:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c27:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c28:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c29:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c30:
    adrp x0, _lb_text_d973baec5d9c@PAGE
    add x0, x0, _lb_text_d973baec5d9c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c31:
    adrp x0, _lb_text_f148a62849d0@PAGE
    add x0, x0, _lb_text_f148a62849d0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L71f1ad7f99d5_c32:
    adrp x0, _lb_text_c92b1b758e45@PAGE
    add x0, x0, _lb_text_c92b1b758e45@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L71f1ad7f99d5_k0:
    .quad 13855605728582041600
L71f1ad7f99d5_k1:
    .quad 4645744490609377280


    .p2align 2
    .globl _lb_19luce_color_spectral_Spectrum_xyz
_lb_19luce_color_spectral_Spectrum_xyz:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    fmov d24, xzr
    adrp x15, _lb_19luce_color_spectral_observer@PAGE
    add x15, x15, _lb_19luce_color_spectral_observer@PAGEOFF
    mov x12, #0
    fmov d25, d24
    fmov d26, d24
L495b1649e8a9_1:
    cmp x12, #81
    b.hs L495b1649e8a9_4
    .p2align 4
L495b1649e8a9_2:
    ldr d27, [x14, x12, lsl #3]
    add x13, x12, x12, lsl #1
    add x7, x15, x13, lsl #3
    ldr d28, [x7]
    fmul d28, d27, d28
    fadd d25, d28, d25
    add x6, x13, #1
    movz x10, #243
    cmp x6, x10
    b.hs L495b1649e8a9_c1
    ldr d28, [x7, #8]
    fmul d28, d27, d28
    fadd d26, d28, d26
    add x13, x13, #2
    movz x10, #243
    cmp x13, x10
    b.hs L495b1649e8a9_c2
    ldr d28, [x7, #16]
    fmul d27, d27, d28
    fadd d24, d27, d24
    add x12, x12, #1
    cmp x12, #81
    b.lo L495b1649e8a9_2
L495b1649e8a9_4:
    fmov d0, d25
    fmov d1, d26
    fmov d2, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L495b1649e8a9_c1:
    adrp x0, _lb_text_305488c40321@PAGE
    add x0, x0, _lb_text_305488c40321@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L495b1649e8a9_c2:
    adrp x0, _lb_text_e2b039a920f6@PAGE
    add x0, x0, _lb_text_e2b039a920f6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10film_print_12over_minimum
_lb_10film_print_12over_minimum:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    mov x14, x0
    mov x15, x1
    ldr x12, [x14, #1976]
    add x13, x14, #1984
    movz x10, #96
    umulh x11, x15, x10
    mul x15, x15, x10
    cbnz x11, Ld78b984a5b53_c1
    adds x7, x12, x15
    b.cs Ld78b984a5b53_c2
    movz x10, #288
    cmp x15, x10
    b.hi Ld78b984a5b53_c3
    movz x10, #288
    cmp x7, x10
    b.hi Ld78b984a5b53_c4
    cmp x15, x7
    b.hi Ld78b984a5b53_2
Ld78b984a5b53_1:
    add x15, x13, x15, lsl #3
    mov x9, #0
    cmp x9, x12
    b.hs Ld78b984a5b53_c5
    ldr d25, [x15]
    fmov d26, xzr
    mov x13, #0
Ld78b984a5b53_3:
    cmp x13, x12
    b.hs Ld78b984a5b53_6
    .p2align 4
Ld78b984a5b53_4:
    ldr d27, [x15, x13, lsl #3]
    fmov x7, d25
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls Ld78b984a5b53_11
Ld78b984a5b53_10:
    b Ld78b984a5b53_31
Ld78b984a5b53_11:
Ld78b984a5b53_12:
    fmov x6, d27
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Ld78b984a5b53_15
Ld78b984a5b53_14:
    fmov d25, d27
    b Ld78b984a5b53_31
Ld78b984a5b53_15:
Ld78b984a5b53_16:
    fcmp d25, d26
    b.ne Ld78b984a5b53_19
Ld78b984a5b53_21:
    fcmp d27, d26
    b.ne Ld78b984a5b53_19
Ld78b984a5b53_18:
    orr x7, x7, x6
    fmov d25, x7
    b Ld78b984a5b53_31
Ld78b984a5b53_19:
Ld78b984a5b53_20:
    fcmp d25, d27
    fcsel d25, d25, d27, mi
Ld78b984a5b53_31:
    add x13, x13, #1
    cmp x13, x12
    b.lo Ld78b984a5b53_4
Ld78b984a5b53_6:
    ldr d26, [x14, #1960]
    fsub d24, d24, d26
    ldr d26, [x14, #1968]
    fdiv d24, d24, d26
    fmov d26, xzr
    sub x14, x12, #1
    ucvtf d27, x14
    fcmp d26, d27
    b.hi Ld78b984a5b53_33
Ld78b984a5b53_32:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld78b984a5b53_35
Ld78b984a5b53_34:
    b Ld78b984a5b53_47
Ld78b984a5b53_35:
Ld78b984a5b53_36:
    fcmp d24, d26
    cset w14, mi
    fcmp d24, d27
    fcsel d24, d27, d24, gt
    cmp w14, #0
    fcsel d24, d26, d24, ne
Ld78b984a5b53_47:
    frintm d27, d24
    subs x14, x12, #2
    b.cc Ld78b984a5b53_c6
    ucvtf d28, x14
    fmov x14, d27
    and x13, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Ld78b984a5b53_49
Ld78b984a5b53_48:
    b Ld78b984a5b53_69
Ld78b984a5b53_49:
Ld78b984a5b53_50:
    fmov x13, d28
    and x7, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x7, x10
    b.ls Ld78b984a5b53_53
Ld78b984a5b53_52:
    fmov d27, d28
    b Ld78b984a5b53_69
Ld78b984a5b53_53:
Ld78b984a5b53_54:
    fcmp d26, d27
    b.ne Ld78b984a5b53_57
Ld78b984a5b53_59:
    fcmp d26, d28
    b.ne Ld78b984a5b53_57
Ld78b984a5b53_56:
    orr x14, x14, x13
    fmov d27, x14
    b Ld78b984a5b53_69
Ld78b984a5b53_57:
Ld78b984a5b53_58:
    fcmp d27, d28
    fcsel d27, d27, d28, mi
Ld78b984a5b53_69:
    fcvtzu x14, d27
    ucvtf d26, x14
    fsub d24, d24, d26
    cmp x14, x12
    b.hs Ld78b984a5b53_c7
    add x15, x15, x14, lsl #3
    ldr d26, [x15]
    add x14, x14, #1
    cmp x14, x12
    b.hs Ld78b984a5b53_c8
    ldr d27, [x15, #8]
    fsub d27, d27, d26
    fmul d24, d24, d27
    fadd d24, d26, d24
    fsub d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld78b984a5b53_2:
    adrp x0, _lb_text_517338e9dca5@PAGE
    add x0, x0, _lb_text_517338e9dca5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_33:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c1:
    adrp x0, _lb_text_517338e9dca5@PAGE
    add x0, x0, _lb_text_517338e9dca5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c2:
    adrp x0, _lb_text_517338e9dca5@PAGE
    add x0, x0, _lb_text_517338e9dca5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c3:
    adrp x0, _lb_text_517338e9dca5@PAGE
    add x0, x0, _lb_text_517338e9dca5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c4:
    adrp x0, _lb_text_517338e9dca5@PAGE
    add x0, x0, _lb_text_517338e9dca5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c5:
    adrp x0, _lb_text_823493eb585b@PAGE
    add x0, x0, _lb_text_823493eb585b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c6:
    adrp x0, _lb_text_d5b7376a0116@PAGE
    add x0, x0, _lb_text_d5b7376a0116@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c7:
    adrp x0, _lb_text_172919cd6eb1@PAGE
    add x0, x0, _lb_text_172919cd6eb1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld78b984a5b53_c8:
    adrp x0, _lb_text_172919cd6eb1@PAGE
    add x0, x0, _lb_text_172919cd6eb1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10film_print_invert
_lb_10film_print_invert:
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
    ldr d10, Lb8b8c49eaf23_k0
    fcmp d9, d10
    b.pl Lb8b8c49eaf23_2
Lb8b8c49eaf23_1:
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
Lb8b8c49eaf23_2:
Lb8b8c49eaf23_3:
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
Lb8b8c49eaf23_k0:
    .quad 4397347889687374747


    .p2align 2
    .globl _lb_14luce_color_xyz_adapt
_lb_14luce_color_xyz_adapt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #592]
    str d8, [sp, #584]
    str d9, [sp, #576]
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #64
    str d2, [x16, #0]
    sub x16, x29, #64
    str d3, [x16, #8]
    ldr d24, [sp, #560]
    ldr d25, [sp, #544]
    fsub d26, d24, d25
    fabs d26, d26
    ldr d27, L8a3f439d0c64_k0
    fcmp d26, d27
    b.pl L8a3f439d0c64_2
L8a3f439d0c64_4:
    ldr d26, [sp, #568]
    ldr d28, [sp, #552]
    fsub d26, d26, d28
    fabs d26, d26
    fcmp d26, d27
    b.pl L8a3f439d0c64_2
L8a3f439d0c64_1:
    sub x11, x29, #136
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d24, #1.0000000
    str d24, [sp, #400]
    fmov d25, xzr
    str d25, [sp, #408]
    str d25, [sp, #416]
    str d25, [sp, #424]
    str d24, [sp, #432]
    str d25, [sp, #440]
    str d25, [sp, #448]
    str d25, [sp, #456]
    str d24, [sp, #464]
    sub x10, x29, #208
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
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
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x1, x29, #608
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
    ldr x19, [sp, #592]
    ldr d8, [sp, #584]
    ldr d9, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8a3f439d0c64_2:
L8a3f439d0c64_3:
    adrp x19, _lb_14luce_color_xyz_bradford@PAGE
    add x19, x19, _lb_14luce_color_xyz_bradford@PAGEOFF
    sub x11, x29, #136
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x19, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x19, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x19, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x19, #64]
    str x16, [x11, #64]
    ldr d26, [sp, #568]
    fmov d8, xzr
    fdiv d27, d24, d26
    fmov d9, #1.0000000
    fsub d24, d9, d24
    fsub d24, d24, d26
    fdiv d24, d24, d26
    sub x10, x29, #136
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
    ldr d26, [sp, #400]
    fmul d26, d27, d26
    ldr d28, [sp, #408]
    fmul d28, d9, d28
    fadd d26, d26, d28
    ldr d28, [sp, #416]
    fmul d28, d24, d28
    fadd d26, d26, d28
    ldr d28, [sp, #424]
    fmul d28, d27, d28
    ldr d29, [sp, #432]
    fmul d29, d9, d29
    fadd d28, d28, d29
    ldr d29, [sp, #440]
    fmul d29, d24, d29
    fadd d28, d28, d29
    ldr d29, [sp, #448]
    fmul d27, d27, d29
    ldr d29, [sp, #456]
    fmul d29, d9, d29
    fadd d27, d27, d29
    ldr d29, [sp, #464]
    fmul d24, d24, d29
    fadd d24, d27, d24
    sub x11, x29, #136
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x19, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x19, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x19, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x19, #64]
    str x16, [x11, #64]
    ldr d27, [sp, #552]
    fdiv d29, d25, d27
    fsub d25, d9, d25
    fsub d25, d25, d27
    fdiv d25, d25, d27
    sub x10, x29, #136
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
    ldr d27, [sp, #400]
    fmul d27, d29, d27
    ldr d30, [sp, #408]
    fmul d30, d9, d30
    fadd d27, d27, d30
    ldr d30, [sp, #416]
    fmul d30, d25, d30
    fadd d27, d27, d30
    ldr d30, [sp, #424]
    fmul d30, d29, d30
    ldr d31, [sp, #432]
    fmul d31, d9, d31
    fadd d30, d30, d31
    ldr d31, [sp, #440]
    fmul d31, d25, d31
    fadd d30, d30, d31
    ldr d31, [sp, #448]
    fmul d29, d29, d31
    ldr d31, [sp, #456]
    fmul d31, d9, d31
    fadd d29, d29, d31
    ldr d31, [sp, #464]
    fmul d25, d25, d31
    fadd d25, d29, d25
    sub x11, x29, #176
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #360]
    str d8, [sp, #368]
    str d8, [sp, #376]
    str d8, [sp, #384]
    str d9, [sp, #392]
    str d8, [sp, #400]
    str d8, [sp, #408]
    str d8, [sp, #416]
    str d9, [sp, #424]
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
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    fdiv d26, d27, d26
    str d26, [sp, #432]
    str d8, [sp, #440]
    str d8, [sp, #448]
    str d8, [sp, #456]
    fdiv d26, d30, d28
    str d26, [sp, #464]
    str d8, [sp, #472]
    str d8, [sp, #480]
    str d8, [sp, #488]
    fdiv d24, d25, d24
    str d24, [sp, #496]
    sub x10, x29, #176
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    mov x0, x19
    sub x8, x29, #176
    bl _lb_14luce_color_xyz_invert
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
    sub x11, x29, #104
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x19, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x19, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x19, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x19, #64]
    str x16, [x11, #64]
    sub x11, x29, #392
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #144]
    str d8, [sp, #152]
    str d8, [sp, #160]
    str d8, [sp, #168]
    str d9, [sp, #176]
    str d8, [sp, #184]
    str d8, [sp, #192]
    str d8, [sp, #200]
    str d9, [sp, #208]
    sub x10, x29, #464
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
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
    mov x14, #0
L8a3f439d0c64_19:
    cmp x14, #3
    b.hs L8a3f439d0c64_22
    .p2align 4
L8a3f439d0c64_20:
    add x15, x14, x14, lsl #1
    mov x12, #0
L8a3f439d0c64_23:
    cmp x12, #3
    b.hs L8a3f439d0c64_26
    .p2align 4
L8a3f439d0c64_24:
    fmov d24, d8
    mov x13, #0
L8a3f439d0c64_27:
    cmp x13, #3
    b.hs L8a3f439d0c64_30
    .p2align 4
L8a3f439d0c64_28:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L8a3f439d0c64_c1
    sub x10, x29, #176
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L8a3f439d0c64_c2
    sub x10, x29, #104
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L8a3f439d0c64_28
L8a3f439d0c64_30:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L8a3f439d0c64_c3
    sub x10, x29, #320
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L8a3f439d0c64_24
L8a3f439d0c64_26:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8a3f439d0c64_20
L8a3f439d0c64_22:
    sub x10, x29, #320
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
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
    sub x10, x29, #248
    sub x11, x29, #536
    ldp x16, x17, [x10, #0]
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
    sub x11, x29, #392
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d9, [sp, #144]
    str d8, [sp, #152]
    str d8, [sp, #160]
    str d8, [sp, #168]
    str d9, [sp, #176]
    str d8, [sp, #184]
    str d8, [sp, #192]
    str d8, [sp, #200]
    str d9, [sp, #208]
    sub x10, x29, #464
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #392
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
    mov x14, #0
L8a3f439d0c64_33:
    cmp x14, #3
    b.hs L8a3f439d0c64_36
    .p2align 4
L8a3f439d0c64_34:
    add x15, x14, x14, lsl #1
    mov x12, #0
L8a3f439d0c64_37:
    cmp x12, #3
    b.hs L8a3f439d0c64_40
    .p2align 4
L8a3f439d0c64_38:
    fmov d24, d8
    mov x13, #0
L8a3f439d0c64_41:
    cmp x13, #3
    b.hs L8a3f439d0c64_44
    .p2align 4
L8a3f439d0c64_42:
    add x7, x15, x13
    movz x10, #9
    cmp x7, x10
    b.hs L8a3f439d0c64_c4
    sub x10, x29, #536
    ldr d25, [x10, x7, lsl #3]
    add x7, x13, x13, lsl #1
    add x7, x7, x12
    movz x10, #9
    cmp x7, x10
    b.hs L8a3f439d0c64_c5
    sub x10, x29, #248
    ldr d26, [x10, x7, lsl #3]
    fmul d25, d25, d26
    fadd d24, d25, d24
    add x13, x13, #1
    cmp x13, #3
    b.lo L8a3f439d0c64_42
L8a3f439d0c64_44:
    add x13, x15, x12
    movz x10, #9
    cmp x13, x10
    b.hs L8a3f439d0c64_c6
    sub x10, x29, #320
    str d24, [x10, x13, lsl #3]
    add x12, x12, #1
    cmp x12, #3
    b.lo L8a3f439d0c64_38
L8a3f439d0c64_40:
    add x14, x14, #1
    cmp x14, #3
    b.lo L8a3f439d0c64_34
L8a3f439d0c64_36:
    sub x10, x29, #320
    sub x11, x29, #104
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
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
    sub x10, x29, #176
    sub x11, x29, #608
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x1, x29, #608
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
    ldr x19, [sp, #592]
    ldr d8, [sp, #584]
    ldr d9, [sp, #576]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8a3f439d0c64_c1:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8a3f439d0c64_c2:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8a3f439d0c64_c3:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8a3f439d0c64_c4:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8a3f439d0c64_c5:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8a3f439d0c64_c6:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L8a3f439d0c64_k0:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_10film_print_11visual_grey
_lb_10film_print_11visual_grey:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    str x19, [sp, #504]
    str x20, [sp, #496]
    str x21, [sp, #488]
    str x22, [sp, #480]
    str x23, [sp, #472]
    str x24, [sp, #464]
    str d8, [sp, #456]
    str d9, [sp, #448]
    str d10, [sp, #440]
    mov x19, x0
    fmov d24, #1.0000000
    str d24, [sp, #96]
    str d24, [sp, #104]
    str d24, [sp, #112]
    ldr d8, L28250e0c9e8d_k0
    ldr d9, L28250e0c9e8d_k1
    fmov d10, xzr
    fmov x20, d10
    and x14, x20, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w21, hi
    fcmp d10, d10
    cset w22, eq
    mov x23, #0
L28250e0c9e8d_1:
    cmp x23, #40
    b.ge L28250e0c9e8d_4
    .p2align 4
L28250e0c9e8d_2:
    sub x9, x29, #416
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_9grey_miss
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
    ldr d24, [sp, #416]
    fabs d24, d24
    ldr d25, [sp, #424]
    fabs d25, d25
    fadd d24, d24, d25
    ldr d25, [sp, #432]
    fabs d25, d25
    fadd d24, d24, d25
    fcmp d24, d8
    b.pl L28250e0c9e8d_6
L28250e0c9e8d_5:
    b L28250e0c9e8d_4
L28250e0c9e8d_6:
L28250e0c9e8d_7:
    sub x11, x29, #488
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x24, #0
L28250e0c9e8d_9:
    cmp x24, #3
    b.hs L28250e0c9e8d_12
    .p2align 4
L28250e0c9e8d_10:
    sub x10, x29, #416
    sub x11, x29, #512
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x9, x29, #512
    add x14, x9, x24, lsl #3
    ldr d24, [x14]
    fadd d24, d24, d9
    str d24, [x14]
    sub x9, x29, #512
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    bl _lb_10film_print_9grey_miss
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
    mov x14, #0
L28250e0c9e8d_13:
    cmp x14, #3
    b.hs L28250e0c9e8d_16
    .p2align 4
L28250e0c9e8d_14:
    add x15, x14, x14, lsl #1
    add x15, x15, x24
    movz x10, #9
    cmp x15, x10
    b.hs L28250e0c9e8d_c1
    sub x9, x29, #488
    add x15, x9, x15, lsl #3
    lsl x12, x14, #3
    sub x11, x29, #144
    ldr d24, [x12, x11]
    sub x11, x29, #96
    ldr d25, [x12, x11]
    fsub d24, d24, d25
    fdiv d24, d24, d9
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L28250e0c9e8d_14
L28250e0c9e8d_16:
    add x24, x24, #1
    cmp x24, #3
    b.lo L28250e0c9e8d_10
L28250e0c9e8d_12:
    sub x9, x29, #488
    mov x0, x9
    sub x8, x29, #320
    bl _lb_10film_print_invert
    ldrb w14, [sp, #264]
    cbz w14, L28250e0c9e8d_18
L28250e0c9e8d_17:
    sub x10, x29, #320
    sub x11, x29, #392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    b L28250e0c9e8d_19
L28250e0c9e8d_18:
    b L28250e0c9e8d_4
L28250e0c9e8d_19:
    sub x10, x29, #392
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
    mov x14, #0
L28250e0c9e8d_21:
    cmp x14, #3
    b.hs L28250e0c9e8d_24
    .p2align 4
L28250e0c9e8d_22:
    sub x9, x29, #416
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    add x12, x14, x14, lsl #1
    sub x9, x29, #240
    add x13, x9, x12, lsl #3
    ldr d25, [x13]
    ldr d26, [sp, #416]
    fmul d25, d25, d26
    add x7, x12, #1
    movz x10, #9
    cmp x7, x10
    b.hs L28250e0c9e8d_c2
    ldr d26, [x13, #8]
    ldr d27, [sp, #424]
    fmul d26, d26, d27
    fadd d25, d25, d26
    add x12, x12, #2
    movz x10, #9
    cmp x12, x10
    b.hs L28250e0c9e8d_c3
    ldr d26, [x13, #16]
    ldr d27, [sp, #432]
    fmul d26, d26, d27
    fadd d25, d25, d26
    fsub d24, d24, d25
    str d24, [x15]
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L28250e0c9e8d_45
L28250e0c9e8d_44:
    b L28250e0c9e8d_65
L28250e0c9e8d_45:
L28250e0c9e8d_46:
L28250e0c9e8d_64:
    cbz w21, L28250e0c9e8d_49
L28250e0c9e8d_48:
    fmov d24, d10
    b L28250e0c9e8d_65
L28250e0c9e8d_49:
L28250e0c9e8d_50:
    fcmp d24, d10
    b.ne L28250e0c9e8d_53
L28250e0c9e8d_55:
    cbz w22, L28250e0c9e8d_53
L28250e0c9e8d_52:
    and x12, x12, x20
    fmov d24, x12
    b L28250e0c9e8d_65
L28250e0c9e8d_53:
L28250e0c9e8d_54:
    fcmp d24, d10
    fcsel d24, d24, d10, gt
L28250e0c9e8d_65:
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #3
    b.lo L28250e0c9e8d_22
L28250e0c9e8d_24:
    add x23, x23, #1
    cmp x23, #40
    b.lt L28250e0c9e8d_2
L28250e0c9e8d_4:
    sub x10, x29, #416
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x10, #4320
    add x14, x19, x10
    ldr d24, L28250e0c9e8d_k2
    movz x10, #28896
    add x15, x19, x10
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    cset w13, hi
    fcmp d10, d24
    cset w7, eq
    mov x6, #0
L28250e0c9e8d_31:
    cmp x6, #3
    b.hs L28250e0c9e8d_34
    .p2align 4
L28250e0c9e8d_32:
    lsl x5, x6, #3
    sub x9, x29, #96
    add x4, x9, x5
    movz x3, #1
L28250e0c9e8d_35:
    cmp x3, #1024
    b.hs L28250e0c9e8d_38
    .p2align 4
L28250e0c9e8d_36:
    add x2, x3, x3, lsl #1
    add x2, x2, x6
    movz x10, #3072
    cmp x2, x10
    b.hs L28250e0c9e8d_c4
    ldr d25, [x14, x2, lsl #3]
    ldr d26, [x4]
    fcmp d25, d26
    b.lt L28250e0c9e8d_40
L28250e0c9e8d_39:
    subs x4, x3, #1
    b.cc L28250e0c9e8d_c5
    movz x10, #3
    umulh x11, x4, x10
    add x3, x4, x4, lsl #1
    cbnz x11, L28250e0c9e8d_c6
    adds x3, x3, x6
    b.cs L28250e0c9e8d_c7
    movz x10, #3072
    cmp x3, x10
    b.hs L28250e0c9e8d_c8
    ldr d27, [x14, x3, lsl #3]
    fsub d26, d26, d27
    fsub d25, d25, d27
    fmov x3, d25
    and x2, x3, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x2, x10
    b.ls L28250e0c9e8d_67
L28250e0c9e8d_66:
    b L28250e0c9e8d_87
L28250e0c9e8d_67:
L28250e0c9e8d_68:
L28250e0c9e8d_86:
    cbz w13, L28250e0c9e8d_71
L28250e0c9e8d_70:
    fmov d25, d24
    b L28250e0c9e8d_87
L28250e0c9e8d_71:
L28250e0c9e8d_72:
    fcmp d25, d10
    b.ne L28250e0c9e8d_75
L28250e0c9e8d_77:
    cbz w7, L28250e0c9e8d_75
L28250e0c9e8d_74:
    and x3, x3, x12
    fmov d25, x3
    b L28250e0c9e8d_87
L28250e0c9e8d_75:
L28250e0c9e8d_76:
    fcmp d25, d24
    fcsel d25, d25, d24, gt
L28250e0c9e8d_87:
    fdiv d25, d26, d25
    add x5, x15, x5
    ldr d26, [x19, #4288]
    ldr d27, [x19, #4296]
    fsub d27, d27, d26
    ucvtf d28, x4
    fadd d25, d25, d28
    fmul d25, d27, d25
    movz x9, #1023
    ucvtf d27, x9
    fdiv d25, d25, d27
    fadd d25, d26, d25
    str d25, [x5]
    b L28250e0c9e8d_38
L28250e0c9e8d_40:
L28250e0c9e8d_41:
    add x3, x3, #1
    cmp x3, #1024
    b.lo L28250e0c9e8d_36
L28250e0c9e8d_38:
    add x6, x6, #1
    cmp x6, #3
    b.lo L28250e0c9e8d_32
L28250e0c9e8d_34:
    ldr x19, [sp, #504]
    ldr x20, [sp, #496]
    ldr x21, [sp, #488]
    ldr x22, [sp, #480]
    ldr x23, [sp, #472]
    ldr x24, [sp, #464]
    ldr d8, [sp, #456]
    ldr d9, [sp, #448]
    ldr d10, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28250e0c9e8d_c1:
    adrp x0, _lb_text_31480f471fe3@PAGE
    add x0, x0, _lb_text_31480f471fe3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c2:
    adrp x0, _lb_text_e4aa21336dad@PAGE
    add x0, x0, _lb_text_e4aa21336dad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c3:
    adrp x0, _lb_text_e4aa21336dad@PAGE
    add x0, x0, _lb_text_e4aa21336dad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c4:
    adrp x0, _lb_text_fd3f863727aa@PAGE
    add x0, x0, _lb_text_fd3f863727aa@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c5:
    adrp x0, _lb_text_852f7ca4c84b@PAGE
    add x0, x0, _lb_text_852f7ca4c84b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c6:
    adrp x0, _lb_text_852f7ca4c84b@PAGE
    add x0, x0, _lb_text_852f7ca4c84b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c7:
    adrp x0, _lb_text_852f7ca4c84b@PAGE
    add x0, x0, _lb_text_852f7ca4c84b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L28250e0c9e8d_c8:
    adrp x0, _lb_text_852f7ca4c84b@PAGE
    add x0, x0, _lb_text_852f7ca4c84b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L28250e0c9e8d_k0:
    .quad 4502148214488346440
L28250e0c9e8d_k1:
    .quad 4547007122018943789
L28250e0c9e8d_k2:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_10film_print_15make_reflection
_lb_10film_print_15make_reflection:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    str d8, [sp, #16]
    str d9, [sp, #8]
    str d10, [sp, #0]
    fmov d8, #1.0000000
    fmov d0, d8
    bl _lb_10film_print_body
    fmov d9, d0
    adrp x19, _lb_10film_print_15reflection_most@PAGE
    add x19, x19, _lb_10film_print_15reflection_most@PAGEOFF
    adrp x20, _lb_10film_print_16reflection_table@PAGE
    add x20, x20, _lb_10film_print_16reflection_table@PAGEOFF
    fmov d10, #10.0000000
    adrp x21, _lb_10film_print_12surface_seen@PAGE
    add x21, x21, _lb_10film_print_12surface_seen@PAGEOFF
    mov x22, #0
Lfc9218e38b4c_1:
    cmp x22, #600
    b.hs Lfc9218e38b4c_4
    .p2align 4
Lfc9218e38b4c_2:
    ldr d24, [x19]
    ucvtf d25, x22
    fmul d24, d24, d25
    movz x9, #599
    ucvtf d25, x9
    fdiv d24, d24, d25
    add x23, x20, x22, lsl #3
    fneg d24, d24
    fmov d0, d10
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmov d0, d24
    bl _lb_10film_print_body
    fmov d24, d0
    ldr d25, [x21]
    fmul d26, d9, d25
    fadd d24, d24, d26
    fadd d25, d8, d25
    fmul d25, d9, d25
    fdiv d24, d24, d25
    str d24, [x23]
    add x22, x22, #1
    cmp x22, #600
    b.lo Lfc9218e38b4c_2
Lfc9218e38b4c_4:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr d8, [sp, #16]
    ldr d9, [sp, #8]
    ldr d10, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_9pow_value
_lb_13luce_std_math_9pow_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    fmov d25, d1
    fabs d26, d24
    fmov x14, d26
    movz x10, #16, lsl #48
    sub x15, x14, x10
    movz x10, #32736, lsl #48
    cmp x15, x10
    b.hs Lae5448f005be_2
Lae5448f005be_4:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.hs Lae5448f005be_2
Lae5448f005be_1:
    fmov d26, xzr
    fcmp d24, d26
    b.pl Lae5448f005be_6
Lae5448f005be_5:
    lsr x12, x15, #52
    and x12, x12, #2047
    subs x12, x12, #1023
    b.vs Lae5448f005be_c1
    cmp x12, #0
    b.ge Lae5448f005be_67
Lae5448f005be_66:
    mov w15, #0
    b Lae5448f005be_91
Lae5448f005be_67:
    cmp x12, #52
    b.le Lae5448f005be_71
Lae5448f005be_70:
    movz w15, #2
    b Lae5448f005be_91
Lae5448f005be_71:
    movz x9, #52
    subs x13, x9, x12
    b.vs Lae5448f005be_c2
    and x15, x15, #4503599627370495
    cmp x13, #0
    b.ls Lae5448f005be_75
Lae5448f005be_77:
    cmp x13, #64
    b.hs Lae5448f005be_78
Lae5448f005be_79:
    movz x9, #1
    lsl x7, x9, x13
    subs x7, x7, #1
    b.cc Lae5448f005be_c3
    and x7, x7, x15
    cmp x7, #0
    b.eq Lae5448f005be_75
Lae5448f005be_74:
    mov w15, #0
    b Lae5448f005be_91
Lae5448f005be_75:
    cmp x12, #0
    b.ne Lae5448f005be_82
Lae5448f005be_81:
    movz w15, #1
    b Lae5448f005be_91
Lae5448f005be_82:
    cmp x13, #64
    b.hs Lae5448f005be_88
Lae5448f005be_89:
    lsr x15, x15, x13
    and x15, x15, #1
    cmp x15, #1
    movz x10, #1
    movz x11, #2
    csel w15, w10, w11, eq
Lae5448f005be_91:
    b Lae5448f005be_7
Lae5448f005be_6:
    movz w15, #2
Lae5448f005be_7:
    cmp w15, #0
    b.eq Lae5448f005be_9
Lae5448f005be_8:
    movz x10, #16358, lsl #48
    sub x12, x14, x10
    lsr x13, x12, #45
    and x13, x13, #127
    asr x7, x12, #52
    scvtf d26, x7
    and x12, x12, #18442240474082181120
    sub x14, x14, x12
    fmov d27, x14
    adrp x14, _lb_20luce_std_math_tables_9log_point@PAGE
    add x14, x14, _lb_20luce_std_math_tables_9log_point@PAGEOFF
    lsl x12, x13, #3
    ldr x14, [x14, x12]
    fmov d28, x14
    adrp x14, _lb_20luce_std_math_tables_11log_inverse@PAGE
    add x14, x14, _lb_20luce_std_math_tables_11log_inverse@PAGEOFF
    ldr x14, [x12, x14]
    fmov d29, x14
    fsub d27, d27, d28
    fmul d30, d29, d27
    fneg d31, d30
    fmadd d27, d31, d28, d27
    fmul d27, d29, d27
    ldr d28, Lae5448f005be_k0
    fmul d28, d26, d28
    adrp x14, _lb_20luce_std_math_tables_14log_table_high@PAGE
    add x14, x14, _lb_20luce_std_math_tables_14log_table_high@PAGEOFF
    ldr x14, [x12, x14]
    fmov d29, x14
    fadd d28, d28, d29
    fadd d29, d30, d28
    fsub d28, d29, d28
    fsub d28, d30, d28
    fmul d31, d30, d30
    fneg d19, d31
    fmadd d19, d30, d30, d19
    fmov d20, #0.5000000
    fmov d21, #-0.5000000
    fmul d21, d21, d31
    fadd d22, d21, d29
    fsub d29, d22, d29
    fsub d29, d21, d29
    ldr d21, Lae5448f005be_k1
    fmul d26, d26, d21
    adrp x14, _lb_20luce_std_math_tables_13log_table_low@PAGE
    add x14, x14, _lb_20luce_std_math_tables_13log_table_low@PAGEOFF
    ldr x14, [x12, x14]
    fmov d21, x14
    fadd d26, d26, d21
    fadd d28, d28, d29
    fadd d26, d26, d28
    fmul d28, d30, d27
    fsub d27, d27, d28
    fmul d28, d20, d19
    fsub d27, d27, d28
    fmov d28, #-0.2500000
    ldr d29, Lae5448f005be_k2
    fmadd d28, d30, d28, d29
    ldr d29, Lae5448f005be_k3
    ldr d19, Lae5448f005be_k4
    ldr d21, Lae5448f005be_k5
    fmadd d19, d30, d19, d21
    fmov d21, #-0.1250000
    ldr d23, Lae5448f005be_k6
    fmadd d21, d30, d21, d23
    ldr d23, Lae5448f005be_k7
    ldr d8, Lae5448f005be_k8
    fmadd d23, d30, d23, d8
    fmul d8, d31, d31
    fmadd d21, d31, d23, d21
    fmadd d28, d31, d19, d28
    fmadd d28, d8, d21, d28
    fmul d30, d30, d31
    fmul d28, d28, d30
    fadd d27, d28, d27
    fadd d26, d27, d26
    fmul d27, d22, d25
    fneg d28, d27
    fmadd d28, d25, d22, d28
    fabs d30, d27
    ldr d31, Lae5448f005be_k9
    fcmp d30, d31
    b.pl Lae5448f005be_12
Lae5448f005be_11:
    fmul d26, d25, d26
    fadd d26, d26, d28
    ldr d28, Lae5448f005be_k10
    fmul d28, d28, d27
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d30, [x14]
    fadd d28, d28, d30
    fsub d28, d28, d30
    ldr d30, Lae5448f005be_k11
    fmul d31, d28, d30
    fneg d31, d31
    fadd d19, d26, d31
    fsub d21, d19, d26
    fsub d22, d19, d21
    fsub d26, d26, d22
    fsub d21, d31, d21
    fadd d26, d26, d21
    ldr d21, Lae5448f005be_k12
    fmul d21, d28, d21
    fsub d21, d27, d21
    fadd d22, d21, d19
    fsub d23, d22, d21
    fsub d8, d22, d23
    fsub d21, d21, d8
    fsub d19, d19, d23
    fadd d19, d21, d19
    fcvtzs x14, d28
    fadd d26, d26, d19
    fmadd d28, d28, d30, d31
    fsub d26, d26, d28
    and x12, x14, #127
    adrp x13, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x13, x13, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x12, x12, #3
    ldr x13, [x13, x12]
    fmov d28, x13
    adrp x13, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x13, x13, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x12, [x12, x13]
    fmov d30, x12
    fmul d31, d22, d28
    fneg d19, d31
    fmadd d19, d28, d22, d19
    fadd d21, d28, d31
    fsub d23, d21, d28
    fsub d31, d31, d23
    fadd d31, d19, d31
    fmul d19, d22, d22
    fmadd d29, d22, d29, d20
    ldr d20, Lae5448f005be_k13
    ldr d23, Lae5448f005be_k14
    fmadd d20, d22, d20, d23
    ldr d23, Lae5448f005be_k15
    ldr d8, Lae5448f005be_k16
    fmadd d23, d22, d23, d8
    fmadd d20, d19, d23, d20
    fmadd d29, d19, d20, d29
    fmul d29, d19, d29
    fadd d26, d26, d29
    fmul d26, d28, d26
    fmul d28, d22, d30
    fadd d26, d26, d28
    fadd d26, d30, d26
    fadd d26, d26, d31
    ldr d28, Lae5448f005be_k17
    fabs d27, d27
    ldr d29, Lae5448f005be_k18
    fmul d27, d29, d27
    fadd d27, d27, d28
    fsub d28, d26, d27
    fadd d28, d28, d21
    fadd d26, d27, d26
    fadd d26, d26, d21
    fcmp d26, d28
    b.ne Lae5448f005be_15
Lae5448f005be_14:
    asr x14, x14, #7
    adds x14, x14, #1023
    b.vs Lae5448f005be_c4
    lsl x14, x14, #52
    fmov d24, x14
    fmul d24, d24, d28
    cmp w15, #1
    fneg d25, d24
    fcsel d24, d25, d24, eq
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lae5448f005be_15:
Lae5448f005be_12:
Lae5448f005be_13:
Lae5448f005be_9:
Lae5448f005be_10:
Lae5448f005be_2:
Lae5448f005be_3:
    fmov d0, d24
    fmov d1, d25
    bl _lb_13luce_std_math_12pow_accurate
    fmov d24, d0
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lae5448f005be_78:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Lae5448f005be_88:
    adrp x0, _lb_text_782020c52b17@PAGE
    add x0, x0, _lb_text_782020c52b17@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Lae5448f005be_c1:
    adrp x0, _lb_text_964c344e3cec@PAGE
    add x0, x0, _lb_text_964c344e3cec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lae5448f005be_c2:
    adrp x0, _lb_text_cfe52cc434d7@PAGE
    add x0, x0, _lb_text_cfe52cc434d7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lae5448f005be_c3:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lae5448f005be_c4:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lae5448f005be_k0:
    .quad 4604418534313441280
Lae5448f005be_k1:
    .quad 4408728642709317424
Lae5448f005be_k2:
    .quad 4599676419421066581
Lae5448f005be_k3:
    .quad 4595172819793696085
Lae5448f005be_k4:
    .quad 13818544856648471893
Lae5448f005be_k5:
    .quad 4596373779694328218
Lae5448f005be_k6:
    .quad 4594314991293244562
Lae5448f005be_k7:
    .quad 13815242216921733530
Lae5448f005be_k8:
    .quad 4592670820000712476
Lae5448f005be_k9:
    .quad 4649438849678704640
Lae5448f005be_k10:
    .quad 4640701337412797182
Lae5448f005be_k11:
    .quad 13635880478764185753
Lae5448f005be_k12:
    .quad 4572893336921964544
Lae5448f005be_k13:
    .quad 4575957461383581969
Lae5448f005be_k14:
    .quad 4586165620538955093
Lae5448f005be_k15:
    .quad 4551452160554016794
Lae5448f005be_k16:
    .quad 4564047942368979991
Lae5448f005be_k17:
    .quad 4327959241903046656
Lae5448f005be_k18:
    .quad 4314448443020935168


    .p2align 2
    .globl _lb_13luce_std_math_14log10_accurate
_lb_13luce_std_math_14log10_accurate:
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
    b.lo L1b4550786155_2
L1b4550786155_1:
    fcmp d24, d24
    b.eq L1b4550786155_36
L1b4550786155_35:
    fadd d24, d24, d24
    b L1b4550786155_48
L1b4550786155_36:
L1b4550786155_37:
    and x15, x14, #9223372036854775807
    cmp x15, #0
    b.ne L1b4550786155_40
L1b4550786155_39:
    ldr d24, L1b4550786155_k0
    b L1b4550786155_48
L1b4550786155_40:
L1b4550786155_41:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne L1b4550786155_44
L1b4550786155_43:
    b L1b4550786155_48
L1b4550786155_44:
L1b4550786155_45:
    ldr d24, L1b4550786155_k1
L1b4550786155_48:
    fmov d0, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    ldr d11, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1b4550786155_2:
    movz x10, #16, lsl #48
    cmp x14, x10
    cset w15, lo
    ldr d25, L1b4550786155_k2
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
    b.vs L1b4550786155_c1
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
    ldr d29, L1b4550786155_k3
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
    ldr d19, L1b4550786155_k4
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
    ldr d26, L1b4550786155_k5
    ldr d27, L1b4550786155_k6
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
L1b4550786155_c1:
    adrp x0, _lb_text_b31734b3701c@PAGE
    add x0, x0, _lb_text_b31734b3701c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L1b4550786155_k0:
    .quad 18442240474082181120
L1b4550786155_k1:
    .quad 9221120237041090560
L1b4550786155_k2:
    .quad 4841369599423283200
L1b4550786155_k3:
    .quad 4604418534313441280
L1b4550786155_k4:
    .quad 4408728642709317424
L1b4550786155_k5:
    .quad 4601495173785380110
L1b4550786155_k6:
    .quad 4353102142499388115


    .p2align 2
    .globl _lb_10float_text_9copy_word
_lb_10float_text_9copy_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #32
    str x2, [x16]
    str x3, [x16, #8]
    ldr x14, [sp, #8]
    ldr x15, [sp, #16]
    ldr x12, [sp, #24]
    ldr x13, [sp, #0]
    mov x7, #0
L56af8e34aa44_1:
    cmp x7, x14
    b.hs L56af8e34aa44_3
    .p2align 4
L56af8e34aa44_2:
    cmp x7, x12
    b.hs L56af8e34aa44_c1
    add x6, x15, x7
    ldrb w5, [x13, x7]
    strb w5, [x6]
    add x7, x7, #1
    cmp x7, x14
    b.lo L56af8e34aa44_2
L56af8e34aa44_3:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L56af8e34aa44_c1:
    adrp x0, _lb_text_80c1bc984595@PAGE
    add x0, x0, _lb_text_80c1bc984595@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10float_text_shortest64
_lb_10float_text_shortest64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    str x23, [sp, #40]
    str x24, [sp, #32]
    str x25, [sp, #24]
    str x26, [sp, #16]
    str x27, [sp, #8]
    mov x14, x0
    mov w15, w1
    cmp w15, #0
    b.ne L60b1bf666c8e_2
L60b1bf666c8e_1:
    movz w12, #64460
    movk w12, #65535, lsl #16
    mov x13, x14
    b L60b1bf666c8e_3
L60b1bf666c8e_2:
    mov w12, w15
    subs w12, w12, #1023
    b.vs L60b1bf666c8e_c1
    subs w12, w12, #52
    b.vs L60b1bf666c8e_c2
    subs w12, w12, #2
    b.vs L60b1bf666c8e_c3
    orr x13, x14, #4503599627370496
L60b1bf666c8e_3:
    and x7, x13, #1
    cmp x7, #0
    cset w7, eq
    movz x10, #4
    umulh x11, x13, x10
    lsl x13, x13, #2
    cbnz x11, L60b1bf666c8e_c4
    cmp x14, #0
    cset w14, ne
    cmp w15, #1
    cset w15, ls
    cmp w14, #0
    csel w14, w14, w15, ne
    and w14, w14, #255
    cmp w14, #0
    movz x10, #1
    mov x11, #0
    csel x14, x10, x11, ne
    cmp w12, #0
    b.lt L60b1bf666c8e_12
L60b1bf666c8e_11:
    sxtw x15, w12
    movz x10, #13377
    movk x10, #1, lsl #16
    mov w9, w15
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.ne L60b1bf666c8e_c5
    mov w15, w9
    lsr w15, w15, #18
    cmp w12, #3
    movz x10, #1
    mov x11, #0
    csel w6, w10, w11, gt
    subs w15, w15, w6
    b.vs L60b1bf666c8e_c6
    sxtw x6, w15
    movz x10, #37711
    movk x10, #18, lsl #16
    mov w9, w6
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.ne L60b1bf666c8e_c7
    mov w5, w9
    lsr w5, w5, #19
    adds w5, w5, #1
    b.vs L60b1bf666c8e_c8
    adds w5, w5, #125
    b.vs L60b1bf666c8e_c9
    subs w5, w5, #1
    b.vs L60b1bf666c8e_c10
    mov x9, #0
    subs w12, w9, w12
    b.vs L60b1bf666c8e_c11
    adds w12, w12, w15
    b.vs L60b1bf666c8e_c12
    adds w12, w5, w12
    b.vs L60b1bf666c8e_c13
    movz x10, #2
    umulh x11, x6, x10
    lsl x5, x6, #1
    cbnz x11, L60b1bf666c8e_c14
    adrp x4, _lb_10float_text_14pow5_inv_split@PAGE
    add x4, x4, _lb_10float_text_14pow5_inv_split@PAGEOFF
    movz x10, #684
    cmp x5, x10
    b.hs L60b1bf666c8e_c15
    add x4, x4, x5, lsl #3
    ldr x3, [x4]
    add x5, x5, #1
    movz x10, #684
    cmp x5, x10
    b.hs L60b1bf666c8e_c16
    ldr x5, [x4, #8]
    and x4, x13, #4294967295
    lsr x2, x13, #32
    and x1, x3, #4294967295
    lsr x3, x3, #32
    mul x0, x4, x1
    mul x19, x4, x3
    mul x20, x2, x1
    mul x21, x2, x3
    lsr x0, x0, #32
    and x22, x19, #4294967295
    add x0, x0, x22
    and x22, x20, #4294967295
    adds x0, x0, x22
    b.cs L60b1bf666c8e_c17
    lsr x19, x19, #32
    adds x19, x21, x19
    b.cs L60b1bf666c8e_c18
    lsr x20, x20, #32
    adds x19, x20, x19
    b.cs L60b1bf666c8e_c19
    lsr x0, x0, #32
    adds x0, x0, x19
    b.cs L60b1bf666c8e_c20
    and x19, x5, #4294967295
    lsr x5, x5, #32
    mul x20, x4, x19
    mul x4, x4, x5
    mul x21, x2, x19
    mul x2, x2, x5
    lsr x22, x20, #32
    and x23, x4, #4294967295
    add x22, x22, x23
    and x23, x21, #4294967295
    adds x22, x22, x23
    b.cs L60b1bf666c8e_c21
    lsl x23, x22, #32
    and x20, x20, #4294967295
    orr x20, x23, x20
    lsr x4, x4, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c22
    lsr x2, x21, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c23
    lsr x2, x22, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c24
    add x2, x0, x20
    cmp x2, x20
    b.hs L60b1bf666c8e_55
L60b1bf666c8e_54:
    adds x4, x4, #1
    b.cs L60b1bf666c8e_c25
    b L60b1bf666c8e_56
L60b1bf666c8e_55:
L60b1bf666c8e_56:
    subs w12, w12, #64
    b.vs L60b1bf666c8e_c26
    sxtw x0, w12
    cmp x0, #0
    cset w20, eq
    cbz w20, L60b1bf666c8e_58
L60b1bf666c8e_57:
    b L60b1bf666c8e_104
L60b1bf666c8e_58:
    cmp x0, #64
    cset w21, hs
    cbz w21, L60b1bf666c8e_62
L60b1bf666c8e_61:
    sub x2, x0, #64
    cmp x2, #64
    b.hs L60b1bf666c8e_64
L60b1bf666c8e_65:
    lsr x2, x4, x2
    b L60b1bf666c8e_104
L60b1bf666c8e_62:
    movz x9, #64
    sub x22, x9, x0
    cmp x22, #64
    b.hs L60b1bf666c8e_67
L60b1bf666c8e_68:
    lsl x4, x4, x22
    cbnz w21, L60b1bf666c8e_69
L60b1bf666c8e_70:
    lsr x2, x2, x12
    orr x2, x2, x4
L60b1bf666c8e_104:
    adds x4, x13, #2
    b.cs L60b1bf666c8e_c27
    and x21, x4, #4294967295
    lsr x22, x4, #32
    mul x23, x21, x1
    mul x24, x21, x3
    mul x25, x22, x1
    mul x26, x22, x3
    lsr x23, x23, #32
    and x27, x24, #4294967295
    add x23, x23, x27
    and x27, x25, #4294967295
    adds x23, x23, x27
    b.cs L60b1bf666c8e_c28
    lsr x24, x24, #32
    adds x24, x26, x24
    b.cs L60b1bf666c8e_c29
    lsr x25, x25, #32
    adds x24, x25, x24
    b.cs L60b1bf666c8e_c30
    lsr x23, x23, #32
    adds x23, x23, x24
    b.cs L60b1bf666c8e_c31
    mul x24, x21, x19
    mul x21, x21, x5
    mul x25, x22, x19
    mul x22, x22, x5
    lsr x26, x24, #32
    and x27, x21, #4294967295
    add x26, x26, x27
    and x27, x25, #4294967295
    adds x26, x26, x27
    b.cs L60b1bf666c8e_c32
    lsl x27, x26, #32
    and x24, x24, #4294967295
    orr x24, x27, x24
    lsr x21, x21, #32
    adds x21, x22, x21
    b.cs L60b1bf666c8e_c33
    lsr x22, x25, #32
    adds x21, x22, x21
    b.cs L60b1bf666c8e_c34
    lsr x22, x26, #32
    adds x21, x22, x21
    b.cs L60b1bf666c8e_c35
    add x22, x23, x24
    cmp x22, x24
    b.hs L60b1bf666c8e_106
L60b1bf666c8e_105:
    adds x21, x21, #1
    b.cs L60b1bf666c8e_c36
    b L60b1bf666c8e_107
L60b1bf666c8e_106:
L60b1bf666c8e_107:
    cbz w20, L60b1bf666c8e_109
L60b1bf666c8e_108:
    b L60b1bf666c8e_155
L60b1bf666c8e_109:
    cmp x0, #64
    cset w23, hs
    cbz w23, L60b1bf666c8e_113
L60b1bf666c8e_112:
    sub x22, x0, #64
    cmp x22, #64
    b.hs L60b1bf666c8e_115
L60b1bf666c8e_116:
    lsr x22, x21, x22
    b L60b1bf666c8e_155
L60b1bf666c8e_113:
    movz x9, #64
    sub x24, x9, x0
    cmp x24, #64
    b.hs L60b1bf666c8e_118
L60b1bf666c8e_119:
    lsl x21, x21, x24
    cbnz w23, L60b1bf666c8e_120
L60b1bf666c8e_121:
    lsr x22, x22, x12
    orr x22, x22, x21
L60b1bf666c8e_155:
    subs x21, x13, #1
    b.cc L60b1bf666c8e_c37
    subs x14, x21, x14
    b.cc L60b1bf666c8e_c38
    and x21, x14, #4294967295
    lsr x23, x14, #32
    mul x24, x21, x1
    mul x25, x21, x3
    mul x1, x23, x1
    mul x3, x23, x3
    lsr x24, x24, #32
    and x26, x25, #4294967295
    add x24, x24, x26
    and x26, x1, #4294967295
    adds x24, x24, x26
    b.cs L60b1bf666c8e_c39
    lsr x25, x25, #32
    adds x3, x3, x25
    b.cs L60b1bf666c8e_c40
    lsr x1, x1, #32
    adds x3, x1, x3
    b.cs L60b1bf666c8e_c41
    lsr x1, x24, #32
    adds x3, x1, x3
    b.cs L60b1bf666c8e_c42
    mul x1, x21, x19
    mul x21, x21, x5
    mul x19, x23, x19
    mul x5, x23, x5
    lsr x23, x1, #32
    and x24, x21, #4294967295
    add x23, x23, x24
    and x24, x19, #4294967295
    adds x23, x23, x24
    b.cs L60b1bf666c8e_c43
    lsl x24, x23, #32
    and x1, x1, #4294967295
    orr x1, x24, x1
    lsr x21, x21, #32
    adds x5, x5, x21
    b.cs L60b1bf666c8e_c44
    lsr x19, x19, #32
    adds x5, x19, x5
    b.cs L60b1bf666c8e_c45
    lsr x19, x23, #32
    adds x5, x19, x5
    b.cs L60b1bf666c8e_c46
    add x3, x3, x1
    cmp x3, x1
    b.hs L60b1bf666c8e_157
L60b1bf666c8e_156:
    adds x5, x5, #1
    b.cs L60b1bf666c8e_c47
    b L60b1bf666c8e_158
L60b1bf666c8e_157:
L60b1bf666c8e_158:
    cbz w20, L60b1bf666c8e_160
L60b1bf666c8e_159:
    b L60b1bf666c8e_206
L60b1bf666c8e_160:
    cmp x0, #64
    cset w1, hs
    cbz w1, L60b1bf666c8e_164
L60b1bf666c8e_163:
    sub x12, x0, #64
    cmp x12, #64
    b.hs L60b1bf666c8e_166
L60b1bf666c8e_167:
    lsr x3, x5, x12
    b L60b1bf666c8e_206
L60b1bf666c8e_164:
    movz x9, #64
    sub x0, x9, x0
    cmp x0, #64
    b.hs L60b1bf666c8e_169
L60b1bf666c8e_170:
    lsl x5, x5, x0
    cbnz w1, L60b1bf666c8e_171
L60b1bf666c8e_172:
    lsr x12, x3, x12
    orr x3, x12, x5
L60b1bf666c8e_206:
    cmp w15, #21
    b.gt L60b1bf666c8e_18
L60b1bf666c8e_17:
    movz x10, #5
    udiv x11, x13, x10
    msub x12, x11, x10, x13
    cmp x12, #0
    b.ne L60b1bf666c8e_21
L60b1bf666c8e_20:
    mov w14, #0
    .p2align 4
L60b1bf666c8e_368:
    movz x10, #5
    udiv x11, x13, x10
    msub x12, x11, x10, x13
    cmp x12, #0
    b.ne L60b1bf666c8e_370
L60b1bf666c8e_369:
    movz x10, #5
    udiv x13, x13, x10
    adds w14, w14, #1
    b.cs L60b1bf666c8e_c48
    b L60b1bf666c8e_368
L60b1bf666c8e_370:
    cmp w14, w6
    cset w14, hs
    mov w12, #0
    b L60b1bf666c8e_22
L60b1bf666c8e_21:
    cbz w7, L60b1bf666c8e_26
L60b1bf666c8e_25:
    mov w12, #0
    .p2align 4
L60b1bf666c8e_377:
    movz x10, #5
    udiv x11, x14, x10
    msub x13, x11, x10, x14
    cmp x13, #0
    b.ne L60b1bf666c8e_379
L60b1bf666c8e_378:
    movz x10, #5
    udiv x14, x14, x10
    adds w12, w12, #1
    b.cs L60b1bf666c8e_c49
    b L60b1bf666c8e_377
L60b1bf666c8e_379:
    cmp w12, w6
    cset w14, hs
    b L60b1bf666c8e_27
L60b1bf666c8e_26:
    mov w14, #0
    .p2align 4
L60b1bf666c8e_386:
    movz x10, #5
    udiv x11, x4, x10
    msub x12, x11, x10, x4
    cmp x12, #0
    b.ne L60b1bf666c8e_388
L60b1bf666c8e_387:
    movz x10, #5
    udiv x4, x4, x10
    adds w14, w14, #1
    b.cs L60b1bf666c8e_c50
    b L60b1bf666c8e_386
L60b1bf666c8e_388:
    cmp w14, w6
    b.lo L60b1bf666c8e_29
L60b1bf666c8e_28:
    subs x14, x22, #1
    b.cc L60b1bf666c8e_c51
    b L60b1bf666c8e_30
L60b1bf666c8e_29:
    mov x14, x22
L60b1bf666c8e_30:
    mov x22, x14
    mov w14, #0
L60b1bf666c8e_27:
    mov w12, w14
    mov w14, #0
L60b1bf666c8e_22:
    b L60b1bf666c8e_19
L60b1bf666c8e_18:
    mov w12, #0
    mov w14, #0
L60b1bf666c8e_19:
    b L60b1bf666c8e_13
L60b1bf666c8e_12:
    mov x9, #0
    subs w15, w9, w12
    b.vs L60b1bf666c8e_c52
    sxtw x6, w15
    movz x10, #12027
    movk x10, #11, lsl #16
    mov w9, w6
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.ne L60b1bf666c8e_c53
    mov w6, w9
    lsr w6, w6, #20
    cmp w15, #1
    movz x10, #1
    mov x11, #0
    csel w5, w10, w11, gt
    subs w6, w6, w5
    b.vs L60b1bf666c8e_c54
    adds w12, w12, w6
    b.vs L60b1bf666c8e_c55
    subs w15, w15, w6
    b.vs L60b1bf666c8e_c56
    sxtw x15, w15
    movz x10, #37711
    movk x10, #18, lsl #16
    mov w9, w15
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.ne L60b1bf666c8e_c57
    mov w5, w9
    lsr w5, w5, #19
    adds w5, w5, #1
    b.vs L60b1bf666c8e_c58
    subs w5, w5, #125
    b.vs L60b1bf666c8e_c59
    subs w5, w6, w5
    b.vs L60b1bf666c8e_c60
    movz x10, #2
    umulh x11, x15, x10
    lsl x15, x15, #1
    cbnz x11, L60b1bf666c8e_c61
    adrp x4, _lb_10float_text_10pow5_split@PAGE
    add x4, x4, _lb_10float_text_10pow5_split@PAGEOFF
    movz x10, #652
    cmp x15, x10
    b.hs L60b1bf666c8e_c62
    add x4, x4, x15, lsl #3
    ldr x3, [x4]
    add x15, x15, #1
    movz x10, #652
    cmp x15, x10
    b.hs L60b1bf666c8e_c63
    ldr x15, [x4, #8]
    and x4, x13, #4294967295
    lsr x2, x13, #32
    and x1, x3, #4294967295
    lsr x3, x3, #32
    mul x0, x4, x1
    mul x19, x4, x3
    mul x20, x2, x1
    mul x21, x2, x3
    lsr x0, x0, #32
    and x22, x19, #4294967295
    add x0, x0, x22
    and x22, x20, #4294967295
    adds x0, x0, x22
    b.cs L60b1bf666c8e_c64
    lsr x19, x19, #32
    adds x19, x21, x19
    b.cs L60b1bf666c8e_c65
    lsr x20, x20, #32
    adds x19, x20, x19
    b.cs L60b1bf666c8e_c66
    lsr x0, x0, #32
    adds x0, x0, x19
    b.cs L60b1bf666c8e_c67
    and x19, x15, #4294967295
    lsr x15, x15, #32
    mul x20, x4, x19
    mul x4, x4, x15
    mul x21, x2, x19
    mul x2, x2, x15
    lsr x22, x20, #32
    and x23, x4, #4294967295
    add x22, x22, x23
    and x23, x21, #4294967295
    adds x22, x22, x23
    b.cs L60b1bf666c8e_c68
    lsl x23, x22, #32
    and x20, x20, #4294967295
    orr x20, x23, x20
    lsr x4, x4, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c69
    lsr x2, x21, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c70
    lsr x2, x22, #32
    adds x4, x2, x4
    b.cs L60b1bf666c8e_c71
    add x2, x0, x20
    cmp x2, x20
    b.hs L60b1bf666c8e_216
L60b1bf666c8e_215:
    adds x4, x4, #1
    b.cs L60b1bf666c8e_c72
    b L60b1bf666c8e_217
L60b1bf666c8e_216:
L60b1bf666c8e_217:
    subs w5, w5, #64
    b.vs L60b1bf666c8e_c73
    sxtw x0, w5
    cmp x0, #0
    cset w20, eq
    cbz w20, L60b1bf666c8e_219
L60b1bf666c8e_218:
    b L60b1bf666c8e_265
L60b1bf666c8e_219:
    cmp x0, #64
    cset w21, hs
    cbz w21, L60b1bf666c8e_223
L60b1bf666c8e_222:
    sub x2, x0, #64
    cmp x2, #64
    b.hs L60b1bf666c8e_225
L60b1bf666c8e_226:
    lsr x2, x4, x2
    b L60b1bf666c8e_265
L60b1bf666c8e_223:
    movz x9, #64
    sub x22, x9, x0
    cmp x22, #64
    b.hs L60b1bf666c8e_228
L60b1bf666c8e_229:
    lsl x4, x4, x22
    cbnz w21, L60b1bf666c8e_230
L60b1bf666c8e_231:
    lsr x2, x2, x5
    orr x2, x2, x4
L60b1bf666c8e_265:
    adds x4, x13, #2
    b.cs L60b1bf666c8e_c74
    and x21, x4, #4294967295
    lsr x4, x4, #32
    mul x22, x21, x1
    mul x23, x21, x3
    mul x24, x4, x1
    mul x25, x4, x3
    lsr x22, x22, #32
    and x26, x23, #4294967295
    add x22, x22, x26
    and x26, x24, #4294967295
    adds x22, x22, x26
    b.cs L60b1bf666c8e_c75
    lsr x23, x23, #32
    adds x23, x25, x23
    b.cs L60b1bf666c8e_c76
    lsr x24, x24, #32
    adds x23, x24, x23
    b.cs L60b1bf666c8e_c77
    lsr x22, x22, #32
    adds x22, x22, x23
    b.cs L60b1bf666c8e_c78
    mul x23, x21, x19
    mul x21, x21, x15
    mul x24, x4, x19
    mul x4, x4, x15
    lsr x25, x23, #32
    and x26, x21, #4294967295
    add x25, x25, x26
    and x26, x24, #4294967295
    adds x25, x25, x26
    b.cs L60b1bf666c8e_c79
    lsl x26, x25, #32
    and x23, x23, #4294967295
    orr x23, x26, x23
    lsr x21, x21, #32
    adds x4, x4, x21
    b.cs L60b1bf666c8e_c80
    lsr x21, x24, #32
    adds x4, x21, x4
    b.cs L60b1bf666c8e_c81
    lsr x21, x25, #32
    adds x4, x21, x4
    b.cs L60b1bf666c8e_c82
    add x21, x22, x23
    cmp x21, x23
    b.hs L60b1bf666c8e_267
L60b1bf666c8e_266:
    adds x4, x4, #1
    b.cs L60b1bf666c8e_c83
    b L60b1bf666c8e_268
L60b1bf666c8e_267:
L60b1bf666c8e_268:
    cbz w20, L60b1bf666c8e_270
L60b1bf666c8e_269:
    b L60b1bf666c8e_316
L60b1bf666c8e_270:
    cmp x0, #64
    cset w22, hs
    cbz w22, L60b1bf666c8e_274
L60b1bf666c8e_273:
    sub x21, x0, #64
    cmp x21, #64
    b.hs L60b1bf666c8e_276
L60b1bf666c8e_277:
    lsr x21, x4, x21
    b L60b1bf666c8e_316
L60b1bf666c8e_274:
    movz x9, #64
    sub x23, x9, x0
    cmp x23, #64
    b.hs L60b1bf666c8e_279
L60b1bf666c8e_280:
    lsl x4, x4, x23
    cbnz w22, L60b1bf666c8e_281
L60b1bf666c8e_282:
    lsr x21, x21, x5
    orr x21, x21, x4
L60b1bf666c8e_316:
    subs x4, x13, #1
    b.cc L60b1bf666c8e_c84
    subs x4, x4, x14
    b.cc L60b1bf666c8e_c85
    and x22, x4, #4294967295
    lsr x4, x4, #32
    mul x23, x22, x1
    mul x24, x22, x3
    mul x1, x4, x1
    mul x3, x4, x3
    lsr x23, x23, #32
    and x25, x24, #4294967295
    add x23, x23, x25
    and x25, x1, #4294967295
    adds x23, x23, x25
    b.cs L60b1bf666c8e_c86
    lsr x24, x24, #32
    adds x3, x3, x24
    b.cs L60b1bf666c8e_c87
    lsr x1, x1, #32
    adds x3, x1, x3
    b.cs L60b1bf666c8e_c88
    lsr x1, x23, #32
    adds x3, x1, x3
    b.cs L60b1bf666c8e_c89
    mul x1, x22, x19
    mul x22, x22, x15
    mul x19, x4, x19
    mul x15, x4, x15
    lsr x4, x1, #32
    and x23, x22, #4294967295
    add x4, x4, x23
    and x23, x19, #4294967295
    adds x4, x4, x23
    b.cs L60b1bf666c8e_c90
    lsl x23, x4, #32
    and x1, x1, #4294967295
    orr x1, x23, x1
    lsr x22, x22, #32
    adds x15, x15, x22
    b.cs L60b1bf666c8e_c91
    lsr x19, x19, #32
    adds x15, x19, x15
    b.cs L60b1bf666c8e_c92
    lsr x4, x4, #32
    adds x15, x4, x15
    b.cs L60b1bf666c8e_c93
    add x4, x3, x1
    cmp x4, x1
    b.hs L60b1bf666c8e_318
L60b1bf666c8e_317:
    adds x15, x15, #1
    b.cs L60b1bf666c8e_c94
    b L60b1bf666c8e_319
L60b1bf666c8e_318:
L60b1bf666c8e_319:
    cbz w20, L60b1bf666c8e_321
L60b1bf666c8e_320:
    b L60b1bf666c8e_367
L60b1bf666c8e_321:
    cmp x0, #64
    cset w3, hs
    cbz w3, L60b1bf666c8e_325
L60b1bf666c8e_324:
    sub x5, x0, #64
    cmp x5, #64
    b.hs L60b1bf666c8e_327
L60b1bf666c8e_328:
    lsr x4, x15, x5
    b L60b1bf666c8e_367
L60b1bf666c8e_325:
    movz x9, #64
    sub x1, x9, x0
    cmp x1, #64
    b.hs L60b1bf666c8e_330
L60b1bf666c8e_331:
    lsl x15, x15, x1
    cbnz w3, L60b1bf666c8e_332
L60b1bf666c8e_333:
    lsr x5, x4, x5
    orr x4, x5, x15
L60b1bf666c8e_367:
    cmp w6, #1
    b.gt L60b1bf666c8e_35
L60b1bf666c8e_34:
    cbz w7, L60b1bf666c8e_38
L60b1bf666c8e_37:
    cmp x14, #1
    cset w14, eq
    b L60b1bf666c8e_39
L60b1bf666c8e_38:
    subs x21, x21, #1
    b.cc L60b1bf666c8e_c95
    mov w14, #0
L60b1bf666c8e_39:
    movz w13, #1
    b L60b1bf666c8e_36
L60b1bf666c8e_35:
    cmp w6, #63
    b.ge L60b1bf666c8e_41
L60b1bf666c8e_40:
    sxtw x14, w6
    cmp x14, #64
    b.hs L60b1bf666c8e_43
L60b1bf666c8e_44:
    movz x9, #1
    lsl x14, x9, x6
    subs x14, x14, #1
    b.cc L60b1bf666c8e_c96
    and x14, x14, x13
    cmp x14, #0
    cset w14, eq
    mov w15, w14
    b L60b1bf666c8e_42
L60b1bf666c8e_41:
    mov w15, #0
L60b1bf666c8e_42:
    mov w14, #0
    mov w13, w15
L60b1bf666c8e_36:
    mov x22, x21
    mov x3, x4
    mov w15, w12
    mov w12, w14
    mov w14, w13
L60b1bf666c8e_13:
    and w12, w12, #255
    and w14, w14, #255
    mov x0, x2
    mov x1, x22
    mov x2, x3
    mov x3, x15
    mov x4, x7
    mov x5, x12
    mov x6, x14
    mov x7, #0
    bl _lb_10float_text_trimmed
    mov x14, x0
    mov x15, x1
    mov x0, x14
    mov x1, x15
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    ldr x25, [sp, #24]
    ldr x26, [sp, #16]
    ldr x27, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60b1bf666c8e_64:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_67:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_69:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_115:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_118:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_120:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_166:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_169:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_171:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_225:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_228:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_230:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_276:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_279:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_281:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_327:
    adrp x0, _lb_text_d5cb59b53cc1@PAGE
    add x0, x0, _lb_text_d5cb59b53cc1@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_330:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_332:
    adrp x0, _lb_text_faaf26ffc522@PAGE
    add x0, x0, _lb_text_faaf26ffc522@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_43:
    adrp x0, _lb_text_56c0346c1c91@PAGE
    add x0, x0, _lb_text_56c0346c1c91@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c1:
    adrp x0, _lb_text_ccaffec37f39@PAGE
    add x0, x0, _lb_text_ccaffec37f39@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c2:
    adrp x0, _lb_text_ccaffec37f39@PAGE
    add x0, x0, _lb_text_ccaffec37f39@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c3:
    adrp x0, _lb_text_ccaffec37f39@PAGE
    add x0, x0, _lb_text_ccaffec37f39@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c4:
    adrp x0, _lb_text_87289fcc03f7@PAGE
    add x0, x0, _lb_text_87289fcc03f7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c5:
    adrp x0, _lb_text_ede9079dd65b@PAGE
    add x0, x0, _lb_text_ede9079dd65b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c6:
    adrp x0, _lb_text_19ae422c2025@PAGE
    add x0, x0, _lb_text_19ae422c2025@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c7:
    adrp x0, _lb_text_d3c5b6226661@PAGE
    add x0, x0, _lb_text_d3c5b6226661@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c8:
    adrp x0, _lb_text_d3c5b6226661@PAGE
    add x0, x0, _lb_text_d3c5b6226661@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c9:
    adrp x0, _lb_text_451e3eca29ab@PAGE
    add x0, x0, _lb_text_451e3eca29ab@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c10:
    adrp x0, _lb_text_451e3eca29ab@PAGE
    add x0, x0, _lb_text_451e3eca29ab@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c11:
    adrp x0, _lb_text_88637f2bcf0a@PAGE
    add x0, x0, _lb_text_88637f2bcf0a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c12:
    adrp x0, _lb_text_88637f2bcf0a@PAGE
    add x0, x0, _lb_text_88637f2bcf0a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c13:
    adrp x0, _lb_text_88637f2bcf0a@PAGE
    add x0, x0, _lb_text_88637f2bcf0a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c14:
    adrp x0, _lb_text_2feb2051cbf3@PAGE
    add x0, x0, _lb_text_2feb2051cbf3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c15:
    adrp x0, _lb_text_b7efb915cd62@PAGE
    add x0, x0, _lb_text_b7efb915cd62@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c16:
    adrp x0, _lb_text_b7efb915cd62@PAGE
    add x0, x0, _lb_text_b7efb915cd62@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c17:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c18:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c19:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c20:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c21:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c22:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c23:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c24:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c25:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c26:
    adrp x0, _lb_text_6415047ad076@PAGE
    add x0, x0, _lb_text_6415047ad076@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c27:
    adrp x0, _lb_text_2d299aa4f208@PAGE
    add x0, x0, _lb_text_2d299aa4f208@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c28:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c29:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c30:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c31:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c32:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c33:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c34:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c35:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c36:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c37:
    adrp x0, _lb_text_99fcb8886461@PAGE
    add x0, x0, _lb_text_99fcb8886461@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c38:
    adrp x0, _lb_text_99fcb8886461@PAGE
    add x0, x0, _lb_text_99fcb8886461@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c39:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c40:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c41:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c42:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c43:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c44:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c45:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c46:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c47:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c48:
    adrp x0, _lb_text_5b4a9cf93581@PAGE
    add x0, x0, _lb_text_5b4a9cf93581@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c49:
    adrp x0, _lb_text_5b4a9cf93581@PAGE
    add x0, x0, _lb_text_5b4a9cf93581@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c50:
    adrp x0, _lb_text_5b4a9cf93581@PAGE
    add x0, x0, _lb_text_5b4a9cf93581@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c51:
    adrp x0, _lb_text_3b6f005754d0@PAGE
    add x0, x0, _lb_text_3b6f005754d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c52:
    adrp x0, _lb_text_d9e8336afaad@PAGE
    add x0, x0, _lb_text_d9e8336afaad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c53:
    adrp x0, _lb_text_28dee6d5f3f4@PAGE
    add x0, x0, _lb_text_28dee6d5f3f4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c54:
    adrp x0, _lb_text_d9e8336afaad@PAGE
    add x0, x0, _lb_text_d9e8336afaad@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c55:
    adrp x0, _lb_text_4d1dd5e897b8@PAGE
    add x0, x0, _lb_text_4d1dd5e897b8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c56:
    adrp x0, _lb_text_995101c4c5ff@PAGE
    add x0, x0, _lb_text_995101c4c5ff@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c57:
    adrp x0, _lb_text_d3c5b6226661@PAGE
    add x0, x0, _lb_text_d3c5b6226661@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c58:
    adrp x0, _lb_text_d3c5b6226661@PAGE
    add x0, x0, _lb_text_d3c5b6226661@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c59:
    adrp x0, _lb_text_53af45afee7b@PAGE
    add x0, x0, _lb_text_53af45afee7b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c60:
    adrp x0, _lb_text_b8c12b8e51c5@PAGE
    add x0, x0, _lb_text_b8c12b8e51c5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c61:
    adrp x0, _lb_text_1824941338a0@PAGE
    add x0, x0, _lb_text_1824941338a0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c62:
    adrp x0, _lb_text_1b0ec6e16604@PAGE
    add x0, x0, _lb_text_1b0ec6e16604@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c63:
    adrp x0, _lb_text_1b0ec6e16604@PAGE
    add x0, x0, _lb_text_1b0ec6e16604@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c64:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c65:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c66:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c67:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c68:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c69:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c70:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c71:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c72:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c73:
    adrp x0, _lb_text_6415047ad076@PAGE
    add x0, x0, _lb_text_6415047ad076@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c74:
    adrp x0, _lb_text_f8338e456c41@PAGE
    add x0, x0, _lb_text_f8338e456c41@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c75:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c76:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c77:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c78:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c79:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c80:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c81:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c82:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c83:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c84:
    adrp x0, _lb_text_7171653da379@PAGE
    add x0, x0, _lb_text_7171653da379@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c85:
    adrp x0, _lb_text_7171653da379@PAGE
    add x0, x0, _lb_text_7171653da379@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c86:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c87:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c88:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c89:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c90:
    adrp x0, _lb_text_b6b37dd361f6@PAGE
    add x0, x0, _lb_text_b6b37dd361f6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c91:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c92:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c93:
    adrp x0, _lb_text_6cef7679c32f@PAGE
    add x0, x0, _lb_text_6cef7679c32f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c94:
    adrp x0, _lb_text_af22e6f23756@PAGE
    add x0, x0, _lb_text_af22e6f23756@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c95:
    adrp x0, _lb_text_7a9532e0e31e@PAGE
    add x0, x0, _lb_text_7a9532e0e31e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L60b1bf666c8e_c96:
    adrp x0, _lb_text_56c0346c1c91@PAGE
    add x0, x0, _lb_text_56c0346c1c91@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10float_text_layout
_lb_10float_text_layout:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    uxtb w14, w2
    mov x15, x3
    mov w12, w4
    mov x13, #0
L196ad0942dd2_1:
    cmp x15, #0
    b.ls L196ad0942dd2_3
    .p2align 4
L196ad0942dd2_2:
    movz x10, #20
    cmp x13, x10
    b.hs L196ad0942dd2_c1
    sub x9, x29, #84
    add x7, x9, x13
    movz x10, #10
    udiv x11, x15, x10
    msub x6, x11, x10, x15
    add x6, x6, #48
    strb w6, [x7]
    add x13, x13, #1
    movz x10, #10
    udiv x15, x15, x10
    cmp x15, #0
    b.hi L196ad0942dd2_2
L196ad0942dd2_3:
    sxtw x15, w12
    adds x12, x15, x13
    b.vs L196ad0942dd2_c2
    subs x7, x12, #1
    b.vs L196ad0942dd2_c3
    cbz w14, L196ad0942dd2_9
L196ad0942dd2_8:
    ldr x14, [sp, #80]
    ldr x6, [sp, #88]
    mov x9, #0
    cmp x9, x6
    b.hs L196ad0942dd2_c4
    movz x9, #45
    strb w9, [x14]
    movz x14, #1
    b L196ad0942dd2_10
L196ad0942dd2_9:
    mov x14, #0
L196ad0942dd2_10:
    cmn x7, #6
    b.lt L196ad0942dd2_12
L196ad0942dd2_14:
    cmp x7, #15
    b.ge L196ad0942dd2_12
L196ad0942dd2_11:
    cmp x12, #0
    b.gt L196ad0942dd2_16
L196ad0942dd2_15:
    ldr x15, [sp, #80]
    ldr x7, [sp, #88]
    cmp x14, x7
    b.hs L196ad0942dd2_c5
    movz x9, #48
    strb w9, [x15, x14]
    add x6, x14, #1
    cmp x6, x7
    b.hs L196ad0942dd2_c6
    movz x9, #46
    strb w9, [x15, x6]
    adds x14, x14, #2
    b.cs L196ad0942dd2_c7
    mov x9, #0
    subs x12, x9, x12
    b.vs L196ad0942dd2_c8
    mov x6, #0
L196ad0942dd2_18:
    cmp x6, x12
    b.hs L196ad0942dd2_21
    .p2align 4
L196ad0942dd2_19:
    cmp x14, x7
    b.hs L196ad0942dd2_c9
    movz x9, #48
    strb w9, [x15, x14]
    add x14, x14, #1
    add x6, x6, #1
    cmp x6, x12
    b.lo L196ad0942dd2_19
L196ad0942dd2_21:
    sub x12, x13, #1
    mov x6, #0
L196ad0942dd2_22:
    cmp x6, x13
    b.hs L196ad0942dd2_25
    .p2align 4
L196ad0942dd2_23:
    cmp x14, x7
    b.hs L196ad0942dd2_c10
    add x5, x15, x14
    subs x4, x12, x6
    b.cc L196ad0942dd2_c11
    movz x10, #20
    cmp x4, x10
    b.hs L196ad0942dd2_c12
    sub x11, x29, #84
    ldrb w4, [x4, x11]
    strb w4, [x5]
    add x14, x14, #1
    add x6, x6, #1
    cmp x6, x13
    b.lo L196ad0942dd2_23
L196ad0942dd2_25:
    b L196ad0942dd2_17
L196ad0942dd2_16:
    cmp x12, x13
    b.lo L196ad0942dd2_27
L196ad0942dd2_26:
    ldr x12, [sp, #80]
    ldr x7, [sp, #88]
    sub x6, x13, #1
    mov x5, #0
L196ad0942dd2_29:
    cmp x5, x13
    b.hs L196ad0942dd2_32
    .p2align 4
L196ad0942dd2_30:
    cmp x14, x7
    b.hs L196ad0942dd2_c13
    add x4, x12, x14
    subs x3, x6, x5
    b.cc L196ad0942dd2_c14
    movz x10, #20
    cmp x3, x10
    b.hs L196ad0942dd2_c15
    sub x11, x29, #84
    ldrb w3, [x3, x11]
    strb w3, [x4]
    add x14, x14, #1
    add x5, x5, #1
    cmp x5, x13
    b.lo L196ad0942dd2_30
L196ad0942dd2_32:
    ldr x12, [sp, #80]
    ldr x13, [sp, #88]
    mov x7, #0
L196ad0942dd2_33:
    cmp x7, x15
    b.hs L196ad0942dd2_36
    .p2align 4
L196ad0942dd2_34:
    cmp x14, x13
    b.hs L196ad0942dd2_c16
    movz x9, #48
    strb w9, [x12, x14]
    add x14, x14, #1
    add x7, x7, #1
    cmp x7, x15
    b.lo L196ad0942dd2_34
L196ad0942dd2_36:
    b L196ad0942dd2_28
L196ad0942dd2_27:
    ldr x15, [sp, #80]
    ldr x7, [sp, #88]
    sub x6, x13, #1
    mov x5, #0
L196ad0942dd2_37:
    cmp x5, x12
    b.hs L196ad0942dd2_40
    .p2align 4
L196ad0942dd2_38:
    cmp x14, x7
    b.hs L196ad0942dd2_c17
    add x4, x15, x14
    subs x3, x6, x5
    b.cc L196ad0942dd2_c18
    movz x10, #20
    cmp x3, x10
    b.hs L196ad0942dd2_c19
    sub x11, x29, #84
    ldrb w3, [x3, x11]
    strb w3, [x4]
    add x14, x14, #1
    add x5, x5, #1
    cmp x5, x12
    b.lo L196ad0942dd2_38
L196ad0942dd2_40:
    ldr x15, [sp, #80]
    ldr x7, [sp, #88]
    cmp x14, x7
    b.hs L196ad0942dd2_c20
    movz x9, #46
    strb w9, [x15, x14]
    add x14, x14, #1
    sub x6, x13, #1
L196ad0942dd2_41:
    cmp x12, x13
    b.hs L196ad0942dd2_44
    .p2align 4
L196ad0942dd2_42:
    cmp x14, x7
    b.hs L196ad0942dd2_c21
    add x5, x15, x14
    subs x4, x6, x12
    b.cc L196ad0942dd2_c22
    movz x10, #20
    cmp x4, x10
    b.hs L196ad0942dd2_c23
    sub x11, x29, #84
    ldrb w4, [x4, x11]
    strb w4, [x5]
    add x14, x14, #1
    add x12, x12, #1
    cmp x12, x13
    b.lo L196ad0942dd2_42
L196ad0942dd2_44:
L196ad0942dd2_28:
L196ad0942dd2_17:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L196ad0942dd2_12:
    ldr x15, [sp, #80]
    ldr x12, [sp, #88]
    cmp x14, x12
    b.hs L196ad0942dd2_c24
    add x6, x15, x14
    subs x5, x13, #1
    b.cc L196ad0942dd2_c25
    movz x10, #20
    cmp x5, x10
    b.hs L196ad0942dd2_c26
    sub x11, x29, #84
    ldrb w4, [x5, x11]
    strb w4, [x6]
    add x14, x14, #1
    cmp x13, #1
    b.ls L196ad0942dd2_47
L196ad0942dd2_46:
    cmp x14, x12
    b.hs L196ad0942dd2_c27
    movz x9, #46
    strb w9, [x15, x14]
    add x14, x14, #1
    movz x6, #1
L196ad0942dd2_49:
    cmp x6, x13
    b.hs L196ad0942dd2_52
    .p2align 4
L196ad0942dd2_50:
    cmp x14, x12
    b.hs L196ad0942dd2_c28
    add x4, x15, x14
    subs x3, x5, x6
    b.cc L196ad0942dd2_c29
    movz x10, #20
    cmp x3, x10
    b.hs L196ad0942dd2_c30
    sub x10, x29, #84
    ldrb w3, [x10, x3]
    strb w3, [x4]
    add x14, x14, #1
    add x6, x6, #1
    cmp x6, x13
    b.lo L196ad0942dd2_50
L196ad0942dd2_52:
    b L196ad0942dd2_48
L196ad0942dd2_47:
L196ad0942dd2_48:
    cmp x14, x12
    b.hs L196ad0942dd2_c31
    movz x9, #101
    strb w9, [x15, x14]
    add x14, x14, #1
    cmp x7, #0
    b.ge L196ad0942dd2_54
L196ad0942dd2_53:
    cmp x14, x12
    b.hs L196ad0942dd2_c32
    movz x9, #45
    strb w9, [x15, x14]
    add x14, x14, #1
    mov x9, #0
    subs x13, x9, x7
    b.vs L196ad0942dd2_c33
    b L196ad0942dd2_55
L196ad0942dd2_54:
    mov x13, x7
L196ad0942dd2_55:
    mov x7, #0
    .p2align 4
L196ad0942dd2_56:
    movz x10, #8
    cmp x7, x10
    b.hs L196ad0942dd2_c34
    sub x9, x29, #8
    add x6, x9, x7
    movz x10, #32768, lsl #48
    cmp x13, x10
    cset w5, eq
    mov x10, #0
    and w5, w5, w10
    cbnz w5, L196ad0942dd2_61
L196ad0942dd2_62:
    movz x10, #10
    sdiv x11, x13, x10
    msub x4, x11, x10, x13
    adds x4, x4, #48
    b.vs L196ad0942dd2_c35
    strb w4, [x6]
    add x7, x7, #1
    cbnz w5, L196ad0942dd2_65
L196ad0942dd2_66:
    movz x10, #10
    sdiv x13, x13, x10
    cmp x13, #0
    b.ne L196ad0942dd2_68
L196ad0942dd2_67:
    b L196ad0942dd2_58
L196ad0942dd2_68:
    b L196ad0942dd2_56
L196ad0942dd2_58:
L196ad0942dd2_71:
    cmp x7, #0
    b.ls L196ad0942dd2_73
    .p2align 4
L196ad0942dd2_72:
    sub x7, x7, #1
    cmp x14, x12
    b.hs L196ad0942dd2_c36
    add x13, x15, x14
    movz x10, #8
    cmp x7, x10
    b.hs L196ad0942dd2_c37
    sub x10, x29, #8
    ldrb w6, [x10, x7]
    strb w6, [x13]
    add x14, x14, #1
    cmp x7, #0
    b.hi L196ad0942dd2_72
L196ad0942dd2_73:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L196ad0942dd2_61:
    adrp x0, _lb_text_79248ccedc77@PAGE
    add x0, x0, _lb_text_79248ccedc77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_65:
    adrp x0, _lb_text_f432f4c0d13b@PAGE
    add x0, x0, _lb_text_f432f4c0d13b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c1:
    adrp x0, _lb_text_14c927032f87@PAGE
    add x0, x0, _lb_text_14c927032f87@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c2:
    adrp x0, _lb_text_bbd0628e6ff4@PAGE
    add x0, x0, _lb_text_bbd0628e6ff4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c3:
    adrp x0, _lb_text_0000962f31bb@PAGE
    add x0, x0, _lb_text_0000962f31bb@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c4:
    adrp x0, _lb_text_86207d1057fc@PAGE
    add x0, x0, _lb_text_86207d1057fc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c5:
    adrp x0, _lb_text_ecd2cfa1da20@PAGE
    add x0, x0, _lb_text_ecd2cfa1da20@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c6:
    adrp x0, _lb_text_627f6952c213@PAGE
    add x0, x0, _lb_text_627f6952c213@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c7:
    adrp x0, _lb_text_8cc5758a8d9d@PAGE
    add x0, x0, _lb_text_8cc5758a8d9d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c8:
    adrp x0, _lb_text_5cdc6b23fae4@PAGE
    add x0, x0, _lb_text_5cdc6b23fae4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c9:
    adrp x0, _lb_text_9b829fd23b25@PAGE
    add x0, x0, _lb_text_9b829fd23b25@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c10:
    adrp x0, _lb_text_a804308d4e5e@PAGE
    add x0, x0, _lb_text_a804308d4e5e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c11:
    adrp x0, _lb_text_a804308d4e5e@PAGE
    add x0, x0, _lb_text_a804308d4e5e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c12:
    adrp x0, _lb_text_a804308d4e5e@PAGE
    add x0, x0, _lb_text_a804308d4e5e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c13:
    adrp x0, _lb_text_9989a2d107e4@PAGE
    add x0, x0, _lb_text_9989a2d107e4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c14:
    adrp x0, _lb_text_9989a2d107e4@PAGE
    add x0, x0, _lb_text_9989a2d107e4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c15:
    adrp x0, _lb_text_9989a2d107e4@PAGE
    add x0, x0, _lb_text_9989a2d107e4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c16:
    adrp x0, _lb_text_0ed2312014b3@PAGE
    add x0, x0, _lb_text_0ed2312014b3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c17:
    adrp x0, _lb_text_025b34fd9f24@PAGE
    add x0, x0, _lb_text_025b34fd9f24@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c18:
    adrp x0, _lb_text_025b34fd9f24@PAGE
    add x0, x0, _lb_text_025b34fd9f24@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c19:
    adrp x0, _lb_text_025b34fd9f24@PAGE
    add x0, x0, _lb_text_025b34fd9f24@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c20:
    adrp x0, _lb_text_27bddbad6c9e@PAGE
    add x0, x0, _lb_text_27bddbad6c9e@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c21:
    adrp x0, _lb_text_a4cdc0de05c1@PAGE
    add x0, x0, _lb_text_a4cdc0de05c1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c22:
    adrp x0, _lb_text_a4cdc0de05c1@PAGE
    add x0, x0, _lb_text_a4cdc0de05c1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c23:
    adrp x0, _lb_text_a4cdc0de05c1@PAGE
    add x0, x0, _lb_text_a4cdc0de05c1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c24:
    adrp x0, _lb_text_4b8297437db0@PAGE
    add x0, x0, _lb_text_4b8297437db0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c25:
    adrp x0, _lb_text_4b8297437db0@PAGE
    add x0, x0, _lb_text_4b8297437db0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c26:
    adrp x0, _lb_text_4b8297437db0@PAGE
    add x0, x0, _lb_text_4b8297437db0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c27:
    adrp x0, _lb_text_3cde2926c897@PAGE
    add x0, x0, _lb_text_3cde2926c897@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c28:
    adrp x0, _lb_text_d0695753c8a7@PAGE
    add x0, x0, _lb_text_d0695753c8a7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c29:
    adrp x0, _lb_text_d0695753c8a7@PAGE
    add x0, x0, _lb_text_d0695753c8a7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c30:
    adrp x0, _lb_text_d0695753c8a7@PAGE
    add x0, x0, _lb_text_d0695753c8a7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c31:
    adrp x0, _lb_text_8c59b5290d65@PAGE
    add x0, x0, _lb_text_8c59b5290d65@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c32:
    adrp x0, _lb_text_686820d200fe@PAGE
    add x0, x0, _lb_text_686820d200fe@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c33:
    adrp x0, _lb_text_1f282bf8c500@PAGE
    add x0, x0, _lb_text_1f282bf8c500@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c34:
    adrp x0, _lb_text_79248ccedc77@PAGE
    add x0, x0, _lb_text_79248ccedc77@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c35:
    adrp x0, _lb_text_79248ccedc77@PAGE
    add x0, x0, _lb_text_79248ccedc77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c36:
    adrp x0, _lb_text_c150f09ab9c5@PAGE
    add x0, x0, _lb_text_c150f09ab9c5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L196ad0942dd2_c37:
    adrp x0, _lb_text_c150f09ab9c5@PAGE
    add x0, x0, _lb_text_c150f09ab9c5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13luce_std_math_9exp_value
_lb_13luce_std_math_9exp_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    ldr d25, La5348ee02dda_k0
    fcmp d24, d25
    cset w14, gt
    ldr d25, La5348ee02dda_k1
    fcmp d24, d25
    cset w15, mi
    cmp w14, #0
    csel w14, w15, w14, ne
    and w14, w14, #255
    cbz w14, La5348ee02dda_2
La5348ee02dda_1:
    ldr d25, La5348ee02dda_k2
    fmul d25, d25, d24
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d26, [x14]
    fadd d25, d25, d26
    fsub d25, d25, d26
    ldr d26, La5348ee02dda_k3
    fmul d27, d25, d26
    ldr d28, La5348ee02dda_k4
    fmul d28, d25, d28
    fsub d28, d24, d28
    fneg d27, d27
    fadd d29, d28, d27
    fsub d30, d29, d28
    fsub d31, d29, d30
    fsub d28, d28, d31
    fsub d30, d27, d30
    fadd d28, d28, d30
    fcvtzs x14, d25
    fmadd d25, d25, d26, d27
    fsub d25, d28, d25
    and x15, x14, #127
    adrp x12, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d26, x12
    adrp x12, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d27, x15
    fmul d28, d29, d26
    fneg d30, d28
    fmadd d30, d26, d29, d30
    fadd d31, d26, d28
    fsub d19, d31, d26
    fsub d28, d28, d19
    fadd d28, d30, d28
    fmul d30, d29, d29
    ldr d19, La5348ee02dda_k5
    fmov d20, #0.5000000
    fmadd d19, d29, d19, d20
    ldr d20, La5348ee02dda_k6
    ldr d21, La5348ee02dda_k7
    fmadd d20, d29, d20, d21
    ldr d21, La5348ee02dda_k8
    ldr d22, La5348ee02dda_k9
    fmadd d21, d29, d21, d22
    fmadd d20, d30, d21, d20
    fmadd d19, d30, d20, d19
    fmul d30, d30, d19
    fadd d25, d25, d30
    fmul d25, d26, d25
    fmul d26, d29, d27
    fadd d25, d25, d26
    fadd d25, d27, d25
    fadd d25, d25, d28
    asr x14, x14, #7
    ldr d26, La5348ee02dda_k10
    fsub d27, d25, d26
    fadd d27, d31, d27
    fadd d26, d25, d26
    fadd d26, d31, d26
    fcmp d27, d26
    b.ne La5348ee02dda_5
La5348ee02dda_4:
    fadd d24, d25, d31
    adds x14, x14, #1023
    b.vs La5348ee02dda_c1
    lsl x14, x14, #52
    fmov d25, x14
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La5348ee02dda_5:
La5348ee02dda_2:
La5348ee02dda_3:
    fmov d0, d24
    bl _lb_13luce_std_math_12exp_accurate
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La5348ee02dda_c1:
    adrp x0, _lb_text_9497843835cf@PAGE
    add x0, x0, _lb_text_9497843835cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
La5348ee02dda_k0:
    .quad 13872810886533480448
La5348ee02dda_k1:
    .quad 4649453803036842394
La5348ee02dda_k2:
    .quad 4640701337412797182
La5348ee02dda_k3:
    .quad 13635880478764185753
La5348ee02dda_k4:
    .quad 4572893336921964544
La5348ee02dda_k5:
    .quad 4595172819793696085
La5348ee02dda_k6:
    .quad 4575957461383581969
La5348ee02dda_k7:
    .quad 4586165620538955093
La5348ee02dda_k8:
    .quad 4551452160554016794
La5348ee02dda_k9:
    .quad 4564047942368979991
La5348ee02dda_k10:
    .quad 4323455642275676160


    .p2align 2
    .globl _lb_14luce_color_xyz_11white_point
_lb_14luce_color_xyz_11white_point:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    sub x16, x29, #16
    str d0, [x16, #0]
    sub x16, x29, #16
    str d1, [x16, #8]
    ldr d24, [sp, #0]
    ldr d25, [sp, #8]
    fdiv d26, d24, d25
    fmov d27, #1.0000000
    fsub d24, d27, d24
    fsub d24, d24, d25
    fdiv d24, d24, d25
    fmov d0, d26
    fmov d1, d27
    fmov d2, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_14luce_color_xyz_apply
_lb_14luce_color_xyz_apply:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
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
    ldr d24, [sp, #24]
    ldr d25, [sp, #0]
    fmul d24, d24, d25
    ldr d26, [sp, #32]
    ldr d27, [sp, #8]
    fmul d26, d26, d27
    fadd d24, d24, d26
    ldr d26, [sp, #40]
    ldr d28, [sp, #16]
    fmul d26, d26, d28
    fadd d24, d24, d26
    ldr d26, [sp, #48]
    fmul d26, d25, d26
    ldr d29, [sp, #56]
    fmul d29, d27, d29
    fadd d26, d26, d29
    ldr d29, [sp, #64]
    fmul d29, d28, d29
    fadd d26, d26, d29
    ldr d29, [sp, #72]
    fmul d25, d25, d29
    ldr d29, [sp, #80]
    fmul d27, d27, d29
    fadd d25, d25, d27
    ldr d27, [sp, #88]
    fmul d27, d28, d27
    fadd d25, d25, d27
    fmov d0, d24
    fmov d1, d26
    fmov d2, d25
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_14luce_color_xyz_invert
_lb_14luce_color_xyz_invert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #304]
    str d9, [sp, #296]
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
    ldr d24, [sp, #184]
    ldr d25, [sp, #216]
    fmul d26, d24, d25
    ldr d27, [sp, #192]
    ldr d28, [sp, #208]
    fmul d29, d27, d28
    fsub d26, d26, d29
    ldr d29, [sp, #200]
    fmul d30, d27, d29
    ldr d31, [sp, #176]
    fmul d19, d25, d31
    fsub d30, d30, d19
    fmul d19, d28, d31
    fmul d20, d24, d29
    fsub d19, d19, d20
    ldr d20, [sp, #152]
    fmul d21, d26, d20
    ldr d22, [sp, #160]
    fmul d23, d30, d22
    fadd d21, d21, d23
    ldr d23, [sp, #168]
    fmul d8, d19, d23
    fadd d21, d21, d8
    fabs d8, d21
    ldr d9, L6547ca6138d2_k0
    fcmp d8, d9
    b.pl L6547ca6138d2_2
L6547ca6138d2_1:
    sub x11, x29, #96
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d24, #1.0000000
    str d24, [sp, #152]
    fmov d25, xzr
    str d25, [sp, #160]
    str d25, [sp, #168]
    str d25, [sp, #176]
    str d24, [sp, #184]
    str d25, [sp, #192]
    str d25, [sp, #200]
    str d25, [sp, #208]
    str d24, [sp, #216]
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
    ldr d8, [sp, #304]
    ldr d9, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6547ca6138d2_2:
L6547ca6138d2_3:
    fmov d8, #1.0000000
    fdiv d21, d8, d21
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    str d8, [sp, #80]
    fmov d9, xzr
    str d9, [sp, #88]
    str d9, [sp, #96]
    str d9, [sp, #104]
    str d8, [sp, #112]
    str d9, [sp, #120]
    str d9, [sp, #128]
    str d9, [sp, #136]
    str d8, [sp, #144]
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
    fmul d26, d26, d21
    str d26, [sp, #224]
    fmul d26, d28, d23
    fmul d8, d25, d22
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #232]
    fmul d26, d27, d22
    fmul d8, d24, d23
    fsub d26, d26, d8
    fmul d26, d21, d26
    str d26, [sp, #240]
    fmul d26, d30, d21
    str d26, [sp, #248]
    fmul d25, d25, d20
    fmul d26, d29, d23
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #256]
    fmul d25, d31, d23
    fmul d26, d27, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #264]
    fmul d25, d19, d21
    str d25, [sp, #272]
    fmul d25, d29, d22
    fmul d26, d28, d20
    fsub d25, d25, d26
    fmul d25, d21, d25
    str d25, [sp, #280]
    fmul d24, d24, d20
    fmul d25, d31, d22
    fsub d24, d24, d25
    fmul d24, d21, d24
    str d24, [sp, #288]
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
    ldr d8, [sp, #304]
    ldr d9, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L6547ca6138d2_k0:
    .quad 4382569440205035030


    .p2align 2
    .globl _lb_14luce_color_xyz_multiply
_lb_14luce_color_xyz_multiply:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
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
    sub x11, x29, #296
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
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
    sub x10, x29, #368
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
    sub x10, x29, #296
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
    mov x14, #0
Le376fdbcf8e4_1:
    cmp x14, #3
    b.hs Le376fdbcf8e4_4
    .p2align 4
Le376fdbcf8e4_2:
    add x15, x14, x14, lsl #1
    add x12, x14, x14, lsl #1
    mov x13, #0
Le376fdbcf8e4_5:
    cmp x13, #3
    b.hs Le376fdbcf8e4_8
    .p2align 4
Le376fdbcf8e4_6:
    fmov d24, d25
    mov x7, #0
Le376fdbcf8e4_9:
    cmp x7, #3
    b.hs Le376fdbcf8e4_12
    .p2align 4
Le376fdbcf8e4_10:
    add x6, x15, x7
    movz x10, #9
    cmp x6, x10
    b.hs Le376fdbcf8e4_c1
    sub x10, x29, #80
    ldr d26, [x10, x6, lsl #3]
    add x6, x7, x7, lsl #1
    add x6, x6, x13
    movz x10, #9
    cmp x6, x10
    b.hs Le376fdbcf8e4_c2
    sub x10, x29, #152
    ldr d27, [x10, x6, lsl #3]
    fmul d26, d26, d27
    fadd d24, d26, d24
    add x7, x7, #1
    cmp x7, #3
    b.lo Le376fdbcf8e4_10
Le376fdbcf8e4_12:
    add x7, x12, x13
    movz x10, #9
    cmp x7, x10
    b.hs Le376fdbcf8e4_c3
    sub x10, x29, #224
    str d24, [x10, x7, lsl #3]
    add x13, x13, #1
    cmp x13, #3
    b.lo Le376fdbcf8e4_6
Le376fdbcf8e4_8:
    add x14, x14, #1
    cmp x14, #3
    b.lo Le376fdbcf8e4_2
Le376fdbcf8e4_4:
    sub x10, x29, #224
    sub x11, x29, #440
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x1, x29, #440
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
Le376fdbcf8e4_c1:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le376fdbcf8e4_c2:
    adrp x0, _lb_text_169fae54c9be@PAGE
    add x0, x0, _lb_text_169fae54c9be@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le376fdbcf8e4_c3:
    adrp x0, _lb_text_c633f1db3329@PAGE
    add x0, x0, _lb_text_c633f1db3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_10film_print_9grey_miss
_lb_10film_print_9grey_miss:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str d8, [sp, #88]
    str d9, [sp, #80]
    str d10, [sp, #72]
    str d11, [sp, #64]
    sub x16, x29, #96
    str d0, [x16, #0]
    sub x16, x29, #96
    str d1, [x16, #8]
    sub x16, x29, #96
    str d2, [x16, #16]
    mov x14, x0
    fmov d8, xzr
    sub x9, x29, #96
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, x14
    bl _lb_10film_print_seen
    fmov d9, d0
    fmov d10, d1
    fmov d24, d2
    fadd d25, d9, d10
    fadd d11, d25, d24
    ldr d24, L2f23ade8ce67_k0
    fmov x14, d10
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L2f23ade8ce67_5
L2f23ade8ce67_4:
    fmov d24, d10
    b L2f23ade8ce67_25
L2f23ade8ce67_5:
L2f23ade8ce67_6:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L2f23ade8ce67_9
L2f23ade8ce67_8:
    b L2f23ade8ce67_25
L2f23ade8ce67_9:
L2f23ade8ce67_10:
    fcmp d8, d10
    b.ne L2f23ade8ce67_13
L2f23ade8ce67_15:
    fcmp d8, d24
    b.ne L2f23ade8ce67_13
L2f23ade8ce67_12:
    and x14, x14, x15
    fmov d24, x14
    b L2f23ade8ce67_25
L2f23ade8ce67_13:
L2f23ade8ce67_14:
    fcmp d10, d24
    fcsel d24, d10, d24, gt
L2f23ade8ce67_25:
    ldr d25, L2f23ade8ce67_k1
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_11log10_value
    fmov d24, d0
    fdiv d25, d9, d11
    ldr d26, L2f23ade8ce67_k2
    fsub d25, d25, d26
    fdiv d26, d10, d11
    ldr d27, L2f23ade8ce67_k3
    fsub d26, d26, d27
    str d24, [sp, #24]
    str d25, [sp, #32]
    str d26, [sp, #40]
    sub x9, x29, #72
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d8, [sp, #88]
    ldr d9, [sp, #80]
    ldr d10, [sp, #72]
    ldr d11, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L2f23ade8ce67_k0:
    .quad 4472406533629990549
L2f23ade8ce67_k1:
    .quad 4591870180066957722
L2f23ade8ce67_k2:
    .quad 4599304722331820936
L2f23ade8ce67_k3:
    .quad 4599598357027525493


    .p2align 2
    .globl _lb_10film_print_body
_lb_10film_print_body:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str d8, [sp, #96]
    str d9, [sp, #88]
    str d10, [sp, #80]
    str d11, [sp, #72]
    str d12, [sp, #64]
    str d13, [sp, #56]
    str d14, [sp, #48]
    str d15, [sp, #40]
    fmov d8, d0
    adrp x19, _lb_13luce_std_math_pi@PAGE
    add x19, x19, _lb_13luce_std_math_pi@PAGEOFF
    ldr d24, [x19]
    fmov d9, #4.0000000
    fdiv d24, d24, d9
    fmov d0, d24
    bl _lb_13luce_std_math_9sin_value
    fmov d24, d0
    adrp x20, _lb_10film_print_13gelatin_index@PAGE
    add x20, x20, _lb_10film_print_13gelatin_index@PAGEOFF
    ldr d25, [x20]
    fdiv d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_10asin_value
    fmov d10, d0
    fmov d24, xzr
    fmov d11, #0.5000000
    fmov d12, #2.0000000
    fmov d13, #1.0000000
    fmov d14, d24
    fmov d15, d24
    mov x21, #0
Lef18f2c0f149_1:
    cmp x21, #90
    b.ge Lef18f2c0f149_4
    .p2align 4
Lef18f2c0f149_2:
    scvtf d24, x21
    fadd d24, d24, d11
    movz x9, #90
    scvtf d25, x9
    fdiv d24, d24, d25
    ldr d26, [x19]
    fmul d24, d24, d26
    fdiv d24, d24, d12
    fmul d26, d12, d24
    str d25, [sp, #32]
    str d24, [sp, #24]
    fmov d0, d26
    bl _lb_13luce_std_math_9sin_value
    fmov d26, d0
    ldr d25, [sp, #32]
    ldr d24, [sp, #24]
    ldr d27, [x19]
    fdiv d27, d27, d12
    fmul d26, d27, d26
    fdiv d25, d26, d25
    ldr d26, [x20]
    str d24, [sp, #24]
    str d25, [sp, #16]
    str d26, [sp, #32]
    fmov d0, d24
    bl _lb_13luce_std_math_9sin_value
    fmov d27, d0
    ldr d24, [sp, #24]
    ldr d25, [sp, #16]
    ldr d26, [sp, #32]
    fmul d26, d27, d26
    fcmp d26, d13
    b.lt Lef18f2c0f149_13
Lef18f2c0f149_12:
    fmov d26, d13
    b Lef18f2c0f149_23
Lef18f2c0f149_13:
Lef18f2c0f149_14:
    str d24, [sp, #24]
    str d25, [sp, #16]
    str d26, [sp, #8]
    fmov d0, d24
    bl _lb_13luce_std_math_9cos_value
    fmov d27, d0
    ldr d24, [sp, #24]
    ldr d25, [sp, #16]
    ldr d26, [sp, #8]
    fmul d26, d26, d26
    fsub d26, d13, d26
    fsqrt d26, d26
    ldr d28, [x20]
    fmul d29, d28, d27
    fsub d30, d29, d26
    fadd d29, d29, d26
    fdiv d29, d30, d29
    fmul d26, d28, d26
    fsub d28, d26, d27
    fadd d26, d26, d27
    fdiv d26, d28, d26
    fmul d27, d29, d29
    fmul d26, d26, d26
    fadd d26, d27, d26
    fmul d26, d11, d26
Lef18f2c0f149_23:
    fsub d27, d13, d26
    str d24, [sp, #24]
    str d25, [sp, #16]
    str d26, [sp, #32]
    str d27, [sp, #8]
    fmov d0, d24
    bl _lb_13luce_std_math_9cos_value
    fmov d28, d0
    ldr d24, [sp, #24]
    ldr d25, [sp, #16]
    ldr d26, [sp, #32]
    ldr d27, [sp, #8]
    fdiv d28, d13, d28
    str d24, [sp, #24]
    str d25, [sp, #16]
    str d26, [sp, #32]
    str d27, [sp, #8]
    fmov d0, d8
    fmov d1, d28
    bl _lb_13luce_std_math_9pow_value
    fmov d28, d0
    ldr d24, [sp, #24]
    ldr d25, [sp, #16]
    ldr d26, [sp, #32]
    ldr d27, [sp, #8]
    fmul d27, d28, d27
    fmul d27, d25, d27
    fadd d14, d27, d14
    str d25, [sp, #16]
    str d26, [sp, #32]
    fmov d0, d24
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    ldr d25, [sp, #16]
    ldr d26, [sp, #32]
    fdiv d24, d12, d24
    str d25, [sp, #16]
    str d26, [sp, #32]
    fmov d0, d8
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    ldr d25, [sp, #16]
    ldr d26, [sp, #32]
    fmul d24, d24, d26
    fmul d24, d25, d24
    fadd d15, d24, d15
    add x21, x21, #1
    cmp x21, #90
    b.lt Lef18f2c0f149_2
Lef18f2c0f149_4:
    fmov d11, #1.0000000
    ldr d24, [x19]
    fdiv d9, d24, d9
    fmov d0, d9
    bl _lb_13luce_std_math_9sin_value
    fmov d24, d0
    ldr d25, [x20]
    fdiv d12, d24, d25
    fmov d0, d9
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    fmul d25, d12, d12
    fsub d25, d11, d25
    fsqrt d25, d25
    ldr d26, [x20]
    fmul d27, d26, d25
    fsub d28, d24, d27
    fadd d27, d27, d24
    fdiv d27, d28, d27
    fmul d24, d26, d24
    fsub d26, d25, d24
    fadd d24, d24, d25
    fdiv d24, d26, d24
    fmov d25, #0.5000000
    fmul d26, d27, d27
    fmul d24, d24, d24
    fadd d24, d26, d24
    fmul d24, d25, d24
    fsub d9, d11, d24
    fmov d0, d10
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    fdiv d24, d11, d24
    fmov d0, d8
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    fmul d24, d24, d9
    adrp x14, _lb_10film_print_16base_reflectance@PAGE
    add x14, x14, _lb_10film_print_16base_reflectance@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    fmul d24, d24, d14
    fmul d25, d25, d15
    fsub d25, d11, d25
    fdiv d24, d24, d25
    fmov d0, d24
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr d8, [sp, #96]
    ldr d9, [sp, #88]
    ldr d10, [sp, #80]
    ldr d11, [sp, #72]
    ldr d12, [sp, #64]
    ldr d13, [sp, #56]
    ldr d14, [sp, #48]
    ldr d15, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_12integer_kind
_lb_13luce_std_math_12integer_kind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    lsr x15, x14, #52
    and x15, x15, #2047
    subs x15, x15, #1023
    b.vs Ldc354cad1bfa_c1
    cmp x15, #0
    b.ge Ldc354cad1bfa_4
Ldc354cad1bfa_3:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc354cad1bfa_4:
    cmp x15, #52
    b.le Ldc354cad1bfa_8
Ldc354cad1bfa_7:
    movz x0, #2
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc354cad1bfa_8:
    movz x9, #52
    subs x12, x9, x15
    b.vs Ldc354cad1bfa_c2
    and x14, x14, #4503599627370495
    cmp x12, #0
    b.ls Ldc354cad1bfa_12
Ldc354cad1bfa_14:
    cmp x12, #64
    b.hs Ldc354cad1bfa_15
Ldc354cad1bfa_16:
    movz x9, #1
    lsl x13, x9, x12
    subs x13, x13, #1
    b.cc Ldc354cad1bfa_c3
    and x13, x14, x13
    cmp x13, #0
    b.eq Ldc354cad1bfa_12
Ldc354cad1bfa_11:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc354cad1bfa_12:
    cmp x15, #0
    b.ne Ldc354cad1bfa_19
Ldc354cad1bfa_18:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc354cad1bfa_19:
    cmp x12, #64
    b.hs Ldc354cad1bfa_25
Ldc354cad1bfa_26:
    lsr x14, x14, x12
    and x14, x14, #1
    cmp x14, #1
    movz x10, #1
    movz x11, #2
    csel w14, w10, w11, eq
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldc354cad1bfa_15:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Ldc354cad1bfa_25:
    adrp x0, _lb_text_782020c52b17@PAGE
    add x0, x0, _lb_text_782020c52b17@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Ldc354cad1bfa_c1:
    adrp x0, _lb_text_964c344e3cec@PAGE
    add x0, x0, _lb_text_964c344e3cec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ldc354cad1bfa_c2:
    adrp x0, _lb_text_cfe52cc434d7@PAGE
    add x0, x0, _lb_text_cfe52cc434d7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ldc354cad1bfa_c3:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_13luce_std_math_12pow_accurate
_lb_13luce_std_math_12pow_accurate:
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
    fmov d24, d0
    fmov d25, d1
    fmov x14, d24
    fmov x15, d25
    and x12, x14, #9223372036854775807
    and x13, x15, #9223372036854775807
    cmp x13, #0
    b.eq Lbc38b860549f_1
Lbc38b860549f_4:
    movz x10, #16368, lsl #48
    cmp x14, x10
    b.ne Lbc38b860549f_2
Lbc38b860549f_1:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_2:
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.hi Lbc38b860549f_6
Lbc38b860549f_9:
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Lbc38b860549f_7
Lbc38b860549f_6:
    fadd d24, d24, d25
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_7:
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ne Lbc38b860549f_12
Lbc38b860549f_11:
    movz x10, #16368, lsl #48
    cmp x12, x10
    b.ne Lbc38b860549f_15
Lbc38b860549f_14:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_15:
    movz x10, #16368, lsl #48
    cmp x12, x10
    cset w14, lo
    lsr x15, x15, #63
    cmp x15, #0
    cset w15, eq
    cmp w15, w14
    b.ne Lbc38b860549f_19
Lbc38b860549f_18:
    fmov d24, xzr
    b Lbc38b860549f_20
Lbc38b860549f_19:
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d24, [x14]
Lbc38b860549f_20:
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_12:
    lsr x7, x15, #52
    and x7, x7, #2047
    subs x7, x7, #1023
    b.vs Lbc38b860549f_c1
    cmp x7, #0
    b.ge Lbc38b860549f_110
Lbc38b860549f_109:
    mov w7, #0
    b Lbc38b860549f_134
Lbc38b860549f_110:
    cmp x7, #52
    b.le Lbc38b860549f_114
Lbc38b860549f_113:
    movz w7, #2
    b Lbc38b860549f_134
Lbc38b860549f_114:
    movz x9, #52
    subs x6, x9, x7
    b.vs Lbc38b860549f_c2
    and x5, x15, #4503599627370495
    cmp x6, #0
    b.ls Lbc38b860549f_118
Lbc38b860549f_120:
    cmp x6, #64
    b.hs Lbc38b860549f_121
Lbc38b860549f_122:
    movz x9, #1
    lsl x4, x9, x6
    subs x4, x4, #1
    b.cc Lbc38b860549f_c3
    and x4, x4, x5
    cmp x4, #0
    b.eq Lbc38b860549f_118
Lbc38b860549f_117:
    mov w7, #0
    b Lbc38b860549f_134
Lbc38b860549f_118:
    cmp x7, #0
    b.ne Lbc38b860549f_125
Lbc38b860549f_124:
    movz w7, #1
    b Lbc38b860549f_134
Lbc38b860549f_125:
    cmp x6, #64
    b.hs Lbc38b860549f_131
Lbc38b860549f_132:
    lsr x7, x5, x6
    and x7, x7, #1
    cmp x7, #1
    movz x10, #1
    movz x11, #2
    csel w7, w10, w11, eq
Lbc38b860549f_134:
    lsr x14, x14, #63
    cmp x14, #1
    cset w14, eq
    cmp w7, #1
    cset w6, eq
    cmp w14, #0
    csel w6, w6, w14, ne
    and w19, w6, #255
    cmp x12, #0
    cset w6, eq
    cbnz w6, Lbc38b860549f_28
Lbc38b860549f_31:
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ne Lbc38b860549f_29
Lbc38b860549f_28:
    lsr x14, x15, #63
    cmp x14, #1
    cset w14, eq
    cmp w14, w6
    b.ne Lbc38b860549f_35
Lbc38b860549f_34:
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d24, [x14]
    b Lbc38b860549f_36
Lbc38b860549f_35:
    fmov d24, xzr
Lbc38b860549f_36:
    fneg d25, d24
    cmp w19, #0
    fcsel d24, d25, d24, ne
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_29:
    cbz w14, Lbc38b860549f_42
Lbc38b860549f_44:
    cmp w7, #0
    b.ne Lbc38b860549f_42
Lbc38b860549f_41:
    ldr d24, Lbc38b860549f_k0
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_42:
    fmov d24, x12
    fmov d26, xzr
    movz x10, #17392, lsl #48
    cmp x13, x10
    b.lo Lbc38b860549f_49
Lbc38b860549f_48:
    movz x10, #16368, lsl #48
    cmp x12, x10
    cset w14, hi
    lsr x15, x15, #63
    cmp x15, #0
    cset w15, eq
    cmp w15, w14
    b.ne Lbc38b860549f_52
Lbc38b860549f_51:
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d24, [x14]
    b Lbc38b860549f_53
Lbc38b860549f_52:
    fmov d24, d26
Lbc38b860549f_53:
    b Lbc38b860549f_50
Lbc38b860549f_49:
    fmov x14, d24
    movz x10, #16, lsl #48
    cmp x14, x10
    cset w15, lo
    ldr d27, Lbc38b860549f_k1
    fmul d24, d27, d24
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
    b.vs Lbc38b860549f_c4
    and x12, x12, #18442240474082181120
    sub x14, x14, x12
    fmov d24, x14
    adrp x14, _lb_20luce_std_math_tables_9log_point@PAGE
    add x14, x14, _lb_20luce_std_math_tables_9log_point@PAGEOFF
    lsl x12, x13, #3
    ldr x14, [x14, x12]
    fmov d27, x14
    adrp x14, _lb_20luce_std_math_tables_11log_inverse@PAGE
    add x14, x14, _lb_20luce_std_math_tables_11log_inverse@PAGEOFF
    ldr x14, [x12, x14]
    fmov d28, x14
    fsub d24, d24, d27
    fmul d29, d28, d24
    adrp x14, _lb_13luce_std_math_splitter@PAGE
    add x14, x14, _lb_13luce_std_math_splitter@PAGEOFF
    ldr d30, [x14]
    fmul d30, d29, d30
    fsub d31, d30, d29
    fsub d30, d30, d31
    fsub d31, d29, d30
    fmul d30, d27, d30
    fsub d24, d24, d30
    fmul d27, d27, d31
    fsub d24, d24, d27
    fmul d24, d28, d24
    scvtf d27, x15
    fmul d28, d29, d29
    fneg d30, d28
    fmadd d30, d29, d29, d30
    ldr d31, Lbc38b860549f_k2
    fmul d31, d27, d31
    adrp x14, _lb_20luce_std_math_tables_14log_table_high@PAGE
    add x14, x14, _lb_20luce_std_math_tables_14log_table_high@PAGEOFF
    ldr x14, [x12, x14]
    fmov d19, x14
    fadd d31, d31, d19
    fadd d19, d29, d31
    fsub d31, d19, d31
    fsub d31, d29, d31
    fmov d20, #0.5000000
    fmov d21, #-0.5000000
    fmul d21, d21, d28
    fadd d22, d21, d19
    fsub d19, d22, d19
    fsub d19, d21, d19
    adrp x14, _lb_13luce_std_math_16log_coefficients@PAGE
    add x14, x14, _lb_13luce_std_math_16log_coefficients@PAGEOFF
    ldr d21, [x14]
    ldr d23, [x14, #8]
    ldr d8, [x14, #16]
    ldr d9, [x14, #24]
    ldr d10, [x14, #32]
    ldr d11, [x14, #40]
    ldr d12, [x14, #48]
    ldr d13, [x14, #56]
    fmul d28, d29, d28
    fmul d13, d29, d13
    fadd d12, d13, d12
    fmul d12, d29, d12
    fadd d11, d12, d11
    fmul d11, d29, d11
    fadd d10, d11, d10
    fmul d10, d29, d10
    fadd d9, d10, d9
    fmul d9, d29, d9
    fadd d8, d9, d8
    fmul d8, d29, d8
    fadd d23, d8, d23
    fmul d23, d29, d23
    fadd d21, d23, d21
    fmul d28, d28, d21
    ldr d21, Lbc38b860549f_k3
    fmul d27, d27, d21
    adrp x14, _lb_20luce_std_math_tables_13log_table_low@PAGE
    add x14, x14, _lb_20luce_std_math_tables_13log_table_low@PAGEOFF
    ldr x14, [x12, x14]
    fmov d21, x14
    fadd d27, d27, d21
    fadd d31, d31, d19
    fmul d30, d20, d30
    fsub d30, d24, d30
    fmul d24, d29, d24
    fsub d24, d30, d24
    fadd d24, d31, d24
    fadd d27, d28, d27
    fadd d24, d24, d27
    fadd d27, d24, d22
    fsub d28, d27, d22
    fsub d24, d24, d28
    fmul d28, d27, d25
    fneg d29, d28
    fmadd d27, d25, d27, d29
    fmul d24, d24, d25
    fadd d24, d24, d27
    fadd d25, d24, d28
    fsub d27, d25, d28
    fsub d24, d24, d27
    ldr d27, Lbc38b860549f_k4
    fcmp d25, d27
    b.le Lbc38b860549f_57
Lbc38b860549f_56:
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    ldr d24, [x14]
    b Lbc38b860549f_58
Lbc38b860549f_57:
    ldr d27, Lbc38b860549f_k5
    fcmp d25, d27
    b.pl Lbc38b860549f_60
Lbc38b860549f_59:
    b Lbc38b860549f_61
Lbc38b860549f_60:
    ldr d26, Lbc38b860549f_k6
    fmul d26, d26, d25
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    ldr d27, [x14]
    fadd d26, d26, d27
    fsub d26, d26, d27
    ldr d27, Lbc38b860549f_k7
    fmul d27, d26, d27
    fsub d25, d25, d27
    ldr d27, Lbc38b860549f_k8
    fmul d27, d26, d27
    fneg d27, d27
    fadd d28, d25, d27
    fsub d29, d28, d25
    fsub d30, d28, d29
    fsub d25, d25, d30
    fsub d27, d27, d29
    fadd d25, d25, d27
    fcvtzs x14, d26
    fadd d24, d25, d24
    and x15, x14, #127
    adrp x12, _lb_20luce_std_math_tables_14exp_table_high@PAGE
    add x12, x12, _lb_20luce_std_math_tables_14exp_table_high@PAGEOFF
    lsl x15, x15, #3
    ldr x12, [x12, x15]
    fmov d25, x12
    adrp x12, _lb_20luce_std_math_tables_13exp_table_low@PAGE
    add x12, x12, _lb_20luce_std_math_tables_13exp_table_low@PAGEOFF
    ldr x15, [x15, x12]
    fmov d26, x15
    fmul d27, d24, d28
    fadd d24, d27, d24
    adrp x15, _lb_13luce_std_math_16exp_coefficients@PAGE
    add x15, x15, _lb_13luce_std_math_16exp_coefficients@PAGEOFF
    ldr d27, [x15]
    ldr d29, [x15, #8]
    ldr d30, [x15, #16]
    ldr d31, [x15, #24]
    ldr d19, [x15, #32]
    fmul d20, d28, d28
    fmul d19, d28, d19
    fadd d31, d19, d31
    fmul d31, d28, d31
    fadd d30, d31, d30
    fmul d30, d28, d30
    fadd d29, d30, d29
    fmul d29, d28, d29
    fadd d27, d29, d27
    fmul d27, d20, d27
    fadd d24, d27, d24
    fadd d27, d24, d28
    fsub d28, d27, d28
    fsub d24, d24, d28
    fmul d28, d25, d27
    fneg d29, d28
    fmadd d29, d25, d27, d29
    fadd d30, d25, d28
    fsub d31, d30, d25
    fsub d28, d28, d31
    fmul d24, d25, d24
    fmov d25, #1.0000000
    fadd d25, d25, d27
    fmul d25, d26, d25
    fadd d24, d24, d25
    fadd d24, d24, d29
    fadd d24, d24, d28
    asr x14, x14, #7
    fmov d0, d30
    fmov d1, d24
    mov x0, x14
    bl _lb_13luce_std_math_10scale_pair
    fmov d26, d0
Lbc38b860549f_61:
    fmov d24, d26
Lbc38b860549f_58:
Lbc38b860549f_50:
    fneg d25, d24
    cmp w19, #0
    fcsel d24, d25, d24, ne
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr d8, [sp, #48]
    ldr d9, [sp, #40]
    ldr d10, [sp, #32]
    ldr d11, [sp, #24]
    ldr d12, [sp, #16]
    ldr d13, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbc38b860549f_121:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Lbc38b860549f_131:
    adrp x0, _lb_text_782020c52b17@PAGE
    add x0, x0, _lb_text_782020c52b17@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Lbc38b860549f_c1:
    adrp x0, _lb_text_964c344e3cec@PAGE
    add x0, x0, _lb_text_964c344e3cec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbc38b860549f_c2:
    adrp x0, _lb_text_cfe52cc434d7@PAGE
    add x0, x0, _lb_text_cfe52cc434d7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbc38b860549f_c3:
    adrp x0, _lb_text_5f18245410cf@PAGE
    add x0, x0, _lb_text_5f18245410cf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lbc38b860549f_c4:
    adrp x0, _lb_text_b31734b3701c@PAGE
    add x0, x0, _lb_text_b31734b3701c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lbc38b860549f_k0:
    .quad 9221120237041090560
Lbc38b860549f_k1:
    .quad 4841369599423283200
Lbc38b860549f_k2:
    .quad 4604418534313441280
Lbc38b860549f_k3:
    .quad 4408728642709317424
Lbc38b860549f_k4:
    .quad 4649454682646144614
Lbc38b860549f_k5:
    .quad 13873145138068324352
Lbc38b860549f_k6:
    .quad 4640701337412797182
Lbc38b860549f_k7:
    .quad 4572893336921964544
Lbc38b860549f_k8:
    .quad 13635880478764185753


    .p2align 2
    .globl _lb_13luce_std_math_11log_special
_lb_13luce_std_math_11log_special:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov x14, d24
    fcmp d24, d24
    b.eq Led0bc8b87cb4_2
Led0bc8b87cb4_1:
    fadd d24, d24, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Led0bc8b87cb4_2:
Led0bc8b87cb4_3:
    and x15, x14, #9223372036854775807
    cmp x15, #0
    b.ne Led0bc8b87cb4_6
Led0bc8b87cb4_5:
    ldr d24, Led0bc8b87cb4_k0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Led0bc8b87cb4_6:
Led0bc8b87cb4_7:
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ne Led0bc8b87cb4_10
Led0bc8b87cb4_9:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Led0bc8b87cb4_10:
Led0bc8b87cb4_11:
    ldr d24, Led0bc8b87cb4_k1
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Led0bc8b87cb4_k0:
    .quad 18442240474082181120
Led0bc8b87cb4_k1:
    .quad 9221120237041090560

.subsections_via_symbols
