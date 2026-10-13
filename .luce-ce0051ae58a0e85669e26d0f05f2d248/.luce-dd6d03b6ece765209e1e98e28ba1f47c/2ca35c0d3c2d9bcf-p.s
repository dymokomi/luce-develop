    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_tone_9tone_high_0init
_lb_tone_9tone_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #10.0000000
    adrp x14, _lb_tone_9tone_high@PAGE
    add x14, x14, _lb_tone_9tone_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_geometry_13reach_degrees_0init
_lb_geometry_13reach_degrees_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #30.0000000
    adrp x14, _lb_geometry_13reach_degrees@PAGE
    add x14, x14, _lb_geometry_13reach_degrees@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12film_develop_processes_0init
_lb_12film_develop_processes_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2272
    str d8, [sp, #2264]
    str d9, [sp, #2256]
    str d10, [sp, #2248]
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_fd3d48585825@PAGE
    add x14, x14, _lb_text_fd3d48585825@PAGEOFF
    str x14, [sp, #8]
    movz x9, #5
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    fmov d24, #3.0000000
    str d24, [sp, #32]
    ldr d24, L019d76613642_k0
    str d24, [sp, #40]
    ldr d24, L019d76613642_k1
    str d24, [sp, #48]
    fmov d25, xzr
    str d25, [sp, #56]
    fmov d26, #1.0000000
    str d26, [sp, #64]
    str d26, [sp, #72]
    ldr d27, L019d76613642_k2
    str d27, [sp, #88]
    fmov d28, #20.0000000
    str d28, [sp, #96]
    movz x9, #1
    str x9, [sp, #112]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    sub x10, x29, #2264
    sub x11, x29, #2152
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_fed35fd7f6f4@PAGE
    add x14, x14, _lb_text_fed35fd7f6f4@PAGEOFF
    str x14, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    fmov d29, #3.2500000
    str d29, [sp, #32]
    ldr d29, L019d76613642_k3
    str d29, [sp, #40]
    str d24, [sp, #48]
    ldr d30, L019d76613642_k4
    str d30, [sp, #56]
    ldr d31, L019d76613642_k5
    str d31, [sp, #64]
    ldr d31, L019d76613642_k6
    str d31, [sp, #72]
    str d27, [sp, #88]
    str d28, [sp, #96]
    movz x9, #1
    str x9, [sp, #112]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    sub x10, x29, #2264
    sub x11, x29, #2040
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_645ab60132e7@PAGE
    add x14, x14, _lb_text_645ab60132e7@PAGEOFF
    str x14, [sp, #8]
    movz x9, #5
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    fmov d19, #12.0000000
    str d19, [sp, #32]
    ldr d19, L019d76613642_k7
    str d19, [sp, #40]
    str d24, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    str d27, [sp, #88]
    str d28, [sp, #96]
    movz x9, #1
    str x9, [sp, #112]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    sub x10, x29, #2264
    sub x11, x29, #1928
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_fe1d8b0a115d@PAGE
    add x14, x14, _lb_text_fe1d8b0a115d@PAGEOFF
    str x14, [sp, #8]
    movz x9, #3
    str x9, [sp, #16]
    movz x9, #1
    str x9, [sp, #24]
    fmov d24, #6.0000000
    str d24, [sp, #32]
    str d29, [sp, #40]
    ldr d29, L019d76613642_k8
    str d29, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    str d27, [sp, #88]
    str d28, [sp, #96]
    movz x9, #1
    str x9, [sp, #112]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    sub x10, x29, #2264
    sub x11, x29, #1816
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_0fbc98868fab@PAGE
    add x14, x14, _lb_text_0fbc98868fab@PAGEOFF
    str x14, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d27, #7.0000000
    str d27, [sp, #32]
    str d28, [sp, #40]
    ldr d27, L019d76613642_k9
    str d27, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    ldr d19, L019d76613642_k10
    str d19, [sp, #88]
    fmov d20, #30.0000000
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
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
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x11, #96]
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_acd6a3cfa617@PAGE
    add x14, x14, _lb_text_acd6a3cfa617@PAGEOFF
    str x14, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d21, #10.5000000
    str d21, [sp, #32]
    str d28, [sp, #40]
    ldr d21, L019d76613642_k11
    str d21, [sp, #48]
    str d29, [sp, #56]
    str d26, [sp, #64]
    ldr d22, L019d76613642_k12
    str d22, [sp, #72]
    ldr d22, L019d76613642_k13
    str d22, [sp, #80]
    str d29, [sp, #88]
    ldr d23, L019d76613642_k14
    str d23, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1592
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_1e0eb1dc26ad@PAGE
    add x14, x14, _lb_text_1e0eb1dc26ad@PAGEOFF
    str x14, [sp, #8]
    movz x9, #5
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d8, #6.5000000
    str d8, [sp, #32]
    str d28, [sp, #40]
    ldr d8, L019d76613642_k15
    str d8, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    str d19, [sp, #88]
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1480
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_0affbf6024bb@PAGE
    add x14, x14, _lb_text_0affbf6024bb@PAGEOFF
    str x14, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d9, #7.5000000
    str d9, [sp, #32]
    str d28, [sp, #40]
    str d27, [sp, #48]
    str d30, [sp, #56]
    str d26, [sp, #64]
    ldr d10, L019d76613642_k16
    str d10, [sp, #72]
    str d22, [sp, #80]
    ldr d10, L019d76613642_k17
    str d10, [sp, #88]
    str d20, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1368
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_b03b5ec189b8@PAGE
    add x14, x14, _lb_text_b03b5ec189b8@PAGEOFF
    str x14, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    ldr d10, L019d76613642_k18
    str d10, [sp, #32]
    str d28, [sp, #40]
    str d21, [sp, #48]
    ldr d21, L019d76613642_k19
    str d21, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    str d29, [sp, #80]
    str d29, [sp, #88]
    str d23, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1256
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_e34eb17bb044@PAGE
    add x14, x14, _lb_text_e34eb17bb044@PAGEOFF
    str x14, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d21, #4.0000000
    str d21, [sp, #32]
    str d28, [sp, #40]
    ldr d21, L019d76613642_k20
    str d21, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    ldr d21, L019d76613642_k21
    str d21, [sp, #72]
    str d22, [sp, #80]
    str d29, [sp, #88]
    str d23, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1144
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_4ded223d825d@PAGE
    add x14, x14, _lb_text_4ded223d825d@PAGEOFF
    str x14, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    str d9, [sp, #32]
    str d28, [sp, #40]
    str d27, [sp, #48]
    ldr d29, L019d76613642_k22
    str d29, [sp, #56]
    str d26, [sp, #64]
    ldr d29, L019d76613642_k23
    str d29, [sp, #72]
    str d22, [sp, #80]
    str d8, [sp, #88]
    str d23, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #1032
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_07da39805fa2@PAGE
    add x14, x14, _lb_text_07da39805fa2@PAGEOFF
    str x14, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    ldr d29, L019d76613642_k24
    str d29, [sp, #32]
    str d28, [sp, #40]
    ldr d29, L019d76613642_k25
    str d29, [sp, #48]
    fmov d29, #0.5000000
    fmov d21, #-0.5000000
    str d21, [sp, #56]
    str d26, [sp, #64]
    fmov d21, #1.2500000
    str d21, [sp, #72]
    ldr d21, L019d76613642_k26
    str d21, [sp, #80]
    fmov d23, #0.1250000
    str d23, [sp, #88]
    ldr d23, L019d76613642_k27
    str d23, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #920
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_a5b01d461bfe@PAGE
    add x14, x14, _lb_text_a5b01d461bfe@PAGEOFF
    str x14, [sp, #8]
    movz x9, #19
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    str d23, [sp, #32]
    str d28, [sp, #40]
    str d22, [sp, #48]
    ldr d9, L019d76613642_k28
    str d9, [sp, #56]
    ldr d9, L019d76613642_k29
    str d9, [sp, #64]
    ldr d10, L019d76613642_k30
    str d10, [sp, #72]
    ldr d10, L019d76613642_k31
    str d10, [sp, #80]
    ldr d10, L019d76613642_k32
    str d10, [sp, #88]
    ldr d10, L019d76613642_k33
    str d10, [sp, #96]
    movz x9, #3
    str x9, [sp, #112]
    mov x9, #0
    strb w9, [sp, #104]
    sub x10, x29, #2264
    sub x11, x29, #808
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_9100e3b7da83@PAGE
    add x14, x14, _lb_text_9100e3b7da83@PAGEOFF
    str x14, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    ldr d10, L019d76613642_k34
    str d10, [sp, #32]
    str d28, [sp, #40]
    str d8, [sp, #48]
    str d29, [sp, #56]
    str d26, [sp, #64]
    str d26, [sp, #72]
    str d19, [sp, #88]
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #696
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_40be79b26a79@PAGE
    add x14, x14, _lb_text_40be79b26a79@PAGEOFF
    str x14, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    ldr d29, L019d76613642_k35
    str d29, [sp, #32]
    str d28, [sp, #40]
    str d8, [sp, #48]
    ldr d29, L019d76613642_k36
    str d29, [sp, #56]
    str d26, [sp, #64]
    ldr d29, L019d76613642_k37
    str d29, [sp, #72]
    ldr d29, L019d76613642_k38
    str d29, [sp, #88]
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #584
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_0743ef142c70@PAGE
    add x14, x14, _lb_text_0743ef142c70@PAGEOFF
    str x14, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    fmov d19, #10.0000000
    str d19, [sp, #32]
    str d28, [sp, #40]
    ldr d19, L019d76613642_k39
    str d19, [sp, #48]
    str d25, [sp, #56]
    str d26, [sp, #64]
    str d9, [sp, #72]
    str d29, [sp, #88]
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #472
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_aadfad7ed79c@PAGE
    add x14, x14, _lb_text_aadfad7ed79c@PAGEOFF
    str x14, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    str d10, [sp, #32]
    str d28, [sp, #40]
    ldr d29, L019d76613642_k40
    str d29, [sp, #48]
    str d30, [sp, #56]
    str d26, [sp, #64]
    ldr d29, L019d76613642_k41
    str d29, [sp, #72]
    str d22, [sp, #88]
    str d20, [sp, #96]
    str d25, [sp, #80]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #360
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_f30f8927b353@PAGE
    add x14, x14, _lb_text_f30f8927b353@PAGEOFF
    str x14, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    ldr d29, L019d76613642_k42
    str d29, [sp, #32]
    str d28, [sp, #40]
    str d27, [sp, #48]
    ldr d27, L019d76613642_k43
    ldr d28, L019d76613642_k44
    str d28, [sp, #56]
    str d26, [sp, #64]
    str d9, [sp, #72]
    str d27, [sp, #80]
    str d21, [sp, #88]
    ldr d27, L019d76613642_k45
    str d27, [sp, #96]
    mov x9, #0
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #248
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
    sub x11, x29, #2264
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    adrp x14, _lb_text_9264579e222b@PAGE
    add x14, x14, _lb_text_9264579e222b@PAGEOFF
    str x14, [sp, #8]
    movz x9, #7
    str x9, [sp, #16]
    movz x9, #2
    str x9, [sp, #24]
    str d24, [sp, #32]
    fmov d24, #21.0000000
    str d24, [sp, #40]
    str d25, [sp, #48]
    str d26, [sp, #56]
    str d26, [sp, #64]
    str d31, [sp, #72]
    ldr d24, L019d76613642_k46
    str d24, [sp, #80]
    str d21, [sp, #88]
    str d23, [sp, #96]
    movz x9, #1
    strb w9, [sp, #104]
    movz x9, #2
    str x9, [sp, #112]
    sub x10, x29, #2264
    sub x11, x29, #136
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
    adrp x14, _lb_12film_develop_processes@PAGE
    add x14, x14, _lb_12film_develop_processes@PAGEOFF
    sub x10, x29, #2152
    mov x0, x14
    mov x1, x10
    movz x2, #2128
    bl _memcpy
    ldr d8, [sp, #2264]
    ldr d9, [sp, #2256]
    ldr d10, [sp, #2248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L019d76613642_k0:
    .quad 4630981128080903373
L019d76613642_k1:
    .quad 4590789316156388803
L019d76613642_k2:
    .quad 4585204852618449388
L019d76613642_k3:
    .quad 4630516694369330790
L019d76613642_k4:
    .quad 4599616371426034975
L019d76613642_k5:
    .quad 4607948030736670392
L019d76613642_k6:
    .quad 4607857958744122982
L019d76613642_k7:
    .quad 4626632339690723738
L019d76613642_k8:
    .quad 4590429028186199163
L019d76613642_k9:
    .quad 4590933431344464658
L019d76613642_k10:
    .quad 4586646004499207946
L019d76613642_k11:
    .quad 4588087156379966505
L019d76613642_k12:
    .quad 4607497670773933343
L019d76613642_k13:
    .quad 4587366580439587226
L019d76613642_k14:
    .quad 4630826316843712512
L019d76613642_k15:
    .quad 4591870180066957722
L019d76613642_k16:
    .quad 4606551914852185539
L019d76613642_k17:
    .quad 4588807732320345784
L019d76613642_k18:
    .quad 4621650232602945126
L019d76613642_k19:
    .quad 4600877379321698714
L019d76613642_k20:
    .quad 4591726064878881866
L019d76613642_k21:
    .quad 4607632778762754458
L019d76613642_k22:
    .quad 13822988408280810783
L019d76613642_k23:
    .quad 4608623570680775967
L019d76613642_k24:
    .quad 4623451672453893325
L019d76613642_k25:
    .quad 4589708452245819884
L019d76613642_k26:
    .quad 4593311331947716280
L019d76613642_k27:
    .quad 4633641066610819072
L019d76613642_k28:
    .quad 13827582079900728689
L019d76613642_k29:
    .quad 4605831338911806259
L019d76613642_k30:
    .quad 4608083138725491507
L019d76613642_k31:
    .quad 4599075939470750515
L019d76613642_k32:
    .quad 4597094355634707497
L019d76613642_k33:
    .quad 4636737291354636288
L019d76613642_k34:
    .quad 4618891777831180698
L019d76613642_k35:
    .quad 4622213182556366438
L019d76613642_k36:
    .quad 13829203375766582067
L019d76613642_k37:
    .quad 4605380978949069210
L019d76613642_k38:
    .quad 4584304132692975288
L019d76613642_k39:
    .quad 4591654007284843938
L019d76613642_k40:
    .quad 4591149604126578442
L019d76613642_k41:
    .quad 4607407598781385933
L019d76613642_k42:
    .quad 4623282787467866931
L019d76613642_k43:
    .quad 4596373779694328218
L019d76613642_k44:
    .quad 13819745816549104026
L019d76613642_k45:
    .quad 4631530004285489152
L019d76613642_k46:
    .quad 4599976659396224614


    .p2align 2
    .globl _lb_12film_develop_14cross_contrast_0init
_lb_12film_develop_14cross_contrast_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lbfdb533ad4e5_k0
    adrp x14, _lb_12film_develop_14cross_contrast@PAGE
    add x14, x14, _lb_12film_develop_14cross_contrast@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lbfdb533ad4e5_k0:
    .quad 4604480259023595110


    .p2align 2
    .globl _lb_12film_develop_10clear_base_0init
_lb_12film_develop_10clear_base_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L38256a87c05a_k0
    adrp x14, _lb_12film_develop_10clear_base@PAGE
    add x14, x14, _lb_12film_develop_10clear_base@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L38256a87c05a_k0:
    .quad 4591870180066957722


    .p2align 2
    .globl _lb_12film_develop_least_0init
_lb_12film_develop_least_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #0.2500000
    adrp x14, _lb_12film_develop_least@PAGE
    add x14, x14, _lb_12film_develop_least@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12film_develop_most_0init
_lb_12film_develop_most_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #6.0000000
    adrp x14, _lb_12film_develop_most@PAGE
    add x14, x14, _lb_12film_develop_most@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12film_develop_14fog_activation_0init
_lb_12film_develop_14fog_activation_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #1.7500000
    adrp x14, _lb_12film_develop_14fog_activation@PAGE
    add x14, x14, _lb_12film_develop_14fog_activation@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12film_develop_12gas_constant_0init
_lb_12film_develop_12gas_constant_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L00ad601d7598_k0
    adrp x14, _lb_12film_develop_12gas_constant@PAGE
    add x14, x14, _lb_12film_develop_12gas_constant@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L00ad601d7598_k0:
    .quad 4620870244398284740


    .p2align 2
    .globl _lb_13film_halation_14rem_jet_return_0init
_lb_13film_halation_14rem_jet_return_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lc991e77b8dfa_k0
    adrp x14, _lb_13film_halation_14rem_jet_return@PAGE
    add x14, x14, _lb_13film_halation_14rem_jet_return@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lc991e77b8dfa_k0:
    .quad 4576918229304087675


    .p2align 2
    .globl _lb_13film_halation_16undercoat_return_0init
_lb_13film_halation_16undercoat_return_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L9b5fe929a1ec_k0
    adrp x14, _lb_13film_halation_16undercoat_return@PAGE
    add x14, x14, _lb_13film_halation_16undercoat_return@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L9b5fe929a1ec_k0:
    .quad 4581421828931458171


    .p2align 2
    .globl _lb_13film_halation_12grey_density_0init
_lb_13film_halation_12grey_density_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #0.2500000
    adrp x14, _lb_13film_halation_12grey_density@PAGE
    add x14, x14, _lb_13film_halation_12grey_density@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13film_halation_11exit_spread_0init
_lb_13film_halation_11exit_spread_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #15.0000000
    adrp x14, _lb_13film_halation_11exit_spread@PAGE
    add x14, x14, _lb_13film_halation_11exit_spread@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_8size_low_0init
_lb_11film_grains_8size_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lb1b9e140ab1b_k0
    adrp x14, _lb_11film_grains_8size_low@PAGE
    add x14, x14, _lb_11film_grains_8size_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb1b9e140ab1b_k0:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_11film_grains_9size_high_0init
_lb_11film_grains_9size_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L3916c675d97c_k0
    adrp x14, _lb_11film_grains_9size_high@PAGE
    add x14, x14, _lb_11film_grains_9size_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3916c675d97c_k0:
    .quad 4608983858650965606


    .p2align 2
    .globl _lb_11film_grains_10cell_radii_0init
_lb_11film_grains_10cell_radii_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L7f8411211555_k0
    adrp x14, _lb_11film_grains_10cell_radii@PAGE
    add x14, x14, _lb_11film_grains_10cell_radii@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7f8411211555_k0:
    .quad 4608983858650965606


    .p2align 2
    .globl _lb_11film_grains_13aperture_area_0init
_lb_11film_grains_13aperture_area_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L4d9ef96c151f_k0
    adrp x14, _lb_11film_grains_13aperture_area@PAGE
    add x14, x14, _lb_11film_grains_13aperture_area@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4d9ef96c151f_k0:
    .quad 4655673332917383867


    .p2align 2
    .globl _lb_11film_grains_10color_peak_0init
_lb_11film_grains_10color_peak_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #0.5000000
    adrp x14, _lb_11film_grains_10color_peak@PAGE
    add x14, x14, _lb_11film_grains_10color_peak@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_11silver_peak_0init
_lb_11film_grains_11silver_peak_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #2.0000000
    adrp x14, _lb_11film_grains_11silver_peak@PAGE
    add x14, x14, _lb_11film_grains_11silver_peak@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_ln10_0init
_lb_11film_grains_ln10_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L719670d6bec0_k0
    adrp x14, _lb_11film_grains_ln10@PAGE
    add x14, x14, _lb_11film_grains_ln10@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L719670d6bec0_k0:
    .quad 4612367379483415830


    .p2align 2
    .globl _lb_11film_grains_13gaussian_from_0init
_lb_11film_grains_13gaussian_from_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #16.0000000
    adrp x14, _lb_11film_grains_13gaussian_from@PAGE
    add x14, x14, _lb_11film_grains_13gaussian_from@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_13normal_beyond_0init
_lb_11film_grains_13normal_beyond_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #24.0000000
    adrp x14, _lb_11film_grains_13normal_beyond@PAGE
    add x14, x14, _lb_11film_grains_13normal_beyond@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_7log_low_0init
_lb_11film_grains_7log_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #-4.5000000
    adrp x14, _lb_11film_grains_7log_low@PAGE
    add x14, x14, _lb_11film_grains_7log_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_8log_high_0init
_lb_11film_grains_8log_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #2.5000000
    adrp x14, _lb_11film_grains_8log_high@PAGE
    add x14, x14, _lb_11film_grains_8log_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_8peak_low_0init
_lb_11film_grains_8peak_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lce7206f604ca_k0
    adrp x14, _lb_11film_grains_8peak_low@PAGE
    add x14, x14, _lb_11film_grains_8peak_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lce7206f604ca_k0:
    .quad 4566758108544739836


    .p2align 2
    .globl _lb_11film_grains_9peak_high_0init
_lb_11film_grains_9peak_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L1f20d1f99ba7_k0
    adrp x14, _lb_11film_grains_9peak_high@PAGE
    add x14, x14, _lb_11film_grains_9peak_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L1f20d1f99ba7_k0:
    .quad 4638144666238189568


    .p2align 2
    .globl _lb_11film_grains_16size_square_mean_0init
_lb_11film_grains_16size_square_mean_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L711a9e5df305_k0
    adrp x14, _lb_11film_grains_16size_square_mean@PAGE
    add x14, x14, _lb_11film_grains_16size_square_mean@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L711a9e5df305_k0:
    .quad 4607422610780143834


    .p2align 2
    .globl _lb_11film_grains_headroom_0init
_lb_11film_grains_headroom_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L2b9465220fbc_k0
    adrp x14, _lb_11film_grains_headroom@PAGE
    add x14, x14, _lb_11film_grains_headroom@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L2b9465220fbc_k0:
    .quad 4609884578576439706


    .p2align 2
    .globl _lb_11film_grains_densest_0init
_lb_11film_grains_densest_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #2.5000000
    adrp x14, _lb_11film_grains_densest@PAGE
    add x14, x14, _lb_11film_grains_densest@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_11film_grains_11cell_grains_0init
_lb_11film_grains_11cell_grains_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #8.0000000
    adrp x14, _lb_11film_grains_11cell_grains@PAGE
    add x14, x14, _lb_11film_grains_11cell_grains@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_film_14silver_density_0init
_lb_film_14silver_density_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lef1ec7fe2b02_k0
    adrp x14, _lb_film_14silver_density@PAGE
    add x14, x14, _lb_film_14silver_density@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lef1ec7fe2b02_k0:
    .quad 4605380978949069210


    .p2align 2
    .globl _lb_film_12silver_grain_0init
_lb_film_12silver_grain_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L91a902043704_k0
    adrp x14, _lb_film_12silver_grain@PAGE
    add x14, x14, _lb_film_12silver_grain@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L91a902043704_k0:
    .quad 4600877379321698714


    .p2align 2
    .globl _lb_film_15generation_blur_0init
_lb_film_15generation_blur_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L68bd7c9e0c79_k0
    adrp x14, _lb_film_15generation_blur@PAGE
    add x14, x14, _lb_film_15generation_blur@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L68bd7c9e0c79_k0:
    .quad 4616639978017495450


    .p2align 2
    .globl _lb_film_16generation_grain_0init
_lb_film_16generation_grain_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #0.2500000
    adrp x14, _lb_film_16generation_grain@PAGE
    add x14, x14, _lb_film_16generation_grain@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_film_15optical_callier_0init
_lb_film_15optical_callier_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L330d8aa50ea7_k0
    adrp x14, _lb_film_15optical_callier@PAGE
    add x14, x14, _lb_film_15optical_callier@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L330d8aa50ea7_k0:
    .quad 4608533498688228557


    .p2align 2
    .globl _lb_film_10dye_spread_0init
_lb_film_10dye_spread_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #8.5000000
    adrp x14, _lb_film_10dye_spread@PAGE
    add x14, x14, _lb_film_10dye_spread@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_film_9edge_gain_0init
_lb_film_9edge_gain_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lea1ee8bf5f43_k0
    adrp x14, _lb_film_9edge_gain@PAGE
    add x14, x14, _lb_film_9edge_gain@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lea1ee8bf5f43_k0:
    .quad 4619229547803233485


    .p2align 2
    .globl _lb_11film_passes_widest_0init
_lb_11film_passes_widest_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lefb422cc61ce_k0
    adrp x14, _lb_11film_passes_widest@PAGE
    add x14, x14, _lb_11film_passes_widest@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lefb422cc61ce_k0:
    .quad 4634204016564240384


    .p2align 2
    .globl _lb_looks_looks_0init
_lb_looks_looks_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #960
    adrp x14, _lb_text_991ee01328fe@PAGE
    add x14, x14, _lb_text_991ee01328fe@PAGEOFF
    adrp x15, _lb_text_423de9f898f0@PAGE
    add x15, x15, _lb_text_423de9f898f0@PAGEOFF
    str x14, [sp, #0]
    movz x9, #22
    str x9, [sp, #8]
    movn x9, #0
    str x9, [sp, #16]
    str x15, [sp, #24]
    movz x9, #86
    str x9, [sp, #32]
    mov x9, #0
    strb w9, [sp, #40]
    mov x9, #0
    strb w9, [sp, #41]
    mov x9, #0
    strh w9, [sp, #42]
    mov x9, #0
    str w9, [sp, #44]
    adrp x14, _lb_text_c51175c49383@PAGE
    add x14, x14, _lb_text_c51175c49383@PAGEOFF
    adrp x15, _lb_text_f8bd56d4760f@PAGE
    add x15, x15, _lb_text_f8bd56d4760f@PAGEOFF
    str x14, [sp, #48]
    movz x9, #23
    str x9, [sp, #56]
    movn x9, #0
    str x9, [sp, #64]
    str x15, [sp, #72]
    movz x9, #67
    str x9, [sp, #80]
    mov x9, #0
    strb w9, [sp, #88]
    mov x9, #0
    strb w9, [sp, #89]
    mov x9, #0
    strh w9, [sp, #90]
    mov x9, #0
    str w9, [sp, #92]
    adrp x14, _lb_text_7a83d4d0b0b9@PAGE
    add x14, x14, _lb_text_7a83d4d0b0b9@PAGEOFF
    adrp x15, _lb_text_bcfb2199fc05@PAGE
    add x15, x15, _lb_text_bcfb2199fc05@PAGEOFF
    str x14, [sp, #96]
    movz x9, #13
    str x9, [sp, #104]
    movz x9, #1
    str x9, [sp, #112]
    str x15, [sp, #120]
    movz x9, #79
    str x9, [sp, #128]
    mov x9, #0
    strb w9, [sp, #136]
    mov x9, #0
    strb w9, [sp, #137]
    mov x9, #0
    strh w9, [sp, #138]
    mov x9, #0
    str w9, [sp, #140]
    adrp x14, _lb_text_130a635d27e8@PAGE
    add x14, x14, _lb_text_130a635d27e8@PAGEOFF
    adrp x15, _lb_text_ecc985bdfa46@PAGE
    add x15, x15, _lb_text_ecc985bdfa46@PAGEOFF
    str x14, [sp, #144]
    movz x9, #32
    str x9, [sp, #152]
    movz x9, #1
    str x9, [sp, #160]
    str x15, [sp, #168]
    movz x9, #116
    str x9, [sp, #176]
    mov x9, #0
    strb w9, [sp, #184]
    mov x9, #0
    strb w9, [sp, #185]
    mov x9, #0
    strh w9, [sp, #186]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_202a01e9ca2e@PAGE
    add x14, x14, _lb_text_202a01e9ca2e@PAGEOFF
    adrp x15, _lb_text_2f3c02973c44@PAGE
    add x15, x15, _lb_text_2f3c02973c44@PAGEOFF
    str x14, [sp, #192]
    movz x9, #26
    str x9, [sp, #200]
    movz x9, #1
    str x9, [sp, #208]
    str x15, [sp, #216]
    movz x9, #110
    str x9, [sp, #224]
    movz x9, #1
    strb w9, [sp, #232]
    mov x9, #0
    strb w9, [sp, #233]
    mov x9, #0
    strh w9, [sp, #234]
    mov x9, #0
    str w9, [sp, #236]
    adrp x14, _lb_text_0e6f21180222@PAGE
    add x14, x14, _lb_text_0e6f21180222@PAGEOFF
    adrp x15, _lb_text_315c7f0e8548@PAGE
    add x15, x15, _lb_text_315c7f0e8548@PAGEOFF
    str x14, [sp, #240]
    movz x9, #12
    str x9, [sp, #248]
    movz x9, #1
    str x9, [sp, #256]
    str x15, [sp, #264]
    movz x9, #80
    str x9, [sp, #272]
    mov x9, #0
    strb w9, [sp, #280]
    mov x9, #0
    strb w9, [sp, #281]
    mov x9, #0
    strh w9, [sp, #282]
    mov x9, #0
    str w9, [sp, #284]
    adrp x14, _lb_text_0fa9c72a5135@PAGE
    add x14, x14, _lb_text_0fa9c72a5135@PAGEOFF
    adrp x15, _lb_text_a970836b353f@PAGE
    add x15, x15, _lb_text_a970836b353f@PAGEOFF
    str x14, [sp, #288]
    movz x9, #17
    str x9, [sp, #296]
    movz x9, #1
    str x9, [sp, #304]
    str x15, [sp, #312]
    movz x9, #79
    str x9, [sp, #320]
    mov x9, #0
    strb w9, [sp, #328]
    mov x9, #0
    strb w9, [sp, #329]
    mov x9, #0
    strh w9, [sp, #330]
    mov x9, #0
    str w9, [sp, #332]
    adrp x14, _lb_text_1318d4889238@PAGE
    add x14, x14, _lb_text_1318d4889238@PAGEOFF
    adrp x15, _lb_text_22f396537623@PAGE
    add x15, x15, _lb_text_22f396537623@PAGEOFF
    str x14, [sp, #336]
    movz x9, #20
    str x9, [sp, #344]
    movz x9, #1
    str x9, [sp, #352]
    str x15, [sp, #360]
    movz x9, #87
    str x9, [sp, #368]
    mov x9, #0
    strb w9, [sp, #376]
    mov x9, #0
    strb w9, [sp, #377]
    mov x9, #0
    strh w9, [sp, #378]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_text_a62002e5897c@PAGE
    add x14, x14, _lb_text_a62002e5897c@PAGEOFF
    adrp x15, _lb_text_633bcf61b2f2@PAGE
    add x15, x15, _lb_text_633bcf61b2f2@PAGEOFF
    str x14, [sp, #384]
    movz x9, #19
    str x9, [sp, #392]
    movz x9, #1
    str x9, [sp, #400]
    str x15, [sp, #408]
    movz x9, #46
    str x9, [sp, #416]
    movz x9, #1
    strb w9, [sp, #424]
    mov x9, #0
    strb w9, [sp, #425]
    mov x9, #0
    strh w9, [sp, #426]
    mov x9, #0
    str w9, [sp, #428]
    adrp x14, _lb_text_6eba1d64a4ad@PAGE
    add x14, x14, _lb_text_6eba1d64a4ad@PAGEOFF
    adrp x15, _lb_text_4b681f3c212b@PAGE
    add x15, x15, _lb_text_4b681f3c212b@PAGEOFF
    str x14, [sp, #432]
    movz x9, #21
    str x9, [sp, #440]
    movz x9, #1
    str x9, [sp, #448]
    str x15, [sp, #456]
    movz x9, #60
    str x9, [sp, #464]
    mov x9, #0
    strb w9, [sp, #472]
    mov x9, #0
    strb w9, [sp, #473]
    mov x9, #0
    strh w9, [sp, #474]
    mov x9, #0
    str w9, [sp, #476]
    adrp x14, _lb_text_ea7b9ce6ebe6@PAGE
    add x14, x14, _lb_text_ea7b9ce6ebe6@PAGEOFF
    adrp x15, _lb_text_76afddbed94d@PAGE
    add x15, x15, _lb_text_76afddbed94d@PAGEOFF
    str x14, [sp, #480]
    movz x9, #25
    str x9, [sp, #488]
    movz x9, #4
    str x9, [sp, #496]
    str x15, [sp, #504]
    movz x9, #41
    str x9, [sp, #512]
    mov x9, #0
    strb w9, [sp, #520]
    mov x9, #0
    strb w9, [sp, #521]
    mov x9, #0
    strh w9, [sp, #522]
    mov x9, #0
    str w9, [sp, #524]
    adrp x14, _lb_text_c3f91c567130@PAGE
    add x14, x14, _lb_text_c3f91c567130@PAGEOFF
    adrp x15, _lb_text_2402cb819c07@PAGE
    add x15, x15, _lb_text_2402cb819c07@PAGEOFF
    str x14, [sp, #528]
    movz x9, #28
    str x9, [sp, #536]
    movz x9, #4
    str x9, [sp, #544]
    str x15, [sp, #552]
    movz x9, #27
    str x9, [sp, #560]
    mov x9, #0
    strb w9, [sp, #568]
    mov x9, #0
    strb w9, [sp, #569]
    mov x9, #0
    strh w9, [sp, #570]
    mov x9, #0
    str w9, [sp, #572]
    adrp x14, _lb_text_9af9b6ff8ab7@PAGE
    add x14, x14, _lb_text_9af9b6ff8ab7@PAGEOFF
    adrp x15, _lb_text_196120c5a08b@PAGE
    add x15, x15, _lb_text_196120c5a08b@PAGEOFF
    str x14, [sp, #576]
    movz x9, #28
    str x9, [sp, #584]
    movz x9, #1
    str x9, [sp, #592]
    str x15, [sp, #600]
    movz x9, #51
    str x9, [sp, #608]
    mov x9, #0
    strb w9, [sp, #616]
    mov x9, #0
    strb w9, [sp, #617]
    mov x9, #0
    strh w9, [sp, #618]
    mov x9, #0
    str w9, [sp, #620]
    adrp x14, _lb_text_0a94fb428fc0@PAGE
    add x14, x14, _lb_text_0a94fb428fc0@PAGEOFF
    adrp x15, _lb_text_6348a8d6049f@PAGE
    add x15, x15, _lb_text_6348a8d6049f@PAGEOFF
    str x14, [sp, #624]
    movz x9, #35
    str x9, [sp, #632]
    movz x9, #1
    str x9, [sp, #640]
    str x15, [sp, #648]
    movz x9, #51
    str x9, [sp, #656]
    mov x9, #0
    strb w9, [sp, #664]
    mov x9, #0
    strb w9, [sp, #665]
    mov x9, #0
    strh w9, [sp, #666]
    mov x9, #0
    str w9, [sp, #668]
    adrp x14, _lb_text_0d2b1ebc8d06@PAGE
    add x14, x14, _lb_text_0d2b1ebc8d06@PAGEOFF
    adrp x15, _lb_text_73c2f95cc272@PAGE
    add x15, x15, _lb_text_73c2f95cc272@PAGEOFF
    str x14, [sp, #672]
    movz x9, #27
    str x9, [sp, #680]
    movz x9, #1
    str x9, [sp, #688]
    str x15, [sp, #696]
    movz x9, #49
    str x9, [sp, #704]
    mov x9, #0
    strb w9, [sp, #712]
    mov x9, #0
    strb w9, [sp, #713]
    mov x9, #0
    strh w9, [sp, #714]
    mov x9, #0
    str w9, [sp, #716]
    adrp x14, _lb_text_9ab08a466a47@PAGE
    add x14, x14, _lb_text_9ab08a466a47@PAGEOFF
    adrp x15, _lb_text_3bed1787799f@PAGE
    add x15, x15, _lb_text_3bed1787799f@PAGEOFF
    str x14, [sp, #720]
    movz x9, #33
    str x9, [sp, #728]
    movz x9, #5
    str x9, [sp, #736]
    str x15, [sp, #744]
    movz x9, #127
    str x9, [sp, #752]
    mov x9, #0
    strb w9, [sp, #760]
    mov x9, #0
    strb w9, [sp, #761]
    mov x9, #0
    strh w9, [sp, #762]
    mov x9, #0
    str w9, [sp, #764]
    adrp x14, _lb_text_9a4da928e736@PAGE
    add x14, x14, _lb_text_9a4da928e736@PAGEOFF
    adrp x15, _lb_text_4102c619b95e@PAGE
    add x15, x15, _lb_text_4102c619b95e@PAGEOFF
    str x14, [sp, #768]
    movz x9, #23
    str x9, [sp, #776]
    mov x9, #0
    str x9, [sp, #784]
    str x15, [sp, #792]
    movz x9, #55
    str x9, [sp, #800]
    mov x9, #0
    strb w9, [sp, #808]
    mov x9, #0
    strb w9, [sp, #809]
    mov x9, #0
    strh w9, [sp, #810]
    mov x9, #0
    str w9, [sp, #812]
    adrp x14, _lb_text_410a6aa61a59@PAGE
    add x14, x14, _lb_text_410a6aa61a59@PAGEOFF
    adrp x15, _lb_text_c3c38dd55eb2@PAGE
    add x15, x15, _lb_text_c3c38dd55eb2@PAGEOFF
    str x14, [sp, #816]
    movz x9, #43
    str x9, [sp, #824]
    movz x9, #3
    str x9, [sp, #832]
    str x15, [sp, #840]
    movz x9, #27
    str x9, [sp, #848]
    mov x9, #0
    strb w9, [sp, #856]
    mov x9, #0
    strb w9, [sp, #857]
    mov x9, #0
    strh w9, [sp, #858]
    mov x9, #0
    str w9, [sp, #860]
    adrp x14, _lb_text_d59556d54551@PAGE
    add x14, x14, _lb_text_d59556d54551@PAGEOFF
    adrp x15, _lb_text_21dda87406b2@PAGE
    add x15, x15, _lb_text_21dda87406b2@PAGEOFF
    str x14, [sp, #864]
    movz x9, #25
    str x9, [sp, #872]
    movz x9, #1
    str x9, [sp, #880]
    str x15, [sp, #888]
    movz x9, #26
    str x9, [sp, #896]
    mov x9, #0
    strb w9, [sp, #904]
    mov x9, #0
    strb w9, [sp, #905]
    mov x9, #0
    strh w9, [sp, #906]
    mov x9, #0
    str w9, [sp, #908]
    adrp x14, _lb_text_7b1800029362@PAGE
    add x14, x14, _lb_text_7b1800029362@PAGEOFF
    adrp x15, _lb_text_bf964fa4eae4@PAGE
    add x15, x15, _lb_text_bf964fa4eae4@PAGEOFF
    str x14, [sp, #912]
    movz x9, #35
    str x9, [sp, #920]
    movz x9, #3
    str x9, [sp, #928]
    str x15, [sp, #936]
    movz x9, #27
    str x9, [sp, #944]
    mov x9, #0
    strb w9, [sp, #952]
    mov x9, #0
    strb w9, [sp, #953]
    mov x9, #0
    strh w9, [sp, #954]
    mov x9, #0
    str w9, [sp, #956]
    adrp x14, _lb_looks_looks@PAGE
    add x14, x14, _lb_looks_looks@PAGEOFF
    sub x10, x29, #960
    mov x0, x14
    mov x1, x10
    movz x2, #960
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_looks_16process_sections_0init
_lb_looks_16process_sections_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    adrp x14, _lb_text_56189fe60d87@PAGE
    add x14, x14, _lb_text_56189fe60d87@PAGEOFF
    str x14, [sp, #0]
    movz x9, #4
    str x9, [sp, #8]
    adrp x14, _lb_text_9a12a7e72f1d@PAGE
    add x14, x14, _lb_text_9a12a7e72f1d@PAGEOFF
    str x14, [sp, #16]
    movz x9, #6
    str x9, [sp, #24]
    adrp x14, _lb_text_6267839b2df6@PAGE
    add x14, x14, _lb_text_6267839b2df6@PAGEOFF
    str x14, [sp, #32]
    movz x9, #4
    str x9, [sp, #40]
    adrp x14, _lb_text_9b1b3cb25592@PAGE
    add x14, x14, _lb_text_9b1b3cb25592@PAGEOFF
    str x14, [sp, #48]
    movz x9, #7
    str x9, [sp, #56]
    adrp x14, _lb_text_5d58ba5eeabe@PAGE
    add x14, x14, _lb_text_5d58ba5eeabe@PAGEOFF
    str x14, [sp, #64]
    movz x9, #4
    str x9, [sp, #72]
    adrp x14, _lb_text_43cfd10bec8e@PAGE
    add x14, x14, _lb_text_43cfd10bec8e@PAGEOFF
    str x14, [sp, #80]
    movz x9, #5
    str x9, [sp, #88]
    adrp x14, _lb_looks_16process_sections@PAGE
    add x14, x14, _lb_looks_16process_sections@PAGEOFF
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x14, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x14, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x14, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x14, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x14, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x14, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_init_thread_locals
_lb_init_thread_locals:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    bl _lb_core_10raised_top_0init
    bl _lb_ownership_live_0init
    bl _lb_ownership_14thread_context_0init
    bl _lb_ownership_13runtime_depth_0init
    bl _lb_ownership_13pending_count_0init
    bl _lb_ownership_10root_count_0init
    bl _lb_ownership_11white_count_0init
    bl _lb_ownership_14disposal_count_0init
    bl _lb_ownership_17collector_running_0init
    bl _lb_ownership_8purge_at_0init
    bl _lb_17luce_std_parallel_7on_pool_0init
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_init_globals
_lb_init_globals:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    bl _lb_init_thread_locals
    bl _lb_core_19crash_header_length_0init
    bl _lb_core_10crash_file_0init
    bl _lb_core_13crash_walking_0init
    bl _lb_core_14crash_reported_0init
    bl _lb_core_13crash_handler_0init
    bl _lb_core_11origin_base_0init
    bl _lb_core_13assert_failed_0init
    bl _lb_core_15assert_position_0init
    bl _lb_core_12test_running_0init
    bl _lb_core_12tests_passed_0init
    bl _lb_core_12tests_failed_0init
    bl _lb_memory_exhausted_0init
    bl _lb_io_closed_0init
    bl _lb_io_8err_file_0init
    bl _lb_io_full_0init
    bl _lb_thread_failed_0init
    bl _lb_thread_13default_stack_0init
    bl _lb_ownership_12next_context_0init
    bl _lb_ownership_15next_generation_0init
    bl _lb_strings_13invalid_radix_0init
    bl _lb_testing_12current_seed_0init
    bl _lb_interop_9text_info_0init
    bl _lb_13luce_std_math_pi_0init
    bl _lb_13luce_std_math_e_0init
    bl _lb_13luce_std_math_infinity_0init
    bl _lb_13luce_std_math_splitter_0init
    bl _lb_13luce_std_math_11round_shift_0init
    bl _lb_13luce_std_math_10sixth_high_0init
    bl _lb_13luce_std_math_9sixth_low_0init
    bl _lb_14luce_color_xyz_d65_0init
    bl _lb_14luce_color_xyz_d50_0init
    bl _lb_14luce_color_xyz_10aces_white_0init
    bl _lb_14luce_color_xyz_srgb_0init
    bl _lb_14luce_color_xyz_10display_p3_0init
    bl _lb_14luce_color_xyz_8aces_ap0_0init
    bl _lb_14luce_color_xyz_8aces_ap1_0init
    bl _lb_14luce_color_xyz_bradford_0init
    bl _lb_22luce_color_temperature_10tint_scale_0init
    bl _lb_19luce_color_spectral_8first_nm_0init
    bl _lb_19luce_color_spectral_7step_nm_0init
    bl _lb_15luce_color_aces_invalid_0init
    bl _lb_15luce_color_aces_19reference_luminance_0init
    bl _lb_15luce_color_aces_18adapting_luminance_0init
    bl _lb_15luce_color_aces_20background_luminance_0init
    bl _lb_15luce_color_aces_10surround_c_0init
    bl _lb_15luce_color_aces_10surround_n_0init
    bl _lb_15luce_color_aces_7j_scale_0init
    bl _lb_15luce_color_aces_18compression_offset_0init
    bl _lb_15luce_color_aces_17compression_scale_0init
    bl _lb_15luce_color_aces_15cam16_primaries_0init
    bl _lb_15luce_color_aces_12smooth_cusps_0init
    bl _lb_15luce_color_aces_8smooth_m_0init
    bl _lb_15luce_color_aces_14cusp_mid_blend_0init
    bl _lb_15luce_color_aces_16focus_gain_blend_0init
    bl _lb_15luce_color_aces_14focus_distance_0init
    bl _lb_15luce_color_aces_22focus_distance_scaling_0init
    bl _lb_15luce_color_aces_21compression_threshold_0init
    bl _lb_16luce_color_cam16_m16_0init
    bl _lb_17luce_std_parallel_started_0init
    bl _lb_17luce_std_parallel_12pool_threads_0init
    bl _lb_17luce_std_parallel_sleeping_0init
    bl _lb_17luce_std_parallel_spinning_0init
    bl _lb_17luce_std_parallel_relay_0init
    bl _lb_parameters_parameters_0init
    bl _lb_recipe_10stage_keys_0init
    bl _lb_recipe_owned_0init
    bl _lb_recipe_11mode_chains_0init
    bl _lb_recipe_11mode_extras_0init
    bl _lb_recipe_12mode_spacing_0init
    bl _lb_codes_invalid_0init
    bl _lb_settings_invalid_0init
    bl _lb_settings_11curve_names_0init
    bl _lb_10film_print_14negative_gamma_0init
    bl _lb_10film_print_14lad_below_grey_0init
    bl _lb_10film_print_15projector_flare_0init
    bl _lb_10film_print_16projector_kelvin_0init
    bl _lb_10film_print_8most_dye_0init
    bl _lb_10film_print_16base_reflectance_0init
    bl _lb_10film_print_12surface_seen_0init
    bl _lb_10film_print_13gelatin_index_0init
    bl _lb_10film_print_15reflection_most_0init
    bl _lb_10film_print_built_0init
    bl _lb_10film_print_12dye_transfer_0init
    bl _lb_10film_print_20print_silver_density_0init
    bl _lb_10film_paper_14negative_gamma_0init
    bl _lb_10film_paper_12grey_density_0init
    bl _lb_10film_paper_13viewing_flare_0init
    bl _lb_10film_paper_callier_0init
    bl _lb_view_10shaper_low_0init
    bl _lb_view_11shaper_high_0init
    bl _lb_view_9aces_lift_0init
    bl _lb_view_13squeeze_scale_0init
    bl _lb_view_12screen_white_0init
    bl _lb_view_8room_lux_0init
    bl _lb_view_13display_white_0init
    bl _lb_view_23paper_white_reflectance_0init
    bl _lb_10film_model_7log_low_0init
    bl _lb_10film_model_8log_high_0init
    bl _lb_10film_model_15lightbox_kelvin_0init
    bl _lb_18luce_raster_errors_invalid_0init
    bl _lb_18luce_raster_errors_unsupported_0init
    bl _lb_18luce_raster_errors_limit_0init
    bl _lb_18luce_raster_errors_corrupt_0init
    bl _lb_12luce_raw_raw_11nikon_crops_0init
    bl _lb_12luce_raw_raw_12pentax_crops_0init
    bl _lb_12luce_raw_raw_12canon_colors_0init
    bl _lb_12luce_raw_raw_12nikon_colors_0init
    bl _lb_12luce_raw_raw_11sony_colors_0init
    bl _lb_12luce_raw_raw_12leica_colors_0init
    bl _lb_12luce_raw_raw_16panasonic_colors_0init
    bl _lb_12luce_raw_raw_15fujifilm_colors_0init
    bl _lb_12luce_raw_raw_14olympus_colors_0init
    bl _lb_12luce_raw_raw_13pentax_colors_0init
    bl _lb_12luce_raw_raw_12ricoh_colors_0init
    bl _lb_12luce_raw_raw_10tint_scale_0init
    bl _lb_12luce_raw_raw_10raw_makers_0init
    bl _lb_22luce_color_camera_data_14measured_makes_0init
    bl _lb_22luce_color_camera_data_15measured_models_0init
    bl _lb_13film_exposure_10sky_weight_0init
    bl _lb_picture_invalid_0init
    bl _lb_tone_8tone_low_0init
    bl _lb_tone_9tone_high_0init
    bl _lb_geometry_13reach_degrees_0init
    bl _lb_12film_develop_processes_0init
    bl _lb_12film_develop_14cross_contrast_0init
    bl _lb_12film_develop_10clear_base_0init
    bl _lb_12film_develop_least_0init
    bl _lb_12film_develop_most_0init
    bl _lb_12film_develop_14fog_activation_0init
    bl _lb_12film_develop_12gas_constant_0init
    bl _lb_13film_halation_14rem_jet_return_0init
    bl _lb_13film_halation_16undercoat_return_0init
    bl _lb_13film_halation_12grey_density_0init
    bl _lb_13film_halation_11exit_spread_0init
    bl _lb_11film_grains_8size_low_0init
    bl _lb_11film_grains_9size_high_0init
    bl _lb_11film_grains_10cell_radii_0init
    bl _lb_11film_grains_13aperture_area_0init
    bl _lb_11film_grains_10color_peak_0init
    bl _lb_11film_grains_11silver_peak_0init
    bl _lb_11film_grains_ln10_0init
    bl _lb_11film_grains_13gaussian_from_0init
    bl _lb_11film_grains_13normal_beyond_0init
    bl _lb_11film_grains_7log_low_0init
    bl _lb_11film_grains_8log_high_0init
    bl _lb_11film_grains_8peak_low_0init
    bl _lb_11film_grains_9peak_high_0init
    bl _lb_11film_grains_16size_square_mean_0init
    bl _lb_11film_grains_headroom_0init
    bl _lb_11film_grains_densest_0init
    bl _lb_11film_grains_11cell_grains_0init
    bl _lb_film_14silver_density_0init
    bl _lb_film_12silver_grain_0init
    bl _lb_film_15generation_blur_0init
    bl _lb_film_16generation_grain_0init
    bl _lb_film_15optical_callier_0init
    bl _lb_film_10dye_spread_0init
    bl _lb_film_9edge_gain_0init
    bl _lb_11film_passes_widest_0init
    bl _lb_looks_looks_0init
    bl _lb_looks_16process_sections_0init
    adrp x14, _lb_init_thread_locals@GOTPAGE
    ldr x14, [x14, _lb_init_thread_locals@GOTPAGEOFF]
    adrp x15, _lb_thread_12locals_start@PAGE
    add x15, x15, _lb_thread_12locals_start@PAGEOFF
    str x14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_trap
_lb_core_trap:
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
    bl _lb_core_10begin_trap
    adrp x20, _lb_text_30e56b3f7f1a@PAGE
    add x20, x20, _lb_text_30e56b3f7f1a@PAGEOFF
    mov x21, #0
L8d580041a46b_13:
    cmp x21, #6
    b.hs L8d580041a46b_15
    .p2align 4
L8d580041a46b_14:
    movz x9, #6
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x21
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8d580041a46b_22
L8d580041a46b_24:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_33
L8d580041a46b_32:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_22
L8d580041a46b_21:
    cmp x21, #6
    b.lo L8d580041a46b_14
    b L8d580041a46b_15
L8d580041a46b_22:
    cmp x22, #0
    b.gt L8d580041a46b_27
L8d580041a46b_26:
    b L8d580041a46b_15
L8d580041a46b_27:
    adds x21, x21, x22
    b.cs L8d580041a46b_c1
    cmp x21, #6
    b.lo L8d580041a46b_14
L8d580041a46b_15:
L8d580041a46b_36:
    adrp x21, _lb_core_10crash_file@PAGE
    add x21, x21, _lb_core_10crash_file@PAGEOFF
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L8d580041a46b_2
L8d580041a46b_1:
    mov x23, #0
L8d580041a46b_37:
    cmp x23, #6
    b.hs L8d580041a46b_39
    .p2align 4
L8d580041a46b_38:
    movz x9, #6
    sub x14, x9, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x23
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L8d580041a46b_46
L8d580041a46b_48:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_57
L8d580041a46b_56:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_46
L8d580041a46b_45:
    cmp x23, #6
    b.lo L8d580041a46b_38
    b L8d580041a46b_39
L8d580041a46b_46:
    cmp x24, #0
    b.gt L8d580041a46b_51
L8d580041a46b_50:
    b L8d580041a46b_39
L8d580041a46b_51:
    adds x23, x23, x24
    b.cs L8d580041a46b_c2
    cmp x23, #6
    b.lo L8d580041a46b_38
L8d580041a46b_39:
L8d580041a46b_60:
L8d580041a46b_2:
L8d580041a46b_3:
    mov x0, x19
    bl _strlen
    mov x20, x0
    mov x22, #0
L8d580041a46b_61:
    cmp x22, x20
    b.hs L8d580041a46b_63
    .p2align 4
L8d580041a46b_62:
    sub x14, x20, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x22
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L8d580041a46b_70
L8d580041a46b_72:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_81
L8d580041a46b_80:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_70
L8d580041a46b_69:
    cmp x22, x20
    b.lo L8d580041a46b_62
    b L8d580041a46b_63
L8d580041a46b_70:
    cmp x23, #0
    b.gt L8d580041a46b_75
L8d580041a46b_74:
    b L8d580041a46b_63
L8d580041a46b_75:
    adds x22, x22, x23
    b.cs L8d580041a46b_c3
    cmp x22, x20
    b.lo L8d580041a46b_62
L8d580041a46b_63:
L8d580041a46b_84:
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L8d580041a46b_6
L8d580041a46b_5:
    mov x23, #0
L8d580041a46b_85:
    cmp x23, x20
    b.hs L8d580041a46b_87
    .p2align 4
L8d580041a46b_86:
    sub x14, x20, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x23
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L8d580041a46b_94
L8d580041a46b_96:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_105
L8d580041a46b_104:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_94
L8d580041a46b_93:
    cmp x23, x20
    b.lo L8d580041a46b_86
    b L8d580041a46b_87
L8d580041a46b_94:
    cmp x24, #0
    b.gt L8d580041a46b_99
L8d580041a46b_98:
    b L8d580041a46b_87
L8d580041a46b_99:
    adds x23, x23, x24
    b.cs L8d580041a46b_c4
    cmp x23, x20
    b.lo L8d580041a46b_86
L8d580041a46b_87:
L8d580041a46b_108:
L8d580041a46b_6:
L8d580041a46b_7:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L8d580041a46b_109:
    cmp x20, #1
    b.hs L8d580041a46b_111
    .p2align 4
L8d580041a46b_110:
    movz x9, #1
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8d580041a46b_118
L8d580041a46b_120:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_129
L8d580041a46b_128:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_118
L8d580041a46b_117:
    cmp x20, #1
    b.lo L8d580041a46b_110
    b L8d580041a46b_111
L8d580041a46b_118:
    cmp x22, #0
    b.gt L8d580041a46b_123
L8d580041a46b_122:
    b L8d580041a46b_111
L8d580041a46b_123:
    add x20, x20, x22
    cmp x20, #1
    b.lo L8d580041a46b_110
L8d580041a46b_111:
L8d580041a46b_132:
    ldrsw x20, [x21]
    cmp w20, #0
    b.lt L8d580041a46b_10
L8d580041a46b_9:
    mov x21, #0
L8d580041a46b_133:
    cmp x21, #1
    b.hs L8d580041a46b_135
    .p2align 4
L8d580041a46b_134:
    movz x9, #1
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8d580041a46b_142
L8d580041a46b_144:
    bl ___error
    mov x14, x0
    cbz x14, L8d580041a46b_153
L8d580041a46b_152:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8d580041a46b_142
L8d580041a46b_141:
    cmp x21, #1
    b.lo L8d580041a46b_134
    b L8d580041a46b_135
L8d580041a46b_142:
    cmp x22, #0
    b.gt L8d580041a46b_147
L8d580041a46b_146:
    b L8d580041a46b_135
L8d580041a46b_147:
    add x21, x21, x22
    cmp x21, #1
    b.lo L8d580041a46b_134
L8d580041a46b_135:
L8d580041a46b_156:
L8d580041a46b_10:
L8d580041a46b_11:
    bl _lb_core_11finish_trap
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr x24, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8d580041a46b_33:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_57:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_81:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_105:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_129:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_153:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8d580041a46b_c4:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_7trap_at
_lb_core_7trap_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    str x24, [sp, #16]
    mov x14, x0
    mov x19, x1
    mov x0, x14
    bl _lb_core_19diagnostic_location
    mov x0, x19
    bl _strlen
    mov x20, x0
    mov x21, #0
L1d31a0d6d9ed_9:
    cmp x21, x20
    b.hs L1d31a0d6d9ed_11
    .p2align 4
L1d31a0d6d9ed_10:
    sub x14, x20, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L1d31a0d6d9ed_18
L1d31a0d6d9ed_20:
    bl ___error
    mov x14, x0
    cbz x14, L1d31a0d6d9ed_29
L1d31a0d6d9ed_28:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L1d31a0d6d9ed_18
L1d31a0d6d9ed_17:
    cmp x21, x20
    b.lo L1d31a0d6d9ed_10
    b L1d31a0d6d9ed_11
L1d31a0d6d9ed_18:
    cmp x22, #0
    b.gt L1d31a0d6d9ed_23
L1d31a0d6d9ed_22:
    b L1d31a0d6d9ed_11
L1d31a0d6d9ed_23:
    adds x21, x21, x22
    b.cs L1d31a0d6d9ed_c1
    cmp x21, x20
    b.lo L1d31a0d6d9ed_10
L1d31a0d6d9ed_11:
L1d31a0d6d9ed_32:
    adrp x21, _lb_core_10crash_file@PAGE
    add x21, x21, _lb_core_10crash_file@PAGEOFF
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L1d31a0d6d9ed_2
L1d31a0d6d9ed_1:
    mov x23, #0
L1d31a0d6d9ed_33:
    cmp x23, x20
    b.hs L1d31a0d6d9ed_35
    .p2align 4
L1d31a0d6d9ed_34:
    sub x14, x20, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x23
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L1d31a0d6d9ed_42
L1d31a0d6d9ed_44:
    bl ___error
    mov x14, x0
    cbz x14, L1d31a0d6d9ed_53
L1d31a0d6d9ed_52:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L1d31a0d6d9ed_42
L1d31a0d6d9ed_41:
    cmp x23, x20
    b.lo L1d31a0d6d9ed_34
    b L1d31a0d6d9ed_35
L1d31a0d6d9ed_42:
    cmp x24, #0
    b.gt L1d31a0d6d9ed_47
L1d31a0d6d9ed_46:
    b L1d31a0d6d9ed_35
L1d31a0d6d9ed_47:
    adds x23, x23, x24
    b.cs L1d31a0d6d9ed_c2
    cmp x23, x20
    b.lo L1d31a0d6d9ed_34
L1d31a0d6d9ed_35:
L1d31a0d6d9ed_56:
L1d31a0d6d9ed_2:
L1d31a0d6d9ed_3:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L1d31a0d6d9ed_57:
    cmp x20, #1
    b.hs L1d31a0d6d9ed_59
    .p2align 4
L1d31a0d6d9ed_58:
    movz x9, #1
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L1d31a0d6d9ed_66
L1d31a0d6d9ed_68:
    bl ___error
    mov x14, x0
    cbz x14, L1d31a0d6d9ed_77
L1d31a0d6d9ed_76:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L1d31a0d6d9ed_66
L1d31a0d6d9ed_65:
    cmp x20, #1
    b.lo L1d31a0d6d9ed_58
    b L1d31a0d6d9ed_59
L1d31a0d6d9ed_66:
    cmp x22, #0
    b.gt L1d31a0d6d9ed_71
L1d31a0d6d9ed_70:
    b L1d31a0d6d9ed_59
L1d31a0d6d9ed_71:
    add x20, x20, x22
    cmp x20, #1
    b.lo L1d31a0d6d9ed_58
L1d31a0d6d9ed_59:
L1d31a0d6d9ed_80:
    ldrsw x20, [x21]
    cmp w20, #0
    b.lt L1d31a0d6d9ed_6
L1d31a0d6d9ed_5:
    mov x21, #0
L1d31a0d6d9ed_81:
    cmp x21, #1
    b.hs L1d31a0d6d9ed_83
    .p2align 4
L1d31a0d6d9ed_82:
    movz x9, #1
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L1d31a0d6d9ed_90
L1d31a0d6d9ed_92:
    bl ___error
    mov x14, x0
    cbz x14, L1d31a0d6d9ed_101
L1d31a0d6d9ed_100:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L1d31a0d6d9ed_90
L1d31a0d6d9ed_89:
    cmp x21, #1
    b.lo L1d31a0d6d9ed_82
    b L1d31a0d6d9ed_83
L1d31a0d6d9ed_90:
    cmp x22, #0
    b.gt L1d31a0d6d9ed_95
L1d31a0d6d9ed_94:
    b L1d31a0d6d9ed_83
L1d31a0d6d9ed_95:
    add x21, x21, x22
    cmp x21, #1
    b.lo L1d31a0d6d9ed_82
L1d31a0d6d9ed_83:
L1d31a0d6d9ed_104:
L1d31a0d6d9ed_6:
L1d31a0d6d9ed_7:
    bl _lb_core_11finish_trap
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr x24, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1d31a0d6d9ed_29:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L1d31a0d6d9ed_53:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L1d31a0d6d9ed_77:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L1d31a0d6d9ed_101:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L1d31a0d6d9ed_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L1d31a0d6d9ed_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11trap_two_at
_lb_core_11trap_two_at:
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
    mov x14, x0
    mov x19, x1
    mov x20, x2
    mov x0, x14
    bl _lb_core_19diagnostic_location
    mov x0, x19
    bl _strlen
    mov x21, x0
    mov x22, #0
L3cf08fa14071_17:
    cmp x22, x21
    b.hs L3cf08fa14071_19
    .p2align 4
L3cf08fa14071_18:
    sub x14, x21, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x22
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L3cf08fa14071_26
L3cf08fa14071_28:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_37
L3cf08fa14071_36:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_26
L3cf08fa14071_25:
    cmp x22, x21
    b.lo L3cf08fa14071_18
    b L3cf08fa14071_19
L3cf08fa14071_26:
    cmp x23, #0
    b.gt L3cf08fa14071_31
L3cf08fa14071_30:
    b L3cf08fa14071_19
L3cf08fa14071_31:
    adds x22, x22, x23
    b.cs L3cf08fa14071_c1
    cmp x22, x21
    b.lo L3cf08fa14071_18
L3cf08fa14071_19:
L3cf08fa14071_40:
    adrp x22, _lb_core_10crash_file@PAGE
    add x22, x22, _lb_core_10crash_file@PAGEOFF
    ldrsw x23, [x22]
    cmp w23, #0
    b.lt L3cf08fa14071_2
L3cf08fa14071_1:
    mov x24, #0
L3cf08fa14071_41:
    cmp x24, x21
    b.hs L3cf08fa14071_43
    .p2align 4
L3cf08fa14071_42:
    sub x14, x21, x24
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x24
    mov x0, x23
    mov x1, x15
    mov x2, x14
    bl _write
    mov x25, x0
    cmp x25, #0
    b.ge L3cf08fa14071_50
L3cf08fa14071_52:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_61
L3cf08fa14071_60:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_50
L3cf08fa14071_49:
    cmp x24, x21
    b.lo L3cf08fa14071_42
    b L3cf08fa14071_43
L3cf08fa14071_50:
    cmp x25, #0
    b.gt L3cf08fa14071_55
L3cf08fa14071_54:
    b L3cf08fa14071_43
L3cf08fa14071_55:
    adds x24, x24, x25
    b.cs L3cf08fa14071_c2
    cmp x24, x21
    b.lo L3cf08fa14071_42
L3cf08fa14071_43:
L3cf08fa14071_64:
L3cf08fa14071_2:
L3cf08fa14071_3:
    adrp x19, _lb_text_3c214eb16494@PAGE
    add x19, x19, _lb_text_3c214eb16494@PAGEOFF
    mov x21, #0
L3cf08fa14071_65:
    cmp x21, #2
    b.hs L3cf08fa14071_67
    .p2align 4
L3cf08fa14071_66:
    movz x9, #2
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L3cf08fa14071_74
L3cf08fa14071_76:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_85
L3cf08fa14071_84:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_74
L3cf08fa14071_73:
    cmp x21, #2
    b.lo L3cf08fa14071_66
    b L3cf08fa14071_67
L3cf08fa14071_74:
    cmp x23, #0
    b.gt L3cf08fa14071_79
L3cf08fa14071_78:
    b L3cf08fa14071_67
L3cf08fa14071_79:
    adds x21, x21, x23
    b.cs L3cf08fa14071_c3
    cmp x21, #2
    b.lo L3cf08fa14071_66
L3cf08fa14071_67:
L3cf08fa14071_88:
    ldrsw x21, [x22]
    cmp w21, #0
    b.lt L3cf08fa14071_6
L3cf08fa14071_5:
    mov x23, #0
L3cf08fa14071_89:
    cmp x23, #2
    b.hs L3cf08fa14071_91
    .p2align 4
L3cf08fa14071_90:
    movz x9, #2
    sub x14, x9, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x23
    mov x0, x21
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L3cf08fa14071_98
L3cf08fa14071_100:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_109
L3cf08fa14071_108:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_98
L3cf08fa14071_97:
    cmp x23, #2
    b.lo L3cf08fa14071_90
    b L3cf08fa14071_91
L3cf08fa14071_98:
    cmp x24, #0
    b.gt L3cf08fa14071_103
L3cf08fa14071_102:
    b L3cf08fa14071_91
L3cf08fa14071_103:
    adds x23, x23, x24
    b.cs L3cf08fa14071_c4
    cmp x23, #2
    b.lo L3cf08fa14071_90
L3cf08fa14071_91:
L3cf08fa14071_112:
L3cf08fa14071_6:
L3cf08fa14071_7:
    mov x0, x20
    bl _strlen
    mov x19, x0
    mov x21, #0
L3cf08fa14071_113:
    cmp x21, x19
    b.hs L3cf08fa14071_115
    .p2align 4
L3cf08fa14071_114:
    sub x14, x19, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x21
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L3cf08fa14071_122
L3cf08fa14071_124:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_133
L3cf08fa14071_132:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_122
L3cf08fa14071_121:
    cmp x21, x19
    b.lo L3cf08fa14071_114
    b L3cf08fa14071_115
L3cf08fa14071_122:
    cmp x23, #0
    b.gt L3cf08fa14071_127
L3cf08fa14071_126:
    b L3cf08fa14071_115
L3cf08fa14071_127:
    adds x21, x21, x23
    b.cs L3cf08fa14071_c5
    cmp x21, x19
    b.lo L3cf08fa14071_114
L3cf08fa14071_115:
L3cf08fa14071_136:
    ldrsw x21, [x22]
    cmp w21, #0
    b.lt L3cf08fa14071_10
L3cf08fa14071_9:
    mov x23, #0
L3cf08fa14071_137:
    cmp x23, x19
    b.hs L3cf08fa14071_139
    .p2align 4
L3cf08fa14071_138:
    sub x14, x19, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x23
    mov x0, x21
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L3cf08fa14071_146
L3cf08fa14071_148:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_157
L3cf08fa14071_156:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_146
L3cf08fa14071_145:
    cmp x23, x19
    b.lo L3cf08fa14071_138
    b L3cf08fa14071_139
L3cf08fa14071_146:
    cmp x24, #0
    b.gt L3cf08fa14071_151
L3cf08fa14071_150:
    b L3cf08fa14071_139
L3cf08fa14071_151:
    adds x23, x23, x24
    b.cs L3cf08fa14071_c6
    cmp x23, x19
    b.lo L3cf08fa14071_138
L3cf08fa14071_139:
L3cf08fa14071_160:
L3cf08fa14071_10:
L3cf08fa14071_11:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L3cf08fa14071_161:
    cmp x20, #1
    b.hs L3cf08fa14071_163
    .p2align 4
L3cf08fa14071_162:
    movz x9, #1
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x21, x0
    cmp x21, #0
    b.ge L3cf08fa14071_170
L3cf08fa14071_172:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_181
L3cf08fa14071_180:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_170
L3cf08fa14071_169:
    cmp x20, #1
    b.lo L3cf08fa14071_162
    b L3cf08fa14071_163
L3cf08fa14071_170:
    cmp x21, #0
    b.gt L3cf08fa14071_175
L3cf08fa14071_174:
    b L3cf08fa14071_163
L3cf08fa14071_175:
    add x20, x20, x21
    cmp x20, #1
    b.lo L3cf08fa14071_162
L3cf08fa14071_163:
L3cf08fa14071_184:
    ldrsw x20, [x22]
    cmp w20, #0
    b.lt L3cf08fa14071_14
L3cf08fa14071_13:
    mov x21, #0
L3cf08fa14071_185:
    cmp x21, #1
    b.hs L3cf08fa14071_187
    .p2align 4
L3cf08fa14071_186:
    movz x9, #1
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L3cf08fa14071_194
L3cf08fa14071_196:
    bl ___error
    mov x14, x0
    cbz x14, L3cf08fa14071_205
L3cf08fa14071_204:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L3cf08fa14071_194
L3cf08fa14071_193:
    cmp x21, #1
    b.lo L3cf08fa14071_186
    b L3cf08fa14071_187
L3cf08fa14071_194:
    cmp x22, #0
    b.gt L3cf08fa14071_199
L3cf08fa14071_198:
    b L3cf08fa14071_187
L3cf08fa14071_199:
    add x21, x21, x22
    cmp x21, #1
    b.lo L3cf08fa14071_186
L3cf08fa14071_187:
L3cf08fa14071_208:
L3cf08fa14071_14:
L3cf08fa14071_15:
    bl _lb_core_11finish_trap
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    ldr x25, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3cf08fa14071_37:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_61:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_85:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_109:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_133:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_157:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_181:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_205:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c4:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c5:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L3cf08fa14071_c6:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_10begin_trap
_lb_core_10begin_trap:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str x23, [sp, #24]
    str x24, [sp, #16]
    adrp x19, _lb_core_12test_running@PAGE
    add x19, x19, _lb_core_12test_running@PAGEOFF
    add x20, x19, #8
    ldr x14, [x20]
    cmp x14, #0
    b.ls L8de1bd6ee0fc_2
L8de1bd6ee0fc_1:
    adrp x21, _lb_text_30e6b10a8d45@PAGE
    add x21, x21, _lb_text_30e6b10a8d45@PAGEOFF
    mov x22, #0
L8de1bd6ee0fc_22:
    cmp x22, #6
    b.hs L8de1bd6ee0fc_24
    .p2align 4
L8de1bd6ee0fc_23:
    movz x9, #6
    sub x14, x9, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x21, x22
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L8de1bd6ee0fc_31
L8de1bd6ee0fc_33:
    bl ___error
    mov x14, x0
    cbz x14, L8de1bd6ee0fc_42
L8de1bd6ee0fc_41:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8de1bd6ee0fc_31
L8de1bd6ee0fc_30:
    cmp x22, #6
    b.lo L8de1bd6ee0fc_23
    b L8de1bd6ee0fc_24
L8de1bd6ee0fc_31:
    cmp x23, #0
    b.gt L8de1bd6ee0fc_36
L8de1bd6ee0fc_35:
    b L8de1bd6ee0fc_24
L8de1bd6ee0fc_36:
    adds x22, x22, x23
    b.cs L8de1bd6ee0fc_c1
    cmp x22, #6
    b.lo L8de1bd6ee0fc_23
L8de1bd6ee0fc_24:
L8de1bd6ee0fc_45:
    ldr x19, [x19]
    ldr x20, [x20]
    mov x21, #0
L8de1bd6ee0fc_46:
    cmp x21, x20
    b.hs L8de1bd6ee0fc_48
    .p2align 4
L8de1bd6ee0fc_47:
    sub x14, x20, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8de1bd6ee0fc_55
L8de1bd6ee0fc_57:
    bl ___error
    mov x14, x0
    cbz x14, L8de1bd6ee0fc_66
L8de1bd6ee0fc_65:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8de1bd6ee0fc_55
L8de1bd6ee0fc_54:
    cmp x21, x20
    b.lo L8de1bd6ee0fc_47
    b L8de1bd6ee0fc_48
L8de1bd6ee0fc_55:
    cmp x22, #0
    b.gt L8de1bd6ee0fc_60
L8de1bd6ee0fc_59:
    b L8de1bd6ee0fc_48
L8de1bd6ee0fc_60:
    adds x21, x21, x22
    b.cs L8de1bd6ee0fc_c2
    cmp x21, x20
    b.lo L8de1bd6ee0fc_47
L8de1bd6ee0fc_48:
L8de1bd6ee0fc_69:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L8de1bd6ee0fc_70:
    cmp x20, #1
    b.hs L8de1bd6ee0fc_72
    .p2align 4
L8de1bd6ee0fc_71:
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
    b.ge L8de1bd6ee0fc_79
L8de1bd6ee0fc_81:
    bl ___error
    mov x14, x0
    cbz x14, L8de1bd6ee0fc_90
L8de1bd6ee0fc_89:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8de1bd6ee0fc_79
L8de1bd6ee0fc_78:
    cmp x20, #1
    b.lo L8de1bd6ee0fc_71
    b L8de1bd6ee0fc_72
L8de1bd6ee0fc_79:
    cmp x21, #0
    b.gt L8de1bd6ee0fc_84
L8de1bd6ee0fc_83:
    b L8de1bd6ee0fc_72
L8de1bd6ee0fc_84:
    add x20, x20, x21
    cmp x20, #1
    b.lo L8de1bd6ee0fc_71
L8de1bd6ee0fc_72:
L8de1bd6ee0fc_93:
L8de1bd6ee0fc_2:
L8de1bd6ee0fc_3:
    adrp x19, _lb_core_10crash_file@PAGE
    add x19, x19, _lb_core_10crash_file@PAGEOFF
    ldrsw x14, [x19]
    cmp w14, #0
    b.ge L8de1bd6ee0fc_4
L8de1bd6ee0fc_7:
    adrp x14, _lb_core_10crash_path@PAGE
    add x14, x14, _lb_core_10crash_path@PAGEOFF
    ldrb w15, [x14]
    cmp w15, #0
    b.ne L8de1bd6ee0fc_5
L8de1bd6ee0fc_4:
    b L8de1bd6ee0fc_21
L8de1bd6ee0fc_5:
    adrp x20, _lb_core_14crash_reported@PAGE
    add x20, x20, _lb_core_14crash_reported@PAGEOFF
    ldrb w15, [x20]
    cmp w15, #0
    movz x10, #8
    movz x11, #1024
    csel w15, w10, w11, ne
    movz x10, #513
    orr w15, w15, w10
    movz x16, #16
    sub sp, sp, x16
    movz x9, #420
    str x9, [sp, #0]
    mov x0, x14
    mov x1, x15
    bl _open
    movz x16, #16
    add sp, sp, x16
    mov w21, w0
    str w21, [x19]
    cmp w21, #0
    b.ge L8de1bd6ee0fc_13
L8de1bd6ee0fc_12:
    b L8de1bd6ee0fc_21
L8de1bd6ee0fc_13:
    ldrb w14, [x20]
    cbz w14, L8de1bd6ee0fc_17
L8de1bd6ee0fc_16:
    adrp x19, _lb_text_fdf2a10138db@PAGE
    add x19, x19, _lb_text_fdf2a10138db@PAGEOFF
    mov x22, #0
L8de1bd6ee0fc_94:
    cmp x22, #44
    b.hs L8de1bd6ee0fc_96
    .p2align 4
L8de1bd6ee0fc_95:
    movz x9, #44
    sub x14, x9, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x22
    mov x0, x21
    mov x1, x15
    mov x2, x14
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L8de1bd6ee0fc_103
L8de1bd6ee0fc_105:
    bl ___error
    mov x14, x0
    cbz x14, L8de1bd6ee0fc_114
L8de1bd6ee0fc_113:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8de1bd6ee0fc_103
L8de1bd6ee0fc_102:
    cmp x22, #44
    b.lo L8de1bd6ee0fc_95
    b L8de1bd6ee0fc_96
L8de1bd6ee0fc_103:
    cmp x23, #0
    b.gt L8de1bd6ee0fc_108
L8de1bd6ee0fc_107:
    b L8de1bd6ee0fc_96
L8de1bd6ee0fc_108:
    adds x22, x22, x23
    b.cs L8de1bd6ee0fc_c3
    cmp x22, #44
    b.lo L8de1bd6ee0fc_95
L8de1bd6ee0fc_96:
L8de1bd6ee0fc_117:
    b L8de1bd6ee0fc_120
L8de1bd6ee0fc_17:
    adrp x19, _lb_core_12crash_header@PAGE
    add x19, x19, _lb_core_12crash_header@PAGEOFF
    adrp x14, _lb_core_19crash_header_length@PAGE
    add x14, x14, _lb_core_19crash_header_length@PAGEOFF
    ldr x22, [x14]
    movz x10, #1024
    cmp x22, x10
    b.hi L8de1bd6ee0fc_c4
    mov x23, #0
L8de1bd6ee0fc_118:
    cmp x23, x22
    b.hs L8de1bd6ee0fc_120
    .p2align 4
L8de1bd6ee0fc_119:
    sub x14, x22, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x23
    mov x0, x21
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L8de1bd6ee0fc_127
L8de1bd6ee0fc_129:
    bl ___error
    mov x14, x0
    cbz x14, L8de1bd6ee0fc_138
L8de1bd6ee0fc_137:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8de1bd6ee0fc_127
L8de1bd6ee0fc_126:
    cmp x23, x22
    b.lo L8de1bd6ee0fc_119
    b L8de1bd6ee0fc_120
L8de1bd6ee0fc_127:
    cmp x24, #0
    b.gt L8de1bd6ee0fc_132
L8de1bd6ee0fc_131:
    b L8de1bd6ee0fc_120
L8de1bd6ee0fc_132:
    adds x23, x23, x24
    b.cs L8de1bd6ee0fc_c5
    cmp x23, x22
    b.lo L8de1bd6ee0fc_119
L8de1bd6ee0fc_120:
L8de1bd6ee0fc_141:
L8de1bd6ee0fc_18:
    movz x9, #1
    strb w9, [x20]
L8de1bd6ee0fc_21:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr x24, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8de1bd6ee0fc_42:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_66:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_90:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_114:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_138:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_c4:
    adrp x0, _lb_text_9723eee61d96@PAGE
    add x0, x0, _lb_text_9723eee61d96@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L8de1bd6ee0fc_c5:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11finish_trap
_lb_core_11finish_trap:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, _lb_core_12test_running@PAGE
    add x14, x14, _lb_core_12test_running@PAGEOFF
    add x15, x14, #8
    ldr x12, [x15]
    cmp x12, #0
    b.ne Ld858b0142784_6
Ld858b0142784_5:
    b Ld858b0142784_9
Ld858b0142784_6:
Ld858b0142784_7:
    adrp x12, _lb_text_3df2c3383c52@PAGE
    add x12, x12, _lb_text_3df2c3383c52@PAGEOFF
    str x12, [x14]
    mov x9, #0
    str x9, [x15]
    adrp x14, _lb_core_12tests_failed@PAGE
    add x14, x14, _lb_core_12tests_failed@PAGEOFF
    ldrsw x15, [x14]
    adds w15, w15, #1
    b.vs Ld858b0142784_c1
    str w15, [x14]
    bl _lb_core_12test_summary
    mov w14, w0
Ld858b0142784_9:
    mov x9, #0
    str x9, [sp, #8]
    sub x9, x29, #24
    add x14, x9, #8
    mov x9, #0
    str x9, [x14]
    sub x9, x29, #24
    add x14, x9, #16
    mov x9, #0
    str x9, [x14]
    sub x9, x29, #24
    mov x0, x9
    bl _lb_core_19finish_crash_report
    adrp x14, _lb_core_13crash_handler@PAGE
    add x14, x14, _lb_core_13crash_handler@PAGEOFF
    ldr x14, [x14]
    cbz x14, Ld858b0142784_2
Ld858b0142784_4:
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, #0
    ldr x17, [sp], #16
    blr x17
Ld858b0142784_2:
Ld858b0142784_3:
    movz x0, #1
    bl _exit
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld858b0142784_c1:
    adrp x0, _lb_text_8738dc3209ce@PAGE
    add x0, x0, _lb_text_8738dc3209ce@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_19diagnostic_location
_lb_core_19diagnostic_location:
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
    bl _lb_core_10begin_trap
    adrp x20, _lb_text_30e56b3f7f1a@PAGE
    add x20, x20, _lb_text_30e56b3f7f1a@PAGEOFF
    mov x21, #0
L8f47c1e9686f_16:
    cmp x21, #6
    b.hs L8f47c1e9686f_18
    .p2align 4
L8f47c1e9686f_17:
    movz x9, #6
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x21
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8f47c1e9686f_25
L8f47c1e9686f_27:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_36
L8f47c1e9686f_35:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_25
L8f47c1e9686f_24:
    cmp x21, #6
    b.lo L8f47c1e9686f_17
    b L8f47c1e9686f_18
L8f47c1e9686f_25:
    cmp x22, #0
    b.gt L8f47c1e9686f_30
L8f47c1e9686f_29:
    b L8f47c1e9686f_18
L8f47c1e9686f_30:
    adds x21, x21, x22
    b.cs L8f47c1e9686f_c1
    cmp x21, #6
    b.lo L8f47c1e9686f_17
L8f47c1e9686f_18:
L8f47c1e9686f_39:
    adrp x21, _lb_core_10crash_file@PAGE
    add x21, x21, _lb_core_10crash_file@PAGEOFF
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L8f47c1e9686f_5
L8f47c1e9686f_4:
    mov x23, #0
L8f47c1e9686f_40:
    cmp x23, #6
    b.hs L8f47c1e9686f_42
    .p2align 4
L8f47c1e9686f_41:
    movz x9, #6
    sub x14, x9, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x20, x23
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L8f47c1e9686f_49
L8f47c1e9686f_51:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_60
L8f47c1e9686f_59:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_49
L8f47c1e9686f_48:
    cmp x23, #6
    b.lo L8f47c1e9686f_41
    b L8f47c1e9686f_42
L8f47c1e9686f_49:
    cmp x24, #0
    b.gt L8f47c1e9686f_54
L8f47c1e9686f_53:
    b L8f47c1e9686f_42
L8f47c1e9686f_54:
    adds x23, x23, x24
    b.cs L8f47c1e9686f_c2
    cmp x23, #6
    b.lo L8f47c1e9686f_41
L8f47c1e9686f_42:
L8f47c1e9686f_63:
L8f47c1e9686f_5:
L8f47c1e9686f_6:
    mov x0, x19
    bl _strlen
    mov x20, x0
    cmp x20, #0
    b.ls L8f47c1e9686f_2
L8f47c1e9686f_1:
    mov x22, #0
L8f47c1e9686f_64:
    cmp x22, x20
    b.hs L8f47c1e9686f_66
    .p2align 4
L8f47c1e9686f_65:
    sub x14, x20, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x22
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge L8f47c1e9686f_73
L8f47c1e9686f_75:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_84
L8f47c1e9686f_83:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_73
L8f47c1e9686f_72:
    cmp x22, x20
    b.lo L8f47c1e9686f_65
    b L8f47c1e9686f_66
L8f47c1e9686f_73:
    cmp x23, #0
    b.gt L8f47c1e9686f_78
L8f47c1e9686f_77:
    b L8f47c1e9686f_66
L8f47c1e9686f_78:
    adds x22, x22, x23
    b.cs L8f47c1e9686f_c3
    cmp x22, x20
    b.lo L8f47c1e9686f_65
L8f47c1e9686f_66:
L8f47c1e9686f_87:
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L8f47c1e9686f_9
L8f47c1e9686f_8:
    mov x23, #0
L8f47c1e9686f_88:
    cmp x23, x20
    b.hs L8f47c1e9686f_90
    .p2align 4
L8f47c1e9686f_89:
    sub x14, x20, x23
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x23
    mov x0, x22
    mov x1, x15
    mov x2, x14
    bl _write
    mov x24, x0
    cmp x24, #0
    b.ge L8f47c1e9686f_97
L8f47c1e9686f_99:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_108
L8f47c1e9686f_107:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_97
L8f47c1e9686f_96:
    cmp x23, x20
    b.lo L8f47c1e9686f_89
    b L8f47c1e9686f_90
L8f47c1e9686f_97:
    cmp x24, #0
    b.gt L8f47c1e9686f_102
L8f47c1e9686f_101:
    b L8f47c1e9686f_90
L8f47c1e9686f_102:
    adds x23, x23, x24
    b.cs L8f47c1e9686f_c4
    cmp x23, x20
    b.lo L8f47c1e9686f_89
L8f47c1e9686f_90:
L8f47c1e9686f_111:
L8f47c1e9686f_9:
L8f47c1e9686f_10:
    adrp x19, _lb_text_3c214eb16494@PAGE
    add x19, x19, _lb_text_3c214eb16494@PAGEOFF
    mov x20, #0
L8f47c1e9686f_112:
    cmp x20, #2
    b.hs L8f47c1e9686f_114
    .p2align 4
L8f47c1e9686f_113:
    movz x9, #2
    sub x14, x9, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x20
    mov x1, x15
    mov x2, x14
    movz x0, #2
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8f47c1e9686f_121
L8f47c1e9686f_123:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_132
L8f47c1e9686f_131:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_121
L8f47c1e9686f_120:
    cmp x20, #2
    b.lo L8f47c1e9686f_113
    b L8f47c1e9686f_114
L8f47c1e9686f_121:
    cmp x22, #0
    b.gt L8f47c1e9686f_126
L8f47c1e9686f_125:
    b L8f47c1e9686f_114
L8f47c1e9686f_126:
    adds x20, x20, x22
    b.cs L8f47c1e9686f_c5
    cmp x20, #2
    b.lo L8f47c1e9686f_113
L8f47c1e9686f_114:
L8f47c1e9686f_135:
    ldrsw x20, [x21]
    cmp w20, #0
    b.lt L8f47c1e9686f_13
L8f47c1e9686f_12:
    mov x21, #0
L8f47c1e9686f_136:
    cmp x21, #2
    b.hs L8f47c1e9686f_138
    .p2align 4
L8f47c1e9686f_137:
    movz x9, #2
    sub x14, x9, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x19, x21
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L8f47c1e9686f_145
L8f47c1e9686f_147:
    bl ___error
    mov x14, x0
    cbz x14, L8f47c1e9686f_156
L8f47c1e9686f_155:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L8f47c1e9686f_145
L8f47c1e9686f_144:
    cmp x21, #2
    b.lo L8f47c1e9686f_137
    b L8f47c1e9686f_138
L8f47c1e9686f_145:
    cmp x22, #0
    b.gt L8f47c1e9686f_150
L8f47c1e9686f_149:
    b L8f47c1e9686f_138
L8f47c1e9686f_150:
    adds x21, x21, x22
    b.cs L8f47c1e9686f_c6
    cmp x21, #2
    b.lo L8f47c1e9686f_137
L8f47c1e9686f_138:
L8f47c1e9686f_159:
L8f47c1e9686f_13:
L8f47c1e9686f_14:
L8f47c1e9686f_2:
L8f47c1e9686f_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr x23, [sp, #24]
    ldr x24, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8f47c1e9686f_36:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_60:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_84:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_108:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_132:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_156:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c3:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c4:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c5:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L8f47c1e9686f_c6:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_9write_all
_lb_core_9write_all:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x1, [x16]
    str x2, [x16, #8]
    mov w19, w0
    mov x20, #0
    .p2align 4
L028ca4a8302c_1:
    ldr x14, [sp, #16]
    cmp x20, x14
    b.hs L028ca4a8302c_3
L028ca4a8302c_2:
    sub x14, x14, x20
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    ldr x15, [sp, #8]
    add x15, x20, x15
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl _write
    mov x21, x0
    cmp x21, #0
    b.ge L028ca4a8302c_10
L028ca4a8302c_12:
    bl ___error
    mov x14, x0
    cbz x14, L028ca4a8302c_21
L028ca4a8302c_20:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L028ca4a8302c_10
L028ca4a8302c_9:
    b L028ca4a8302c_1
L028ca4a8302c_10:
    cmp x21, #0
    b.gt L028ca4a8302c_15
L028ca4a8302c_14:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L028ca4a8302c_15:
    adds x20, x21, x20
    b.cs L028ca4a8302c_c1
    b L028ca4a8302c_1
L028ca4a8302c_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L028ca4a8302c_21:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L028ca4a8302c_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_19finish_crash_report
_lb_core_19finish_crash_report:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1072
    str x19, [sp, #1064]
    str x20, [sp, #1056]
    str x21, [sp, #1048]
    str x22, [sp, #1040]
    str x23, [sp, #1032]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x10, [x9]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x9, #0]
    ldr x16, [x10, #16]
    str x16, [x9, #16]
    adrp x19, _lb_core_10crash_file@PAGE
    add x19, x19, _lb_core_10crash_file@PAGEOFF
    ldrsw x20, [x19]
    cmp w20, #0
    b.ge Lb04dc29f0029_2
Lb04dc29f0029_1:
    ldr x19, [sp, #1064]
    ldr x20, [sp, #1056]
    ldr x21, [sp, #1048]
    ldr x22, [sp, #1040]
    ldr x23, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb04dc29f0029_2:
    adrp x21, _lb_text_a15370269cc4@PAGE
    add x21, x21, _lb_text_a15370269cc4@PAGEOFF
    mov x22, #0
Lb04dc29f0029_52:
    cmp x22, #8
    b.hs Lb04dc29f0029_54
    .p2align 4
Lb04dc29f0029_53:
    movz x9, #8
    sub x14, x9, x22
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    add x15, x21, x22
    mov x0, x20
    mov x1, x15
    mov x2, x14
    bl _write
    mov x23, x0
    cmp x23, #0
    b.ge Lb04dc29f0029_61
Lb04dc29f0029_63:
    bl ___error
    mov x14, x0
    cbz x14, Lb04dc29f0029_72
Lb04dc29f0029_71:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne Lb04dc29f0029_61
Lb04dc29f0029_60:
    cmp x22, #8
    b.lo Lb04dc29f0029_53
    b Lb04dc29f0029_54
Lb04dc29f0029_61:
    cmp x23, #0
    b.gt Lb04dc29f0029_66
Lb04dc29f0029_65:
    b Lb04dc29f0029_54
Lb04dc29f0029_66:
    adds x22, x22, x23
    b.cs Lb04dc29f0029_c1
    cmp x22, #8
    b.lo Lb04dc29f0029_53
Lb04dc29f0029_54:
Lb04dc29f0029_75:
    ldr x14, [sp, #1016]
    cmp x14, #0
    b.eq Lb04dc29f0029_10
Lb04dc29f0029_9:
    ldrsw x20, [x19]
    ldr x15, [sp, #1008]
    ldr x12, [sp, #1024]
    cmp x15, #0
    b.eq Lb04dc29f0029_17
Lb04dc29f0029_16:
    str x15, [sp, #520]
    movz x13, #1
    b Lb04dc29f0029_18
Lb04dc29f0029_17:
    mov x13, #0
Lb04dc29f0029_18:
    cmp x12, #0
    b.eq Lb04dc29f0029_20
Lb04dc29f0029_22:
    cmp x15, x12
    b.eq Lb04dc29f0029_20
Lb04dc29f0029_19:
    sub x10, x29, #552
    str x12, [x10, x13, lsl #3]
    adds x15, x13, #1
    b.cs Lb04dc29f0029_c2
    mov x21, x13
    b Lb04dc29f0029_21
Lb04dc29f0029_20:
    mov x15, x13
    movz x21, #64
Lb04dc29f0029_21:
    adrp x12, _lb_core_13crash_walking@PAGE
    add x12, x12, _lb_core_13crash_walking@PAGEOFF
    movz x9, #1
    strb w9, [x12]
Lb04dc29f0029_23:
    cmp x15, #64
    b.lo Lb04dc29f0029_27
Lb04dc29f0029_49:
    mov x22, x15
    b Lb04dc29f0029_25
    .p2align 4
Lb04dc29f0029_27:
    cmp x14, #0
    b.ne Lb04dc29f0029_26
Lb04dc29f0029_50:
    mov x22, x15
    b Lb04dc29f0029_25
Lb04dc29f0029_26:
    and x13, x14, #7
    cmp x13, #0
    b.eq Lb04dc29f0029_24
Lb04dc29f0029_51:
    mov x22, x15
    b Lb04dc29f0029_25
Lb04dc29f0029_24:
    ldr x13, [x14, #8]
    ldr x7, [x14]
    cmp x13, #0
    b.ne Lb04dc29f0029_31
Lb04dc29f0029_30:
    mov x22, x15
    b Lb04dc29f0029_25
Lb04dc29f0029_31:
    cmp x15, #0
    b.eq Lb04dc29f0029_34
Lb04dc29f0029_37:
    subs x6, x15, #1
    b.cc Lb04dc29f0029_c3
    movz x10, #64
    cmp x6, x10
    b.hs Lb04dc29f0029_c4
    sub x10, x29, #552
    ldr x6, [x10, x6, lsl #3]
    cmp x6, x13
    b.eq Lb04dc29f0029_35
Lb04dc29f0029_34:
    sub x10, x29, #552
    str x13, [x10, x15, lsl #3]
    add x15, x15, #1
    b Lb04dc29f0029_36
Lb04dc29f0029_35:
Lb04dc29f0029_36:
    cmp x7, x14
    b.ls Lb04dc29f0029_38
Lb04dc29f0029_41:
    sub x14, x7, x14
    movz x10, #256, lsl #16
    cmp x14, x10
    b.ls Lb04dc29f0029_39
Lb04dc29f0029_38:
    mov x22, x15
    b Lb04dc29f0029_25
Lb04dc29f0029_39:
    mov x14, x7
    cmp x15, #64
    b.lo Lb04dc29f0029_27
    b Lb04dc29f0029_49
Lb04dc29f0029_25:
    mov x9, #0
    strb w9, [x12]
    mov x23, #0
Lb04dc29f0029_43:
    cmp x23, x22
    b.hs Lb04dc29f0029_46
    .p2align 4
Lb04dc29f0029_44:
    movz x10, #64
    cmp x23, x10
    b.hs Lb04dc29f0029_c5
    sub x10, x29, #552
    ldr x14, [x10, x23, lsl #3]
    cmp x21, x23
    cset w15, eq
    mov x0, x20
    mov x1, x23
    mov x2, x14
    mov x3, x15
    bl _lb_core_11write_frame
    add x23, x23, #1
    cmp x23, x22
    b.lo Lb04dc29f0029_44
Lb04dc29f0029_46:
    b Lb04dc29f0029_13
Lb04dc29f0029_10:
    sub x0, x29, #1064
    mov x1, #0
    movz x2, #512
    bl _memset
    sub x0, x29, #1064
    movz x1, #64
    bl _backtrace
    mov w14, w0
    cmp w14, #0
    b.le Lb04dc29f0029_13
Lb04dc29f0029_12:
    ldrsw x15, [x19]
    mov x1, x14
    mov x2, x15
    sub x0, x29, #1064
    bl _backtrace_symbols_fd
Lb04dc29f0029_13:
Lb04dc29f0029_14:
Lb04dc29f0029_11:
    ldrsw x14, [x19]
    mov x0, x14
    bl _close
    mov w14, w0
    movn x9, #0
    str w9, [x19]
    ldr x19, [sp, #1064]
    ldr x20, [sp, #1056]
    ldr x21, [sp, #1048]
    ldr x22, [sp, #1040]
    ldr x23, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lb04dc29f0029_72:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
Lb04dc29f0029_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb04dc29f0029_c2:
    adrp x0, _lb_text_a394b61542e8@PAGE
    add x0, x0, _lb_text_a394b61542e8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb04dc29f0029_c3:
    adrp x0, _lb_text_c8225313d6a8@PAGE
    add x0, x0, _lb_text_c8225313d6a8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lb04dc29f0029_c4:
    adrp x0, _lb_text_c8225313d6a8@PAGE
    add x0, x0, _lb_text_c8225313d6a8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lb04dc29f0029_c5:
    adrp x0, _lb_text_ee4c0c71ba09@PAGE
    add x0, x0, _lb_text_ee4c0c71ba09@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_12test_summary
_lb_core_12test_summary:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    adrp x14, _lb_core_12tests_passed@PAGE
    add x14, x14, _lb_core_12tests_passed@PAGEOFF
    ldrsw x14, [x14]
    mov x15, #0
    .p2align 4
L23545c95ad49_10:
    movz x10, #24
    cmp x15, x10
    b.hs L23545c95ad49_c1
    sub x9, x29, #56
    add x12, x9, x15
    movz x10, #10
    udiv x11, x14, x10
    msub x13, x11, x10, x14
    and w13, w13, #255
    add w13, w13, #48
    strb w13, [x12]
    add x15, x15, #1
    movz x10, #10
    udiv x14, x14, x10
    cmp x14, #0
    b.ne L23545c95ad49_18
L23545c95ad49_17:
    b L23545c95ad49_12
L23545c95ad49_18:
    b L23545c95ad49_10
L23545c95ad49_12:
    mov x14, #0
L23545c95ad49_21:
    cmp x15, #0
    b.ls L23545c95ad49_23
    .p2align 4
L23545c95ad49_22:
    sub x15, x15, #1
    movz x10, #128
    cmp x14, x10
    b.hs L23545c95ad49_c2
    sub x9, x29, #200
    add x12, x9, x14
    movz x10, #24
    cmp x15, x10
    b.hs L23545c95ad49_c3
    sub x11, x29, #56
    ldrb w13, [x15, x11]
    strb w13, [x12]
    add x14, x14, #1
    cmp x15, #0
    b.hi L23545c95ad49_22
L23545c95ad49_23:
    adrp x15, _lb_text_6b027e0831e1@PAGE
    add x15, x15, _lb_text_6b027e0831e1@PAGEOFF
    mov x12, #0
L23545c95ad49_26:
    cmp x12, #8
    b.hs L23545c95ad49_29
    .p2align 4
L23545c95ad49_27:
    ldrb w13, [x15, x12]
    adds x7, x14, #40
    b.cs L23545c95ad49_c4
    cmp x7, #128
    b.lo L23545c95ad49_31
L23545c95ad49_30:
    b L23545c95ad49_29
L23545c95ad49_31:
L23545c95ad49_32:
    movz x10, #128
    cmp x14, x10
    b.hs L23545c95ad49_c5
    sub x10, x29, #200
    strb w13, [x10, x14]
    add x14, x14, #1
    add x12, x12, #1
    cmp x12, #8
    b.lo L23545c95ad49_27
L23545c95ad49_29:
L23545c95ad49_35:
    adrp x19, _lb_core_12tests_failed@PAGE
    add x19, x19, _lb_core_12tests_failed@PAGEOFF
    ldrsw x15, [x19]
    cmp w15, #0
    b.le L23545c95ad49_2
L23545c95ad49_1:
    sxtw x15, w15
    mov x12, #0
    .p2align 4
L23545c95ad49_36:
    movz x10, #24
    cmp x12, x10
    b.hs L23545c95ad49_c6
    sub x9, x29, #56
    add x13, x9, x12
    movz x10, #10
    udiv x11, x15, x10
    msub x7, x11, x10, x15
    and w7, w7, #255
    add w7, w7, #48
    strb w7, [x13]
    add x12, x12, #1
    movz x10, #10
    udiv x15, x15, x10
    cmp x15, #0
    b.ne L23545c95ad49_44
L23545c95ad49_43:
    b L23545c95ad49_38
L23545c95ad49_44:
    b L23545c95ad49_36
L23545c95ad49_38:
L23545c95ad49_47:
    cmp x12, #0
    b.ls L23545c95ad49_49
    .p2align 4
L23545c95ad49_48:
    sub x12, x12, #1
    movz x10, #128
    cmp x14, x10
    b.hs L23545c95ad49_c7
    sub x9, x29, #200
    add x15, x9, x14
    movz x10, #24
    cmp x12, x10
    b.hs L23545c95ad49_c8
    sub x11, x29, #56
    ldrb w13, [x12, x11]
    strb w13, [x15]
    add x14, x14, #1
    cmp x12, #0
    b.hi L23545c95ad49_48
L23545c95ad49_49:
    adrp x15, _lb_text_75d9d2a9ebca@PAGE
    add x15, x15, _lb_text_75d9d2a9ebca@PAGEOFF
    mov x12, #0
L23545c95ad49_52:
    cmp x12, #8
    b.hs L23545c95ad49_55
    .p2align 4
L23545c95ad49_53:
    ldrb w13, [x15, x12]
    adds x7, x14, #40
    b.cs L23545c95ad49_c9
    cmp x7, #128
    b.lo L23545c95ad49_57
L23545c95ad49_56:
    b L23545c95ad49_55
L23545c95ad49_57:
L23545c95ad49_58:
    movz x10, #128
    cmp x14, x10
    b.hs L23545c95ad49_c10
    sub x10, x29, #200
    strb w13, [x10, x14]
    add x14, x14, #1
    add x12, x12, #1
    cmp x12, #8
    b.lo L23545c95ad49_53
L23545c95ad49_55:
L23545c95ad49_61:
    mov x20, x14
    b L23545c95ad49_3
L23545c95ad49_2:
    mov x20, x14
L23545c95ad49_3:
    movz x10, #128
    cmp x20, x10
    b.hi L23545c95ad49_c11
    mov x21, #0
L23545c95ad49_62:
    cmp x21, x20
    b.hs L23545c95ad49_64
    .p2align 4
L23545c95ad49_63:
    sub x14, x20, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    sub x9, x29, #200
    add x15, x9, x21
    mov x1, x15
    mov x2, x14
    movz x0, #1
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L23545c95ad49_71
L23545c95ad49_73:
    bl ___error
    mov x14, x0
    cbz x14, L23545c95ad49_82
L23545c95ad49_81:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L23545c95ad49_71
L23545c95ad49_70:
    cmp x21, x20
    b.lo L23545c95ad49_63
    b L23545c95ad49_64
L23545c95ad49_71:
    cmp x22, #0
    b.gt L23545c95ad49_76
L23545c95ad49_75:
    b L23545c95ad49_64
L23545c95ad49_76:
    adds x21, x21, x22
    b.cs L23545c95ad49_c12
    cmp x21, x20
    b.lo L23545c95ad49_63
L23545c95ad49_64:
L23545c95ad49_85:
    ldrsw x14, [x19]
    cmp w14, #0
    mov x10, #0
    movz x11, #1
    csel w14, w10, w11, eq
    mov x0, x14
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23545c95ad49_82:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c1:
    adrp x0, _lb_text_c100d17ae852@PAGE
    add x0, x0, _lb_text_c100d17ae852@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c2:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c3:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c4:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c5:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c6:
    adrp x0, _lb_text_c100d17ae852@PAGE
    add x0, x0, _lb_text_c100d17ae852@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c7:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c8:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c9:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c10:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c11:
    adrp x0, _lb_text_ccb0022e9b01@PAGE
    add x0, x0, _lb_text_ccb0022e9b01@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L23545c95ad49_c12:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11put_decimal
_lb_core_11put_decimal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    mov x14, x2
    mov x15, x3
    mov x12, #0
    .p2align 4
L41d64f21ee96_1:
    movz x10, #24
    cmp x12, x10
    b.hs L41d64f21ee96_c1
    sub x9, x29, #72
    add x13, x9, x12
    movz x10, #10
    udiv x11, x15, x10
    msub x7, x11, x10, x15
    and w7, w7, #255
    add w7, w7, #48
    strb w7, [x13]
    add x12, x12, #1
    movz x10, #10
    udiv x15, x15, x10
    cmp x15, #0
    b.ne L41d64f21ee96_9
L41d64f21ee96_8:
    b L41d64f21ee96_3
L41d64f21ee96_9:
    b L41d64f21ee96_1
L41d64f21ee96_3:
    ldr x15, [sp, #64]
    ldr x13, [sp, #72]
L41d64f21ee96_12:
    cmp x12, #0
    b.ls L41d64f21ee96_14
    .p2align 4
L41d64f21ee96_13:
    sub x12, x12, #1
    cmp x14, x13
    b.hs L41d64f21ee96_c2
    add x7, x15, x14
    movz x10, #24
    cmp x12, x10
    b.hs L41d64f21ee96_c3
    sub x10, x29, #72
    ldrb w6, [x10, x12]
    strb w6, [x7]
    add x14, x14, #1
    cmp x12, #0
    b.hi L41d64f21ee96_13
L41d64f21ee96_14:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41d64f21ee96_c1:
    adrp x0, _lb_text_c100d17ae852@PAGE
    add x0, x0, _lb_text_c100d17ae852@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L41d64f21ee96_c2:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L41d64f21ee96_c3:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_8put_text
_lb_core_8put_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #48
    str x3, [x16]
    str x4, [x16, #8]
    mov x14, x2
    ldr x15, [sp, #0]
    ldr x12, [sp, #8]
    ldr x13, [sp, #40]
    ldr x7, [sp, #32]
    mov x6, #0
L9097d239a18c_1:
    cmp x6, x12
    b.hs L9097d239a18c_4
    .p2align 4
L9097d239a18c_2:
    ldrb w5, [x15, x6]
    adds x4, x14, #40
    b.cs L9097d239a18c_c1
    cmp x4, x13
    b.lo L9097d239a18c_6
L9097d239a18c_5:
    b L9097d239a18c_4
L9097d239a18c_6:
L9097d239a18c_7:
    cmp x14, x13
    b.hs L9097d239a18c_c2
    strb w5, [x7, x14]
    add x14, x14, #1
    add x6, x6, #1
    cmp x6, x12
    b.lo L9097d239a18c_2
L9097d239a18c_4:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9097d239a18c_c1:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L9097d239a18c_c2:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11write_frame
_lb_core_11write_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #736
    str x19, [sp, #728]
    str x20, [sp, #720]
    str x21, [sp, #712]
    str x22, [sp, #704]
    str x23, [sp, #696]
    mov w19, w0
    mov x14, x1
    mov x20, x2
    uxtb w15, w3
    movz x9, #35
    strb w9, [sp, #32]
    mov x12, #0
    .p2align 4
L2fd4329f9a33_29:
    movz x10, #24
    cmp x12, x10
    b.hs L2fd4329f9a33_c1
    sub x9, x29, #64
    add x13, x9, x12
    movz x10, #10
    udiv x11, x14, x10
    msub x7, x11, x10, x14
    and w7, w7, #255
    add w7, w7, #48
    strb w7, [x13]
    add x12, x12, #1
    movz x10, #10
    udiv x14, x14, x10
    cmp x14, #0
    b.ne L2fd4329f9a33_37
L2fd4329f9a33_36:
    b L2fd4329f9a33_31
L2fd4329f9a33_37:
    b L2fd4329f9a33_29
L2fd4329f9a33_31:
    movz x14, #1
L2fd4329f9a33_40:
    cmp x12, #0
    b.ls L2fd4329f9a33_42
    .p2align 4
L2fd4329f9a33_41:
    sub x12, x12, #1
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c2
    sub x9, x29, #704
    add x13, x9, x14
    movz x10, #24
    cmp x12, x10
    b.hs L2fd4329f9a33_c3
    sub x11, x29, #64
    ldrb w7, [x12, x11]
    strb w7, [x13]
    add x14, x14, #1
    cmp x12, #0
    b.hi L2fd4329f9a33_41
L2fd4329f9a33_42:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c4
    sub x10, x29, #704
    movz x9, #32
    strb w9, [x10, x14]
    cbz w15, L2fd4329f9a33_2
L2fd4329f9a33_1:
    add x14, x14, #1
    adrp x15, _lb_text_73323affe121@PAGE
    add x15, x15, _lb_text_73323affe121@PAGEOFF
    mov x12, #0
L2fd4329f9a33_45:
    cmp x12, #2
    b.hs L2fd4329f9a33_48
    .p2align 4
L2fd4329f9a33_46:
    ldrb w13, [x15, x12]
    adds x7, x14, #40
    b.cs L2fd4329f9a33_c5
    cmp x7, #640
    b.lo L2fd4329f9a33_50
L2fd4329f9a33_49:
    b L2fd4329f9a33_48
L2fd4329f9a33_50:
L2fd4329f9a33_51:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c6
    sub x10, x29, #704
    strb w13, [x10, x14]
    add x14, x14, #1
    add x12, x12, #1
    cmp x12, #2
    b.lo L2fd4329f9a33_46
L2fd4329f9a33_48:
L2fd4329f9a33_54:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c7
    sub x10, x29, #704
    movz x9, #32
    strb w9, [x10, x14]
    b L2fd4329f9a33_3
L2fd4329f9a33_2:
L2fd4329f9a33_3:
    adds x14, x14, #1
    b.cs L2fd4329f9a33_c8
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c9
    sub x11, x29, #704
    movz x9, #48
    strb w9, [x14, x11]
    add x15, x14, #1
    movz x10, #640
    cmp x15, x10
    b.hs L2fd4329f9a33_c10
    sub x11, x29, #704
    movz x9, #120
    strb w9, [x15, x11]
    add x14, x14, #2
    adrp x21, _lb_text_01a3d32532b5@PAGE
    add x21, x21, _lb_text_01a3d32532b5@PAGEOFF
    movz x15, #60
    mov w12, #0
L2fd4329f9a33_55:
    cmp x15, #64
    b.hs L2fd4329f9a33_58
L2fd4329f9a33_59:
    lsr x13, x20, x15
    and x13, x13, #15
    cmp x13, #0
    b.ne L2fd4329f9a33_60
L2fd4329f9a33_64:
    and w7, w12, #255
    cbnz w7, L2fd4329f9a33_60
L2fd4329f9a33_63:
    cmp x15, #0
    b.ne L2fd4329f9a33_61
L2fd4329f9a33_60:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c11
    sub x9, x29, #704
    add x12, x9, x14
    ldrb w13, [x21, x13]
    strb w13, [x12]
    add x14, x14, #1
    movz w12, #1
    b L2fd4329f9a33_62
L2fd4329f9a33_61:
L2fd4329f9a33_62:
    cmp x15, #0
    b.ne L2fd4329f9a33_66
L2fd4329f9a33_65:
    b L2fd4329f9a33_57
L2fd4329f9a33_66:
    subs x15, x15, #4
    b.cc L2fd4329f9a33_c12
    cmp x15, #64
    b.hs L2fd4329f9a33_58
    b L2fd4329f9a33_59
L2fd4329f9a33_57:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c13
    sub x10, x29, #704
    movz x9, #32
    strb w9, [x10, x14]
    add x22, x14, #1
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #16]
    mov x0, x20
    sub x1, x29, #736
    bl _dladdr
    mov w14, w0
    cmp w14, #0
    b.eq L2fd4329f9a33_5
L2fd4329f9a33_4:
    ldr x23, [sp, #0]
    cbz x23, L2fd4329f9a33_8
L2fd4329f9a33_10:
    mov x0, x23
    bl _strlen
    mov x14, x0
    mov x15, #0
    mov x12, #0
L2fd4329f9a33_17:
    cmp x12, x14
    b.hs L2fd4329f9a33_20
    .p2align 4
L2fd4329f9a33_18:
    ldrb w13, [x23, x12]
    cmp w13, #47
    movz x10, #92
    ccmp w13, w10, #4, ne
    add x12, x12, #1
    csel x15, x12, x15, eq
    cmp x12, x14
    b.lo L2fd4329f9a33_18
L2fd4329f9a33_20:
    cmp x15, x14
    b.hi L2fd4329f9a33_c14
    add x12, x23, x15
    sub x14, x14, x15
    mov x15, #0
L2fd4329f9a33_71:
    cmp x15, x14
    b.hs L2fd4329f9a33_74
    .p2align 4
L2fd4329f9a33_72:
    ldrb w13, [x12, x15]
    adds x7, x22, #40
    b.cs L2fd4329f9a33_c15
    cmp x7, #640
    b.lo L2fd4329f9a33_76
L2fd4329f9a33_75:
    b L2fd4329f9a33_74
L2fd4329f9a33_76:
L2fd4329f9a33_77:
    movz x10, #640
    cmp x22, x10
    b.hs L2fd4329f9a33_c16
    sub x10, x29, #704
    strb w13, [x10, x22]
    add x22, x22, #1
    add x15, x15, #1
    cmp x15, x14
    b.lo L2fd4329f9a33_72
L2fd4329f9a33_74:
L2fd4329f9a33_80:
    b L2fd4329f9a33_9
L2fd4329f9a33_8:
L2fd4329f9a33_9:
    movz x10, #640
    cmp x22, x10
    b.hs L2fd4329f9a33_c17
    sub x10, x29, #704
    movz x9, #43
    strb w9, [x10, x22]
    add x14, x22, #1
    ldr x15, [sp, #8]
    subs x15, x20, x15
    b.cc L2fd4329f9a33_c18
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c19
    sub x11, x29, #704
    movz x9, #48
    strb w9, [x14, x11]
    add x12, x14, #1
    movz x10, #640
    cmp x12, x10
    b.hs L2fd4329f9a33_c20
    sub x11, x29, #704
    movz x9, #120
    strb w9, [x12, x11]
    add x14, x14, #2
    movz x12, #60
    mov w13, #0
L2fd4329f9a33_81:
    cmp x12, #64
    b.hs L2fd4329f9a33_84
L2fd4329f9a33_85:
    lsr x7, x15, x12
    and x7, x7, #15
    cmp x7, #0
    b.ne L2fd4329f9a33_86
L2fd4329f9a33_90:
    and w6, w13, #255
    cbnz w6, L2fd4329f9a33_86
L2fd4329f9a33_89:
    cmp x12, #0
    b.ne L2fd4329f9a33_87
L2fd4329f9a33_86:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c21
    sub x9, x29, #704
    add x13, x9, x14
    ldrb w7, [x21, x7]
    strb w7, [x13]
    add x14, x14, #1
    movz w13, #1
    b L2fd4329f9a33_88
L2fd4329f9a33_87:
L2fd4329f9a33_88:
    cmp x12, #0
    b.ne L2fd4329f9a33_92
L2fd4329f9a33_91:
    b L2fd4329f9a33_83
L2fd4329f9a33_92:
    subs x12, x12, #4
    b.cc L2fd4329f9a33_c22
    cmp x12, #64
    b.hs L2fd4329f9a33_84
    b L2fd4329f9a33_85
L2fd4329f9a33_83:
    ldr x22, [sp, #16]
    cbz x22, L2fd4329f9a33_12
L2fd4329f9a33_14:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c23
    sub x10, x29, #704
    movz x9, #32
    strb w9, [x10, x14]
    add x23, x14, #1
    mov x0, x22
    bl _strlen
    mov x14, x0
    mov x15, #0
L2fd4329f9a33_97:
    cmp x15, x14
    b.hs L2fd4329f9a33_100
    .p2align 4
L2fd4329f9a33_98:
    ldrb w12, [x22, x15]
    adds x13, x23, #40
    b.cs L2fd4329f9a33_c24
    cmp x13, #640
    b.lo L2fd4329f9a33_102
L2fd4329f9a33_101:
    b L2fd4329f9a33_100
L2fd4329f9a33_102:
L2fd4329f9a33_103:
    movz x10, #640
    cmp x23, x10
    b.hs L2fd4329f9a33_c25
    sub x10, x29, #704
    strb w12, [x10, x23]
    add x23, x23, #1
    add x15, x15, #1
    cmp x15, x14
    b.lo L2fd4329f9a33_98
L2fd4329f9a33_100:
L2fd4329f9a33_106:
    movz x10, #640
    cmp x23, x10
    b.hs L2fd4329f9a33_c26
    sub x10, x29, #704
    movz x9, #43
    strb w9, [x10, x23]
    add x14, x23, #1
    ldr x15, [sp, #24]
    subs x15, x20, x15
    b.cc L2fd4329f9a33_c27
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c28
    sub x11, x29, #704
    movz x9, #48
    strb w9, [x14, x11]
    add x12, x14, #1
    movz x10, #640
    cmp x12, x10
    b.hs L2fd4329f9a33_c29
    sub x11, x29, #704
    movz x9, #120
    strb w9, [x12, x11]
    add x14, x14, #2
    movz x12, #60
    mov w13, #0
L2fd4329f9a33_107:
    cmp x12, #64
    b.hs L2fd4329f9a33_110
L2fd4329f9a33_111:
    lsr x7, x15, x12
    and x7, x7, #15
    cmp x7, #0
    b.ne L2fd4329f9a33_112
L2fd4329f9a33_116:
    and w6, w13, #255
    cbnz w6, L2fd4329f9a33_112
L2fd4329f9a33_115:
    cmp x12, #0
    b.ne L2fd4329f9a33_113
L2fd4329f9a33_112:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c30
    sub x9, x29, #704
    add x13, x9, x14
    ldrb w7, [x21, x7]
    strb w7, [x13]
    add x14, x14, #1
    movz w13, #1
    b L2fd4329f9a33_114
L2fd4329f9a33_113:
L2fd4329f9a33_114:
    cmp x12, #0
    b.ne L2fd4329f9a33_118
L2fd4329f9a33_117:
    b L2fd4329f9a33_109
L2fd4329f9a33_118:
    subs x12, x12, #4
    b.cc L2fd4329f9a33_c31
    cmp x12, #64
    b.hs L2fd4329f9a33_110
    b L2fd4329f9a33_111
L2fd4329f9a33_109:
    b L2fd4329f9a33_13
L2fd4329f9a33_12:
L2fd4329f9a33_13:
    b L2fd4329f9a33_6
L2fd4329f9a33_5:
    movz x10, #640
    cmp x22, x10
    b.hs L2fd4329f9a33_c32
    sub x10, x29, #704
    movz x9, #63
    strb w9, [x10, x22]
    add x14, x22, #1
L2fd4329f9a33_6:
    movz x10, #640
    cmp x14, x10
    b.hs L2fd4329f9a33_c33
    sub x10, x29, #704
    movz x9, #10
    strb w9, [x10, x14]
    add x20, x14, #1
    movz x10, #640
    cmp x20, x10
    b.hi L2fd4329f9a33_c34
    mov x21, #0
L2fd4329f9a33_123:
    cmp x21, x20
    b.hs L2fd4329f9a33_125
    .p2align 4
L2fd4329f9a33_124:
    sub x14, x20, x21
    movz x10, #16384, lsl #16
    cmp x14, x10
    movz x11, #16384, lsl #16
    csel x14, x14, x11, lo
    sub x9, x29, #704
    add x15, x9, x21
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl _write
    mov x22, x0
    cmp x22, #0
    b.ge L2fd4329f9a33_132
L2fd4329f9a33_134:
    bl ___error
    mov x14, x0
    cbz x14, L2fd4329f9a33_143
L2fd4329f9a33_142:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L2fd4329f9a33_132
L2fd4329f9a33_131:
    cmp x21, x20
    b.lo L2fd4329f9a33_124
    b L2fd4329f9a33_125
L2fd4329f9a33_132:
    cmp x22, #0
    b.gt L2fd4329f9a33_137
L2fd4329f9a33_136:
    b L2fd4329f9a33_125
L2fd4329f9a33_137:
    adds x21, x21, x22
    b.cs L2fd4329f9a33_c35
    cmp x21, x20
    b.lo L2fd4329f9a33_124
L2fd4329f9a33_125:
L2fd4329f9a33_146:
    ldr x19, [sp, #728]
    ldr x20, [sp, #720]
    ldr x21, [sp, #712]
    ldr x22, [sp, #704]
    ldr x23, [sp, #696]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 4
L2fd4329f9a33_58:
    adrp x0, _lb_text_16a01aaa0028@PAGE
    add x0, x0, _lb_text_16a01aaa0028@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 4
L2fd4329f9a33_84:
    adrp x0, _lb_text_16a01aaa0028@PAGE
    add x0, x0, _lb_text_16a01aaa0028@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 4
L2fd4329f9a33_110:
    adrp x0, _lb_text_16a01aaa0028@PAGE
    add x0, x0, _lb_text_16a01aaa0028@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_143:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c1:
    adrp x0, _lb_text_c100d17ae852@PAGE
    add x0, x0, _lb_text_c100d17ae852@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c2:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c3:
    adrp x0, _lb_text_cc943dfacdf0@PAGE
    add x0, x0, _lb_text_cc943dfacdf0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c4:
    adrp x0, _lb_text_ef55b6ae9298@PAGE
    add x0, x0, _lb_text_ef55b6ae9298@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c5:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c6:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c7:
    adrp x0, _lb_text_3bd6c91d21f0@PAGE
    add x0, x0, _lb_text_3bd6c91d21f0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c8:
    adrp x0, _lb_text_acd37fc8dd37@PAGE
    add x0, x0, _lb_text_acd37fc8dd37@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c9:
    adrp x0, _lb_text_4f75f4ece4ab@PAGE
    add x0, x0, _lb_text_4f75f4ece4ab@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c10:
    adrp x0, _lb_text_30a4063ee048@PAGE
    add x0, x0, _lb_text_30a4063ee048@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c11:
    adrp x0, _lb_text_da1a5952cfc4@PAGE
    add x0, x0, _lb_text_da1a5952cfc4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c12:
    adrp x0, _lb_text_d22a34135d08@PAGE
    add x0, x0, _lb_text_d22a34135d08@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c13:
    adrp x0, _lb_text_23aa9f7bbf38@PAGE
    add x0, x0, _lb_text_23aa9f7bbf38@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c14:
    adrp x0, _lb_text_896655592660@PAGE
    add x0, x0, _lb_text_896655592660@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c15:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c16:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c17:
    adrp x0, _lb_text_ba116e5413cf@PAGE
    add x0, x0, _lb_text_ba116e5413cf@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c18:
    adrp x0, _lb_text_6ab2b14fa65b@PAGE
    add x0, x0, _lb_text_6ab2b14fa65b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c19:
    adrp x0, _lb_text_4f75f4ece4ab@PAGE
    add x0, x0, _lb_text_4f75f4ece4ab@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c20:
    adrp x0, _lb_text_30a4063ee048@PAGE
    add x0, x0, _lb_text_30a4063ee048@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c21:
    adrp x0, _lb_text_da1a5952cfc4@PAGE
    add x0, x0, _lb_text_da1a5952cfc4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c22:
    adrp x0, _lb_text_d22a34135d08@PAGE
    add x0, x0, _lb_text_d22a34135d08@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c23:
    adrp x0, _lb_text_51d0d3fa35ad@PAGE
    add x0, x0, _lb_text_51d0d3fa35ad@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c24:
    adrp x0, _lb_text_3f5af02325d0@PAGE
    add x0, x0, _lb_text_3f5af02325d0@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c25:
    adrp x0, _lb_text_c394d0bba20b@PAGE
    add x0, x0, _lb_text_c394d0bba20b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c26:
    adrp x0, _lb_text_42d92aa723aa@PAGE
    add x0, x0, _lb_text_42d92aa723aa@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c27:
    adrp x0, _lb_text_c8c543ccfb0e@PAGE
    add x0, x0, _lb_text_c8c543ccfb0e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c28:
    adrp x0, _lb_text_4f75f4ece4ab@PAGE
    add x0, x0, _lb_text_4f75f4ece4ab@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c29:
    adrp x0, _lb_text_30a4063ee048@PAGE
    add x0, x0, _lb_text_30a4063ee048@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c30:
    adrp x0, _lb_text_da1a5952cfc4@PAGE
    add x0, x0, _lb_text_da1a5952cfc4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c31:
    adrp x0, _lb_text_d22a34135d08@PAGE
    add x0, x0, _lb_text_d22a34135d08@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c32:
    adrp x0, _lb_text_998f76464a54@PAGE
    add x0, x0, _lb_text_998f76464a54@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c33:
    adrp x0, _lb_text_55fb8041bdf7@PAGE
    add x0, x0, _lb_text_55fb8041bdf7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c34:
    adrp x0, _lb_text_8e05d5d9fe0b@PAGE
    add x0, x0, _lb_text_8e05d5d9fe0b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L2fd4329f9a33_c35:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_7put_hex
_lb_core_7put_hex:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    mov x14, x2
    mov x15, x3
    ldr x12, [sp, #32]
    ldr x13, [sp, #40]
    cmp x14, x13
    b.hs L0512103b6257_c1
    movz x9, #48
    strb w9, [x12, x14]
    add x7, x14, #1
    cmp x7, x13
    b.hs L0512103b6257_c2
    movz x9, #120
    strb w9, [x12, x7]
    adds x14, x14, #2
    b.cs L0512103b6257_c3
    adrp x7, _lb_text_01a3d32532b5@PAGE
    add x7, x7, _lb_text_01a3d32532b5@PAGEOFF
    movz x6, #60
    mov w5, #0
L0512103b6257_1:
    cmp x6, #64
    b.hs L0512103b6257_4
L0512103b6257_5:
    lsr x4, x15, x6
    and x4, x4, #15
    cmp x4, #0
    b.ne L0512103b6257_6
L0512103b6257_10:
    and w3, w5, #255
    cbnz w3, L0512103b6257_6
L0512103b6257_9:
    cmp x6, #0
    b.ne L0512103b6257_7
L0512103b6257_6:
    cmp x14, x13
    b.hs L0512103b6257_c4
    add x5, x12, x14
    ldrb w4, [x4, x7]
    strb w4, [x5]
    add x14, x14, #1
    movz w5, #1
    b L0512103b6257_8
L0512103b6257_7:
L0512103b6257_8:
    cmp x6, #0
    b.ne L0512103b6257_12
L0512103b6257_11:
    b L0512103b6257_3
L0512103b6257_12:
    subs x6, x6, #4
    b.cc L0512103b6257_c5
    cmp x6, #64
    b.hs L0512103b6257_4
    b L0512103b6257_5
L0512103b6257_3:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 4
L0512103b6257_4:
    adrp x0, _lb_text_16a01aaa0028@PAGE
    add x0, x0, _lb_text_16a01aaa0028@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L0512103b6257_c1:
    adrp x0, _lb_text_4f75f4ece4ab@PAGE
    add x0, x0, _lb_text_4f75f4ece4ab@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0512103b6257_c2:
    adrp x0, _lb_text_30a4063ee048@PAGE
    add x0, x0, _lb_text_30a4063ee048@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0512103b6257_c3:
    adrp x0, _lb_text_3972450d5202@PAGE
    add x0, x0, _lb_text_3972450d5202@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0512103b6257_c4:
    adrp x0, _lb_text_da1a5952cfc4@PAGE
    add x0, x0, _lb_text_da1a5952cfc4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0512103b6257_c5:
    adrp x0, _lb_text_d22a34135d08@PAGE
    add x0, x0, _lb_text_d22a34135d08@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_0
_lb_test_0:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2576
    str x19, [sp, #2568]
    mov x19, #0
L9808775d34f6_1:
    cmp x19, #8
    b.hs L9808775d34f6_4
    .p2align 4
L9808775d34f6_2:
    mov x0, x19
    sub x8, x29, #664
    bl _lb_recipe_mode
    sub x10, x29, #664
    sub x0, x29, #1864
    mov x1, x10
    movz x2, #656
    bl _memcpy
    ldr x14, [sp, #1352]
    mov x1, x14
    sub x0, x29, #1864
    sub x8, x29, #936
    bl _lb_recipe_Recipe_7path_to
    sub x10, x29, #936
    sub x0, x29, #1072
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x10, x29, #1072
    sub x0, x29, #1208
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x10, x29, #1208
    sub x0, x29, #800
    mov x1, x10
    movz x2, #136
    bl _memcpy
    ldr x14, [sp, #1904]
    cmp x14, #6
    b.lo L9808775d34f6_6
L9808775d34f6_7:
    ldr x14, [sp, #1776]
    cmp x14, #0
    b.eq L9808775d34f6_5
L9808775d34f6_6:
    mov x9, #0
    str x9, [sp, #696]
    mov x9, #0
    str x9, [sp, #704]
    adrp x14, _lb_text_6e4be437cf6e@PAGE
    add x14, x14, _lb_text_6e4be437cf6e@PAGEOFF
    adrp x15, _lb_text_aedcfdac0e2a@PAGE
    add x15, x15, _lb_text_aedcfdac0e2a@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1880
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #2568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9808775d34f6_5:
    ldr x14, [sp, #1352]
    cmp x14, #13
    b.eq L9808775d34f6_9
L9808775d34f6_10:
    mov x9, #0
    str x9, [sp, #680]
    mov x9, #0
    str x9, [sp, #688]
    adrp x14, _lb_text_652a4fffb69c@PAGE
    add x14, x14, _lb_text_652a4fffb69c@PAGEOFF
    adrp x15, _lb_text_7972feef5c3e@PAGE
    add x15, x15, _lb_text_7972feef5c3e@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1896
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #2568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9808775d34f6_9:
    add x19, x19, #1
    cmp x19, #8
    b.lo L9808775d34f6_2
L9808775d34f6_4:
    movz x0, #1
    sub x8, x29, #664
    bl _lb_recipe_mode
    sub x10, x29, #664
    sub x0, x29, #2552
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x0, x29, #2552
    movz x1, #9
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L9808775d34f6_13
L9808775d34f6_14:
    sub x0, x29, #2552
    movz x1, #7
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, L9808775d34f6_12
L9808775d34f6_13:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_d9e2334d2a92@PAGE
    add x14, x14, _lb_text_d9e2334d2a92@PAGEOFF
    adrp x15, _lb_text_f86fafba9bdc@PAGE
    add x15, x15, _lb_text_f86fafba9bdc@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2568
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #2568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9808775d34f6_12:
    mov x0, #0
    ldr x19, [sp, #2568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_mode
_lb_recipe_mode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2080
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #2064]
    str x20, [sp, #2056]
    str x21, [sp, #2048]
    str x22, [sp, #2040]
    str x23, [sp, #2032]
    str x24, [sp, #2024]
    str x25, [sp, #2016]
    str x26, [sp, #2008]
    str x27, [sp, #2000]
    str x28, [sp, #1992]
    str d8, [sp, #1984]
    str d9, [sp, #1976]
    str d10, [sp, #1968]
    mov x19, x0
    sub x0, x29, #768
    mov x1, #0
    movz x2, #656
    bl _memset
    movn x9, #0
    str x9, [sp, #1952]
    movn x9, #0
    str x9, [sp, #1960]
    sub x10, x29, #768
    sub x0, x29, #2080
    mov x1, x10
    movz x2, #656
    bl _memcpy
    mov x14, #0
L0c567d9a6c2f_1:
    cmp x14, #16
    b.hs L0c567d9a6c2f_4
    .p2align 4
L0c567d9a6c2f_2:
    movz x10, #40
    mul x15, x14, x10
    sub x10, x29, #2080
    add x15, x15, x10
    movn x9, #0
    str x9, [x15, #24]
    add x14, x14, #1
    cmp x14, #16
    b.lo L0c567d9a6c2f_2
L0c567d9a6c2f_4:
    adrp x14, _lb_recipe_11mode_chains@PAGE
    add x14, x14, _lb_recipe_11mode_chains@PAGEOFF
    movz x10, #8
    cmp x19, x10
    b.hs L0c567d9a6c2f_c1
    add x14, x14, x19, lsl #4
    ldr x19, [x14]
    ldr x20, [x14, #8]
    fmov d8, xzr
    adrp x21, _lb_recipe_12mode_spacing@PAGE
    add x21, x21, _lb_recipe_12mode_spacing@PAGEOFF
    fmov d9, #1.0000000
    adrp x22, _lb_recipe_10stage_keys@PAGE
    add x22, x22, _lb_recipe_10stage_keys@PAGEOFF
    mov x14, #0
    movn x23, #0
    fmov d10, d8
    mov x24, #0
L0c567d9a6c2f_5:
    cmp x24, x20
    b.ls L0c567d9a6c2f_6
L0c567d9a6c2f_24:
    b L0c567d9a6c2f_8
    .p2align 4
L0c567d9a6c2f_6:
    cmp x20, x24
    cset w25, eq
    cbnz w25, L0c567d9a6c2f_9
L0c567d9a6c2f_12:
    cmp x24, x20
    b.hs L0c567d9a6c2f_c2
    ldrb w15, [x19, x24]
    cmp w15, #124
    b.ne L0c567d9a6c2f_10
L0c567d9a6c2f_9:
    cmp x14, x20
    b.hi L0c567d9a6c2f_c3
    cmp x14, x24
    b.hi L0c567d9a6c2f_14
L0c567d9a6c2f_13:
    add x26, x19, x14
    sub x27, x24, x14
    mov x28, #0
L0c567d9a6c2f_26:
    cmp x28, #16
    b.hs L0c567d9a6c2f_29
    .p2align 4
L0c567d9a6c2f_27:
    add x14, x22, x28, lsl #4
    ldr x15, [x14, #8]
    cmp x27, x15
    cset w12, eq
    cbnz w12, L0c567d9a6c2f_33
L0c567d9a6c2f_37:
    b L0c567d9a6c2f_34
L0c567d9a6c2f_33:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x26
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L0c567d9a6c2f_34:
    and w14, w12, #255
    cbz w14, L0c567d9a6c2f_31
L0c567d9a6c2f_30:
    b L0c567d9a6c2f_38
L0c567d9a6c2f_31:
L0c567d9a6c2f_32:
    add x28, x28, #1
    cmp x28, #16
    b.lo L0c567d9a6c2f_27
L0c567d9a6c2f_29:
    movn x28, #0
L0c567d9a6c2f_38:
    adds x26, x24, #1
    b.cs L0c567d9a6c2f_c4
    cmp x28, #0
    b.ge L0c567d9a6c2f_16
L0c567d9a6c2f_15:
    b L0c567d9a6c2f_7
L0c567d9a6c2f_16:
L0c567d9a6c2f_17:
    ldr d24, [x21]
    fmul d24, d24, d10
    fmov d0, d8
    fmov d1, d24
    mov x1, x28
    sub x0, x29, #2080
    bl _lb_recipe_Recipe_add
    mov w14, w0
    cmp x23, #0
    b.lt L0c567d9a6c2f_20
L0c567d9a6c2f_19:
    mov x1, x23
    mov x2, x28
    sub x0, x29, #2080
    bl _lb_recipe_Recipe_connect
    mov w14, w0
L0c567d9a6c2f_20:
L0c567d9a6c2f_21:
    fadd d24, d9, d10
    b L0c567d9a6c2f_11
L0c567d9a6c2f_10:
    mov x26, x14
    mov x28, x23
    fmov d24, d10
L0c567d9a6c2f_11:
    mov x23, x28
    fmov d10, d24
L0c567d9a6c2f_7:
    cbz w25, L0c567d9a6c2f_22
L0c567d9a6c2f_25:
    b L0c567d9a6c2f_8
L0c567d9a6c2f_22:
    add x24, x24, #1
    mov x14, x26
    cmp x24, x20
    b.ls L0c567d9a6c2f_6
    b L0c567d9a6c2f_24
L0c567d9a6c2f_8:
    str x23, [sp, #640]
    sub x10, x29, #2080
    sub x0, x29, #1424
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x1, x29, #1424
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #656
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #2064]
    ldr x20, [sp, #2056]
    ldr x21, [sp, #2048]
    ldr x22, [sp, #2040]
    ldr x23, [sp, #2032]
    ldr x24, [sp, #2024]
    ldr x25, [sp, #2016]
    ldr x26, [sp, #2008]
    ldr x27, [sp, #2000]
    ldr x28, [sp, #1992]
    ldr d8, [sp, #1984]
    ldr d9, [sp, #1976]
    ldr d10, [sp, #1968]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0c567d9a6c2f_14:
    adrp x0, _lb_text_75a49798179f@PAGE
    add x0, x0, _lb_text_75a49798179f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0c567d9a6c2f_c1:
    adrp x0, _lb_text_0ee12275e9d1@PAGE
    add x0, x0, _lb_text_0ee12275e9d1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0c567d9a6c2f_c2:
    adrp x0, _lb_text_1f139e1f54df@PAGE
    add x0, x0, _lb_text_1f139e1f54df@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0c567d9a6c2f_c3:
    adrp x0, _lb_text_75a49798179f@PAGE
    add x0, x0, _lb_text_75a49798179f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0c567d9a6c2f_c4:
    adrp x0, _lb_text_5031eb55c32d@PAGE
    add x0, x0, _lb_text_5031eb55c32d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11test_assert
_lb_core_11test_assert:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    sub x16, x29, #72
    str x2, [x16]
    str x3, [x16, #8]
    mov x14, x0
    mov x19, x1
    uxtb w20, w4
    adrp x15, _lb_core_15assert_position@PAGE
    add x15, x15, _lb_core_15assert_position@PAGEOFF
    str x14, [x15]
    mov x0, x19
    bl _strlen
    mov x21, x0
    adrp x14, _lb_core_14assert_message@PAGE
    add x14, x14, _lb_core_14assert_message@PAGEOFF
    str x14, [sp, #16]
    movz x9, #1024
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    cbz w20, Lc24fd1246117_4
Lc24fd1246117_3:
    sub sp, x29, #1232
    sub x9, x29, #1232
    str x9, [x29, #-208]
    movz x9, #1024
    str x9, [x29, #-200]
    mov x9, #0
    str x9, [x29, #-192]
    mov x9, #0
    str x9, [x29, #-184]
    mov x1, x19
    mov x2, x21
    sub x0, x29, #208
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, _lb_text_3c214eb16494@PAGE
    add x14, x14, _lb_text_3c214eb16494@PAGEOFF
    mov x1, x14
    sub x0, x29, #208
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [sp, #1160]
    ldr x15, [sp, #1168]
    mov x1, x14
    mov x2, x15
    sub x0, x29, #208
    bl _lb_core_10format_put
    mov w14, w0
    sub x0, x29, #208
    bl _lb_core_13format_finish
    mov x14, x0
    mov x15, x1
    b Lc24fd1246117_5
Lc24fd1246117_4:
    sub sp, x29, #2288
    sub x9, x29, #2288
    sub x16, x29, #1264
    str x9, [x16]
    movz x9, #1024
    sub x16, x29, #1256
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #1248
    str x9, [x16]
    mov x9, #0
    sub x16, x29, #1240
    str x9, [x16]
    mov x1, x19
    mov x2, x21
    sub x0, x29, #1264
    bl _lb_core_10format_put
    mov w14, w0
    sub x0, x29, #1264
    bl _lb_core_13format_finish
    mov x14, x0
    mov x15, x1
Lc24fd1246117_5:
    sub sp, x29, #2288
    mov x1, x14
    mov x2, x15
    sub x0, x29, #160
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [sp, #2144]
    ldr x15, [sp, #2136]
    cmp x14, x15
    b.ls Lc24fd1246117_7
Lc24fd1246117_6:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, _lb_text_75186efc96c8@PAGE
    add x15, x15, _lb_text_75186efc96c8@PAGEOFF
    str x15, [x14, #8]
    movz x9, #60
    str x9, [x14, #16]
    adrp x15, _lb_text_fab521d27917@PAGE
    add x15, x15, _lb_text_fab521d27917@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Lc24fd1246117_8
Lc24fd1246117_7:
    sub x0, x29, #160
    bl _lb_core_13format_finish
    mov x14, x0
    mov x15, x1
    mov w12, #0
Lc24fd1246117_8:
    and w12, w12, #255
    cbz w12, Lc24fd1246117_9
Lc24fd1246117_10:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x11, x29, #128
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x14, #16]
    str x16, [x11, #16]
    b Lc24fd1246117_1
Lc24fd1246117_9:
    b Lc24fd1246117_2
Lc24fd1246117_1:
    sub x9, x29, #120
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
    mov x14, x19
    mov x15, x21
Lc24fd1246117_2:
    str x14, [sp, #2184]
    str x15, [sp, #2192]
    sub sp, x29, #176
    adrp x14, _lb_core_13assert_failed@PAGE
    add x14, x14, _lb_core_13assert_failed@PAGEOFF
    ldr w19, [x14]
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    sub x9, x29, #104
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #176
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x20, x0
    mov x21, x1
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    str x21, [x14, #16]
    adrp x15, _lb_text_716bcc9bac80@PAGE
    add x15, x15, _lb_text_716bcc9bac80@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_Recipe_active
_lb_recipe_Recipe_active:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #280]
    str x20, [sp, #272]
    mov x19, x0
    mov x20, x1
    ldr x14, [x19, #640]
    mov x0, x19
    mov x1, x14
    sub x8, x29, #288
    bl _lb_recipe_Recipe_7path_to
    sub x10, x29, #288
    sub x0, x29, #152
    mov x1, x10
    movz x2, #136
    bl _memcpy
    ldr x14, [sp, #264]
    mov x15, #0
L3a097ba8e6e9_2:
    cmp x15, x14
    b.hs L3a097ba8e6e9_5
    .p2align 4
L3a097ba8e6e9_3:
    movz x10, #16
    cmp x15, x10
    b.hs L3a097ba8e6e9_c1
    sub x10, x29, #152
    ldr x12, [x10, x15, lsl #3]
    cmp x12, x20
    b.ne L3a097ba8e6e9_7
L3a097ba8e6e9_6:
    movz x10, #16
    cmp x20, x10
    b.hs L3a097ba8e6e9_c2
    movz x10, #40
    mul x14, x20, x10
    add x14, x14, x19
    ldrb w14, [x14, #32]
    cmp w14, #0
    cset w14, eq
    b L3a097ba8e6e9_11
L3a097ba8e6e9_7:
L3a097ba8e6e9_8:
    add x15, x15, #1
    cmp x15, x14
    b.lo L3a097ba8e6e9_3
L3a097ba8e6e9_5:
    mov w14, #0
L3a097ba8e6e9_11:
    and w14, w14, #255
    mov x0, x14
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3a097ba8e6e9_c1:
    adrp x0, _lb_text_c8106d67b038@PAGE
    add x0, x0, _lb_text_c8106d67b038@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L3a097ba8e6e9_c2:
    adrp x0, _lb_text_254fc4cfb1c6@PAGE
    add x0, x0, _lb_text_254fc4cfb1c6@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_9key_stage
_lb_recipe_9key_stage:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    adrp x19, _lb_recipe_10stage_keys@PAGE
    add x19, x19, _lb_recipe_10stage_keys@PAGEOFF
    mov x20, #0
L5964449e0e13_1:
    cmp x20, #16
    b.hs L5964449e0e13_4
    .p2align 4
L5964449e0e13_2:
    add x14, x19, x20, lsl #4
    ldr x15, [x14, #8]
    ldr x12, [sp, #8]
    cmp x15, x12
    cset w12, eq
    cbnz w12, L5964449e0e13_8
L5964449e0e13_12:
    b L5964449e0e13_9
L5964449e0e13_8:
    ldr x14, [x14]
    ldr x12, [sp, #0]
    mov x0, x14
    mov x1, x12
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w12, eq
L5964449e0e13_9:
    and w14, w12, #255
    cbz w14, L5964449e0e13_6
L5964449e0e13_5:
    mov x0, x20
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5964449e0e13_6:
L5964449e0e13_7:
    add x20, x20, #1
    cmp x20, #16
    b.lo L5964449e0e13_2
L5964449e0e13_4:
    movn x0, #0
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_Recipe_add
_lb_recipe_Recipe_add:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    mov x14, x0
    mov x15, x1
    cmp x15, #0
    b.lt L6edde8c6bcb9_1
L6edde8c6bcb9_5:
    cmp x15, #16
    b.ge L6edde8c6bcb9_1
L6edde8c6bcb9_4:
    cmp x15, #0
    cset w12, ge
    cmp x15, #16
    cset w13, lt
    cmp w12, #0
    csel w12, w13, w12, ne
    and w12, w12, #255
    cbnz w12, L6edde8c6bcb9_10
L6edde8c6bcb9_13:
    b L6edde8c6bcb9_11
L6edde8c6bcb9_10:
    movz x10, #16
    cmp x15, x10
    b.hs L6edde8c6bcb9_c1
    movz x10, #40
    mul x12, x15, x10
    ldrb w12, [x12, x14]
L6edde8c6bcb9_11:
    and w12, w12, #255
    cbz w12, L6edde8c6bcb9_2
L6edde8c6bcb9_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6edde8c6bcb9_2:
L6edde8c6bcb9_3:
    movz x10, #16
    cmp x15, x10
    b.hs L6edde8c6bcb9_c2
    movz x10, #40
    mul x15, x15, x10
    add x14, x15, x14
    movz x9, #1
    strb w9, [x14]
    mov x9, #0
    strb w9, [x14, #1]
    mov x9, #0
    strh w9, [x14, #2]
    mov x9, #0
    str w9, [x14, #4]
    str d24, [x14, #8]
    str d25, [x14, #16]
    movn x9, #0
    str x9, [x14, #24]
    mov x9, #0
    str x9, [x14, #32]
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6edde8c6bcb9_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L6edde8c6bcb9_c2:
    adrp x0, _lb_text_93e41f230177@PAGE
    add x0, x0, _lb_text_93e41f230177@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_Recipe_connect
_lb_recipe_Recipe_connect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov x12, x2
    cmp x15, #0
    cset w13, ge
    cmp x15, #16
    cset w7, lt
    cmp w13, #0
    csel w13, w7, w13, ne
    and w13, w13, #255
    cbnz w13, L4fcc89ab9d6c_22
L4fcc89ab9d6c_25:
    b L4fcc89ab9d6c_23
L4fcc89ab9d6c_22:
    movz x10, #16
    cmp x15, x10
    b.hs L4fcc89ab9d6c_c1
    movz x10, #40
    mul x13, x15, x10
    ldrb w13, [x13, x14]
L4fcc89ab9d6c_23:
    and w13, w13, #255
    cbz w13, L4fcc89ab9d6c_1
L4fcc89ab9d6c_5:
    cmp x12, #0
    cset w13, ge
    cmp x12, #16
    cset w7, lt
    cmp w13, #0
    csel w13, w7, w13, ne
    and w13, w13, #255
    cbnz w13, L4fcc89ab9d6c_29
L4fcc89ab9d6c_32:
    b L4fcc89ab9d6c_30
L4fcc89ab9d6c_29:
    movz x10, #16
    cmp x12, x10
    b.hs L4fcc89ab9d6c_c2
    movz x10, #40
    mul x13, x12, x10
    ldrb w13, [x13, x14]
L4fcc89ab9d6c_30:
    and w13, w13, #255
    cbz w13, L4fcc89ab9d6c_1
L4fcc89ab9d6c_4:
    cmp x15, x12
    b.ne L4fcc89ab9d6c_2
L4fcc89ab9d6c_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4fcc89ab9d6c_2:
L4fcc89ab9d6c_3:
    adrp x13, _lb_recipe_outputs@PAGE
    add x13, x13, _lb_recipe_outputs@PAGEOFF
    movz x10, #16
    cmp x15, x10
    b.hs L4fcc89ab9d6c_c3
    ldr x13, [x13, x15, lsl #3]
    adrp x7, _lb_recipe_inputs@PAGE
    add x7, x7, _lb_recipe_inputs@PAGEOFF
    movz x10, #16
    cmp x12, x10
    b.hs L4fcc89ab9d6c_c4
    ldr x7, [x7, x12, lsl #3]
    cmp x13, x7
    b.eq L4fcc89ab9d6c_8
L4fcc89ab9d6c_7:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4fcc89ab9d6c_8:
L4fcc89ab9d6c_9:
    mov x13, x15
    mov x7, #0
L4fcc89ab9d6c_11:
    cmp x13, #0
    b.lt L4fcc89ab9d6c_13
    .p2align 4
L4fcc89ab9d6c_14:
    cmp x7, #16
    b.ge L4fcc89ab9d6c_13
L4fcc89ab9d6c_12:
    cmp x12, x13
    b.ne L4fcc89ab9d6c_16
L4fcc89ab9d6c_15:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4fcc89ab9d6c_16:
L4fcc89ab9d6c_17:
    movz x10, #16
    cmp x13, x10
    b.hs L4fcc89ab9d6c_c5
    movz x10, #40
    mul x13, x13, x10
    add x13, x13, x14
    ldr x13, [x13, #24]
    adds x7, x7, #1
    b.vs L4fcc89ab9d6c_c6
    cmp x13, #0
    b.ge L4fcc89ab9d6c_14
L4fcc89ab9d6c_13:
    movz x10, #40
    mul x12, x12, x10
    add x14, x12, x14
    str x15, [x14, #24]
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4fcc89ab9d6c_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4fcc89ab9d6c_c2:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4fcc89ab9d6c_c3:
    adrp x0, _lb_text_02399de35162@PAGE
    add x0, x0, _lb_text_02399de35162@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4fcc89ab9d6c_c4:
    adrp x0, _lb_text_02399de35162@PAGE
    add x0, x0, _lb_text_02399de35162@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4fcc89ab9d6c_c5:
    adrp x0, _lb_text_8aca2206f607@PAGE
    add x0, x0, _lb_text_8aca2206f607@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L4fcc89ab9d6c_c6:
    adrp x0, _lb_text_f2de50372d28@PAGE
    add x0, x0, _lb_text_f2de50372d28@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_Recipe_7path_to
_lb_recipe_Recipe_7path_to:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    mov x19, x0
    mov x20, x1
    sub x0, x29, #160
    mov x1, #0
    movz x2, #136
    bl _memset
    mov x14, #0
    .p2align 4
La77f09b2f249_1:
    cmp x20, #0
    cset w15, ge
    cbz w15, La77f09b2f249_3
La77f09b2f249_4:
    cmp x14, #16
    b.hs La77f09b2f249_3
La77f09b2f249_2:
    sub x10, x29, #160
    str x20, [x10, x14, lsl #3]
    ldr x14, [sp, #272]
    adds x14, x14, #1
    b.cs La77f09b2f249_c1
    str x14, [sp, #272]
    cmp x20, #16
    cset w12, lt
    cmp w15, #0
    csel w15, w12, w15, ne
    and w15, w15, #255
    cbnz w15, La77f09b2f249_23
La77f09b2f249_26:
    b La77f09b2f249_24
La77f09b2f249_23:
    movz x10, #16
    cmp x20, x10
    b.hs La77f09b2f249_c2
    movz x10, #40
    mul x15, x20, x10
    ldrb w15, [x15, x19]
La77f09b2f249_24:
    and w15, w15, #255
    cbnz w15, La77f09b2f249_6
La77f09b2f249_5:
    mov x9, #0
    str x9, [sp, #272]
    sub x10, x29, #160
    sub x0, x29, #296
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x1, x29, #296
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #136
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La77f09b2f249_6:
    movz x10, #16
    cmp x20, x10
    b.hs La77f09b2f249_c3
    movz x10, #40
    mul x15, x20, x10
    add x15, x15, x19
    ldr x20, [x15, #24]
    b La77f09b2f249_1
La77f09b2f249_3:
    cmp x14, #0
    b.eq La77f09b2f249_9
La77f09b2f249_12:
    subs x15, x14, #1
    b.cc La77f09b2f249_c4
    movz x10, #16
    cmp x15, x10
    b.hs La77f09b2f249_c5
    sub x10, x29, #160
    ldr x15, [x10, x15, lsl #3]
    cmp x15, #0
    b.eq La77f09b2f249_10
La77f09b2f249_9:
    mov x9, #0
    str x9, [sp, #272]
    sub x10, x29, #160
    sub x0, x29, #296
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x1, x29, #296
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #136
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La77f09b2f249_10:
    lsr x14, x14, #1
    mov x15, #0
La77f09b2f249_14:
    cmp x15, x14
    b.hs La77f09b2f249_17
    .p2align 4
La77f09b2f249_15:
    movz x10, #16
    cmp x15, x10
    b.hs La77f09b2f249_c6
    sub x9, x29, #160
    add x12, x9, x15, lsl #3
    ldr x13, [x12]
    ldr x7, [sp, #272]
    subs x7, x7, #1
    b.cc La77f09b2f249_c7
    subs x7, x7, x15
    b.cc La77f09b2f249_c8
    movz x10, #16
    cmp x7, x10
    b.hs La77f09b2f249_c9
    sub x10, x29, #160
    ldr x7, [x10, x7, lsl #3]
    str x7, [x12]
    ldr x12, [sp, #272]
    subs x12, x12, #1
    b.cc La77f09b2f249_c10
    subs x12, x12, x15
    b.cc La77f09b2f249_c11
    movz x10, #16
    cmp x12, x10
    b.hs La77f09b2f249_c12
    sub x10, x29, #160
    str x13, [x10, x12, lsl #3]
    add x15, x15, #1
    cmp x15, x14
    b.lo La77f09b2f249_15
La77f09b2f249_17:
    sub x10, x29, #160
    sub x0, x29, #296
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x1, x29, #296
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #136
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La77f09b2f249_c1:
    adrp x0, _lb_text_7b0dd29b2bec@PAGE
    add x0, x0, _lb_text_7b0dd29b2bec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c2:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c3:
    adrp x0, _lb_text_a01d2bd8841c@PAGE
    add x0, x0, _lb_text_a01d2bd8841c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c4:
    adrp x0, _lb_text_f29874deea67@PAGE
    add x0, x0, _lb_text_f29874deea67@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c5:
    adrp x0, _lb_text_f29874deea67@PAGE
    add x0, x0, _lb_text_f29874deea67@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c6:
    adrp x0, _lb_text_0de7e5b4a463@PAGE
    add x0, x0, _lb_text_0de7e5b4a463@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c7:
    adrp x0, _lb_text_194e51201e68@PAGE
    add x0, x0, _lb_text_194e51201e68@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c8:
    adrp x0, _lb_text_194e51201e68@PAGE
    add x0, x0, _lb_text_194e51201e68@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c9:
    adrp x0, _lb_text_194e51201e68@PAGE
    add x0, x0, _lb_text_194e51201e68@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c10:
    adrp x0, _lb_text_a09e87c49e02@PAGE
    add x0, x0, _lb_text_a09e87c49e02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c11:
    adrp x0, _lb_text_a09e87c49e02@PAGE
    add x0, x0, _lb_text_a09e87c49e02@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La77f09b2f249_c12:
    adrp x0, _lb_text_a09e87c49e02@PAGE
    add x0, x0, _lb_text_a09e87c49e02@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_10format_put
_lb_core_10format_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    str x22, [sp, #16]
    str x23, [sp, #8]
    mov x19, x0
    mov x20, x1
    mov x21, x2
    ldr x14, [x19, #16]
    ldr x15, [x19, #8]
    cmp x14, x15
    b.ls L4d27a783b375_2
L4d27a783b375_1:
    movz x0, #1
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    ldr x23, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4d27a783b375_2:
L4d27a783b375_3:
    sub x12, x15, x14
    cmp x21, x12
    b.ls L4d27a783b375_6
L4d27a783b375_8:
    ldr x12, [x19, #24]
    cmp x12, #0
    b.eq L4d27a783b375_5
L4d27a783b375_9:
    adds x14, x14, x21
    b.cs L4d27a783b375_c1
    movz x10, #2
    umulh x11, x15, x10
    lsl x15, x15, #1
    cbnz x11, L4d27a783b375_c2
    cmp x15, x14
    b.hi L4d27a783b375_31
L4d27a783b375_30:
    adds x14, x14, #1
    b.cs L4d27a783b375_c3
    mov x22, x14
    b L4d27a783b375_32
L4d27a783b375_31:
    mov x22, x15
L4d27a783b375_32:
    cmp x12, #2
    b.ne L4d27a783b375_34
L4d27a783b375_33:
    ldr x14, [x19]
    mov x0, x14
    mov x1, x22
    bl _realloc
    mov x14, x0
    cbz x14, L4d27a783b375_37
L4d27a783b375_36:
    b L4d27a783b375_38
L4d27a783b375_37:
    mov w14, #0
    b L4d27a783b375_47
L4d27a783b375_38:
    str x14, [x19]
    b L4d27a783b375_35
L4d27a783b375_34:
    mov x0, x22
    bl _malloc
    mov x23, x0
    cbz x23, L4d27a783b375_41
L4d27a783b375_40:
    b L4d27a783b375_42
L4d27a783b375_41:
    mov w14, #0
    b L4d27a783b375_47
L4d27a783b375_42:
    ldr x14, [x19]
    ldr x15, [x19, #16]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcpy
    mov x14, x0
    cbz x14, L4d27a783b375_45
L4d27a783b375_44:
    str x23, [x19]
    movz x9, #2
    str x9, [x19, #24]
L4d27a783b375_35:
    str x22, [x19, #8]
    movz w14, #1
L4d27a783b375_47:
    cbnz w14, L4d27a783b375_6
L4d27a783b375_5:
    cbz x20, L4d27a783b375_11
L4d27a783b375_13:
    ldr x14, [x19, #8]
    ldr x15, [x19, #16]
    cmp x14, x15
    b.ls L4d27a783b375_15
L4d27a783b375_14:
    ldr x12, [x19]
    add x12, x15, x12
    sub x14, x14, x15
    mov x0, x12
    mov x1, x20
    mov x2, x14
    bl _memcpy
    mov x14, x0
    cbz x14, L4d27a783b375_18
L4d27a783b375_17:
L4d27a783b375_15:
L4d27a783b375_16:
L4d27a783b375_11:
L4d27a783b375_12:
    ldr x14, [x19, #8]
    add x14, x14, #1
    str x14, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    ldr x23, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4d27a783b375_6:
L4d27a783b375_7:
    cbz x20, L4d27a783b375_21
L4d27a783b375_23:
    cmp x21, #0
    b.ls L4d27a783b375_25
L4d27a783b375_24:
    ldr x14, [x19, #16]
    ldr x15, [x19]
    add x14, x14, x15
    mov x0, x14
    mov x1, x20
    mov x2, x21
    bl _memcpy
    mov x14, x0
    cbz x14, L4d27a783b375_28
L4d27a783b375_27:
L4d27a783b375_25:
L4d27a783b375_26:
L4d27a783b375_21:
L4d27a783b375_22:
    ldr x14, [x19, #16]
    adds x14, x14, x21
    b.cs L4d27a783b375_c4
    str x14, [x19, #16]
    mov x0, #0
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    ldr x23, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4d27a783b375_45:
    adrp x0, _lb_text_08548d6fec0f@PAGE
    add x0, x0, _lb_text_08548d6fec0f@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_18:
    adrp x0, _lb_text_a47bdc9c9256@PAGE
    add x0, x0, _lb_text_a47bdc9c9256@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_28:
    adrp x0, _lb_text_46ec23cae353@PAGE
    add x0, x0, _lb_text_46ec23cae353@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_c1:
    adrp x0, _lb_text_a69d88c65a29@PAGE
    add x0, x0, _lb_text_a69d88c65a29@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_c2:
    adrp x0, _lb_text_2ec4ce27a613@PAGE
    add x0, x0, _lb_text_2ec4ce27a613@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_c3:
    adrp x0, _lb_text_fd9a5ac2118e@PAGE
    add x0, x0, _lb_text_fd9a5ac2118e@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L4d27a783b375_c4:
    adrp x0, _lb_text_c0a0d55a5506@PAGE
    add x0, x0, _lb_text_c0a0d55a5506@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_13format_finish
_lb_core_13format_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    ldr x15, [x14, #16]
    ldr x12, [x14, #8]
    cmp x15, x12
    b.hs Ld95f40321501_2
Ld95f40321501_1:
    ldr x12, [x14]
    mov x9, #0
    strb w9, [x15, x12]
Ld95f40321501_2:
Ld95f40321501_3:
    ldr x15, [x14, #16]
    ldr x12, [x14, #8]
    cmp x15, x12
    b.ls Ld95f40321501_5
Ld95f40321501_4:
    cmp x12, #3
    b.hs Ld95f40321501_8
Ld95f40321501_7:
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    mov x0, x14
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95f40321501_8:
Ld95f40321501_9:
    sub x15, x12, #3
Ld95f40321501_11:
    cmp x15, #0
    b.ls Ld95f40321501_13
    .p2align 4
Ld95f40321501_14:
    ldr x12, [x14]
    ldrb w12, [x12, x15]
    and w12, w12, #192
    cmp w12, #128
    b.ne Ld95f40321501_13
Ld95f40321501_12:
    sub x15, x15, #1
    cmp x15, #0
    b.hi Ld95f40321501_14
Ld95f40321501_13:
    ldr x12, [x14]
    movz x9, #46
    strb w9, [x12, x15]
    adds x12, x15, #1
    b.cs Ld95f40321501_c1
    ldr x13, [x14]
    movz x9, #46
    strb w9, [x12, x13]
    adds x12, x15, #2
    b.cs Ld95f40321501_c2
    ldr x13, [x14]
    movz x9, #46
    strb w9, [x12, x13]
    ldr x14, [x14]
    adds x15, x15, #3
    b.cs Ld95f40321501_c3
    mov x0, x14
    mov x1, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95f40321501_5:
Ld95f40321501_6:
    ldr x14, [x14]
    mov x0, x14
    mov x1, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld95f40321501_c1:
    adrp x0, _lb_text_dd0a269f1f85@PAGE
    add x0, x0, _lb_text_dd0a269f1f85@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95f40321501_c2:
    adrp x0, _lb_text_accdb72acd2b@PAGE
    add x0, x0, _lb_text_accdb72acd2b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld95f40321501_c3:
    adrp x0, _lb_text_c4cf32724abd@PAGE
    add x0, x0, _lb_text_c4cf32724abd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_15message_handled
_lb_core_15message_handled:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    sub x16, x29, #24
    str x0, [x16]
    str x1, [x16, #8]
    ldr x19, [sp, #40]
    adrp x0, _lb_core_11raised_room@TLVPPAGE
    ldr x0, [x0, _lb_core_11raised_room@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    cmp x19, x14
    b.lo L58a9d5c33bbe_8
L58a9d5c33bbe_11:
    movz x10, #16384
    adds x15, x14, x10
    b.cs L58a9d5c33bbe_c1
    cmp x19, x15
    b.ls L58a9d5c33bbe_9
L58a9d5c33bbe_8:
    sub x11, x29, #24
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #24
    sub x11, x29, #40
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #48]
    mov x19, #0
    mov x14, #0
    b L58a9d5c33bbe_14
L58a9d5c33bbe_9:
L58a9d5c33bbe_10:
    sub x19, x19, x14
    str x19, [sp, #8]
    movz x9, #1
    strb w9, [sp, #16]
    sub x10, x29, #56
    sub x11, x29, #40
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [sp, #32]
    str x19, [sp, #40]
    str x14, [sp, #48]
L58a9d5c33bbe_14:
    str x19, [sp, #40]
    str x14, [sp, #48]
    ldrb w14, [sp, #48]
    cbz w14, L58a9d5c33bbe_2
L58a9d5c33bbe_4:
    adrp x0, _lb_core_10raised_top@TLVPPAGE
    ldr x0, [x0, _lb_core_10raised_top@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    cmp x19, x15
    b.hs L58a9d5c33bbe_6
L58a9d5c33bbe_5:
    str x19, [x14]
L58a9d5c33bbe_6:
L58a9d5c33bbe_7:
L58a9d5c33bbe_2:
L58a9d5c33bbe_3:
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58a9d5c33bbe_c1:
    adrp x0, _lb_text_63c54fdf73c3@PAGE
    add x0, x0, _lb_text_63c54fdf73c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_14message_raised
_lb_core_14message_raised:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    ldr x14, [sp, #56]
    movz x10, #4096
    cmp x14, x10
    b.ls L0fbdddc6b1d1_2
L0fbdddc6b1d1_1:
    ldr x15, [sp, #48]
    movz x12, #4093
L0fbdddc6b1d1_4:
    cmp x12, #0
    b.ls L0fbdddc6b1d1_6
    .p2align 4
L0fbdddc6b1d1_7:
    cmp x12, x14
    b.hs L0fbdddc6b1d1_c1
    ldrb w13, [x15, x12]
    and w13, w13, #192
    cmp w13, #128
    b.ne L0fbdddc6b1d1_6
L0fbdddc6b1d1_5:
    sub x12, x12, #1
    cmp x12, #0
    b.hi L0fbdddc6b1d1_7
L0fbdddc6b1d1_6:
    mov x19, x12
    movz w20, #1
    b L0fbdddc6b1d1_3
L0fbdddc6b1d1_2:
    mov x19, x14
    mov w20, #0
L0fbdddc6b1d1_3:
    cmp w20, #0
    movz x10, #3
    mov x11, #0
    csel x14, x10, x11, ne
    adds x21, x14, x19
    b.cs L0fbdddc6b1d1_c2
    adrp x0, _lb_core_10raised_top@TLVPPAGE
    ldr x0, [x0, _lb_core_10raised_top@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    ldr x23, [x22]
    ldr x24, [sp, #32]
    adrp x0, _lb_core_11raised_room@TLVPPAGE
    ldr x0, [x0, _lb_core_11raised_room@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    cmp x24, x14
    b.lo L0fbdddc6b1d1_31
L0fbdddc6b1d1_34:
    movz x10, #16384
    adds x15, x14, x10
    b.cs L0fbdddc6b1d1_c3
    cmp x24, x15
    b.ls L0fbdddc6b1d1_32
L0fbdddc6b1d1_31:
    sub x11, x29, #80
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #80
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    mov x15, #0
    mov x12, #0
    b L0fbdddc6b1d1_37
L0fbdddc6b1d1_32:
L0fbdddc6b1d1_33:
    sub x15, x24, x14
    str x15, [sp, #0]
    movz x9, #1
    strb w9, [sp, #8]
    sub x10, x29, #112
    sub x11, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x12, [sp, #24]
    str x15, [sp, #32]
    str x12, [sp, #40]
L0fbdddc6b1d1_37:
    str x15, [sp, #32]
    str x12, [sp, #40]
    ldrb w12, [sp, #40]
    cbz w12, L0fbdddc6b1d1_12
L0fbdddc6b1d1_14:
    cmp x15, x23
    b.hi L0fbdddc6b1d1_16
L0fbdddc6b1d1_18:
    adds x12, x21, x15
    b.cs L0fbdddc6b1d1_c4
    movz x10, #16384
    cmp x12, x10
    b.hi L0fbdddc6b1d1_16
L0fbdddc6b1d1_15:
    b L0fbdddc6b1d1_17
L0fbdddc6b1d1_16:
    mov x15, x23
L0fbdddc6b1d1_17:
    b L0fbdddc6b1d1_13
L0fbdddc6b1d1_12:
    mov x15, x23
L0fbdddc6b1d1_13:
    adds x12, x21, x15
    b.cs L0fbdddc6b1d1_c5
    movz x10, #16384
    cmp x12, x10
    mov x10, #0
    csel x23, x10, x15, hi
    movz x10, #16384
    cmp x23, x10
    b.hi L0fbdddc6b1d1_c6
    add x24, x23, x14
    cmp x19, #0
    b.ls L0fbdddc6b1d1_23
L0fbdddc6b1d1_22:
    ldr x14, [sp, #48]
    mov x0, x24
    mov x1, x14
    mov x2, x19
    bl _memmove
    mov x14, x0
    cbz x14, L0fbdddc6b1d1_26
L0fbdddc6b1d1_25:
L0fbdddc6b1d1_23:
L0fbdddc6b1d1_24:
    cbz w20, L0fbdddc6b1d1_28
L0fbdddc6b1d1_27:
    cmp x19, x21
    b.hs L0fbdddc6b1d1_c7
    movz x9, #226
    strb w9, [x19, x24]
    add x14, x19, #1
    cmp x14, x21
    b.hs L0fbdddc6b1d1_c8
    movz x9, #128
    strb w9, [x14, x24]
    adds x14, x19, #2
    b.cs L0fbdddc6b1d1_c9
    cmp x14, x21
    b.hs L0fbdddc6b1d1_c10
    movz x9, #166
    strb w9, [x14, x24]
L0fbdddc6b1d1_28:
L0fbdddc6b1d1_29:
    adds x14, x23, x21
    b.cs L0fbdddc6b1d1_c11
    str x14, [x22]
    mov x0, x24
    mov x1, x21
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0fbdddc6b1d1_26:
    adrp x0, _lb_text_c1a5b31044f0@PAGE
    add x0, x0, _lb_text_c1a5b31044f0@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c1:
    adrp x0, _lb_text_a79580ce1324@PAGE
    add x0, x0, _lb_text_a79580ce1324@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c2:
    adrp x0, _lb_text_b3c91203c427@PAGE
    add x0, x0, _lb_text_b3c91203c427@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c3:
    adrp x0, _lb_text_63c54fdf73c3@PAGE
    add x0, x0, _lb_text_63c54fdf73c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c4:
    adrp x0, _lb_text_cba6ce14efdf@PAGE
    add x0, x0, _lb_text_cba6ce14efdf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c5:
    adrp x0, _lb_text_9359ceaadce6@PAGE
    add x0, x0, _lb_text_9359ceaadce6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c6:
    adrp x0, _lb_text_79d3cadb3ea5@PAGE
    add x0, x0, _lb_text_79d3cadb3ea5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c7:
    adrp x0, _lb_text_d5e3d5030bd5@PAGE
    add x0, x0, _lb_text_d5e3d5030bd5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c8:
    adrp x0, _lb_text_55716037d303@PAGE
    add x0, x0, _lb_text_55716037d303@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c9:
    adrp x0, _lb_text_0c88c5290b22@PAGE
    add x0, x0, _lb_text_0c88c5290b22@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c10:
    adrp x0, _lb_text_0c88c5290b22@PAGE
    add x0, x0, _lb_text_0c88c5290b22@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0fbdddc6b1d1_c11:
    adrp x0, _lb_text_cd1efd88b9c6@PAGE
    add x0, x0, _lb_text_cd1efd88b9c6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_Recipe_has
_lb_recipe_Recipe_has:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x15, #0
    cset w12, ge
    cmp x15, #16
    cset w13, lt
    cmp w12, #0
    csel w12, w13, w12, ne
    and w12, w12, #255
    cbnz w12, L3dff4b5b92cf_3
L3dff4b5b92cf_6:
    b L3dff4b5b92cf_4
L3dff4b5b92cf_3:
    movz x10, #16
    cmp x15, x10
    b.hs L3dff4b5b92cf_c1
    movz x10, #40
    mul x15, x15, x10
    ldrb w12, [x15, x14]
L3dff4b5b92cf_4:
    and w14, w12, #255
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3dff4b5b92cf_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_7in_room
_lb_core_7in_room:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    adrp x0, _lb_core_11raised_room@TLVPPAGE
    ldr x0, [x0, _lb_core_11raised_room@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [sp, #16]
    cmp x15, x14
    b.lo L57ad3f98c193_1
L57ad3f98c193_4:
    movz x10, #16384
    adds x12, x14, x10
    b.cs L57ad3f98c193_c1
    cmp x15, x12
    b.ls L57ad3f98c193_2
L57ad3f98c193_1:
    sub x11, x29, #16
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, #0
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57ad3f98c193_2:
L57ad3f98c193_3:
    sub x14, x15, x14
    str x14, [sp, #16]
    movz x9, #1
    strb w9, [sp, #24]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #8]
    mov x0, x14
    mov x1, x15
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L57ad3f98c193_c1:
    adrp x0, _lb_text_63c54fdf73c3@PAGE
    add x0, x0, _lb_text_63c54fdf73c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_1
_lb_test_1:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1408
    mov x0, #0
    sub x8, x29, #656
    bl _lb_recipe_mode
    sub x10, x29, #656
    sub x0, x29, #1312
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x0, x29, #1312
    movz x1, #7
    movz x2, #6
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbz w14, L13acce4bdb43_1
L13acce4bdb43_2:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_2874f361ce4a@PAGE
    add x14, x14, _lb_text_2874f361ce4a@PAGEOFF
    adrp x15, _lb_text_db6294bdd7d0@PAGE
    add x15, x15, _lb_text_db6294bdd7d0@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1328
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_1:
    sub x0, x29, #1312
    movz x1, #5
    movz x2, #7
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbz w14, L13acce4bdb43_4
L13acce4bdb43_5:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_dbff72eb9596@PAGE
    add x14, x14, _lb_text_dbff72eb9596@PAGEOFF
    adrp x15, _lb_text_68abd7e7e940@PAGE
    add x15, x15, _lb_text_68abd7e7e940@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1344
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_4:
    sub x0, x29, #1312
    movz x1, #2
    movz x2, #2
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbz w14, L13acce4bdb43_7
L13acce4bdb43_8:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_3e77bcb7d4c5@PAGE
    add x14, x14, _lb_text_3e77bcb7d4c5@PAGEOFF
    adrp x15, _lb_text_931c3c4cf166@PAGE
    add x15, x15, _lb_text_931c3c4cf166@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1360
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_7:
    sub x0, x29, #1312
    movz x1, #2
    movz x2, #1
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbz w14, L13acce4bdb43_10
L13acce4bdb43_11:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_e6799d85e603@PAGE
    add x14, x14, _lb_text_e6799d85e603@PAGEOFF
    adrp x15, _lb_text_0d1c47a1f032@PAGE
    add x15, x15, _lb_text_0d1c47a1f032@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1376
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_10:
    fmov d24, xzr
    fmov d0, d24
    fmov d1, d24
    sub x0, x29, #1312
    movz x1, #3
    bl _lb_recipe_Recipe_add
    mov w14, w0
    cbz w14, L13acce4bdb43_14
L13acce4bdb43_15:
    sub x0, x29, #1312
    movz x1, #2
    movz x2, #3
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbnz w14, L13acce4bdb43_13
L13acce4bdb43_14:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_abe85706038d@PAGE
    add x14, x14, _lb_text_abe85706038d@PAGEOFF
    adrp x15, _lb_text_9f78211ba709@PAGE
    add x15, x15, _lb_text_9f78211ba709@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1392
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_13:
    sub x0, x29, #1312
    movz x1, #3
    movz x2, #5
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    cbz w14, L13acce4bdb43_18
L13acce4bdb43_19:
    sub x0, x29, #1312
    movz x1, #3
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbnz w14, L13acce4bdb43_17
L13acce4bdb43_18:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_a972e58d525b@PAGE
    add x14, x14, _lb_text_a972e58d525b@PAGEOFF
    adrp x15, _lb_text_31bc15daf098@PAGE
    add x15, x15, _lb_text_31bc15daf098@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1408
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13acce4bdb43_17:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_2
_lb_test_2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1344
    movz x0, #1
    sub x8, x29, #656
    bl _lb_recipe_mode
    sub x10, x29, #656
    sub x0, x29, #1312
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x0, x29, #1312
    movz x1, #3
    movz x2, #2
    bl _lb_recipe_Recipe_12insert_after
    ldr x14, [sp, #176]
    cmp x14, #2
    b.ne Ldd595f3f96ec_2
Ldd595f3f96ec_3:
    ldr x14, [sp, #256]
    cmp x14, #3
    b.eq Ldd595f3f96ec_1
Ldd595f3f96ec_2:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_a981b6d44dd0@PAGE
    add x14, x14, _lb_text_a981b6d44dd0@PAGEOFF
    adrp x15, _lb_text_deab3b53ecdd@PAGE
    add x15, x15, _lb_text_deab3b53ecdd@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1328
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldd595f3f96ec_1:
    sub x0, x29, #1312
    movz x1, #3
    bl _lb_recipe_Recipe_active
    mov w14, w0
    cbz w14, Ldd595f3f96ec_6
Ldd595f3f96ec_7:
    ldr x14, [sp, #672]
    mov x1, x14
    sub x0, x29, #1312
    sub x8, x29, #136
    bl _lb_recipe_Recipe_7path_to
    sub x10, x29, #136
    sub x0, x29, #272
    mov x1, x10
    movz x2, #136
    bl _memcpy
    sub x10, x29, #272
    sub x0, x29, #136
    mov x1, x10
    movz x2, #136
    bl _memcpy
    ldr x14, [sp, #1336]
    cmp x14, #9
    b.eq Ldd595f3f96ec_5
Ldd595f3f96ec_6:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_1915c5af22e5@PAGE
    add x14, x14, _lb_text_1915c5af22e5@PAGEOFF
    adrp x15, _lb_text_3ab34358a102@PAGE
    add x15, x15, _lb_text_3ab34358a102@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #1344
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ldd595f3f96ec_5:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_Recipe_12insert_after
_lb_recipe_Recipe_12insert_after:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    str x20, [sp, #16]
    str x21, [sp, #8]
    str x22, [sp, #0]
    mov x19, x0
    mov x20, x1
    mov x21, x2
    cmp x21, #0
    cset w14, ge
    cmp x21, #16
    cset w15, lt
    cmp w14, #0
    csel w14, w15, w14, ne
    and w14, w14, #255
    cbnz w14, L1cefab7a150e_25
L1cefab7a150e_28:
    b L1cefab7a150e_26
L1cefab7a150e_25:
    movz x10, #16
    cmp x21, x10
    b.hs L1cefab7a150e_c1
    movz x10, #40
    mul x14, x21, x10
    ldrb w14, [x14, x19]
L1cefab7a150e_26:
    and w14, w14, #255
    cbz w14, L1cefab7a150e_1
L1cefab7a150e_4:
    cmp x20, #0
    cset w14, ge
    cmp x20, #16
    cset w15, lt
    cmp w14, #0
    csel w14, w15, w14, ne
    and w14, w14, #255
    cbnz w14, L1cefab7a150e_32
L1cefab7a150e_35:
    b L1cefab7a150e_33
L1cefab7a150e_32:
    movz x10, #16
    cmp x20, x10
    b.hs L1cefab7a150e_c2
    movz x10, #40
    mul x14, x20, x10
    ldrb w14, [x14, x19]
L1cefab7a150e_33:
    and w14, w14, #255
    cbz w14, L1cefab7a150e_2
L1cefab7a150e_1:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr x21, [sp, #8]
    ldr x22, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1cefab7a150e_2:
L1cefab7a150e_3:
    movz x10, #16
    cmp x21, x10
    b.hs L1cefab7a150e_c3
    movz x10, #40
    mul x14, x21, x10
    add x14, x14, x19
    ldr d24, [x14, #16]
    adrp x15, _lb_recipe_12mode_spacing@PAGE
    add x15, x15, _lb_recipe_12mode_spacing@PAGEOFF
    mov x12, #0
L1cefab7a150e_6:
    cmp x12, #16
    b.hs L1cefab7a150e_9
    .p2align 4
L1cefab7a150e_7:
    movz x10, #40
    mul x13, x12, x10
    add x13, x13, x19
    ldrb w7, [x13]
    cbz w7, L1cefab7a150e_11
L1cefab7a150e_13:
    ldr d25, [x13, #16]
    fcmp d25, d24
    b.le L1cefab7a150e_11
L1cefab7a150e_10:
    ldr d26, [x15]
    fadd d25, d26, d25
    str d25, [x13, #16]
L1cefab7a150e_11:
L1cefab7a150e_12:
    add x12, x12, #1
    cmp x12, #16
    b.lo L1cefab7a150e_7
L1cefab7a150e_9:
    ldr d25, [x14, #8]
    ldr d26, [x15]
    fadd d24, d26, d24
    fmov d0, d25
    fmov d1, d24
    mov x0, x19
    mov x1, x20
    bl _lb_recipe_Recipe_add
    mov w14, w0
    mov x22, #0
L1cefab7a150e_14:
    cmp x22, #16
    b.hs L1cefab7a150e_17
    .p2align 4
L1cefab7a150e_15:
    cmp x20, x22
    b.eq L1cefab7a150e_19
L1cefab7a150e_22:
    movz x10, #40
    mul x14, x22, x10
    add x14, x14, x19
    ldrb w15, [x14]
    cbz w15, L1cefab7a150e_19
L1cefab7a150e_21:
    ldr x15, [x14, #24]
    cmp x15, x21
    b.ne L1cefab7a150e_19
L1cefab7a150e_18:
    movn x9, #0
    str x9, [x14, #24]
    mov x0, x19
    mov x1, x20
    mov x2, x22
    bl _lb_recipe_Recipe_connect
    mov w14, w0
L1cefab7a150e_19:
L1cefab7a150e_20:
    add x22, x22, #1
    cmp x22, #16
    b.lo L1cefab7a150e_15
L1cefab7a150e_17:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _lb_recipe_Recipe_connect
    mov w14, w0
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr x21, [sp, #8]
    ldr x22, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1cefab7a150e_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1cefab7a150e_c2:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L1cefab7a150e_c3:
    adrp x0, _lb_text_f15552d80f37@PAGE
    add x0, x0, _lb_text_f15552d80f37@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_3
_lb_test_3:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2208
    str x19, [sp, #2200]
    str x20, [sp, #2192]
    movz x0, #1
    sub x8, x29, #672
    bl _lb_recipe_mode
    sub x10, x29, #672
    sub x0, x29, #1984
    mov x1, x10
    movz x2, #656
    bl _memcpy
    movz x9, #1
    str w9, [sp, #2176]
    movz x9, #1
    cmp w9, #0
    movz x10, #1
    movz x11, #1
    csel w14, w10, w11, ne
    and w14, w14, #255
    cbnz w14, Lafaa50e6529e_53
Lafaa50e6529e_56:
    b Lafaa50e6529e_54
Lafaa50e6529e_53:
    ldrb w14, [sp, #304]
Lafaa50e6529e_54:
    and w14, w14, #255
    cbz w14, Lafaa50e6529e_36
Lafaa50e6529e_35:
    ldrb w14, [sp, #2176]
    strb w14, [sp, #336]
Lafaa50e6529e_36:
Lafaa50e6529e_37:
    sub x0, x29, #1984
    movz x1, #6
    bl _lb_recipe_Recipe_11set_compare
    ldr x14, [sp, #872]
    cmp x14, #0
    cset w15, ge
    cbnz w15, Lafaa50e6529e_39
Lafaa50e6529e_49:
    mov w12, w15
    b Lafaa50e6529e_40
Lafaa50e6529e_39:
    ldr x12, [sp, #864]
    cmp x12, x14
    cset w12, ne
Lafaa50e6529e_40:
    and w12, w12, #255
    cbnz w12, Lafaa50e6529e_41
Lafaa50e6529e_50:
    b Lafaa50e6529e_42
Lafaa50e6529e_41:
    cmp x14, #16
    cset w12, lt
    cmp w15, #0
    csel w15, w12, w15, ne
    and w15, w15, #255
    cbnz w15, Lafaa50e6529e_60
Lafaa50e6529e_63:
    b Lafaa50e6529e_61
Lafaa50e6529e_60:
    movz x10, #16
    cmp x14, x10
    b.hs Lafaa50e6529e_c1
    movz x10, #40
    mul x14, x14, x10
    sub x11, x29, #1984
    ldrb w15, [x14, x11]
Lafaa50e6529e_61:
    and w12, w15, #255
Lafaa50e6529e_42:
    and w14, w12, #255
    cbnz w14, Lafaa50e6529e_1
Lafaa50e6529e_2:
    mov x9, #0
    str x9, [sp, #208]
    mov x9, #0
    str x9, [sp, #216]
    adrp x14, _lb_text_f3f026334ce1@PAGE
    add x14, x14, _lb_text_f3f026334ce1@PAGEOFF
    adrp x15, _lb_text_aa87a06fb352@PAGE
    add x15, x15, _lb_text_aa87a06fb352@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2000
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_1:
    fmov d24, #30.0000000
    fmov d25, #-12.0000000
    movz x9, #1
    cmp w9, #0
    movz x10, #1
    movz x11, #1
    csel w14, w10, w11, ne
    and w14, w14, #255
    cbnz w14, Lafaa50e6529e_67
Lafaa50e6529e_70:
    b Lafaa50e6529e_68
Lafaa50e6529e_67:
    ldrb w14, [sp, #424]
Lafaa50e6529e_68:
    and w14, w14, #255
    cbz w14, Lafaa50e6529e_46
Lafaa50e6529e_45:
    str d24, [sp, #432]
    str d25, [sp, #440]
Lafaa50e6529e_46:
Lafaa50e6529e_47:
    sub x11, x29, #2040
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x0, x29, #1984
    sub x1, x29, #2040
    bl _lb_recipe_7text_of
    mov w14, w0
    cbz w14, Lafaa50e6529e_6
Lafaa50e6529e_7:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #2064
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    b Lafaa50e6529e_4
Lafaa50e6529e_6:
    b Lafaa50e6529e_5
Lafaa50e6529e_4:
    mov x9, #0
    str x9, [sp, #128]
    mov x9, #0
    str x9, [sp, #136]
    adrp x14, _lb_text_96d7068b0a01@PAGE
    add x14, x14, _lb_text_96d7068b0a01@PAGEOFF
    adrp x15, _lb_text_92ec1b67cbae@PAGE
    add x15, x15, _lb_text_92ec1b67cbae@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2080
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    ldrsw x20, [x19, #20]
    add x14, x19, #8
    sub x11, x29, #2096
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str w9, [sp, #124]
    sub x9, x29, #2096
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #2056
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_core_14message_raised
    mov x14, x0
    mov x15, x1
    str x14, [x19, #8]
    str x15, [x19, #16]
    str w20, [x19, #20]
    sub x11, x29, #40
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #40
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_5:
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    str x14, [sp, #96]
    str x15, [sp, #104]
    sub x9, x29, #2112
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #1328
    bl _lb_recipe_parse
    sub x10, x29, #1328
    sub x0, x29, #672
    mov x1, x10
    movz x2, #656
    bl _memcpy
    mov x14, #0
Lafaa50e6529e_12:
    cmp x14, #16
    b.hs Lafaa50e6529e_15
    .p2align 4
Lafaa50e6529e_13:
    movz x10, #40
    mul x15, x14, x10
    sub x10, x29, #672
    add x12, x15, x10
    ldrb w13, [x12]
    sub x10, x29, #1984
    add x15, x15, x10
    ldrb w7, [x15]
    cmp w13, w7
    b.eq Lafaa50e6529e_16
Lafaa50e6529e_17:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_d45efd164211@PAGE
    add x14, x14, _lb_text_d45efd164211@PAGEOFF
    adrp x15, _lb_text_4cd85224f1e2@PAGE
    add x15, x15, _lb_text_4cd85224f1e2@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2128
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
    sub x11, x29, #696
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #696
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_16:
    ldr x13, [x12, #24]
    ldr x7, [x15, #24]
    cmp x13, x7
    b.eq Lafaa50e6529e_19
Lafaa50e6529e_20:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_1e5086f1e4bd@PAGE
    add x14, x14, _lb_text_1e5086f1e4bd@PAGEOFF
    adrp x15, _lb_text_7e3c8d38e254@PAGE
    add x15, x15, _lb_text_7e3c8d38e254@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2144
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
    sub x11, x29, #720
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #720
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_19:
    ldrb w13, [x12, #32]
    ldrb w7, [x15, #32]
    cmp w13, w7
    b.eq Lafaa50e6529e_22
Lafaa50e6529e_23:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_e69fd20f4da7@PAGE
    add x14, x14, _lb_text_e69fd20f4da7@PAGEOFF
    adrp x15, _lb_text_8d5fc62665bc@PAGE
    add x15, x15, _lb_text_8d5fc62665bc@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2160
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
    sub x11, x29, #744
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #744
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_22:
    ldr d24, [x12, #8]
    ldr d25, [x15, #8]
    fcmp d24, d25
    b.ne Lafaa50e6529e_26
Lafaa50e6529e_27:
    ldr d24, [x12, #16]
    ldr d25, [x15, #16]
    fcmp d24, d25
    b.eq Lafaa50e6529e_25
Lafaa50e6529e_26:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_c31514db1485@PAGE
    add x14, x14, _lb_text_c31514db1485@PAGEOFF
    adrp x15, _lb_text_99efde344b30@PAGE
    add x15, x15, _lb_text_99efde344b30@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2176
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
    sub x11, x29, #768
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #768
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_25:
    add x14, x14, #1
    cmp x14, #16
    b.lo Lafaa50e6529e_13
Lafaa50e6529e_15:
    ldr x14, [sp, #2176]
    ldr x15, [sp, #864]
    cmp x14, x15
    b.eq Lafaa50e6529e_29
Lafaa50e6529e_30:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_e7240dcb63eb@PAGE
    add x14, x14, _lb_text_e7240dcb63eb@PAGEOFF
    adrp x15, _lb_text_abaef6fdbda6@PAGE
    add x15, x15, _lb_text_abaef6fdbda6@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2192
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
    sub x11, x29, #696
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #696
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_29:
    ldr x14, [sp, #2184]
    ldr x15, [sp, #872]
    cmp x14, x15
    b.eq Lafaa50e6529e_32
Lafaa50e6529e_33:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_094e84675be5@PAGE
    add x14, x14, _lb_text_094e84675be5@PAGEOFF
    adrp x15, _lb_text_9a685860a435@PAGE
    add x15, x15, _lb_text_9a685860a435@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #2208
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
    sub x11, x29, #40
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #40
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_32:
    sub x0, x29, #2040
    bl _lb_20luce_std_collections_Buffer_destroy
    mov x0, #0
    ldr x19, [sp, #2200]
    ldr x20, [sp, #2192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lafaa50e6529e_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_Recipe_11set_compare
_lb_recipe_Recipe_11set_compare:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x15, #0
    cset w12, ge
    cmp x15, #16
    cset w13, lt
    cmp w12, #0
    csel w12, w13, w12, ne
    and w12, w12, #255
    cbnz w12, L6bdfc35aaab4_9
L6bdfc35aaab4_12:
    b L6bdfc35aaab4_10
L6bdfc35aaab4_9:
    movz x10, #16
    cmp x15, x10
    b.hs L6bdfc35aaab4_c1
    movz x10, #40
    mul x12, x15, x10
    ldrb w12, [x12, x14]
L6bdfc35aaab4_10:
    and w12, w12, #255
    cbnz w12, L6bdfc35aaab4_4
L6bdfc35aaab4_6:
    b L6bdfc35aaab4_5
L6bdfc35aaab4_4:
    ldr x12, [x14, #640]
    cmp x12, x15
    cset w12, ne
L6bdfc35aaab4_5:
    and w12, w12, #255
    cmp w12, #0
    movn x11, #0
    csel x15, x15, x11, ne
    str x15, [x14, #648]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6bdfc35aaab4_c1:
    adrp x0, _lb_text_932a33951216@PAGE
    add x0, x0, _lb_text_932a33951216@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_7text_of
_lb_recipe_7text_of:
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
    mov x19, x0
    mov x20, x1
    adrp x21, _lb_recipe_10stage_keys@PAGE
    add x21, x21, _lb_recipe_10stage_keys@PAGEOFF
    adrp x22, _lb_text_62507abe000e@PAGE
    add x22, x22, _lb_text_62507abe000e@PAGEOFF
    sub x9, x29, #200
    add x23, x9, #8
    adrp x24, _lb_text_e56c1291ba5e@PAGE
    add x24, x24, _lb_text_e56c1291ba5e@PAGEOFF
    sub x9, x29, #216
    add x25, x9, #8
    adrp x26, _lb_text_dd76b5074a0e@PAGE
    add x26, x26, _lb_text_dd76b5074a0e@PAGEOFF
    sub x9, x29, #232
    add x27, x9, #8
    movz w14, #1
    mov x28, #0
Lff48a5a4b7eb_1:
    cmp x28, #16
    b.hs Lff48a5a4b7eb_4
    .p2align 4
Lff48a5a4b7eb_2:
    movz x10, #40
    mul x15, x28, x10
    add x15, x15, x19
    ldrb w12, [x15]
    ldr d8, [x15, #8]
    ldr d9, [x15, #16]
    ldr x13, [x15, #24]
    ldrb w15, [x15, #32]
    cbnz w12, Lff48a5a4b7eb_6
Lff48a5a4b7eb_5:
    b Lff48a5a4b7eb_3
Lff48a5a4b7eb_6:
Lff48a5a4b7eb_7:
    and w14, w14, #255
    cbnz w14, Lff48a5a4b7eb_10
Lff48a5a4b7eb_9:
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    movz x1, #124
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_12
Lff48a5a4b7eb_13:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_130e5235bf74@PAGE
    add x15, x15, _lb_text_130e5235bf74@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_12:
Lff48a5a4b7eb_10:
Lff48a5a4b7eb_11:
    add x14, x21, x28, lsl #4
    sub x11, x29, #168
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    sub x9, x29, #168
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_57
Lff48a5a4b7eb_58:
    movz x9, #1
    str w9, [sp, #136]
    movz w14, #1
    b Lff48a5a4b7eb_60
Lff48a5a4b7eb_57:
    mov x9, #0
    str w9, [sp, #136]
    mov w14, #0
Lff48a5a4b7eb_60:
    strb w14, [sp, #136]
    ldrb w14, [sp, #136]
    cbz w14, Lff48a5a4b7eb_15
Lff48a5a4b7eb_16:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_02c0be29de31@PAGE
    add x15, x15, _lb_text_02c0be29de31@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_15:
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    movz x1, #58
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_18
Lff48a5a4b7eb_19:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_5ec9dd764bd6@PAGE
    add x15, x15, _lb_text_5ec9dd764bd6@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_18:
    frinta d24, d8
    fcvtzs x14, d24
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    mov x1, x14
    bl _lb_20luce_std_collections_Buffer_10put_number
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_21
Lff48a5a4b7eb_22:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_abebd20beaae@PAGE
    add x15, x15, _lb_text_abebd20beaae@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_21:
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    movz x1, #58
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_24
Lff48a5a4b7eb_25:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_a81b4659eee9@PAGE
    add x15, x15, _lb_text_a81b4659eee9@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_24:
    frinta d24, d9
    fcvtzs x14, d24
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    mov x1, x14
    bl _lb_20luce_std_collections_Buffer_10put_number
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_27
Lff48a5a4b7eb_28:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_f7083ff0f8f9@PAGE
    add x15, x15, _lb_text_f7083ff0f8f9@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_27:
    str x13, [sp, #96]
    str w15, [sp, #88]
    mov x0, x20
    movz x1, #58
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    ldr x13, [sp, #96]
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_30
Lff48a5a4b7eb_31:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_5e5b3be5e923@PAGE
    add x15, x15, _lb_text_5e5b3be5e923@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_30:
    cmp x13, #0
    b.lt Lff48a5a4b7eb_34
Lff48a5a4b7eb_33:
    movz x10, #16
    cmp x13, x10
    b.hs Lff48a5a4b7eb_c1
    add x14, x21, x13, lsl #4
    sub x11, x29, #184
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    str w15, [sp, #88]
    mov x0, x20
    sub x9, x29, #184
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    ldr w15, [sp, #88]
    cbz w14, Lff48a5a4b7eb_65
Lff48a5a4b7eb_66:
    movz x9, #1
    str w9, [sp, #128]
    movz w14, #1
    b Lff48a5a4b7eb_68
Lff48a5a4b7eb_65:
    mov x9, #0
    str w9, [sp, #128]
    mov w14, #0
Lff48a5a4b7eb_68:
    strb w14, [sp, #128]
    ldrb w14, [sp, #128]
    cbz w14, Lff48a5a4b7eb_36
Lff48a5a4b7eb_37:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_e6a03cca3dc9@PAGE
    add x15, x15, _lb_text_e6a03cca3dc9@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_36:
Lff48a5a4b7eb_34:
Lff48a5a4b7eb_35:
    cbz w15, Lff48a5a4b7eb_40
Lff48a5a4b7eb_39:
    str x22, [sp, #40]
    movz x9, #2
    str x9, [x23]
    mov x0, x20
    sub x9, x29, #200
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, Lff48a5a4b7eb_69
Lff48a5a4b7eb_70:
    movz x9, #1
    str w9, [sp, #120]
    movz w14, #1
    b Lff48a5a4b7eb_72
Lff48a5a4b7eb_69:
    mov x9, #0
    str w9, [sp, #120]
    mov w14, #0
Lff48a5a4b7eb_72:
    strb w14, [sp, #120]
    ldrb w14, [sp, #120]
    cbz w14, Lff48a5a4b7eb_42
Lff48a5a4b7eb_43:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_8db3a74e98cc@PAGE
    add x15, x15, _lb_text_8db3a74e98cc@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_42:
Lff48a5a4b7eb_40:
Lff48a5a4b7eb_41:
    ldr x14, [x19, #640]
    cmp x14, x28
    b.ne Lff48a5a4b7eb_46
Lff48a5a4b7eb_45:
    str x24, [sp, #24]
    movz x9, #2
    str x9, [x25]
    mov x0, x20
    sub x9, x29, #216
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, Lff48a5a4b7eb_73
Lff48a5a4b7eb_74:
    movz x9, #1
    str w9, [sp, #112]
    movz w14, #1
    b Lff48a5a4b7eb_76
Lff48a5a4b7eb_73:
    mov x9, #0
    str w9, [sp, #112]
    mov w14, #0
Lff48a5a4b7eb_76:
    strb w14, [sp, #112]
    ldrb w14, [sp, #112]
    cbz w14, Lff48a5a4b7eb_48
Lff48a5a4b7eb_49:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_a6b36d6af92d@PAGE
    add x15, x15, _lb_text_a6b36d6af92d@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_48:
Lff48a5a4b7eb_46:
Lff48a5a4b7eb_47:
    ldr x14, [x19, #648]
    cmp x14, x28
    b.ne Lff48a5a4b7eb_52
Lff48a5a4b7eb_51:
    str x26, [sp, #8]
    movz x9, #2
    str x9, [x27]
    mov x0, x20
    sub x9, x29, #232
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, Lff48a5a4b7eb_77
Lff48a5a4b7eb_78:
    movz x9, #1
    str w9, [sp, #104]
    movz w14, #1
    b Lff48a5a4b7eb_80
Lff48a5a4b7eb_77:
    mov x9, #0
    str w9, [sp, #104]
    mov w14, #0
Lff48a5a4b7eb_80:
    strb w14, [sp, #104]
    ldrb w14, [sp, #104]
    cbz w14, Lff48a5a4b7eb_54
Lff48a5a4b7eb_55:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_b3dd5aadb0e7@PAGE
    add x15, x15, _lb_text_b3dd5aadb0e7@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_54:
Lff48a5a4b7eb_52:
Lff48a5a4b7eb_53:
    mov w14, #0
Lff48a5a4b7eb_3:
    add x28, x28, #1
    cmp x28, #16
    b.lo Lff48a5a4b7eb_2
Lff48a5a4b7eb_4:
    mov x0, #0
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lff48a5a4b7eb_c1:
    adrp x0, _lb_text_e6a03cca3dc9@PAGE
    add x0, x0, _lb_text_e6a03cca3dc9@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_20luce_std_collections_Buffer_destroy
_lb_20luce_std_collections_Buffer_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    mov x19, x0
    ldr x14, [x19, #8]
    cmp x14, #0
    b.ls L1758b459f3a2_2
L1758b459f3a2_1:
    ldr x15, [x19, #24]
    cbz x15, L1758b459f3a2_5
L1758b459f3a2_4:
    ldr x12, [x19, #32]
    b L1758b459f3a2_6
L1758b459f3a2_5:
    adrp x14, _lb_text_d433ab7f04db@PAGE
    add x14, x14, _lb_text_d433ab7f04db@PAGEOFF
    str x14, [sp, #24]
    movz x9, #25
    str x9, [sp, #32]
    adrp x14, _lb_text_426cfc0c5dd4@PAGE
    add x14, x14, _lb_text_426cfc0c5dd4@PAGEOFF
    mov x0, x14
    sub x9, x29, #40
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, _lb_text_426cfc0c5dd4@PAGE
    add x0, x0, _lb_text_426cfc0c5dd4@PAGEOFF
    adrp x1, _lb_text_82fae1890416@PAGE
    add x1, x1, _lb_text_82fae1890416@PAGEOFF
    bl _lb_core_7trap_at
L1758b459f3a2_6:
    ldr x13, [x19]
    str x13, [sp, #8]
    str x14, [sp, #16]
    cbz x12, L1758b459f3a2_7
L1758b459f3a2_8:
    ldr x14, [x12, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    sub x9, x29, #56
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1758b459f3a2_7:
L1758b459f3a2_2:
L1758b459f3a2_3:
    sub x11, x29, #24
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    mov x9, #0
    str x9, [x19, #16]
    add x14, x19, #24
    sub x11, x29, #24
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x14, #0]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_20luce_std_collections_Buffer_text
_lb_20luce_std_collections_Buffer_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    mov x14, x0
    ldr x19, [x14]
    ldr x15, [x14, #8]
    ldr x20, [x14, #16]
    cmp x20, x15
    b.hi L00d3ff99aa16_c1
    str x19, [sp, #0]
    str x20, [sp, #8]
    sub x9, x29, #48
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_13luce_std_utf8_14invalid_offset
    mov x14, x0
    mov x15, x1
    str x14, [sp, #16]
    str x15, [sp, #24]
    ldrb w15, [sp, #24]
    cbz w15, L00d3ff99aa16_2
L00d3ff99aa16_1:
    b L00d3ff99aa16_3
L00d3ff99aa16_2:
    ldr x14, [sp, #8]
L00d3ff99aa16_3:
    cmp x14, x20
    b.hi L00d3ff99aa16_c2
    mov x0, x19
    mov x1, x14
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L00d3ff99aa16_c1:
    adrp x0, _lb_text_2f8f2cdede5b@PAGE
    add x0, x0, _lb_text_2f8f2cdede5b@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L00d3ff99aa16_c2:
    adrp x0, _lb_text_623552897da1@PAGE
    add x0, x0, _lb_text_623552897da1@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_parse
_lb_recipe_parse:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2096
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #2080]
    str x20, [sp, #2072]
    str x21, [sp, #2064]
    str x22, [sp, #2056]
    str x23, [sp, #2048]
    str x24, [sp, #2040]
    str x25, [sp, #2032]
    str x26, [sp, #2024]
    str x27, [sp, #2016]
    str x28, [sp, #2008]
    str d8, [sp, #2000]
    str d9, [sp, #1992]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x0, x29, #776
    mov x1, #0
    movz x2, #656
    bl _memset
    movn x9, #0
    str x9, [sp, #1960]
    movn x9, #0
    str x9, [sp, #1968]
    sub x10, x29, #776
    sub x0, x29, #2088
    mov x1, x10
    movz x2, #656
    bl _memcpy
    mov x14, #0
Lf6124d9d18bf_1:
    cmp x14, #16
    b.hs Lf6124d9d18bf_4
    .p2align 4
Lf6124d9d18bf_2:
    movz x10, #40
    mul x15, x14, x10
    sub x10, x29, #2088
    add x15, x15, x10
    movn x9, #0
    str x9, [x15, #24]
    add x14, x14, #1
    cmp x14, #16
    b.lo Lf6124d9d18bf_2
Lf6124d9d18bf_4:
    sub x11, x29, #248
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    mov x14, #0
Lf6124d9d18bf_5:
    cmp x14, #16
    b.hs Lf6124d9d18bf_8
    .p2align 4
Lf6124d9d18bf_6:
    sub x10, x29, #248
    movn x9, #0
    str x9, [x10, x14, lsl #3]
    add x14, x14, #1
    cmp x14, #16
    b.lo Lf6124d9d18bf_6
Lf6124d9d18bf_8:
    ldr x19, [sp, #1976]
    ldr x20, [sp, #1984]
    adrp x21, _lb_text_bff7dffc739c@PAGE
    add x21, x21, _lb_text_bff7dffc739c@PAGEOFF
    adrp x22, _lb_text_2a7b184be0ac@PAGE
    add x22, x22, _lb_text_2a7b184be0ac@PAGEOFF
    adrp x23, _lb_text_3470d89983fc@PAGE
    add x23, x23, _lb_text_3470d89983fc@PAGEOFF
    adrp x24, _lb_recipe_10stage_keys@PAGE
    add x24, x24, _lb_recipe_10stage_keys@PAGEOFF
    fmov d8, xzr
    fmov d9, xzr
    mov x14, #0
    mov x25, #0
Lf6124d9d18bf_9:
    cmp x25, x20
    b.hi Lf6124d9d18bf_12
    .p2align 4
Lf6124d9d18bf_10:
    cmp x20, x25
    cset w26, eq
    cmp x20, x25
    b.eq Lf6124d9d18bf_14
Lf6124d9d18bf_16:
    cmp x25, x20
    b.hs Lf6124d9d18bf_c1
    ldrb w15, [x19, x25]
    cmp w15, #124
    b.eq Lf6124d9d18bf_14
Lf6124d9d18bf_13:
    b Lf6124d9d18bf_11
Lf6124d9d18bf_14:
Lf6124d9d18bf_15:
    cmp x14, x20
    b.hi Lf6124d9d18bf_c2
    cmp x14, x25
    b.hi Lf6124d9d18bf_19
Lf6124d9d18bf_18:
    add x15, x19, x14
    sub x14, x25, x14
    adds x27, x25, #1
    b.cs Lf6124d9d18bf_c3
    sub x11, x29, #360
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    mov x12, #0
    mov x13, #0
    mov x7, #0
Lf6124d9d18bf_20:
    cmp x7, x14
    b.ls Lf6124d9d18bf_21
Lf6124d9d18bf_68:
    mov x28, x12
    b Lf6124d9d18bf_23
    .p2align 4
Lf6124d9d18bf_21:
    cmp x14, x7
    cset w6, eq
    cbnz w6, Lf6124d9d18bf_27
Lf6124d9d18bf_28:
    cmp x7, x14
    b.hs Lf6124d9d18bf_c4
    ldrb w5, [x15, x7]
    cmp w5, #58
    b.ne Lf6124d9d18bf_25
Lf6124d9d18bf_27:
    cmp x12, #7
    b.hs Lf6124d9d18bf_25
Lf6124d9d18bf_24:
    sub x9, x29, #360
    add x5, x9, x12, lsl #4
    cmp x13, x14
    b.hi Lf6124d9d18bf_c5
    cmp x13, x7
    b.hi Lf6124d9d18bf_30
Lf6124d9d18bf_29:
    add x4, x15, x13
    sub x13, x7, x13
    str x4, [x5]
    str x13, [x5, #8]
    add x12, x12, #1
    adds x13, x7, #1
    b.cs Lf6124d9d18bf_c6
    b Lf6124d9d18bf_26
Lf6124d9d18bf_25:
Lf6124d9d18bf_26:
    cbz w6, Lf6124d9d18bf_31
Lf6124d9d18bf_69:
    mov x28, x12
    b Lf6124d9d18bf_23
Lf6124d9d18bf_31:
    add x7, x7, #1
    cmp x7, x14
    b.ls Lf6124d9d18bf_21
    b Lf6124d9d18bf_68
Lf6124d9d18bf_23:
    cmp x28, #4
    b.hs Lf6124d9d18bf_33
Lf6124d9d18bf_32:
    mov x14, x27
    b Lf6124d9d18bf_11
Lf6124d9d18bf_33:
Lf6124d9d18bf_34:
    ldr x14, [sp, #1736]
    ldr x15, [sp, #1744]
    mov x12, #0
Lf6124d9d18bf_73:
    cmp x12, #16
    b.hs Lf6124d9d18bf_76
    .p2align 4
Lf6124d9d18bf_74:
    add x13, x24, x12, lsl #4
    ldr x7, [x13, #8]
    cmp x7, x15
    cset w6, eq
    cbnz w6, Lf6124d9d18bf_80
Lf6124d9d18bf_84:
    b Lf6124d9d18bf_81
Lf6124d9d18bf_80:
    ldr x13, [x13]
    str x14, [sp, #1984]
    str x15, [sp, #1976]
    str x12, [sp, #1728]
    mov x0, x13
    mov x1, x14
    mov x2, x7
    bl _memcmp
    mov w13, w0
    ldr x14, [sp, #1984]
    ldr x15, [sp, #1976]
    ldr x12, [sp, #1728]
    cmp w13, #0
    cset w6, eq
Lf6124d9d18bf_81:
    and w13, w6, #255
    cbz w13, Lf6124d9d18bf_78
Lf6124d9d18bf_77:
    mov x14, x12
    b Lf6124d9d18bf_85
Lf6124d9d18bf_78:
Lf6124d9d18bf_79:
    add x12, x12, #1
    cmp x12, #16
    b.lo Lf6124d9d18bf_74
Lf6124d9d18bf_76:
    movn x14, #0
Lf6124d9d18bf_85:
    cmp x14, #0
    b.ge Lf6124d9d18bf_37
Lf6124d9d18bf_36:
    mov x14, x27
    b Lf6124d9d18bf_11
Lf6124d9d18bf_37:
Lf6124d9d18bf_38:
    ldr x15, [sp, #1752]
    ldr x12, [sp, #1760]
    mov x13, #0
    movz x7, #1
    mov x6, #0
Lf6124d9d18bf_86:
    cmp x6, x12
    b.hs Lf6124d9d18bf_89
    .p2align 4
Lf6124d9d18bf_87:
    ldrb w5, [x15, x6]
    cmp x6, #0
    b.ne Lf6124d9d18bf_91
Lf6124d9d18bf_93:
    cmp w5, #45
    b.ne Lf6124d9d18bf_91
Lf6124d9d18bf_90:
    movn x7, #0
    b Lf6124d9d18bf_92
Lf6124d9d18bf_91:
    cmp w5, #48
    b.lo Lf6124d9d18bf_95
Lf6124d9d18bf_97:
    cmp w5, #57
    b.hi Lf6124d9d18bf_95
Lf6124d9d18bf_94:
    movz x10, #10
    smulh x11, x13, x10
    mul x13, x13, x10
    cmp x11, x13, asr #63
    b.ne Lf6124d9d18bf_c7
    sub w5, w5, #48
    and w4, w5, #255
    cmp w4, w5
    b.ne Lf6124d9d18bf_99
Lf6124d9d18bf_98:
    adds x13, x5, x13
    b.vs Lf6124d9d18bf_c8
    b Lf6124d9d18bf_96
Lf6124d9d18bf_95:
    fmov d24, d8
    b Lf6124d9d18bf_102
Lf6124d9d18bf_96:
Lf6124d9d18bf_92:
    add x6, x6, #1
    cmp x6, x12
    b.lo Lf6124d9d18bf_87
Lf6124d9d18bf_89:
    smulh x11, x13, x7
    mul x15, x13, x7
    cmp x11, x15, asr #63
    b.ne Lf6124d9d18bf_c9
    scvtf d24, x15
Lf6124d9d18bf_102:
    ldr x15, [sp, #1768]
    ldr x12, [sp, #1776]
    mov x13, #0
    movz x7, #1
    mov x6, #0
Lf6124d9d18bf_103:
    cmp x6, x12
    b.hs Lf6124d9d18bf_106
    .p2align 4
Lf6124d9d18bf_104:
    ldrb w5, [x15, x6]
    cmp x6, #0
    b.ne Lf6124d9d18bf_108
Lf6124d9d18bf_110:
    cmp w5, #45
    b.ne Lf6124d9d18bf_108
Lf6124d9d18bf_107:
    movn x7, #0
    b Lf6124d9d18bf_109
Lf6124d9d18bf_108:
    cmp w5, #48
    b.lo Lf6124d9d18bf_112
Lf6124d9d18bf_114:
    cmp w5, #57
    b.hi Lf6124d9d18bf_112
Lf6124d9d18bf_111:
    movz x10, #10
    smulh x11, x13, x10
    mul x13, x13, x10
    cmp x11, x13, asr #63
    b.ne Lf6124d9d18bf_c10
    sub w5, w5, #48
    and w4, w5, #255
    cmp w4, w5
    b.ne Lf6124d9d18bf_116
Lf6124d9d18bf_115:
    adds x13, x5, x13
    b.vs Lf6124d9d18bf_c11
    b Lf6124d9d18bf_113
Lf6124d9d18bf_112:
    fmov d25, d9
    b Lf6124d9d18bf_119
Lf6124d9d18bf_113:
Lf6124d9d18bf_109:
    add x6, x6, #1
    cmp x6, x12
    b.lo Lf6124d9d18bf_104
Lf6124d9d18bf_106:
    smulh x11, x13, x7
    mul x15, x13, x7
    cmp x11, x15, asr #63
    b.ne Lf6124d9d18bf_c12
    scvtf d25, x15
Lf6124d9d18bf_119:
    str x14, [sp, #1720]
    fmov d0, d24
    fmov d1, d25
    mov x1, x14
    sub x0, x29, #2088
    bl _lb_recipe_Recipe_add
    mov w15, w0
    ldr x14, [sp, #1720]
    movz x10, #16
    cmp x14, x10
    b.hs Lf6124d9d18bf_c13
    sub x9, x29, #248
    add x15, x9, x14, lsl #3
    ldr x12, [sp, #1784]
    ldr x13, [sp, #1792]
    mov x7, #0
Lf6124d9d18bf_120:
    cmp x7, #16
    b.hs Lf6124d9d18bf_123
    .p2align 4
Lf6124d9d18bf_121:
    add x6, x24, x7, lsl #4
    ldr x5, [x6, #8]
    cmp x5, x13
    cset w4, eq
    cbnz w4, Lf6124d9d18bf_127
Lf6124d9d18bf_131:
    b Lf6124d9d18bf_128
Lf6124d9d18bf_127:
    ldr x6, [x6]
    str x12, [sp, #1976]
    str x13, [sp, #1728]
    str x14, [sp, #1720]
    str x15, [sp, #1984]
    str x7, [sp, #1712]
    mov x0, x6
    mov x1, x12
    mov x2, x5
    bl _memcmp
    mov w6, w0
    ldr x12, [sp, #1976]
    ldr x13, [sp, #1728]
    ldr x14, [sp, #1720]
    ldr x15, [sp, #1984]
    ldr x7, [sp, #1712]
    cmp w6, #0
    cset w4, eq
Lf6124d9d18bf_128:
    and w6, w4, #255
    cbz w6, Lf6124d9d18bf_125
Lf6124d9d18bf_124:
    b Lf6124d9d18bf_132
Lf6124d9d18bf_125:
Lf6124d9d18bf_126:
    add x7, x7, #1
    cmp x7, #16
    b.lo Lf6124d9d18bf_121
Lf6124d9d18bf_123:
    movn x7, #0
Lf6124d9d18bf_132:
    str x7, [x15]
    movz x10, #40
    mul x15, x14, x10
    sub x10, x29, #2088
    add x15, x15, x10
    movz x12, #4
Lf6124d9d18bf_40:
    cmp x12, x28
    b.hs Lf6124d9d18bf_43
    .p2align 4
Lf6124d9d18bf_41:
    movz x10, #7
    cmp x12, x10
    b.hs Lf6124d9d18bf_c14
    sub x9, x29, #360
    add x13, x9, x12, lsl #4
    ldr x7, [x13, #8]
    cmp x7, #1
    cset w6, eq
    cbnz w6, Lf6124d9d18bf_47
Lf6124d9d18bf_70:
    b Lf6124d9d18bf_48
Lf6124d9d18bf_47:
    ldr x6, [x13]
    str x15, [sp, #1984]
    str x14, [sp, #1720]
    str x12, [sp, #1976]
    str x13, [sp, #1728]
    mov x0, x6
    mov x1, x21
    mov x2, x7
    bl _memcmp
    mov w7, w0
    ldr x15, [sp, #1984]
    ldr x14, [sp, #1720]
    ldr x12, [sp, #1976]
    ldr x13, [sp, #1728]
    cmp w7, #0
    cset w6, eq
Lf6124d9d18bf_48:
    and w7, w6, #255
    cbz w7, Lf6124d9d18bf_45
Lf6124d9d18bf_44:
    movz x9, #1
    strb w9, [x15, #32]
    b Lf6124d9d18bf_55
Lf6124d9d18bf_45:
    ldr x7, [x13, #8]
    cmp x7, #1
    cset w6, eq
    cbnz w6, Lf6124d9d18bf_52
Lf6124d9d18bf_71:
    b Lf6124d9d18bf_53
Lf6124d9d18bf_52:
    ldr x6, [x13]
    str x15, [sp, #1984]
    str x14, [sp, #1720]
    str x12, [sp, #1976]
    str x13, [sp, #1728]
    mov x0, x6
    mov x1, x22
    mov x2, x7
    bl _memcmp
    mov w7, w0
    ldr x15, [sp, #1984]
    ldr x14, [sp, #1720]
    ldr x12, [sp, #1976]
    ldr x13, [sp, #1728]
    cmp w7, #0
    cset w6, eq
Lf6124d9d18bf_53:
    and w7, w6, #255
    cbz w7, Lf6124d9d18bf_50
Lf6124d9d18bf_49:
    str x14, [sp, #648]
    b Lf6124d9d18bf_55
Lf6124d9d18bf_50:
    ldr x7, [x13, #8]
    cmp x7, #1
    cset w6, eq
    cbnz w6, Lf6124d9d18bf_57
Lf6124d9d18bf_72:
    b Lf6124d9d18bf_58
Lf6124d9d18bf_57:
    ldr x13, [x13]
    str x15, [sp, #1984]
    str x14, [sp, #1720]
    str x12, [sp, #1976]
    mov x0, x13
    mov x1, x23
    mov x2, x7
    bl _memcmp
    mov w13, w0
    ldr x15, [sp, #1984]
    ldr x14, [sp, #1720]
    ldr x12, [sp, #1976]
    cmp w13, #0
    cset w6, eq
Lf6124d9d18bf_58:
    and w13, w6, #255
    cbz w13, Lf6124d9d18bf_55
Lf6124d9d18bf_54:
    str x14, [sp, #656]
Lf6124d9d18bf_55:
Lf6124d9d18bf_56:
Lf6124d9d18bf_51:
Lf6124d9d18bf_46:
    add x12, x12, #1
    cmp x12, x28
    b.lo Lf6124d9d18bf_41
Lf6124d9d18bf_43:
    mov x14, x27
Lf6124d9d18bf_11:
    cbnz w26, Lf6124d9d18bf_12
Lf6124d9d18bf_59:
    add x25, x25, #1
    cmp x25, x20
    b.ls Lf6124d9d18bf_10
Lf6124d9d18bf_12:
    mov x19, #0
Lf6124d9d18bf_60:
    cmp x19, #16
    b.hs Lf6124d9d18bf_63
    .p2align 4
Lf6124d9d18bf_61:
    sub x10, x29, #248
    ldr x14, [x10, x19, lsl #3]
    cmp x14, #0
    b.lt Lf6124d9d18bf_65
Lf6124d9d18bf_64:
    mov x1, x14
    mov x2, x19
    sub x0, x29, #2088
    bl _lb_recipe_Recipe_connect
    mov w14, w0
Lf6124d9d18bf_65:
Lf6124d9d18bf_66:
    add x19, x19, #1
    cmp x19, #16
    b.lo Lf6124d9d18bf_61
Lf6124d9d18bf_63:
    sub x10, x29, #2088
    sub x0, x29, #1432
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x1, x29, #1432
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #656
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    ldr x19, [sp, #2080]
    ldr x20, [sp, #2072]
    ldr x21, [sp, #2064]
    ldr x22, [sp, #2056]
    ldr x23, [sp, #2048]
    ldr x24, [sp, #2040]
    ldr x25, [sp, #2032]
    ldr x26, [sp, #2024]
    ldr x27, [sp, #2016]
    ldr x28, [sp, #2008]
    ldr d8, [sp, #2000]
    ldr d9, [sp, #1992]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lf6124d9d18bf_19:
    adrp x0, _lb_text_9469848972c3@PAGE
    add x0, x0, _lb_text_9469848972c3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_30:
    adrp x0, _lb_text_16df22ea4fc0@PAGE
    add x0, x0, _lb_text_16df22ea4fc0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_99:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_116:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c1:
    adrp x0, _lb_text_740fb269d0aa@PAGE
    add x0, x0, _lb_text_740fb269d0aa@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c2:
    adrp x0, _lb_text_9469848972c3@PAGE
    add x0, x0, _lb_text_9469848972c3@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c3:
    adrp x0, _lb_text_5059a418bcc2@PAGE
    add x0, x0, _lb_text_5059a418bcc2@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c4:
    adrp x0, _lb_text_aaaa48b5dd8c@PAGE
    add x0, x0, _lb_text_aaaa48b5dd8c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c5:
    adrp x0, _lb_text_16df22ea4fc0@PAGE
    add x0, x0, _lb_text_16df22ea4fc0@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c6:
    adrp x0, _lb_text_a45363abae23@PAGE
    add x0, x0, _lb_text_a45363abae23@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c7:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c8:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c9:
    adrp x0, _lb_text_603a67f6727a@PAGE
    add x0, x0, _lb_text_603a67f6727a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c10:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c11:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c12:
    adrp x0, _lb_text_603a67f6727a@PAGE
    add x0, x0, _lb_text_603a67f6727a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c13:
    adrp x0, _lb_text_bea0b533a2fa@PAGE
    add x0, x0, _lb_text_bea0b533a2fa@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lf6124d9d18bf_c14:
    adrp x0, _lb_text_b330ba3fa213@PAGE
    add x0, x0, _lb_text_b330ba3fa213@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_20luce_std_collections_Buffer_8put_byte
_lb_20luce_std_collections_Buffer_8put_byte:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    mov x19, x0
    uxtb w14, w1
    str w14, [sp, #8]
    mov x0, x19
    movz x1, #1
    bl _lb_20luce_std_collections_List_0g1_u8_reserve
    mov w14, w0
    cbz w14, L17c586134777_4
L17c586134777_5:
    movz x9, #1
    str w9, [sp, #0]
    movz w14, #1
    b L17c586134777_7
L17c586134777_4:
    ldr x14, [x19, #16]
    ldr x15, [x19]
    ldr x12, [x19, #8]
    cmp x14, x12
    b.hs L17c586134777_c1
    add x14, x14, x15
    ldrb w15, [sp, #8]
    strb w15, [x14]
    ldr x14, [x19, #16]
    adds x14, x14, #1
    b.cs L17c586134777_c2
    str x14, [x19, #16]
    mov x9, #0
    str w9, [sp, #0]
    mov w14, #0
L17c586134777_7:
    strb w14, [sp, #0]
    ldrb w14, [sp, #0]
    cbz w14, L17c586134777_1
L17c586134777_2:
    movz x0, #1
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17c586134777_1:
    mov x0, #0
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17c586134777_c1:
    adrp x0, _lb_text_6e81270266d7@PAGE
    add x0, x0, _lb_text_6e81270266d7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L17c586134777_c2:
    adrp x0, _lb_text_eb391856d0ec@PAGE
    add x0, x0, _lb_text_eb391856d0ec@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_20luce_std_collections_Buffer_10put_number
_lb_20luce_std_collections_Buffer_10put_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #88]
    mov x19, x0
    mov x14, x1
    sub x11, x29, #56
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x9, x29, #56
    str x9, [sp, #24]
    movz x9, #24
    str x9, [sp, #32]
    mov x0, x14
    sub x9, x29, #72
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x3, #10
    bl _lb_strings_10format_i64
    mov x14, x0
    mov x15, x1
    mov w12, w2
    cbz w12, Lbed9478d974c_3
Lbed9478d974c_4:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_7ae46dfa8002@PAGE
    add x15, x15, _lb_text_7ae46dfa8002@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbed9478d974c_3:
    str x14, [sp, #8]
    sub x9, x29, #88
    add x14, x9, #8
    str x15, [x14]
    mov x0, x19
    sub x9, x29, #88
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, Lbed9478d974c_9
Lbed9478d974c_10:
    movz x9, #1
    str w9, [sp, #80]
    movz w14, #1
    b Lbed9478d974c_12
Lbed9478d974c_9:
    mov x9, #0
    str w9, [sp, #80]
    mov w14, #0
Lbed9478d974c_12:
    strb w14, [sp, #80]
    ldrb w14, [sp, #80]
    cbz w14, Lbed9478d974c_6
Lbed9478d974c_7:
    movz x0, #1
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbed9478d974c_6:
    mov x0, #0
    ldr x19, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_utf8_14invalid_offset
_lb_13luce_std_utf8_14invalid_offset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    adrp x19, _lb_text_a8471100d56e@PAGE
    add x19, x19, _lb_text_a8471100d56e@PAGEOFF
    adrp x20, _lb_text_a125387e2fad@PAGE
    add x20, x20, _lb_text_a125387e2fad@PAGEOFF
    mov x21, #0
    .p2align 4
Lc8d2b73ababd_1:
    ldr x14, [sp, #136]
    cmp x21, x14
    b.hs Lc8d2b73ababd_3
Lc8d2b73ababd_2:
    ldr x15, [sp, #128]
    ldrb w12, [x15, x21]
    cmp w12, #128
    b.hs Lc8d2b73ababd_14
Lc8d2b73ababd_13:
    mov w12, w12
    mov x0, x12
    mov x2, x20
    mov x1, #0
    bl _lb_core_7to_char
    mov x14, x0
    movz x14, #1
    movz w15, #1
    b Lc8d2b73ababd_71
Lc8d2b73ababd_14:
    cmp w12, #194
    b.lo Lc8d2b73ababd_18
Lc8d2b73ababd_20:
    cmp w12, #223
    b.hi Lc8d2b73ababd_18
Lc8d2b73ababd_17:
    and w12, w12, #31
    movz x22, #2
    b Lc8d2b73ababd_19
Lc8d2b73ababd_18:
    cmp w12, #224
    b.lo Lc8d2b73ababd_22
Lc8d2b73ababd_24:
    cmp w12, #239
    b.hi Lc8d2b73ababd_22
Lc8d2b73ababd_21:
    and w12, w12, #15
    movz x22, #3
    b Lc8d2b73ababd_23
Lc8d2b73ababd_22:
    cmp w12, #240
    b.lo Lc8d2b73ababd_26
Lc8d2b73ababd_28:
    cmp w12, #244
    b.hi Lc8d2b73ababd_26
Lc8d2b73ababd_25:
    and w12, w12, #7
    b Lc8d2b73ababd_27
Lc8d2b73ababd_26:
    mov x14, #0
    mov w15, #0
    b Lc8d2b73ababd_71
Lc8d2b73ababd_27:
    movz x22, #4
Lc8d2b73ababd_23:
Lc8d2b73ababd_19:
    sub x13, x14, x21
    cmp x22, x13
    b.ls Lc8d2b73ababd_31
Lc8d2b73ababd_30:
    mov x14, #0
    mov w15, #0
    b Lc8d2b73ababd_71
Lc8d2b73ababd_31:
    movz x13, #1
Lc8d2b73ababd_34:
    cmp x13, x22
    b.hs Lc8d2b73ababd_36
    .p2align 4
Lc8d2b73ababd_35:
    adds x7, x21, x13
    b.cs Lc8d2b73ababd_c1
    cmp x7, x14
    b.hs Lc8d2b73ababd_c2
    ldrb w7, [x7, x15]
    and w6, w7, #192
    cmp w6, #128
    b.eq Lc8d2b73ababd_38
Lc8d2b73ababd_37:
    mov x14, #0
    mov w15, #0
    b Lc8d2b73ababd_71
Lc8d2b73ababd_38:
    lsl w12, w12, #6
    and w7, w7, #63
    orr w12, w12, w7
    add x13, x13, #1
    cmp x13, x22
    b.lo Lc8d2b73ababd_35
Lc8d2b73ababd_36:
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp w12, w10
    b.hi Lc8d2b73ababd_52
Lc8d2b73ababd_55:
    movz x10, #55296
    cmp w12, w10
    b.lo Lc8d2b73ababd_53
Lc8d2b73ababd_56:
    movz x10, #57343
    cmp w12, w10
    b.hi Lc8d2b73ababd_53
Lc8d2b73ababd_52:
    sub x11, x29, #144
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #144
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    mov x14, #0
    mov x15, #0
    b Lc8d2b73ababd_70
Lc8d2b73ababd_53:
    cmp w12, #128
    b.hs Lc8d2b73ababd_59
Lc8d2b73ababd_58:
    movz x9, #1
    str x9, [sp, #48]
    movz x9, #1
    strb w9, [sp, #56]
    sub x10, x29, #128
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #104]
    movz x9, #1
    str x9, [sp, #80]
    str x15, [sp, #88]
    movz x14, #1
    b Lc8d2b73ababd_70
Lc8d2b73ababd_59:
    cmp w12, #2048
    b.hs Lc8d2b73ababd_63
Lc8d2b73ababd_62:
    movz x9, #2
    str x9, [sp, #64]
    movz x9, #1
    strb w9, [sp, #72]
    sub x10, x29, #112
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #104]
    movz x9, #2
    str x9, [sp, #80]
    str x15, [sp, #88]
    movz x14, #2
    b Lc8d2b73ababd_70
Lc8d2b73ababd_63:
    movz x10, #1, lsl #16
    cmp w12, w10
    movz x10, #3
    movz x11, #4
    csel x14, x10, x11, lo
    str x14, [sp, #112]
    movz x9, #1
    strb w9, [sp, #120]
    sub x10, x29, #64
    sub x11, x29, #80
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [sp, #104]
    str x14, [sp, #80]
    str x15, [sp, #88]
Lc8d2b73ababd_70:
    str x14, [sp, #80]
    str x15, [sp, #88]
    ldrb w15, [sp, #88]
    cbz w15, Lc8d2b73ababd_44
Lc8d2b73ababd_43:
    b Lc8d2b73ababd_45
Lc8d2b73ababd_44:
    mov x14, #0
    mov w15, #0
    b Lc8d2b73ababd_71
Lc8d2b73ababd_45:
    cmp x22, x14
    b.eq Lc8d2b73ababd_48
Lc8d2b73ababd_47:
    mov x14, #0
    mov w15, #0
    b Lc8d2b73ababd_71
Lc8d2b73ababd_48:
    mov w12, w12
    mov w12, w12
    mov x0, x12
    mov x2, x19
    mov x1, #0
    bl _lb_core_7to_char
    mov x14, x0
    mov x14, x22
    movz w15, #1
Lc8d2b73ababd_71:
    cbz w15, Lc8d2b73ababd_5
Lc8d2b73ababd_4:
    b Lc8d2b73ababd_6
Lc8d2b73ababd_5:
    str x21, [sp, #0]
    movz x9, #1
    strb w9, [sp, #8]
    sub x10, x29, #176
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [sp, #24]
    mov x0, x21
    mov x1, x14
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc8d2b73ababd_6:
    adds x21, x21, x14
    b.cs Lc8d2b73ababd_c3
    b Lc8d2b73ababd_1
Lc8d2b73ababd_3:
    sub x11, x29, #48
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #48
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, #0
    mov x1, #0
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc8d2b73ababd_c1:
    adrp x0, _lb_text_2eb396bc3329@PAGE
    add x0, x0, _lb_text_2eb396bc3329@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc8d2b73ababd_c2:
    adrp x0, _lb_text_2eb396bc3329@PAGE
    add x0, x0, _lb_text_2eb396bc3329@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc8d2b73ababd_c3:
    adrp x0, _lb_text_b96506a4d6a7@PAGE
    add x0, x0, _lb_text_b96506a4d6a7@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_recipe_whole
_lb_recipe_whole:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    ldr x14, [sp, #0]
    ldr x15, [sp, #8]
    mov x12, #0
    movz x13, #1
    mov x7, #0
L1166ed58c5d9_1:
    cmp x7, x15
    b.hs L1166ed58c5d9_4
    .p2align 4
L1166ed58c5d9_2:
    ldrb w6, [x14, x7]
    cmp x7, #0
    b.ne L1166ed58c5d9_6
L1166ed58c5d9_8:
    cmp w6, #45
    b.ne L1166ed58c5d9_6
L1166ed58c5d9_5:
    movn x13, #0
    b L1166ed58c5d9_7
L1166ed58c5d9_6:
    cmp w6, #48
    b.lo L1166ed58c5d9_10
L1166ed58c5d9_12:
    cmp w6, #57
    b.hi L1166ed58c5d9_10
L1166ed58c5d9_9:
    movz x10, #10
    smulh x11, x12, x10
    mul x12, x12, x10
    cmp x11, x12, asr #63
    b.ne L1166ed58c5d9_c1
    sub w6, w6, #48
    and w5, w6, #255
    cmp w5, w6
    b.ne L1166ed58c5d9_14
L1166ed58c5d9_13:
    adds x12, x6, x12
    b.vs L1166ed58c5d9_c2
    b L1166ed58c5d9_11
L1166ed58c5d9_10:
    fmov d24, xzr
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1166ed58c5d9_11:
L1166ed58c5d9_7:
    add x7, x7, #1
    cmp x7, x15
    b.lo L1166ed58c5d9_2
L1166ed58c5d9_4:
    smulh x11, x12, x13
    mul x14, x12, x13
    cmp x11, x14, asr #63
    b.ne L1166ed58c5d9_c3
    scvtf d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1166ed58c5d9_14:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L1166ed58c5d9_c1:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L1166ed58c5d9_c2:
    adrp x0, _lb_text_4b2ad1f4726c@PAGE
    add x0, x0, _lb_text_4b2ad1f4726c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L1166ed58c5d9_c3:
    adrp x0, _lb_text_603a67f6727a@PAGE
    add x0, x0, _lb_text_603a67f6727a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_20luce_std_collections_Buffer_put
_lb_20luce_std_collections_Buffer_put:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    sub x16, x29, #32
    str x1, [x16]
    str x2, [x16, #8]
    mov x19, x0
    ldr x14, [sp, #24]
    mov x0, x19
    mov x1, x14
    bl _lb_20luce_std_collections_List_0g1_u8_reserve
    mov w14, w0
    cbz w14, Lc3ddb2a56cfd_1
Lc3ddb2a56cfd_2:
    movz x0, #1
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc3ddb2a56cfd_1:
    ldr x14, [x19]
    ldr x15, [x19, #8]
    ldr x12, [x19, #16]
    cmp x12, x15
    b.hi Lc3ddb2a56cfd_c1
    add x14, x14, x12
    sub x15, x15, x12
    str x14, [sp, #0]
    str x15, [sp, #8]
    ldr x14, [sp, #24]
    mov x4, x14
    sub x9, x29, #48
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #32
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19, #16]
    ldr x15, [sp, #24]
    adds x14, x14, x15
    b.cs Lc3ddb2a56cfd_c2
    str x14, [x19, #16]
    mov x0, #0
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc3ddb2a56cfd_c1:
    adrp x0, _lb_text_6e65fce1fa0f@PAGE
    add x0, x0, _lb_text_6e65fce1fa0f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc3ddb2a56cfd_c2:
    adrp x0, _lb_text_5a5438b22471@PAGE
    add x0, x0, _lb_text_5a5438b22471@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
.subsections_via_symbols
