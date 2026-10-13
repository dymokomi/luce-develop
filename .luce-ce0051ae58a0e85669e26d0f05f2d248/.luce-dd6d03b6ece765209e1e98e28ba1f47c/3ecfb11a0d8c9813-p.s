    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_12luce_raw_raw_adaptation
_lb_12luce_raw_raw_adaptation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #528]
    sub x16, x29, #32
    str d0, [x16, #0]
    sub x16, x29, #32
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #0]
    sub x16, x29, #48
    str d3, [x16, #8]
    adrp x19, _lb_12luce_raw_raw_bradford@PAGE
    add x19, x19, _lb_12luce_raw_raw_bradford@PAGEOFF
    sub x11, x29, #144
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
    ldr d24, [sp, #512]
    ldr d25, [sp, #520]
    ldr d26, Le41c6ce52498_k0
    fcmp d25, d26
    fcsel d27, d25, d26, gt
    fdiv d28, d24, d27
    fmov d29, #1.0000000
    fsub d24, d29, d24
    fsub d24, d24, d25
    fdiv d24, d24, d27
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
    ldr d25, [sp, #328]
    fmul d25, d28, d25
    ldr d27, [sp, #336]
    fmul d27, d29, d27
    fadd d25, d25, d27
    ldr d27, [sp, #344]
    fmul d27, d24, d27
    fadd d25, d25, d27
    ldr d27, [sp, #352]
    fmul d27, d28, d27
    ldr d30, [sp, #360]
    fmul d30, d29, d30
    fadd d27, d27, d30
    ldr d30, [sp, #368]
    fmul d30, d24, d30
    fadd d27, d27, d30
    ldr d30, [sp, #376]
    fmul d28, d28, d30
    ldr d30, [sp, #384]
    fmul d30, d29, d30
    fadd d28, d28, d30
    ldr d30, [sp, #392]
    fmul d24, d24, d30
    fadd d24, d28, d24
    str d25, [sp, #472]
    str d27, [sp, #480]
    str d24, [sp, #488]
    sub x11, x29, #144
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
    ldr d25, [sp, #496]
    ldr d27, [sp, #504]
    fcmp d27, d26
    fcsel d26, d27, d26, gt
    fdiv d28, d25, d26
    fsub d25, d29, d25
    fsub d25, d25, d27
    fdiv d25, d25, d26
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
    ldr d26, [sp, #328]
    fmul d26, d28, d26
    ldr d27, [sp, #336]
    fmul d27, d29, d27
    fadd d26, d26, d27
    ldr d27, [sp, #344]
    fmul d27, d25, d27
    fadd d26, d26, d27
    ldr d27, [sp, #352]
    fmul d27, d28, d27
    ldr d30, [sp, #360]
    fmul d30, d29, d30
    fadd d27, d27, d30
    ldr d30, [sp, #368]
    fmul d30, d25, d30
    fadd d27, d27, d30
    ldr d30, [sp, #376]
    fmul d28, d28, d30
    ldr d30, [sp, #384]
    fmul d29, d29, d30
    fadd d28, d28, d29
    ldr d29, [sp, #392]
    fmul d25, d25, d29
    fadd d25, d28, d25
    str d26, [sp, #0]
    str d27, [sp, #8]
    str d25, [sp, #16]
    sub x9, x29, #544
    ldr q26, [x9]
    sub x9, x29, #72
    ldr q27, [x9]
    fdiv v26.2d, v26.2d, v27.2d
    sub x9, x29, #40
    str q26, [x9]
    fdiv d24, d25, d24
    str d24, [sp, #520]
    ldr d25, [sp, #504]
    ldr d26, [sp, #512]
    str d25, [sp, #328]
    fmov d25, xzr
    str d25, [sp, #336]
    str d25, [sp, #344]
    str d25, [sp, #352]
    str d26, [sp, #360]
    str d25, [sp, #368]
    str d25, [sp, #376]
    str d25, [sp, #384]
    str d24, [sp, #392]
    sub x10, x29, #216
    sub x11, x29, #288
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #288
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
    mov x0, x19
    sub x8, x29, #224
    bl _lb_12luce_raw_raw_invert
    ldrb w14, [sp, #392]
    cbz w14, Le41c6ce52498_1
Le41c6ce52498_2:
    movz x9, #1
    strb w9, [sp, #96]
    sub x1, x29, #520
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
    ldr x19, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le41c6ce52498_1:
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
    sub x11, x29, #88
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
    sub x11, x29, #368
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
Le41c6ce52498_21:
    cmp x14, #3
    b.hs Le41c6ce52498_24
    .p2align 4
Le41c6ce52498_22:
    add x15, x14, x14, lsl #1
    sub x9, x29, #216
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
Le41c6ce52498_25:
    cmp x6, #3
    b.hs Le41c6ce52498_28
    .p2align 4
Le41c6ce52498_26:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs Le41c6ce52498_c1
    sub x9, x29, #368
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #88
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs Le41c6ce52498_c2
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs Le41c6ce52498_c3
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs Le41c6ce52498_c4
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs Le41c6ce52498_c5
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo Le41c6ce52498_26
Le41c6ce52498_28:
    add x14, x14, #1
    cmp x14, #3
    b.lo Le41c6ce52498_22
Le41c6ce52498_24:
    sub x10, x29, #368
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
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
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
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
    sub x11, x29, #368
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x14, #0
Le41c6ce52498_31:
    cmp x14, #3
    b.hs Le41c6ce52498_34
    .p2align 4
Le41c6ce52498_32:
    add x15, x14, x14, lsl #1
    sub x9, x29, #440
    add x12, x9, x15, lsl #3
    add x13, x15, #1
    add x7, x15, #2
    mov x6, #0
Le41c6ce52498_35:
    cmp x6, #3
    b.hs Le41c6ce52498_38
    .p2align 4
Le41c6ce52498_36:
    add x5, x15, x6
    movz x10, #9
    cmp x5, x10
    b.hs Le41c6ce52498_c6
    sub x9, x29, #368
    add x5, x9, x5, lsl #3
    ldr d24, [x12]
    sub x9, x29, #232
    add x4, x9, x6, lsl #3
    ldr d25, [x4]
    fmul d24, d24, d25
    movz x10, #9
    cmp x13, x10
    b.hs Le41c6ce52498_c7
    ldr d25, [x12, #8]
    add x3, x6, #3
    movz x10, #9
    cmp x3, x10
    b.hs Le41c6ce52498_c8
    ldr d26, [x4, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x10, #9
    cmp x7, x10
    b.hs Le41c6ce52498_c9
    ldr d25, [x12, #16]
    add x3, x6, #6
    movz x10, #9
    cmp x3, x10
    b.hs Le41c6ce52498_c10
    ldr d26, [x4, #48]
    fmul d25, d25, d26
    fadd d24, d24, d25
    str d24, [x5]
    add x6, x6, #1
    cmp x6, #3
    b.lo Le41c6ce52498_36
Le41c6ce52498_38:
    add x14, x14, #1
    cmp x14, #3
    b.lo Le41c6ce52498_32
Le41c6ce52498_34:
    sub x10, x29, #368
    sub x11, x29, #88
    ldp x16, x17, [x10, #0]
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
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    sub x10, x29, #160
    sub x11, x29, #520
    ldp x16, x17, [x10, #0]
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
    strb w9, [sp, #96]
    sub x1, x29, #520
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
    ldr x19, [sp, #528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Le41c6ce52498_c1:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c2:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c3:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c4:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c5:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c6:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c7:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c8:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c9:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Le41c6ce52498_c10:
    adrp x0, _lb_text_8c69572f75a1@PAGE
    add x0, x0, _lb_text_8c69572f75a1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Le41c6ce52498_k0:
    .quad 4517329193108106637


    .p2align 2
    .globl _lb_12luce_raw_raw_9xy_to_xyz
_lb_12luce_raw_raw_9xy_to_xyz:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #16
    str d0, [x16, #0]
    sub x16, x29, #16
    str d1, [x16, #8]
    ldr d24, [sp, #40]
    ldr d25, La4b9faa1fa57_k0
    fcmp d24, d25
    fcsel d25, d24, d25, gt
    ldr d26, [sp, #32]
    fdiv d27, d26, d25
    fmov d28, #1.0000000
    fsub d26, d28, d26
    fsub d24, d26, d24
    fdiv d24, d24, d25
    str d27, [sp, #8]
    str d28, [sp, #16]
    str d24, [sp, #24]
    sub x9, x29, #40
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
La4b9faa1fa57_k0:
    .quad 4517329193108106637


    .p2align 2
    .globl _lb_12luce_raw_raw_weight
_lb_12luce_raw_raw_weight:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    sub x16, x29, #40
    str d0, [x16, #0]
    sub x16, x29, #40
    str d1, [x16, #8]
    mov x19, x0
    ldr x14, [x19, #472]
    cmp x14, #2
    b.hs L0395e73883cc_2
L0395e73883cc_1:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0395e73883cc_2:
L0395e73883cc_3:
    sub x9, x29, #40
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    bl _lb_12luce_raw_raw_14temperature_of
    fmov d25, d0
    fmov d24, d1
    ldr d24, [x19, #456]
    ldr d26, [x19, #464]
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w15, hi
    cbz w15, L0395e73883cc_20
L0395e73883cc_19:
    fmov d27, d24
    b L0395e73883cc_40
L0395e73883cc_20:
L0395e73883cc_21:
    fmov x12, d26
    and x13, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x13, x10
    b.ls L0395e73883cc_24
L0395e73883cc_23:
    fmov d27, d26
    b L0395e73883cc_40
L0395e73883cc_24:
L0395e73883cc_25:
    fmov d27, xzr
    fcmp d24, d27
    b.ne L0395e73883cc_28
L0395e73883cc_30:
    fcmp d26, d27
    b.ne L0395e73883cc_28
L0395e73883cc_27:
    orr x12, x14, x12
    fmov d27, x12
    b L0395e73883cc_40
L0395e73883cc_28:
L0395e73883cc_29:
    fcmp d24, d26
    fcsel d27, d24, d26, mi
L0395e73883cc_40:
L0395e73883cc_59:
    cbz w15, L0395e73883cc_42
L0395e73883cc_41:
    fmov d28, d24
    b L0395e73883cc_62
L0395e73883cc_42:
L0395e73883cc_43:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L0395e73883cc_46
L0395e73883cc_45:
    fmov d28, d26
    b L0395e73883cc_62
L0395e73883cc_46:
L0395e73883cc_47:
    fmov d28, xzr
    fcmp d24, d28
    b.ne L0395e73883cc_50
L0395e73883cc_52:
    fcmp d26, d28
    b.ne L0395e73883cc_50
L0395e73883cc_49:
    and x14, x14, x15
    fmov d28, x14
    b L0395e73883cc_62
L0395e73883cc_50:
L0395e73883cc_51:
    fcmp d24, d26
    fcsel d28, d24, d26, gt
L0395e73883cc_62:
    fcmp d27, d28
    b.lt L0395e73883cc_6
L0395e73883cc_5:
    fmov d24, #1.0000000
    fmov d0, d24
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0395e73883cc_6:
L0395e73883cc_7:
    fcmp d25, d27
    b.hi L0395e73883cc_10
L0395e73883cc_9:
    fmov d25, #1.0000000
    b L0395e73883cc_11
L0395e73883cc_10:
    fcmp d25, d28
    b.lt L0395e73883cc_13
L0395e73883cc_12:
    fmov d25, xzr
    b L0395e73883cc_14
L0395e73883cc_13:
    fmov d29, #1.0000000
    fdiv d25, d29, d25
    fdiv d28, d29, d28
    fsub d25, d25, d28
    fdiv d27, d29, d27
    fsub d27, d27, d28
    fdiv d25, d25, d27
L0395e73883cc_14:
L0395e73883cc_11:
    fcmp d24, d26
    cset w14, gt
    fmov d24, #1.0000000
    fsub d24, d24, d25
    cmp w14, #0
    fcsel d24, d24, d25, ne
    fmov d0, d24
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_15normalize_color
_lb_12luce_raw_raw_15normalize_color:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #80
    str x0, [x16]
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
    sub x10, x29, #80
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    adrp x14, _lb_12luce_raw_raw_6d50_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d50_xy@PAGEOFF
    ldr d24, [x14]
    ldr d25, [x14, #8]
    ldr d26, Ld5ce7f29b0cc_k0
    fcmp d25, d26
    fcsel d26, d25, d26, gt
    fdiv d27, d24, d26
    fmov d28, #1.0000000
    fsub d24, d28, d24
    fsub d24, d24, d25
    fdiv d24, d24, d26
    sub x10, x29, #152
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
    ldr d25, [sp, #80]
    fmul d25, d27, d25
    ldr d26, [sp, #88]
    fmul d26, d28, d26
    fadd d25, d25, d26
    ldr d26, [sp, #96]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #104]
    fmul d26, d27, d26
    ldr d29, [sp, #112]
    fmul d29, d28, d29
    fadd d26, d26, d29
    ldr d29, [sp, #120]
    fmul d29, d24, d29
    fadd d26, d26, d29
    ldr d29, [sp, #128]
    fmul d27, d27, d29
    ldr d29, [sp, #136]
    fmul d28, d28, d29
    fadd d27, d27, d28
    ldr d28, [sp, #144]
    fmul d24, d24, d28
    fadd d24, d27, d24
    fmov x14, d26
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Ld5ce7f29b0cc_20
Ld5ce7f29b0cc_19:
    b Ld5ce7f29b0cc_40
Ld5ce7f29b0cc_20:
Ld5ce7f29b0cc_21:
    fmov x15, d24
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Ld5ce7f29b0cc_24
Ld5ce7f29b0cc_23:
    fmov d26, d24
    b Ld5ce7f29b0cc_40
Ld5ce7f29b0cc_24:
Ld5ce7f29b0cc_25:
    fmov d27, xzr
    fcmp d26, d27
    b.ne Ld5ce7f29b0cc_28
Ld5ce7f29b0cc_30:
    fcmp d24, d27
    b.ne Ld5ce7f29b0cc_28
Ld5ce7f29b0cc_27:
    and x14, x14, x15
    fmov d26, x14
    b Ld5ce7f29b0cc_40
Ld5ce7f29b0cc_28:
Ld5ce7f29b0cc_29:
    fcmp d26, d24
    fcsel d26, d26, d24, gt
Ld5ce7f29b0cc_40:
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls Ld5ce7f29b0cc_42
Ld5ce7f29b0cc_41:
    b Ld5ce7f29b0cc_62
Ld5ce7f29b0cc_42:
Ld5ce7f29b0cc_43:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls Ld5ce7f29b0cc_46
Ld5ce7f29b0cc_45:
    fmov d25, d26
    b Ld5ce7f29b0cc_62
Ld5ce7f29b0cc_46:
Ld5ce7f29b0cc_47:
    fmov d24, xzr
    fcmp d25, d24
    b.ne Ld5ce7f29b0cc_50
Ld5ce7f29b0cc_52:
    fcmp d26, d24
    b.ne Ld5ce7f29b0cc_50
Ld5ce7f29b0cc_49:
    and x14, x14, x15
    fmov d25, x14
    b Ld5ce7f29b0cc_62
Ld5ce7f29b0cc_50:
Ld5ce7f29b0cc_51:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
Ld5ce7f29b0cc_62:
    fmov d24, xzr
    fcmp d25, d24
    b.le Ld5ce7f29b0cc_2
Ld5ce7f29b0cc_4:
    ldr d24, Ld5ce7f29b0cc_k1
    fcmp d25, d24
    b.mi Ld5ce7f29b0cc_1
Ld5ce7f29b0cc_5:
    ldr d24, Ld5ce7f29b0cc_k2
    fcmp d25, d24
    b.le Ld5ce7f29b0cc_2
Ld5ce7f29b0cc_1:
    sub x10, x29, #80
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
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
Ld5ce7f29b0cc_6:
    cmp x14, #9
    b.hs Ld5ce7f29b0cc_9
    .p2align 4
Ld5ce7f29b0cc_7:
    sub x9, x29, #152
    add x15, x9, x14, lsl #3
    ldr d24, [x15]
    fdiv d24, d24, d25
    str d24, [x15]
    add x14, x14, #1
    cmp x14, #9
    b.lo Ld5ce7f29b0cc_7
Ld5ce7f29b0cc_9:
    sub x10, x29, #152
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
Ld5ce7f29b0cc_2:
Ld5ce7f29b0cc_3:
    sub x10, x29, #80
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
    .p2align 3
Ld5ce7f29b0cc_k0:
    .quad 4517329193108106637
Ld5ce7f29b0cc_k1:
    .quad 4607092346807469998
Ld5ce7f29b0cc_k2:
    .quad 4607227454796291113


    .p2align 2
    .globl _lb_12luce_raw_raw_blend
_lb_12luce_raw_raw_blend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #312
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x9, x29, #312
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
    fmov d24, d0
    sub x11, x29, #168
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    fmov d25, #1.0000000
    fsub d25, d25, d24
    movz x14, #8
    movz x15, #1
    movz x12, #1
    and w15, w15, w12
    movz x12, #72
    sub x9, x29, #312
    sub x10, x29, #168
    sub x13, x9, x10
    sub x9, x29, #168
    sub x10, x29, #312
    sub x7, x9, x10
    cmp x13, x12
    cset w13, hs
    cmp x7, x12
    cset w7, hs
    and w13, w13, w7
    sub x9, x29, #312
    sub x10, x29, #168
    cmp x9, x10
    cset w7, eq
    orr w13, w13, w7
    and w15, w15, w13
    sub x9, x29, #80
    sub x10, x29, #168
    sub x13, x9, x10
    sub x9, x29, #168
    sub x10, x29, #80
    sub x7, x9, x10
    cmp x13, x12
    cset w13, hs
    cmp x7, x12
    cset w12, hs
    and w12, w13, w12
    sub x9, x29, #80
    sub x10, x29, #168
    cmp x9, x10
    cset w13, eq
    orr w12, w12, w13
    and w15, w15, w12
    cbnz w15, L0bc492a8da1c_7
L0bc492a8da1c_12:
    mov x14, #0
    b L0bc492a8da1c_11
L0bc492a8da1c_7:
    dup v26.2d, v24.d[0]
    dup v27.2d, v25.d[0]
    mov x15, #0
L0bc492a8da1c_8:
    cmp x15, x14
    b.hs L0bc492a8da1c_10
    .p2align 4
L0bc492a8da1c_9:
    sub x9, x29, #312
    add x12, x9, x15, lsl #3
    ldr q28, [x12]
    fmul v28.2d, v28.2d, v26.2d
    sub x9, x29, #80
    add x12, x9, x15, lsl #3
    ldr q29, [x12]
    fmul v29.2d, v29.2d, v27.2d
    fadd v28.2d, v28.2d, v29.2d
    sub x9, x29, #168
    add x12, x9, x15, lsl #3
    str q28, [x12]
    add x15, x15, #2
    cmp x15, x14
    b.lo L0bc492a8da1c_9
L0bc492a8da1c_10:
L0bc492a8da1c_11:
L0bc492a8da1c_1:
    cmp x14, #9
    b.hs L0bc492a8da1c_4
    .p2align 4
L0bc492a8da1c_2:
    lsl x15, x14, #3
    sub x9, x29, #168
    add x12, x9, x15
    sub x11, x29, #312
    ldr d26, [x15, x11]
    fmul d26, d26, d24
    sub x11, x29, #80
    ldr d27, [x15, x11]
    fmul d27, d27, d25
    fadd d26, d26, d27
    str d26, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo L0bc492a8da1c_2
L0bc492a8da1c_4:
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
    sub x1, x29, #240
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
    .globl _lb_12luce_raw_raw_17normalize_forward
_lb_12luce_raw_raw_17normalize_forward:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #8
    str x8, [x16]
    sub x16, x29, #80
    str x0, [x16]
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
    fmov d24, #1.0000000
    sub x10, x29, #80
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
    ldr d25, [sp, #96]
    fmul d25, d24, d25
    ldr d26, [sp, #104]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #112]
    fmul d26, d24, d26
    fadd d25, d25, d26
    ldr d26, [sp, #120]
    fmul d26, d24, d26
    ldr d27, [sp, #128]
    fmul d27, d24, d27
    fadd d26, d26, d27
    ldr d27, [sp, #136]
    fmul d27, d24, d27
    fadd d26, d26, d27
    ldr d27, [sp, #144]
    fmul d27, d24, d27
    ldr d28, [sp, #152]
    fmul d28, d24, d28
    fadd d27, d27, d28
    ldr d28, [sp, #160]
    fmul d28, d24, d28
    fadd d27, d27, d28
    str d25, [sp, #168]
    str d26, [sp, #176]
    str d27, [sp, #184]
    adrp x14, _lb_12luce_raw_raw_6d50_xy@PAGE
    add x14, x14, _lb_12luce_raw_raw_6d50_xy@PAGEOFF
    ldr d25, [x14]
    ldr d26, [x14, #8]
    ldr d27, L22db60157ee5_k0
    fcmp d26, d27
    fcsel d27, d26, d27, gt
    fdiv d28, d25, d27
    fsub d25, d24, d25
    fsub d25, d25, d26
    fdiv d25, d25, d27
    str d28, [sp, #144]
    str d24, [sp, #152]
    str d25, [sp, #160]
    sub x10, x29, #80
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
    fmov d24, xzr
    mov x14, #0
L22db60157ee5_1:
    cmp x14, #9
    b.hs L22db60157ee5_4
    .p2align 4
L22db60157ee5_2:
    lsl x15, x14, #3
    sub x9, x29, #200
    add x12, x9, x15
    movz x10, #3
    udiv x13, x14, x10
    lsl x13, x13, #3
    sub x10, x29, #104
    ldr d25, [x10, x13]
    fcmp d24, d25
    b.eq L22db60157ee5_6
L22db60157ee5_5:
    sub x10, x29, #80
    ldr d26, [x10, x15]
    sub x10, x29, #128
    ldr d27, [x10, x13]
    fmul d26, d27, d26
    fdiv d25, d26, d25
    b L22db60157ee5_7
L22db60157ee5_6:
    sub x10, x29, #80
    ldr d25, [x10, x15]
L22db60157ee5_7:
    str d25, [x12]
    add x14, x14, #1
    cmp x14, #9
    b.lo L22db60157ee5_2
L22db60157ee5_4:
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
    sub x1, x29, #272
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
    .p2align 3
L22db60157ee5_k0:
    .quad 4517329193108106637


    .p2align 2
    .globl _lb_test_28
_lb_test_28:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #16592
    sub sp, sp, x16
    str d8, [sp, #16584]
    str d9, [sp, #16576]
    str d10, [sp, #16568]
    movz x16, #4120
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #7176
    sub x8, x29, x16
    bl _lb_settings_defaults
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #9400]
    movz x9, #1024
    str x9, [sp, #9408]
    movz x16, #7176
    sub x9, x29, x16
    mov x0, x9
    movz x16, #7192
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    fmov s24, wzr
    mov x14, #0
L1efa6416ffda_1:
    cmp x14, #1024
    b.hs L1efa6416ffda_4
    .p2align 4
L1efa6416ffda_2:
    movz x16, #4120
    sub x10, x29, x16
    ldr s25, [x10, x14, lsl #2]
    fcmp s25, s24
    b.eq L1efa6416ffda_5
L1efa6416ffda_6:
    mov x9, #0
    str x9, [sp, #9384]
    mov x9, #0
    str x9, [sp, #9392]
    adrp x14, _lb_text_ce00fc85e117@PAGE
    add x14, x14, _lb_text_ce00fc85e117@PAGEOFF
    adrp x15, _lb_text_493ce6603e62@PAGE
    add x15, x15, _lb_text_493ce6603e62@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #7208
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1efa6416ffda_5:
    add x14, x14, #1
    cmp x14, #1024
    b.lo L1efa6416ffda_2
L1efa6416ffda_4:
    ldr d8, L1efa6416ffda_k0
    fmov d9, xzr
    fmov d0, d8
    fmov d1, d9
    movz x0, #4
    movz x1, #2
    movz x16, #10264
    sub x8, x29, x16
    bl _lb_tone_changed
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #6312]
    movz x9, #1024
    str x9, [sp, #6320]
    movz x16, #10264
    sub x9, x29, x16
    mov x0, x9
    movz x16, #10280
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #6296]
    movz x9, #1024
    str x9, [sp, #6304]
    fmov d0, d9
    movz x16, #10296
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    fabs d24, d24
    ldr d25, L1efa6416ffda_k1
    fcmp d24, d25
    b.mi L1efa6416ffda_8
L1efa6416ffda_9:
    mov x9, #0
    str x9, [sp, #6280]
    mov x9, #0
    str x9, [sp, #6288]
    adrp x14, _lb_text_203b50329ee0@PAGE
    add x14, x14, _lb_text_203b50329ee0@PAGEOFF
    adrp x15, _lb_text_61ee281c71d5@PAGE
    add x15, x15, _lb_text_61ee281c71d5@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #10312
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1efa6416ffda_8:
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #6264]
    movz x9, #1024
    str x9, [sp, #6272]
    fmov d10, #2.0000000
    fmov d0, d10
    movz x16, #10328
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    fmov d25, #0.5000000
    fcmp d24, d25
    b.le L1efa6416ffda_12
L1efa6416ffda_13:
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #6248]
    movz x9, #1024
    str x9, [sp, #6256]
    fmov d24, #-2.0000000
    fmov d0, d24
    movz x16, #10344
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    fmov d25, #-0.5000000
    fcmp d24, d25
    b.mi L1efa6416ffda_11
L1efa6416ffda_12:
    mov x9, #0
    str x9, [sp, #6232]
    mov x9, #0
    str x9, [sp, #6240]
    adrp x14, _lb_text_3024a3f02f96@PAGE
    add x14, x14, _lb_text_3024a3f02f96@PAGEOFF
    adrp x15, _lb_text_f49ab20112e4@PAGE
    add x15, x15, _lb_text_f49ab20112e4@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #10360
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1efa6416ffda_11:
    fmov d0, d8
    fmov d1, d9
    movz x0, #6
    movz x1, #2
    movz x16, #13416
    sub x8, x29, x16
    bl _lb_tone_changed
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #3160]
    movz x9, #1024
    str x9, [sp, #3168]
    movz x16, #13416
    sub x9, x29, x16
    mov x0, x9
    movz x16, #13432
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #3144]
    movz x9, #1024
    str x9, [sp, #3152]
    fmov d9, #3.0000000
    fmov d24, #-3.0000000
    fmov d0, d24
    movz x16, #13448
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    ldr d25, L1efa6416ffda_k2
    fcmp d24, d25
    b.le L1efa6416ffda_16
L1efa6416ffda_17:
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #3128]
    movz x9, #1024
    str x9, [sp, #3136]
    fmov d0, d9
    movz x16, #13464
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    ldr d25, L1efa6416ffda_k3
    fcmp d24, d25
    b.mi L1efa6416ffda_15
L1efa6416ffda_16:
    mov x9, #0
    str x9, [sp, #3112]
    mov x9, #0
    str x9, [sp, #3120]
    adrp x14, _lb_text_2c54bdf4fbbf@PAGE
    add x14, x14, _lb_text_2c54bdf4fbbf@PAGEOFF
    adrp x15, _lb_text_ffa76d3c7bab@PAGE
    add x15, x15, _lb_text_ffa76d3c7bab@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #13480
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1efa6416ffda_15:
    ldr d24, L1efa6416ffda_k4
    fmov d0, d24
    fmov d1, d8
    movz x0, #5
    movz x1, #8
    movz x16, #16536
    sub x8, x29, x16
    bl _lb_tone_changed
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #40]
    movz x9, #1024
    str x9, [sp, #48]
    movz x16, #16536
    sub x9, x29, x16
    mov x0, x9
    movz x16, #16552
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    movz x16, #4120
    sub x9, x29, x16
    str x9, [sp, #24]
    movz x9, #1024
    str x9, [sp, #32]
    fmov d0, d10
    movz x16, #16568
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_tone_7gain_at
    fmov d24, d0
    ldr d25, L1efa6416ffda_k5
    fcmp d24, d25
    b.mi L1efa6416ffda_19
L1efa6416ffda_20:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_65e61562b19b@PAGE
    add x14, x14, _lb_text_65e61562b19b@PAGEOFF
    adrp x15, _lb_text_25e7f895c937@PAGE
    add x15, x15, _lb_text_25e7f895c937@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #16584
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1efa6416ffda_19:
    mov x0, #0
    ldr d8, [sp, #16584]
    ldr d9, [sp, #16576]
    ldr d10, [sp, #16568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L1efa6416ffda_k0:
    .quad 4636737291354636288
L1efa6416ffda_k1:
    .quad 4576918229304087675
L1efa6416ffda_k2:
    .quad 4608983858650965606
L1efa6416ffda_k3:
    .quad 4591870180066957722
L1efa6416ffda_k4:
    .quad 13860109328209412096
L1efa6416ffda_k5:
    .quad 13832355895505741414


    .p2align 2
    .globl _lb_tone_fill
_lb_tone_fill:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3248
    str x19, [sp, #3240]
    str x20, [sp, #3232]
    str x21, [sp, #3224]
    str d8, [sp, #3216]
    str d9, [sp, #3208]
    str d10, [sp, #3200]
    str d11, [sp, #3192]
    str d12, [sp, #3184]
    str d13, [sp, #3176]
    str d14, [sp, #3168]
    str d15, [sp, #3160]
    sub x16, x29, #3144
    str x0, [x16]
    sub x16, x29, #3160
    str x1, [x16]
    str x2, [x16, #8]
    sub x0, x29, #3144
    ldr x1, [x0]
    movz x2, #3056
    bl _memcpy
    adrp x14, _lb_tone_9tone_high@PAGE
    add x14, x14, _lb_tone_9tone_high@PAGEOFF
    ldr d24, [x14]
    adrp x19, _lb_tone_8tone_low@PAGE
    add x19, x19, _lb_tone_8tone_low@PAGEOFF
    ldr d25, [x19]
    fsub d24, d24, d25
    ldr x20, [sp, #96]
    subs x14, x20, #1
    b.cc L7a9ecc99ce2f_c1
    ucvtf d25, x14
    fdiv d8, d24, d25
    ldr d17, L7a9ecc99ce2f_k0
    fmul d9, d8, d17
    ldr d10, L7a9ecc99ce2f_k1
    mov x21, #0
L7a9ecc99ce2f_1:
    cmp x21, x20
    b.hs L7a9ecc99ce2f_4
    .p2align 4
L7a9ecc99ce2f_2:
    ldr d24, [x19]
    ucvtf d25, x21
    fmul d25, d8, d25
    fadd d11, d24, d25
    movz x9, #4
    str w9, [sp, #72]
    ldrb w14, [sp, #72]
    movz x10, #118
    cmp x14, x10
    b.hs L7a9ecc99ce2f_c2
    sub x10, x29, #3144
    ldr d24, [x10, x14, lsl #3]
    ldr d17, L7a9ecc99ce2f_k2
    fdiv d24, d24, d17
    movz x9, #5
    str w9, [sp, #56]
    ldrb w14, [sp, #56]
    movz x10, #118
    cmp x14, x10
    b.hs L7a9ecc99ce2f_c3
    sub x10, x29, #3144
    ldr d25, [x10, x14, lsl #3]
    ldr d17, L7a9ecc99ce2f_k2
    fdiv d12, d25, d17
    movz x9, #6
    str w9, [sp, #40]
    ldrb w14, [sp, #40]
    movz x10, #118
    cmp x14, x10
    b.hs L7a9ecc99ce2f_c4
    sub x10, x29, #3144
    ldr d25, [x10, x14, lsl #3]
    ldr d17, L7a9ecc99ce2f_k2
    fdiv d13, d25, d17
    movz x9, #7
    str w9, [sp, #24]
    ldrb w14, [sp, #24]
    movz x10, #118
    cmp x14, x10
    b.hs L7a9ecc99ce2f_c5
    sub x10, x29, #3144
    ldr d25, [x10, x14, lsl #3]
    ldr d17, L7a9ecc99ce2f_k2
    fdiv d14, d25, d17
    movz x9, #8
    str w9, [sp, #8]
    ldrb w14, [sp, #8]
    movz x10, #118
    cmp x14, x10
    b.hs L7a9ecc99ce2f_c6
    sub x10, x29, #3144
    ldr d25, [x10, x14, lsl #3]
    ldr d17, L7a9ecc99ce2f_k2
    fdiv d15, d25, d17
    ldr d17, L7a9ecc99ce2f_k3
    fmul d24, d24, d17
    fmul d24, d11, d24
    str d24, [sp, #0]
    fmov d0, d11
    fmov d1, xzr
    fmov d2, #7.0000000
    bl _lb_tone_bump
    fmov d25, d0
    ldr d24, [sp, #0]
    fmul d24, d24, d25
    fadd d24, d11, d24
    ldr d17, L7a9ecc99ce2f_k4
    fmul d12, d12, d17
    str d24, [sp, #0]
    fmov d0, d11
    fmov d1, #2.0000000
    ldr d2, L7a9ecc99ce2f_k4
    bl _lb_tone_bump
    fmov d25, d0
    ldr d24, [sp, #0]
    fmul d25, d12, d25
    fadd d12, d24, d25
    ldr d17, L7a9ecc99ce2f_k4
    fmul d13, d13, d17
    fmov d0, d11
    fmov d1, #-3.0000000
    ldr d2, L7a9ecc99ce2f_k5
    bl _lb_tone_bump
    fmov d24, d0
    fmul d24, d13, d24
    fadd d12, d12, d24
    ldr d17, L7a9ecc99ce2f_k6
    fmul d13, d14, d17
    fmov d0, d11
    fmov d1, #2.5000000
    ldr d2, L7a9ecc99ce2f_k7
    bl _lb_tone_rise
    fmov d24, d0
    fmul d24, d13, d24
    fadd d12, d12, d24
    ldr d17, L7a9ecc99ce2f_k8
    fmul d13, d15, d17
    fmov d0, d11
    fmov d1, #-5.5000000
    fmov d2, #1.0000000
    bl _lb_tone_rise
    fmov d24, d0
    fmov d16, #1.0000000
    fsub d24, d16, d24
    fmul d24, d13, d24
    fadd d24, d12, d24
    fadd d25, d9, d10
    fcmp d24, d25
    fcsel d24, d25, d24, mi
    ldr x14, [sp, #88]
    add x14, x14, x21, lsl #2
    fsub d25, d24, d11
    fcvt s25, d25
    str s25, [x14]
    add x21, x21, #1
    fmov d10, d24
    cmp x21, x20
    b.lo L7a9ecc99ce2f_2
L7a9ecc99ce2f_4:
    ldr x19, [sp, #3240]
    ldr x20, [sp, #3232]
    ldr x21, [sp, #3224]
    ldr d8, [sp, #3216]
    ldr d9, [sp, #3208]
    ldr d10, [sp, #3200]
    ldr d11, [sp, #3192]
    ldr d12, [sp, #3184]
    ldr d13, [sp, #3176]
    ldr d14, [sp, #3168]
    ldr d15, [sp, #3160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7a9ecc99ce2f_c1:
    adrp x0, _lb_text_30dc89866a39@PAGE
    add x0, x0, _lb_text_30dc89866a39@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L7a9ecc99ce2f_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a9ecc99ce2f_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a9ecc99ce2f_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a9ecc99ce2f_c5:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7a9ecc99ce2f_c6:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L7a9ecc99ce2f_k0:
    .quad 4591870180066957722
L7a9ecc99ce2f_k1:
    .quad 13965043853221167104
L7a9ecc99ce2f_k2:
    .quad 4636737291354636288
L7a9ecc99ce2f_k3:
    .quad 4601778099247172813
L7a9ecc99ce2f_k4:
    .quad 4609884578576439706
L7a9ecc99ce2f_k5:
    .quad 4612136378390124954
L7a9ecc99ce2f_k6:
    .quad 4608083138725491507
L7a9ecc99ce2f_k7:
    .quad 4605380978949069210
L7a9ecc99ce2f_k8:
    .quad 4608983858650965606


    .p2align 2
    .globl _lb_tone_changed
_lb_tone_changed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9216
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #9200]
    str x20, [sp, #9192]
    str d8, [sp, #9184]
    str d9, [sp, #9176]
    fmov d8, d0
    fmov d9, d1
    uxtb w19, w0
    uxtb w20, w1
    sub x8, x29, #3096
    bl _lb_settings_defaults
    sub x10, x29, #3096
    movz x16, #9208
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d0, d8
    mov x1, x19
    movz x16, #9208
    sub x0, x29, x16
    bl _lb_settings_Settings_set
    fmov d0, d9
    mov x1, x20
    movz x16, #9208
    sub x0, x29, x16
    bl _lb_settings_Settings_set
    movz x16, #9208
    sub x10, x29, x16
    movz x16, #6152
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #6152
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #3056
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #9200]
    ldr x20, [sp, #9192]
    ldr d8, [sp, #9184]
    ldr d9, [sp, #9176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_tone_7gain_at
_lb_tone_7gain_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    fmov d24, d0
    adrp x14, _lb_tone_8tone_low@PAGE
    add x14, x14, _lb_tone_8tone_low@PAGEOFF
    ldr d25, [x14]
    fsub d24, d24, d25
    adrp x14, _lb_tone_9tone_high@PAGE
    add x14, x14, _lb_tone_9tone_high@PAGEOFF
    ldr d26, [x14]
    fsub d25, d26, d25
    fdiv d24, d24, d25
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    b.hi L55336ca07304_8
L55336ca07304_7:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L55336ca07304_10
L55336ca07304_9:
    b L55336ca07304_22
L55336ca07304_10:
L55336ca07304_11:
    fcmp d24, d25
    cset w14, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w14, #0
    fcsel d24, d25, d24, ne
L55336ca07304_22:
    ldr x14, [sp, #24]
    subs x15, x14, #1
    b.cc L55336ca07304_c1
    ucvtf d25, x15
    fmul d24, d25, d24
    frintm d25, d24
    fcvtzu x15, d25
    adds x12, x15, #1
    b.cs L55336ca07304_c2
    cmp x12, x14
    csel x12, x12, x15, lo
    ucvtf d25, x15
    fsub d24, d24, d25
    ldr x13, [sp, #16]
    cmp x15, x14
    b.hs L55336ca07304_c3
    ldr s25, [x13, x15, lsl #2]
    fcvt d25, s25
    fsub d26, d26, d24
    fmul d25, d25, d26
    ldr s26, [x13, x12, lsl #2]
    fcvt d26, s26
    fmul d24, d24, d26
    fadd d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55336ca07304_8:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L55336ca07304_c1:
    adrp x0, _lb_text_74891a55d2b5@PAGE
    add x0, x0, _lb_text_74891a55d2b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55336ca07304_c2:
    adrp x0, _lb_text_1e5411ade079@PAGE
    add x0, x0, _lb_text_1e5411ade079@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55336ca07304_c3:
    adrp x0, _lb_text_649d109d1bd6@PAGE
    add x0, x0, _lb_text_649d109d1bd6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_tone_bump
_lb_tone_bump:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fsub d24, d24, d25
    fdiv d24, d24, d26
    fneg d25, d24
    fmul d24, d24, d25
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_tone_rise
_lb_tone_rise:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str d8, [sp, #8]
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d8, #1.0000000
    fsub d24, d24, d25
    fneg d24, d24
    fdiv d24, d24, d26
    fmov d0, d24
    bl _lb_13luce_std_math_9exp_value
    fmov d24, d0
    fadd d24, d24, d8
    fdiv d24, d8, d24
    fmov d0, d24
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_29
_lb_test_29:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #10256
    sub sp, sp, x16
    str d8, [sp, #10248]
    str d9, [sp, #10240]
    movz x16, #7168
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4096
    bl _memset
    ldr d8, Lc84215bdfcd1_k0
    ldr d9, Lc84215bdfcd1_k1
    fmov d0, d9
    fmov d1, d9
    movz x0, #4
    movz x1, #5
    sub x8, x29, #3072
    bl _lb_tone_changed
    sub x10, x29, #3072
    movz x16, #10224
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d0, d9
    movz x16, #10224
    sub x0, x29, x16
    movz x1, #7
    bl _lb_settings_Settings_set
    fmov d0, d8
    movz x16, #10224
    sub x0, x29, x16
    movz x1, #6
    bl _lb_settings_Settings_set
    fmov d0, d8
    movz x16, #10224
    sub x0, x29, x16
    movz x1, #8
    bl _lb_settings_Settings_set
    movz x16, #7168
    sub x9, x29, x16
    str x9, [sp, #16]
    movz x9, #1024
    str x9, [sp, #24]
    movz x16, #10224
    sub x9, x29, x16
    mov x0, x9
    movz x16, #10240
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    ldr d24, Lc84215bdfcd1_k2
    adrp x14, _lb_tone_8tone_low@PAGE
    add x14, x14, _lb_tone_8tone_low@PAGEOFF
    adrp x15, _lb_tone_9tone_high@PAGE
    add x15, x15, _lb_tone_9tone_high@PAGEOFF
    ldr d25, Lc84215bdfcd1_k3
    mov x12, #0
Lc84215bdfcd1_1:
    cmp x12, #1024
    b.hs Lc84215bdfcd1_4
    .p2align 4
Lc84215bdfcd1_2:
    ldr d26, [x14]
    ucvtf d27, x12
    ldr d28, [x15]
    fsub d28, d28, d26
    fmul d27, d27, d28
    fdiv d27, d27, d25
    fadd d26, d26, d27
    movz x16, #7168
    sub x10, x29, x16
    ldr s27, [x10, x12, lsl #2]
    fcvt d27, s27
    fadd d26, d26, d27
    fcmp d26, d24
    b.gt Lc84215bdfcd1_5
Lc84215bdfcd1_6:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_3c8ca241ca8e@PAGE
    add x14, x14, _lb_text_3c8ca241ca8e@PAGEOFF
    adrp x15, _lb_text_b4e799a8d87c@PAGE
    add x15, x15, _lb_text_b4e799a8d87c@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #10256
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #10248]
    ldr d9, [sp, #10240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc84215bdfcd1_5:
    add x12, x12, #1
    fmov d24, d26
    cmp x12, #1024
    b.lo Lc84215bdfcd1_2
Lc84215bdfcd1_4:
    mov x0, #0
    ldr d8, [sp, #10248]
    ldr d9, [sp, #10240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lc84215bdfcd1_k0:
    .quad 4636737291354636288
Lc84215bdfcd1_k1:
    .quad 13860109328209412096
Lc84215bdfcd1_k2:
    .quad 13965043853221167104
Lc84215bdfcd1_k3:
    .quad 4652209618980700160


    .p2align 2
    .globl _lb_test_30
_lb_test_30:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #3136
    movk x16, #2, lsl #16
    sub sp, sp, x16
    sub x16, x29, #8
    str x19, [x16]
    sub x16, x29, #16
    str d8, [x16]
    sub x16, x29, #24
    str d9, [x16]
    sub x16, x29, #32
    str d10, [x16]
    sub x16, x29, #40
    str d11, [x16]
    sub x16, x29, #48
    str d12, [x16]
    sub x8, x29, #3104
    bl _lb_settings_defaults
    sub x10, x29, #3104
    movz x16, #3104
    movk x16, #1, lsl #16
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #3104
    movk x16, #1, lsl #16
    sub x0, x29, x16
    movz x16, #48
    movk x16, #1, lsl #16
    sub x8, x29, x16
    bl _lb_tables_build
    movz x16, #48
    movk x16, #1, lsl #16
    sub x10, x29, x16
    movz x16, #3104
    movk x16, #2, lsl #16
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1, lsl #16
    bl _memcpy
    ldr d8, L55d65bb723d1_k0
    fmov d9, xzr
    fmov d10, #1.0000000
    ldr d11, L55d65bb723d1_k1
    mov x19, #0
L55d65bb723d1_1:
    cmp x19, #1024
    b.hs L55d65bb723d1_4
    .p2align 4
L55d65bb723d1_2:
    ucvtf d24, x19
    fdiv d12, d24, d8
    fmov d0, d12
    movz x16, #3104
    movk x16, #2, lsl #16
    sub x0, x29, x16
    movz x1, #1
    bl _lb_tables_Tables_sample
    sub x16, x29, #112
    str d0, [x16, #0]
    sub x16, x29, #112
    str d1, [x16, #8]
    sub x16, x29, #112
    str d2, [x16, #16]
    sub x16, x29, #112
    str d3, [x16, #24]
    sub x10, x29, #112
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr d24, [x29, #-80]
    fcmp d24, d9
    b.ne L55d65bb723d1_6
L55d65bb723d1_8:
    ldr d24, [x29, #-72]
    fcmp d24, d10
    b.ne L55d65bb723d1_6
L55d65bb723d1_7:
    ldr d24, [x29, #-64]
    fcmp d10, d24
    b.eq L55d65bb723d1_5
L55d65bb723d1_6:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_179924dbba5c@PAGE
    add x14, x14, _lb_text_179924dbba5c@PAGEOFF
    adrp x15, _lb_text_304edafabcbf@PAGE
    add x15, x15, _lb_text_304edafabcbf@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #3120
    movk x16, #2, lsl #16
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr d8, [x16]
    sub x16, x29, #24
    ldr d9, [x16]
    sub x16, x29, #32
    ldr d10, [x16]
    sub x16, x29, #40
    ldr d11, [x16]
    sub x16, x29, #48
    ldr d12, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55d65bb723d1_5:
    fmov d0, d12
    movz x16, #3104
    movk x16, #2, lsl #16
    sub x0, x29, x16
    movz x1, #2
    bl _lb_tables_Tables_sample
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x16, x29, #176
    str d2, [x16, #16]
    sub x16, x29, #176
    str d3, [x16, #24]
    sub x10, x29, #176
    sub x11, x29, #144
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr d24, [x29, #-144]
    fsub d24, d24, d12
    fabs d24, d24
    fcmp d24, d11
    b.pl L55d65bb723d1_11
L55d65bb723d1_12:
    ldr d24, [x29, #-120]
    fsub d24, d24, d12
    fabs d24, d24
    fcmp d24, d11
    b.mi L55d65bb723d1_10
L55d65bb723d1_11:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_c87f6a67be16@PAGE
    add x14, x14, _lb_text_c87f6a67be16@PAGEOFF
    adrp x15, _lb_text_4e32d987b7ca@PAGE
    add x15, x15, _lb_text_4e32d987b7ca@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #3136
    movk x16, #2, lsl #16
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr d8, [x16]
    sub x16, x29, #24
    ldr d9, [x16]
    sub x16, x29, #32
    ldr d10, [x16]
    sub x16, x29, #40
    ldr d11, [x16]
    sub x16, x29, #48
    ldr d12, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55d65bb723d1_10:
    add x19, x19, #1
    cmp x19, #1024
    b.lo L55d65bb723d1_2
L55d65bb723d1_4:
    mov x0, #0
    sub x16, x29, #8
    ldr x19, [x16]
    sub x16, x29, #16
    ldr d8, [x16]
    sub x16, x29, #24
    ldr d9, [x16]
    sub x16, x29, #32
    ldr d10, [x16]
    sub x16, x29, #40
    ldr d11, [x16]
    sub x16, x29, #48
    ldr d12, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L55d65bb723d1_k0:
    .quad 4652209618980700160
L55d65bb723d1_k1:
    .quad 4566758108544739836


    .p2align 2
    .globl _lb_tables_build
_lb_tables_build:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4336
    movk x16, #2, lsl #16
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
    mov x19, x0
    movz x16, #152
    movk x16, #1, lsl #16
    sub x0, x29, x16
    mov x1, #0
    movz x2, #1, lsl #16
    bl _memset
    movz x16, #4320
    movk x16, #2, lsl #16
    sub x0, x29, x16
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #4320
    movk x16, #2, lsl #16
    sub x9, x29, x16
    str x9, [sp, #0]
    movz x9, #1024
    str x9, [sp, #8]
    mov x0, x19
    movz x16, #4336
    movk x16, #2, lsl #16
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_tone_fill
    fmov d8, xzr
    fmov d9, #1.0000000
    fcvt s24, d8
    fcvt s25, d9
    mov x14, #0
Ld3a9a9e505d3_1:
    cmp x14, #1024
    b.hs Ld3a9a9e505d3_4
    .p2align 4
Ld3a9a9e505d3_2:
    lsl x15, x14, #2
    movz x16, #4320
    movk x16, #2, lsl #16
    sub x11, x29, x16
    ldr s26, [x15, x11]
    fcvt d26, s26
    movz x16, #152
    movk x16, #1, lsl #16
    sub x9, x29, x16
    add x12, x9, x15, lsl #2
    fcvt s26, d26
    str s26, [x12]
    add x13, x15, #1
    movz x10, #16384
    cmp x13, x10
    b.hs Ld3a9a9e505d3_c1
    str s24, [x12, #4]
    add x13, x15, #2
    movz x10, #16384
    cmp x13, x10
    b.hs Ld3a9a9e505d3_c2
    str s24, [x12, #8]
    add x15, x15, #3
    movz x10, #16384
    cmp x15, x10
    b.hs Ld3a9a9e505d3_c3
    str s25, [x12, #12]
    add x14, x14, #1
    cmp x14, #1024
    b.lo Ld3a9a9e505d3_2
Ld3a9a9e505d3_4:
    ldr d24, Ld3a9a9e505d3_k0
    adrp x14, _lb_tables_9band_hues@PAGE
    add x14, x14, _lb_tables_9band_hues@PAGEOFF
    fmov d25, #3.0000000
    fmov d26, #2.0000000
    fmov d27, #30.0000000
    fmov d10, #0.5000000
    ldr d28, Ld3a9a9e505d3_k1
    mov x15, #0
Ld3a9a9e505d3_5:
    cmp x15, #1024
    b.hs Ld3a9a9e505d3_8
    .p2align 4
Ld3a9a9e505d3_6:
    ucvtf d29, x15
    movz x9, #1023
    ucvtf d30, x9
    fdiv d29, d29, d30
    fmul d29, d29, d24
    mov x12, #0
Ld3a9a9e505d3_22:
    cmp x12, #8
    b.hs Ld3a9a9e505d3_25
    .p2align 4
Ld3a9a9e505d3_23:
    add x13, x12, #1
    and x7, x13, #7
    ldr d30, [x14, x12, lsl #3]
    ldr d31, [x14, x7, lsl #3]
    fsub d31, d31, d30
    fcmp d31, d8
    fadd d19, d31, d24
    fcsel d31, d19, d31, mi
    fsub d30, d29, d30
    fcmp d30, d8
    fadd d19, d30, d24
    fcsel d30, d19, d30, mi
    fcmp d30, d31
    b.hi Ld3a9a9e505d3_35
Ld3a9a9e505d3_34:
    fdiv d29, d30, d31
    fmul d30, d29, d29
    fmul d29, d29, d26
    fsub d29, d25, d29
    fmul d29, d30, d29
    b Ld3a9a9e505d3_39
Ld3a9a9e505d3_35:
    mov x12, x13
    cmp x12, #8
    b.lo Ld3a9a9e505d3_23
Ld3a9a9e505d3_25:
    mov x12, #0
    mov x7, #0
    fmov d29, d8
Ld3a9a9e505d3_39:
    movz x10, #3
    umulh x11, x12, x10
    add x13, x12, x12, lsl #1
    cbnz x11, Ld3a9a9e505d3_c4
    adds x13, x13, #35
    b.cs Ld3a9a9e505d3_c5
    and w6, w13, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w6, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w6, [x16]
    movz x10, #118
    cmp x6, x10
    b.hs Ld3a9a9e505d3_c6
    ldr d30, [x19, x6, lsl #3]
    fdiv d30, d30, d28
    fsub d31, d9, d29
    fmul d30, d30, d31
    movz x10, #3
    umulh x11, x7, x10
    add x6, x7, x7, lsl #1
    cbnz x11, Ld3a9a9e505d3_c7
    adds x6, x6, #35
    b.cs Ld3a9a9e505d3_c8
    and w5, w6, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w5, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w5, [x16]
    movz x10, #118
    cmp x5, x10
    b.hs Ld3a9a9e505d3_c9
    ldr d19, [x19, x5, lsl #3]
    fdiv d19, d19, d28
    fmul d19, d19, d29
    fadd d30, d19, d30
    adds x5, x13, #1
    b.cs Ld3a9a9e505d3_c10
    and w5, w5, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w5, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w5, [x16]
    movz x10, #118
    cmp x5, x10
    b.hs Ld3a9a9e505d3_c11
    ldr d19, [x19, x5, lsl #3]
    fdiv d19, d19, d28
    fmul d19, d19, d31
    adds x5, x6, #1
    b.cs Ld3a9a9e505d3_c12
    and w5, w5, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w5, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w5, [x16]
    movz x10, #118
    cmp x5, x10
    b.hs Ld3a9a9e505d3_c13
    ldr d20, [x19, x5, lsl #3]
    fdiv d20, d20, d28
    fmul d20, d20, d29
    fadd d19, d20, d19
    adds x13, x13, #2
    b.cs Ld3a9a9e505d3_c14
    and w13, w13, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w13, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w13, [x16]
    movz x10, #118
    cmp x13, x10
    b.hs Ld3a9a9e505d3_c15
    ldr d20, [x19, x13, lsl #3]
    fdiv d20, d20, d28
    fmul d20, d20, d31
    adds x13, x6, #2
    b.cs Ld3a9a9e505d3_c16
    and w13, w13, #255
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w13, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w13, [x16]
    movz x10, #118
    cmp x13, x10
    b.hs Ld3a9a9e505d3_c17
    ldr d21, [x19, x13, lsl #3]
    fdiv d21, d21, d28
    fmul d21, d21, d29
    fadd d20, d21, d20
    adds x12, x12, #74
    b.cs Ld3a9a9e505d3_c18
    and w12, w12, #255
    movz x16, #184
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w12, [x16]
    movz x16, #184
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w12, [x16]
    movz x10, #118
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c19
    ldr d21, [x19, x12, lsl #3]
    fdiv d21, d21, d28
    fmul d31, d21, d31
    adds x12, x7, #74
    b.cs Ld3a9a9e505d3_c20
    and w12, w12, #255
    movz x16, #184
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w12, [x16]
    movz x16, #184
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w12, [x16]
    movz x10, #118
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c21
    ldr d21, [x19, x12, lsl #3]
    fdiv d21, d21, d28
    fmul d29, d21, d29
    fadd d29, d29, d31
    fmul d30, d27, d30
    fdiv d30, d30, d24
    fadd d31, d9, d19
    fmul d19, d10, d20
    fadd d19, d19, d9
    add x12, x15, #1024
    movz x10, #4
    umulh x11, x12, x10
    lsl x12, x12, #2
    cbnz x11, Ld3a9a9e505d3_c22
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c23
    movz x16, #152
    movk x16, #1, lsl #16
    sub x9, x29, x16
    add x13, x9, x12, lsl #2
    fcvt s30, d30
    str s30, [x13]
    add x7, x12, #1
    movz x10, #16384
    cmp x7, x10
    b.hs Ld3a9a9e505d3_c24
    fcvt s30, d31
    str s30, [x13, #4]
    add x7, x12, #2
    movz x10, #16384
    cmp x7, x10
    b.hs Ld3a9a9e505d3_c25
    fcvt s30, d19
    str s30, [x13, #8]
    add x12, x12, #3
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c26
    fcvt s29, d29
    str s29, [x13, #12]
    add x15, x15, #1
    cmp x15, #1024
    b.lo Ld3a9a9e505d3_6
Ld3a9a9e505d3_8:
    movz x9, #28
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c27
    ldr d11, [x19, x14, lsl #3]
    movz x9, #29
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c28
    ldr d24, [x19, x14, lsl #3]
    movz x9, #30
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c29
    ldr d12, [x19, x14, lsl #3]
    movz x9, #31
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c30
    ldr d13, [x19, x14, lsl #3]
    movz x9, #32
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c31
    ldr d25, [x19, x14, lsl #3]
    fsub d14, d24, d11
    ldr d15, Ld3a9a9e505d3_k2
    fsub d24, d25, d13
    add x20, x19, #944
    add x21, x19, #2000
    fmov x14, d14
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    cset w22, hi
    fmov x15, d15
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    cset w23, hi
    fcmp d8, d14
    cset w24, eq
    fcmp d8, d15
    cset w25, eq
    fcmp d14, d15
    cset w26, gt
    and x14, x14, x15
    fmov d25, x14
    fcmp d8, d9
    cset w27, ls
    mov x28, #0
Ld3a9a9e505d3_9:
    cmp x28, #1024
    b.hs Ld3a9a9e505d3_12
    .p2align 4
Ld3a9a9e505d3_10:
    ucvtf d26, x28
    movz x9, #1023
    ucvtf d27, x9
    fdiv d26, d26, d27
    fsub d27, d26, d11
    cbz w22, Ld3a9a9e505d3_121
Ld3a9a9e505d3_120:
    fmov d28, d14
    b Ld3a9a9e505d3_141
Ld3a9a9e505d3_121:
Ld3a9a9e505d3_122:
Ld3a9a9e505d3_140:
    cbz w23, Ld3a9a9e505d3_125
Ld3a9a9e505d3_124:
    fmov d28, d15
    b Ld3a9a9e505d3_141
Ld3a9a9e505d3_125:
Ld3a9a9e505d3_126:
    cbz w24, Ld3a9a9e505d3_129
Ld3a9a9e505d3_131:
    cbz w25, Ld3a9a9e505d3_129
Ld3a9a9e505d3_128:
    fmov d28, d25
    b Ld3a9a9e505d3_141
Ld3a9a9e505d3_129:
Ld3a9a9e505d3_130:
    cmp w26, #0
    fcsel d28, d14, d15, ne
Ld3a9a9e505d3_141:
    fdiv d27, d27, d28
    cbz w27, Ld3a9a9e505d3_143
Ld3a9a9e505d3_142:
    fmov x14, d27
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls Ld3a9a9e505d3_145
Ld3a9a9e505d3_144:
    b Ld3a9a9e505d3_157
Ld3a9a9e505d3_145:
Ld3a9a9e505d3_146:
    fcmp d27, d8
    cset w14, mi
    fcmp d27, d9
    fcsel d27, d9, d27, gt
    cmp w14, #0
    fcsel d27, d8, d27, ne
Ld3a9a9e505d3_157:
    fdiv d28, d9, d12
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d26, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d24, [x16]
    fmov d0, d27
    fmov d1, d28
    bl _lb_13luce_std_math_9pow_value
    fmov d27, d0
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d26, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d24, [x16]
    fmul d27, d27, d24
    fadd d27, d27, d13
    movz x16, #184
    movk x16, #1, lsl #16
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x14, #0
Ld3a9a9e505d3_13:
    cmp x14, #3
    b.hs Ld3a9a9e505d3_16
    .p2align 4
Ld3a9a9e505d3_14:
    movz x16, #184
    movk x16, #1, lsl #16
    sub x9, x29, x16
    add x15, x9, x14, lsl #3
    add x14, x14, #1
    movz x10, #5
    cmp x14, x10
    b.hi Ld3a9a9e505d3_c32
    movz x10, #264
    mul x12, x14, x10
    add x12, x12, x20
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d26, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d27, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str x14, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str x15, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d24, [x16]
    fmov d0, d27
    mov x0, x12
    bl _lb_settings_Curve_evaluate
    fmov d28, d0
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d26, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d27, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr x14, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr x15, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d24, [x16]
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d26, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d27, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str x14, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str x15, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d24, [x16]
    fmov d0, d28
    mov x0, x20
    bl _lb_settings_Curve_evaluate
    fmov d28, d0
    movz x16, #200
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d26, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d27, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr x14, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr x15, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d24, [x16]
    str d28, [x15]
    cmp x14, #3
    b.lo Ld3a9a9e505d3_14
Ld3a9a9e505d3_16:
    movz x16, #184
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d27, [x16]
    movz x16, #176
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d28, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d29, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d27, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d28, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d29, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str d24, [x16]
    fmov d0, d26
    mov x0, x21
    bl _lb_settings_Curve_evaluate
    fmov d26, d0
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d27, [x16]
    movz x16, #216
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d28, [x16]
    movz x16, #224
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d29, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d25, [x16]
    movz x16, #160
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldr d24, [x16]
    add x14, x28, #2048
    movz x10, #4
    umulh x11, x14, x10
    lsl x14, x14, #2
    cbnz x11, Ld3a9a9e505d3_c33
    movz x10, #16384
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c34
    movz x16, #152
    movk x16, #1, lsl #16
    sub x9, x29, x16
    add x15, x9, x14, lsl #2
    fcvt s27, d27
    str s27, [x15]
    add x12, x14, #1
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c35
    fcvt s27, d28
    str s27, [x15, #4]
    add x12, x14, #2
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c36
    fcvt s27, d29
    str s27, [x15, #8]
    add x14, x14, #3
    movz x10, #16384
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c37
    fcvt s26, d26
    str s26, [x15, #12]
    add x28, x28, #1
    cmp x28, #1024
    b.lo Ld3a9a9e505d3_10
Ld3a9a9e505d3_12:
    movz x9, #59
    movz x16, #156
    movk x16, #1, lsl #16
    sub x16, x29, x16
    strb w9, [x16]
    movz x9, #62
    movz x16, #155
    movk x16, #1, lsl #16
    sub x16, x29, x16
    strb w9, [x16]
    movz x9, #65
    movz x16, #154
    movk x16, #1, lsl #16
    sub x16, x29, x16
    strb w9, [x16]
    movz x9, #68
    movz x16, #153
    movk x16, #1, lsl #16
    sub x16, x29, x16
    strb w9, [x16]
    ldr d11, Ld3a9a9e505d3_k1
    ldr d12, Ld3a9a9e505d3_k3
    fcvt s13, d8
    mov x20, #0
Ld3a9a9e505d3_17:
    cmp x20, #4
    b.hs Ld3a9a9e505d3_20
    .p2align 4
Ld3a9a9e505d3_18:
    movz x16, #156
    movk x16, #1, lsl #16
    sub x10, x29, x16
    ldrb w14, [x10, x20]
    movz x16, #176
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w14, [x16]
    movz x16, #176
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w15, [x16]
    movz x10, #118
    cmp x15, x10
    b.hs Ld3a9a9e505d3_c38
    ldr d24, [x19, x15, lsl #3]
    mov w21, w14
    add x14, x21, #1
    and w14, w14, #255
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w14, [x16]
    movz x16, #192
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c39
    ldr d25, [x19, x14, lsl #3]
    fmov d0, d24
    fmov d1, d25
    bl _lb_tables_wheel
    fmov d24, d0
    fmov d25, d1
    add x14, x21, #2
    and w14, w14, #255
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w14, [x16]
    movz x16, #208
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c40
    ldr d26, [x19, x14, lsl #3]
    fdiv d26, d26, d11
    fmul d26, d26, d12
    fadd d26, d26, d9
    add x14, x20, #3072
    movz x10, #4
    umulh x11, x14, x10
    lsl x14, x14, #2
    cbnz x11, Ld3a9a9e505d3_c41
    movz x10, #16384
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c42
    movz x16, #152
    movk x16, #1, lsl #16
    sub x9, x29, x16
    add x15, x9, x14, lsl #2
    fcvt s24, d24
    str s24, [x15]
    add x12, x14, #1
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c43
    fcvt s24, d25
    str s24, [x15, #4]
    add x12, x14, #2
    movz x10, #16384
    cmp x12, x10
    b.hs Ld3a9a9e505d3_c44
    fcvt s24, d26
    str s24, [x15, #8]
    add x14, x14, #3
    movz x10, #16384
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c45
    str s13, [x15, #12]
    add x20, x20, #1
    cmp x20, #4
    b.lo Ld3a9a9e505d3_18
Ld3a9a9e505d3_20:
    movz x9, #82
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c46
    ldr d24, [x19, x14, lsl #3]
    movz x9, #83
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c47
    ldr d25, [x19, x14, lsl #3]
    fmul d25, d25, d10
    fmov d0, d24
    fmov d1, d25
    bl _lb_tables_wheel
    fmov d24, d0
    fmov d25, d1
    movz x9, #71
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c48
    ldr d26, [x19, x14, lsl #3]
    fdiv d26, d26, d11
    movz x9, #72
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c49
    ldr d27, [x19, x14, lsl #3]
    fdiv d27, d27, d11
    movz x9, #73
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c50
    ldr d28, [x19, x14, lsl #3]
    fcvt s26, d26
    movz x16, #16472
    sub x16, x29, x16
    str s26, [x16]
    fcvt s26, d27
    movz x16, #16468
    sub x16, x29, x16
    str s26, [x16]
    fcvt s26, d28
    movz x16, #16464
    sub x16, x29, x16
    str s26, [x16]
    fcvt s24, d24
    movz x16, #16460
    sub x16, x29, x16
    str s24, [x16]
    movz x9, #84
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c51
    ldr d24, [x19, x14, lsl #3]
    fdiv d24, d24, d11
    movz x9, #85
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c52
    ldr d26, [x19, x14, lsl #3]
    fdiv d26, d26, d11
    movz x9, #88
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c53
    ldr d27, [x19, x14, lsl #3]
    fdiv d27, d27, d11
    fcvt s25, d25
    movz x16, #16456
    sub x16, x29, x16
    str s25, [x16]
    fcvt s24, d24
    movz x16, #16452
    sub x16, x29, x16
    str s24, [x16]
    fcvt s24, d26
    movz x16, #16448
    sub x16, x29, x16
    str s24, [x16]
    fcvt s24, d27
    movz x16, #16444
    sub x16, x29, x16
    str s24, [x16]
    movz x9, #89
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c54
    ldr d24, [x19, x14, lsl #3]
    fdiv d24, d24, d11
    movz x9, #90
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c55
    ldr d25, [x19, x14, lsl #3]
    fdiv d25, d25, d11
    movz x9, #91
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    str w9, [x16]
    movz x16, #168
    movk x16, #1, lsl #16
    sub x16, x29, x16
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs Ld3a9a9e505d3_c56
    ldr d26, [x19, x14, lsl #3]
    fdiv d26, d26, d11
    fcvt s24, d24
    movz x16, #16440
    sub x16, x29, x16
    str s24, [x16]
    fcvt s24, d25
    movz x16, #16436
    sub x16, x29, x16
    str s24, [x16]
    fcvt s24, d26
    movz x16, #16432
    sub x16, x29, x16
    str s24, [x16]
    fcvt s24, d8
    movz x16, #16428
    sub x16, x29, x16
    str s24, [x16]
    movz x16, #152
    movk x16, #1, lsl #16
    sub x10, x29, x16
    movz x16, #224
    movk x16, #2, lsl #16
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1, lsl #16
    bl _memcpy
    movz x16, #224
    movk x16, #2, lsl #16
    sub x1, x29, x16
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #1, lsl #16
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
Ld3a9a9e505d3_143:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c1:
    adrp x0, _lb_text_1003a38ad16d@PAGE
    add x0, x0, _lb_text_1003a38ad16d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c2:
    adrp x0, _lb_text_39048ea7e555@PAGE
    add x0, x0, _lb_text_39048ea7e555@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c3:
    adrp x0, _lb_text_51bbcf41f73d@PAGE
    add x0, x0, _lb_text_51bbcf41f73d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c4:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c5:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c6:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c7:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c8:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c9:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c10:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c11:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c12:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c13:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c14:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c15:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c16:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c17:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c18:
    adrp x0, _lb_text_4b3b4a02d240@PAGE
    add x0, x0, _lb_text_4b3b4a02d240@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c19:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c20:
    adrp x0, _lb_text_4b3b4a02d240@PAGE
    add x0, x0, _lb_text_4b3b4a02d240@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c21:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c22:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c23:
    adrp x0, _lb_text_4f5eb30d9c82@PAGE
    add x0, x0, _lb_text_4f5eb30d9c82@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c24:
    adrp x0, _lb_text_1003a38ad16d@PAGE
    add x0, x0, _lb_text_1003a38ad16d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c25:
    adrp x0, _lb_text_39048ea7e555@PAGE
    add x0, x0, _lb_text_39048ea7e555@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c26:
    adrp x0, _lb_text_51bbcf41f73d@PAGE
    add x0, x0, _lb_text_51bbcf41f73d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c27:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c28:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c29:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c30:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c31:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c32:
    adrp x0, _lb_text_70a7cac65f13@PAGE
    add x0, x0, _lb_text_70a7cac65f13@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c33:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c34:
    adrp x0, _lb_text_4f5eb30d9c82@PAGE
    add x0, x0, _lb_text_4f5eb30d9c82@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c35:
    adrp x0, _lb_text_1003a38ad16d@PAGE
    add x0, x0, _lb_text_1003a38ad16d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c36:
    adrp x0, _lb_text_39048ea7e555@PAGE
    add x0, x0, _lb_text_39048ea7e555@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c37:
    adrp x0, _lb_text_51bbcf41f73d@PAGE
    add x0, x0, _lb_text_51bbcf41f73d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c38:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c39:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c40:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c41:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c42:
    adrp x0, _lb_text_4f5eb30d9c82@PAGE
    add x0, x0, _lb_text_4f5eb30d9c82@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c43:
    adrp x0, _lb_text_1003a38ad16d@PAGE
    add x0, x0, _lb_text_1003a38ad16d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c44:
    adrp x0, _lb_text_39048ea7e555@PAGE
    add x0, x0, _lb_text_39048ea7e555@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c45:
    adrp x0, _lb_text_51bbcf41f73d@PAGE
    add x0, x0, _lb_text_51bbcf41f73d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c46:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c47:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c48:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c49:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c50:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c51:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c52:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c53:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c54:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c55:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld3a9a9e505d3_c56:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Ld3a9a9e505d3_k0:
    .quad 4645040803167600640
Ld3a9a9e505d3_k1:
    .quad 4636737291354636288
Ld3a9a9e505d3_k2:
    .quad 4547007122018943789
Ld3a9a9e505d3_k3:
    .quad 4600877379321698714


    .p2align 2
    .globl _lb_tables_Tables_sample
_lb_tables_Tables_sample:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    fmov d24, d0
    mov x14, x0
    mov x15, x1
    fmov d25, xzr
    fmov d26, #1.0000000
    fcmp d25, d26
    b.hi L11bc7eae99b7_12
L11bc7eae99b7_11:
    fmov x12, d24
    and x12, x12, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L11bc7eae99b7_14
L11bc7eae99b7_13:
    b L11bc7eae99b7_26
L11bc7eae99b7_14:
L11bc7eae99b7_15:
    fcmp d24, d25
    cset w12, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w12, #0
    fcsel d24, d25, d24, ne
L11bc7eae99b7_26:
    movz x9, #1023
    ucvtf d25, x9
    fmul d24, d25, d24
    frintm d25, d24
    fcvtzu x12, d25
    adds x13, x12, #1
    b.cs L11bc7eae99b7_c1
    cmp x13, #1024
    csel x13, x13, x12, lo
    ucvtf d25, x12
    fsub d24, d24, d25
    sub x11, x29, #32
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x7, #0
L11bc7eae99b7_4:
    cmp x7, #4
    b.hs L11bc7eae99b7_7
    .p2align 4
L11bc7eae99b7_5:
    movz x10, #1024
    umulh x11, x15, x10
    lsl x6, x15, #10
    cbnz x11, L11bc7eae99b7_c2
    adds x5, x6, x12
    b.cs L11bc7eae99b7_c3
    movz x10, #4
    umulh x11, x5, x10
    lsl x5, x5, #2
    cbnz x11, L11bc7eae99b7_c4
    adds x5, x5, x7
    b.cs L11bc7eae99b7_c5
    movz x10, #16384
    cmp x5, x10
    b.hs L11bc7eae99b7_c6
    ldr s25, [x14, x5, lsl #2]
    fcvt h25, s25
    fcvt d25, h25
    adds x6, x6, x13
    b.cs L11bc7eae99b7_c7
    movz x10, #4
    umulh x11, x6, x10
    lsl x6, x6, #2
    cbnz x11, L11bc7eae99b7_c8
    adds x6, x6, x7
    b.cs L11bc7eae99b7_c9
    movz x10, #16384
    cmp x6, x10
    b.hs L11bc7eae99b7_c10
    ldr s26, [x14, x6, lsl #2]
    fcvt h26, s26
    fcvt d26, h26
    sub x9, x29, #32
    add x6, x9, x7, lsl #3
    fsub d26, d26, d25
    fmul d26, d26, d24
    fadd d25, d25, d26
    str d25, [x6]
    add x7, x7, #1
    cmp x7, #4
    b.lo L11bc7eae99b7_5
L11bc7eae99b7_7:
    sub x10, x29, #32
    sub x11, x29, #64
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x9, x29, #64
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11bc7eae99b7_12:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c1:
    adrp x0, _lb_text_406d68da26e3@PAGE
    add x0, x0, _lb_text_406d68da26e3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c2:
    adrp x0, _lb_text_0b9f41c05c31@PAGE
    add x0, x0, _lb_text_0b9f41c05c31@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c3:
    adrp x0, _lb_text_0b9f41c05c31@PAGE
    add x0, x0, _lb_text_0b9f41c05c31@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c4:
    adrp x0, _lb_text_0b9f41c05c31@PAGE
    add x0, x0, _lb_text_0b9f41c05c31@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c5:
    adrp x0, _lb_text_0b9f41c05c31@PAGE
    add x0, x0, _lb_text_0b9f41c05c31@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c6:
    adrp x0, _lb_text_0b9f41c05c31@PAGE
    add x0, x0, _lb_text_0b9f41c05c31@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c7:
    adrp x0, _lb_text_ef653e686297@PAGE
    add x0, x0, _lb_text_ef653e686297@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c8:
    adrp x0, _lb_text_ef653e686297@PAGE
    add x0, x0, _lb_text_ef653e686297@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c9:
    adrp x0, _lb_text_ef653e686297@PAGE
    add x0, x0, _lb_text_ef653e686297@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L11bc7eae99b7_c10:
    adrp x0, _lb_text_ef653e686297@PAGE
    add x0, x0, _lb_text_ef653e686297@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_tables_Tables_put
_lb_tables_Tables_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fmov d27, d3
    mov x14, x0
    mov x15, x1
    mov x12, x2
    movz x10, #1024
    umulh x11, x15, x10
    lsl x15, x15, #10
    cbnz x11, La7472313344b_c1
    adds x15, x15, x12
    b.cs La7472313344b_c2
    movz x10, #4
    umulh x11, x15, x10
    lsl x15, x15, #2
    cbnz x11, La7472313344b_c3
    movz x10, #16384
    cmp x15, x10
    b.hs La7472313344b_c4
    add x14, x14, x15, lsl #2
    fcvt s24, d24
    str s24, [x14]
    add x12, x15, #1
    movz x10, #16384
    cmp x12, x10
    b.hs La7472313344b_c5
    fcvt s24, d25
    str s24, [x14, #4]
    add x12, x15, #2
    movz x10, #16384
    cmp x12, x10
    b.hs La7472313344b_c6
    fcvt s24, d26
    str s24, [x14, #8]
    add x15, x15, #3
    movz x10, #16384
    cmp x15, x10
    b.hs La7472313344b_c7
    fcvt s24, d27
    str s24, [x14, #12]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La7472313344b_c1:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c2:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c3:
    adrp x0, _lb_text_7aa6cc4559e9@PAGE
    add x0, x0, _lb_text_7aa6cc4559e9@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c4:
    adrp x0, _lb_text_4f5eb30d9c82@PAGE
    add x0, x0, _lb_text_4f5eb30d9c82@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c5:
    adrp x0, _lb_text_1003a38ad16d@PAGE
    add x0, x0, _lb_text_1003a38ad16d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c6:
    adrp x0, _lb_text_39048ea7e555@PAGE
    add x0, x0, _lb_text_39048ea7e555@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La7472313344b_c7:
    adrp x0, _lb_text_51bbcf41f73d@PAGE
    add x0, x0, _lb_text_51bbcf41f73d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_tables_mixer
_lb_tables_mixer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x14, x0
    mov x15, x1
    mov x12, x2
    movz x10, #3
    umulh x11, x15, x10
    add x15, x15, x15, lsl #1
    cbnz x11, Lb0db33233e5f_c1
    adds x15, x15, #35
    b.cs Lb0db33233e5f_c2
    adds x15, x15, x12
    b.cs Lb0db33233e5f_c3
    and w15, w15, #255
    str w15, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs Lb0db33233e5f_c4
    ldr d24, [x14, x15, lsl #3]
    ldr d25, Lb0db33233e5f_k0
    fdiv d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb0db33233e5f_c1:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb0db33233e5f_c2:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb0db33233e5f_c3:
    adrp x0, _lb_text_38baf4d176b5@PAGE
    add x0, x0, _lb_text_38baf4d176b5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb0db33233e5f_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
Lb0db33233e5f_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_tables_9bw_weight
_lb_tables_9bw_weight:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x14, x0
    mov x15, x1
    adds x15, x15, #74
    b.cs L5bec6389146c_c1
    and w15, w15, #255
    str w15, [sp, #0]
    ldrb w15, [sp, #0]
    movz x10, #118
    cmp x15, x10
    b.hs L5bec6389146c_c2
    ldr d24, [x14, x15, lsl #3]
    ldr d25, L5bec6389146c_k0
    fdiv d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5bec6389146c_c1:
    adrp x0, _lb_text_4b3b4a02d240@PAGE
    add x0, x0, _lb_text_4b3b4a02d240@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L5bec6389146c_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L5bec6389146c_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_tables_wheel
_lb_tables_wheel:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str d8, [sp, #24]
    str d9, [sp, #16]
    str d10, [sp, #8]
    fmov d24, d0
    fmov d25, d1
    ldr d26, Lb4e2559e074e_k0
    fmul d25, d26, d25
    ldr d26, Lb4e2559e074e_k1
    fdiv d8, d25, d26
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    ldr d25, [x14]
    fmul d24, d25, d24
    ldr d25, Lb4e2559e074e_k2
    fdiv d9, d24, d25
    fmov d0, d9
    bl _lb_13luce_std_math_9cos_value
    fmov d24, d0
    fmul d10, d8, d24
    fmov d0, d9
    bl _lb_13luce_std_math_9sin_value
    fmov d24, d0
    fmul d24, d8, d24
    fmov d0, d10
    fmov d1, d24
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb4e2559e074e_k0:
    .quad 4587366580439587226
Lb4e2559e074e_k1:
    .quad 4636737291354636288
Lb4e2559e074e_k2:
    .quad 4640537203540230144


    .p2align 2
    .globl _lb_test_31
_lb_test_31:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #3120
    movk x16, #2, lsl #16
    sub sp, sp, x16
    sub x16, x29, #8
    str d8, [x16]
    sub x16, x29, #16
    str d9, [x16]
    sub x8, x29, #3072
    bl _lb_settings_defaults
    sub x10, x29, #3072
    movz x16, #3072
    movk x16, #1, lsl #16
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    ldr d24, L80fe69ce6ee6_k0
    fmov d0, d24
    movz x16, #3072
    movk x16, #1, lsl #16
    sub x0, x29, x16
    movz x1, #45
    bl _lb_settings_Settings_set
    movz x16, #3072
    movk x16, #1, lsl #16
    sub x0, x29, x16
    movz x16, #16
    movk x16, #1, lsl #16
    sub x8, x29, x16
    bl _lb_tables_build
    movz x16, #16
    movk x16, #1, lsl #16
    sub x10, x29, x16
    movz x16, #3072
    movk x16, #2, lsl #16
    sub x0, x29, x16
    mov x1, x10
    movz x2, #1, lsl #16
    bl _memcpy
    ldr d24, L80fe69ce6ee6_k1
    ldr d8, L80fe69ce6ee6_k2
    fdiv d24, d24, d8
    fmov d0, d24
    movz x16, #3072
    movk x16, #2, lsl #16
    sub x0, x29, x16
    movz x1, #1
    bl _lb_tables_Tables_sample
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    sub x16, x29, #48
    str d3, [x16, #24]
    ldr d24, [x29, #-40]
    ldr d9, L80fe69ce6ee6_k3
    fcmp d24, d9
    b.mi L80fe69ce6ee6_1
L80fe69ce6ee6_2:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_0915933c98b9@PAGE
    add x14, x14, _lb_text_0915933c98b9@PAGEOFF
    adrp x15, _lb_text_05d8f0f25fcd@PAGE
    add x15, x15, _lb_text_05d8f0f25fcd@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #3088
    movk x16, #2, lsl #16
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L80fe69ce6ee6_1:
    ldr d24, L80fe69ce6ee6_k4
    fdiv d24, d24, d8
    fmov d0, d24
    movz x16, #3072
    movk x16, #2, lsl #16
    sub x0, x29, x16
    movz x1, #1
    bl _lb_tables_Tables_sample
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    sub x16, x29, #48
    str d3, [x16, #24]
    ldr d24, [x29, #-40]
    fmov d25, #1.0000000
    fsub d24, d24, d25
    fabs d24, d24
    fcmp d24, d9
    b.mi L80fe69ce6ee6_4
L80fe69ce6ee6_5:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_b00dc9ec0110@PAGE
    add x14, x14, _lb_text_b00dc9ec0110@PAGEOFF
    adrp x15, _lb_text_1cc39750a61d@PAGE
    add x15, x15, _lb_text_1cc39750a61d@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #3104
    movk x16, #2, lsl #16
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L80fe69ce6ee6_4:
    ldr d24, L80fe69ce6ee6_k5
    fdiv d24, d24, d8
    fmov d0, d24
    movz x16, #3072
    movk x16, #2, lsl #16
    sub x0, x29, x16
    movz x1, #1
    bl _lb_tables_Tables_sample
    sub x16, x29, #48
    str d0, [x16, #0]
    sub x16, x29, #48
    str d1, [x16, #8]
    sub x16, x29, #48
    str d2, [x16, #16]
    sub x16, x29, #48
    str d3, [x16, #24]
    ldr d24, [x29, #-40]
    ldr d25, L80fe69ce6ee6_k6
    fcmp d24, d25
    b.gt L80fe69ce6ee6_7
L80fe69ce6ee6_8:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_22db4abb5de0@PAGE
    add x14, x14, _lb_text_22db4abb5de0@PAGEOFF
    adrp x15, _lb_text_b254d115914e@PAGE
    add x15, x15, _lb_text_b254d115914e@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #3120
    movk x16, #2, lsl #16
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L80fe69ce6ee6_7:
    mov x0, #0
    sub x16, x29, #8
    ldr d8, [x16]
    sub x16, x29, #16
    ldr d9, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L80fe69ce6ee6_k0:
    .quad 13860109328209412096
L80fe69ce6ee6_k1:
    .quad 4639200197400854528
L80fe69ce6ee6_k2:
    .quad 4645040803167600640
L80fe69ce6ee6_k3:
    .quad 4576918229304087675
L80fe69ce6ee6_k4:
    .quad 4643351953307336704
L80fe69ce6ee6_k5:
    .quad 4638144666238189568
L80fe69ce6ee6_k6:
    .quad 4596373779694328218


    .p2align 2
    .globl _lb_test_32
_lb_test_32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6896
    sub sp, sp, x16
    str d8, [sp, #6888]
    str d9, [sp, #6880]
    str d10, [sp, #6872]
    str d11, [sp, #6864]
    sub x0, x29, #3088
    mov x1, #0
    movz x2, #3056
    bl _memset
    sub x0, x29, #3744
    mov x1, #0
    movz x2, #656
    bl _memset
    movn x9, #0
    str x9, [sp, #3800]
    sub x10, x29, #3744
    sub x0, x29, #688
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x10, x29, #3088
    movz x16, #6800
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d8, xzr
    fmov d0, d8
    movz x16, #6800
    sub x0, x29, x16
    movz x1, #86
    bl _lb_settings_Settings_set
    ldr d9, La73e0e0b69eb_k0
    str d9, [sp, #72]
    str d9, [sp, #80]
    str d9, [sp, #88]
    movz x16, #6824
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #6800
    sub x0, x29, x16
    bl _lb_lens_veil
    fmov d10, d0
    fmov d24, #2.0000000
    fmov d0, d24
    movz x16, #6800
    sub x0, x29, x16
    movz x1, #86
    bl _lb_settings_Settings_set
    str d9, [sp, #48]
    str d9, [sp, #56]
    str d9, [sp, #64]
    movz x16, #6848
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #6800
    sub x0, x29, x16
    bl _lb_lens_veil
    fmov d11, d0
    fmov d24, #4.0000000
    fmov d0, d24
    movz x16, #6800
    sub x0, x29, x16
    movz x1, #87
    bl _lb_settings_Settings_set
    fcmp d8, d10
    b.ne La73e0e0b69eb_2
La73e0e0b69eb_4:
    ldr d24, La73e0e0b69eb_k1
    fcmp d11, d24
    b.le La73e0e0b69eb_2
La73e0e0b69eb_3:
    str d9, [sp, #24]
    str d9, [sp, #32]
    str d9, [sp, #40]
    movz x16, #6872
    sub x9, x29, x16
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    movz x16, #6800
    sub x0, x29, x16
    bl _lb_lens_veil
    fmov d24, d0
    fcmp d24, d11
    b.gt La73e0e0b69eb_1
La73e0e0b69eb_2:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_9619bc3e60d1@PAGE
    add x14, x14, _lb_text_9619bc3e60d1@PAGEOFF
    adrp x15, _lb_text_8ff54562350e@PAGE
    add x15, x15, _lb_text_8ff54562350e@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #6888
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr d8, [sp, #6888]
    ldr d9, [sp, #6880]
    ldr d10, [sp, #6872]
    ldr d11, [sp, #6864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La73e0e0b69eb_1:
    mov x0, #0
    ldr d8, [sp, #6888]
    ldr d9, [sp, #6880]
    ldr d10, [sp, #6872]
    ldr d11, [sp, #6864]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
La73e0e0b69eb_k0:
    .quad 4595653203753948938
La73e0e0b69eb_k1:
    .quad 4572414629676717179


    .p2align 2
    .globl _lb_lens_veil
_lb_lens_veil:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #40
    str d0, [x16, #0]
    sub x16, x29, #40
    str d1, [x16, #8]
    sub x16, x29, #40
    str d2, [x16, #16]
    mov x14, x0
    ldr d24, L3483f3ca54d9_k0
    ldr d25, [sp, #8]
    fmul d24, d24, d25
    ldr d25, L3483f3ca54d9_k1
    ldr d26, [sp, #16]
    fmul d25, d25, d26
    fadd d24, d24, d25
    ldr d25, L3483f3ca54d9_k2
    ldr d26, [sp, #24]
    fmul d25, d25, d26
    fadd d24, d24, d25
    movz x9, #86
    str w9, [sp, #32]
    ldrb w15, [sp, #32]
    movz x10, #118
    cmp x15, x10
    b.hs L3483f3ca54d9_c1
    ldr d25, [x14, x15, lsl #3]
    fmov d26, xzr
    fmov d27, #2.0000000
    fcmp d26, d27
    b.hi L3483f3ca54d9_9
L3483f3ca54d9_8:
    fmov x15, d25
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L3483f3ca54d9_11
L3483f3ca54d9_10:
    b L3483f3ca54d9_23
L3483f3ca54d9_11:
L3483f3ca54d9_12:
    fcmp d25, d26
    cset w15, mi
    fcmp d25, d27
    fcsel d25, d27, d25, gt
    cmp w15, #0
    fcsel d25, d26, d25, ne
L3483f3ca54d9_23:
    fcvtzu x15, d25
    adrp x12, _lb_lens_coatings@PAGE
    add x12, x12, _lb_lens_coatings@PAGEOFF
    movz x10, #3
    cmp x15, x10
    b.hs L3483f3ca54d9_c2
    ldr d25, [x12, x15, lsl #3]
    movz x9, #87
    str w9, [sp, #32]
    ldrb w15, [sp, #32]
    movz x10, #118
    cmp x15, x10
    b.hs L3483f3ca54d9_c3
    ldr d27, [x14, x15, lsl #3]
    fmov d28, #6.0000000
    fcmp d26, d28
    b.hi L3483f3ca54d9_25
L3483f3ca54d9_24:
    fmov x14, d27
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L3483f3ca54d9_27
L3483f3ca54d9_26:
    b L3483f3ca54d9_39
L3483f3ca54d9_27:
L3483f3ca54d9_28:
    fcmp d27, d26
    cset w14, mi
    fcmp d27, d28
    fcsel d27, d28, d27, gt
    cmp w14, #0
    fcsel d27, d26, d27, ne
L3483f3ca54d9_39:
    fcvtzu x14, d27
    adrp x15, _lb_lens_diffusions@PAGE
    add x15, x15, _lb_lens_diffusions@PAGEOFF
    movz x10, #7
    cmp x14, x10
    b.hs L3483f3ca54d9_c4
    ldr d27, [x15, x14, lsl #3]
    fadd d25, d27, d25
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L3483f3ca54d9_41
L3483f3ca54d9_40:
    b L3483f3ca54d9_61
L3483f3ca54d9_41:
L3483f3ca54d9_42:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L3483f3ca54d9_45
L3483f3ca54d9_44:
    fmov d24, d26
    b L3483f3ca54d9_61
L3483f3ca54d9_45:
L3483f3ca54d9_46:
    fcmp d24, d26
    b.ne L3483f3ca54d9_49
L3483f3ca54d9_51:
    fcmp d26, d26
    b.ne L3483f3ca54d9_49
L3483f3ca54d9_48:
    and x14, x14, x15
    fmov d24, x14
    b L3483f3ca54d9_61
L3483f3ca54d9_49:
L3483f3ca54d9_50:
    fcmp d24, d26
    fcsel d24, d24, d26, gt
L3483f3ca54d9_61:
    fmul d24, d25, d24
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3483f3ca54d9_9:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3483f3ca54d9_25:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L3483f3ca54d9_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3483f3ca54d9_c2:
    adrp x0, _lb_text_2f643bcebea8@PAGE
    add x0, x0, _lb_text_2f643bcebea8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3483f3ca54d9_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3483f3ca54d9_c4:
    adrp x0, _lb_text_ae0764875d3a@PAGE
    add x0, x0, _lb_text_ae0764875d3a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L3483f3ca54d9_k0:
    .quad 4598575656511668913
L3483f3ca54d9_k1:
    .quad 4604246808325626108
L3483f3ca54d9_k2:
    .quad 4587898295875951293

.subsections_via_symbols
