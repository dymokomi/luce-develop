    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_10format_i64
_lb_strings_10format_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #120]
    str x20, [sp, #112]
    sub x16, x29, #48
    str x1, [x16]
    str x2, [x16, #8]
    mov x14, x0
    mov w15, w3
    cmp x14, #0
    cset w12, lt
    cbz w12, L55bca41c7ea9_2
L55bca41c7ea9_1:
    adds x14, x14, #1
    b.vs L55bca41c7ea9_c1
    mov x9, #0
    subs x14, x9, x14
    b.vs L55bca41c7ea9_c2
    adds x14, x14, #1
    b.cs L55bca41c7ea9_c3
    b L55bca41c7ea9_3
L55bca41c7ea9_2:
L55bca41c7ea9_3:
    str w12, [sp, #96]
    ldr x12, [sp, #80]
    ldr x13, [sp, #88]
    cmp w15, #2
    b.lo L55bca41c7ea9_8
L55bca41c7ea9_11:
    cmp w15, #36
    b.ls L55bca41c7ea9_9
L55bca41c7ea9_8:
    adrp x14, _lb_strings_13invalid_radix@PAGE
    add x14, x14, _lb_strings_13invalid_radix@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_43e7a9e072d2@PAGE
    add x20, x20, _lb_text_43e7a9e072d2@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #41
    str x9, [x14, #16]
    adrp x15, _lb_text_d8db14652af9@PAGE
    add x15, x15, _lb_text_d8db14652af9@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x9, #0
    str x9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x9, #1
    str w9, [sp, #88]
    mov x12, #0
    mov x14, #0
    movz w15, #1
    b L55bca41c7ea9_37
L55bca41c7ea9_9:
    adrp x7, _lb_text_a0707c3dd9ed@PAGE
    add x7, x7, _lb_text_a0707c3dd9ed@PAGEOFF
    sub x11, x29, #121
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    strb wzr, [x11, #64]
    mov w15, w15
    cmp x15, #0
    cset w6, eq
    mov x5, #0
    .p2align 4
L55bca41c7ea9_13:
    movz x10, #65
    cmp x5, x10
    b.hs L55bca41c7ea9_c4
    sub x9, x29, #121
    add x4, x9, x5
    cbnz w6, L55bca41c7ea9_16
L55bca41c7ea9_17:
    udiv x11, x14, x15
    msub x3, x11, x15, x14
    movz x10, #36
    cmp x3, x10
    b.hs L55bca41c7ea9_c5
    ldrb w3, [x7, x3]
    strb w3, [x4]
    add x5, x5, #1
    cbnz w6, L55bca41c7ea9_18
L55bca41c7ea9_19:
    udiv x14, x14, x15
    cmp x14, #0
    b.ne L55bca41c7ea9_21
L55bca41c7ea9_20:
    b L55bca41c7ea9_15
L55bca41c7ea9_21:
    b L55bca41c7ea9_13
L55bca41c7ea9_15:
    ldrb w14, [sp, #96]
    cbz w14, L55bca41c7ea9_25
L55bca41c7ea9_24:
    movz x10, #65
    cmp x5, x10
    b.hs L55bca41c7ea9_c6
    sub x10, x29, #121
    movz x9, #45
    strb w9, [x10, x5]
    add x14, x5, #1
    b L55bca41c7ea9_26
L55bca41c7ea9_25:
    mov x14, x5
L55bca41c7ea9_26:
    cmp x13, x14
    b.hs L55bca41c7ea9_28
L55bca41c7ea9_27:
    adrp x14, _lb_io_full@PAGE
    add x14, x14, _lb_io_full@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_67b2099d42e8@PAGE
    add x20, x20, _lb_text_67b2099d42e8@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #49
    str x9, [x14, #16]
    adrp x15, _lb_text_1fc6e916dd84@PAGE
    add x15, x15, _lb_text_1fc6e916dd84@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x9, #0
    str x9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x9, #1
    str w9, [sp, #88]
    mov x12, #0
    mov x14, #0
    movz w15, #1
    b L55bca41c7ea9_37
L55bca41c7ea9_28:
    mov x15, #0
L55bca41c7ea9_31:
    cmp x15, x14
    b.hs L55bca41c7ea9_33
    .p2align 4
L55bca41c7ea9_32:
    add x13, x12, x15
    sub x7, x14, x15
    subs x7, x7, #1
    b.cc L55bca41c7ea9_c7
    movz x10, #65
    cmp x7, x10
    b.hs L55bca41c7ea9_c8
    sub x10, x29, #121
    ldrb w7, [x10, x7]
    strb w7, [x13]
    add x15, x15, #1
    cmp x15, x14
    b.lo L55bca41c7ea9_32
L55bca41c7ea9_33:
    str x12, [sp, #72]
    str x14, [sp, #80]
    mov x9, #0
    str w9, [sp, #88]
    mov w15, #0
L55bca41c7ea9_37:
    str x12, [sp, #72]
    str x14, [sp, #80]
    strb w15, [sp, #88]
    ldrb w15, [sp, #88]
    cbz w15, L55bca41c7ea9_4
L55bca41c7ea9_5:
    mov x0, #0
    mov x1, #0
    movz x2, #1
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55bca41c7ea9_4:
    mov x0, x12
    mov x1, x14
    mov x2, #0
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55bca41c7ea9_16:
    adrp x0, _lb_text_2f18b0300812@PAGE
    add x0, x0, _lb_text_2f18b0300812@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_18:
    adrp x0, _lb_text_e75877051d8c@PAGE
    add x0, x0, _lb_text_e75877051d8c@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c1:
    adrp x0, _lb_text_d250f7bb6a89@PAGE
    add x0, x0, _lb_text_d250f7bb6a89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c2:
    adrp x0, _lb_text_d250f7bb6a89@PAGE
    add x0, x0, _lb_text_d250f7bb6a89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c3:
    adrp x0, _lb_text_d250f7bb6a89@PAGE
    add x0, x0, _lb_text_d250f7bb6a89@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c4:
    adrp x0, _lb_text_2f18b0300812@PAGE
    add x0, x0, _lb_text_2f18b0300812@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c5:
    adrp x0, _lb_text_2f18b0300812@PAGE
    add x0, x0, _lb_text_2f18b0300812@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c6:
    adrp x0, _lb_text_db34ac624986@PAGE
    add x0, x0, _lb_text_db34ac624986@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c7:
    adrp x0, _lb_text_72816c29f2f8@PAGE
    add x0, x0, _lb_text_72816c29f2f8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L55bca41c7ea9_c8:
    adrp x0, _lb_text_72816c29f2f8@PAGE
    add x0, x0, _lb_text_72816c29f2f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_12trap_text_at
_lb_core_12trap_text_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    str x23, [sp, #40]
    str x24, [sp, #32]
    sub x16, x29, #80
    str x1, [x16]
    str x2, [x16, #8]
    mov x14, x0
    mov x0, x14
    bl _lb_core_19diagnostic_location
    ldr x19, [sp, #0]
    ldr x20, [sp, #8]
    mov x21, #0
L565a2e75f66d_9:
    cmp x21, x20
    b.hs L565a2e75f66d_11
    .p2align 4
L565a2e75f66d_10:
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
    b.ge L565a2e75f66d_18
L565a2e75f66d_20:
    bl ___error
    mov x14, x0
    cbz x14, L565a2e75f66d_29
L565a2e75f66d_28:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L565a2e75f66d_18
L565a2e75f66d_17:
    cmp x21, x20
    b.lo L565a2e75f66d_10
    b L565a2e75f66d_11
L565a2e75f66d_18:
    cmp x22, #0
    b.gt L565a2e75f66d_23
L565a2e75f66d_22:
    b L565a2e75f66d_11
L565a2e75f66d_23:
    adds x21, x21, x22
    b.cs L565a2e75f66d_c1
    cmp x21, x20
    b.lo L565a2e75f66d_10
L565a2e75f66d_11:
L565a2e75f66d_32:
    adrp x21, _lb_core_10crash_file@PAGE
    add x21, x21, _lb_core_10crash_file@PAGEOFF
    ldrsw x22, [x21]
    cmp w22, #0
    b.lt L565a2e75f66d_2
L565a2e75f66d_1:
    mov x23, #0
L565a2e75f66d_33:
    cmp x23, x20
    b.hs L565a2e75f66d_35
    .p2align 4
L565a2e75f66d_34:
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
    b.ge L565a2e75f66d_42
L565a2e75f66d_44:
    bl ___error
    mov x14, x0
    cbz x14, L565a2e75f66d_53
L565a2e75f66d_52:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L565a2e75f66d_42
L565a2e75f66d_41:
    cmp x23, x20
    b.lo L565a2e75f66d_34
    b L565a2e75f66d_35
L565a2e75f66d_42:
    cmp x24, #0
    b.gt L565a2e75f66d_47
L565a2e75f66d_46:
    b L565a2e75f66d_35
L565a2e75f66d_47:
    adds x23, x23, x24
    b.cs L565a2e75f66d_c2
    cmp x23, x20
    b.lo L565a2e75f66d_34
L565a2e75f66d_35:
L565a2e75f66d_56:
L565a2e75f66d_2:
L565a2e75f66d_3:
    adrp x19, _lb_text_ec3c9fbe6361@PAGE
    add x19, x19, _lb_text_ec3c9fbe6361@PAGEOFF
    mov x20, #0
L565a2e75f66d_57:
    cmp x20, #1
    b.hs L565a2e75f66d_59
    .p2align 4
L565a2e75f66d_58:
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
    b.ge L565a2e75f66d_66
L565a2e75f66d_68:
    bl ___error
    mov x14, x0
    cbz x14, L565a2e75f66d_77
L565a2e75f66d_76:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L565a2e75f66d_66
L565a2e75f66d_65:
    cmp x20, #1
    b.lo L565a2e75f66d_58
    b L565a2e75f66d_59
L565a2e75f66d_66:
    cmp x22, #0
    b.gt L565a2e75f66d_71
L565a2e75f66d_70:
    b L565a2e75f66d_59
L565a2e75f66d_71:
    add x20, x20, x22
    cmp x20, #1
    b.lo L565a2e75f66d_58
L565a2e75f66d_59:
L565a2e75f66d_80:
    ldrsw x20, [x21]
    cmp w20, #0
    b.lt L565a2e75f66d_6
L565a2e75f66d_5:
    mov x21, #0
L565a2e75f66d_81:
    cmp x21, #1
    b.hs L565a2e75f66d_83
    .p2align 4
L565a2e75f66d_82:
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
    b.ge L565a2e75f66d_90
L565a2e75f66d_92:
    bl ___error
    mov x14, x0
    cbz x14, L565a2e75f66d_101
L565a2e75f66d_100:
    ldrsw x14, [x14]
    cmp w14, #4
    b.ne L565a2e75f66d_90
L565a2e75f66d_89:
    cmp x21, #1
    b.lo L565a2e75f66d_82
    b L565a2e75f66d_83
L565a2e75f66d_90:
    cmp x22, #0
    b.gt L565a2e75f66d_95
L565a2e75f66d_94:
    b L565a2e75f66d_83
L565a2e75f66d_95:
    add x21, x21, x22
    cmp x21, #1
    b.lo L565a2e75f66d_82
L565a2e75f66d_83:
L565a2e75f66d_104:
L565a2e75f66d_6:
L565a2e75f66d_7:
    bl _lb_core_11finish_trap
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L565a2e75f66d_29:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L565a2e75f66d_53:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L565a2e75f66d_77:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L565a2e75f66d_101:
    adrp x0, _lb_text_4bd3d1282275@PAGE
    add x0, x0, _lb_text_4bd3d1282275@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at
L565a2e75f66d_c1:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L565a2e75f66d_c2:
    adrp x0, _lb_text_6defa7af7b60@PAGE
    add x0, x0, _lb_text_6defa7af7b60@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_20luce_std_collections_List_0g1_u8_reserve
_lb_20luce_std_collections_List_0g1_u8_reserve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    mov x19, x0
    mov x14, x1
    ldr x15, [x19, #16]
    mov x0, x15
    mov x1, x14
    movz x2, #64
    sub x3, x29, #64
    bl _lb_core_6qadd_u
    mov w14, w0
    ldr x20, [sp, #48]
    and w14, w14, #255
    cbz w14, L448beb02e8f8_2
L448beb02e8f8_1:
    b L448beb02e8f8_3
L448beb02e8f8_2:
    adrp x14, _lb_memory_exhausted@PAGE
    add x14, x14, _lb_memory_exhausted@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_78de15e7967e@PAGE
    add x20, x20, _lb_text_78de15e7967e@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #23
    str x9, [x14, #16]
    adrp x15, _lb_text_6c3e6f2a4bac@PAGE
    add x15, x15, _lb_text_6c3e6f2a4bac@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L448beb02e8f8_3:
    ldr x14, [x19, #8]
    cmp x20, x14
    b.hi L448beb02e8f8_6
L448beb02e8f8_5:
    mov x0, #0
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L448beb02e8f8_6:
L448beb02e8f8_7:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    sub x3, x29, #72
    bl _lb_core_6qmul_u
    mov w14, w0
    ldr x15, [sp, #40]
    and w14, w14, #255
    cmp w14, #0
    csel x14, x15, x20, ne
    cmp x14, x20
    csel x14, x20, x14, lo
    mov x20, x14
    ldr x14, [x19, #24]
    cbz x14, L448beb02e8f8_16
L448beb02e8f8_15:
    ldr x15, [x19, #32]
    mov x21, x14
    mov x22, x15
    b L448beb02e8f8_17
L448beb02e8f8_16:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x21, [x14]
    ldr x22, [x14, #8]
L448beb02e8f8_17:
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L448beb02e8f8_19
L448beb02e8f8_18:
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
    adrp x15, _lb_text_9b4091e29fe5@PAGE
    add x15, x15, _lb_text_9b4091e29fe5@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x20, #0
    movz w15, #1
    b L448beb02e8f8_20
L448beb02e8f8_19:
    cbz x22, L448beb02e8f8_22
L448beb02e8f8_21:
    ldr x14, [x22]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x1, x20
    movz x2, #1
    sub x8, x29, #56
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #72]
    cmp x20, #0
    cset w15, ne
    cmp w14, #0
    cset w14, eq
    and w14, w15, w14
    cbz w14, L448beb02e8f8_24
L448beb02e8f8_23:
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
    adrp x15, _lb_text_9b4091e29fe5@PAGE
    add x15, x15, _lb_text_9b4091e29fe5@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x20, #0
    movz w15, #1
    b L448beb02e8f8_20
L448beb02e8f8_24:
    ldr x14, [sp, #56]
    mov w15, #0
L448beb02e8f8_20:
    cbz w15, L448beb02e8f8_25
L448beb02e8f8_26:
    movz x0, #1
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L448beb02e8f8_25:
    str x14, [sp, #24]
    str x20, [sp, #32]
    ldr x14, [x19, #16]
    ldr x2, [x19]
    ldr x3, [x19, #8]
    mov x4, x14
    sub x9, x29, #88
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19, #8]
    cmp x14, #0
    b.ls L448beb02e8f8_29
L448beb02e8f8_28:
    ldr x15, [x19]
    str x15, [sp, #8]
    str x14, [sp, #16]
    cbz x22, L448beb02e8f8_31
L448beb02e8f8_32:
    ldr x14, [x22, #16]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    sub x9, x29, #104
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L448beb02e8f8_31:
L448beb02e8f8_29:
L448beb02e8f8_30:
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    str x21, [x19, #24]
    str x22, [x19, #32]
    mov x0, #0
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L448beb02e8f8_22:
    adrp x0, _lb_text_9b4091e29fe5@PAGE
    add x0, x0, _lb_text_9b4091e29fe5@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #72]
    sub x16, x29, #24
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #40
    str x2, [x16]
    str x3, [x16, #8]
    mov x19, x4
    ldr x14, [sp, #64]
    cmp x19, x14
    b.hi L908fab663263_1
L908fab663263_4:
    ldr x14, [sp, #48]
    cmp x19, x14
    b.ls L908fab663263_2
L908fab663263_1:
    adrp x14, _lb_text_0911e1c79030@PAGE
    add x14, x14, _lb_text_0911e1c79030@PAGEOFF
    str x14, [sp, #8]
    movz x9, #19
    str x9, [sp, #16]
    adrp x14, _lb_text_9e3beb6a8e96@PAGE
    add x14, x14, _lb_text_9e3beb6a8e96@PAGEOFF
    mov x0, x14
    sub x9, x29, #72
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L908fab663263_2:
L908fab663263_3:
    cmp x19, #0
    b.ls L908fab663263_6
L908fab663263_5:
    ldr x14, [sp, #56]
    ldr x15, [sp, #40]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbz x14, L908fab663263_9
L908fab663263_8:
L908fab663263_6:
L908fab663263_7:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L908fab663263_9:
    adrp x0, _lb_text_6b77a9f87be9@PAGE
    add x0, x0, _lb_text_6b77a9f87be9@PAGEOFF
    adrp x1, _lb_text_cead9b9c3fbf@PAGE
    add x1, x1, _lb_text_cead9b9c3fbf@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_7to_char
_lb_core_7to_char:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    str x19, [sp, #8]
    mov x19, x0
    mov w14, w1
    mov x15, x2
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp x19, x10
    cset w12, hi
    cbz w12, L891e04e3d91d_1
L891e04e3d91d_10:
    b L891e04e3d91d_2
L891e04e3d91d_1:
    movz x10, #55296
    cmp x19, x10
    cset w12, hs
    movz x10, #57343
    cmp x19, x10
    cset w13, ls
    cmp w12, #0
    csel w12, w13, w12, ne
    and w12, w12, #255
L891e04e3d91d_2:
    and w12, w12, #255
    cbz w12, L891e04e3d91d_6
L891e04e3d91d_8:
    cmp w14, #0
    b.ne L891e04e3d91d_6
L891e04e3d91d_5:
    adrp x14, _lb_text_d5ee4082093a@PAGE
    add x14, x14, _lb_text_d5ee4082093a@PAGEOFF
    mov x0, x15
    mov x1, x14
    bl _lb_core_7trap_at
L891e04e3d91d_6:
L891e04e3d91d_7:
    and x14, x19, #4294967295
    mov x0, x14
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_6qadd_u
_lb_core_6qadd_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov w12, w2
    mov x13, x3
    cmp w12, #64
    cset w7, ge
    cbz w7, L86b6163a0675_19
L86b6163a0675_18:
    movn x6, #0
    b L86b6163a0675_25
L86b6163a0675_19:
L86b6163a0675_20:
    sxtw x6, w12
    cmp x6, #64
    b.hs L86b6163a0675_22
L86b6163a0675_23:
    movz x9, #1
    lsl x6, x9, x12
    subs x6, x6, #1
    b.cc L86b6163a0675_c1
L86b6163a0675_25:
    and x14, x14, x6
    cbz w7, L86b6163a0675_29
L86b6163a0675_28:
    movn x6, #0
    b L86b6163a0675_35
L86b6163a0675_29:
L86b6163a0675_30:
    sxtw x6, w12
    cmp x6, #64
    b.hs L86b6163a0675_32
L86b6163a0675_33:
    movz x9, #1
    lsl x6, x9, x12
    subs x6, x6, #1
    b.cc L86b6163a0675_c2
L86b6163a0675_35:
    and x15, x15, x6
    add x15, x14, x15
    cmp x15, x14
    b.lo L86b6163a0675_1
L86b6163a0675_4:
    cbz w7, L86b6163a0675_9
L86b6163a0675_8:
    movn x14, #0
    b L86b6163a0675_15
L86b6163a0675_9:
L86b6163a0675_10:
    sxtw x14, w12
    cmp x14, #64
    b.hs L86b6163a0675_12
L86b6163a0675_13:
    movz x9, #1
    lsl x14, x9, x12
    subs x14, x14, #1
    b.cc L86b6163a0675_c3
L86b6163a0675_15:
    cmp x15, x14
    b.ls L86b6163a0675_2
L86b6163a0675_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86b6163a0675_2:
L86b6163a0675_3:
    str x15, [x13]
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L86b6163a0675_22:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L86b6163a0675_32:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L86b6163a0675_12:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L86b6163a0675_c1:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L86b6163a0675_c2:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L86b6163a0675_c3:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_6qmul_u
_lb_core_6qmul_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov w12, w2
    mov x13, x3
    cmp w12, #64
    cset w7, ge
    cbz w7, L7cc782df5648_19
L7cc782df5648_18:
    movn x6, #0
    b L7cc782df5648_25
L7cc782df5648_19:
L7cc782df5648_20:
    sxtw x6, w12
    cmp x6, #64
    b.hs L7cc782df5648_22
L7cc782df5648_23:
    movz x9, #1
    lsl x6, x9, x12
    subs x6, x6, #1
    b.cc L7cc782df5648_c1
L7cc782df5648_25:
    and x14, x14, x6
    cbz w7, L7cc782df5648_29
L7cc782df5648_28:
    movn x6, #0
    b L7cc782df5648_35
L7cc782df5648_29:
L7cc782df5648_30:
    sxtw x6, w12
    cmp x6, #64
    b.hs L7cc782df5648_32
L7cc782df5648_33:
    movz x9, #1
    lsl x6, x9, x12
    subs x6, x6, #1
    b.cc L7cc782df5648_c2
L7cc782df5648_35:
    and x15, x15, x6
    cmp x15, #0
    cset w6, eq
    cmp x15, #0
    b.eq L7cc782df5648_2
L7cc782df5648_4:
    cbz w7, L7cc782df5648_10
L7cc782df5648_9:
    movn x12, #0
    b L7cc782df5648_16
L7cc782df5648_10:
L7cc782df5648_11:
    sxtw x7, w12
    cmp x7, #64
    b.hs L7cc782df5648_13
L7cc782df5648_14:
    movz x9, #1
    lsl x12, x9, x12
    subs x12, x12, #1
    b.cc L7cc782df5648_c3
L7cc782df5648_16:
    cbnz w6, L7cc782df5648_5
L7cc782df5648_6:
    udiv x12, x12, x15
    cmp x14, x12
    b.ls L7cc782df5648_2
L7cc782df5648_1:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7cc782df5648_2:
L7cc782df5648_3:
    mul x14, x14, x15
    str x14, [x13]
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7cc782df5648_22:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_32:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_13:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_5:
    adrp x0, _lb_text_130033c460c3@PAGE
    add x0, x0, _lb_text_130033c460c3@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_c1:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_c2:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L7cc782df5648_c3:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_core_11zero_extend
_lb_core_11zero_extend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov w15, w1
    cmp w15, #64
    b.lt L36dee565f9bd_3
L36dee565f9bd_2:
    movn x15, #0
    b L36dee565f9bd_9
L36dee565f9bd_3:
L36dee565f9bd_4:
    sxtw x12, w15
    cmp x12, #64
    b.hs L36dee565f9bd_6
L36dee565f9bd_7:
    movz x9, #1
    lsl x15, x9, x15
    subs x15, x15, #1
    b.cc L36dee565f9bd_c1
L36dee565f9bd_9:
    and x14, x14, x15
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36dee565f9bd_6:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L36dee565f9bd_c1:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_4
_lb_test_4:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #15648
    sub sp, sp, x16
    str x19, [sp, #15640]
    str d8, [sp, #15632]
    str d9, [sp, #15624]
    str d10, [sp, #15616]
    str d11, [sp, #15608]
    str d12, [sp, #15600]
    str d13, [sp, #15592]
    str d14, [sp, #15584]
    movz x16, #6216
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x8, x29, #3120
    bl _lb_settings_defaults
    sub x10, x29, #3120
    movz x16, #9272
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #9272
    sub x0, x29, x16
    movz x16, #6216
    sub x1, x29, x16
    bl _lb_settings_7text_of
    mov w14, w0
    cbz w14, L10b7f1d22e25_1
L10b7f1d22e25_2:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_1:
    ldr x14, [sp, #9448]
L10b7f1d22e25_54:
    cmp x14, #0
    b.eq L10b7f1d22e25_4
L10b7f1d22e25_5:
    mov x9, #0
    str x9, [sp, #6360]
    mov x9, #0
    str x9, [sp, #6368]
    adrp x14, _lb_text_1cda1d70b305@PAGE
    add x14, x14, _lb_text_1cda1d70b305@PAGEOFF
    adrp x15, _lb_text_5d7d688b4a2f@PAGE
    add x15, x15, _lb_text_5d7d688b4a2f@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #9288
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_4:
    sub x8, x29, #3120
    bl _lb_settings_defaults
    sub x10, x29, #3120
    movz x16, #12344
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    fmov d8, #0.7500000
    fmov d0, d8
    movz x16, #12344
    sub x0, x29, x16
    movz x1, #2
    bl _lb_settings_Settings_set
    fmov d9, #-20.0000000
    fmov d0, d9
    movz x16, #12344
    sub x0, x29, x16
    movz x1, #4
    bl _lb_settings_Settings_set
    ldr d10, L10b7f1d22e25_k0
    fmov d0, d10
    movz x16, #12344
    sub x0, x29, x16
    mov x1, #0
    bl _lb_settings_Settings_set
    fmov d11, #2.0000000
    fmov d0, d11
    movz x16, #12344
    sub x0, x29, x16
    movz x1, #117
    bl _lb_settings_Settings_set
    fmov d12, xzr
    str d12, [sp, #3280]
    ldr d24, L10b7f1d22e25_k1
    str d24, [sp, #3288]
    fmov d13, #1.0000000
    str d13, [sp, #3296]
    movz x16, #12368
    sub x9, x29, x16
    str x9, [sp, #3264]
    movz x9, #3
    str x9, [sp, #3272]
    str d12, [sp, #3240]
    fmov d14, #0.2500000
    str d14, [sp, #3248]
    str d13, [sp, #3256]
    movz x16, #12408
    sub x9, x29, x16
    str x9, [sp, #3224]
    movz x9, #3
    str x9, [sp, #3232]
    movz x16, #12344
    sub x0, x29, x16
    mov x1, #0
    movz x16, #12384
    sub x9, x29, x16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x16, #12424
    sub x9, x29, x16
    ldr x4, [x9]
    ldr x5, [x9, #8]
    bl _lb_settings_Settings_9set_curve
    mov w14, w0
    cbz w14, L10b7f1d22e25_7
L10b7f1d22e25_8:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_7:
    movz x16, #12344
    sub x0, x29, x16
    movz x16, #6216
    sub x1, x29, x16
    bl _lb_settings_7text_of
    mov w14, w0
    cbz w14, L10b7f1d22e25_10
L10b7f1d22e25_11:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_10:
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    adrp x12, _lb_text_a12f85ee7682@PAGE
    add x12, x12, _lb_text_a12f85ee7682@PAGEOFF
    cmp x15, #77
    cset w13, eq
    cbnz w13, L10b7f1d22e25_15
L10b7f1d22e25_87:
    b L10b7f1d22e25_16
L10b7f1d22e25_15:
    mov x0, x14
    mov x1, x12
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L10b7f1d22e25_16:
    and w14, w13, #255
    cbnz w14, L10b7f1d22e25_13
L10b7f1d22e25_14:
    mov x9, #0
    str x9, [sp, #3208]
    mov x9, #0
    str x9, [sp, #3216]
    adrp x14, _lb_text_9aff5bde7672@PAGE
    add x14, x14, _lb_text_9aff5bde7672@PAGEOFF
    adrp x15, _lb_text_a231a43e811f@PAGE
    add x15, x15, _lb_text_a231a43e811f@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12440
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_13:
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    str x14, [sp, #3192]
    str x15, [sp, #3200]
    movz x16, #12456
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #6176
    sub x8, x29, x16
    bl _lb_settings_parse
    movz x16, #6176
    sub x10, x29, x16
    sub x0, x29, #3120
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #2
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c1
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fcmp d8, d24
    b.ne L10b7f1d22e25_19
L10b7f1d22e25_22:
    movz x9, #4
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c2
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fcmp d9, d24
    b.ne L10b7f1d22e25_19
L10b7f1d22e25_21:
    mov x9, #0
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c3
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fcmp d10, d24
    b.ne L10b7f1d22e25_19
L10b7f1d22e25_20:
    movz x9, #117
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c4
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fcmp d11, d24
    b.eq L10b7f1d22e25_18
L10b7f1d22e25_19:
    mov x9, #0
    str x9, [sp, #3176]
    mov x9, #0
    str x9, [sp, #3184]
    adrp x14, _lb_text_9e31a1e2775f@PAGE
    add x14, x14, _lb_text_9e31a1e2775f@PAGEOFF
    adrp x15, _lb_text_bb005fcd10eb@PAGE
    add x15, x15, _lb_text_bb005fcd10eb@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12472
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
    sub x11, x29, #3144
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #3144
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_18:
    ldr x14, [sp, #13472]
    cmp x14, #3
    b.ne L10b7f1d22e25_25
L10b7f1d22e25_26:
L10b7f1d22e25_66:
    ldr d24, [sp, #13616]
    fcmp d24, d14
    b.eq L10b7f1d22e25_24
L10b7f1d22e25_25:
    mov x9, #0
    str x9, [sp, #3160]
    mov x9, #0
    str x9, [sp, #3168]
    adrp x14, _lb_text_ae9de6da3660@PAGE
    add x14, x14, _lb_text_ae9de6da3660@PAGEOFF
    adrp x15, _lb_text_2dbbbee00624@PAGE
    add x15, x15, _lb_text_2dbbbee00624@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12488
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_24:
    adrp x14, _lb_text_7e323006e887@PAGE
    add x14, x14, _lb_text_7e323006e887@PAGEOFF
    str x14, [sp, #3144]
    movz x9, #95
    str x9, [sp, #3152]
    movz x16, #12504
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x16, #6176
    sub x8, x29, x16
    bl _lb_settings_parse
    movz x16, #6176
    sub x10, x29, x16
    sub x0, x29, #3120
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x9, #2
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c5
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fmov d25, #6.0000000
    fcmp d25, d24
    b.ne L10b7f1d22e25_29
L10b7f1d22e25_32:
    movz x9, #4
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c6
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fcmp d12, d24
    b.ne L10b7f1d22e25_29
L10b7f1d22e25_31:
    mov x9, #0
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c7
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    ldr d25, L10b7f1d22e25_k2
    fcmp d25, d24
    b.ne L10b7f1d22e25_29
L10b7f1d22e25_30:
    movz x9, #34
    str w9, [sp, #12512]
    sub x16, x29, #3136
    ldrb w14, [x16]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c8
    sub x10, x29, #3120
    ldr d24, [x10, x14, lsl #3]
    fmov d25, #-12.5000000
    fcmp d25, d24
    b.eq L10b7f1d22e25_28
L10b7f1d22e25_29:
    mov x9, #0
    str x9, [sp, #3128]
    mov x9, #0
    str x9, [sp, #3136]
    adrp x14, _lb_text_bfc663a52353@PAGE
    add x14, x14, _lb_text_bfc663a52353@PAGEOFF
    adrp x15, _lb_text_a621952177e1@PAGE
    add x15, x15, _lb_text_a621952177e1@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12520
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
    sub x11, x29, #3144
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #3144
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_28:
    mov x19, #0
L10b7f1d22e25_75:
    cmp x19, #5
    b.hs L10b7f1d22e25_78
    .p2align 4
L10b7f1d22e25_76:
    movz x10, #264
    mul x14, x19, x10
    sub x10, x29, #2176
    add x14, x14, x10
    mov x10, x14
    sub x0, x29, #3384
    mov x1, x10
    movz x2, #264
    bl _memcpy
    ldr x14, [sp, #12264]
    cmp x14, #0
    b.ls L10b7f1d22e25_80
L10b7f1d22e25_79:
    mov w14, #0
    b L10b7f1d22e25_84
L10b7f1d22e25_80:
L10b7f1d22e25_81:
    add x19, x19, #1
    cmp x19, #5
    b.lo L10b7f1d22e25_76
L10b7f1d22e25_78:
    movz w14, #1
L10b7f1d22e25_84:
    cbnz w14, L10b7f1d22e25_34
L10b7f1d22e25_35:
    mov x9, #0
    str x9, [sp, #3112]
    mov x9, #0
    str x9, [sp, #3120]
    adrp x14, _lb_text_8c5270abf54a@PAGE
    add x14, x14, _lb_text_8c5270abf54a@PAGEOFF
    adrp x15, _lb_text_4c0a299f1923@PAGE
    add x15, x15, _lb_text_4c0a299f1923@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #12536
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_34:
    adrp x14, _lb_text_c3e82f24f399@PAGE
    add x14, x14, _lb_text_c3e82f24f399@PAGEOFF
    str x14, [sp, #40]
    movz x9, #51
    str x9, [sp, #48]
    movz x16, #15608
    sub x9, x29, x16
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #3120
    bl _lb_settings_parse
    sub x10, x29, #3120
    movz x16, #15592
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    ldr x14, [sp, #2448]
    movz x10, #4
    cmp x14, x10
    b.hi L10b7f1d22e25_c9
    cmp x14, #2
    b.ne L10b7f1d22e25_38
L10b7f1d22e25_41:
    ldr d24, [sp, #2336]
    ldr d25, [sp, #2320]
    fsub d24, d24, d25
    ldr d25, [sp, #2344]
    ldr d26, [sp, #2328]
    fsub d25, d25, d26
    fmul d25, d25, d25
    fmul d24, d24, d24
    fcmp d25, d24
    b.le L10b7f1d22e25_38
L10b7f1d22e25_40:
    ldr d24, [sp, #2368]
    ldr d25, [sp, #2352]
    fsub d24, d24, d25
    ldr d25, [sp, #2376]
    ldr d26, [sp, #2360]
    fsub d25, d25, d26
    fmul d25, d25, d25
    fmul d24, d24, d24
    fcmp d25, d24
    b.gt L10b7f1d22e25_38
L10b7f1d22e25_39:
    movz x9, #2
    str w9, [sp, #15568]
    ldrb w14, [x29, #-80]
    movz x10, #118
    cmp x14, x10
    b.hs L10b7f1d22e25_c10
    movz x16, #15592
    sub x10, x29, x16
    ldr d24, [x10, x14, lsl #3]
    fcmp d13, d24
    b.eq L10b7f1d22e25_37
L10b7f1d22e25_38:
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    str x9, [sp, #32]
    adrp x14, _lb_text_6f1e778f87ea@PAGE
    add x14, x14, _lb_text_6f1e778f87ea@PAGEOFF
    adrp x15, _lb_text_6358b6165c69@PAGE
    add x15, x15, _lb_text_6358b6165c69@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #15624
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_37:
    movz x16, #15592
    sub x0, x29, x16
    movz x16, #6216
    sub x1, x29, x16
    bl _lb_settings_7text_of
    mov w14, w0
    cbz w14, L10b7f1d22e25_43
L10b7f1d22e25_44:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_43:
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    adrp x12, _lb_text_25f8cf9a5653@PAGE
    add x12, x12, _lb_text_25f8cf9a5653@PAGEOFF
    cmp x15, #51
    cset w13, eq
    cbnz w13, L10b7f1d22e25_48
L10b7f1d22e25_88:
    b L10b7f1d22e25_49
L10b7f1d22e25_48:
    mov x0, x14
    mov x1, x12
    mov x2, x15
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w13, eq
L10b7f1d22e25_49:
    and w14, w13, #255
    cbnz w14, L10b7f1d22e25_46
L10b7f1d22e25_47:
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    str x9, [sp, #16]
    adrp x14, _lb_text_c29fa15818a8@PAGE
    add x14, x14, _lb_text_c29fa15818a8@PAGEOFF
    adrp x15, _lb_text_e0f6362c7cf0@PAGE
    add x15, x15, _lb_text_e0f6362c7cf0@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #15640
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
    sub x11, x29, #88
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #88
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_46:
    movz x16, #6216
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    mov x0, #0
    ldr x19, [sp, #15640]
    ldr d8, [sp, #15632]
    ldr d9, [sp, #15624]
    ldr d10, [sp, #15616]
    ldr d11, [sp, #15608]
    ldr d12, [sp, #15600]
    ldr d13, [sp, #15592]
    ldr d14, [sp, #15584]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10b7f1d22e25_c1:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c2:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c3:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c4:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c5:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c6:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c7:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c8:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c9:
    adrp x0, _lb_text_84310cfe3185@PAGE
    add x0, x0, _lb_text_84310cfe3185@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L10b7f1d22e25_c10:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L10b7f1d22e25_k0:
    .quad 4662879279816638464
L10b7f1d22e25_k1:
    .quad 4599075939470750515
L10b7f1d22e25_k2:
    .quad 4655046358980362240


    .p2align 2
    .globl _lb_settings_defaults
_lb_settings_defaults:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9840
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    movz x16, #6120
    sub x0, x29, x16
    mov x1, #0
    movz x2, #3056
    bl _memset
    movz x16, #6776
    sub x8, x29, x16
    bl _lb_recipe_14default_recipe
    movz x16, #6776
    sub x10, x29, x16
    sub x0, x29, #3720
    mov x1, x10
    movz x2, #656
    bl _memcpy
    movz x16, #6120
    sub x10, x29, x16
    sub x0, x29, #3064
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    adrp x14, _lb_parameters_parameters@PAGE
    add x14, x14, _lb_parameters_parameters@PAGEOFF
    mov x15, #0
L12fa36d51112_1:
    cmp x15, #118
    b.hs L12fa36d51112_4
    .p2align 4
L12fa36d51112_2:
    sub x9, x29, #3064
    add x12, x9, x15, lsl #3
    movz x10, #80
    mul x13, x15, x10
    add x13, x14, x13
    ldr d24, [x13, #64]
    str d24, [x12]
    add x15, x15, #1
    cmp x15, #118
    b.lo L12fa36d51112_2
L12fa36d51112_4:
    sub x10, x29, #3064
    movz x16, #9832
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #9832
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
    .globl _lb_settings_7text_of
_lb_settings_7text_of:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #7008
    sub sp, sp, x16
    str x19, [sp, #7000]
    str x20, [sp, #6992]
    str x21, [sp, #6984]
    str x22, [sp, #6976]
    str x23, [sp, #6968]
    str x24, [sp, #6960]
    str x25, [sp, #6952]
    str x26, [sp, #6944]
    str d8, [sp, #6936]
    mov x19, x0
    mov x20, x1
    mov x9, #0
    str x9, [x20, #16]
    movz x16, #6184
    sub x8, x29, x16
    bl _lb_settings_defaults
    movz x16, #6184
    sub x10, x29, x16
    sub x0, x29, #3128
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    adrp x21, _lb_parameters_parameters@PAGE
    add x21, x21, _lb_parameters_parameters@PAGEOFF
    mov x22, #0
L683ae4d09b8f_1:
    cmp x22, #118
    b.hs L683ae4d09b8f_4
    .p2align 4
L683ae4d09b8f_2:
    lsl x14, x22, #3
    ldr d8, [x14, x19]
    sub x10, x29, #3128
    ldr d24, [x10, x14]
    fcmp d8, d24
    b.ne L683ae4d09b8f_6
L683ae4d09b8f_5:
    b L683ae4d09b8f_21
L683ae4d09b8f_6:
L683ae4d09b8f_7:
    ldr x14, [x20, #16]
L683ae4d09b8f_126:
    cmp x14, #0
    b.ls L683ae4d09b8f_10
L683ae4d09b8f_9:
    mov x0, x20
    movz x1, #59
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_12
L683ae4d09b8f_13:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_fc9cbdfa2813@PAGE
    add x15, x15, _lb_text_fc9cbdfa2813@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_12:
L683ae4d09b8f_10:
L683ae4d09b8f_11:
    movz x10, #80
    mul x14, x22, x10
    add x14, x21, x14
    movz x16, #6936
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    movz x16, #6936
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L683ae4d09b8f_127
L683ae4d09b8f_128:
    movz x9, #1
    str w9, [sp, #3872]
    movz w14, #1
    b L683ae4d09b8f_130
L683ae4d09b8f_127:
    mov x9, #0
    str w9, [sp, #3872]
    mov w14, #0
L683ae4d09b8f_130:
    strb w14, [sp, #3872]
    ldrb w14, [sp, #3872]
    cbz w14, L683ae4d09b8f_15
L683ae4d09b8f_16:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_c89948b5c80a@PAGE
    add x15, x15, _lb_text_c89948b5c80a@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_15:
    mov x0, x20
    movz x1, #61
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_18
L683ae4d09b8f_19:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_cc735912066c@PAGE
    add x15, x15, _lb_text_cc735912066c@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_18:
    fmov d0, d8
    mov x0, x20
    bl _lb_settings_11put_decimal
    mov w14, w0
    cbz w14, L683ae4d09b8f_21
L683ae4d09b8f_22:
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_21:
L683ae4d09b8f_3:
    add x22, x22, #1
    cmp x22, #118
    b.lo L683ae4d09b8f_2
L683ae4d09b8f_4:
    add x21, x19, #944
    adrp x22, _lb_settings_11curve_names@PAGE
    add x22, x22, _lb_settings_11curve_names@PAGEOFF
    mov x23, #0
L683ae4d09b8f_24:
    cmp x23, #5
    b.hs L683ae4d09b8f_27
    .p2align 4
L683ae4d09b8f_25:
    movz x10, #264
    mul x14, x23, x10
    add x14, x21, x14
    mov x10, x14
    sub x0, x29, #336
    mov x1, x10
    movz x2, #264
    bl _memcpy
    ldr x14, [sp, #6672]
    cmp x14, #0
    b.ne L683ae4d09b8f_29
L683ae4d09b8f_28:
    b L683ae4d09b8f_47
L683ae4d09b8f_29:
L683ae4d09b8f_30:
    ldr x14, [x20, #16]
L683ae4d09b8f_134:
    cmp x14, #0
    b.ls L683ae4d09b8f_33
L683ae4d09b8f_32:
    mov x0, x20
    movz x1, #59
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_35
L683ae4d09b8f_36:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_472843417ca0@PAGE
    add x15, x15, _lb_text_472843417ca0@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_35:
L683ae4d09b8f_33:
L683ae4d09b8f_34:
    add x14, x22, x23, lsl #4
    movz x16, #6952
    sub x11, x29, x16
    ldp x16, x17, [x14, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    movz x16, #6952
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L683ae4d09b8f_135
L683ae4d09b8f_136:
    movz x9, #1
    str w9, [sp, #6664]
    movz w14, #1
    b L683ae4d09b8f_138
L683ae4d09b8f_135:
    mov x9, #0
    str w9, [sp, #6664]
    mov w14, #0
L683ae4d09b8f_138:
    sub x16, x29, #344
    strb w14, [x16]
    sub x16, x29, #344
    ldrb w14, [x16]
    cbz w14, L683ae4d09b8f_38
L683ae4d09b8f_39:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_4d097a2fc8de@PAGE
    add x15, x15, _lb_text_4d097a2fc8de@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_38:
    mov x0, x20
    movz x1, #61
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_41
L683ae4d09b8f_42:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_576e08e7cf48@PAGE
    add x15, x15, _lb_text_576e08e7cf48@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_41:
    ldr x24, [sp, #6672]
    mov x25, #0
L683ae4d09b8f_44:
    cmp x25, x24
    b.hs L683ae4d09b8f_47
    .p2align 4
L683ae4d09b8f_45:
    cmp x25, #0
    b.ls L683ae4d09b8f_49
L683ae4d09b8f_48:
    mov x0, x20
    movz x1, #32
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_51
L683ae4d09b8f_52:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_1882f78e5f2e@PAGE
    add x15, x15, _lb_text_1882f78e5f2e@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_51:
L683ae4d09b8f_49:
L683ae4d09b8f_50:
    movz x10, #16
    cmp x25, x10
    b.hs L683ae4d09b8f_c1
    lsl x26, x25, #3
    sub x10, x29, #328
    ldr d24, [x10, x26]
    fmov d0, d24
    mov x0, x20
    bl _lb_settings_11put_decimal
    mov w14, w0
    cbz w14, L683ae4d09b8f_54
L683ae4d09b8f_55:
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_54:
    mov x0, x20
    movz x1, #44
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_57
L683ae4d09b8f_58:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_b212f9c899c1@PAGE
    add x15, x15, _lb_text_b212f9c899c1@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_57:
    sub x11, x29, #200
    ldr d24, [x26, x11]
    fmov d0, d24
    mov x0, x20
    bl _lb_settings_11put_decimal
    mov w14, w0
    cbz w14, L683ae4d09b8f_60
L683ae4d09b8f_61:
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_60:
    add x25, x25, #1
    cmp x25, x24
    b.lo L683ae4d09b8f_45
L683ae4d09b8f_47:
L683ae4d09b8f_26:
    add x23, x23, #1
    cmp x23, #5
    b.lo L683ae4d09b8f_25
L683ae4d09b8f_27:
    ldr x14, [x19, #2392]
    cmp x14, #0
    b.ls L683ae4d09b8f_64
L683ae4d09b8f_63:
    ldr x14, [x20, #16]
L683ae4d09b8f_142:
    cmp x14, #0
    b.ls L683ae4d09b8f_67
L683ae4d09b8f_66:
    mov x0, x20
    movz x1, #59
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_69
L683ae4d09b8f_70:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_9c14e7843956@PAGE
    add x15, x15, _lb_text_9c14e7843956@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_69:
L683ae4d09b8f_67:
L683ae4d09b8f_68:
    adrp x14, _lb_text_bc1c71986b20@PAGE
    add x14, x14, _lb_text_bc1c71986b20@PAGEOFF
    str x14, [sp, #40]
    movz x16, #6968
    sub x9, x29, x16
    add x14, x9, #8
    movz x9, #7
    str x9, [x14]
    mov x0, x20
    movz x16, #6968
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L683ae4d09b8f_143
L683ae4d09b8f_144:
    movz x9, #1
    str w9, [sp, #6928]
    movz w14, #1
    b L683ae4d09b8f_146
L683ae4d09b8f_143:
    mov x9, #0
    str w9, [sp, #6928]
    mov w14, #0
L683ae4d09b8f_146:
    strb w14, [x29, #-80]
    ldrb w14, [x29, #-80]
    cbz w14, L683ae4d09b8f_72
L683ae4d09b8f_73:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_7d29dc2353ae@PAGE
    add x15, x15, _lb_text_7d29dc2353ae@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_72:
    ldr x21, [x19, #2392]
    add x22, x19, #2264
    mov x23, #0
L683ae4d09b8f_75:
    cmp x23, x21
    b.hs L683ae4d09b8f_78
    .p2align 4
L683ae4d09b8f_76:
    cmp x23, #0
    b.ls L683ae4d09b8f_80
L683ae4d09b8f_79:
    mov x0, x20
    movz x1, #32
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_82
L683ae4d09b8f_83:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_766b07f9cea2@PAGE
    add x15, x15, _lb_text_766b07f9cea2@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_82:
L683ae4d09b8f_80:
L683ae4d09b8f_81:
    movz x10, #4
    cmp x23, x10
    b.hs L683ae4d09b8f_c2
    add x14, x22, x23, lsl #5
    ldr q24, [x14]
    add x14, x14, #16
    ldr q25, [x14]
    sub x9, x29, #104
    str q24, [x9]
    sub x9, x29, #88
    str q25, [x9]
    mov x24, #0
L683ae4d09b8f_85:
    cmp x24, #4
    b.hs L683ae4d09b8f_88
    .p2align 4
L683ae4d09b8f_86:
    sub x10, x29, #104
    ldr d8, [x10, x24, lsl #3]
    cmp x24, #0
    b.ls L683ae4d09b8f_90
L683ae4d09b8f_89:
    mov x0, x20
    movz x1, #44
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_92
L683ae4d09b8f_93:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_6d50de4043c7@PAGE
    add x15, x15, _lb_text_6d50de4043c7@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_92:
L683ae4d09b8f_90:
L683ae4d09b8f_91:
    fmov d0, d8
    mov x0, x20
    bl _lb_settings_11put_decimal
    mov w14, w0
    cbz w14, L683ae4d09b8f_95
L683ae4d09b8f_96:
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_95:
    add x24, x24, #1
    cmp x24, #4
    b.lo L683ae4d09b8f_86
L683ae4d09b8f_88:
    add x23, x23, #1
    cmp x23, x21
    b.lo L683ae4d09b8f_76
L683ae4d09b8f_78:
L683ae4d09b8f_64:
L683ae4d09b8f_65:
    movz x16, #6224
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x14, x19, #2400
    mov x0, x14
    movz x16, #6224
    sub x1, x29, x16
    bl _lb_recipe_7text_of
    mov w14, w0
    cbz w14, L683ae4d09b8f_98
L683ae4d09b8f_99:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #96
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_98:
    movz x16, #6264
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x8, x29, #728
    bl _lb_recipe_14default_recipe
    sub x10, x29, #728
    movz x16, #6920
    sub x0, x29, x16
    mov x1, x10
    movz x2, #656
    bl _memcpy
    movz x16, #6920
    sub x0, x29, x16
    movz x16, #6264
    sub x1, x29, x16
    bl _lb_recipe_7text_of
    mov w14, w0
    cbz w14, L683ae4d09b8f_101
L683ae4d09b8f_102:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #96
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_101:
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x19, x0
    mov x21, x1
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    cmp x21, x15
    cset w15, eq
    cbnz w15, L683ae4d09b8f_107
L683ae4d09b8f_159:
    b L683ae4d09b8f_108
L683ae4d09b8f_107:
    mov x0, x19
    mov x1, x14
    mov x2, x21
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w15, eq
L683ae4d09b8f_108:
    and w14, w15, #255
    cmp w14, #0
    b.ne L683ae4d09b8f_105
L683ae4d09b8f_104:
    ldr x14, [x20, #16]
L683ae4d09b8f_150:
    cmp x14, #0
    b.ls L683ae4d09b8f_110
L683ae4d09b8f_109:
    mov x0, x20
    movz x1, #59
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L683ae4d09b8f_112
L683ae4d09b8f_113:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    adrp x14, _lb_text_0f54d320b1c3@PAGE
    add x14, x14, _lb_text_0f54d320b1c3@PAGEOFF
    adrp x15, _lb_core_11origin_base@PAGE
    add x15, x15, _lb_core_11origin_base@PAGEOFF
    sub x14, x14, x15
    str w14, [x19, #20]
    sub x11, x29, #96
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_112:
L683ae4d09b8f_110:
L683ae4d09b8f_111:
    adrp x14, _lb_text_1ec16d44467e@PAGE
    add x14, x14, _lb_text_1ec16d44467e@PAGEOFF
    str x14, [sp, #24]
    movz x16, #6984
    sub x9, x29, x16
    add x14, x9, #8
    movz x9, #7
    str x9, [x14]
    mov x0, x20
    movz x16, #6984
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L683ae4d09b8f_151
L683ae4d09b8f_152:
    movz x9, #1
    str w9, [sp, #6928]
    movz w14, #1
    b L683ae4d09b8f_154
L683ae4d09b8f_151:
    mov x9, #0
    str w9, [sp, #6928]
    mov w14, #0
L683ae4d09b8f_154:
    strb w14, [x29, #-80]
    ldrb w14, [x29, #-80]
    cbz w14, L683ae4d09b8f_115
L683ae4d09b8f_116:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    adrp x14, _lb_text_685c0010b6da@PAGE
    add x14, x14, _lb_text_685c0010b6da@PAGEOFF
    adrp x15, _lb_core_11origin_base@PAGE
    add x15, x15, _lb_core_11origin_base@PAGEOFF
    sub x14, x14, x15
    str w14, [x19, #20]
    sub x11, x29, #96
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_115:
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_text
    mov x14, x0
    mov x15, x1
    str x14, [sp, #8]
    movz x16, #7000
    sub x9, x29, x16
    add x14, x9, #8
    str x15, [x14]
    mov x0, x20
    movz x16, #7000
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L683ae4d09b8f_155
L683ae4d09b8f_156:
    movz x9, #1
    str w9, [sp, #6928]
    movz w14, #1
    b L683ae4d09b8f_158
L683ae4d09b8f_155:
    mov x9, #0
    str w9, [sp, #6928]
    mov w14, #0
L683ae4d09b8f_158:
    strb w14, [x29, #-80]
    ldrb w14, [x29, #-80]
    cbz w14, L683ae4d09b8f_118
L683ae4d09b8f_119:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    adrp x14, _lb_text_b19692ed4cc0@PAGE
    add x14, x14, _lb_text_b19692ed4cc0@PAGEOFF
    adrp x15, _lb_core_11origin_base@PAGE
    add x15, x15, _lb_core_11origin_base@PAGEOFF
    sub x14, x14, x15
    str w14, [x19, #20]
    sub x11, x29, #96
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    sub x10, x29, #96
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_118:
L683ae4d09b8f_105:
L683ae4d09b8f_106:
    movz x16, #6264
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    movz x16, #6224
    sub x0, x29, x16
    bl _lb_20luce_std_collections_Buffer_destroy
    mov x0, #0
    ldr x19, [sp, #7000]
    ldr x20, [sp, #6992]
    ldr x21, [sp, #6984]
    ldr x22, [sp, #6976]
    ldr x23, [sp, #6968]
    ldr x24, [sp, #6960]
    ldr x25, [sp, #6952]
    ldr x26, [sp, #6944]
    ldr d8, [sp, #6936]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L683ae4d09b8f_c1:
    adrp x0, _lb_text_505d3fa3ca53@PAGE
    add x0, x0, _lb_text_505d3fa3ca53@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L683ae4d09b8f_c2:
    adrp x0, _lb_text_19cfb89be13f@PAGE
    add x0, x0, _lb_text_19cfb89be13f@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_Settings_set
_lb_settings_Settings_set:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    fmov d24, d0
    mov x14, x0
    uxtb w15, w1
    mov w15, w15
    adrp x12, _lb_parameters_parameters@PAGE
    add x12, x12, _lb_parameters_parameters@PAGEOFF
    movz x10, #118
    cmp x15, x10
    b.hs L9f94149877e1_c1
    movz x10, #80
    mul x13, x15, x10
    add x12, x12, x13
    sub x11, x29, #80
    ldp x16, x17, [x12, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x12, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x12, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x12, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x12, #64]
    stp x16, x17, [x11, #64]
    add x14, x14, x15, lsl #3
    fmov x15, d24
    and x15, x15, #9218868437227405312
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.eq L9f94149877e1_2
L9f94149877e1_1:
    b L9f94149877e1_3
L9f94149877e1_2:
    ldr d24, [sp, #64]
L9f94149877e1_3:
    ldr d25, [sp, #48]
    ldr d26, [sp, #56]
    fcmp d25, d26
    b.hi L9f94149877e1_7
L9f94149877e1_6:
    fmov x15, d24
    and x15, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L9f94149877e1_9
L9f94149877e1_8:
    b L9f94149877e1_21
L9f94149877e1_9:
L9f94149877e1_10:
    fcmp d24, d25
    cset w15, mi
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    cmp w15, #0
    fcsel d24, d25, d24, ne
L9f94149877e1_21:
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9f94149877e1_7:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L9f94149877e1_c1:
    adrp x0, _lb_text_6b31c7625e0c@PAGE
    add x0, x0, _lb_text_6b31c7625e0c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_Settings_9set_curve
_lb_settings_Settings_9set_curve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #344]
    str x20, [sp, #336]
    str x21, [sp, #328]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    str x5, [x16, #8]
    mov x19, x0
    mov x20, x1
    cmp x20, #5
    b.hs Ld954b93eb46f_1
Ld954b93eb46f_5:
    ldr x21, [sp, #296]
    ldr x14, [sp, #280]
    cmp x14, x21
    b.ne Ld954b93eb46f_1
Ld954b93eb46f_4:
    cmp x21, #16
    b.ls Ld954b93eb46f_2
Ld954b93eb46f_1:
    adrp x14, _lb_settings_invalid@PAGE
    add x14, x14, _lb_settings_invalid@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_97fdebd4f8b2@PAGE
    add x20, x20, _lb_text_97fdebd4f8b2@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #45
    str x9, [x14, #16]
    adrp x15, _lb_text_81c8236a5bf0@PAGE
    add x15, x15, _lb_text_81c8236a5bf0@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld954b93eb46f_2:
Ld954b93eb46f_3:
    sub x0, x29, #344
    mov x1, #0
    movz x2, #264
    bl _memset
    fmov d24, xzr
    fmov d25, #1.0000000
    ldr x14, [sp, #288]
    fcmp d24, d25
    cset w15, ls
    ldr x12, [sp, #272]
    mov x13, #0
    mov x7, #0
Ld954b93eb46f_7:
    cmp x13, x21
    b.hs Ld954b93eb46f_10
    .p2align 4
Ld954b93eb46f_8:
    lsl x6, x13, #3
    ldr d26, [x14, x6]
    cbz w15, Ld954b93eb46f_23
Ld954b93eb46f_22:
    fmov x5, d26
    and x5, x5, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x5, x10
    b.ls Ld954b93eb46f_25
Ld954b93eb46f_24:
    b Ld954b93eb46f_37
Ld954b93eb46f_25:
Ld954b93eb46f_26:
    fcmp d26, d24
    cset w5, mi
    fcmp d26, d25
    fcsel d26, d25, d26, gt
    cmp w5, #0
    fcsel d26, d24, d26, ne
Ld954b93eb46f_37:
Ld954b93eb46f_11:
    cmp x7, #0
    b.ls Ld954b93eb46f_13
    .p2align 4
Ld954b93eb46f_14:
    sub x5, x7, #1
    movz x10, #16
    cmp x5, x10
    b.hs Ld954b93eb46f_c1
    lsl x4, x5, #3
    sub x10, x29, #336
    ldr d27, [x10, x4]
    fcmp d27, d26
    b.le Ld954b93eb46f_13
Ld954b93eb46f_12:
    movz x10, #16
    cmp x7, x10
    b.hs Ld954b93eb46f_c2
    lsl x7, x7, #3
    sub x11, x29, #336
    str d27, [x7, x11]
    sub x10, x29, #208
    add x7, x7, x10
    sub x10, x29, #208
    ldr d27, [x10, x4]
    str d27, [x7]
    mov x7, x5
    cmp x7, #0
    b.hi Ld954b93eb46f_14
Ld954b93eb46f_13:
    movz x10, #16
    cmp x7, x10
    b.hs Ld954b93eb46f_c3
    lsl x7, x7, #3
    sub x11, x29, #336
    str d26, [x7, x11]
    sub x10, x29, #208
    add x7, x7, x10
    ldr d26, [x12, x6]
    cbz w15, Ld954b93eb46f_39
Ld954b93eb46f_38:
    fmov x6, d26
    and x6, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls Ld954b93eb46f_41
Ld954b93eb46f_40:
    b Ld954b93eb46f_53
Ld954b93eb46f_41:
Ld954b93eb46f_42:
    fcmp d26, d24
    cset w6, mi
    fcmp d26, d25
    fcsel d26, d25, d26, gt
    cmp w6, #0
    fcsel d26, d24, d26, ne
Ld954b93eb46f_53:
    str d26, [x7]
    ldr x7, [sp, #8]
    adds x7, x7, #1
    b.cs Ld954b93eb46f_c4
    str x7, [sp, #8]
    add x13, x13, #1
    cmp x13, x21
    b.lo Ld954b93eb46f_8
Ld954b93eb46f_10:
    cmp x7, #2
    b.ne Ld954b93eb46f_16
Ld954b93eb46f_21:
    ldr d26, [sp, #16]
    fcmp d26, d24
    b.ne Ld954b93eb46f_16
Ld954b93eb46f_20:
    ldr d26, [sp, #144]
    fcmp d26, d24
    b.ne Ld954b93eb46f_16
Ld954b93eb46f_19:
    ldr d24, [sp, #24]
    fcmp d24, d25
    b.ne Ld954b93eb46f_16
Ld954b93eb46f_18:
    ldr d24, [sp, #152]
    fcmp d24, d25
    b.ne Ld954b93eb46f_16
Ld954b93eb46f_15:
    mov x9, #0
    str x9, [sp, #8]
Ld954b93eb46f_16:
Ld954b93eb46f_17:
    add x14, x19, #944
    movz x10, #264
    mul x15, x20, x10
    add x14, x14, x15
    sub x10, x29, #344
    mov x0, x14
    mov x1, x10
    movz x2, #264
    bl _memcpy
    mov x0, #0
    ldr x19, [sp, #344]
    ldr x20, [sp, #336]
    ldr x21, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld954b93eb46f_23:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld954b93eb46f_39:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
Ld954b93eb46f_c1:
    adrp x0, _lb_text_6aa7f5b363f8@PAGE
    add x0, x0, _lb_text_6aa7f5b363f8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld954b93eb46f_c2:
    adrp x0, _lb_text_cde097959975@PAGE
    add x0, x0, _lb_text_cde097959975@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld954b93eb46f_c3:
    adrp x0, _lb_text_27c65de376b8@PAGE
    add x0, x0, _lb_text_27c65de376b8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Ld954b93eb46f_c4:
    adrp x0, _lb_text_c2792a9bb591@PAGE
    add x0, x0, _lb_text_c2792a9bb591@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_parse
_lb_settings_parse:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9200
    sub sp, sp, x16
    sub x16, x29, #8
    str x8, [x16]
    movz x16, #6136
    sub x16, x29, x16
    str x0, [x16]
    str x1, [x16, #8]
    sub x8, x29, #3064
    bl _lb_settings_defaults
    sub x10, x29, #3064
    movz x16, #9192
    sub x0, x29, x16
    mov x1, x10
    movz x2, #3056
    bl _memcpy
    movz x16, #9192
    sub x0, x29, x16
    movz x16, #6136
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_settings_10parse_into
    movz x16, #9192
    sub x10, x29, x16
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
    .globl _lb_settings_Settings_guides
_lb_settings_Settings_guides:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    add x15, x14, #2264
    ldr x14, [x14, #2392]
    movz x10, #4
    cmp x14, x10
    b.hi L5be78d3efae6_c1
    mov x0, x15
    mov x1, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5be78d3efae6_c1:
    adrp x0, _lb_text_84310cfe3185@PAGE
    add x0, x0, _lb_text_84310cfe3185@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_Guide_vertical
_lb_settings_Guide_vertical:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    ldr d24, [x14, #16]
    ldr d25, [x14]
    fsub d24, d24, d25
    ldr d25, [x14, #24]
    ldr d26, [x14, #8]
    fsub d25, d25, d26
    fmul d25, d25, d25
    fmul d24, d24, d24
    fcmp d25, d24
    cset w14, gt
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_14default_recipe
_lb_recipe_14default_recipe:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1328
    sub x16, x29, #8
    str x8, [x16]
    mov x0, #0
    sub x8, x29, #664
    bl _lb_recipe_mode
    sub x10, x29, #664
    sub x0, x29, #1320
    mov x1, x10
    movz x2, #656
    bl _memcpy
    sub x1, x29, #1320
    sub x16, x29, #8
    ldr x0, [x16]
    movz x2, #656
    bl _memcpy
    sub x16, x29, #8
    ldr x0, [x16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_settings_11put_decimal
_lb_settings_11put_decimal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str d8, [sp, #40]
    str d9, [sp, #32]
    fmov d24, d0
    mov x19, x0
    fabs d25, d24
    ldr d8, L96e18ce572c6_k0
    fmul d25, d8, d25
    frinta d9, d25
    fmov d25, xzr
    fcmp d24, d25
    b.pl L96e18ce572c6_2
L96e18ce572c6_4:
    fcmp d9, d25
    b.le L96e18ce572c6_2
L96e18ce572c6_1:
    mov x0, x19
    movz x1, #45
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L96e18ce572c6_5
L96e18ce572c6_6:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_5a28d6881a5e@PAGE
    add x15, x15, _lb_text_5a28d6881a5e@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_5:
L96e18ce572c6_2:
L96e18ce572c6_3:
    fdiv d24, d9, d8
    fcvtzs x14, d24
    fcvtzs x15, d9
    movz x10, #10000
    smulh x11, x14, x10
    mul x12, x14, x10
    cmp x11, x12, asr #63
    b.ne L96e18ce572c6_c1
    subs x20, x15, x12
    b.vs L96e18ce572c6_c2
    mov x0, x19
    mov x1, x14
    bl _lb_20luce_std_collections_Buffer_10put_number
    mov w14, w0
    cbz w14, L96e18ce572c6_8
L96e18ce572c6_9:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_ce4fce8202d6@PAGE
    add x15, x15, _lb_text_ce4fce8202d6@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_8:
    cmp x20, #0
    b.ne L96e18ce572c6_12
L96e18ce572c6_11:
    mov x0, #0
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_12:
    mov x0, x19
    movz x1, #46
    bl _lb_20luce_std_collections_Buffer_8put_byte
    mov w14, w0
    cbz w14, L96e18ce572c6_15
L96e18ce572c6_16:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_459ff789f3e1@PAGE
    add x15, x15, _lb_text_459ff789f3e1@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_15:
    sub x11, x29, #36
    str wzr, [x11, #0]
    mov x14, #0
L96e18ce572c6_18:
    cmp x14, #4
    b.hs L96e18ce572c6_21
    .p2align 4
L96e18ce572c6_19:
    movz x9, #3
    sub x15, x9, x14
    movz x10, #4
    cmp x15, x10
    b.hs L96e18ce572c6_c3
    sub x9, x29, #36
    add x15, x9, x15
    movz x10, #32768, lsl #48
    cmp x20, x10
    cset w12, eq
    mov x10, #0
    and w12, w12, w10
    cbnz w12, L96e18ce572c6_24
L96e18ce572c6_25:
    movz x10, #10
    sdiv x11, x20, x10
    msub x13, x11, x10, x20
    and w13, w13, #255
    add w13, w13, #48
    and w7, w13, #255
    cmp w7, w13
    b.ne L96e18ce572c6_27
L96e18ce572c6_26:
    strb w13, [x15]
    cbnz w12, L96e18ce572c6_30
L96e18ce572c6_31:
    movz x10, #10
    sdiv x20, x20, x10
    add x14, x14, #1
    cmp x14, #4
    b.lo L96e18ce572c6_19
L96e18ce572c6_21:
    movz x14, #4
    .p2align 4
L96e18ce572c6_32:
    subs x15, x14, #1
    b.cc L96e18ce572c6_c4
    movz x10, #4
    cmp x15, x10
    b.hs L96e18ce572c6_c5
    sub x10, x29, #36
    ldrb w12, [x10, x15]
    cmp w12, #48
    b.ne L96e18ce572c6_34
L96e18ce572c6_33:
    mov x14, x15
    b L96e18ce572c6_32
L96e18ce572c6_34:
    movz x10, #4
    cmp x14, x10
    b.hi L96e18ce572c6_c6
    sub x9, x29, #36
    str x9, [sp, #8]
    str x14, [sp, #16]
    mov x0, x19
    sub x9, x29, #56
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_20luce_std_collections_Buffer_put
    mov w14, w0
    cbz w14, L96e18ce572c6_37
L96e18ce572c6_38:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_4460c2d22406@PAGE
    add x15, x15, _lb_text_4460c2d22406@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_37:
    mov x0, #0
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr d8, [sp, #40]
    ldr d9, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L96e18ce572c6_24:
    adrp x0, _lb_text_fc30181364a5@PAGE
    add x0, x0, _lb_text_fc30181364a5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_27:
    adrp x0, _lb_text_fc30181364a5@PAGE
    add x0, x0, _lb_text_fc30181364a5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_30:
    adrp x0, _lb_text_d48c5a128ea8@PAGE
    add x0, x0, _lb_text_d48c5a128ea8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c1:
    adrp x0, _lb_text_8971070aa638@PAGE
    add x0, x0, _lb_text_8971070aa638@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c2:
    adrp x0, _lb_text_8971070aa638@PAGE
    add x0, x0, _lb_text_8971070aa638@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c3:
    adrp x0, _lb_text_fc30181364a5@PAGE
    add x0, x0, _lb_text_fc30181364a5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c4:
    adrp x0, _lb_text_a494b5c9273a@PAGE
    add x0, x0, _lb_text_a494b5c9273a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c5:
    adrp x0, _lb_text_a494b5c9273a@PAGE
    add x0, x0, _lb_text_a494b5c9273a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L96e18ce572c6_c6:
    adrp x0, _lb_text_4460c2d22406@PAGE
    add x0, x0, _lb_text_4460c2d22406@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L96e18ce572c6_k0:
    .quad 4666723172467343360


    .p2align 2
    .globl _lb_13luce_std_math_clamp
_lb_13luce_std_math_clamp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    fcmp d25, d26
    b.hi L10ed5fff6395_2
L10ed5fff6395_1:
    fmov x14, d24
    and x14, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x14, x10
    b.ls L10ed5fff6395_4
L10ed5fff6395_3:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10ed5fff6395_4:
L10ed5fff6395_5:
    fcmp d24, d25
    b.pl L10ed5fff6395_8
L10ed5fff6395_7:
    b L10ed5fff6395_9
L10ed5fff6395_8:
    fcmp d24, d26
    fcsel d24, d26, d24, gt
    fmov d25, d24
L10ed5fff6395_9:
    fmov d0, d25
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10ed5fff6395_2:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_10parse_into
_lb_settings_10parse_into:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1472
    str x19, [sp, #1464]
    str x20, [sp, #1456]
    str x21, [sp, #1448]
    str x22, [sp, #1440]
    str x23, [sp, #1432]
    str x24, [sp, #1424]
    str x25, [sp, #1416]
    str x26, [sp, #1408]
    str x27, [sp, #1400]
    str x28, [sp, #1392]
    str d8, [sp, #1384]
    str d9, [sp, #1376]
    str d10, [sp, #1368]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    mov x19, x0
    ldr x20, [sp, #1336]
    ldr x21, [sp, #1344]
    adrp x22, _lb_parameters_parameters@PAGE
    add x22, x22, _lb_parameters_parameters@PAGEOFF
    adrp x23, _lb_settings_11curve_names@PAGE
    add x23, x23, _lb_settings_11curve_names@PAGEOFF
    adrp x9, _lb_text_5d807e7cc436@PAGE
    add x9, x9, _lb_text_5d807e7cc436@PAGEOFF
    str x9, [sp, #1328]
    fmov d8, xzr
    add x25, x19, #2264
    fmov d9, #1.0000000
    adrp x9, _lb_text_3f2d366b8d26@PAGE
    add x9, x9, _lb_text_3f2d366b8d26@PAGEOFF
    str x9, [sp, #1176]
    add x9, x19, #2400
    str x9, [sp, #1168]
    fcmp d8, d9
    cset w28, ls
    mov x14, #0
L0a6445e56b6e_1:
    cmp x14, x21
    b.hs L0a6445e56b6e_3
    .p2align 4
L0a6445e56b6e_2:
    mov x15, x14
L0a6445e56b6e_4:
    cmp x15, x21
    b.hs L0a6445e56b6e_6
    .p2align 4
L0a6445e56b6e_7:
    ldrb w12, [x20, x15]
    cmp w12, #59
    b.eq L0a6445e56b6e_6
L0a6445e56b6e_5:
    add x15, x15, #1
    cmp x15, x21
    b.lo L0a6445e56b6e_7
L0a6445e56b6e_6:
    cmp x15, x21
    b.hi L0a6445e56b6e_c1
    cmp x14, x15
    b.hi L0a6445e56b6e_9
L0a6445e56b6e_8:
    add x12, x20, x14
    sub x14, x15, x14
    adds x9, x15, #1
    b.cs L0a6445e56b6e_c2
    str x9, [sp, #480]
    mov x13, #0
L0a6445e56b6e_10:
    cmp x13, x14
    b.hs L0a6445e56b6e_12
    .p2align 4
L0a6445e56b6e_13:
    ldrb w7, [x12, x13]
    cmp w7, #61
    b.eq L0a6445e56b6e_12
L0a6445e56b6e_11:
    add x13, x13, #1
    cmp x13, x14
    b.lo L0a6445e56b6e_13
L0a6445e56b6e_12:
    cmp x14, x13
    b.ne L0a6445e56b6e_15
L0a6445e56b6e_14:
    ldr x9, [sp, #480]
    mov x14, x9
    cmp x14, x21
    b.lo L0a6445e56b6e_2
    b L0a6445e56b6e_3
L0a6445e56b6e_15:
    cmp x13, x14
    b.hi L0a6445e56b6e_c3
    adds x7, x13, #1
    b.cs L0a6445e56b6e_c4
    cmp x7, x14
    b.hi L0a6445e56b6e_c5
    add x6, x7, x12
    sub x14, x14, x7
    str x6, [sp, #392]
    str x14, [sp, #400]
    mov x14, #0
L0a6445e56b6e_54:
    cmp x14, #118
    b.hs L0a6445e56b6e_57
    .p2align 4
L0a6445e56b6e_55:
    movz x10, #80
    mul x7, x14, x10
    add x7, x7, x22
    ldr x6, [x7, #8]
    cmp x6, x13
    cset w5, eq
    cbnz w5, L0a6445e56b6e_61
L0a6445e56b6e_155:
    b L0a6445e56b6e_62
L0a6445e56b6e_61:
    ldr x7, [x7]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    mov x0, x7
    mov x1, x12
    mov x2, x6
    bl _memcmp
    mov w7, w0
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    cmp w7, #0
    cset w5, eq
L0a6445e56b6e_62:
    and w7, w5, #255
    cbz w7, L0a6445e56b6e_59
L0a6445e56b6e_58:
    and w14, w14, #255
    movz w7, #1
    b L0a6445e56b6e_65
L0a6445e56b6e_59:
    add x14, x14, #1
    cmp x14, #118
    b.lo L0a6445e56b6e_55
L0a6445e56b6e_57:
    mov w14, #0
    mov w7, #0
L0a6445e56b6e_65:
    cbz w7, L0a6445e56b6e_23
L0a6445e56b6e_25:
    and w14, w14, #255
    str w14, [sp, #464]
    sub x9, x29, #1080
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_settings_decimal
    sub x16, x29, #976
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr w14, [sp, #464]
    ldrb w12, [sp, #504]
    cbz w12, L0a6445e56b6e_27
L0a6445e56b6e_29:
    ldr d24, [sp, #496]
    fmov d0, d24
    mov x0, x19
    mov x1, x14
    bl _lb_settings_Settings_set
L0a6445e56b6e_27:
L0a6445e56b6e_28:
    ldr x9, [sp, #480]
    mov x14, x9
    cmp x14, x21
    b.lo L0a6445e56b6e_2
    b L0a6445e56b6e_3
L0a6445e56b6e_23:
    mov x14, #0
L0a6445e56b6e_31:
    cmp x14, #5
    b.hs L0a6445e56b6e_34
    .p2align 4
L0a6445e56b6e_32:
    add x7, x23, x14, lsl #4
    ldr x6, [x7, #8]
    cmp x6, x13
    cset w5, eq
    cbnz w5, L0a6445e56b6e_38
L0a6445e56b6e_156:
    b L0a6445e56b6e_39
L0a6445e56b6e_38:
    ldr x7, [x7]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    mov x0, x7
    mov x1, x12
    mov x2, x6
    bl _memcmp
    mov w7, w0
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    cmp w7, #0
    cset w5, eq
L0a6445e56b6e_39:
    and w7, w5, #255
    cbz w7, L0a6445e56b6e_36
L0a6445e56b6e_35:
    ldr x7, [sp, #392]
    ldr x6, [sp, #400]
    sub x11, x29, #1208
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x11, x29, #1336
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    mov x5, #0
    mov x4, #0
L0a6445e56b6e_66:
    cmp x4, x6
    b.hs L0a6445e56b6e_68
    .p2align 4
L0a6445e56b6e_69:
    cmp x5, #16
    b.hs L0a6445e56b6e_68
L0a6445e56b6e_67:
    mov x3, x4
L0a6445e56b6e_70:
    cmp x3, x6
    b.hs L0a6445e56b6e_72
    .p2align 4
L0a6445e56b6e_73:
    ldrb w2, [x7, x3]
    cmp w2, #32
    b.eq L0a6445e56b6e_72
L0a6445e56b6e_71:
    add x3, x3, #1
    cmp x3, x6
    b.lo L0a6445e56b6e_73
L0a6445e56b6e_72:
    cmp x3, x6
    b.hi L0a6445e56b6e_c6
    cmp x4, x3
    b.hi L0a6445e56b6e_75
L0a6445e56b6e_74:
    add x2, x7, x4
    sub x4, x3, x4
    adds x3, x3, #1
    b.cs L0a6445e56b6e_c7
    mov x1, #0
L0a6445e56b6e_76:
    cmp x1, x4
    b.hs L0a6445e56b6e_78
    .p2align 4
L0a6445e56b6e_79:
    ldrb w0, [x2, x1]
    cmp w0, #44
    b.eq L0a6445e56b6e_78
L0a6445e56b6e_77:
    add x1, x1, #1
    cmp x1, x4
    b.lo L0a6445e56b6e_79
L0a6445e56b6e_78:
    cmp x4, x1
    b.ne L0a6445e56b6e_81
L0a6445e56b6e_80:
    b L0a6445e56b6e_97
L0a6445e56b6e_81:
    cmp x1, x4
    b.hi L0a6445e56b6e_c8
    str x2, [sp, #120]
    str x1, [sp, #128]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    str x7, [sp, #456]
    str x6, [sp, #448]
    str x5, [sp, #440]
    str x2, [sp, #432]
    str x4, [sp, #424]
    str x3, [sp, #416]
    str x1, [sp, #408]
    sub x9, x29, #1352
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_settings_decimal
    sub x16, x29, #120
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    ldr x7, [sp, #456]
    ldr x6, [sp, #448]
    ldr x5, [sp, #440]
    ldr x2, [sp, #432]
    ldr x4, [sp, #424]
    ldr x3, [sp, #416]
    ldr x1, [sp, #408]
    ldrb w0, [sp, #1360]
    cbz w0, L0a6445e56b6e_87
L0a6445e56b6e_86:
    ldr d10, [sp, #1352]
    b L0a6445e56b6e_88
L0a6445e56b6e_87:
    b L0a6445e56b6e_97
L0a6445e56b6e_88:
    adds x1, x1, #1
    b.cs L0a6445e56b6e_c9
    cmp x1, x4
    b.hi L0a6445e56b6e_c10
    add x2, x1, x2
    sub x4, x4, x1
    str x2, [sp, #104]
    str x4, [sp, #112]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    str x7, [sp, #456]
    str x6, [sp, #448]
    str x5, [sp, #440]
    str x3, [sp, #416]
    sub x9, x29, #1368
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_settings_decimal
    sub x16, x29, #136
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    ldr x7, [sp, #456]
    ldr x6, [sp, #448]
    ldr x5, [sp, #440]
    ldr x3, [sp, #416]
    ldrb w4, [sp, #1344]
    cbz w4, L0a6445e56b6e_93
L0a6445e56b6e_92:
    ldr d24, [sp, #1336]
    b L0a6445e56b6e_94
L0a6445e56b6e_93:
    b L0a6445e56b6e_97
L0a6445e56b6e_94:
    lsl x4, x5, #3
    sub x11, x29, #1208
    str d10, [x4, x11]
    sub x11, x29, #1336
    str d24, [x4, x11]
    add x5, x5, #1
    mov x4, x3
    cmp x4, x6
    b.lo L0a6445e56b6e_69
L0a6445e56b6e_68:
    movz x10, #16
    cmp x5, x10
    b.hi L0a6445e56b6e_c11
    sub x9, x29, #1208
    str x9, [sp, #64]
    str x5, [sp, #72]
    sub x9, x29, #1336
    str x9, [sp, #48]
    str x5, [sp, #56]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    mov x0, x19
    mov x1, x14
    sub x9, x29, #1408
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x9, x29, #1424
    ldr x4, [x9]
    ldr x5, [x9, #8]
    bl _lb_settings_Settings_9set_curve
    mov w7, w0
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    cbz w7, L0a6445e56b6e_102
L0a6445e56b6e_103:
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x7, x0
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
    sub x11, x29, #1392
    ldp x16, x17, [x7, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x7, #16]
    str x16, [x11, #16]
    b L0a6445e56b6e_96
L0a6445e56b6e_102:
    b L0a6445e56b6e_97
L0a6445e56b6e_96:
    str x12, [sp, #488]
    str x13, [sp, #472]
    str x14, [sp, #464]
    sub x9, x29, #1384
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_15message_handled
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr x14, [sp, #464]
L0a6445e56b6e_97:
L0a6445e56b6e_105:
L0a6445e56b6e_36:
L0a6445e56b6e_37:
    add x14, x14, #1
    cmp x14, #5
    b.lo L0a6445e56b6e_32
L0a6445e56b6e_34:
    cmp x13, #6
    cset w14, eq
    cbnz w14, L0a6445e56b6e_43
L0a6445e56b6e_157:
    mov w7, w14
    b L0a6445e56b6e_44
L0a6445e56b6e_43:
    str x12, [sp, #488]
    str x13, [sp, #472]
    str w14, [sp, #464]
    mov x0, x12
    mov x2, x13
    ldr x1, [sp, #1328]
    bl _memcmp
    mov w7, w0
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr w14, [sp, #464]
    cmp w7, #0
    cset w7, eq
L0a6445e56b6e_44:
    and w7, w7, #255
    cbz w7, L0a6445e56b6e_41
L0a6445e56b6e_40:
    ldr x7, [sp, #392]
    ldr x6, [sp, #400]
    sub x11, x29, #272
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    mov x5, #0
    mov x4, #0
L0a6445e56b6e_106:
    cmp x4, x6
    b.hs L0a6445e56b6e_108
    .p2align 4
L0a6445e56b6e_109:
    cmp x5, #4
    b.hs L0a6445e56b6e_108
L0a6445e56b6e_107:
    mov x3, x4
L0a6445e56b6e_110:
    cmp x3, x6
    b.hs L0a6445e56b6e_112
    .p2align 4
L0a6445e56b6e_113:
    ldrb w2, [x7, x3]
    cmp w2, #32
    b.eq L0a6445e56b6e_112
L0a6445e56b6e_111:
    add x3, x3, #1
    cmp x3, x6
    b.lo L0a6445e56b6e_113
L0a6445e56b6e_112:
    cmp x3, x6
    b.hi L0a6445e56b6e_c12
    cmp x4, x3
    b.hi L0a6445e56b6e_115
L0a6445e56b6e_114:
    add x2, x7, x4
    sub x4, x3, x4
    adds x3, x3, #1
    b.cs L0a6445e56b6e_c13
    sub x11, x29, #1456
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x1, #0
    mov x0, #0
    mov x24, #0
L0a6445e56b6e_116:
    cmp x24, x4
    b.ls L0a6445e56b6e_117
L0a6445e56b6e_158:
    b L0a6445e56b6e_119
    .p2align 4
L0a6445e56b6e_117:
    cmp x4, x24
    cset w26, eq
    cbnz w26, L0a6445e56b6e_120
L0a6445e56b6e_123:
    cmp x24, x4
    b.hs L0a6445e56b6e_c14
    ldrb w27, [x2, x24]
    cmp w27, #44
    b.ne L0a6445e56b6e_121
L0a6445e56b6e_120:
    cmp x1, #4
    b.ne L0a6445e56b6e_125
L0a6445e56b6e_124:
    b L0a6445e56b6e_144
L0a6445e56b6e_125:
    movz x10, #4
    cmp x1, x10
    b.hs L0a6445e56b6e_c15
    sub x9, x29, #1456
    add x27, x9, x1, lsl #3
    cmp x0, x4
    b.hi L0a6445e56b6e_c16
    cmp x0, x24
    b.hi L0a6445e56b6e_129
L0a6445e56b6e_128:
    add x15, x2, x0
    sub x0, x24, x0
    str x15, [sp, #0]
    str x0, [sp, #8]
    str x12, [sp, #488]
    str x13, [sp, #472]
    str w14, [sp, #464]
    str x7, [sp, #456]
    str x6, [sp, #448]
    str x5, [sp, #440]
    str x2, [sp, #432]
    str x4, [sp, #424]
    str x3, [sp, #416]
    str x1, [sp, #408]
    sub x9, x29, #1472
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_settings_decimal
    sub x16, x29, #288
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x12, [sp, #488]
    ldr x13, [sp, #472]
    ldr w14, [sp, #464]
    ldr x7, [sp, #456]
    ldr x6, [sp, #448]
    ldr x5, [sp, #440]
    ldr x2, [sp, #432]
    ldr x4, [sp, #424]
    ldr x3, [sp, #416]
    ldr x1, [sp, #408]
    ldrb w15, [sp, #1192]
    cbz w15, L0a6445e56b6e_131
L0a6445e56b6e_130:
    ldr d24, [sp, #1184]
    b L0a6445e56b6e_132
L0a6445e56b6e_131:
    b L0a6445e56b6e_144
L0a6445e56b6e_132:
    str d24, [x27]
    add x15, x1, #1
    adds x1, x24, #1
    b.cs L0a6445e56b6e_c17
    mov x0, x1
    b L0a6445e56b6e_122
L0a6445e56b6e_121:
    mov x15, x1
L0a6445e56b6e_122:
    cbz w26, L0a6445e56b6e_134
L0a6445e56b6e_159:
    mov x1, x15
    b L0a6445e56b6e_119
L0a6445e56b6e_134:
    add x24, x24, #1
    mov x1, x15
    cmp x24, x4
    b.ls L0a6445e56b6e_117
    b L0a6445e56b6e_158
L0a6445e56b6e_119:
    cmp x1, #4
    b.eq L0a6445e56b6e_136
L0a6445e56b6e_135:
    b L0a6445e56b6e_144
L0a6445e56b6e_136:
    sub x9, x29, #272
    add x15, x9, x5, lsl #5
    sub x9, x29, #1456
    ldr q24, [x9]
    sub x9, x29, #1440
    ldr q25, [x9]
    str q24, [x15]
    add x15, x15, #16
    str q25, [x15]
    add x5, x5, #1
    mov x4, x3
    cmp x4, x6
    b.lo L0a6445e56b6e_109
L0a6445e56b6e_108:
    movz x10, #4
    cmp x5, x10
    b.hi L0a6445e56b6e_c18
    mov x9, #0
    str x9, [x19, #2392]
    mov x15, #0
    mov x7, #0
L0a6445e56b6e_141:
    cmp x15, x5
    b.hs L0a6445e56b6e_144
    .p2align 4
L0a6445e56b6e_142:
    sub x9, x29, #272
    add x6, x9, x15, lsl #5
    ldr d24, [x6]
    ldr d25, [x6, #8]
    ldr d26, [x6, #16]
    ldr d27, [x6, #24]
    cmp x7, #4
    b.ne L0a6445e56b6e_146
L0a6445e56b6e_145:
    b L0a6445e56b6e_144
L0a6445e56b6e_146:
    movz x10, #4
    cmp x7, x10
    b.hs L0a6445e56b6e_c19
    add x7, x25, x7, lsl #5
    cbz w28, L0a6445e56b6e_162
L0a6445e56b6e_161:
    fmov x6, d24
    and x6, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L0a6445e56b6e_164
L0a6445e56b6e_163:
    b L0a6445e56b6e_176
L0a6445e56b6e_164:
L0a6445e56b6e_165:
    fcmp d24, d8
    cset w6, mi
    fcmp d24, d9
    fcsel d24, d9, d24, gt
    cmp w6, #0
    fcsel d24, d8, d24, ne
L0a6445e56b6e_176:
    cbz w28, L0a6445e56b6e_178
L0a6445e56b6e_177:
    fmov x6, d25
    and x6, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L0a6445e56b6e_180
L0a6445e56b6e_179:
    b L0a6445e56b6e_192
L0a6445e56b6e_180:
L0a6445e56b6e_181:
    fcmp d25, d8
    cset w6, mi
    fcmp d25, d9
    fcsel d25, d9, d25, gt
    cmp w6, #0
    fcsel d25, d8, d25, ne
L0a6445e56b6e_192:
    cbz w28, L0a6445e56b6e_194
L0a6445e56b6e_193:
    fmov x6, d26
    and x6, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L0a6445e56b6e_196
L0a6445e56b6e_195:
    b L0a6445e56b6e_208
L0a6445e56b6e_196:
L0a6445e56b6e_197:
    fcmp d26, d8
    cset w6, mi
    fcmp d26, d9
    fcsel d26, d9, d26, gt
    cmp w6, #0
    fcsel d26, d8, d26, ne
L0a6445e56b6e_208:
    cbz w28, L0a6445e56b6e_210
L0a6445e56b6e_209:
    fmov x6, d27
    and x6, x6, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x6, x10
    b.ls L0a6445e56b6e_212
L0a6445e56b6e_211:
    b L0a6445e56b6e_224
L0a6445e56b6e_212:
L0a6445e56b6e_213:
    fcmp d27, d8
    cset w6, mi
    fcmp d27, d9
    fcsel d27, d9, d27, gt
    cmp w6, #0
    fcsel d27, d8, d27, ne
L0a6445e56b6e_224:
    str d24, [x7]
    str d25, [x7, #8]
    str d26, [x7, #16]
    str d27, [x7, #24]
    ldr x7, [x19, #2392]
    adds x7, x7, #1
    b.cs L0a6445e56b6e_c20
    str x7, [x19, #2392]
    add x15, x15, #1
    cmp x15, x5
    b.lo L0a6445e56b6e_142
L0a6445e56b6e_144:
L0a6445e56b6e_150:
L0a6445e56b6e_41:
L0a6445e56b6e_42:
    cbnz w14, L0a6445e56b6e_48
L0a6445e56b6e_160:
    b L0a6445e56b6e_49
L0a6445e56b6e_48:
    mov x0, x12
    mov x2, x13
    ldr x1, [sp, #1176]
    bl _memcmp
    mov w14, w0
    cmp w14, #0
    cset w14, eq
L0a6445e56b6e_49:
    and w14, w14, #255
    cbz w14, L0a6445e56b6e_46
L0a6445e56b6e_45:
    sub x9, x29, #1080
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #960
    bl _lb_recipe_parse
    sub x10, x29, #960
    ldr x0, [sp, #1168]
    mov x1, x10
    movz x2, #656
    bl _memcpy
L0a6445e56b6e_46:
L0a6445e56b6e_47:
    ldr x9, [sp, #480]
    mov x14, x9
    cmp x14, x21
    b.lo L0a6445e56b6e_2
L0a6445e56b6e_3:
    mov x9, #0
    str w9, [sp, #1352]
    ldrb w14, [sp, #1352]
    movz x10, #118
    cmp x14, x10
    b.hs L0a6445e56b6e_c21
    ldr d24, [x19, x14, lsl #3]
    fcmp d24, d8
    b.le L0a6445e56b6e_51
L0a6445e56b6e_53:
    mov x9, #0
    str w9, [sp, #1352]
    ldrb w14, [sp, #1352]
    movz x10, #118
    cmp x14, x10
    b.hs L0a6445e56b6e_c22
    ldr d24, [x19, x14, lsl #3]
    ldr d25, L0a6445e56b6e_k0
    fcmp d24, d25
    b.pl L0a6445e56b6e_51
L0a6445e56b6e_50:
    fmov d0, d25
    mov x0, x19
    mov x1, #0
    bl _lb_settings_Settings_set
L0a6445e56b6e_51:
L0a6445e56b6e_52:
    ldr x19, [sp, #1464]
    ldr x20, [sp, #1456]
    ldr x21, [sp, #1448]
    ldr x22, [sp, #1440]
    ldr x23, [sp, #1432]
    ldr x24, [sp, #1424]
    ldr x25, [sp, #1416]
    ldr x26, [sp, #1408]
    ldr x27, [sp, #1400]
    ldr x28, [sp, #1392]
    ldr d8, [sp, #1384]
    ldr d9, [sp, #1376]
    ldr d10, [sp, #1368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L0a6445e56b6e_9:
    adrp x0, _lb_text_8a5b265e7152@PAGE
    add x0, x0, _lb_text_8a5b265e7152@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_75:
    adrp x0, _lb_text_0b5f830918dc@PAGE
    add x0, x0, _lb_text_0b5f830918dc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_115:
    adrp x0, _lb_text_14f2e588599d@PAGE
    add x0, x0, _lb_text_14f2e588599d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_129:
    adrp x0, _lb_text_f8f255abd0f7@PAGE
    add x0, x0, _lb_text_f8f255abd0f7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_162:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_178:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_194:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_210:
    adrp x0, _lb_text_1112efeacc93@PAGE
    add x0, x0, _lb_text_1112efeacc93@PAGEOFF
    adrp x1, _lb_text_526c5b39f562@PAGE
    add x1, x1, _lb_text_526c5b39f562@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c1:
    adrp x0, _lb_text_8a5b265e7152@PAGE
    add x0, x0, _lb_text_8a5b265e7152@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c2:
    adrp x0, _lb_text_6f92ded12f91@PAGE
    add x0, x0, _lb_text_6f92ded12f91@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c3:
    adrp x0, _lb_text_55e66768bb3c@PAGE
    add x0, x0, _lb_text_55e66768bb3c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c4:
    adrp x0, _lb_text_efb9d1fc156a@PAGE
    add x0, x0, _lb_text_efb9d1fc156a@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c5:
    adrp x0, _lb_text_efb9d1fc156a@PAGE
    add x0, x0, _lb_text_efb9d1fc156a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c6:
    adrp x0, _lb_text_0b5f830918dc@PAGE
    add x0, x0, _lb_text_0b5f830918dc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c7:
    adrp x0, _lb_text_d159216f504d@PAGE
    add x0, x0, _lb_text_d159216f504d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c8:
    adrp x0, _lb_text_14fe7fb7fb14@PAGE
    add x0, x0, _lb_text_14fe7fb7fb14@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c9:
    adrp x0, _lb_text_fe03a50d0615@PAGE
    add x0, x0, _lb_text_fe03a50d0615@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c10:
    adrp x0, _lb_text_fe03a50d0615@PAGE
    add x0, x0, _lb_text_fe03a50d0615@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c11:
    adrp x0, _lb_text_521d01e26dbd@PAGE
    add x0, x0, _lb_text_521d01e26dbd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c12:
    adrp x0, _lb_text_14f2e588599d@PAGE
    add x0, x0, _lb_text_14f2e588599d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c13:
    adrp x0, _lb_text_70a25299f64c@PAGE
    add x0, x0, _lb_text_70a25299f64c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c14:
    adrp x0, _lb_text_816e41d08355@PAGE
    add x0, x0, _lb_text_816e41d08355@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c15:
    adrp x0, _lb_text_f8f255abd0f7@PAGE
    add x0, x0, _lb_text_f8f255abd0f7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c16:
    adrp x0, _lb_text_f8f255abd0f7@PAGE
    add x0, x0, _lb_text_f8f255abd0f7@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c17:
    adrp x0, _lb_text_dbd539720ce3@PAGE
    add x0, x0, _lb_text_dbd539720ce3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c18:
    adrp x0, _lb_text_098533768481@PAGE
    add x0, x0, _lb_text_098533768481@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c19:
    adrp x0, _lb_text_c6c85219b673@PAGE
    add x0, x0, _lb_text_c6c85219b673@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c20:
    adrp x0, _lb_text_07142ab19dee@PAGE
    add x0, x0, _lb_text_07142ab19dee@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c21:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L0a6445e56b6e_c22:
    adrp x0, _lb_text_34ab08f400d2@PAGE
    add x0, x0, _lb_text_34ab08f400d2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L0a6445e56b6e_k0:
    .quad 4655046358980362240


    .p2align 2
    .globl _lb_settings_decimal
_lb_settings_decimal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #16
    str x0, [x16]
    str x1, [x16, #8]
    ldr x14, [sp, #16]
    ldr x15, [sp, #24]
    cmp x15, #0
    b.ne L94a988092529_2
L94a988092529_1:
    sub x11, x29, #16
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x16, x29, #32
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L94a988092529_2:
L94a988092529_3:
    fmov d24, #1.0000000
    mov x9, #0
    cmp x9, x15
    b.hs L94a988092529_c1
    ldrb w12, [x14]
    cmp w12, #45
    cset w12, eq
    fmov d25, #-1.0000000
    cmp w12, #0
    movz x10, #1
    mov x11, #0
    csel x13, x10, x11, ne
    cmp w12, #0
    fcsel d25, d25, d24, ne
    mov x12, #0
    mov x7, #0
    .p2align 4
L94a988092529_8:
    cmp x13, x15
    cset w6, lo
    cbz w6, L94a988092529_10
L94a988092529_13:
    ldrb w5, [x14, x13]
    cmp w5, #48
    b.lo L94a988092529_10
L94a988092529_12:
    cmp w5, #57
    b.hi L94a988092529_10
L94a988092529_11:
    cmp x7, #15
    b.ge L94a988092529_10
L94a988092529_9:
    movz x10, #10
    smulh x11, x12, x10
    mul x12, x12, x10
    cmp x11, x12, asr #63
    b.ne L94a988092529_c2
    sub w6, w5, #48
    and w5, w6, #255
    cmp w5, w6
    b.ne L94a988092529_15
L94a988092529_14:
    adds x12, x6, x12
    b.vs L94a988092529_c3
    add x13, x13, #1
    adds x7, x7, #1
    b.vs L94a988092529_c4
    b L94a988092529_8
L94a988092529_10:
    cbz w6, L94a988092529_17
L94a988092529_19:
    ldrb w6, [x14, x13]
    cmp w6, #46
    b.ne L94a988092529_17
L94a988092529_16:
    add x13, x13, #1
    fmov d26, #10.0000000
L94a988092529_20:
    cmp x13, x15
    b.hs L94a988092529_22
    .p2align 4
L94a988092529_25:
    ldrb w6, [x14, x13]
    cmp w6, #48
    b.lo L94a988092529_22
L94a988092529_24:
    cmp w6, #57
    b.hi L94a988092529_22
L94a988092529_23:
    cmp x7, #15
    b.ge L94a988092529_22
L94a988092529_21:
    movz x10, #10
    smulh x11, x12, x10
    mul x12, x12, x10
    cmp x11, x12, asr #63
    b.ne L94a988092529_c5
    sub w6, w6, #48
    and w5, w6, #255
    cmp w5, w6
    b.ne L94a988092529_27
L94a988092529_26:
    adds x12, x6, x12
    b.vs L94a988092529_c6
    fmul d24, d26, d24
    add x13, x13, #1
    adds x7, x7, #1
    b.vs L94a988092529_c7
    cmp x13, x15
    b.lo L94a988092529_25
L94a988092529_22:
    b L94a988092529_18
L94a988092529_17:
L94a988092529_18:
    cmp x7, #0
    b.eq L94a988092529_28
L94a988092529_31:
    cmp x15, x13
    b.eq L94a988092529_29
L94a988092529_28:
    sub x11, x29, #16
    stp xzr, xzr, [x11, #0]
    sub x10, x29, #16
    sub x11, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x16, x29, #32
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L94a988092529_29:
L94a988092529_30:
    scvtf d26, x12
    fmul d25, d26, d25
    fdiv d24, d25, d24
    str d24, [sp, #0]
    movz x9, #1
    strb w9, [sp, #8]
    ldrb w14, [sp, #31]
    strb w14, [sp, #9]
    ldrh w14, [sp, #30]
    strh w14, [sp, #10]
    ldr w14, [sp, #28]
    str w14, [sp, #12]
    sub x16, x29, #32
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L94a988092529_15:
    adrp x0, _lb_text_41df60e4f0d1@PAGE
    add x0, x0, _lb_text_41df60e4f0d1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_27:
    adrp x0, _lb_text_9bb5baf72e03@PAGE
    add x0, x0, _lb_text_9bb5baf72e03@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c1:
    adrp x0, _lb_text_ac652c43d0b2@PAGE
    add x0, x0, _lb_text_ac652c43d0b2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c2:
    adrp x0, _lb_text_41df60e4f0d1@PAGE
    add x0, x0, _lb_text_41df60e4f0d1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c3:
    adrp x0, _lb_text_41df60e4f0d1@PAGE
    add x0, x0, _lb_text_41df60e4f0d1@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c4:
    adrp x0, _lb_text_6a933176bb5d@PAGE
    add x0, x0, _lb_text_6a933176bb5d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c5:
    adrp x0, _lb_text_9bb5baf72e03@PAGE
    add x0, x0, _lb_text_9bb5baf72e03@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c6:
    adrp x0, _lb_text_9bb5baf72e03@PAGE
    add x0, x0, _lb_text_9bb5baf72e03@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L94a988092529_c7:
    adrp x0, _lb_text_8ad2e4d97514@PAGE
    add x0, x0, _lb_text_8ad2e4d97514@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_5
_lb_test_5:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #592
    str x19, [sp, #584]
    str d8, [sp, #576]
    str d9, [sp, #568]
    str d10, [sp, #560]
    sub x0, x29, #296
    mov x1, #0
    movz x2, #264
    bl _memset
    movz x9, #3
    str x9, [sp, #296]
    sub x10, x29, #296
    sub x0, x29, #560
    mov x1, x10
    movz x2, #264
    bl _memcpy
    fmov d24, #0.5000000
    str d24, [sp, #48]
    fmov d8, #1.0000000
    str d8, [sp, #56]
    ldr d9, L64499bbfff05_k0
    str d9, [sp, #176]
    str d8, [sp, #184]
    fmov d0, d24
    sub x0, x29, #560
    bl _lb_settings_Curve_evaluate
    fmov d24, d0
    fcmp d9, d24
    b.ne L64499bbfff05_2
L64499bbfff05_4:
    fmov d0, d8
    sub x0, x29, #560
    bl _lb_settings_Curve_evaluate
    fmov d24, d0
    fcmp d8, d24
    b.ne L64499bbfff05_2
L64499bbfff05_3:
    fmov d9, xzr
    fmov d0, d9
    sub x0, x29, #560
    bl _lb_settings_Curve_evaluate
    fmov d24, d0
    fcmp d9, d24
    b.eq L64499bbfff05_1
L64499bbfff05_2:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_61a2ecc991e6@PAGE
    add x14, x14, _lb_text_61a2ecc991e6@PAGEOFF
    adrp x15, _lb_text_404614255c30@PAGE
    add x15, x15, _lb_text_404614255c30@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #576
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    ldr d10, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64499bbfff05_1:
    fmov d24, #-1.0000000
    ldr d9, L64499bbfff05_k1
    fmov d10, d24
    mov x19, #0
L64499bbfff05_6:
    cmp x19, #101
    b.hs L64499bbfff05_9
    .p2align 4
L64499bbfff05_7:
    ucvtf d24, x19
    fdiv d24, d24, d9
    fmov d0, d24
    sub x0, x29, #560
    bl _lb_settings_Curve_evaluate
    fmov d24, d0
    fcmp d24, d10
    b.lt L64499bbfff05_11
L64499bbfff05_12:
    fcmp d24, d8
    b.ls L64499bbfff05_10
L64499bbfff05_11:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_c78fd3c5c170@PAGE
    add x14, x14, _lb_text_c78fd3c5c170@PAGEOFF
    adrp x15, _lb_text_6cbb45ac26ef@PAGE
    add x15, x15, _lb_text_6cbb45ac26ef@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #592
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    ldr x19, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    ldr d10, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64499bbfff05_10:
    add x19, x19, #1
    fmov d10, d24
    cmp x19, #101
    b.lo L64499bbfff05_7
L64499bbfff05_9:
    mov x0, #0
    ldr x19, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    ldr d10, [sp, #560]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L64499bbfff05_k0:
    .quad 4604480259023595110
L64499bbfff05_k1:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_settings_Curve_evaluate
_lb_settings_Curve_evaluate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    str d8, [sp, #24]
    str d9, [sp, #16]
    str d10, [sp, #8]
    fmov d24, d0
    mov x19, x0
    ldr x14, [x19]
    cmp x14, #0
    b.ne L97ec281dce23_2
L97ec281dce23_1:
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L97ec281dce23_2:
L97ec281dce23_3:
    cmp x14, #1
    b.eq L97ec281dce23_5
L97ec281dce23_8:
    add x15, x19, #8
    ldr d25, [x19, #8]
    fcmp d24, d25
    b.hi L97ec281dce23_6
L97ec281dce23_5:
    ldr d24, [x19, #136]
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L97ec281dce23_6:
L97ec281dce23_7:
    subs x14, x14, #1
    b.cc L97ec281dce23_c1
    movz x10, #16
    cmp x14, x10
    b.hs L97ec281dce23_c2
    lsl x12, x14, #3
    ldr d25, [x15, x12]
    fcmp d24, d25
    b.lt L97ec281dce23_11
L97ec281dce23_10:
    add x14, x19, #136
    ldr d24, [x12, x14]
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L97ec281dce23_11:
L97ec281dce23_12:
    mov x12, #0
    .p2align 4
L97ec281dce23_14:
    adds x20, x12, #1
    b.cs L97ec281dce23_c3
    cmp x20, x14
    b.hs L97ec281dce23_16
L97ec281dce23_17:
    ldr d25, [x15, x20, lsl #3]
    fcmp d24, d25
    b.lt L97ec281dce23_16
L97ec281dce23_15:
    mov x12, x20
    b L97ec281dce23_14
L97ec281dce23_16:
    movz x10, #16
    cmp x20, x10
    b.hs L97ec281dce23_c4
    lsl x21, x20, #3
    ldr d25, [x15, x21]
    movz x10, #16
    cmp x12, x10
    b.hs L97ec281dce23_c5
    lsl x22, x12, #3
    ldr d26, [x15, x22]
    fsub d8, d25, d26
    fsub d24, d24, d26
    fdiv d9, d24, d8
    mov x0, x19
    mov x1, x12
    bl _lb_settings_Curve_tangent
    fmov d24, d0
    fmul d10, d8, d24
    mov x0, x19
    mov x1, x20
    bl _lb_settings_Curve_tangent
    fmov d24, d0
    fmul d24, d8, d24
    fmul d25, d9, d9
    fmul d26, d9, d25
    fmov d27, #2.0000000
    fmul d28, d26, d27
    fmov d29, #3.0000000
    fmul d29, d25, d29
    fsub d28, d28, d29
    fmov d30, #1.0000000
    fadd d28, d28, d30
    add x14, x19, #136
    ldr d30, [x22, x14]
    fmul d28, d28, d30
    fmul d27, d25, d27
    fsub d27, d26, d27
    fadd d27, d9, d27
    fmul d27, d10, d27
    fadd d27, d28, d27
    fmov d28, #-2.0000000
    fmul d28, d26, d28
    fadd d28, d29, d28
    ldr d29, [x21, x14]
    fmul d28, d28, d29
    fadd d27, d27, d28
    fsub d25, d26, d25
    fmul d24, d24, d25
    fadd d24, d27, d24
    fmov d0, d24
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    ldr d8, [sp, #24]
    ldr d9, [sp, #16]
    ldr d10, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L97ec281dce23_c1:
    adrp x0, _lb_text_69a0678eb0bf@PAGE
    add x0, x0, _lb_text_69a0678eb0bf@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L97ec281dce23_c2:
    adrp x0, _lb_text_3fe0dc982adc@PAGE
    add x0, x0, _lb_text_3fe0dc982adc@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97ec281dce23_c3:
    adrp x0, _lb_text_ff8a7d0d9bc6@PAGE
    add x0, x0, _lb_text_ff8a7d0d9bc6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L97ec281dce23_c4:
    adrp x0, _lb_text_ab9d3b613370@PAGE
    add x0, x0, _lb_text_ab9d3b613370@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L97ec281dce23_c5:
    adrp x0, _lb_text_ab9d3b613370@PAGE
    add x0, x0, _lb_text_ab9d3b613370@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_Curve_tangent
_lb_settings_Curve_tangent:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #24]
    str x20, [sp, #16]
    str d8, [sp, #8]
    mov x19, x0
    mov x20, x1
    cmp x20, #0
    b.ne Ld0bda4a5ab7f_2
Ld0bda4a5ab7f_1:
    mov x0, x19
    mov x1, #0
    bl _lb_settings_Curve_slope
    fmov d24, d0
    fmov d0, d24
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0bda4a5ab7f_2:
Ld0bda4a5ab7f_3:
    ldr x14, [x19]
    subs x14, x14, #1
    b.cc Ld0bda4a5ab7f_c1
    cmp x14, x20
    b.ne Ld0bda4a5ab7f_6
Ld0bda4a5ab7f_5:
    subs x14, x20, #1
    b.cc Ld0bda4a5ab7f_c2
    mov x0, x19
    mov x1, x14
    bl _lb_settings_Curve_slope
    fmov d24, d0
    fmov d0, d24
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0bda4a5ab7f_6:
Ld0bda4a5ab7f_7:
    subs x14, x20, #1
    b.cc Ld0bda4a5ab7f_c3
    mov x0, x19
    mov x1, x14
    bl _lb_settings_Curve_slope
    fmov d8, d0
    mov x0, x19
    mov x1, x20
    bl _lb_settings_Curve_slope
    fmov d24, d0
    fmul d25, d8, d24
    fmov d26, xzr
    fcmp d25, d26
    b.hi Ld0bda4a5ab7f_10
Ld0bda4a5ab7f_9:
    fmov d0, d26
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0bda4a5ab7f_10:
Ld0bda4a5ab7f_11:
    fmov d25, #2.0000000
    fmov d26, #1.0000000
    fdiv d27, d26, d8
    fdiv d24, d26, d24
    fadd d24, d27, d24
    fdiv d24, d25, d24
    fmov d0, d24
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    ldr d8, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Ld0bda4a5ab7f_c1:
    adrp x0, _lb_text_a4abacaa2b7d@PAGE
    add x0, x0, _lb_text_a4abacaa2b7d@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0bda4a5ab7f_c2:
    adrp x0, _lb_text_ecb0463d78b8@PAGE
    add x0, x0, _lb_text_ecb0463d78b8@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Ld0bda4a5ab7f_c3:
    adrp x0, _lb_text_f5a9e7cf9c73@PAGE
    add x0, x0, _lb_text_f5a9e7cf9c73@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_settings_Curve_slope
_lb_settings_Curve_slope:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    adds x12, x15, #1
    b.cs L691022b9fcbc_c1
    add x13, x14, #136
    movz x10, #16
    cmp x12, x10
    b.hs L691022b9fcbc_c2
    lsl x12, x12, #3
    ldr d24, [x13, x12]
    movz x10, #16
    cmp x15, x10
    b.hs L691022b9fcbc_c3
    lsl x15, x15, #3
    ldr d25, [x13, x15]
    fsub d24, d24, d25
    add x14, x14, #8
    ldr d25, [x12, x14]
    ldr d26, [x15, x14]
    fsub d25, d25, d26
    ldr d26, L691022b9fcbc_k0
    fmov x14, d25
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L691022b9fcbc_3
L691022b9fcbc_2:
    b L691022b9fcbc_23
L691022b9fcbc_3:
L691022b9fcbc_4:
    fmov x15, d26
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L691022b9fcbc_7
L691022b9fcbc_6:
    fmov d25, d26
    b L691022b9fcbc_23
L691022b9fcbc_7:
L691022b9fcbc_8:
    fmov d27, xzr
    fcmp d25, d27
    b.ne L691022b9fcbc_11
L691022b9fcbc_13:
    fcmp d26, d27
    b.ne L691022b9fcbc_11
L691022b9fcbc_10:
    and x14, x14, x15
    fmov d25, x14
    b L691022b9fcbc_23
L691022b9fcbc_11:
L691022b9fcbc_12:
    fcmp d25, d26
    fcsel d25, d25, d26, gt
L691022b9fcbc_23:
    fdiv d24, d24, d25
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L691022b9fcbc_c1:
    adrp x0, _lb_text_84e4a91f950c@PAGE
    add x0, x0, _lb_text_84e4a91f950c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L691022b9fcbc_c2:
    adrp x0, _lb_text_84e4a91f950c@PAGE
    add x0, x0, _lb_text_84e4a91f950c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L691022b9fcbc_c3:
    adrp x0, _lb_text_84e4a91f950c@PAGE
    add x0, x0, _lb_text_84e4a91f950c@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
    .p2align 3
L691022b9fcbc_k0:
    .quad 4472406533629990549


    .p2align 2
    .globl _lb_13luce_std_math_max
_lb_13luce_std_math_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov x14, d24
    and x15, x14, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x15, x10
    b.ls L1e3767000373_2
L1e3767000373_1:
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1e3767000373_2:
L1e3767000373_3:
    fmov x15, d25
    and x12, x15, #9223372036854775807
    movz x10, #32752, lsl #48
    cmp x12, x10
    b.ls L1e3767000373_6
L1e3767000373_5:
    fmov d0, d25
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1e3767000373_6:
L1e3767000373_7:
    fmov d26, xzr
    fcmp d26, d24
    b.ne L1e3767000373_10
L1e3767000373_12:
    fcmp d26, d25
    b.ne L1e3767000373_10
L1e3767000373_9:
    and x14, x14, x15
    fmov d24, x14
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1e3767000373_10:
L1e3767000373_11:
    fcmp d24, d25
    fcsel d24, d24, d25, gt
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.subsections_via_symbols
