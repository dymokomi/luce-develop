    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_stressed
_lb_ownership_stressed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    adrp x19, _lb_ownership_12stress_state@PAGE
    add x19, x19, _lb_ownership_12stress_state@PAGEOFF
    ldrb w14, [x19]
    and w15, w14, #255
    cmp w15, #0
    b.ne L8ede30be3ef8_2
L8ede30be3ef8_1:
    adrp x14, _lb_text_e6d7eb1facc8@PAGE
    add x14, x14, _lb_text_e6d7eb1facc8@PAGEOFF
    mov x0, x14
    bl _getenv
    mov x14, x0
    cmp x14, #0
    movz x10, #2
    movz x11, #1
    csel w14, w10, w11, ne
    and w14, w14, #255
    strb w14, [x19]
    b L8ede30be3ef8_3
L8ede30be3ef8_2:
L8ede30be3ef8_3:
    and w14, w14, #255
    cmp w14, #2
    cset w14, eq
    mov x0, x14
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_16visit_scan_black
_lb_ownership_16visit_scan_black:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    sub x16, x29, #24
    str x1, [x16]
    mov x19, x0
    movz x9, #32
    str w9, [sp, #8]
    ldrb w14, [x19, #8]
    ldrb w15, [sp, #8]
    and w15, w15, w14
    cmp w15, #0
    cset w15, ne
    cbz w15, Lf7e70ba13018_10
Lf7e70ba13018_19:
    b Lf7e70ba13018_11
Lf7e70ba13018_10:
    ldr x15, [x19, #16]
    ldrb w15, [x15, #56]
Lf7e70ba13018_11:
    and w15, w15, #255
    cbz w15, Lf7e70ba13018_12
Lf7e70ba13018_20:
    b Lf7e70ba13018_13
Lf7e70ba13018_12:
    movz x9, #64
    str w9, [sp, #24]
    ldrb w15, [sp, #24]
    and w14, w15, w14
    cmp w14, #0
    cset w15, ne
Lf7e70ba13018_13:
    and w14, w15, #255
    cbz w14, Lf7e70ba13018_2
Lf7e70ba13018_1:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf7e70ba13018_2:
Lf7e70ba13018_3:
    mov x0, x19
    bl _lb_ownership_12check_thread
    ldr w14, [x19]
    adds w14, w14, #1
    b.cs Lf7e70ba13018_c1
    str w14, [x19]
    ldrb w14, [x19, #8]
    and w14, w14, #3
    and w14, w14, #255
    cmp w14, #0
    b.eq Lf7e70ba13018_6
Lf7e70ba13018_5:
    mov x0, x19
    bl _lb_ownership_10scan_black
Lf7e70ba13018_6:
Lf7e70ba13018_7:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf7e70ba13018_c1:
    adrp x0, _lb_text_eb4381f0f3b0@PAGE
    add x0, x0, _lb_text_eb4381f0f3b0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_grow_0g1_ownership_Object_0p
_lb_ownership_grow_0g1_ownership_Object_0p:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    mov x19, x2
    mov x14, x3
    adrp x20, _lb_memory_heap@PAGE
    add x20, x20, _lb_memory_heap@PAGEOFF
    ldr x21, [sp, #104]
    cmp x21, #0
    cset w22, hi
    cbz w22, L423adb6bb14d_4
L423adb6bb14d_3:
    movz x10, #2
    umulh x11, x21, x10
    lsl x14, x21, #1
    cbnz x11, L423adb6bb14d_c1
    mov x23, x14
    b L423adb6bb14d_5
L423adb6bb14d_4:
    mov x23, x14
L423adb6bb14d_5:
    movz x10, #2048, lsl #48
    cmp x23, x10
    b.ls L423adb6bb14d_7
L423adb6bb14d_6:
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
    adrp x15, _lb_text_60c07f6ba29f@PAGE
    add x15, x15, _lb_text_60c07f6ba29f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x23, #0
    movz w15, #1
    b L423adb6bb14d_8
L423adb6bb14d_7:
    lsl x24, x23, #3
    ldr x14, [x20]
    ldr x15, [x20, #8]
    cbz x15, L423adb6bb14d_10
L423adb6bb14d_9:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #88
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #88]
    cmp x24, #0
    cset w15, ne
    cmp w14, #0
    cset w14, eq
    and w14, w15, w14
    cbz w14, L423adb6bb14d_12
L423adb6bb14d_11:
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
    adrp x15, _lb_text_60c07f6ba29f@PAGE
    add x15, x15, _lb_text_60c07f6ba29f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x23, #0
    movz w15, #1
    b L423adb6bb14d_8
L423adb6bb14d_12:
    ldr x14, [sp, #72]
    mov w15, #0
L423adb6bb14d_8:
    cbz w15, L423adb6bb14d_13
L423adb6bb14d_14:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x11, x29, #120
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b L423adb6bb14d_1
L423adb6bb14d_13:
    mov x24, x14
    b L423adb6bb14d_2
L423adb6bb14d_1:
    adrp x14, _lb_text_3895a3a279b8@PAGE
    add x14, x14, _lb_text_3895a3a279b8@PAGEOFF
    str x14, [sp, #24]
    movz x9, #13
    str x9, [sp, #32]
    adrp x14, _lb_text_e960b70434c0@PAGE
    add x14, x14, _lb_text_e960b70434c0@PAGEOFF
    mov x0, x14
    sub x9, x29, #136
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    sub x9, x29, #112
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
    mov x24, #0
    mov x23, #0
L423adb6bb14d_2:
    ldr x14, [sp, #96]
    mov x15, #0
L423adb6bb14d_15:
    cmp x15, x19
    b.hs L423adb6bb14d_18
    .p2align 4
L423adb6bb14d_16:
    cmp x15, x23
    b.hs L423adb6bb14d_c2
    lsl x12, x15, #3
    add x13, x12, x24
    cmp x15, x21
    b.hs L423adb6bb14d_c3
    ldr x12, [x12, x14]
    str x12, [x13]
    add x15, x15, #1
    cmp x15, x19
    b.lo L423adb6bb14d_16
L423adb6bb14d_18:
    cbz w22, L423adb6bb14d_20
L423adb6bb14d_19:
    ldr x14, [sp, #96]
    movz x10, #8
    umulh x11, x21, x10
    lsl x15, x21, #3
    cbnz x11, L423adb6bb14d_c4
    str x14, [sp, #8]
    str x15, [sp, #16]
    ldr x14, [x20]
    ldr x15, [x20, #8]
    cbz x15, L423adb6bb14d_22
L423adb6bb14d_23:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #152
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L423adb6bb14d_22:
L423adb6bb14d_20:
L423adb6bb14d_21:
    mov x0, x24
    mov x1, x23
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L423adb6bb14d_10:
    adrp x0, _lb_text_60c07f6ba29f@PAGE
    add x0, x0, _lb_text_60c07f6ba29f@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
L423adb6bb14d_c1:
    adrp x0, _lb_text_60c07f6ba29f@PAGE
    add x0, x0, _lb_text_60c07f6ba29f@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L423adb6bb14d_c2:
    adrp x0, _lb_text_1a207f249db6@PAGE
    add x0, x0, _lb_text_1a207f249db6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L423adb6bb14d_c3:
    adrp x0, _lb_text_1a207f249db6@PAGE
    add x0, x0, _lb_text_1a207f249db6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L423adb6bb14d_c4:
    adrp x0, _lb_text_2b0220e7275d@PAGE
    add x0, x0, _lb_text_2b0220e7275d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_11visit_order
_lb_ownership_11visit_order:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x1, [x16]
    mov x14, x0
    movz x9, #32
    str w9, [sp, #0]
    ldrb w15, [x14, #8]
    ldrb w12, [sp, #0]
    and w12, w12, w15
    cmp w12, #0
    cset w12, ne
    cbz w12, Lcd3299859648_5
Lcd3299859648_14:
    b Lcd3299859648_6
Lcd3299859648_5:
    ldr x12, [x14, #16]
    ldrb w12, [x12, #56]
Lcd3299859648_6:
    and w12, w12, #255
    cbz w12, Lcd3299859648_7
Lcd3299859648_15:
    b Lcd3299859648_8
Lcd3299859648_7:
    movz x9, #64
    str w9, [sp, #16]
    ldrb w12, [sp, #16]
    and w15, w12, w15
    cmp w15, #0
    cset w12, ne
Lcd3299859648_8:
    and w15, w12, #255
    cbz w15, Lcd3299859648_2
Lcd3299859648_1:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lcd3299859648_2:
Lcd3299859648_3:
    mov x0, x14
    bl _lb_ownership_10order_from
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_18
_lb_test_18:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #496
    str d8, [sp, #488]
    str d9, [sp, #480]
    str d10, [sp, #472]
    str d11, [sp, #464]
    str d12, [sp, #456]
    str d13, [sp, #448]
    mov x0, #0
    sub x8, x29, #120
    bl _lb_view_17working_to_output
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
    ldr d24, L1359b4292bb4_k0
    str d24, [sp, #208]
    str d24, [sp, #216]
    str d24, [sp, #224]
    adrp x14, _lb_view_9aces_lift@PAGE
    add x14, x14, _lb_view_9aces_lift@PAGEOFF
    ldr d25, [x14]
    fmul d24, d24, d25
    str d24, [sp, #184]
    str d24, [sp, #192]
    str d24, [sp, #200]
    fmov d8, xzr
    sub x9, x29, #312
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    mov x0, #0
    bl _lb_10film_print_projected
    fmov d24, d0
    fmov d9, d1
    fmov d25, d2
    sub x11, x29, #384
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #112]
    fmov d10, #2.0000000
    str d10, [sp, #120]
    mov x9, #0
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #136]
    str d8, [sp, #144]
    str d8, [sp, #152]
    str d8, [sp, #160]
    str d8, [sp, #168]
    movz x9, #1
    strb w9, [sp, #176]
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #3
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #384
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
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
    ldr d11, L1359b4292bb4_k1
    ldr d24, [sp, #424]
    fmul d24, d11, d24
    ldr d12, L1359b4292bb4_k2
    ldr d25, [sp, #432]
    fmul d25, d12, d25
    fadd d24, d24, d25
    ldr d13, L1359b4292bb4_k3
    ldr d25, [sp, #440]
    fmul d25, d13, d25
    fadd d24, d24, d25
    ldr d25, L1359b4292bb4_k4
    fmul d25, d25, d9
    fcmp d24, d25
    b.le L1359b4292bb4_2
L1359b4292bb4_3:
    ldr d25, L1359b4292bb4_k5
    fmul d25, d25, d9
    fcmp d24, d25
    b.mi L1359b4292bb4_1
L1359b4292bb4_2:
    mov x9, #0
    str x9, [sp, #96]
    mov x9, #0
    str x9, [sp, #104]
    adrp x14, _lb_text_d6312245fbdb@PAGE
    add x14, x14, _lb_text_d6312245fbdb@PAGEOFF
    adrp x15, _lb_text_88a04b1bb733@PAGE
    add x15, x15, _lb_text_88a04b1bb733@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #400
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    ldr d13, [sp, #448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1359b4292bb4_1:
    sub x11, x29, #120
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x9, #0
    str x9, [sp, #376]
    str d10, [sp, #384]
    mov x9, #0
    str x9, [sp, #392]
    mov x9, #0
    str x9, [sp, #400]
    str d8, [sp, #408]
    str d8, [sp, #416]
    str d8, [sp, #424]
    str d8, [sp, #432]
    movz x9, #1
    strb w9, [sp, #440]
    sub x10, x29, #120
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
    sub x9, x29, #312
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x0, x29, #472
    bl _lb_10film_paper_printed
    fmov d24, d0
    fmov d9, d1
    fmov d25, d2
    sub x9, x29, #288
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    fmov d3, d8
    movz x0, #4
    sub x9, x29, #264
    mov x1, x9
    mov x2, #0
    sub x9, x29, #472
    mov x3, x9
    mov x4, #0
    bl _lb_view_display
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
    ldr d24, [sp, #424]
    fmul d24, d11, d24
    ldr d25, [sp, #432]
    fmul d25, d12, d25
    fadd d24, d24, d25
    ldr d25, [sp, #440]
    fmul d25, d13, d25
    fadd d24, d24, d25
    ldr d25, L1359b4292bb4_k6
    fmul d25, d25, d9
    fcmp d24, d25
    b.pl L1359b4292bb4_6
L1359b4292bb4_7:
    ldr d25, L1359b4292bb4_k7
    fmul d25, d25, d9
    fcmp d24, d25
    b.gt L1359b4292bb4_5
L1359b4292bb4_6:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_af9d2bdc5336@PAGE
    add x14, x14, _lb_text_af9d2bdc5336@PAGEOFF
    adrp x15, _lb_text_66ad64bc6115@PAGE
    add x15, x15, _lb_text_66ad64bc6115@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #488
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    ldr d13, [sp, #448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1359b4292bb4_5:
    mov x0, #0
    ldr d8, [sp, #488]
    ldr d9, [sp, #480]
    ldr d10, [sp, #472]
    ldr d11, [sp, #464]
    ldr d12, [sp, #456]
    ldr d13, [sp, #448]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L1359b4292bb4_k0:
    .quad 4595653203753948938
L1359b4292bb4_k1:
    .quad 4596827742536767164
L1359b4292bb4_k2:
    .quad 4604617168452267173
L1359b4292bb4_k3:
    .quad 4589866978952703325
L1359b4292bb4_k4:
    .quad 4607407598781385933
L1359b4292bb4_k5:
    .quad 4608983858650965606
L1359b4292bb4_k6:
    .quad 4606732058837280358
L1359b4292bb4_k7:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_test_19
_lb_test_19:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #56720
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
    str x24, [x16]
    sub x16, x29, #56
    str x25, [x16]
    sub x16, x29, #64
    str x26, [x16]
    sub x16, x29, #72
    str x27, [x16]
    sub x16, x29, #80
    str x28, [x16]
    sub x16, x29, #88
    str d8, [x16]
    sub x16, x29, #96
    str d9, [x16]
    sub x16, x29, #104
    str d10, [x16]
    sub x16, x29, #112
    str d11, [x16]
    sub x16, x29, #120
    str d12, [x16]
    sub x16, x29, #128
    str d13, [x16]
    sub x16, x29, #136
    str d14, [x16]
    sub x16, x29, #144
    str d15, [x16]
    adrp x19, _lb_10film_model_7log_low@PAGE
    add x19, x19, _lb_10film_model_7log_low@PAGEOFF
    adrp x20, _lb_10film_model_8log_high@PAGE
    add x20, x20, _lb_10film_model_8log_high@PAGEOFF
    adrp x21, _lb_text_605988ba3df1@PAGE
    add x21, x21, _lb_text_605988ba3df1@PAGEOFF
    adrp x22, _lb_text_38e5953880b7@PAGE
    add x22, x22, _lb_text_38e5953880b7@PAGEOFF
    adrp x23, _lb_text_2ded50b869d8@PAGE
    add x23, x23, _lb_text_2ded50b869d8@PAGEOFF
    adrp x24, _lb_text_862b37aa6264@PAGE
    add x24, x24, _lb_text_862b37aa6264@PAGEOFF
    adrp x25, _lb_text_ba77abb4e149@PAGE
    add x25, x25, _lb_text_ba77abb4e149@PAGEOFF
    adrp x26, _lb_text_ec3c9fbe6361@PAGE
    add x26, x26, _lb_text_ec3c9fbe6361@PAGEOFF
    fmov d8, xzr
    ldr d9, Ld95764739764_k0
    ldr d10, Ld95764739764_k1
    fmov d11, #1.0000000
    fmov d12, #2.0000000
    adrp x27, _lb_13luce_std_math_pi@PAGE
    add x27, x27, _lb_13luce_std_math_pi@PAGEOFF
    fmov d13, #-2.0000000
    adrp x28, _lb_text_3b9f1fac9317@PAGE
    add x28, x28, _lb_text_3b9f1fac9317@PAGEOFF
    ldr d14, Ld95764739764_k2
    mov x14, #0
    .p2align 4
Ld95764739764_1:
    cmp x14, #23
    b.hs Ld95764739764_4
Ld95764739764_2:
    str x14, [sp, #24960]
    mov x0, x14
    movz x16, #56664
    sub x8, x29, x16
    bl _lb_11film_stocks_8stock_at
    ldr x14, [sp, #24960]
    str x14, [sp, #24960]
    movz x16, #56664
    sub x9, x29, x16
    mov x0, x9
    movz x16, #15952
    sub x8, x29, x16
    bl _lb_10film_model_11build_model
    ldr x14, [sp, #24960]
    ldrb w15, [x29, #-152]
    cbz w15, Ld95764739764_7
Ld95764739764_8:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    movz x16, #47712
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b Ld95764739764_5
Ld95764739764_7:
    str x14, [sp, #24960]
    movz x16, #15952
    sub x10, x29, x16
    movz x16, #31752
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    ldr x14, [sp, #24960]
    b Ld95764739764_6
Ld95764739764_5:
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    adrp x14, _lb_text_50847d236158@PAGE
    add x14, x14, _lb_text_50847d236158@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #56680
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    movz x16, #56696
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #36]
    movz x16, #56696
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #47704
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
    ldr x24, [x16]
    sub x16, x29, #56
    ldr x25, [x16]
    sub x16, x29, #64
    ldr x26, [x16]
    sub x16, x29, #72
    ldr x27, [x16]
    sub x16, x29, #80
    ldr x28, [x16]
    sub x16, x29, #88
    ldr d8, [x16]
    sub x16, x29, #96
    ldr d9, [x16]
    sub x16, x29, #104
    ldr d10, [x16]
    sub x16, x29, #112
    ldr d11, [x16]
    sub x16, x29, #120
    ldr d12, [x16]
    sub x16, x29, #128
    ldr d13, [x16]
    sub x16, x29, #136
    ldr d14, [x16]
    sub x16, x29, #144
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95764739764_6:
    str x14, [sp, #24960]
    movz x16, #31752
    sub x10, x29, x16
    movz x16, #47688
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    ldr x14, [sp, #24960]
    ldr d24, [sp, #24752]
    ldr d25, [x19]
    fsub d24, d24, d25
    ldr d26, [x20]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    movz x9, #1023
    ucvtf d15, x9
    fmul d24, d24, d15
    frintm d24, d24
    fcvtzu x15, d24
    movz x16, #57776
    sub sp, x29, x16
    movz x16, #57776
    sub x9, x29, x16
    movz x16, #56752
    sub x16, x29, x16
    str x9, [x16]
    movz x9, #1024
    movz x16, #56744
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #56736
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #56728
    sub x16, x29, x16
    str x9, [x16]
    ldr x12, [sp, #10088]
    ldr x13, [sp, #10096]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x12
    mov x2, x13
    movz x16, #56752
    sub x0, x29, x16
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x21
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #10
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25816]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25824]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25832]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x23
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #11
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25840]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25848]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25856]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x24
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #9
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25864]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25872]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x22
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    ldr d24, [sp, #25880]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w12, w0
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x25
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #4
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    mov x1, x26
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    str x14, [sp, #26016]
    str x15, [sp, #25984]
    movz x16, #56752
    sub x0, x29, x16
    movz x1, #1
    bl _lb_core_12stream_flush
    ldr x14, [sp, #26016]
    ldr x15, [sp, #25984]
    movz x16, #56720
    sub sp, x29, x16
    fmov d24, d8
    mov x12, #0
    .p2align 4
Ld95764739764_13:
    cmp x12, #3
    b.hs Ld95764739764_16
Ld95764739764_14:
    adds x13, x15, #20
    b.cs Ld95764739764_c1
    movz x10, #3
    umulh x11, x13, x10
    add x7, x13, x13, lsl #1
    cbnz x11, Ld95764739764_c2
    adds x7, x7, x12
    b.cs Ld95764739764_c3
    ldr x6, [sp, #24512]
    ldr x5, [sp, #24520]
    cmp x7, x5
    b.hs Ld95764739764_c4
    ldr d25, [x6, x7, lsl #3]
    subs x7, x15, #20
    b.cc Ld95764739764_c5
    movz x10, #3
    umulh x11, x7, x10
    add x4, x7, x7, lsl #1
    cbnz x11, Ld95764739764_c6
    adds x4, x4, x12
    b.cs Ld95764739764_c7
    cmp x4, x5
    b.hs Ld95764739764_c8
    ldr d26, [x6, x4, lsl #3]
    fsub d25, d25, d26
    ldr d26, [x19]
    ldr d27, [x20]
    fsub d27, d27, d26
    ucvtf d28, x13
    fmul d28, d27, d28
    fdiv d28, d28, d15
    fadd d28, d26, d28
    ucvtf d29, x7
    fmul d27, d27, d29
    fdiv d27, d27, d15
    fadd d26, d26, d27
    fsub d26, d28, d26
    fdiv d25, d25, d26
    fabs d25, d25
    ldr x13, [sp, #17160]
    movz x10, #20
    mul x7, x12, x10
    lsl x6, x12, #3
    movz x16, #31960
    sub x10, x29, x16
    add x5, x6, x10
    movz x16, #31912
    sub x10, x29, x16
    add x4, x6, x10
    movz x16, #31936
    sub x10, x29, x16
    add x6, x6, x10
    mov x3, #0
    .p2align 4
Ld95764739764_17:
    cmp x3, x13
    b.hs Ld95764739764_20
Ld95764739764_18:
    adds x2, x7, x3
    b.cs Ld95764739764_c9
    movz x10, #60
    cmp x2, x10
    b.hs Ld95764739764_c10
    movz x16, #39392
    sub x10, x29, x16
    ldr d26, [x10, x2, lsl #3]
    fdiv d26, d26, d9
    movz x10, #20
    cmp x3, x10
    b.hs Ld95764739764_c11
    movz x16, #39552
    sub x10, x29, x16
    ldr d27, [x10, x3, lsl #3]
    fdiv d27, d27, d10
    ldr d28, [x5]
    ldr d29, [x27]
    fmul d30, d29, d12
    fmul d28, d28, d30
    fmul d28, d27, d28
    fmul d28, d28, d28
    fadd d28, d28, d11
    fdiv d28, d11, d28
    fmul d30, d29, d13
    fmul d29, d29, d30
    ldr d30, [x4]
    fmul d29, d29, d30
    fmul d29, d30, d29
    fmul d29, d27, d29
    fmul d27, d27, d29
    str d26, [sp, #24840]
    str d28, [sp, #24832]
    str x14, [sp, #24960]
    str x15, [sp, #24928]
    str x12, [sp, #24912]
    str d25, [sp, #24904]
    str x13, [sp, #24896]
    str x7, [sp, #24888]
    str x5, [sp, #24880]
    str x4, [sp, #24872]
    str x6, [sp, #24864]
    str d24, [sp, #24856]
    str x3, [sp, #24848]
    fmov d0, d27
    bl _lb_13luce_std_math_9exp_value
    fmov d27, d0
    ldr d26, [sp, #24840]
    ldr d28, [sp, #24832]
    ldr x14, [sp, #24960]
    ldr x15, [sp, #24928]
    ldr x12, [sp, #24912]
    ldr d25, [sp, #24904]
    ldr x13, [sp, #24896]
    ldr x7, [sp, #24888]
    ldr x5, [sp, #24880]
    ldr x4, [sp, #24872]
    ldr x6, [sp, #24864]
    ldr d24, [sp, #24856]
    ldr x3, [sp, #24848]
    ldr d29, [x6]
    fmul d29, d29, d25
    fmul d27, d29, d27
    fsub d27, d11, d27
    fmul d27, d28, d27
    fsub d28, d11, d29
    fdiv d27, d27, d28
    fdiv d26, d27, d26
    str x14, [sp, #24960]
    str x15, [sp, #24928]
    str x12, [sp, #24912]
    str d25, [sp, #24904]
    str x13, [sp, #24896]
    str x7, [sp, #24888]
    str x5, [sp, #24880]
    str x4, [sp, #24872]
    str x6, [sp, #24864]
    str d24, [sp, #24856]
    str x3, [sp, #24848]
    fmov d0, d26
    bl _lb_13luce_std_math_9log_value
    fmov d26, d0
    ldr x14, [sp, #24960]
    ldr x15, [sp, #24928]
    ldr x12, [sp, #24912]
    ldr d25, [sp, #24904]
    ldr x13, [sp, #24896]
    ldr x7, [sp, #24888]
    ldr x5, [sp, #24880]
    ldr x4, [sp, #24872]
    ldr x6, [sp, #24864]
    ldr d24, [sp, #24856]
    ldr x3, [sp, #24848]
    fabs d26, d26
    fmov x2, d24
    and x1, x2, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x1, x10
    b.ls Ld95764739764_43
Ld95764739764_42:
    b Ld95764739764_63
Ld95764739764_43:
Ld95764739764_44:
    fmov x1, d26
    and x0, x1, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x0, x10
    b.ls Ld95764739764_47
Ld95764739764_46:
    fmov d24, d26
    b Ld95764739764_63
Ld95764739764_47:
Ld95764739764_48:
    fcmp d8, d24
    b.ne Ld95764739764_51
Ld95764739764_53:
    fcmp d26, d8
    b.ne Ld95764739764_51
Ld95764739764_50:
    and x2, x2, x1
    fmov d24, x2
    b Ld95764739764_63
Ld95764739764_51:
Ld95764739764_52:
    fcmp d24, d26
    fcsel d24, d24, d26, gt
Ld95764739764_63:
    add x3, x3, #1
    b Ld95764739764_17
Ld95764739764_20:
    add x12, x12, #1
    b Ld95764739764_13
Ld95764739764_16:
    movz x16, #57776
    sub sp, x29, x16
    movz x16, #57776
    sub x9, x29, x16
    movz x16, #56752
    sub x16, x29, x16
    str x9, [x16]
    movz x9, #1024
    movz x16, #56744
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #56736
    sub x16, x29, x16
    str x9, [x16]
    mov x9, #0
    movz x16, #56728
    sub x16, x29, x16
    str x9, [x16]
    str x14, [sp, #26016]
    str d24, [sp, #25976]
    mov x1, x28
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #13
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr d24, [sp, #25976]
    str x14, [sp, #26016]
    str d24, [sp, #25976]
    fmov d0, d24
    movz x16, #56752
    sub x0, x29, x16
    bl _lb_core_10format_f64
    mov w15, w0
    ldr x14, [sp, #26016]
    ldr d24, [sp, #25976]
    str x14, [sp, #26016]
    str d24, [sp, #25976]
    mov x1, x26
    movz x16, #56752
    sub x0, x29, x16
    movz x2, #1
    movz x3, #1
    bl _lb_core_10stream_put
    ldr x14, [sp, #26016]
    ldr d24, [sp, #25976]
    str x14, [sp, #26016]
    str d24, [sp, #25976]
    movz x16, #56752
    sub x0, x29, x16
    movz x1, #1
    bl _lb_core_12stream_flush
    ldr x14, [sp, #26016]
    ldr d24, [sp, #25976]
    movz x16, #56720
    sub sp, x29, x16
    fcmp d24, d14
    b.mi Ld95764739764_21
Ld95764739764_22:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_18572f347bbb@PAGE
    add x14, x14, _lb_text_18572f347bbb@PAGEOFF
    adrp x15, _lb_text_304b75297b7e@PAGE
    add x15, x15, _lb_text_304b75297b7e@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #56712
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
    movz x16, #31784
    sub x11, x29, x16
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #32208
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32192
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #31784
    sub x10, x29, x16
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
    ldr x24, [x16]
    sub x16, x29, #56
    ldr x25, [x16]
    sub x16, x29, #64
    ldr x26, [x16]
    sub x16, x29, #72
    ldr x27, [x16]
    sub x16, x29, #80
    ldr x28, [x16]
    sub x16, x29, #88
    ldr d8, [x16]
    sub x16, x29, #96
    ldr d9, [x16]
    sub x16, x29, #104
    ldr d10, [x16]
    sub x16, x29, #112
    ldr d11, [x16]
    sub x16, x29, #120
    ldr d12, [x16]
    sub x16, x29, #128
    ldr d13, [x16]
    sub x16, x29, #136
    ldr d14, [x16]
    sub x16, x29, #144
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95764739764_21:
    str x14, [sp, #24960]
    movz x16, #32208
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    ldr x14, [sp, #24960]
    str x14, [sp, #24960]
    movz x16, #32192
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    ldr x14, [sp, #24960]
    str x14, [sp, #24960]
    movz x16, #32032
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    ldr x14, [sp, #24960]
    str x14, [sp, #24960]
    movz x16, #32016
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    ldr x14, [sp, #24960]
    add x14, x14, #1
    b Ld95764739764_1
Ld95764739764_4:
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
    ldr x24, [x16]
    sub x16, x29, #56
    ldr x25, [x16]
    sub x16, x29, #64
    ldr x26, [x16]
    sub x16, x29, #72
    ldr x27, [x16]
    sub x16, x29, #80
    ldr x28, [x16]
    sub x16, x29, #88
    ldr d8, [x16]
    sub x16, x29, #96
    ldr d9, [x16]
    sub x16, x29, #104
    ldr d10, [x16]
    sub x16, x29, #112
    ldr d11, [x16]
    sub x16, x29, #120
    ldr d12, [x16]
    sub x16, x29, #128
    ldr d13, [x16]
    sub x16, x29, #136
    ldr d14, [x16]
    sub x16, x29, #144
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95764739764_c1:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c2:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c3:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c4:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c5:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c6:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c7:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c8:
    adrp x0, _lb_text_c5ae7ec10207@PAGE
    add x0, x0, _lb_text_c5ae7ec10207@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c9:
    adrp x0, _lb_text_229eb160b327@PAGE
    add x0, x0, _lb_text_229eb160b327@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c10:
    adrp x0, _lb_text_229eb160b327@PAGE
    add x0, x0, _lb_text_229eb160b327@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld95764739764_c11:
    adrp x0, _lb_text_621cc11fb458@PAGE
    add x0, x0, _lb_text_621cc11fb458@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld95764739764_k0:
    .quad 4636737291354636288
Ld95764739764_k1:
    .quad 4652007308841189376
Ld95764739764_k2:
    .quad 4597094355634707497


    .p2align 2
    .globl _lb_11film_stocks_8stock_at
_lb_11film_stocks_8stock_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #26880
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #26864]
    mov x19, x0
    movz x16, #8968
    sub x0, x29, x16
    mov x1, #0
    movz x2, #8952
    bl _memset
    cmp x19, #22
    b.hs L2b7339eeed99_24
    adr x10, L2b7339eeed99_jt0
    ldrsw x9, [x10, x19, lsl #2]
    add x10, x10, x9
    br x10
L2b7339eeed99_jt0:
    .long L2b7339eeed99_2 - L2b7339eeed99_jt0
    .long L2b7339eeed99_3 - L2b7339eeed99_jt0
    .long L2b7339eeed99_4 - L2b7339eeed99_jt0
    .long L2b7339eeed99_5 - L2b7339eeed99_jt0
    .long L2b7339eeed99_6 - L2b7339eeed99_jt0
    .long L2b7339eeed99_7 - L2b7339eeed99_jt0
    .long L2b7339eeed99_8 - L2b7339eeed99_jt0
    .long L2b7339eeed99_9 - L2b7339eeed99_jt0
    .long L2b7339eeed99_10 - L2b7339eeed99_jt0
    .long L2b7339eeed99_11 - L2b7339eeed99_jt0
    .long L2b7339eeed99_12 - L2b7339eeed99_jt0
    .long L2b7339eeed99_13 - L2b7339eeed99_jt0
    .long L2b7339eeed99_14 - L2b7339eeed99_jt0
    .long L2b7339eeed99_15 - L2b7339eeed99_jt0
    .long L2b7339eeed99_16 - L2b7339eeed99_jt0
    .long L2b7339eeed99_17 - L2b7339eeed99_jt0
    .long L2b7339eeed99_18 - L2b7339eeed99_jt0
    .long L2b7339eeed99_19 - L2b7339eeed99_jt0
    .long L2b7339eeed99_20 - L2b7339eeed99_jt0
    .long L2b7339eeed99_21 - L2b7339eeed99_jt0
    .long L2b7339eeed99_22 - L2b7339eeed99_jt0
    .long L2b7339eeed99_23 - L2b7339eeed99_jt0
L2b7339eeed99_2:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_5298
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_3:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_5293
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_4:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_5279
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_5:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_10kodak_5277
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_6:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_14fuji_velvia_50
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_7:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_13fuji_acros_ii
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_8:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_23kodak_vision3_500t_5219
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_9:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_23kodak_vision3_200t_5213
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_10:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_23kodak_vision3_250d_5207
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_11:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_22kodak_vision3_50d_5203
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_12:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_16kodak_portra_160
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_13:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_16kodak_portra_400
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_14:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_16kodak_portra_800
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_15:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_15kodak_ektar_100
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_16:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_13fuji_pro_400h
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_17:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_21kodak_ektachrome_e100
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_18:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_15fuji_velvia_100
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_19:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_15kodak_tri_x_400
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_20:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_14kodak_tmax_100
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_21:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_21eastman_double_x_5222
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_22:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_15ilford_hp5_plus
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_23:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_27eastman_color_negative_5251
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    b L2b7339eeed99_1
L2b7339eeed99_24:
    movz x16, #17920
    sub x8, x29, x16
    bl _lb_11film_stocks_27eastman_color_negative_5254
    movz x16, #17920
    sub x10, x29, x16
    movz x16, #8968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
L2b7339eeed99_1:
    movz x16, #8968
    sub x10, x29, x16
    movz x16, #26872
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #26872
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #8952
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #26864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_11build_model
_lb_10film_model_11build_model:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #59184
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #16
    str x19, [x16]
    sub x16, x29, #24
    str x20, [x16]
    sub x16, x29, #32
    str x21, [x16]
    sub x16, x29, #40
    str x22, [x16]
    sub x16, x29, #48
    str x23, [x16]
    sub x16, x29, #56
    str x24, [x16]
    sub x16, x29, #64
    str x25, [x16]
    sub x16, x29, #72
    str x26, [x16]
    sub x16, x29, #80
    str x27, [x16]
    sub x16, x29, #88
    str x28, [x16]
    sub x16, x29, #96
    str d8, [x16]
    sub x16, x29, #104
    str d9, [x16]
    sub x16, x29, #112
    str d10, [x16]
    sub x16, x29, #120
    str d11, [x16]
    sub x16, x29, #128
    str d12, [x16]
    sub x16, x29, #136
    str d13, [x16]
    sub x16, x29, #144
    str d14, [x16]
    sub x16, x29, #152
    str d15, [x16]
    movz x16, #42656
    sub x16, x29, x16
    str x0, [x16]
    movz x16, #42656
    sub x0, x29, x16
    ldr x1, [x0]
    movz x2, #8952
    bl _memcpy
    ldr x14, [sp, #16544]
    cmp x14, #1
    b.ne Ld1ccc811776e_2
Ld1ccc811776e_1:
    sub x8, x29, #4040
    bl _lb_densitometry_8status_a
    sub x10, x29, #4040
    movz x16, #5984
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    b Ld1ccc811776e_3
Ld1ccc811776e_2:
    sub x8, x29, #4040
    bl _lb_densitometry_8status_m
    sub x10, x29, #4040
    movz x16, #5984
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
Ld1ccc811776e_3:
    movz x16, #5984
    sub x10, x29, x16
    sub x0, x29, #2096
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #17896
    sub x0, x29, x16
    mov x1, #0
    movz x2, #15800
    bl _memset
    movz x16, #42656
    sub x10, x29, x16
    movz x16, #17896
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    sub x10, x29, #2096
    movz x16, #8944
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    sub x8, x29, #2096
    bl _lb_densitometry_printing
    sub x10, x29, #2096
    movz x16, #7000
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    movz x16, #17896
    sub x10, x29, x16
    movz x16, #58456
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    movz x16, #49504
    sub x0, x29, x16
    movz x16, #38680
    sub x9, x29, x16
    mov x1, x9
    bl _lb_densitometry_Densitometer_read
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    sub x10, x29, #176
    movz x16, #45592
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x16, #47560
    sub x0, x29, x16
    movz x16, #38680
    sub x9, x29, x16
    mov x1, x9
    bl _lb_densitometry_Densitometer_read
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    sub x10, x29, #176
    movz x16, #45616
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr d24, [sp, #16600]
    fmov d8, xzr
    fmov d0, d24
    fmov d1, d8
    sub x8, x29, #800
    bl _lb_19luce_color_spectral_illuminant
    sub x10, x29, #800
    movz x16, #43624
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    ldr d9, Ld1ccc811776e_k0
    fmov d10, #10.0000000
    mov x19, #0
Ld1ccc811776e_4:
    cmp x19, #3
    b.hs Ld1ccc811776e_7
    .p2align 4
Ld1ccc811776e_5:
    movz x10, #81
    mul x20, x19, x10
    fmov d11, d9
    mov x14, #0
Ld1ccc811776e_8:
    cmp x14, #81
    b.hs Ld1ccc811776e_11
    .p2align 4
Ld1ccc811776e_9:
    add x15, x20, x14
    movz x10, #243
    cmp x15, x10
    b.hs Ld1ccc811776e_c1
    movz x16, #42568
    sub x10, x29, x16
    ldr d24, [x10, x15, lsl #3]
    fmov x15, d11
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Ld1ccc811776e_113
Ld1ccc811776e_112:
    b Ld1ccc811776e_133
Ld1ccc811776e_113:
Ld1ccc811776e_114:
    fmov x12, d24
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Ld1ccc811776e_117
Ld1ccc811776e_116:
    fmov d11, d24
    b Ld1ccc811776e_133
Ld1ccc811776e_117:
Ld1ccc811776e_118:
    fcmp d8, d11
    b.ne Ld1ccc811776e_121
Ld1ccc811776e_123:
    fcmp d24, d8
    b.ne Ld1ccc811776e_121
Ld1ccc811776e_120:
    and x15, x15, x12
    fmov d11, x15
    b Ld1ccc811776e_133
Ld1ccc811776e_121:
Ld1ccc811776e_122:
    fcmp d11, d24
    fcsel d11, d11, d24, gt
Ld1ccc811776e_133:
    add x14, x14, #1
    cmp x14, #81
    b.lo Ld1ccc811776e_9
Ld1ccc811776e_11:
    mov x21, #0
Ld1ccc811776e_12:
    cmp x21, #81
    b.hs Ld1ccc811776e_15
    .p2align 4
Ld1ccc811776e_13:
    add x14, x20, x21
    movz x10, #243
    cmp x14, x10
    b.hs Ld1ccc811776e_c2
    lsl x14, x14, #3
    movz x16, #45568
    sub x10, x29, x16
    add x22, x14, x10
    movz x16, #42568
    sub x11, x29, x16
    ldr d24, [x14, x11]
    fsub d24, d24, d11
    fmov d0, d10
    fmov d1, d24
    bl _lb_13luce_std_math_9pow_value
    fmov d24, d0
    str d24, [x22]
    add x21, x21, #1
    cmp x21, #81
    b.lo Ld1ccc811776e_13
Ld1ccc811776e_15:
    add x19, x19, #1
    cmp x19, #3
    b.lo Ld1ccc811776e_5
Ld1ccc811776e_7:
    adrp x19, _lb_memory_heap@PAGE
    add x19, x19, _lb_memory_heap@PAGEOFF
    ldr x14, [x19]
    add x20, x19, #8
    ldr x15, [x20]
    cbz x15, Ld1ccc811776e_20
Ld1ccc811776e_19:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #24576
    movz x2, #8
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [x29, #-160]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Ld1ccc811776e_22
Ld1ccc811776e_21:
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
    adrp x15, _lb_text_5fd4ebb21f5b@PAGE
    add x15, x15, _lb_text_5fd4ebb21f5b@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Ld1ccc811776e_18
Ld1ccc811776e_22:
    ldr x14, [x29, #-176]
    movz x15, #3072
    mov w12, #0
Ld1ccc811776e_18:
    cbz w12, Ld1ccc811776e_23
Ld1ccc811776e_24:
    movz x9, #1
    movz x16, #17904
    sub x16, x29, x16
    strb w9, [x16]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #176
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #42976
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42960
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42800
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42784
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x16, #33704
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15808
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr x22, [x16]
    sub x16, x29, #48
    ldr x23, [x16]
    sub x16, x29, #56
    ldr x24, [x16]
    sub x16, x29, #64
    ldr x25, [x16]
    sub x16, x29, #72
    ldr x26, [x16]
    sub x16, x29, #80
    ldr x27, [x16]
    sub x16, x29, #88
    ldr x28, [x16]
    sub x16, x29, #96
    ldr d8, [x16]
    sub x16, x29, #104
    ldr d9, [x16]
    sub x16, x29, #112
    ldr d10, [x16]
    sub x16, x29, #120
    ldr d11, [x16]
    sub x16, x29, #128
    ldr d12, [x16]
    sub x16, x29, #136
    ldr d13, [x16]
    sub x16, x29, #144
    ldr d14, [x16]
    sub x16, x29, #152
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1ccc811776e_23:
    str x14, [sp, #16208]
    str x15, [sp, #16216]
    ldr x14, [x19]
    ldr x15, [x20]
    cbz x15, Ld1ccc811776e_30
Ld1ccc811776e_29:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #24576
    movz x2, #8
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [x29, #-160]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Ld1ccc811776e_32
Ld1ccc811776e_31:
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
    adrp x15, _lb_text_a22879a05c52@PAGE
    add x15, x15, _lb_text_a22879a05c52@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Ld1ccc811776e_28
Ld1ccc811776e_32:
    ldr x14, [x29, #-176]
    movz x15, #3072
    mov w12, #0
Ld1ccc811776e_28:
    cbz w12, Ld1ccc811776e_33
Ld1ccc811776e_34:
    movz x9, #1
    movz x16, #17904
    sub x16, x29, x16
    strb w9, [x16]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #176
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #42976
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42960
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42800
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42784
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x16, #33704
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15808
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr x22, [x16]
    sub x16, x29, #48
    ldr x23, [x16]
    sub x16, x29, #56
    ldr x24, [x16]
    sub x16, x29, #64
    ldr x25, [x16]
    sub x16, x29, #72
    ldr x26, [x16]
    sub x16, x29, #80
    ldr x27, [x16]
    sub x16, x29, #88
    ldr x28, [x16]
    sub x16, x29, #96
    ldr d8, [x16]
    sub x16, x29, #104
    ldr d9, [x16]
    sub x16, x29, #112
    ldr d10, [x16]
    sub x16, x29, #120
    ldr d11, [x16]
    sub x16, x29, #128
    ldr d12, [x16]
    sub x16, x29, #136
    ldr d13, [x16]
    sub x16, x29, #144
    ldr d14, [x16]
    sub x16, x29, #152
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1ccc811776e_33:
    str x14, [sp, #16224]
    str x15, [sp, #16232]
    str d8, [sp, #704]
    str d8, [sp, #712]
    str d8, [sp, #720]
    adrp x21, _lb_10film_model_7log_low@PAGE
    add x21, x21, _lb_10film_model_7log_low@PAGEOFF
    adrp x22, _lb_10film_model_8log_high@PAGE
    add x22, x22, _lb_10film_model_8log_high@PAGEOFF
    fmov d9, #1.0000000
    fmov x23, d8
    and x14, x23, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w24, hi
    fcmp d8, d8
    cset w25, eq
    mov x26, #0
Ld1ccc811776e_36:
    cmp x26, #1024
    b.hs Ld1ccc811776e_39
    .p2align 4
Ld1ccc811776e_37:
    ldr d24, [x21]
    ldr d25, [x22]
    fsub d25, d25, d24
    ucvtf d26, x26
    fmul d25, d25, d26
    movz x9, #1023
    ucvtf d26, x9
    fdiv d25, d25, d26
    fadd d10, d24, d25
    fmov d0, d10
    movz x16, #42656
    sub x0, x29, x16
    mov x1, #0
    bl _lb_10film_model_12over_minimum
    fmov d11, d0
    fmov d0, d10
    movz x16, #42656
    sub x0, x29, x16
    movz x1, #1
    bl _lb_10film_model_12over_minimum
    fmov d12, d0
    fmov d0, d10
    movz x16, #42656
    sub x0, x29, x16
    movz x1, #2
    bl _lb_10film_model_12over_minimum
    fmov d24, d0
    str d11, [sp, #680]
    str d12, [sp, #688]
    str d24, [sp, #696]
    movz x16, #58504
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #58480
    sub x9, x29, x16
    ldr d3, [x9, #0]
    ldr d4, [x9, #8]
    ldr d5, [x9, #16]
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_unmix
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    sub x10, x29, #176
    movz x16, #58480
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x26, x26, lsl #1
    mov x15, #0
Ld1ccc811776e_40:
    cmp x15, #3
    b.hs Ld1ccc811776e_43
    .p2align 4
Ld1ccc811776e_41:
    add x12, x14, x15
    ldr x13, [sp, #16208]
    ldr x7, [sp, #16216]
    cmp x12, x7
    b.hs Ld1ccc811776e_c3
    lsl x7, x12, #3
    add x13, x13, x7
    movz x16, #58480
    sub x10, x29, x16
    ldr d24, [x10, x15, lsl #3]
    fmov x6, d24
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Ld1ccc811776e_135
Ld1ccc811776e_134:
    b Ld1ccc811776e_155
Ld1ccc811776e_135:
Ld1ccc811776e_136:
Ld1ccc811776e_154:
    cbz w24, Ld1ccc811776e_139
Ld1ccc811776e_138:
    fmov d24, d8
    b Ld1ccc811776e_155
Ld1ccc811776e_139:
Ld1ccc811776e_140:
    fcmp d24, d8
    b.ne Ld1ccc811776e_143
Ld1ccc811776e_145:
    cbz w25, Ld1ccc811776e_143
Ld1ccc811776e_142:
    and x6, x6, x23
    fmov d24, x6
    b Ld1ccc811776e_155
Ld1ccc811776e_143:
Ld1ccc811776e_144:
    fcmp d24, d8
    fcsel d24, d24, d8, gt
Ld1ccc811776e_155:
    str d24, [x13]
    ldr x13, [sp, #23496]
    subs x13, x13, #1
    b.cc Ld1ccc811776e_c4
    ucvtf d24, x13
    ldr d25, [sp, #23480]
    fsub d25, d10, d25
    ldr d26, [sp, #23488]
    fdiv d25, d25, d26
    fcmp d8, d24
    b.hi Ld1ccc811776e_157
Ld1ccc811776e_156:
    fmov x13, d25
    and x13, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls Ld1ccc811776e_159
Ld1ccc811776e_158:
    b Ld1ccc811776e_171
Ld1ccc811776e_159:
Ld1ccc811776e_160:
    fcmp d25, d8
    cset w13, mi
    fcmp d25, d24
    fcsel d25, d24, d25, gt
    cmp w13, #0
    fcsel d25, d8, d25, ne
Ld1ccc811776e_171:
    frintm d26, d25
    fsub d24, d24, d9
    fmov x13, d26
    and x6, x13, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls Ld1ccc811776e_173
Ld1ccc811776e_172:
    b Ld1ccc811776e_193
Ld1ccc811776e_173:
Ld1ccc811776e_174:
    fmov x6, d24
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Ld1ccc811776e_177
Ld1ccc811776e_176:
    fmov d26, d24
    b Ld1ccc811776e_193
Ld1ccc811776e_177:
Ld1ccc811776e_178:
    fcmp d26, d8
    b.ne Ld1ccc811776e_181
Ld1ccc811776e_183:
    fcmp d24, d8
    b.ne Ld1ccc811776e_181
Ld1ccc811776e_180:
    orr x13, x13, x6
    fmov d26, x13
    b Ld1ccc811776e_193
Ld1ccc811776e_181:
Ld1ccc811776e_182:
    fcmp d26, d24
    fcsel d26, d26, d24, mi
Ld1ccc811776e_193:
    fcvtzu x13, d26
    ucvtf d24, x13
    fsub d24, d25, d24
    movz x10, #48
    mul x6, x15, x10
    ldr x5, [sp, #16224]
    ldr x4, [sp, #16232]
    cmp x12, x4
    b.hs Ld1ccc811776e_c5
    add x12, x5, x7
    adds x13, x13, x6
    b.cs Ld1ccc811776e_c6
    movz x10, #144
    cmp x13, x10
    b.hs Ld1ccc811776e_c7
    movz x16, #35680
    sub x9, x29, x16
    add x7, x9, x13, lsl #3
    ldr d25, [x7]
    fsub d26, d9, d24
    fmul d25, d25, d26
    add x13, x13, #1
    movz x10, #144
    cmp x13, x10
    b.hs Ld1ccc811776e_c8
    ldr d26, [x7, #8]
    fmul d24, d24, d26
    fadd d24, d25, d24
    str d24, [x12]
    add x15, x15, #1
    cmp x15, #3
    b.lo Ld1ccc811776e_41
Ld1ccc811776e_43:
    add x26, x26, #1
    cmp x26, #1024
    b.lo Ld1ccc811776e_37
Ld1ccc811776e_39:
    ldr d24, [sp, #16608]
    str d24, [sp, #16448]
    ldr x14, [sp, #16544]
    cmp x14, #1
    b.ne Ld1ccc811776e_45
Ld1ccc811776e_44:
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_13balance_slide
Ld1ccc811776e_45:
Ld1ccc811776e_46:
    str d8, [sp, #16416]
    mov x14, #0
Ld1ccc811776e_47:
    cmp x14, #1024
    b.hs Ld1ccc811776e_50
    .p2align 4
Ld1ccc811776e_48:
    add x15, x14, x14, lsl #1
    mov x12, #0
Ld1ccc811776e_51:
    cmp x12, #3
    b.hs Ld1ccc811776e_54
    .p2align 4
Ld1ccc811776e_52:
    movz x16, #42760
    sub x9, x29, x16
    add x13, x9, x12, lsl #3
    ldr d24, [x13]
    add x7, x15, x12
    ldr x6, [sp, #16208]
    ldr x5, [sp, #16216]
    cmp x7, x5
    b.hs Ld1ccc811776e_c9
    ldr d25, [x6, x7, lsl #3]
    fmov x7, d24
    and x6, x7, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls Ld1ccc811776e_195
Ld1ccc811776e_194:
    b Ld1ccc811776e_215
Ld1ccc811776e_195:
Ld1ccc811776e_196:
    fmov x6, d25
    and x5, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Ld1ccc811776e_199
Ld1ccc811776e_198:
    fmov d24, d25
    b Ld1ccc811776e_215
Ld1ccc811776e_199:
Ld1ccc811776e_200:
    fcmp d24, d8
    b.ne Ld1ccc811776e_203
Ld1ccc811776e_205:
    fcmp d25, d8
    b.ne Ld1ccc811776e_203
Ld1ccc811776e_202:
    and x7, x7, x6
    fmov d24, x7
    b Ld1ccc811776e_215
Ld1ccc811776e_203:
Ld1ccc811776e_204:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
Ld1ccc811776e_215:
    str d24, [x13]
    add x12, x12, #1
    cmp x12, #3
    b.lo Ld1ccc811776e_52
Ld1ccc811776e_54:
    add x14, x14, #1
    cmp x14, #1024
    b.lo Ld1ccc811776e_48
Ld1ccc811776e_50:
    ldr d10, Ld1ccc811776e_k1
    fmov d11, #-6.0000000
    fmov d12, #1.5000000
    fmov d13, #3.0000000
    ldr d14, Ld1ccc811776e_k2
    fmov x21, d10
    and x14, x21, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    cset w22, hi
    fcmp d8, d10
    cset w23, eq
    fcmp d12, d13
    cset w24, ls
    mov x25, #0
Ld1ccc811776e_55:
    cmp x25, #3
    b.hs Ld1ccc811776e_58
    .p2align 4
Ld1ccc811776e_56:
    lsl x26, x25, #3
    movz x16, #33880
    sub x10, x29, x16
    ldr d24, [x10, x26]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Ld1ccc811776e_217
Ld1ccc811776e_216:
    fmov d15, d24
    b Ld1ccc811776e_237
Ld1ccc811776e_217:
Ld1ccc811776e_218:
Ld1ccc811776e_236:
    cbz w22, Ld1ccc811776e_221
Ld1ccc811776e_220:
    fmov d15, d10
    b Ld1ccc811776e_237
Ld1ccc811776e_221:
Ld1ccc811776e_222:
    fcmp d24, d8
    b.ne Ld1ccc811776e_225
Ld1ccc811776e_227:
    cbz w23, Ld1ccc811776e_225
Ld1ccc811776e_224:
    and x14, x14, x21
    fmov d15, x14
    b Ld1ccc811776e_237
Ld1ccc811776e_225:
Ld1ccc811776e_226:
    fcmp d24, d10
    fcsel d15, d24, d10, gt
Ld1ccc811776e_237:
    fmul d24, d11, d15
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fsub d24, d9, d24
    fneg d25, d15
    sub x16, x29, #160
    str d24, [x16]
    fmov d0, d25
    bl _lb_13luce_std_math_9exp_value
    fmov d25, d0
    sub x16, x29, #160
    ldr d24, [x16]
    fsub d25, d9, d25
    fdiv d24, d24, d25
    cbz w24, Ld1ccc811776e_239
Ld1ccc811776e_238:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld1ccc811776e_241
Ld1ccc811776e_240:
    b Ld1ccc811776e_253
Ld1ccc811776e_241:
Ld1ccc811776e_242:
    fcmp d24, d12
    cset w14, mi
    fcmp d24, d13
    fcsel d24, d13, d24, gt
    cmp w14, #0
    fcsel d24, d12, d24, ne
Ld1ccc811776e_253:
    ldr d25, [sp, #16416]
    movz x16, #42760
    sub x10, x29, x16
    ldr d26, [x10, x26]
    ldr x14, [sp, #16544]
    cmp x14, #1
    fcsel d24, d14, d24, eq
    fmul d24, d26, d24
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Ld1ccc811776e_255
Ld1ccc811776e_254:
    b Ld1ccc811776e_275
Ld1ccc811776e_255:
Ld1ccc811776e_256:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Ld1ccc811776e_259
Ld1ccc811776e_258:
    fmov d25, d24
    b Ld1ccc811776e_275
Ld1ccc811776e_259:
Ld1ccc811776e_260:
    fcmp d25, d8
    b.ne Ld1ccc811776e_263
Ld1ccc811776e_265:
    fcmp d24, d8
    b.ne Ld1ccc811776e_263
Ld1ccc811776e_262:
    and x14, x14, x15
    fmov d25, x14
    b Ld1ccc811776e_275
Ld1ccc811776e_263:
Ld1ccc811776e_264:
    fcmp d25, d24
    fcsel d25, d25, d24, gt
Ld1ccc811776e_275:
    str d25, [sp, #16416]
    add x25, x25, #1
    cmp x25, #3
    b.lo Ld1ccc811776e_56
Ld1ccc811776e_58:
    ldr x14, [x19]
    ldr x15, [x20]
    cbz x15, Ld1ccc811776e_66
Ld1ccc811776e_65:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #10520
    movk x1, #13, lsl #16
    movz x2, #8
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [x29, #-160]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Ld1ccc811776e_68
Ld1ccc811776e_67:
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
    adrp x15, _lb_text_51b4612517fc@PAGE
    add x15, x15, _lb_text_51b4612517fc@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Ld1ccc811776e_64
Ld1ccc811776e_68:
    ldr x14, [x29, #-176]
    movz x15, #42275
    movk x15, #1, lsl #16
    mov w12, #0
Ld1ccc811776e_64:
    cbz w12, Ld1ccc811776e_69
Ld1ccc811776e_70:
    movz x9, #1
    movz x16, #17904
    sub x16, x29, x16
    strb w9, [x16]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #176
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #42976
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42960
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42800
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42784
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x16, #33704
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15808
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr x22, [x16]
    sub x16, x29, #48
    ldr x23, [x16]
    sub x16, x29, #56
    ldr x24, [x16]
    sub x16, x29, #64
    ldr x25, [x16]
    sub x16, x29, #72
    ldr x26, [x16]
    sub x16, x29, #80
    ldr x27, [x16]
    sub x16, x29, #88
    ldr x28, [x16]
    sub x16, x29, #96
    ldr d8, [x16]
    sub x16, x29, #104
    ldr d9, [x16]
    sub x16, x29, #112
    ldr d10, [x16]
    sub x16, x29, #120
    ldr d11, [x16]
    sub x16, x29, #128
    ldr d12, [x16]
    sub x16, x29, #136
    ldr d13, [x16]
    sub x16, x29, #144
    ldr d14, [x16]
    sub x16, x29, #152
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1ccc811776e_69:
    str x14, [sp, #16384]
    str x15, [sp, #16392]
    ldr x14, [x19]
    ldr x15, [x20]
    cbz x15, Ld1ccc811776e_76
Ld1ccc811776e_75:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #10520
    movk x1, #13, lsl #16
    movz x2, #8
    sub x8, x29, #176
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [x29, #-160]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, Ld1ccc811776e_78
Ld1ccc811776e_77:
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
    adrp x15, _lb_text_74a794c842a2@PAGE
    add x15, x15, _lb_text_74a794c842a2@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Ld1ccc811776e_74
Ld1ccc811776e_78:
    ldr x14, [x29, #-176]
    movz x15, #42275
    movk x15, #1, lsl #16
    mov w12, #0
Ld1ccc811776e_74:
    cbz w12, Ld1ccc811776e_79
Ld1ccc811776e_80:
    movz x9, #1
    movz x16, #17904
    sub x16, x29, x16
    strb w9, [x16]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #176
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #42976
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42960
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42800
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    movz x16, #42784
    sub x0, x29, x16
    bl _lb_10film_model_13release_table
    sub x10, x29, #176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x16, #33704
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15808
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr x22, [x16]
    sub x16, x29, #48
    ldr x23, [x16]
    sub x16, x29, #56
    ldr x24, [x16]
    sub x16, x29, #64
    ldr x25, [x16]
    sub x16, x29, #72
    ldr x26, [x16]
    sub x16, x29, #80
    ldr x27, [x16]
    sub x16, x29, #88
    ldr x28, [x16]
    sub x16, x29, #96
    ldr d8, [x16]
    sub x16, x29, #104
    ldr d9, [x16]
    sub x16, x29, #112
    ldr d10, [x16]
    sub x16, x29, #120
    ldr d11, [x16]
    sub x16, x29, #128
    ldr d12, [x16]
    sub x16, x29, #136
    ldr d13, [x16]
    sub x16, x29, #144
    ldr d14, [x16]
    sub x16, x29, #152
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1ccc811776e_79:
    str x14, [sp, #16400]
    str x15, [sp, #16408]
    adrp x14, _lb_10film_model_15lightbox_kelvin@PAGE
    add x14, x14, _lb_10film_model_15lightbox_kelvin@PAGEOFF
    ldr d24, [x14]
    fmov d0, d24
    sub x8, x29, #800
    bl _lb_19luce_color_spectral_planck
    sub x10, x29, #800
    movz x16, #59152
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    mov x19, #0
Ld1ccc811776e_82:
    cmp x19, #33
    b.hs Ld1ccc811776e_85
    .p2align 4
Ld1ccc811776e_83:
    add x20, x19, x19, lsl #5
    mov x21, #0
Ld1ccc811776e_86:
    cmp x21, #33
    b.hs Ld1ccc811776e_89
    .p2align 4
Ld1ccc811776e_87:
    add x22, x20, x21
    mov x23, #0
Ld1ccc811776e_90:
    cmp x23, #33
    b.hs Ld1ccc811776e_93
    .p2align 4
Ld1ccc811776e_91:
    ldr d24, [sp, #16416]
    ucvtf d25, x23
    fmul d25, d24, d25
    movz x9, #32
    ucvtf d26, x9
    fdiv d25, d25, d26
    ucvtf d27, x21
    fmul d27, d24, d27
    fdiv d27, d27, d26
    ucvtf d28, x19
    fmul d24, d24, d28
    fdiv d24, d24, d26
    str d25, [sp, #8]
    str d27, [sp, #16]
    str d24, [sp, #24]
    ldr x14, [sp, #16544]
    cmp x14, #1
    b.ne Ld1ccc811776e_95
Ld1ccc811776e_94:
    movz x16, #59176
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #58456
    sub x0, x29, x16
    movz x16, #59152
    sub x1, x29, x16
    bl _lb_10film_model_Model_viewed
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    ldr d24, [x29, #-200]
    ldr d25, [x29, #-192]
    ldr d26, [x29, #-184]
    b Ld1ccc811776e_96
Ld1ccc811776e_95:
    movz x16, #59176
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_Model_scanned
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    ldr d24, [x29, #-176]
    ldr d25, [x29, #-168]
    ldr d26, [x29, #-160]
Ld1ccc811776e_96:
    movz x10, #33
    umulh x11, x22, x10
    mul x14, x22, x10
    cbnz x11, Ld1ccc811776e_c10
    adds x14, x14, x23
    b.cs Ld1ccc811776e_c11
    movz x10, #3
    umulh x11, x14, x10
    add x24, x14, x14, lsl #1
    cbnz x11, Ld1ccc811776e_c12
    ldr x14, [sp, #16384]
    ldr x15, [sp, #16392]
    cmp x24, x15
    b.hs Ld1ccc811776e_c13
    lsl x25, x24, #3
    str d24, [x14, x25]
    add x26, x24, #1
    ldr x14, [sp, #16384]
    ldr x15, [sp, #16392]
    cmp x26, x15
    b.hs Ld1ccc811776e_c14
    lsl x27, x26, #3
    str d25, [x14, x27]
    adds x28, x24, #2
    b.cs Ld1ccc811776e_c15
    ldr x14, [sp, #16384]
    ldr x15, [sp, #16392]
    cmp x28, x15
    b.hs Ld1ccc811776e_c16
    lsl x15, x28, #3
    str d26, [x14, x15]
    sub x16, x29, #232
    str x15, [x16]
    movz x16, #59176
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_Model_16printing_density
    sub x16, x29, #224
    str d0, [x16, #0]
    sub x16, x29, #224
    str d1, [x16, #8]
    sub x16, x29, #224
    str d2, [x16, #16]
    sub x16, x29, #232
    ldr x15, [x16]
    ldr d24, [x29, #-224]
    ldr d25, [x29, #-216]
    ldr d26, [x29, #-208]
    ldr x14, [sp, #16400]
    ldr x12, [sp, #16408]
    cmp x24, x12
    b.hs Ld1ccc811776e_c17
    str d24, [x25, x14]
    ldr x14, [sp, #16400]
    ldr x12, [sp, #16408]
    cmp x26, x12
    b.hs Ld1ccc811776e_c18
    str d25, [x27, x14]
    ldr x14, [sp, #16400]
    ldr x12, [sp, #16408]
    cmp x28, x12
    b.hs Ld1ccc811776e_c19
    str d26, [x15, x14]
    add x23, x23, #1
    cmp x23, #33
    b.lo Ld1ccc811776e_91
Ld1ccc811776e_93:
    add x21, x21, #1
    cmp x21, #33
    b.lo Ld1ccc811776e_87
Ld1ccc811776e_89:
    add x19, x19, #1
    cmp x19, #33
    b.lo Ld1ccc811776e_83
Ld1ccc811776e_85:
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_13fit_sharpness
    movz x16, #58456
    sub x0, x29, x16
    bl _lb_10film_model_15fit_populations
    movz x16, #58456
    sub x10, x29, x16
    movz x16, #33704
    sub x0, x29, x16
    mov x1, x10
    movz x2, #15800
    bl _memcpy
    mov x9, #0
    movz x16, #17904
    sub x16, x29, x16
    strb w9, [x16]
    movz x16, #33704
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #15808
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    sub x16, x29, #16
    ldr x19, [x16]
    sub x16, x29, #24
    ldr x20, [x16]
    sub x16, x29, #32
    ldr x21, [x16]
    sub x16, x29, #40
    ldr x22, [x16]
    sub x16, x29, #48
    ldr x23, [x16]
    sub x16, x29, #56
    ldr x24, [x16]
    sub x16, x29, #64
    ldr x25, [x16]
    sub x16, x29, #72
    ldr x26, [x16]
    sub x16, x29, #80
    ldr x27, [x16]
    sub x16, x29, #88
    ldr x28, [x16]
    sub x16, x29, #96
    ldr d8, [x16]
    sub x16, x29, #104
    ldr d9, [x16]
    sub x16, x29, #112
    ldr d10, [x16]
    sub x16, x29, #120
    ldr d11, [x16]
    sub x16, x29, #128
    ldr d12, [x16]
    sub x16, x29, #136
    ldr d13, [x16]
    sub x16, x29, #144
    ldr d14, [x16]
    sub x16, x29, #152
    ldr d15, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld1ccc811776e_20:
    adrp x0, _lb_text_5fd4ebb21f5b@PAGE
    add x0, x0, _lb_text_5fd4ebb21f5b@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_30:
    adrp x0, _lb_text_a22879a05c52@PAGE
    add x0, x0, _lb_text_a22879a05c52@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_157:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_239:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_66:
    adrp x0, _lb_text_51b4612517fc@PAGE
    add x0, x0, _lb_text_51b4612517fc@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_76:
    adrp x0, _lb_text_74a794c842a2@PAGE
    add x0, x0, _lb_text_74a794c842a2@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c1:
    adrp x0, _lb_text_fa89680b763c@PAGE
    add x0, x0, _lb_text_fa89680b763c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c2:
    adrp x0, _lb_text_a31fbfb8e0f4@PAGE
    add x0, x0, _lb_text_a31fbfb8e0f4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c3:
    adrp x0, _lb_text_f2185230f028@PAGE
    add x0, x0, _lb_text_f2185230f028@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c4:
    adrp x0, _lb_text_0da630e5bc32@PAGE
    add x0, x0, _lb_text_0da630e5bc32@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c5:
    adrp x0, _lb_text_9e226d67efb4@PAGE
    add x0, x0, _lb_text_9e226d67efb4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c6:
    adrp x0, _lb_text_9e226d67efb4@PAGE
    add x0, x0, _lb_text_9e226d67efb4@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c7:
    adrp x0, _lb_text_9e226d67efb4@PAGE
    add x0, x0, _lb_text_9e226d67efb4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c8:
    adrp x0, _lb_text_9e226d67efb4@PAGE
    add x0, x0, _lb_text_9e226d67efb4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c9:
    adrp x0, _lb_text_887d6ec95bc0@PAGE
    add x0, x0, _lb_text_887d6ec95bc0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c10:
    adrp x0, _lb_text_e0adc04b0316@PAGE
    add x0, x0, _lb_text_e0adc04b0316@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c11:
    adrp x0, _lb_text_e0adc04b0316@PAGE
    add x0, x0, _lb_text_e0adc04b0316@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c12:
    adrp x0, _lb_text_e0adc04b0316@PAGE
    add x0, x0, _lb_text_e0adc04b0316@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c13:
    adrp x0, _lb_text_43146e837318@PAGE
    add x0, x0, _lb_text_43146e837318@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c14:
    adrp x0, _lb_text_5ea86909010a@PAGE
    add x0, x0, _lb_text_5ea86909010a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c15:
    adrp x0, _lb_text_9175e0deb889@PAGE
    add x0, x0, _lb_text_9175e0deb889@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c16:
    adrp x0, _lb_text_9175e0deb889@PAGE
    add x0, x0, _lb_text_9175e0deb889@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c17:
    adrp x0, _lb_text_84e8b47ae9f8@PAGE
    add x0, x0, _lb_text_84e8b47ae9f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c18:
    adrp x0, _lb_text_5ee335f6f3c3@PAGE
    add x0, x0, _lb_text_5ee335f6f3c3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld1ccc811776e_c19:
    adrp x0, _lb_text_9fe33b9b0b96@PAGE
    add x0, x0, _lb_text_9fe33b9b0b96@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld1ccc811776e_k0:
    .quad 13965043853221167104
Ld1ccc811776e_k1:
    .quad 4562254508917369340
Ld1ccc811776e_k2:
    .quad 4607632778762754458


    .p2align 2
    .globl _lb_11film_stocks_10kodak_5298
_lb_11film_stocks_10kodak_5298:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #20256
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str d8, [sp, #20240]
    str d9, [sp, #20232]
    str d10, [sp, #20224]
    str d11, [sp, #20216]
    str d12, [sp, #20208]
    movz x16, #9000
    sub x0, x29, x16
    mov x1, #0
    movz x2, #8952
    bl _memset
    adrp x14, _lb_text_1280ce5af4e6@PAGE
    add x14, x14, _lb_text_1280ce5af4e6@PAGEOFF
    str x14, [sp, #11256]
    movz x9, #19
    str x9, [sp, #11264]
    mov x9, #0
    str x9, [sp, #11272]
    fmov d8, #8.0000000
    str d8, [sp, #11280]
    fmov d24, #0.5000000
    str d24, [sp, #11288]
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    str x14, [sp, #11296]
    mov x9, #0
    str x9, [sp, #11304]
    fmov d9, xzr
    str d9, [sp, #11312]
    ldr d24, L3d8a2588a9c6_k0
    str d24, [sp, #11320]
    ldr d24, L3d8a2588a9c6_k1
    str d24, [sp, #11328]
    ldr d24, L3d8a2588a9c6_k2
    str d24, [sp, #11336]
    ldr d24, L3d8a2588a9c6_k3
    str d24, [sp, #9312]
    ldr d24, L3d8a2588a9c6_k4
    str d24, [sp, #9320]
    ldr d24, L3d8a2588a9c6_k5
    str d24, [sp, #9328]
    ldr d24, L3d8a2588a9c6_k6
    str d24, [sp, #9336]
    ldr d24, L3d8a2588a9c6_k7
    str d24, [sp, #9344]
    ldr d24, L3d8a2588a9c6_k8
    str d24, [sp, #9352]
    ldr d24, L3d8a2588a9c6_k9
    str d24, [sp, #9360]
    ldr d24, L3d8a2588a9c6_k10
    str d24, [sp, #9368]
    ldr d24, L3d8a2588a9c6_k11
    str d24, [sp, #9376]
    ldr d24, L3d8a2588a9c6_k12
    str d24, [sp, #9384]
    ldr d24, L3d8a2588a9c6_k13
    str d24, [sp, #9392]
    ldr d24, L3d8a2588a9c6_k14
    str d24, [sp, #9400]
    ldr d24, L3d8a2588a9c6_k15
    str d24, [sp, #9408]
    ldr d24, L3d8a2588a9c6_k16
    str d24, [sp, #9416]
    ldr d24, L3d8a2588a9c6_k17
    str d24, [sp, #9424]
    ldr d24, L3d8a2588a9c6_k18
    str d24, [sp, #9432]
    ldr d24, L3d8a2588a9c6_k19
    str d24, [sp, #9440]
    ldr d24, L3d8a2588a9c6_k20
    str d24, [sp, #9448]
    ldr d24, L3d8a2588a9c6_k21
    str d24, [sp, #9456]
    ldr d24, L3d8a2588a9c6_k22
    str d24, [sp, #9464]
    ldr d24, L3d8a2588a9c6_k23
    str d24, [sp, #9472]
    ldr d24, L3d8a2588a9c6_k24
    str d24, [sp, #9480]
    ldr d24, L3d8a2588a9c6_k25
    str d24, [sp, #9488]
    ldr d24, L3d8a2588a9c6_k26
    str d24, [sp, #9496]
    ldr d24, L3d8a2588a9c6_k27
    str d24, [sp, #9504]
    ldr d24, L3d8a2588a9c6_k28
    str d24, [sp, #9512]
    ldr d24, L3d8a2588a9c6_k29
    str d24, [sp, #9520]
    ldr d24, L3d8a2588a9c6_k30
    str d24, [sp, #9528]
    ldr d24, L3d8a2588a9c6_k31
    str d24, [sp, #9536]
    ldr d24, L3d8a2588a9c6_k32
    str d24, [sp, #9544]
    ldr d24, L3d8a2588a9c6_k33
    str d24, [sp, #9552]
    ldr d24, L3d8a2588a9c6_k34
    str d24, [sp, #9560]
    ldr d24, L3d8a2588a9c6_k35
    str d24, [sp, #9568]
    ldr d24, L3d8a2588a9c6_k36
    str d24, [sp, #9576]
    ldr d24, L3d8a2588a9c6_k37
    str d24, [sp, #9584]
    ldr d24, L3d8a2588a9c6_k38
    str d24, [sp, #9592]
    ldr d24, L3d8a2588a9c6_k39
    str d24, [sp, #9600]
    ldr d24, L3d8a2588a9c6_k40
    str d24, [sp, #9608]
    ldr d24, L3d8a2588a9c6_k41
    str d24, [sp, #9616]
    ldr d24, L3d8a2588a9c6_k42
    str d24, [sp, #9624]
    ldr d24, L3d8a2588a9c6_k43
    str d24, [sp, #9632]
    ldr d24, L3d8a2588a9c6_k44
    str d24, [sp, #9640]
    ldr d24, L3d8a2588a9c6_k45
    str d24, [sp, #9648]
    ldr d24, L3d8a2588a9c6_k46
    str d24, [sp, #9656]
    ldr d24, L3d8a2588a9c6_k47
    str d24, [sp, #9664]
    ldr d24, L3d8a2588a9c6_k48
    str d24, [sp, #9672]
    ldr d24, L3d8a2588a9c6_k49
    str d24, [sp, #9680]
    ldr d24, L3d8a2588a9c6_k50
    str d24, [sp, #9688]
    ldr d24, L3d8a2588a9c6_k51
    str d24, [sp, #9696]
    ldr d24, L3d8a2588a9c6_k52
    str d24, [sp, #9704]
    ldr d24, L3d8a2588a9c6_k53
    str d24, [sp, #9712]
    ldr d24, L3d8a2588a9c6_k54
    str d24, [sp, #9720]
    ldr d24, L3d8a2588a9c6_k55
    str d24, [sp, #9728]
    ldr d24, L3d8a2588a9c6_k56
    str d24, [sp, #9736]
    ldr d24, L3d8a2588a9c6_k57
    str d24, [sp, #9744]
    ldr d24, L3d8a2588a9c6_k58
    str d24, [sp, #9752]
    ldr d24, L3d8a2588a9c6_k59
    str d24, [sp, #9760]
    ldr d24, L3d8a2588a9c6_k60
    str d24, [sp, #9768]
    ldr d24, L3d8a2588a9c6_k61
    str d24, [sp, #9776]
    ldr d24, L3d8a2588a9c6_k62
    str d24, [sp, #9784]
    ldr d24, L3d8a2588a9c6_k63
    str d24, [sp, #9792]
    ldr d24, L3d8a2588a9c6_k64
    str d24, [sp, #9800]
    ldr d24, L3d8a2588a9c6_k65
    str d24, [sp, #9808]
    ldr d24, L3d8a2588a9c6_k66
    str d24, [sp, #9816]
    ldr d24, L3d8a2588a9c6_k67
    str d24, [sp, #9824]
    ldr d24, L3d8a2588a9c6_k68
    str d24, [sp, #9832]
    ldr d24, L3d8a2588a9c6_k69
    str d24, [sp, #9840]
    ldr d24, L3d8a2588a9c6_k70
    str d24, [sp, #9848]
    ldr d24, L3d8a2588a9c6_k71
    str d24, [sp, #9856]
    ldr d24, L3d8a2588a9c6_k72
    str d24, [sp, #9864]
    ldr d24, L3d8a2588a9c6_k73
    str d24, [sp, #9872]
    ldr d24, L3d8a2588a9c6_k74
    str d24, [sp, #9880]
    ldr d24, L3d8a2588a9c6_k75
    str d24, [sp, #9888]
    ldr d24, L3d8a2588a9c6_k76
    str d24, [sp, #9896]
    ldr d24, L3d8a2588a9c6_k77
    str d24, [sp, #9904]
    ldr d24, L3d8a2588a9c6_k78
    str d24, [sp, #9912]
    ldr d24, L3d8a2588a9c6_k79
    str d24, [sp, #9920]
    ldr d24, L3d8a2588a9c6_k80
    str d24, [sp, #9928]
    ldr d24, L3d8a2588a9c6_k81
    str d24, [sp, #9936]
    ldr d24, L3d8a2588a9c6_k82
    str d24, [sp, #9944]
    ldr d24, L3d8a2588a9c6_k83
    str d24, [sp, #9952]
    ldr d24, L3d8a2588a9c6_k84
    str d24, [sp, #9960]
    ldr d24, L3d8a2588a9c6_k85
    str d24, [sp, #9968]
    ldr d24, L3d8a2588a9c6_k86
    str d24, [sp, #9976]
    ldr d24, L3d8a2588a9c6_k87
    str d24, [sp, #9984]
    ldr d24, L3d8a2588a9c6_k88
    str d24, [sp, #9992]
    ldr d24, L3d8a2588a9c6_k89
    str d24, [sp, #10000]
    ldr d24, L3d8a2588a9c6_k90
    str d24, [sp, #10008]
    ldr d24, L3d8a2588a9c6_k91
    str d24, [sp, #10016]
    ldr d24, L3d8a2588a9c6_k92
    str d24, [sp, #10024]
    ldr d24, L3d8a2588a9c6_k93
    str d24, [sp, #10032]
    ldr d24, L3d8a2588a9c6_k94
    str d24, [sp, #10040]
    ldr d24, L3d8a2588a9c6_k95
    str d24, [sp, #10048]
    ldr d24, L3d8a2588a9c6_k96
    str d24, [sp, #10056]
    ldr d24, L3d8a2588a9c6_k97
    str d24, [sp, #10064]
    ldr d24, L3d8a2588a9c6_k98
    str d24, [sp, #10072]
    ldr d24, L3d8a2588a9c6_k99
    str d24, [sp, #10080]
    ldr d24, L3d8a2588a9c6_k100
    str d24, [sp, #10088]
    ldr d24, L3d8a2588a9c6_k101
    str d24, [sp, #10096]
    ldr d24, L3d8a2588a9c6_k102
    str d24, [sp, #10104]
    ldr d24, L3d8a2588a9c6_k103
    str d24, [sp, #10112]
    ldr d24, L3d8a2588a9c6_k104
    str d24, [sp, #10120]
    ldr d24, L3d8a2588a9c6_k105
    str d24, [sp, #10128]
    ldr d24, L3d8a2588a9c6_k106
    str d24, [sp, #10136]
    ldr d24, L3d8a2588a9c6_k107
    str d24, [sp, #10144]
    ldr d24, L3d8a2588a9c6_k108
    str d24, [sp, #10152]
    ldr d24, L3d8a2588a9c6_k109
    str d24, [sp, #10160]
    ldr d24, L3d8a2588a9c6_k110
    str d24, [sp, #10168]
    ldr d24, L3d8a2588a9c6_k111
    str d24, [sp, #10176]
    ldr d24, L3d8a2588a9c6_k112
    str d24, [sp, #10184]
    ldr d24, L3d8a2588a9c6_k113
    str d24, [sp, #10192]
    ldr d24, L3d8a2588a9c6_k114
    str d24, [sp, #10200]
    ldr d24, L3d8a2588a9c6_k115
    str d24, [sp, #10208]
    ldr d24, L3d8a2588a9c6_k116
    str d24, [sp, #10216]
    ldr d24, L3d8a2588a9c6_k117
    str d24, [sp, #10224]
    ldr d24, L3d8a2588a9c6_k118
    str d24, [sp, #10232]
    ldr d24, L3d8a2588a9c6_k119
    str d24, [sp, #10240]
    ldr d24, L3d8a2588a9c6_k120
    str d24, [sp, #10248]
    ldr d24, L3d8a2588a9c6_k121
    str d24, [sp, #10256]
    ldr d24, L3d8a2588a9c6_k122
    str d24, [sp, #10264]
    ldr d24, L3d8a2588a9c6_k123
    str d24, [sp, #10272]
    ldr d24, L3d8a2588a9c6_k124
    str d24, [sp, #10280]
    ldr d24, L3d8a2588a9c6_k125
    str d24, [sp, #10288]
    ldr d24, L3d8a2588a9c6_k126
    str d24, [sp, #10296]
    ldr d24, L3d8a2588a9c6_k127
    str d24, [sp, #10304]
    ldr d24, L3d8a2588a9c6_k128
    str d24, [sp, #10312]
    ldr d24, L3d8a2588a9c6_k129
    str d24, [sp, #10320]
    ldr d24, L3d8a2588a9c6_k130
    str d24, [sp, #10328]
    ldr d24, L3d8a2588a9c6_k131
    str d24, [sp, #10336]
    ldr d24, L3d8a2588a9c6_k132
    str d24, [sp, #10344]
    ldr d24, L3d8a2588a9c6_k133
    str d24, [sp, #10352]
    ldr d24, L3d8a2588a9c6_k134
    str d24, [sp, #10360]
    ldr d24, L3d8a2588a9c6_k135
    str d24, [sp, #10368]
    ldr d24, L3d8a2588a9c6_k136
    str d24, [sp, #10376]
    ldr d24, L3d8a2588a9c6_k137
    str d24, [sp, #10384]
    ldr d24, L3d8a2588a9c6_k138
    str d24, [sp, #10392]
    ldr d24, L3d8a2588a9c6_k139
    str d24, [sp, #10400]
    ldr d24, L3d8a2588a9c6_k140
    str d24, [sp, #10408]
    ldr d24, L3d8a2588a9c6_k141
    str d24, [sp, #10416]
    ldr d24, L3d8a2588a9c6_k142
    str d24, [sp, #10424]
    ldr d24, L3d8a2588a9c6_k143
    str d24, [sp, #10432]
    ldr d24, L3d8a2588a9c6_k144
    str d24, [sp, #10440]
    ldr d24, L3d8a2588a9c6_k145
    str d24, [sp, #10448]
    ldr d24, L3d8a2588a9c6_k146
    str d24, [sp, #10456]
    ldr d24, L3d8a2588a9c6_k147
    str d24, [sp, #10464]
    ldr d24, L3d8a2588a9c6_k148
    str d24, [sp, #10472]
    ldr d24, L3d8a2588a9c6_k149
    str d24, [sp, #10480]
    ldr d24, L3d8a2588a9c6_k150
    str d24, [sp, #10488]
    ldr d24, L3d8a2588a9c6_k151
    str d24, [sp, #10496]
    ldr d24, L3d8a2588a9c6_k152
    str d24, [sp, #10504]
    ldr d24, L3d8a2588a9c6_k153
    str d24, [sp, #10512]
    ldr d24, L3d8a2588a9c6_k154
    str d24, [sp, #10520]
    ldr d24, L3d8a2588a9c6_k155
    str d24, [sp, #10528]
    ldr d24, L3d8a2588a9c6_k156
    str d24, [sp, #10536]
    ldr d24, L3d8a2588a9c6_k157
    str d24, [sp, #10544]
    ldr d24, L3d8a2588a9c6_k158
    str d24, [sp, #10552]
    ldr d24, L3d8a2588a9c6_k159
    str d24, [sp, #10560]
    ldr d24, L3d8a2588a9c6_k160
    str d24, [sp, #10568]
    ldr d24, L3d8a2588a9c6_k161
    str d24, [sp, #10576]
    ldr d24, L3d8a2588a9c6_k162
    str d24, [sp, #10584]
    ldr d24, L3d8a2588a9c6_k163
    str d24, [sp, #10592]
    ldr d24, L3d8a2588a9c6_k164
    str d24, [sp, #10600]
    fmov d24, #0.2500000
    str d24, [sp, #10608]
    ldr d24, L3d8a2588a9c6_k165
    str d24, [sp, #10616]
    ldr d24, L3d8a2588a9c6_k166
    str d24, [sp, #10624]
    ldr d24, L3d8a2588a9c6_k167
    str d24, [sp, #10632]
    ldr d24, L3d8a2588a9c6_k168
    str d24, [sp, #10640]
    ldr d24, L3d8a2588a9c6_k169
    str d24, [sp, #10648]
    ldr d25, L3d8a2588a9c6_k170
    str d25, [sp, #10656]
    ldr d25, L3d8a2588a9c6_k171
    str d25, [sp, #10664]
    ldr d26, L3d8a2588a9c6_k172
    str d26, [sp, #10672]
    str d25, [sp, #10680]
    ldr d25, L3d8a2588a9c6_k173
    str d25, [sp, #10688]
    ldr d25, L3d8a2588a9c6_k174
    str d25, [sp, #10696]
    str d24, [sp, #10704]
    str d24, [sp, #10712]
    str d24, [sp, #10720]
    ldr d24, L3d8a2588a9c6_k175
    str d24, [sp, #10728]
    str d24, [sp, #10736]
    ldr d24, L3d8a2588a9c6_k176
    str d24, [sp, #10744]
    ldr d24, L3d8a2588a9c6_k177
    str d24, [sp, #10752]
    ldr d24, L3d8a2588a9c6_k178
    str d24, [sp, #10760]
    ldr d24, L3d8a2588a9c6_k179
    str d24, [sp, #10768]
    ldr d24, L3d8a2588a9c6_k180
    str d24, [sp, #10776]
    ldr d24, L3d8a2588a9c6_k181
    str d24, [sp, #10784]
    ldr d24, L3d8a2588a9c6_k182
    str d24, [sp, #10792]
    ldr d24, L3d8a2588a9c6_k183
    str d24, [sp, #10800]
    ldr d24, L3d8a2588a9c6_k184
    str d24, [sp, #10808]
    ldr d24, L3d8a2588a9c6_k185
    str d24, [sp, #10816]
    ldr d24, L3d8a2588a9c6_k186
    str d24, [sp, #10824]
    ldr d24, L3d8a2588a9c6_k187
    str d24, [sp, #10832]
    ldr d24, L3d8a2588a9c6_k188
    str d24, [sp, #10840]
    ldr d24, L3d8a2588a9c6_k189
    str d24, [sp, #10848]
    ldr d24, L3d8a2588a9c6_k190
    str d24, [sp, #10856]
    ldr d24, L3d8a2588a9c6_k191
    str d24, [sp, #10864]
    ldr d24, L3d8a2588a9c6_k192
    str d24, [sp, #10872]
    ldr d24, L3d8a2588a9c6_k193
    str d24, [sp, #10880]
    ldr d24, L3d8a2588a9c6_k194
    str d24, [sp, #10888]
    ldr d24, L3d8a2588a9c6_k195
    str d24, [sp, #10896]
    ldr d24, L3d8a2588a9c6_k196
    str d24, [sp, #10904]
    ldr d24, L3d8a2588a9c6_k197
    str d24, [sp, #10912]
    ldr d24, L3d8a2588a9c6_k198
    str d24, [sp, #10920]
    ldr d24, L3d8a2588a9c6_k199
    str d24, [sp, #10928]
    ldr d24, L3d8a2588a9c6_k200
    str d24, [sp, #10936]
    ldr d24, L3d8a2588a9c6_k201
    str d24, [sp, #10944]
    ldr d24, L3d8a2588a9c6_k202
    str d24, [sp, #10952]
    ldr d24, L3d8a2588a9c6_k203
    str d24, [sp, #10960]
    ldr d24, L3d8a2588a9c6_k204
    str d24, [sp, #10968]
    ldr d24, L3d8a2588a9c6_k205
    str d24, [sp, #10976]
    ldr d24, L3d8a2588a9c6_k206
    str d24, [sp, #10984]
    ldr d24, L3d8a2588a9c6_k207
    str d24, [sp, #10992]
    ldr d24, L3d8a2588a9c6_k208
    str d24, [sp, #11000]
    ldr d24, L3d8a2588a9c6_k209
    str d24, [sp, #11008]
    ldr d24, L3d8a2588a9c6_k210
    str d24, [sp, #11016]
    ldr d24, L3d8a2588a9c6_k211
    str d24, [sp, #11024]
    ldr d24, L3d8a2588a9c6_k212
    str d24, [sp, #11032]
    ldr d24, L3d8a2588a9c6_k213
    str d24, [sp, #11040]
    ldr d24, L3d8a2588a9c6_k214
    str d24, [sp, #11048]
    ldr d24, L3d8a2588a9c6_k215
    str d24, [sp, #11056]
    ldr d24, L3d8a2588a9c6_k216
    str d24, [sp, #11064]
    ldr d24, L3d8a2588a9c6_k217
    str d24, [sp, #11072]
    ldr d24, L3d8a2588a9c6_k218
    str d24, [sp, #11080]
    ldr d24, L3d8a2588a9c6_k219
    str d24, [sp, #11088]
    ldr d24, L3d8a2588a9c6_k220
    str d24, [sp, #11096]
    ldr d24, L3d8a2588a9c6_k221
    str d24, [sp, #11104]
    ldr d24, L3d8a2588a9c6_k222
    str d24, [sp, #11112]
    ldr d24, L3d8a2588a9c6_k223
    str d24, [sp, #11120]
    ldr d24, L3d8a2588a9c6_k224
    str d24, [sp, #11128]
    ldr d24, L3d8a2588a9c6_k225
    str d24, [sp, #11136]
    ldr d24, L3d8a2588a9c6_k226
    str d24, [sp, #11144]
    ldr d24, L3d8a2588a9c6_k227
    str d24, [sp, #11152]
    ldr d24, L3d8a2588a9c6_k228
    str d24, [sp, #11160]
    ldr d24, L3d8a2588a9c6_k229
    str d24, [sp, #11168]
    ldr d24, L3d8a2588a9c6_k230
    str d24, [sp, #11176]
    ldr d24, L3d8a2588a9c6_k231
    str d24, [sp, #11184]
    ldr d24, L3d8a2588a9c6_k232
    str d24, [sp, #11192]
    ldr d24, L3d8a2588a9c6_k233
    str d24, [sp, #11200]
    ldr d24, L3d8a2588a9c6_k234
    str d24, [sp, #11208]
    ldr d24, L3d8a2588a9c6_k235
    str d24, [sp, #11216]
    ldr d24, L3d8a2588a9c6_k236
    str d24, [sp, #11224]
    ldr d24, L3d8a2588a9c6_k237
    str d24, [sp, #11232]
    ldr d24, L3d8a2588a9c6_k238
    str d24, [sp, #11240]
    ldr d24, L3d8a2588a9c6_k239
    str d24, [sp, #11248]
    movz x16, #10944
    sub x10, x29, x16
    movz x16, #8912
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k240
    str d24, [sp, #9312]
    ldr d24, L3d8a2588a9c6_k241
    str d24, [sp, #9320]
    ldr d24, L3d8a2588a9c6_k242
    str d24, [sp, #9328]
    ldr d24, L3d8a2588a9c6_k243
    str d24, [sp, #9336]
    ldr d24, L3d8a2588a9c6_k244
    str d24, [sp, #9344]
    fmov d24, #0.1875000
    str d24, [sp, #9352]
    ldr d24, L3d8a2588a9c6_k245
    str d24, [sp, #9360]
    ldr d24, L3d8a2588a9c6_k246
    str d24, [sp, #9368]
    ldr d24, L3d8a2588a9c6_k247
    str d24, [sp, #9376]
    ldr d24, L3d8a2588a9c6_k248
    str d24, [sp, #9384]
    ldr d24, L3d8a2588a9c6_k249
    str d24, [sp, #9392]
    ldr d24, L3d8a2588a9c6_k250
    str d24, [sp, #9400]
    ldr d24, L3d8a2588a9c6_k251
    str d24, [sp, #9408]
    ldr d24, L3d8a2588a9c6_k252
    str d24, [sp, #9416]
    ldr d24, L3d8a2588a9c6_k253
    str d24, [sp, #9424]
    ldr d24, L3d8a2588a9c6_k254
    str d24, [sp, #9432]
    ldr d24, L3d8a2588a9c6_k255
    str d24, [sp, #9440]
    ldr d25, L3d8a2588a9c6_k256
    str d25, [sp, #9448]
    ldr d25, L3d8a2588a9c6_k257
    str d25, [sp, #9456]
    ldr d25, L3d8a2588a9c6_k258
    str d25, [sp, #9464]
    ldr d25, L3d8a2588a9c6_k259
    str d25, [sp, #9472]
    ldr d25, L3d8a2588a9c6_k260
    str d25, [sp, #9480]
    ldr d25, L3d8a2588a9c6_k261
    str d25, [sp, #9488]
    str d25, [sp, #9496]
    str d25, [sp, #9504]
    ldr d25, L3d8a2588a9c6_k262
    str d25, [sp, #9512]
    ldr d25, L3d8a2588a9c6_k263
    str d25, [sp, #9520]
    ldr d25, L3d8a2588a9c6_k264
    str d25, [sp, #9528]
    ldr d25, L3d8a2588a9c6_k265
    str d25, [sp, #9536]
    ldr d25, L3d8a2588a9c6_k266
    str d25, [sp, #9544]
    ldr d25, L3d8a2588a9c6_k267
    str d25, [sp, #9552]
    ldr d25, L3d8a2588a9c6_k268
    str d25, [sp, #9560]
    ldr d25, L3d8a2588a9c6_k269
    str d25, [sp, #9568]
    ldr d25, L3d8a2588a9c6_k270
    str d25, [sp, #9576]
    ldr d26, L3d8a2588a9c6_k271
    str d26, [sp, #9584]
    ldr d26, L3d8a2588a9c6_k272
    str d26, [sp, #9592]
    ldr d26, L3d8a2588a9c6_k273
    str d26, [sp, #9600]
    ldr d26, L3d8a2588a9c6_k274
    str d26, [sp, #9608]
    ldr d26, L3d8a2588a9c6_k275
    str d26, [sp, #9616]
    ldr d26, L3d8a2588a9c6_k276
    str d26, [sp, #9624]
    ldr d26, L3d8a2588a9c6_k277
    str d26, [sp, #9632]
    ldr d26, L3d8a2588a9c6_k278
    str d26, [sp, #9640]
    ldr d26, L3d8a2588a9c6_k279
    str d26, [sp, #9648]
    ldr d26, L3d8a2588a9c6_k280
    str d26, [sp, #9656]
    ldr d26, L3d8a2588a9c6_k281
    str d26, [sp, #9664]
    ldr d26, L3d8a2588a9c6_k282
    str d26, [sp, #9672]
    ldr d26, L3d8a2588a9c6_k283
    str d26, [sp, #9680]
    ldr d26, L3d8a2588a9c6_k284
    str d26, [sp, #9688]
    ldr d26, L3d8a2588a9c6_k285
    str d26, [sp, #9696]
    ldr d26, L3d8a2588a9c6_k286
    str d26, [sp, #9704]
    ldr d26, L3d8a2588a9c6_k287
    str d26, [sp, #9712]
    ldr d26, L3d8a2588a9c6_k288
    str d26, [sp, #9720]
    ldr d26, L3d8a2588a9c6_k289
    str d26, [sp, #9728]
    ldr d26, L3d8a2588a9c6_k290
    str d26, [sp, #9736]
    ldr d26, L3d8a2588a9c6_k291
    str d26, [sp, #9744]
    ldr d26, L3d8a2588a9c6_k292
    str d26, [sp, #9752]
    ldr d26, L3d8a2588a9c6_k293
    str d26, [sp, #9760]
    ldr d26, L3d8a2588a9c6_k294
    str d26, [sp, #9768]
    ldr d26, L3d8a2588a9c6_k295
    str d26, [sp, #9776]
    ldr d26, L3d8a2588a9c6_k296
    str d26, [sp, #9784]
    ldr d26, L3d8a2588a9c6_k297
    str d26, [sp, #9792]
    ldr d26, L3d8a2588a9c6_k298
    str d26, [sp, #9800]
    ldr d26, L3d8a2588a9c6_k299
    str d26, [sp, #9808]
    ldr d26, L3d8a2588a9c6_k300
    str d26, [sp, #9816]
    ldr d26, L3d8a2588a9c6_k301
    str d26, [sp, #9824]
    ldr d27, L3d8a2588a9c6_k302
    str d27, [sp, #9832]
    ldr d27, L3d8a2588a9c6_k303
    str d27, [sp, #9840]
    ldr d27, L3d8a2588a9c6_k304
    str d27, [sp, #9848]
    ldr d27, L3d8a2588a9c6_k305
    str d27, [sp, #9856]
    ldr d27, L3d8a2588a9c6_k306
    str d27, [sp, #9864]
    ldr d27, L3d8a2588a9c6_k307
    str d27, [sp, #9872]
    ldr d27, L3d8a2588a9c6_k308
    str d27, [sp, #9880]
    ldr d27, L3d8a2588a9c6_k309
    str d27, [sp, #9888]
    ldr d27, L3d8a2588a9c6_k310
    str d27, [sp, #9896]
    ldr d27, L3d8a2588a9c6_k311
    str d27, [sp, #9904]
    ldr d27, L3d8a2588a9c6_k312
    str d27, [sp, #9912]
    ldr d27, L3d8a2588a9c6_k313
    str d27, [sp, #9920]
    ldr d27, L3d8a2588a9c6_k314
    str d27, [sp, #9928]
    ldr d27, L3d8a2588a9c6_k315
    str d27, [sp, #9936]
    ldr d27, L3d8a2588a9c6_k316
    str d27, [sp, #9944]
    ldr d27, L3d8a2588a9c6_k317
    str d27, [sp, #9952]
    ldr d27, L3d8a2588a9c6_k318
    str d27, [sp, #9960]
    ldr d27, L3d8a2588a9c6_k319
    str d27, [sp, #9968]
    ldr d27, L3d8a2588a9c6_k320
    str d27, [sp, #9976]
    ldr d27, L3d8a2588a9c6_k321
    str d27, [sp, #9984]
    ldr d27, L3d8a2588a9c6_k322
    str d27, [sp, #9992]
    ldr d27, L3d8a2588a9c6_k323
    str d27, [sp, #10000]
    ldr d27, L3d8a2588a9c6_k324
    str d27, [sp, #10008]
    ldr d27, L3d8a2588a9c6_k325
    str d27, [sp, #10016]
    ldr d27, L3d8a2588a9c6_k326
    str d27, [sp, #10024]
    ldr d27, L3d8a2588a9c6_k327
    str d27, [sp, #10032]
    ldr d27, L3d8a2588a9c6_k328
    str d27, [sp, #10040]
    ldr d27, L3d8a2588a9c6_k329
    str d27, [sp, #10048]
    ldr d27, L3d8a2588a9c6_k330
    str d27, [sp, #10056]
    str d25, [sp, #10064]
    ldr d25, L3d8a2588a9c6_k331
    str d25, [sp, #10072]
    ldr d25, L3d8a2588a9c6_k332
    str d25, [sp, #10080]
    ldr d25, L3d8a2588a9c6_k333
    str d25, [sp, #10088]
    ldr d25, L3d8a2588a9c6_k334
    str d25, [sp, #10096]
    ldr d25, L3d8a2588a9c6_k335
    str d25, [sp, #10104]
    ldr d25, L3d8a2588a9c6_k336
    str d25, [sp, #10112]
    ldr d25, L3d8a2588a9c6_k337
    str d25, [sp, #10120]
    ldr d25, L3d8a2588a9c6_k338
    str d25, [sp, #10128]
    ldr d25, L3d8a2588a9c6_k339
    str d25, [sp, #10136]
    ldr d25, L3d8a2588a9c6_k340
    str d25, [sp, #10144]
    ldr d25, L3d8a2588a9c6_k341
    str d25, [sp, #10152]
    ldr d25, L3d8a2588a9c6_k342
    str d25, [sp, #10160]
    ldr d25, L3d8a2588a9c6_k343
    str d25, [sp, #10168]
    ldr d25, L3d8a2588a9c6_k344
    str d25, [sp, #10176]
    ldr d25, L3d8a2588a9c6_k345
    str d25, [sp, #10184]
    ldr d25, L3d8a2588a9c6_k346
    str d25, [sp, #10192]
    ldr d25, L3d8a2588a9c6_k347
    str d25, [sp, #10200]
    ldr d25, L3d8a2588a9c6_k348
    str d25, [sp, #10208]
    ldr d25, L3d8a2588a9c6_k349
    str d25, [sp, #10216]
    str d25, [sp, #10224]
    str d26, [sp, #10232]
    ldr d25, L3d8a2588a9c6_k350
    str d25, [sp, #10240]
    ldr d25, L3d8a2588a9c6_k351
    str d25, [sp, #10248]
    ldr d25, L3d8a2588a9c6_k352
    str d25, [sp, #10256]
    ldr d25, L3d8a2588a9c6_k353
    str d25, [sp, #10264]
    ldr d25, L3d8a2588a9c6_k354
    str d25, [sp, #10272]
    ldr d25, L3d8a2588a9c6_k355
    str d25, [sp, #10280]
    ldr d25, L3d8a2588a9c6_k356
    str d25, [sp, #10288]
    ldr d25, L3d8a2588a9c6_k357
    str d25, [sp, #10296]
    ldr d25, L3d8a2588a9c6_k358
    str d25, [sp, #10304]
    ldr d25, L3d8a2588a9c6_k359
    str d25, [sp, #10312]
    ldr d25, L3d8a2588a9c6_k360
    str d25, [sp, #10320]
    ldr d25, L3d8a2588a9c6_k361
    str d25, [sp, #10328]
    ldr d25, L3d8a2588a9c6_k362
    str d25, [sp, #10336]
    ldr d25, L3d8a2588a9c6_k363
    str d25, [sp, #10344]
    ldr d25, L3d8a2588a9c6_k364
    str d25, [sp, #10352]
    ldr d25, L3d8a2588a9c6_k365
    str d25, [sp, #10360]
    ldr d25, L3d8a2588a9c6_k366
    str d25, [sp, #10368]
    ldr d25, L3d8a2588a9c6_k367
    str d25, [sp, #10376]
    ldr d25, L3d8a2588a9c6_k368
    str d25, [sp, #10384]
    ldr d25, L3d8a2588a9c6_k369
    str d25, [sp, #10392]
    ldr d25, L3d8a2588a9c6_k370
    str d25, [sp, #10400]
    ldr d10, L3d8a2588a9c6_k371
    str d10, [sp, #10408]
    ldr d25, L3d8a2588a9c6_k372
    str d25, [sp, #10416]
    str d25, [sp, #10424]
    ldr d25, L3d8a2588a9c6_k373
    str d25, [sp, #10432]
    ldr d25, L3d8a2588a9c6_k374
    str d25, [sp, #10440]
    ldr d25, L3d8a2588a9c6_k375
    str d25, [sp, #10448]
    ldr d25, L3d8a2588a9c6_k376
    str d25, [sp, #10456]
    ldr d25, L3d8a2588a9c6_k377
    str d25, [sp, #10464]
    ldr d25, L3d8a2588a9c6_k378
    str d25, [sp, #10472]
    ldr d25, L3d8a2588a9c6_k379
    str d25, [sp, #10480]
    ldr d25, L3d8a2588a9c6_k380
    str d25, [sp, #10488]
    ldr d25, L3d8a2588a9c6_k381
    str d25, [sp, #10496]
    ldr d25, L3d8a2588a9c6_k382
    str d25, [sp, #10504]
    ldr d25, L3d8a2588a9c6_k383
    str d25, [sp, #10512]
    ldr d25, L3d8a2588a9c6_k384
    str d25, [sp, #10520]
    ldr d26, L3d8a2588a9c6_k385
    str d26, [sp, #10528]
    ldr d26, L3d8a2588a9c6_k386
    str d26, [sp, #10536]
    ldr d26, L3d8a2588a9c6_k387
    str d26, [sp, #10544]
    ldr d26, L3d8a2588a9c6_k388
    str d26, [sp, #10552]
    ldr d26, L3d8a2588a9c6_k389
    str d26, [sp, #10560]
    ldr d26, L3d8a2588a9c6_k390
    str d26, [sp, #10568]
    ldr d26, L3d8a2588a9c6_k391
    str d26, [sp, #10576]
    ldr d26, L3d8a2588a9c6_k392
    str d26, [sp, #10584]
    ldr d26, L3d8a2588a9c6_k393
    str d26, [sp, #10592]
    ldr d26, L3d8a2588a9c6_k394
    str d26, [sp, #10600]
    ldr d26, L3d8a2588a9c6_k395
    str d26, [sp, #10608]
    ldr d26, L3d8a2588a9c6_k396
    str d26, [sp, #10616]
    ldr d26, L3d8a2588a9c6_k397
    str d26, [sp, #10624]
    ldr d26, L3d8a2588a9c6_k398
    str d26, [sp, #10632]
    ldr d26, L3d8a2588a9c6_k399
    str d26, [sp, #10640]
    ldr d26, L3d8a2588a9c6_k400
    str d26, [sp, #10648]
    ldr d26, L3d8a2588a9c6_k401
    str d26, [sp, #10656]
    ldr d26, L3d8a2588a9c6_k402
    str d26, [sp, #10664]
    ldr d26, L3d8a2588a9c6_k403
    str d26, [sp, #10672]
    ldr d26, L3d8a2588a9c6_k404
    str d26, [sp, #10680]
    ldr d26, L3d8a2588a9c6_k405
    str d26, [sp, #10688]
    ldr d26, L3d8a2588a9c6_k406
    str d26, [sp, #10696]
    ldr d26, L3d8a2588a9c6_k407
    str d26, [sp, #10704]
    ldr d26, L3d8a2588a9c6_k408
    str d26, [sp, #10712]
    ldr d26, L3d8a2588a9c6_k409
    str d26, [sp, #10720]
    ldr d26, L3d8a2588a9c6_k410
    str d26, [sp, #10728]
    ldr d26, L3d8a2588a9c6_k411
    str d26, [sp, #10736]
    ldr d26, L3d8a2588a9c6_k412
    str d26, [sp, #10744]
    ldr d26, L3d8a2588a9c6_k413
    str d26, [sp, #10752]
    ldr d26, L3d8a2588a9c6_k414
    str d26, [sp, #10760]
    ldr d26, L3d8a2588a9c6_k415
    str d26, [sp, #10768]
    ldr d26, L3d8a2588a9c6_k416
    str d26, [sp, #10776]
    ldr d26, L3d8a2588a9c6_k417
    str d26, [sp, #10784]
    ldr d26, L3d8a2588a9c6_k418
    str d26, [sp, #10792]
    ldr d26, L3d8a2588a9c6_k419
    str d26, [sp, #10800]
    ldr d26, L3d8a2588a9c6_k420
    str d26, [sp, #10808]
    ldr d26, L3d8a2588a9c6_k421
    str d26, [sp, #10816]
    ldr d26, L3d8a2588a9c6_k422
    str d26, [sp, #10824]
    ldr d26, L3d8a2588a9c6_k423
    str d26, [sp, #10832]
    ldr d26, L3d8a2588a9c6_k424
    str d26, [sp, #10840]
    ldr d26, L3d8a2588a9c6_k425
    str d26, [sp, #10848]
    str d25, [sp, #10856]
    ldr d25, L3d8a2588a9c6_k426
    str d25, [sp, #10864]
    ldr d25, L3d8a2588a9c6_k427
    str d25, [sp, #10872]
    ldr d25, L3d8a2588a9c6_k428
    str d25, [sp, #10880]
    ldr d25, L3d8a2588a9c6_k429
    str d25, [sp, #10888]
    ldr d25, L3d8a2588a9c6_k430
    str d25, [sp, #10896]
    ldr d25, L3d8a2588a9c6_k431
    str d25, [sp, #10904]
    ldr d25, L3d8a2588a9c6_k432
    str d25, [sp, #10912]
    ldr d25, L3d8a2588a9c6_k433
    str d25, [sp, #10920]
    ldr d25, L3d8a2588a9c6_k434
    str d25, [sp, #10928]
    ldr d26, L3d8a2588a9c6_k435
    str d26, [sp, #10936]
    ldr d26, L3d8a2588a9c6_k436
    str d26, [sp, #10944]
    ldr d27, L3d8a2588a9c6_k437
    str d27, [sp, #10952]
    ldr d27, L3d8a2588a9c6_k438
    str d27, [sp, #10960]
    str d27, [sp, #10968]
    str d27, [sp, #10976]
    ldr d27, L3d8a2588a9c6_k439
    str d27, [sp, #10984]
    ldr d11, L3d8a2588a9c6_k440
    str d11, [sp, #10992]
    ldr d27, L3d8a2588a9c6_k441
    str d27, [sp, #11000]
    ldr d27, L3d8a2588a9c6_k442
    str d27, [sp, #11008]
    ldr d27, L3d8a2588a9c6_k443
    str d27, [sp, #11016]
    ldr d27, L3d8a2588a9c6_k444
    str d27, [sp, #11024]
    ldr d27, L3d8a2588a9c6_k445
    str d27, [sp, #11032]
    ldr d27, L3d8a2588a9c6_k446
    str d27, [sp, #11040]
    ldr d27, L3d8a2588a9c6_k447
    str d27, [sp, #11048]
    ldr d27, L3d8a2588a9c6_k448
    str d27, [sp, #11056]
    ldr d27, L3d8a2588a9c6_k449
    str d27, [sp, #11064]
    ldr d27, L3d8a2588a9c6_k450
    str d27, [sp, #11072]
    ldr d28, L3d8a2588a9c6_k451
    str d28, [sp, #11080]
    ldr d28, L3d8a2588a9c6_k452
    str d28, [sp, #11088]
    ldr d28, L3d8a2588a9c6_k453
    str d28, [sp, #11096]
    str d28, [sp, #11104]
    str d27, [sp, #11112]
    ldr d27, L3d8a2588a9c6_k454
    str d27, [sp, #11120]
    ldr d27, L3d8a2588a9c6_k455
    str d27, [sp, #11128]
    str d25, [sp, #11136]
    ldr d25, L3d8a2588a9c6_k456
    str d25, [sp, #11144]
    ldr d25, L3d8a2588a9c6_k457
    str d25, [sp, #11152]
    str d26, [sp, #11160]
    ldr d25, L3d8a2588a9c6_k458
    str d25, [sp, #11168]
    ldr d25, L3d8a2588a9c6_k459
    str d25, [sp, #11176]
    ldr d25, L3d8a2588a9c6_k460
    str d25, [sp, #11184]
    ldr d25, L3d8a2588a9c6_k461
    str d25, [sp, #11192]
    ldr d25, L3d8a2588a9c6_k462
    str d25, [sp, #11200]
    ldr d25, L3d8a2588a9c6_k463
    str d25, [sp, #11208]
    ldr d25, L3d8a2588a9c6_k464
    str d25, [sp, #11216]
    str d24, [sp, #11224]
    ldr d24, L3d8a2588a9c6_k465
    str d24, [sp, #11232]
    ldr d24, L3d8a2588a9c6_k466
    str d24, [sp, #11240]
    ldr d12, L3d8a2588a9c6_k467
    str d12, [sp, #11248]
    movz x16, #10944
    sub x10, x29, x16
    movz x16, #6968
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1944
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k468
    str d24, [sp, #10608]
    str d24, [sp, #10616]
    str d24, [sp, #10624]
    str d24, [sp, #10632]
    str d24, [sp, #10640]
    str d24, [sp, #10648]
    ldr d24, L3d8a2588a9c6_k469
    str d24, [sp, #10656]
    ldr d24, L3d8a2588a9c6_k470
    str d24, [sp, #10664]
    ldr d24, L3d8a2588a9c6_k471
    str d24, [sp, #10672]
    ldr d24, L3d8a2588a9c6_k472
    str d24, [sp, #10680]
    ldr d24, L3d8a2588a9c6_k473
    str d24, [sp, #10688]
    ldr d24, L3d8a2588a9c6_k474
    str d24, [sp, #10696]
    ldr d24, L3d8a2588a9c6_k475
    str d24, [sp, #10704]
    str d24, [sp, #10712]
    ldr d24, L3d8a2588a9c6_k476
    str d24, [sp, #10720]
    ldr d24, L3d8a2588a9c6_k477
    str d24, [sp, #10728]
    fmov d24, #1.0000000
    str d24, [sp, #10736]
    ldr d24, L3d8a2588a9c6_k478
    str d24, [sp, #10744]
    ldr d24, L3d8a2588a9c6_k479
    str d24, [sp, #10752]
    ldr d24, L3d8a2588a9c6_k480
    str d24, [sp, #10760]
    ldr d24, L3d8a2588a9c6_k481
    str d24, [sp, #10768]
    ldr d24, L3d8a2588a9c6_k482
    str d24, [sp, #10776]
    ldr d24, L3d8a2588a9c6_k483
    str d24, [sp, #10784]
    ldr d24, L3d8a2588a9c6_k484
    str d24, [sp, #10792]
    ldr d24, L3d8a2588a9c6_k485
    str d24, [sp, #10800]
    ldr d24, L3d8a2588a9c6_k486
    str d24, [sp, #10808]
    ldr d24, L3d8a2588a9c6_k487
    str d24, [sp, #10816]
    ldr d24, L3d8a2588a9c6_k488
    str d24, [sp, #10824]
    ldr d24, L3d8a2588a9c6_k489
    str d24, [sp, #10832]
    ldr d24, L3d8a2588a9c6_k490
    str d24, [sp, #10840]
    ldr d24, L3d8a2588a9c6_k491
    str d24, [sp, #10848]
    ldr d24, L3d8a2588a9c6_k492
    str d24, [sp, #10856]
    ldr d24, L3d8a2588a9c6_k493
    str d24, [sp, #10864]
    ldr d25, L3d8a2588a9c6_k494
    str d25, [sp, #10872]
    str d25, [sp, #10880]
    str d25, [sp, #10888]
    str d24, [sp, #10896]
    ldr d25, L3d8a2588a9c6_k495
    str d25, [sp, #10904]
    str d24, [sp, #10912]
    ldr d24, L3d8a2588a9c6_k496
    str d24, [sp, #10920]
    ldr d24, L3d8a2588a9c6_k497
    str d24, [sp, #10928]
    ldr d24, L3d8a2588a9c6_k498
    str d24, [sp, #10936]
    ldr d24, L3d8a2588a9c6_k499
    str d24, [sp, #10944]
    ldr d24, L3d8a2588a9c6_k500
    str d24, [sp, #10952]
    ldr d24, L3d8a2588a9c6_k501
    str d24, [sp, #10960]
    ldr d24, L3d8a2588a9c6_k502
    str d24, [sp, #10968]
    ldr d24, L3d8a2588a9c6_k503
    str d24, [sp, #10976]
    ldr d24, L3d8a2588a9c6_k504
    str d24, [sp, #10984]
    ldr d24, L3d8a2588a9c6_k505
    str d24, [sp, #10992]
    ldr d24, L3d8a2588a9c6_k506
    str d24, [sp, #11000]
    ldr d24, L3d8a2588a9c6_k507
    str d24, [sp, #11008]
    str d24, [sp, #11016]
    ldr d24, L3d8a2588a9c6_k508
    str d24, [sp, #11024]
    str d24, [sp, #11032]
    str d24, [sp, #11040]
    ldr d24, L3d8a2588a9c6_k509
    str d24, [sp, #11048]
    str d24, [sp, #11056]
    str d24, [sp, #11064]
    str d24, [sp, #11072]
    ldr d24, L3d8a2588a9c6_k510
    str d24, [sp, #11080]
    str d24, [sp, #11088]
    str d24, [sp, #11096]
    str d24, [sp, #11104]
    ldr d24, L3d8a2588a9c6_k511
    str d24, [sp, #11112]
    str d24, [sp, #11120]
    str d24, [sp, #11128]
    str d24, [sp, #11136]
    str d24, [sp, #11144]
    str d24, [sp, #11152]
    str d24, [sp, #11160]
    str d24, [sp, #11168]
    str d24, [sp, #11176]
    str d24, [sp, #11184]
    str d24, [sp, #11192]
    str d24, [sp, #11200]
    str d24, [sp, #11208]
    str d24, [sp, #11216]
    str d24, [sp, #11224]
    str d24, [sp, #11232]
    str d24, [sp, #11240]
    str d24, [sp, #11248]
    movz x16, #9648
    sub x10, x29, x16
    movz x16, #5024
    sub x0, x29, x16
    mov x1, x10
    movz x2, #648
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k512
    str d24, [sp, #15880]
    str d11, [sp, #15888]
    movz x9, #59
    str x9, [sp, #15896]
    ldr d24, L3d8a2588a9c6_k513
    str d24, [sp, #8952]
    ldr d24, L3d8a2588a9c6_k514
    str d24, [sp, #8960]
    str d10, [sp, #8968]
    ldr d24, L3d8a2588a9c6_k515
    str d24, [sp, #8976]
    ldr d24, L3d8a2588a9c6_k516
    str d24, [sp, #8984]
    ldr d24, L3d8a2588a9c6_k517
    str d24, [sp, #8992]
    ldr d24, L3d8a2588a9c6_k518
    str d24, [sp, #9000]
    ldr d24, L3d8a2588a9c6_k519
    str d24, [sp, #9008]
    ldr d24, L3d8a2588a9c6_k520
    str d24, [sp, #9016]
    ldr d24, L3d8a2588a9c6_k521
    str d24, [sp, #9024]
    ldr d24, L3d8a2588a9c6_k522
    str d24, [sp, #9032]
    ldr d24, L3d8a2588a9c6_k523
    str d24, [sp, #9040]
    ldr d24, L3d8a2588a9c6_k524
    str d24, [sp, #9048]
    ldr d24, L3d8a2588a9c6_k525
    str d24, [sp, #9056]
    ldr d24, L3d8a2588a9c6_k526
    str d24, [sp, #9064]
    ldr d24, L3d8a2588a9c6_k527
    str d24, [sp, #9072]
    ldr d24, L3d8a2588a9c6_k528
    str d24, [sp, #9080]
    ldr d24, L3d8a2588a9c6_k529
    str d24, [sp, #9088]
    ldr d24, L3d8a2588a9c6_k530
    str d24, [sp, #9096]
    ldr d24, L3d8a2588a9c6_k531
    str d24, [sp, #9104]
    ldr d24, L3d8a2588a9c6_k532
    str d24, [sp, #9112]
    ldr d24, L3d8a2588a9c6_k533
    str d24, [sp, #9120]
    ldr d24, L3d8a2588a9c6_k534
    str d24, [sp, #9128]
    ldr d24, L3d8a2588a9c6_k535
    str d24, [sp, #9136]
    ldr d24, L3d8a2588a9c6_k536
    str d24, [sp, #9144]
    ldr d24, L3d8a2588a9c6_k537
    str d24, [sp, #9152]
    ldr d24, L3d8a2588a9c6_k538
    str d24, [sp, #9160]
    ldr d24, L3d8a2588a9c6_k539
    str d24, [sp, #9168]
    ldr d24, L3d8a2588a9c6_k540
    str d24, [sp, #9176]
    ldr d24, L3d8a2588a9c6_k541
    str d24, [sp, #9184]
    ldr d24, L3d8a2588a9c6_k542
    str d24, [sp, #9192]
    ldr d24, L3d8a2588a9c6_k543
    str d24, [sp, #9200]
    ldr d24, L3d8a2588a9c6_k544
    str d24, [sp, #9208]
    ldr d24, L3d8a2588a9c6_k545
    str d24, [sp, #9216]
    ldr d24, L3d8a2588a9c6_k546
    str d24, [sp, #9224]
    ldr d24, L3d8a2588a9c6_k547
    str d24, [sp, #9232]
    ldr d24, L3d8a2588a9c6_k548
    str d24, [sp, #9240]
    ldr d24, L3d8a2588a9c6_k549
    str d24, [sp, #9248]
    ldr d24, L3d8a2588a9c6_k550
    str d24, [sp, #9256]
    ldr d24, L3d8a2588a9c6_k551
    str d24, [sp, #9264]
    ldr d24, L3d8a2588a9c6_k552
    str d24, [sp, #9272]
    ldr d24, L3d8a2588a9c6_k553
    str d24, [sp, #9280]
    ldr d24, L3d8a2588a9c6_k554
    str d24, [sp, #9288]
    ldr d24, L3d8a2588a9c6_k555
    str d24, [sp, #9296]
    ldr d24, L3d8a2588a9c6_k556
    str d24, [sp, #9304]
    ldr d24, L3d8a2588a9c6_k557
    str d24, [sp, #9312]
    ldr d24, L3d8a2588a9c6_k558
    str d24, [sp, #9320]
    ldr d24, L3d8a2588a9c6_k559
    str d24, [sp, #9328]
    ldr d24, L3d8a2588a9c6_k560
    str d24, [sp, #9336]
    ldr d24, L3d8a2588a9c6_k561
    str d24, [sp, #9344]
    ldr d24, L3d8a2588a9c6_k562
    str d24, [sp, #9352]
    ldr d24, L3d8a2588a9c6_k563
    str d24, [sp, #9360]
    ldr d24, L3d8a2588a9c6_k564
    str d24, [sp, #9368]
    ldr d24, L3d8a2588a9c6_k565
    str d24, [sp, #9376]
    ldr d24, L3d8a2588a9c6_k566
    str d24, [sp, #9384]
    ldr d25, L3d8a2588a9c6_k567
    str d25, [sp, #9392]
    ldr d25, L3d8a2588a9c6_k568
    str d25, [sp, #9400]
    ldr d25, L3d8a2588a9c6_k569
    str d25, [sp, #9408]
    ldr d25, L3d8a2588a9c6_k570
    str d25, [sp, #9416]
    str d25, [sp, #9424]
    str d25, [sp, #9432]
    str d25, [sp, #9440]
    str d25, [sp, #9448]
    str d25, [sp, #9456]
    str d25, [sp, #9464]
    str d25, [sp, #9472]
    str d25, [sp, #9480]
    str d25, [sp, #9488]
    str d25, [sp, #9496]
    str d25, [sp, #9504]
    str d25, [sp, #9512]
    str d25, [sp, #9520]
    str d25, [sp, #9528]
    str d25, [sp, #9536]
    str d25, [sp, #9544]
    str d25, [sp, #9552]
    str d25, [sp, #9560]
    str d25, [sp, #9568]
    str d25, [sp, #9576]
    str d25, [sp, #9584]
    str d25, [sp, #9592]
    str d25, [sp, #9600]
    str d25, [sp, #9608]
    str d25, [sp, #9616]
    str d25, [sp, #9624]
    str d25, [sp, #9632]
    str d25, [sp, #9640]
    str d25, [sp, #9648]
    str d25, [sp, #9656]
    str d25, [sp, #9664]
    str d25, [sp, #9672]
    str d25, [sp, #9680]
    str d25, [sp, #9688]
    str d25, [sp, #9696]
    str d25, [sp, #9704]
    str d25, [sp, #9712]
    ldr d25, L3d8a2588a9c6_k571
    str d25, [sp, #9720]
    ldr d25, L3d8a2588a9c6_k572
    str d25, [sp, #9728]
    ldr d25, L3d8a2588a9c6_k573
    str d25, [sp, #9736]
    ldr d25, L3d8a2588a9c6_k574
    str d25, [sp, #9744]
    ldr d25, L3d8a2588a9c6_k575
    str d25, [sp, #9752]
    ldr d25, L3d8a2588a9c6_k576
    str d25, [sp, #9760]
    ldr d25, L3d8a2588a9c6_k577
    str d25, [sp, #9768]
    ldr d25, L3d8a2588a9c6_k578
    str d25, [sp, #9776]
    ldr d25, L3d8a2588a9c6_k579
    str d25, [sp, #9784]
    ldr d25, L3d8a2588a9c6_k580
    str d25, [sp, #9792]
    ldr d25, L3d8a2588a9c6_k581
    str d25, [sp, #9800]
    ldr d25, L3d8a2588a9c6_k582
    str d25, [sp, #9808]
    ldr d25, L3d8a2588a9c6_k583
    str d25, [sp, #9816]
    ldr d25, L3d8a2588a9c6_k584
    str d25, [sp, #9824]
    ldr d25, L3d8a2588a9c6_k585
    str d25, [sp, #9832]
    ldr d25, L3d8a2588a9c6_k586
    str d25, [sp, #9840]
    ldr d25, L3d8a2588a9c6_k587
    str d25, [sp, #9848]
    ldr d25, L3d8a2588a9c6_k588
    str d25, [sp, #9856]
    ldr d25, L3d8a2588a9c6_k589
    str d25, [sp, #9864]
    ldr d25, L3d8a2588a9c6_k590
    str d25, [sp, #9872]
    ldr d25, L3d8a2588a9c6_k591
    str d25, [sp, #9880]
    ldr d25, L3d8a2588a9c6_k592
    str d25, [sp, #9888]
    ldr d25, L3d8a2588a9c6_k593
    str d25, [sp, #9896]
    ldr d25, L3d8a2588a9c6_k594
    str d25, [sp, #9904]
    ldr d25, L3d8a2588a9c6_k595
    str d25, [sp, #9912]
    ldr d25, L3d8a2588a9c6_k596
    str d25, [sp, #9920]
    ldr d25, L3d8a2588a9c6_k597
    str d25, [sp, #9928]
    ldr d25, L3d8a2588a9c6_k598
    str d25, [sp, #9936]
    ldr d25, L3d8a2588a9c6_k599
    str d25, [sp, #9944]
    ldr d25, L3d8a2588a9c6_k600
    str d25, [sp, #9952]
    ldr d25, L3d8a2588a9c6_k601
    str d25, [sp, #9960]
    ldr d25, L3d8a2588a9c6_k602
    str d25, [sp, #9968]
    str d24, [sp, #9976]
    ldr d24, L3d8a2588a9c6_k603
    str d24, [sp, #9984]
    ldr d24, L3d8a2588a9c6_k604
    str d24, [sp, #9992]
    ldr d24, L3d8a2588a9c6_k605
    str d24, [sp, #10000]
    ldr d24, L3d8a2588a9c6_k606
    str d24, [sp, #10008]
    ldr d24, L3d8a2588a9c6_k607
    str d24, [sp, #10016]
    ldr d24, L3d8a2588a9c6_k608
    str d24, [sp, #10024]
    ldr d24, L3d8a2588a9c6_k609
    str d24, [sp, #10032]
    ldr d24, L3d8a2588a9c6_k610
    str d24, [sp, #10040]
    ldr d24, L3d8a2588a9c6_k611
    str d24, [sp, #10048]
    ldr d24, L3d8a2588a9c6_k612
    str d24, [sp, #10056]
    ldr d24, L3d8a2588a9c6_k613
    str d24, [sp, #10064]
    ldr d24, L3d8a2588a9c6_k614
    str d24, [sp, #10072]
    ldr d24, L3d8a2588a9c6_k615
    str d24, [sp, #10080]
    ldr d24, L3d8a2588a9c6_k616
    str d24, [sp, #10088]
    ldr d24, L3d8a2588a9c6_k617
    str d24, [sp, #10096]
    ldr d24, L3d8a2588a9c6_k618
    str d24, [sp, #10104]
    ldr d24, L3d8a2588a9c6_k619
    str d24, [sp, #10112]
    ldr d24, L3d8a2588a9c6_k620
    str d24, [sp, #10120]
    ldr d24, L3d8a2588a9c6_k621
    str d24, [sp, #10128]
    ldr d24, L3d8a2588a9c6_k622
    str d24, [sp, #10136]
    ldr d24, L3d8a2588a9c6_k623
    str d24, [sp, #10144]
    ldr d24, L3d8a2588a9c6_k624
    str d24, [sp, #10152]
    ldr d25, L3d8a2588a9c6_k625
    str d25, [sp, #10160]
    ldr d25, L3d8a2588a9c6_k626
    str d25, [sp, #10168]
    ldr d25, L3d8a2588a9c6_k627
    str d25, [sp, #10176]
    ldr d25, L3d8a2588a9c6_k628
    str d25, [sp, #10184]
    str d25, [sp, #10192]
    str d25, [sp, #10200]
    str d25, [sp, #10208]
    str d25, [sp, #10216]
    str d25, [sp, #10224]
    str d25, [sp, #10232]
    str d25, [sp, #10240]
    str d25, [sp, #10248]
    str d25, [sp, #10256]
    str d25, [sp, #10264]
    str d25, [sp, #10272]
    str d25, [sp, #10280]
    str d25, [sp, #10288]
    str d25, [sp, #10296]
    str d25, [sp, #10304]
    str d25, [sp, #10312]
    str d25, [sp, #10320]
    str d25, [sp, #10328]
    str d25, [sp, #10336]
    str d25, [sp, #10344]
    str d25, [sp, #10352]
    str d25, [sp, #10360]
    str d25, [sp, #10368]
    str d25, [sp, #10376]
    str d25, [sp, #10384]
    str d25, [sp, #10392]
    str d25, [sp, #10400]
    str d25, [sp, #10408]
    str d25, [sp, #10416]
    str d25, [sp, #10424]
    str d25, [sp, #10432]
    str d25, [sp, #10440]
    str d25, [sp, #10448]
    str d25, [sp, #10456]
    str d25, [sp, #10464]
    str d25, [sp, #10472]
    str d25, [sp, #10480]
    ldr d25, L3d8a2588a9c6_k629
    str d25, [sp, #10488]
    ldr d25, L3d8a2588a9c6_k630
    str d25, [sp, #10496]
    str d25, [sp, #10504]
    ldr d25, L3d8a2588a9c6_k631
    str d25, [sp, #10512]
    ldr d25, L3d8a2588a9c6_k632
    str d25, [sp, #10520]
    ldr d25, L3d8a2588a9c6_k633
    str d25, [sp, #10528]
    ldr d25, L3d8a2588a9c6_k634
    str d25, [sp, #10536]
    ldr d25, L3d8a2588a9c6_k635
    str d25, [sp, #10544]
    ldr d25, L3d8a2588a9c6_k636
    str d25, [sp, #10552]
    ldr d25, L3d8a2588a9c6_k637
    str d25, [sp, #10560]
    ldr d25, L3d8a2588a9c6_k638
    str d25, [sp, #10568]
    ldr d25, L3d8a2588a9c6_k639
    str d25, [sp, #10576]
    ldr d25, L3d8a2588a9c6_k640
    str d25, [sp, #10584]
    ldr d25, L3d8a2588a9c6_k641
    str d25, [sp, #10592]
    ldr d25, L3d8a2588a9c6_k642
    str d25, [sp, #10600]
    ldr d25, L3d8a2588a9c6_k643
    str d25, [sp, #10608]
    ldr d25, L3d8a2588a9c6_k644
    str d25, [sp, #10616]
    ldr d25, L3d8a2588a9c6_k645
    str d25, [sp, #10624]
    ldr d25, L3d8a2588a9c6_k646
    str d25, [sp, #10632]
    ldr d25, L3d8a2588a9c6_k647
    str d25, [sp, #10640]
    ldr d25, L3d8a2588a9c6_k648
    str d25, [sp, #10648]
    ldr d25, L3d8a2588a9c6_k649
    str d25, [sp, #10656]
    ldr d25, L3d8a2588a9c6_k650
    str d25, [sp, #10664]
    ldr d25, L3d8a2588a9c6_k651
    str d25, [sp, #10672]
    ldr d25, L3d8a2588a9c6_k652
    str d25, [sp, #10680]
    ldr d25, L3d8a2588a9c6_k653
    str d25, [sp, #10688]
    ldr d25, L3d8a2588a9c6_k654
    str d25, [sp, #10696]
    ldr d25, L3d8a2588a9c6_k655
    str d25, [sp, #10704]
    ldr d25, L3d8a2588a9c6_k656
    str d25, [sp, #10712]
    ldr d25, L3d8a2588a9c6_k657
    str d25, [sp, #10720]
    ldr d25, L3d8a2588a9c6_k658
    str d25, [sp, #10728]
    ldr d25, L3d8a2588a9c6_k659
    str d25, [sp, #10736]
    ldr d25, L3d8a2588a9c6_k660
    str d25, [sp, #10744]
    ldr d25, L3d8a2588a9c6_k661
    str d25, [sp, #10752]
    ldr d25, L3d8a2588a9c6_k662
    str d25, [sp, #10760]
    ldr d25, L3d8a2588a9c6_k663
    str d25, [sp, #10768]
    ldr d25, L3d8a2588a9c6_k664
    str d25, [sp, #10776]
    ldr d25, L3d8a2588a9c6_k665
    str d25, [sp, #10784]
    ldr d25, L3d8a2588a9c6_k666
    str d25, [sp, #10792]
    ldr d25, L3d8a2588a9c6_k667
    str d25, [sp, #10800]
    str d24, [sp, #10808]
    ldr d24, L3d8a2588a9c6_k668
    str d24, [sp, #10816]
    ldr d24, L3d8a2588a9c6_k669
    str d24, [sp, #10824]
    ldr d24, L3d8a2588a9c6_k670
    str d24, [sp, #10832]
    ldr d24, L3d8a2588a9c6_k671
    str d24, [sp, #10840]
    ldr d24, L3d8a2588a9c6_k672
    str d24, [sp, #10848]
    ldr d24, L3d8a2588a9c6_k673
    str d24, [sp, #10856]
    ldr d24, L3d8a2588a9c6_k674
    str d24, [sp, #10864]
    ldr d24, L3d8a2588a9c6_k675
    str d24, [sp, #10872]
    ldr d24, L3d8a2588a9c6_k676
    str d24, [sp, #10880]
    ldr d24, L3d8a2588a9c6_k677
    str d24, [sp, #10888]
    ldr d24, L3d8a2588a9c6_k678
    str d24, [sp, #10896]
    ldr d24, L3d8a2588a9c6_k679
    str d24, [sp, #10904]
    ldr d24, L3d8a2588a9c6_k680
    str d24, [sp, #10912]
    ldr d24, L3d8a2588a9c6_k681
    str d24, [sp, #10920]
    ldr d24, L3d8a2588a9c6_k682
    str d24, [sp, #10928]
    ldr d24, L3d8a2588a9c6_k683
    str d24, [sp, #10936]
    ldr d24, L3d8a2588a9c6_k684
    str d24, [sp, #10944]
    ldr d24, L3d8a2588a9c6_k685
    str d24, [sp, #10952]
    str d24, [sp, #10960]
    str d24, [sp, #10968]
    str d24, [sp, #10976]
    str d24, [sp, #10984]
    str d24, [sp, #10992]
    str d24, [sp, #11000]
    str d24, [sp, #11008]
    str d24, [sp, #11016]
    str d24, [sp, #11024]
    str d24, [sp, #11032]
    str d24, [sp, #11040]
    str d24, [sp, #11048]
    str d24, [sp, #11056]
    str d24, [sp, #11064]
    str d24, [sp, #11072]
    str d24, [sp, #11080]
    str d24, [sp, #11088]
    str d24, [sp, #11096]
    str d24, [sp, #11104]
    str d24, [sp, #11112]
    str d24, [sp, #11120]
    str d24, [sp, #11128]
    str d24, [sp, #11136]
    str d24, [sp, #11144]
    str d24, [sp, #11152]
    str d24, [sp, #11160]
    str d24, [sp, #11168]
    str d24, [sp, #11176]
    str d24, [sp, #11184]
    str d24, [sp, #11192]
    str d24, [sp, #11200]
    str d24, [sp, #11208]
    str d24, [sp, #11216]
    str d24, [sp, #11224]
    str d24, [sp, #11232]
    str d24, [sp, #11240]
    str d24, [sp, #11248]
    movz x16, #11304
    sub x10, x29, x16
    movz x16, #4352
    sub x0, x29, x16
    mov x1, x10
    movz x2, #2304
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k686
    str d24, [sp, #18208]
    ldr d24, L3d8a2588a9c6_k687
    str d24, [sp, #18216]
    movz x9, #29
    str x9, [sp, #18224]
    ldr d24, L3d8a2588a9c6_k688
    str d24, [sp, #10104]
    ldr d24, L3d8a2588a9c6_k689
    str d24, [sp, #10112]
    ldr d25, L3d8a2588a9c6_k690
    str d25, [sp, #10120]
    ldr d26, L3d8a2588a9c6_k691
    str d26, [sp, #10128]
    ldr d26, L3d8a2588a9c6_k692
    str d26, [sp, #10136]
    ldr d26, L3d8a2588a9c6_k693
    str d26, [sp, #10144]
    ldr d26, L3d8a2588a9c6_k694
    str d26, [sp, #10152]
    ldr d26, L3d8a2588a9c6_k695
    str d26, [sp, #10160]
    ldr d26, L3d8a2588a9c6_k696
    str d26, [sp, #10168]
    ldr d26, L3d8a2588a9c6_k697
    str d26, [sp, #10176]
    ldr d26, L3d8a2588a9c6_k698
    str d26, [sp, #10184]
    str d25, [sp, #10192]
    ldr d26, L3d8a2588a9c6_k699
    str d26, [sp, #10200]
    ldr d27, L3d8a2588a9c6_k700
    str d27, [sp, #10208]
    ldr d27, L3d8a2588a9c6_k701
    str d27, [sp, #10216]
    ldr d28, L3d8a2588a9c6_k702
    str d28, [sp, #10224]
    ldr d28, L3d8a2588a9c6_k703
    str d28, [sp, #10232]
    str d28, [sp, #10240]
    str d28, [sp, #10248]
    ldr d29, L3d8a2588a9c6_k704
    str d29, [sp, #10256]
    str d29, [sp, #10264]
    str d29, [sp, #10272]
    str d29, [sp, #10280]
    str d29, [sp, #10288]
    str d29, [sp, #10296]
    str d29, [sp, #10304]
    str d29, [sp, #10312]
    str d29, [sp, #10320]
    str d29, [sp, #10328]
    str d29, [sp, #10336]
    str d29, [sp, #10344]
    str d29, [sp, #10352]
    str d29, [sp, #10360]
    str d29, [sp, #10368]
    str d29, [sp, #10376]
    str d29, [sp, #10384]
    str d29, [sp, #10392]
    str d29, [sp, #10400]
    str d29, [sp, #10408]
    str d29, [sp, #10416]
    str d29, [sp, #10424]
    str d29, [sp, #10432]
    str d29, [sp, #10440]
    str d29, [sp, #10448]
    str d29, [sp, #10456]
    str d29, [sp, #10464]
    str d29, [sp, #10472]
    str d29, [sp, #10480]
    ldr d30, L3d8a2588a9c6_k705
    str d30, [sp, #10488]
    ldr d30, L3d8a2588a9c6_k706
    str d30, [sp, #10496]
    str d12, [sp, #10504]
    ldr d30, L3d8a2588a9c6_k707
    str d30, [sp, #10512]
    ldr d30, L3d8a2588a9c6_k708
    str d30, [sp, #10520]
    ldr d31, L3d8a2588a9c6_k709
    str d31, [sp, #10528]
    ldr d19, L3d8a2588a9c6_k710
    str d19, [sp, #10536]
    str d30, [sp, #10544]
    ldr d30, L3d8a2588a9c6_k711
    str d30, [sp, #10552]
    ldr d30, L3d8a2588a9c6_k712
    str d30, [sp, #10560]
    ldr d30, L3d8a2588a9c6_k713
    str d30, [sp, #10568]
    ldr d30, L3d8a2588a9c6_k714
    str d30, [sp, #10576]
    ldr d30, L3d8a2588a9c6_k715
    str d30, [sp, #10584]
    str d25, [sp, #10592]
    ldr d25, L3d8a2588a9c6_k716
    str d25, [sp, #10600]
    ldr d25, L3d8a2588a9c6_k717
    str d25, [sp, #10608]
    str d26, [sp, #10616]
    ldr d25, L3d8a2588a9c6_k718
    str d25, [sp, #10624]
    str d24, [sp, #10632]
    ldr d24, L3d8a2588a9c6_k719
    str d24, [sp, #10640]
    ldr d24, L3d8a2588a9c6_k720
    str d24, [sp, #10648]
    str d27, [sp, #10656]
    str d28, [sp, #10664]
    str d29, [sp, #10672]
    str d29, [sp, #10680]
    str d28, [sp, #10688]
    str d28, [sp, #10696]
    str d28, [sp, #10704]
    str d28, [sp, #10712]
    str d28, [sp, #10720]
    str d28, [sp, #10728]
    str d28, [sp, #10736]
    str d28, [sp, #10744]
    str d28, [sp, #10752]
    str d28, [sp, #10760]
    str d28, [sp, #10768]
    str d28, [sp, #10776]
    str d28, [sp, #10784]
    str d28, [sp, #10792]
    str d28, [sp, #10800]
    str d28, [sp, #10808]
    str d28, [sp, #10816]
    str d28, [sp, #10824]
    str d28, [sp, #10832]
    str d28, [sp, #10840]
    str d28, [sp, #10848]
    str d28, [sp, #10856]
    str d28, [sp, #10864]
    ldr d24, L3d8a2588a9c6_k721
    str d24, [sp, #10872]
    ldr d25, L3d8a2588a9c6_k722
    str d25, [sp, #10880]
    ldr d25, L3d8a2588a9c6_k723
    str d25, [sp, #10888]
    ldr d25, L3d8a2588a9c6_k724
    str d25, [sp, #10896]
    ldr d25, L3d8a2588a9c6_k725
    str d25, [sp, #10904]
    ldr d25, L3d8a2588a9c6_k726
    str d25, [sp, #10912]
    ldr d25, L3d8a2588a9c6_k727
    str d25, [sp, #10920]
    ldr d25, L3d8a2588a9c6_k728
    str d25, [sp, #10928]
    str d25, [sp, #10936]
    ldr d25, L3d8a2588a9c6_k729
    str d25, [sp, #10944]
    ldr d25, L3d8a2588a9c6_k730
    str d25, [sp, #10952]
    ldr d25, L3d8a2588a9c6_k731
    str d25, [sp, #10960]
    ldr d25, L3d8a2588a9c6_k732
    str d25, [sp, #10968]
    ldr d25, L3d8a2588a9c6_k733
    str d25, [sp, #10976]
    ldr d25, L3d8a2588a9c6_k734
    str d25, [sp, #10984]
    str d24, [sp, #10992]
    ldr d24, L3d8a2588a9c6_k735
    str d24, [sp, #11000]
    ldr d24, L3d8a2588a9c6_k736
    str d24, [sp, #11008]
    ldr d24, L3d8a2588a9c6_k737
    str d24, [sp, #11016]
    ldr d24, L3d8a2588a9c6_k738
    str d24, [sp, #11024]
    ldr d24, L3d8a2588a9c6_k739
    str d24, [sp, #11032]
    ldr d24, L3d8a2588a9c6_k740
    str d24, [sp, #11040]
    ldr d24, L3d8a2588a9c6_k741
    str d24, [sp, #11048]
    ldr d24, L3d8a2588a9c6_k742
    str d24, [sp, #11056]
    ldr d24, L3d8a2588a9c6_k743
    str d24, [sp, #11064]
    str d31, [sp, #11072]
    ldr d24, L3d8a2588a9c6_k744
    str d24, [sp, #11080]
    ldr d24, L3d8a2588a9c6_k745
    str d24, [sp, #11088]
    ldr d24, L3d8a2588a9c6_k746
    str d24, [sp, #11096]
    str d24, [sp, #11104]
    str d24, [sp, #11112]
    str d24, [sp, #11120]
    str d24, [sp, #11128]
    str d24, [sp, #11136]
    str d24, [sp, #11144]
    str d24, [sp, #11152]
    str d24, [sp, #11160]
    str d24, [sp, #11168]
    str d24, [sp, #11176]
    str d24, [sp, #11184]
    str d24, [sp, #11192]
    str d24, [sp, #11200]
    str d24, [sp, #11208]
    str d24, [sp, #11216]
    str d24, [sp, #11224]
    str d24, [sp, #11232]
    str d24, [sp, #11240]
    str d24, [sp, #11248]
    movz x16, #10152
    sub x10, x29, x16
    sub x0, x29, #2024
    mov x1, x10
    movz x2, #1152
    bl _memcpy
    movz x9, #17
    str x9, [sp, #19384]
    fmov d24, #3.0000000
    str d24, [sp, #11096]
    fmov d24, #4.0000000
    str d24, [sp, #11104]
    fmov d24, #5.0000000
    str d24, [sp, #11112]
    fmov d24, #6.0000000
    str d24, [sp, #11120]
    str d8, [sp, #11128]
    fmov d24, #10.0000000
    str d24, [sp, #11136]
    fmov d24, #12.0000000
    str d24, [sp, #11144]
    fmov d24, #15.0000000
    str d24, [sp, #11152]
    fmov d24, #20.0000000
    str d24, [sp, #11160]
    fmov d24, #25.0000000
    str d24, [sp, #11168]
    fmov d24, #30.0000000
    str d24, [sp, #11176]
    ldr d24, L3d8a2588a9c6_k747
    str d24, [sp, #11184]
    ldr d24, L3d8a2588a9c6_k748
    str d24, [sp, #11192]
    ldr d24, L3d8a2588a9c6_k749
    str d24, [sp, #11200]
    ldr d24, L3d8a2588a9c6_k750
    str d24, [sp, #11208]
    ldr d24, L3d8a2588a9c6_k751
    str d24, [sp, #11216]
    ldr d24, L3d8a2588a9c6_k752
    str d24, [sp, #11224]
    str d9, [sp, #11232]
    str d9, [sp, #11240]
    str d9, [sp, #11248]
    movz x16, #9160
    sub x10, x29, x16
    sub x0, x29, #864
    mov x1, x10
    movz x2, #160
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k753
    str d24, [sp, #10776]
    ldr d25, L3d8a2588a9c6_k754
    str d25, [sp, #10784]
    ldr d26, L3d8a2588a9c6_k755
    str d26, [sp, #10792]
    ldr d26, L3d8a2588a9c6_k756
    str d26, [sp, #10800]
    ldr d27, L3d8a2588a9c6_k757
    str d27, [sp, #10808]
    ldr d27, L3d8a2588a9c6_k758
    str d27, [sp, #10816]
    ldr d28, L3d8a2588a9c6_k759
    str d28, [sp, #10824]
    ldr d28, L3d8a2588a9c6_k760
    str d28, [sp, #10832]
    ldr d28, L3d8a2588a9c6_k761
    str d28, [sp, #10840]
    ldr d28, L3d8a2588a9c6_k762
    str d28, [sp, #10848]
    ldr d28, L3d8a2588a9c6_k763
    str d28, [sp, #10856]
    ldr d28, L3d8a2588a9c6_k764
    str d28, [sp, #10864]
    ldr d28, L3d8a2588a9c6_k765
    str d28, [sp, #10872]
    ldr d28, L3d8a2588a9c6_k766
    str d28, [sp, #10880]
    ldr d28, L3d8a2588a9c6_k767
    str d28, [sp, #10888]
    ldr d28, L3d8a2588a9c6_k768
    str d28, [sp, #10896]
    ldr d28, L3d8a2588a9c6_k769
    str d28, [sp, #10904]
    str d28, [sp, #10912]
    str d28, [sp, #10920]
    str d28, [sp, #10928]
    ldr d28, L3d8a2588a9c6_k770
    str d28, [sp, #10936]
    ldr d29, L3d8a2588a9c6_k771
    str d29, [sp, #10944]
    str d29, [sp, #10952]
    ldr d30, L3d8a2588a9c6_k772
    str d30, [sp, #10960]
    ldr d30, L3d8a2588a9c6_k773
    str d30, [sp, #10968]
    ldr d31, L3d8a2588a9c6_k774
    str d31, [sp, #10976]
    str d31, [sp, #10984]
    str d30, [sp, #10992]
    str d29, [sp, #11000]
    str d26, [sp, #11008]
    str d27, [sp, #11016]
    ldr d26, L3d8a2588a9c6_k775
    str d26, [sp, #11024]
    ldr d26, L3d8a2588a9c6_k776
    str d26, [sp, #11032]
    ldr d26, L3d8a2588a9c6_k777
    str d26, [sp, #11040]
    ldr d26, L3d8a2588a9c6_k778
    str d26, [sp, #11048]
    ldr d26, L3d8a2588a9c6_k779
    str d26, [sp, #11056]
    ldr d26, L3d8a2588a9c6_k780
    str d26, [sp, #11064]
    str d26, [sp, #11072]
    str d26, [sp, #11080]
    str d26, [sp, #11088]
    str d25, [sp, #11096]
    str d28, [sp, #11104]
    ldr d25, L3d8a2588a9c6_k781
    str d25, [sp, #11112]
    str d31, [sp, #11120]
    ldr d25, L3d8a2588a9c6_k782
    str d25, [sp, #11128]
    ldr d25, L3d8a2588a9c6_k783
    str d25, [sp, #11136]
    ldr d25, L3d8a2588a9c6_k784
    str d25, [sp, #11144]
    ldr d26, L3d8a2588a9c6_k785
    str d26, [sp, #11152]
    str d25, [sp, #11160]
    str d30, [sp, #11168]
    str d24, [sp, #11176]
    ldr d24, L3d8a2588a9c6_k786
    str d24, [sp, #11184]
    ldr d24, L3d8a2588a9c6_k787
    str d24, [sp, #11192]
    ldr d24, L3d8a2588a9c6_k788
    str d24, [sp, #11200]
    ldr d24, L3d8a2588a9c6_k789
    str d24, [sp, #11208]
    ldr d24, L3d8a2588a9c6_k790
    str d24, [sp, #11216]
    ldr d24, L3d8a2588a9c6_k791
    str d24, [sp, #11224]
    str d24, [sp, #11232]
    str d24, [sp, #11240]
    str d24, [sp, #11248]
    movz x16, #9480
    sub x10, x29, x16
    sub x0, x29, #704
    mov x1, x10
    movz x2, #480
    bl _memcpy
    ldr d24, L3d8a2588a9c6_k792
    ldr d25, L3d8a2588a9c6_k793
    ldr d26, L3d8a2588a9c6_k794
    str d24, [sp, #20032]
    str d25, [sp, #20040]
    str d26, [sp, #20048]
    str d9, [sp, #20056]
    str d9, [sp, #20064]
    str d9, [sp, #20072]
    ldr d24, L3d8a2588a9c6_k795
    str d24, [sp, #20080]
    ldr d24, L3d8a2588a9c6_k796
    ldr d25, L3d8a2588a9c6_k797
    ldr d26, L3d8a2588a9c6_k798
    str d24, [sp, #20088]
    str d25, [sp, #20096]
    str d26, [sp, #20104]
    ldr d24, L3d8a2588a9c6_k799
    str d24, [sp, #11184]
    fmov d25, #2.0000000
    str d25, [sp, #11192]
    ldr d26, L3d8a2588a9c6_k800
    str d26, [sp, #11200]
    str d24, [sp, #11208]
    str d25, [sp, #11216]
    ldr d26, L3d8a2588a9c6_k801
    str d26, [sp, #11224]
    str d24, [sp, #11232]
    str d25, [sp, #11240]
    str d26, [sp, #11248]
    movz x16, #9072
    sub x10, x29, x16
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
    ldr d24, L3d8a2588a9c6_k802
    str d24, [sp, #20184]
    ldr d24, L3d8a2588a9c6_k803
    str d24, [sp, #20192]
    mov x9, #0
    str x9, [sp, #20200]
    movz x16, #9000
    sub x10, x29, x16
    movz x16, #20256
    sub x0, x29, x16
    mov x1, x10
    movz x2, #8952
    bl _memcpy
    movz x16, #20256
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #8952
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr d8, [sp, #20240]
    ldr d9, [sp, #20232]
    ldr d10, [sp, #20224]
    ldr d11, [sp, #20216]
    ldr d12, [sp, #20208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3d8a2588a9c6_k0:
    .quad 4647503709213818880
L3d8a2588a9c6_k1:
    .quad 4659255289491488768
L3d8a2588a9c6_k2:
    .quad 13833905133777556865
L3d8a2588a9c6_k3:
    .quad 13850170322932769080
L3d8a2588a9c6_k4:
    .quad 13850001437946742686
L3d8a2588a9c6_k5:
    .quad 13849832552960716293
L3d8a2588a9c6_k6:
    .quad 13849663667974689899
L3d8a2588a9c6_k7:
    .quad 13849494782988663506
L3d8a2588a9c6_k8:
    .quad 13849325898002637112
L3d8a2588a9c6_k9:
    .quad 13849157013016610718
L3d8a2588a9c6_k10:
    .quad 13848988128030584325
L3d8a2588a9c6_k11:
    .quad 13848819243044557931
L3d8a2588a9c6_k12:
    .quad 13848650358058531538
L3d8a2588a9c6_k13:
    .quad 13848394091980735088
L3d8a2588a9c6_k14:
    .quad 13848056322008682301
L3d8a2588a9c6_k15:
    .quad 13847718552036629514
L3d8a2588a9c6_k16:
    .quad 13847380782064576726
L3d8a2588a9c6_k17:
    .quad 13847043012092523939
L3d8a2588a9c6_k18:
    .quad 13846705242120471152
L3d8a2588a9c6_k19:
    .quad 13846367472148418365
L3d8a2588a9c6_k20:
    .quad 13846029702176365578
L3d8a2588a9c6_k21:
    .quad 13845691932204312790
L3d8a2588a9c6_k22:
    .quad 13845354162232260003
L3d8a2588a9c6_k23:
    .quad 13845016392260207216
L3d8a2588a9c6_k24:
    .quad 13844678622288154429
L3d8a2588a9c6_k25:
    .quad 13844340852316101642
L3d8a2588a9c6_k26:
    .quad 13843940910151193005
L3d8a2588a9c6_k27:
    .quad 13843265370207087430
L3d8a2588a9c6_k28:
    .quad 13842589830262981856
L3d8a2588a9c6_k29:
    .quad 13841914290318876281
L3d8a2588a9c6_k30:
    .quad 13841238750374770707
L3d8a2588a9c6_k31:
    .quad 13840563210430665133
L3d8a2588a9c6_k32:
    .quad 13839887670486559558
L3d8a2588a9c6_k33:
    .quad 13838862606175373760
L3d8a2588a9c6_k34:
    .quad 13837511526287162611
L3d8a2588a9c6_k35:
    .quad 13836160446398951462
L3d8a2588a9c6_k36:
    .quad 13834560677739316914
L3d8a2588a9c6_k37:
    .quad 13831858517962894617
L3d8a2588a9c6_k38:
    .quad 13827758260718151422
L3d8a2588a9c6_k39:
    .quad 13814489935639977562
L3d8a2588a9c6_k40:
    .quad 4602772854332866408
L3d8a2588a9c6_k41:
    .quad 4605563825093940452
L3d8a2588a9c6_k42:
    .quad 4607853995576450896
L3d8a2588a9c6_k43:
    .quad 4609018311188114991
L3d8a2588a9c6_k44:
    .quad 4609687140768775783
L3d8a2588a9c6_k45:
    .quad 4610130520152090408
L3d8a2588a9c6_k46:
    .quad 4610435368810867117
L3d8a2588a9c6_k47:
    .quad 4610730940054411443
L3d8a2588a9c6_k48:
    .quad 4610947157872521500
L3d8a2588a9c6_k49:
    .quad 4611123698977914424
L3d8a2588a9c6_k50:
    .quad 4611253222503197599
L3d8a2588a9c6_k51:
    .quad 4611388420564011262
L3d8a2588a9c6_k52:
    .quad 4611516367829424857
L3d8a2588a9c6_k53:
    .quad 4611671111512621308
L3d8a2588a9c6_k54:
    .quad 4611786673879059635
L3d8a2588a9c6_k55:
    .quad 4611947812673726951
L3d8a2588a9c6_k56:
    .quad 4612121921835321094
L3d8a2588a9c6_k57:
    .quad 4612250657230669480
L3d8a2588a9c6_k58:
    .quad 4612226720598650006
L3d8a2588a9c6_k59:
    .quad 4612070197993600744
L3d8a2588a9c6_k60:
    .quad 4611350004859189791
L3d8a2588a9c6_k61:
    .quad 4609817925301954622
L3d8a2588a9c6_k62:
    .quad 4607784955394163307
L3d8a2588a9c6_k63:
    .quad 4603557021099984159
L3d8a2588a9c6_k64:
    .quad 13791283066904122491
L3d8a2588a9c6_k65:
    .quad 13826974093951033672
L3d8a2588a9c6_k66:
    .quad 13831466434579335741
L3d8a2588a9c6_k67:
    .quad 13834168594355758039
L3d8a2588a9c6_k68:
    .quad 13835964404707172024
L3d8a2588a9c6_k69:
    .quad 13837315484595383173
L3d8a2588a9c6_k70:
    .quad 13838666564483594322
L3d8a2588a9c6_k71:
    .quad 13839789649640669839
L3d8a2588a9c6_k72:
    .quad 13840465189584775414
L3d8a2588a9c6_k73:
    .quad 13841140729528880988
L3d8a2588a9c6_k74:
    .quad 13841816269472986563
L3d8a2588a9c6_k75:
    .quad 13842491809417092137
L3d8a2588a9c6_k76:
    .quad 13843167349361197711
L3d8a2588a9c6_k77:
    .quad 13843842889305303286
L3d8a2588a9c6_k78:
    .quad 13844291841893156782
L3d8a2588a9c6_k79:
    .quad 13844629611865209569
L3d8a2588a9c6_k80:
    .quad 13844967381837262356
L3d8a2588a9c6_k81:
    .quad 13845305151809315144
L3d8a2588a9c6_k82:
    .quad 13845642921781367931
L3d8a2588a9c6_k83:
    .quad 13845980691753420718
L3d8a2588a9c6_k84:
    .quad 13844928605844470697
L3d8a2588a9c6_k85:
    .quad 13844590835872417909
L3d8a2588a9c6_k86:
    .quad 13844253065900365122
L3d8a2588a9c6_k87:
    .quad 13843765337319719966
L3d8a2588a9c6_k88:
    .quad 13843089797375614391
L3d8a2588a9c6_k89:
    .quad 13842414257431508817
L3d8a2588a9c6_k90:
    .quad 13841738717487403243
L3d8a2588a9c6_k91:
    .quad 13841063177543297668
L3d8a2588a9c6_k92:
    .quad 13840387637599192094
L3d8a2588a9c6_k93:
    .quad 13839712097655086519
L3d8a2588a9c6_k94:
    .quad 13838511460512427682
L3d8a2588a9c6_k95:
    .quad 13837160380624216533
L3d8a2588a9c6_k96:
    .quad 13835809300736005384
L3d8a2588a9c6_k97:
    .quad 13833858386413424759
L3d8a2588a9c6_k98:
    .quad 13831156226637002462
L3d8a2588a9c6_k99:
    .quad 13826353678066367112
L3d8a2588a9c6_k100:
    .quad 4589447603755402584
L3d8a2588a9c6_k101:
    .quad 4604177436984650718
L3d8a2588a9c6_k102:
    .quad 4604931339562272539
L3d8a2588a9c6_k103:
    .quad 4606093448410119222
L3d8a2588a9c6_k104:
    .quad 4607418587564476717
L3d8a2588a9c6_k105:
    .quad 4608523951057018531
L3d8a2588a9c6_k106:
    .quad 4609655210247417726
L3d8a2588a9c6_k107:
    .quad 4610555299668943994
L3d8a2588a9c6_k108:
    .quad 4611364596521982472
L3d8a2588a9c6_k109:
    .quad 4611762376959069971
L3d8a2588a9c6_k110:
    .quad 4611940922166297074
L3d8a2588a9c6_k111:
    .quad 4612088707788069237
L3d8a2588a9c6_k112:
    .quad 4612216655053482833
L3d8a2588a9c6_k113:
    .quad 4612364440675254996
L3d8a2588a9c6_k114:
    .quad 4612512226297027158
L3d8a2588a9c6_k115:
    .quad 4612637809172636385
L3d8a2588a9c6_k116:
    .quad 4612768120827854350
L3d8a2588a9c6_k117:
    .quad 4612861435412133467
L3d8a2588a9c6_k118:
    .quad 4612925409044840264
L3d8a2588a9c6_k119:
    .quad 4612902305578751854
L3d8a2588a9c6_k120:
    .quad 4612778524142993576
L3d8a2588a9c6_k121:
    .quad 4612211588503902041
L3d8a2588a9c6_k122:
    .quad 4611395896539392697
L3d8a2588a9c6_k123:
    .quad 4610004104110550119
L3d8a2588a9c6_k124:
    .quad 4608578985044464999
L3d8a2588a9c6_k125:
    .quad 4607056948514398866
L3d8a2588a9c6_k126:
    .quad 4604344520530826164
L3d8a2588a9c6_k127:
    .quad 4600271915387795024
L3d8a2588a9c6_k128:
    .quad 13820956744416911405
L3d8a2588a9c6_k129:
    .quad 13829055747770796862
L3d8a2588a9c6_k130:
    .quad 13832507261489217337
L3d8a2588a9c6_k131:
    .quad 13835133738273901673
L3d8a2588a9c6_k132:
    .quad 13836484818162112822
L3d8a2588a9c6_k133:
    .quad 13837835898050323971
L3d8a2588a9c6_k134:
    .quad 13839186977938535120
L3d8a2588a9c6_k135:
    .quad 13840049856368140238
L3d8a2588a9c6_k136:
    .quad 13840725396312245813
L3d8a2588a9c6_k137:
    .quad 13841400936256351387
L3d8a2588a9c6_k138:
    .quad 13842076476200456961
L3d8a2588a9c6_k139:
    .quad 13842752016144562536
L3d8a2588a9c6_k140:
    .quad 13843427556088668110
L3d8a2588a9c6_k141:
    .quad 13844084175284839194
L3d8a2588a9c6_k142:
    .quad 13844421945256891981
L3d8a2588a9c6_k143:
    .quad 13844759715228944769
L3d8a2588a9c6_k144:
    .quad 13845097485200997556
L3d8a2588a9c6_k145:
    .quad 13845435255173050343
L3d8a2588a9c6_k146:
    .quad 13845773025145103130
L3d8a2588a9c6_k147:
    .quad 13846110795117155917
L3d8a2588a9c6_k148:
    .quad 13846448565089208705
L3d8a2588a9c6_k149:
    .quad 13846786335061261492
L3d8a2588a9c6_k150:
    .quad 13847124105033314279
L3d8a2588a9c6_k151:
    .quad 13847461875005367066
L3d8a2588a9c6_k152:
    .quad 13847799644977419853
L3d8a2588a9c6_k153:
    .quad 13848137414949472641
L3d8a2588a9c6_k154:
    .quad 13848475184921525428
L3d8a2588a9c6_k155:
    .quad 13848690904528926708
L3d8a2588a9c6_k156:
    .quad 13848859789514953101
L3d8a2588a9c6_k157:
    .quad 13849028674500979495
L3d8a2588a9c6_k158:
    .quad 13849197559487005888
L3d8a2588a9c6_k159:
    .quad 13849366444473032282
L3d8a2588a9c6_k160:
    .quad 13849535329459058676
L3d8a2588a9c6_k161:
    .quad 13849704214445085069
L3d8a2588a9c6_k162:
    .quad 13849873099431111463
L3d8a2588a9c6_k163:
    .quad 13850041984417137856
L3d8a2588a9c6_k164:
    .quad 13850210869403164250
L3d8a2588a9c6_k165:
    .quad 4605831338911806259
L3d8a2588a9c6_k166:
    .quad 4609209038632334131
L3d8a2588a9c6_k167:
    .quad 4611798608418072166
L3d8a2588a9c6_k168:
    .quad 4613149688306283315
L3d8a2588a9c6_k169:
    .quad 4613223592376168465
L3d8a2588a9c6_k170:
    .quad 4613263269088885599
L3d8a2588a9c6_k171:
    .quad 4613322784157961300
L3d8a2588a9c6_k172:
    .quad 4613342622514319867
L3d8a2588a9c6_k173:
    .quad 4613302945801602733
L3d8a2588a9c6_k174:
    .quad 4613251109369891699
L3d8a2588a9c6_k175:
    .quad 4613243430732527032
L3d8a2588a9c6_k176:
    .quad 4613203754019809898
L3d8a2588a9c6_k177:
    .quad 4613144238950734197
L3d8a2588a9c6_k178:
    .quad 4613007149378077039
L3d8a2588a9c6_k179:
    .quad 4612691739778174146
L3d8a2588a9c6_k180:
    .quad 4612315779281281257
L3d8a2588a9c6_k181:
    .quad 4611940832094304527
L3d8a2588a9c6_k182:
    .quad 4611308977066584446
L3d8a2588a9c6_k183:
    .quad 4610433162047049706
L3d8a2588a9c6_k184:
    .quad 4609360990083761612
L3d8a2588a9c6_k185:
    .quad 4608178705109584309
L3d8a2588a9c6_k186:
    .quad 4606961021842335874
L3d8a2588a9c6_k187:
    .quad 4605060502799585525
L3d8a2588a9c6_k188:
    .quad 4603513065967621023
L3d8a2588a9c6_k189:
    .quad 4601403039470205398
L3d8a2588a9c6_k190:
    .quad 4599038469521850793
L3d8a2588a9c6_k191:
    .quad 13822485446274426046
L3d8a2588a9c6_k192:
    .quad 13829672470703768978
L3d8a2588a9c6_k193:
    .quad 13832815622955703395
L3d8a2588a9c6_k194:
    .quad 13835287919007144702
L3d8a2588a9c6_k195:
    .quad 13836638998895355851
L3d8a2588a9c6_k196:
    .quad 13837990078783567000
L3d8a2588a9c6_k197:
    .quad 13839341158671778149
L3d8a2588a9c6_k198:
    .quad 13840126946734761753
L3d8a2588a9c6_k199:
    .quad 13840802486678867327
L3d8a2588a9c6_k200:
    .quad 13841478026622972901
L3d8a2588a9c6_k201:
    .quad 13842153566567078476
L3d8a2588a9c6_k202:
    .quad 13842829106511184050
L3d8a2588a9c6_k203:
    .quad 13843504646455289625
L3d8a2588a9c6_k204:
    .quad 13844122720468149952
L3d8a2588a9c6_k205:
    .quad 13844460490440202739
L3d8a2588a9c6_k206:
    .quad 13844798260412255526
L3d8a2588a9c6_k207:
    .quad 13845136030384308313
L3d8a2588a9c6_k208:
    .quad 13845473800356361100
L3d8a2588a9c6_k209:
    .quad 13845811570328413888
L3d8a2588a9c6_k210:
    .quad 13846149340300466675
L3d8a2588a9c6_k211:
    .quad 13846487110272519462
L3d8a2588a9c6_k212:
    .quad 13846824880244572249
L3d8a2588a9c6_k213:
    .quad 13847162650216625036
L3d8a2588a9c6_k214:
    .quad 13847500420188677824
L3d8a2588a9c6_k215:
    .quad 13847838190160730611
L3d8a2588a9c6_k216:
    .quad 13848175960132783398
L3d8a2588a9c6_k217:
    .quad 13848513730104836185
L3d8a2588a9c6_k218:
    .quad 13848710177120582086
L3d8a2588a9c6_k219:
    .quad 13848879062106608480
L3d8a2588a9c6_k220:
    .quad 13849047947092634873
L3d8a2588a9c6_k221:
    .quad 13849216832078661267
L3d8a2588a9c6_k222:
    .quad 13849385717064687661
L3d8a2588a9c6_k223:
    .quad 13849554602050714054
L3d8a2588a9c6_k224:
    .quad 13849723487036740448
L3d8a2588a9c6_k225:
    .quad 13849892372022766841
L3d8a2588a9c6_k226:
    .quad 13850061257008793235
L3d8a2588a9c6_k227:
    .quad 13850230141994819629
L3d8a2588a9c6_k228:
    .quad 13850399026980846022
L3d8a2588a9c6_k229:
    .quad 13850567911966872416
L3d8a2588a9c6_k230:
    .quad 13850736796952898809
L3d8a2588a9c6_k231:
    .quad 13850905681938925203
L3d8a2588a9c6_k232:
    .quad 13851074566924951597
L3d8a2588a9c6_k233:
    .quad 13851243451910977990
L3d8a2588a9c6_k234:
    .quad 13851412336897004384
L3d8a2588a9c6_k235:
    .quad 13851581221883030777
L3d8a2588a9c6_k236:
    .quad 13851750106869057171
L3d8a2588a9c6_k237:
    .quad 13851918991855083565
L3d8a2588a9c6_k238:
    .quad 13852087876841109958
L3d8a2588a9c6_k239:
    .quad 13852256761827136352
L3d8a2588a9c6_k240:
    .quad 4598782304775045959
L3d8a2588a9c6_k241:
    .quad 4598620175188460621
L3d8a2588a9c6_k242:
    .quad 4598375179368731666
L3d8a2588a9c6_k243:
    .quad 4597854563251807637
L3d8a2588a9c6_k244:
    .quad 4596961049085737330
L3d8a2588a9c6_k245:
    .quad 4594929024933867762
L3d8a2588a9c6_k246:
    .quad 4594021099248989870
L3d8a2588a9c6_k247:
    .quad 4592648402082567343
L3d8a2588a9c6_k248:
    .quad 4591099163810751893
L3d8a2588a9c6_k249:
    .quad 4589823744396280568
L3d8a2588a9c6_k250:
    .quad 4588706851688692685
L3d8a2588a9c6_k251:
    .quad 4587438638033625154
L3d8a2588a9c6_k252:
    .quad 4585824547927175568
L3d8a2588a9c6_k253:
    .quad 4584015902316823577
L3d8a2588a9c6_k254:
    .quad 4582805334736986387
L3d8a2588a9c6_k255:
    .quad 4582459458285604333
L3d8a2588a9c6_k256:
    .quad 4581364182856227829
L3d8a2588a9c6_k257:
    .quad 4580297730464466495
L3d8a2588a9c6_k258:
    .quad 4578878195861919315
L3d8a2588a9c6_k259:
    .quad 4577437043981160756
L3d8a2588a9c6_k260:
    .quad 4576687645003166305
L3d8a2588a9c6_k261:
    .quad 4576629998927935963
L3d8a2588a9c6_k262:
    .quad 4578762903711458630
L3d8a2588a9c6_k263:
    .quad 4580557137803003036
L3d8a2588a9c6_k264:
    .quad 4581306536780997486
L3d8a2588a9c6_k265:
    .quad 4582344166135143648
L3d8a2588a9c6_k266:
    .quad 4584563540031511829
L3d8a2588a9c6_k267:
    .quad 4586055132228096937
L3d8a2588a9c6_k268:
    .quad 4587856572079045136
L3d8a2588a9c6_k269:
    .quad 4589593160095359199
L3d8a2588a9c6_k270:
    .quad 4590846962231619145
L3d8a2588a9c6_k271:
    .quad 4592201644999532190
L3d8a2588a9c6_k272:
    .quad 4593527504729830064
L3d8a2588a9c6_k273:
    .quad 4594276903707824515
L3d8a2588a9c6_k274:
    .quad 4594957847971482934
L3d8a2588a9c6_k275:
    .quad 4595718055588583073
L3d8a2588a9c6_k276:
    .quad 4596658407190778033
L3d8a2588a9c6_k277:
    .quad 4597735668221645056
L3d8a2588a9c6_k278:
    .quad 4598674218383989067
L3d8a2588a9c6_k279:
    .quad 4599483064877064808
L3d8a2588a9c6_k280:
    .quad 4600401799201048389
L3d8a2588a9c6_k281:
    .quad 4601284504728013006
L3d8a2588a9c6_k282:
    .quad 4602123975698554867
L3d8a2588a9c6_k283:
    .quad 4602820232200946346
L3d8a2588a9c6_k284:
    .quad 4603228258327186113
L3d8a2588a9c6_k285:
    .quad 4603635383733500405
L3d8a2588a9c6_k286:
    .quad 4604048814179293017
L3d8a2588a9c6_k287:
    .quad 4604445130946501621
L3d8a2588a9c6_k288:
    .quad 4604819830435498846
L3d8a2588a9c6_k289:
    .quad 4605171111206433744
L3d8a2588a9c6_k290:
    .quad 4605525994857070540
L3d8a2588a9c6_k291:
    .quad 4605843048270837422
L3d8a2588a9c6_k292:
    .quad 4606138484406392927
L3d8a2588a9c6_k293:
    .quad 4606400593904705890
L3d8a2588a9c6_k294:
    .quad 4606649192604136741
L3d8a2588a9c6_k295:
    .quad 4606842847388113673
L3d8a2588a9c6_k296:
    .quad 4607002274814922588
L3d8a2588a9c6_k297:
    .quad 4607117566965383273
L3d8a2588a9c6_k298:
    .quad 4607176113760539089
L3d8a2588a9c6_k299:
    .quad 4607168908001135297
L3d8a2588a9c6_k300:
    .quad 4607101354006724739
L3d8a2588a9c6_k301:
    .quad 4606978856096860262
L3d8a2588a9c6_k302:
    .quad 4606777995553479537
L3d8a2588a9c6_k303:
    .quad 4606509581015688256
L3d8a2588a9c6_k304:
    .quad 4606181718962815684
L3d8a2588a9c6_k305:
    .quad 4605809721633594881
L3d8a2588a9c6_k306:
    .quad 4605380078229143736
L3d8a2588a9c6_k307:
    .quad 4604906299548344359
L3d8a2588a9c6_k308:
    .quad 4604411804309259079
L3d8a2588a9c6_k309:
    .quad 4603901996831440739
L3d8a2588a9c6_k310:
    .quad 4603360664156230805
L3d8a2588a9c6_k311:
    .quad 4602840948759232250
L3d8a2588a9c6_k312:
    .quad 4602023095066901768
L3d8a2588a9c6_k313:
    .quad 4601095353543663446
L3d8a2588a9c6_k314:
    .quad 4600192832178338398
L3d8a2588a9c6_k315:
    .quad 4599374978486007916
L3d8a2588a9c6_k316:
    .quad 4598627380947864414
L3d8a2588a9c6_k317:
    .quad 4597674419266712817
L3d8a2588a9c6_k318:
    .quad 4591416217224518776
L3d8a2588a9c6_k319:
    .quad 4590760493118773631
L3d8a2588a9c6_k320:
    .quad 4590299324516930893
L3d8a2588a9c6_k321:
    .quad 4590104769013028487
L3d8a2588a9c6_k322:
    .quad 4590018299900182974
L3d8a2588a9c6_k323:
    .quad 4589917419268529875
L3d8a2588a9c6_k324:
    .quad 4590003888381375388
L3d8a2588a9c6_k325:
    .quad 4590270501479315721
L3d8a2588a9c6_k326:
    .quad 4590810933434600181
L3d8a2588a9c6_k327:
    .quad 4591855768548150136
L3d8a2588a9c6_k328:
    .quad 4592633990563759758
L3d8a2588a9c6_k329:
    .quad 4592050324052052541
L3d8a2588a9c6_k330:
    .quad 4591221661720616370
L3d8a2588a9c6_k331:
    .quad 4590818139194003974
L3d8a2588a9c6_k332:
    .quad 4591185632923597406
L3d8a2588a9c6_k333:
    .quad 4592158410443109433
L3d8a2588a9c6_k334:
    .quad 4593851763903000740
L3d8a2588a9c6_k335:
    .quad 4595105566039260686
L3d8a2588a9c6_k336:
    .quad 4596564732318528727
L3d8a2588a9c6_k337:
    .quad 4598205844022742535
L3d8a2588a9c6_k338:
    .quad 4599198437380614993
L3d8a2588a9c6_k339:
    .quad 4600304521449097187
L3d8a2588a9c6_k340:
    .quad 4601536706307145754
L3d8a2588a9c6_k341:
    .quad 4602772494044896218
L3d8a2588a9c6_k342:
    .quad 4603493069985275498
L3d8a2588a9c6_k343:
    .quad 4604183922168114132
L3d8a2588a9c6_k344:
    .quad 4604854057792666862
L3d8a2588a9c6_k345:
    .quad 4605487263900275153
L3d8a2588a9c6_k346:
    .quad 4606103356329299437
L3d8a2588a9c6_k347:
    .quad 4606594248688682821
L3d8a2588a9c6_k348:
    .quad 4606960841698350780
L3d8a2588a9c6_k349:
    .quad 4607160801521806030
L3d8a2588a9c6_k350:
    .quad 4606590645808980925
L3d8a2588a9c6_k351:
    .quad 4606050213853696465
L3d8a2588a9c6_k352:
    .quad 4605396291187802269
L3d8a2588a9c6_k353:
    .quad 4604678417407199412
L3d8a2588a9c6_k354:
    .quad 4603931720588981384
L3d8a2588a9c6_k355:
    .quad 4603230059767037061
L3d8a2588a9c6_k356:
    .quad 4602504079507104937
L3d8a2588a9c6_k357:
    .quad 4601370973840858520
L3d8a2588a9c6_k358:
    .quad 4600369373283731322
L3d8a2588a9c6_k359:
    .quad 4599596555587674545
L3d8a2588a9c6_k360:
    .quad 4598978661718799312
L3d8a2588a9c6_k361:
    .quad 4598476060000384765
L3d8a2588a9c6_k362:
    .quad 4598002281319585389
L3d8a2588a9c6_k363:
    .quad 4597357365852945934
L3d8a2588a9c6_k364:
    .quad 4596878182852593713
L3d8a2588a9c6_k365:
    .quad 4596557526559124934
L3d8a2588a9c6_k366:
    .quad 4596326942258203564
L3d8a2588a9c6_k367:
    .quad 4596143195393406848
L3d8a2588a9c6_k368:
    .quad 4596045917641455645
L3d8a2588a9c6_k369:
    .quad 4595999080205330992
L3d8a2588a9c6_k370:
    .quad 4595909008212783582
L3d8a2588a9c6_k371:
    .quad 4595862170776658929
L3d8a2588a9c6_k372:
    .quad 4595858567896957033
L3d8a2588a9c6_k373:
    .quad 4595836950618745654
L3d8a2588a9c6_k374:
    .quad 4595815333340534276
L3d8a2588a9c6_k375:
    .quad 4595772098784111519
L3d8a2588a9c6_k376:
    .quad 4595725261347986866
L3d8a2588a9c6_k377:
    .quad 4595635189355439456
L3d8a2588a9c6_k378:
    .quad 4595498279926767393
L3d8a2588a9c6_k379:
    .quad 4595321738821374470
L3d8a2588a9c6_k380:
    .quad 4595094757400154997
L3d8a2588a9c6_k381:
    .quad 4594817335663108974
L3d8a2588a9c6_k382:
    .quad 4594543516805764848
L3d8a2588a9c6_k383:
    .quad 4594226463391997965
L3d8a2588a9c6_k384:
    .quad 4593913012857932979
L3d8a2588a9c6_k385:
    .quad 4593520298970426271
L3d8a2588a9c6_k386:
    .quad 4592886192142892505
L3d8a2588a9c6_k387:
    .quad 4592136793164898055
L3d8a2588a9c6_k388:
    .quad 4591409011465114983
L3d8a2588a9c6_k389:
    .quad 4590688435524735703
L3d8a2588a9c6_k390:
    .quad 4590047122937798145
L3d8a2588a9c6_k391:
    .quad 4589477867944898514
L3d8a2588a9c6_k392:
    .quad 4588692440169885100
L3d8a2588a9c6_k393:
    .quad 4587611576259316181
L3d8a2588a9c6_k394:
    .quad 4586703650574438289
L3d8a2588a9c6_k395:
    .quad 4599944233478907547
L3d8a2588a9c6_k396:
    .quad 4600318932967904772
L3d8a2588a9c6_k397:
    .quad 4600834144765275957
L3d8a2588a9c6_k398:
    .quad 4601574536544015666
L3d8a2588a9c6_k399:
    .quad 4602491469428148299
L3d8a2588a9c6_k400:
    .quad 4603159803612850081
L3d8a2588a9c6_k401:
    .quad 4603770491722321520
L3d8a2588a9c6_k402:
    .quad 4604426215828066664
L3d8a2588a9c6_k403:
    .quad 4605072932734557068
L3d8a2588a9c6_k404:
    .quad 4605681819404177559
L3d8a2588a9c6_k405:
    .quad 4606223152079387492
L3d8a2588a9c6_k406:
    .quad 4606675313481975490
L3d8a2588a9c6_k407:
    .quad 4606987863296115003
L3d8a2588a9c6_k408:
    .quad 4607151794322551289
L3d8a2588a9c6_k409:
    .quad 4607169808721060771
L3d8a2588a9c6_k410:
    .quad 4607034700732239656
L3d8a2588a9c6_k411:
    .quad 4606723051638025617
L3d8a2588a9c6_k412:
    .quad 4606164605284231676
L3d8a2588a9c6_k413:
    .quad 4605469249501765671
L3d8a2588a9c6_k414:
    .quad 4604691027486156050
L3d8a2588a9c6_k415:
    .quad 4603921812669801169
L3d8a2588a9c6_k416:
    .quad 4603161605052701029
L3d8a2588a9c6_k417:
    .quad 4602190628973039950
L3d8a2588a9c6_k418:
    .quad 4600944032596183797
L3d8a2588a9c6_k419:
    .quad 4599848757166807292
L3d8a2588a9c6_k420:
    .quad 4598847156609680094
L3d8a2588a9c6_k421:
    .quad 4597969855402268321
L3d8a2588a9c6_k422:
    .quad 4596816933897661474
L3d8a2588a9c6_k423:
    .quad 4595912611092485479
L3d8a2588a9c6_k424:
    .quad 4595055125723434136
L3d8a2588a9c6_k425:
    .quad 4594417416016198474
L3d8a2588a9c6_k426:
    .quad 4593340154985331451
L3d8a2588a9c6_k427:
    .quad 4592691636638990100
L3d8a2588a9c6_k428:
    .quad 4592064735570860127
L3d8a2588a9c6_k429:
    .quad 4591315336592865676
L3d8a2588a9c6_k430:
    .quad 4590674024005928118
L3d8a2588a9c6_k431:
    .quad 4590126386291239866
L3d8a2588a9c6_k432:
    .quad 4589585954335955406
L3d8a2588a9c6_k433:
    .quad 4589052728140074739
L3d8a2588a9c6_k434:
    .quad 4588317740680887874
L3d8a2588a9c6_k435:
    .quad 4587770102966199622
L3d8a2588a9c6_k436:
    .quad 4587395403477202397
L3d8a2588a9c6_k437:
    .quad 4587208053732703784
L3d8a2588a9c6_k438:
    .quad 4587020703988205172
L3d8a2588a9c6_k439:
    .quad 4587193642213896199
L3d8a2588a9c6_k440:
    .quad 4587366580439587226
L3d8a2588a9c6_k441:
    .quad 4587553930184085838
L3d8a2588a9c6_k442:
    .quad 4587741279928584451
L3d8a2588a9c6_k443:
    .quad 4587914218154275478
L3d8a2588a9c6_k444:
    .quad 4588101567898774091
L3d8a2588a9c6_k445:
    .quad 4588288917643272703
L3d8a2588a9c6_k446:
    .quad 4588476267387771316
L3d8a2588a9c6_k447:
    .quad 4588649205613462343
L3d8a2588a9c6_k448:
    .quad 4588836555357960955
L3d8a2588a9c6_k449:
    .quad 4588923024470806469
L3d8a2588a9c6_k450:
    .quad 4589023905102459568
L3d8a2588a9c6_k451:
    .quad 4589110374215305082
L3d8a2588a9c6_k452:
    .quad 4589182431809343010
L3d8a2588a9c6_k453:
    .quad 4589189637568746802
L3d8a2588a9c6_k454:
    .quad 4588850966876768541
L3d8a2588a9c6_k455:
    .quad 4588663617132269928
L3d8a2588a9c6_k456:
    .quad 4588115979417581676
L3d8a2588a9c6_k457:
    .quad 4587755691447392036
L3d8a2588a9c6_k458:
    .quad 4586862177281321730
L3d8a2588a9c6_k459:
    .quad 4586401008679478991
L3d8a2588a9c6_k460:
    .quad 4585954251596443838
L3d8a2588a9c6_k461:
    .quad 4585392202362948000
L3d8a2588a9c6_k462:
    .quad 4584844564648259748
L3d8a2588a9c6_k463:
    .quad 4583929433203978063
L3d8a2588a9c6_k464:
    .quad 4583208857263598784
L3d8a2588a9c6_k465:
    .quad 4581710059307609883
L3d8a2588a9c6_k466:
    .quad 4580989483367230603
L3d8a2588a9c6_k467:
    .quad 4580268907426851324
L3d8a2588a9c6_k468:
    .quad 4605615436345670118
L3d8a2588a9c6_k469:
    .quad 4605833140351657207
L3d8a2588a9c6_k470:
    .quad 4606149743405461353
L3d8a2588a9c6_k471:
    .quad 4606515886055166575
L3d8a2588a9c6_k472:
    .quad 4606882028704871796
L3d8a2588a9c6_k473:
    .quad 4607190525279346675
L3d8a2588a9c6_k474:
    .quad 4607281407919827012
L3d8a2588a9c6_k475:
    .quad 4607355627241686077
L3d8a2588a9c6_k476:
    .quad 4607330902479731813
L3d8a2588a9c6_k477:
    .quad 4607256638121876474
L3d8a2588a9c6_k478:
    .quad 4607077755144677318
L3d8a2588a9c6_k479:
    .quad 4606934991036489673
L3d8a2588a9c6_k480:
    .quad 4606786462320778994
L3d8a2588a9c6_k481:
    .quad 4606622801510320350
L3d8a2588a9c6_k482:
    .quad 4606440045437441655
L3d8a2588a9c6_k483:
    .quad 4606291606793723524
L3d8a2588a9c6_k484:
    .quad 4606192617673913920
L3d8a2588a9c6_k485:
    .quad 4606093628554104317
L3d8a2588a9c6_k486:
    .quad 4606044179030195789
L3d8a2588a9c6_k487:
    .quad 4605945189910386185
L3d8a2588a9c6_k488:
    .quad 4605792067523055588
L3d8a2588a9c6_k489:
    .quad 4605425924873350367
L3d8a2588a9c6_k490:
    .quad 4604891978101529321
L3d8a2588a9c6_k491:
    .quad 4604396762286503661
L3d8a2588a9c6_k492:
    .quad 4604163565897798417
L3d8a2588a9c6_k493:
    .quad 4604015037182087738
L3d8a2588a9c6_k494:
    .quad 4603965587658179210
L3d8a2588a9c6_k495:
    .quad 4604064576777988814
L3d8a2588a9c6_k496:
    .quad 4603724555006122341
L3d8a2588a9c6_k497:
    .quad 4603308962832508592
L3d8a2588a9c6_k498:
    .quad 4602728358768547987
L3d8a2588a9c6_k499:
    .quad 4601781702126874709
L3d8a2588a9c6_k500:
    .quad 4600851438587845060
L3d8a2588a9c6_k501:
    .quad 4600218232480236768
L3d8a2588a9c6_k502:
    .quad 4599584846228643381
L3d8a2588a9c6_k503:
    .quad 4599149618360654297
L3d8a2588a9c6_k504:
    .quad 4598818513716050018
L3d8a2588a9c6_k505:
    .quad 4598620715620415905
L3d8a2588a9c6_k506:
    .quad 4598422737380796698
L3d8a2588a9c6_k507:
    .quad 4598323658188994548
L3d8a2588a9c6_k508:
    .quad 4598224759141177491
L3d8a2588a9c6_k509:
    .quad 4598076140353474265
L3d8a2588a9c6_k510:
    .quad 4597878342257840153
L3d8a2588a9c6_k511:
    .quad 4597680183874235851
L3d8a2588a9c6_k512:
    .quad 13837197265105164698
L3d8a2588a9c6_k513:
    .quad 4595384068640217277
L3d8a2588a9c6_k514:
    .quad 4595622939564453009
L3d8a2588a9c6_k515:
    .quad 4596101401988864850
L3d8a2588a9c6_k516:
    .quad 4596487270404937954
L3d8a2588a9c6_k517:
    .quad 4597057606261748154
L3d8a2588a9c6_k518:
    .quad 4597625420102767026
L3d8a2588a9c6_k519:
    .quad 4598222597413356354
L3d8a2588a9c6_k520:
    .quad 4598686828462945704
L3d8a2588a9c6_k521:
    .quad 4598958125304498503
L3d8a2588a9c6_k522:
    .quad 4599364890422842606
L3d8a2588a9c6_k523:
    .quad 4599665190445995671
L3d8a2588a9c6_k524:
    .quad 4600085826651192075
L3d8a2588a9c6_k525:
    .quad 4600485205866147291
L3d8a2588a9c6_k526:
    .quad 4600904040631492747
L3d8a2588a9c6_k527:
    .quad 4601321974676912729
L3d8a2588a9c6_k528:
    .quad 4601722074467808324
L3d8a2588a9c6_k529:
    .quad 4602147214272632099
L3d8a2588a9c6_k530:
    .quad 4602551637519169969
L3d8a2588a9c6_k531:
    .quad 4602870672516772895
L3d8a2588a9c6_k532:
    .quad 4603080540259408360
L3d8a2588a9c6_k533:
    .quad 4603330219822749781
L3d8a2588a9c6_k534:
    .quad 4603554409012200284
L3d8a2588a9c6_k535:
    .quad 4603829578949432621
L3d8a2588a9c6_k536:
    .quad 4604039446692068086
L3d8a2588a9c6_k537:
    .quad 4604289126255409507
L3d8a2588a9c6_k538:
    .quad 4604552947121580870
L3d8a2588a9c6_k539:
    .quad 4604788575454084895
L3d8a2588a9c6_k540:
    .quad 4605058160927779292
L3d8a2588a9c6_k541:
    .quad 4605288024652760283
L3d8a2588a9c6_k542:
    .quad 4605549863935095603
L3d8a2588a9c6_k543:
    .quad 4605747481886744621
L3d8a2588a9c6_k544:
    .quad 4606011032536938342
L3d8a2588a9c6_k545:
    .quad 4606216306607953889
L3d8a2588a9c6_k546:
    .quad 4606460852067720107
L3d8a2588a9c6_k547:
    .quad 4606706388319404347
L3d8a2588a9c6_k548:
    .quad 4606916256062039812
L3d8a2588a9c6_k549:
    .quad 4607165935625381232
L3d8a2588a9c6_k550:
    .quad 4607281047631856822
L3d8a2588a9c6_k551:
    .quad 4607400663237959782
L3d8a2588a9c6_k552:
    .quad 4607520098700077648
L3d8a2588a9c6_k553:
    .quad 4607623771563499717
L3d8a2588a9c6_k554:
    .quad 4607729290902769007
L3d8a2588a9c6_k555:
    .quad 4607836251393919057
L3d8a2588a9c6_k556:
    .quad 4607938483105460367
L3d8a2588a9c6_k557:
    .quad 4608053414967950862
L3d8a2588a9c6_k558:
    .quad 4608177579209677467
L3d8a2588a9c6_k559:
    .quad 4608275217249598859
L3d8a2588a9c6_k560:
    .quad 4608380331264901686
L3d8a2588a9c6_k561:
    .quad 4608479770744674027
L3d8a2588a9c6_k562:
    .quad 4608595963615060186
L3d8a2588a9c6_k563:
    .quad 4608685630283641132
L3d8a2588a9c6_k564:
    .quad 4608784754511439557
L3d8a2588a9c6_k565:
    .quad 4608876898159815557
L3d8a2588a9c6_k566:
    .quad 4608984444118917165
L3d8a2588a9c6_k567:
    .quad 4609043261130050623
L3d8a2588a9c6_k568:
    .quad 4609129414990922221
L3d8a2588a9c6_k569:
    .quad 4609200616901030948
L3d8a2588a9c6_k570:
    .quad 4609275646870822941
L3d8a2588a9c6_k571:
    .quad 4603673934546310697
L3d8a2588a9c6_k572:
    .quad 4603729148677742259
L3d8a2588a9c6_k573:
    .quad 4603733742349362177
L3d8a2588a9c6_k574:
    .quad 4603837505284776793
L3d8a2588a9c6_k575:
    .quad 4603949734987490866
L3d8a2588a9c6_k576:
    .quad 4604092318951693416
L3d8a2588a9c6_k577:
    .quad 4604271652288855309
L3d8a2588a9c6_k578:
    .quad 4604455219009666930
L3d8a2588a9c6_k579:
    .quad 4604684542302692636
L3d8a2588a9c6_k580:
    .quad 4604876305574826072
L3d8a2588a9c6_k581:
    .quad 4605106079227814515
L3d8a2588a9c6_k582:
    .quad 4605347472167841573
L3d8a2588a9c6_k583:
    .quad 4605565626533791400
L3d8a2588a9c6_k584:
    .quad 4605758110381865215
L3d8a2588a9c6_k585:
    .quad 4606004997713437666
L3d8a2588a9c6_k586:
    .quad 4606244048781658491
L3d8a2588a9c6_k587:
    .quad 4606483099849879317
L3d8a2588a9c6_k588:
    .quad 4606710621703054075
L3d8a2588a9c6_k589:
    .quad 4606984080272428011
L3d8a2588a9c6_k590:
    .quad 4607199532478601416
L3d8a2588a9c6_k591:
    .quad 4607344007954647461
L3d8a2588a9c6_k592:
    .quad 4607481953211233820
L3d8a2588a9c6_k593:
    .quad 4607597335433687052
L3d8a2588a9c6_k594:
    .quad 4607741450621762908
L3d8a2588a9c6_k595:
    .quad 4607878720338405160
L3d8a2588a9c6_k596:
    .quad 4608026618550168007
L3d8a2588a9c6_k597:
    .quad 4608151773583812634
L3d8a2588a9c6_k598:
    .quad 4608293636972074804
L3d8a2588a9c6_k599:
    .quad 4608423791001305812
L3d8a2588a9c6_k600:
    .quad 4608566239857519540
L3d8a2588a9c6_k601:
    .quad 4608704050006117077
L3d8a2588a9c6_k602:
    .quad 4608844697422479858
L3d8a2588a9c6_k603:
    .quad 4609117660595894784
L3d8a2588a9c6_k604:
    .quad 4609259343840171860
L3d8a2588a9c6_k605:
    .quad 4609390984057279899
L3d8a2588a9c6_k606:
    .quad 4609533432913493628
L3d8a2588a9c6_k607:
    .quad 4609671783494046450
L3d8a2588a9c6_k608:
    .quad 4609795587447802865
L3d8a2588a9c6_k609:
    .quad 4609934208244333328
L3d8a2588a9c6_k610:
    .quad 4610060309033899702
L3d8a2588a9c6_k611:
    .quad 4610195417022720817
L3d8a2588a9c6_k612:
    .quad 4610328363283720794
L3d8a2588a9c6_k613:
    .quad 4610440908238408783
L3d8a2588a9c6_k614:
    .quad 4610568315071867094
L3d8a2588a9c6_k615:
    .quad 4610691893845642141
L3d8a2588a9c6_k616:
    .quad 4610788180805675322
L3d8a2588a9c6_k617:
    .quad 4610897077844665141
L3d8a2588a9c6_k618:
    .quad 4611020836762425282
L3d8a2588a9c6_k619:
    .quad 4611132841285157986
L3d8a2588a9c6_k620:
    .quad 4611255699482992653
L3d8a2588a9c6_k621:
    .quad 4611371261849430980
L3d8a2588a9c6_k622:
    .quad 4611464891685684013
L3d8a2588a9c6_k623:
    .quad 4611575455056535958
L3d8a2588a9c6_k624:
    .quad 4611674083888375372
L3d8a2588a9c6_k625:
    .quad 4611723871182255953
L3d8a2588a9c6_k626:
    .quad 4611780166177598084
L3d8a2588a9c6_k627:
    .quad 4611821824474151261
L3d8a2588a9c6_k628:
    .quad 4611860735574931742
L3d8a2588a9c6_k629:
    .quad 4607021009789372449
L3d8a2588a9c6_k630:
    .quad 4607080817592423930
L3d8a2588a9c6_k631:
    .quad 4607191380963275875
L3d8a2588a9c6_k632:
    .quad 4607246459986718616
L3d8a2588a9c6_k633:
    .quad 4607310906497386288
L3d8a2588a9c6_k634:
    .quad 4607381928263509921
L3d8a2588a9c6_k635:
    .quad 4607494473218197910
L3d8a2588a9c6_k636:
    .quad 4607609765368658594
L3d8a2588a9c6_k637:
    .quad 4607699432037239541
L3d8a2588a9c6_k638:
    .quad 4607802249216732409
L3d8a2588a9c6_k639:
    .quad 4607908624239930900
L3d8a2588a9c6_k640:
    .quad 4607998245872515573
L3d8a2588a9c6_k641:
    .quad 4608117816442622260
L3d8a2588a9c6_k642:
    .quad 4608237341976732673
L3d8a2588a9c6_k643:
    .quad 4608335205196635434
L3d8a2588a9c6_k644:
    .quad 4608446534179424033
L3d8a2588a9c6_k645:
    .quad 4608560295106011411
L3d8a2588a9c6_k646:
    .quad 4608702743962225140
L3d8a2588a9c6_k647:
    .quad 4608815288916913129
L3d8a2588a9c6_k648:
    .quad 4608957737773126858
L3d8a2588a9c6_k649:
    .quad 4609100186629340586
L3d8a2588a9c6_k650:
    .quad 4609242635485554315
L3d8a2588a9c6_k651:
    .quad 4609385084341768044
L3d8a2588a9c6_k652:
    .quad 4609522399094406570
L3d8a2588a9c6_k653:
    .quad 4609641924628516983
L3d8a2588a9c6_k654:
    .quad 4609782527008883490
L3d8a2588a9c6_k655:
    .quad 4609924975865097219
L3d8a2588a9c6_k656:
    .quad 4610067424721310948
L3d8a2588a9c6_k657:
    .quad 4610209873577524677
L3d8a2588a9c6_k658:
    .quad 4610352322433738405
L3d8a2588a9c6_k659:
    .quad 4610478693439282421
L3d8a2588a9c6_k660:
    .quad 4610607316244640123
L3d8a2588a9c6_k661:
    .quad 4610747648409028987
L3d8a2588a9c6_k662:
    .quad 4610867173943139400
L3d8a2588a9c6_k663:
    .quad 4611004758911755569
L3d8a2588a9c6_k664:
    .quad 4611147207767969298
L3d8a2588a9c6_k665:
    .quad 4611285558348522119
L3d8a2588a9c6_k666:
    .quad 4611405083882632532
L3d8a2588a9c6_k667:
    .quad 4611544650435084744
L3d8a2588a9c6_k668:
    .quad 4611742853854685320
L3d8a2588a9c6_k669:
    .quad 4611814055764794047
L3d8a2588a9c6_k670:
    .quad 4611885280192900912
L3d8a2588a9c6_k671:
    .quad 4611949006127628204
L3d8a2588a9c6_k672:
    .quad 4612012799616349907
L3d8a2588a9c6_k673:
    .quad 4612069072093693902
L3d8a2588a9c6_k674:
    .quad 4612128316946791960
L3d8a2588a9c6_k675:
    .quad 4612196568999144760
L3d8a2588a9c6_k676:
    .quad 4612252863994486891
L3d8a2588a9c6_k677:
    .quad 4612322557198720450
L3d8a2588a9c6_k678:
    .quad 4612380360899937750
L3d8a2588a9c6_k679:
    .quad 4612436633377281745
L3d8a2588a9c6_k680:
    .quad 4612492905854625739
L3d8a2588a9c6_k681:
    .quad 4612549200849967870
L3d8a2588a9c6_k682:
    .quad 4612606464119229886
L3d8a2588a9c6_k683:
    .quad 4612651297453520359
L3d8a2588a9c6_k684:
    .quad 4612688159416470387
L3d8a2588a9c6_k685:
    .quad 4612725989653340299
L3d8a2588a9c6_k686:
    .quad 13837084675114480435
L3d8a2588a9c6_k687:
    .quad 4591870180066957722
L3d8a2588a9c6_k688:
    .quad 4576526235992521347
L3d8a2588a9c6_k689:
    .quad 4577108461352347805
L3d8a2588a9c6_k690:
    .quad 4577609982206851783
L3d8a2588a9c6_k691:
    .quad 4578117267668878796
L3d8a2588a9c6_k692:
    .quad 4578624553130905808
L3d8a2588a9c6_k693:
    .quad 4579212543098255300
L3d8a2588a9c6_k694:
    .quad 4579523831904499149
L3d8a2588a9c6_k695:
    .quad 4579299012211100814
L3d8a2588a9c6_k696:
    .quad 4578872431254396281
L3d8a2588a9c6_k697:
    .quad 4578417027260076576
L3d8a2588a9c6_k698:
    .quad 4577990446303372043
L3d8a2588a9c6_k699:
    .quad 4577304458008130969
L3d8a2588a9c6_k700:
    .quad 4576941287734179812
L3d8a2588a9c6_k701:
    .quad 4576825995583719127
L3d8a2588a9c6_k702:
    .quad 4576779878723534853
L3d8a2588a9c6_k703:
    .quad 4576733761863350579
L3d8a2588a9c6_k704:
    .quad 4576647292750505066
L3d8a2588a9c6_k705:
    .quad 4579126073985409787
L3d8a2588a9c6_k706:
    .quad 4579714063952759279
L3d8a2588a9c6_k707:
    .quad 4580741605243740131
L3d8a2588a9c6_k708:
    .quad 4581260419920813212
L3d8a2588a9c6_k709:
    .quad 4581540003385680373
L3d8a2588a9c6_k710:
    .quad 4581635119409810438
L3d8a2588a9c6_k711:
    .quad 4580660900738417652
L3d8a2588a9c6_k712:
    .quad 4580225672870428567
L3d8a2588a9c6_k713:
    .quad 4579333599856239019
L3d8a2588a9c6_k714:
    .quad 4578388204222461405
L3d8a2588a9c6_k715:
    .quad 4577823272685204050
L3d8a2588a9c6_k716:
    .quad 4577506219271437167
L3d8a2588a9c6_k717:
    .quad 4577402456336022551
L3d8a2588a9c6_k718:
    .quad 4577206459680239387
L3d8a2588a9c6_k719:
    .quad 4577010463024456223
L3d8a2588a9c6_k720:
    .quad 4576918229304087675
L3d8a2588a9c6_k721:
    .quad 4585348967806525243
L3d8a2588a9c6_k722:
    .quad 4585520464880335512
L3d8a2588a9c6_k723:
    .quad 4585697726561668815
L3d8a2588a9c6_k724:
    .quad 4585972986570893699
L3d8a2588a9c6_k725:
    .quad 4586164659771034588
L3d8a2588a9c6_k726:
    .quad 4586464419362232368
L3d8a2588a9c6_k727:
    .quad 4586671945233061600
L3d8a2588a9c6_k728:
    .quad 4586886676863294626
L3d8a2588a9c6_k729:
    .quad 4586778590472237734
L3d8a2588a9c6_k730:
    .quad 4586566741145766226
L3d8a2588a9c6_k731:
    .quad 4586339039148606373
L3d8a2588a9c6_k732:
    .quad 4586176188986080656
L3d8a2588a9c6_k733:
    .quad 4585879311698644393
L3d8a2588a9c6_k734:
    .quad 4585608375145061784
L3d8a2588a9c6_k735:
    .quad 4585023267481473809
L3d8a2588a9c6_k736:
    .quad 4584717743282752995
L3d8a2588a9c6_k737:
    .quad 4584338720338113494
L3d8a2588a9c6_k738:
    .quad 4583926550900216546
L3d8a2588a9c6_k739:
    .quad 4583407736223143465
L3d8a2588a9c6_k740:
    .quad 4583038801341669274
L3d8a2588a9c6_k741:
    .quad 4582690042586525703
L3d8a2588a9c6_k742:
    .quad 4582246167807252066
L3d8a2588a9c6_k743:
    .quad 4581934879001008218
L3d8a2588a9c6_k744:
    .quad 4581171068504206182
L3d8a2588a9c6_k745:
    .quad 4580825192052824128
L3d8a2588a9c6_k746:
    .quad 4580580196233095173
L3d8a2588a9c6_k747:
    .quad 4630826316843712512
L3d8a2588a9c6_k748:
    .quad 4632233691727265792
L3d8a2588a9c6_k749:
    .quad 4633641066610819072
L3d8a2588a9c6_k750:
    .quad 4634626229029306368
L3d8a2588a9c6_k751:
    .quad 4635329916471083008
L3d8a2588a9c6_k752:
    .quad 4636033603912859648
L3d8a2588a9c6_k753:
    .quad 4636702581971570655
L3d8a2588a9c6_k754:
    .quad 4636598443970749572
L3d8a2588a9c6_k755:
    .quad 4636495854785987839
L3d8a2588a9c6_k756:
    .quad 4636394791195599878
L3d8a2588a9c6_k757:
    .quad 4636100529514384699
L3d8a2588a9c6_k758:
    .quad 4635911577473581161
L3d8a2588a9c6_k759:
    .quad 4635599560350835073
L3d8a2588a9c6_k760:
    .quad 4635209928614323348
L3d8a2588a9c6_k761:
    .quad 4634514859936333588
L3d8a2588a9c6_k762:
    .quad 4633485806421040358
L3d8a2588a9c6_k763:
    .quad 4632438060856231214
L3d8a2588a9c6_k764:
    .quad 4630915861070678589
L3d8a2588a9c6_k765:
    .quad 4629916280096509290
L3d8a2588a9c6_k766:
    .quad 4628494217848671248
L3d8a2588a9c6_k767:
    .quad 4627221511852975414
L3d8a2588a9c6_k768:
    .quad 4626206555308203295
L3d8a2588a9c6_k769:
    .quad 4625507416502050300
L3d8a2588a9c6_k770:
    .quad 4636808292010136667
L3d8a2588a9c6_k771:
    .quad 4636915598011820629
L3d8a2588a9c6_k772:
    .quad 4636986207417103381
L3d8a2588a9c6_k773:
    .quad 4637135094309721924
L3d8a2588a9c6_k774:
    .quad 4637024523901995560
L3d8a2588a9c6_k775:
    .quad 4635127989841227992
L3d8a2588a9c6_k776:
    .quad 4634527065395011204
L3d8a2588a9c6_k777:
    .quad 4633648824061177218
L3d8a2588a9c6_k778:
    .quad 4632652982482073519
L3d8a2588a9c6_k779:
    .quad 4631746102476734107
L3d8a2588a9c6_k780:
    .quad 4631092285363956178
L3d8a2588a9c6_k781:
    .quad 4636968366125704576
L3d8a2588a9c6_k782:
    .quad 4637247334567747623
L3d8a2588a9c6_k783:
    .quad 4637361268601445679
L3d8a2588a9c6_k784:
    .quad 4637476922447251437
L3d8a2588a9c6_k785:
    .quad 4637594322845287685
L3d8a2588a9c6_k786:
    .quad 4636005345936260223
L3d8a2588a9c6_k787:
    .quad 4635377536407642917
L3d8a2588a9c6_k788:
    .quad 4634736216080143499
L3d8a2588a9c6_k789:
    .quad 4634130669814809121
L3d8a2588a9c6_k790:
    .quad 4633154575112696559
L3d8a2588a9c6_k791:
    .quad 4632382279552721580
L3d8a2588a9c6_k792:
    .quad 4609082937842767757
L3d8a2588a9c6_k793:
    .quad 4610212845953278741
L3d8a2588a9c6_k794:
    .quad 4607685020518431955
L3d8a2588a9c6_k795:
    .quad 4601560485313178270
L3d8a2588a9c6_k796:
    .quad 4595754444673572227
L3d8a2588a9c6_k797:
    .quad 4597072017780555739
L3d8a2588a9c6_k798:
    .quad 4587186436454492406
L3d8a2588a9c6_k799:
    .quad 4595653203753948938
L3d8a2588a9c6_k800:
    .quad 4607630752142922141
L3d8a2588a9c6_k801:
    .quad 4611185083040835484
L3d8a2588a9c6_k802:
    .quad 4638848353679966208
L3d8a2588a9c6_k803:
    .quad 4609344146621155246

.subsections_via_symbols
