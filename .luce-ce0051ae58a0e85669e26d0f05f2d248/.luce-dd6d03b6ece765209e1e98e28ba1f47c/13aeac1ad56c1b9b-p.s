    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_12luce_raw_raw_LosslessJpeg_close
_lb_12luce_raw_raw_LosslessJpeg_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #280]
    str x20, [sp, #272]
    str x21, [sp, #264]
    mov x19, x0
    add x20, x19, #40
    mov x21, #0
La8993fea99fe_1:
    cmp x21, #4
    b.hs La8993fea99fe_4
    .p2align 4
La8993fea99fe_2:
    movz x10, #24
    mul x14, x21, x10
    add x14, x20, x14
    mov x0, x14
    bl _lb_12luce_raw_raw_Huffman_close
    add x21, x21, #1
    cmp x21, #4
    b.lo La8993fea99fe_2
La8993fea99fe_4:
    ldr x14, [x19, #224]
    cmp x14, #0
    b.ls La8993fea99fe_6
La8993fea99fe_5:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x12, [x19, #216]
    movz x10, #2
    umulh x11, x14, x10
    lsl x14, x14, #1
    cbnz x11, La8993fea99fe_c1
    str x12, [sp, #8]
    str x14, [sp, #16]
    ldr x14, [x15]
    ldr x15, [x15, #8]
    cbz x15, La8993fea99fe_8
La8993fea99fe_9:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #280
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
La8993fea99fe_8:
La8993fea99fe_6:
La8993fea99fe_7:
    sub x0, x29, #264
    mov x1, #0
    movz x2, #240
    bl _memset
    sub x10, x29, #264
    mov x0, x19
    mov x1, x10
    movz x2, #240
    bl _memcpy
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La8993fea99fe_c1:
    adrp x0, _lb_text_da7183c1982b@PAGE
    add x0, x0, _lb_text_da7183c1982b@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_8cfa_from
_lb_12luce_raw_raw_8cfa_from:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    mov x14, x0
    mov x19, x1
    mov x0, x14
    movz x1, #33422
    sub x8, x29, #96
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #176]
    cbz w14, L434494826c9b_1
L434494826c9b_2:
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L434494826c9b_1:
    ldrb w14, [sp, #168]
    cbz w14, L434494826c9b_5
L434494826c9b_4:
    sub x10, x29, #96
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    b L434494826c9b_6
L434494826c9b_5:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_f3aada3e849c@PAGE
    add x20, x20, _lb_text_f3aada3e849c@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #44
    str x9, [x14, #16]
    adrp x15, _lb_text_686c0b9f3e01@PAGE
    add x15, x15, _lb_text_686c0b9f3e01@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L434494826c9b_6:
    sub x10, x29, #152
    sub x11, x29, #208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #16]
    cmp x14, #4
    b.eq L434494826c9b_9
L434494826c9b_8:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_7455afff1590@PAGE
    add x20, x20, _lb_text_7455afff1590@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #43
    str x9, [x14, #16]
    adrp x15, _lb_text_77fd24e9c477@PAGE
    add x15, x15, _lb_text_77fd24e9c477@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L434494826c9b_9:
    sub x11, x29, #28
    str wzr, [x11, #0]
    mov x20, #0
L434494826c9b_12:
    cmp x20, #4
    b.hs L434494826c9b_15
    .p2align 4
L434494826c9b_13:
    sub x9, x29, #28
    add x21, x9, x20
    mov x1, x20
    sub x0, x29, #208
    bl _lb_12luce_raw_raw_Entry_uint
    mov x14, x0
    mov w15, w1
    cbz w15, L434494826c9b_16
L434494826c9b_17:
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L434494826c9b_16:
    strb w14, [x21]
    add x20, x20, #1
    cmp x20, #4
    b.lo L434494826c9b_13
L434494826c9b_15:
    add x14, x19, #448
    mov x15, #0
L434494826c9b_19:
    cmp x15, #4
    b.hs L434494826c9b_22
    .p2align 4
L434494826c9b_20:
    add x12, x14, x15
    ldr x13, [x19, #384]
    lsr x7, x15, #1
    adds x13, x7, x13
    b.cs L434494826c9b_c1
    and x13, x13, #1
    lsl x13, x13, #1
    ldr x7, [x19, #392]
    and x6, x15, #1
    adds x7, x6, x7
    b.cs L434494826c9b_c2
    and x7, x7, #1
    add x13, x7, x13
    movz x10, #4
    cmp x13, x10
    b.hs L434494826c9b_c3
    sub x10, x29, #28
    ldrb w13, [x10, x13]
    strb w13, [x12]
    add x15, x15, #1
    cmp x15, #4
    b.lo L434494826c9b_20
L434494826c9b_22:
    mov x0, #0
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L434494826c9b_c1:
    adrp x0, _lb_text_09d4ea263f05@PAGE
    add x0, x0, _lb_text_09d4ea263f05@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L434494826c9b_c2:
    adrp x0, _lb_text_09d4ea263f05@PAGE
    add x0, x0, _lb_text_09d4ea263f05@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L434494826c9b_c3:
    adrp x0, _lb_text_09d4ea263f05@PAGE
    add x0, x0, _lb_text_09d4ea263f05@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_15canonical_black
_lb_12luce_raw_raw_15canonical_black:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    str x22, [sp, #16]
    str x23, [sp, #8]
    mov x14, x0
    mov x19, x1
    movz x9, #2
    str x9, [x14, #1008]
    movz x9, #2
    str x9, [x14, #1016]
    add x20, x14, #448
    add x21, x14, #496
    mov x22, #0
L264579464c7c_1:
    cmp x22, #4
    b.hs L264579464c7c_4
    .p2align 4
L264579464c7c_2:
    ldrb w14, [x20, x22]
    eor x15, x22, #1
    movz x10, #4
    cmp x15, x10
    b.hs L264579464c7c_c1
    ldrb w15, [x20, x15]
    cmp w14, #0
    b.ne L264579464c7c_6
L264579464c7c_5:
    mov x14, #0
    b L264579464c7c_7
L264579464c7c_6:
    cmp w14, #2
    b.ne L264579464c7c_9
L264579464c7c_8:
    movz x14, #3
    b L264579464c7c_10
L264579464c7c_9:
    cmp w15, #0
    movz x10, #1
    movz x11, #2
    csel x14, x10, x11, eq
L264579464c7c_10:
L264579464c7c_7:
    add x23, x21, x22, lsl #3
    mov x0, x19
    mov x1, x14
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, L264579464c7c_14
L264579464c7c_15:
    movz x0, #1
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    ldr x23, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L264579464c7c_14:
    str d24, [x23]
    add x22, x22, #1
    cmp x22, #4
    b.lo L264579464c7c_2
L264579464c7c_4:
    mov x0, #0
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    ldr x23, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L264579464c7c_c1:
    adrp x0, _lb_text_7fe1669b4ebd@PAGE
    add x0, x0, _lb_text_7fe1669b4ebd@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_10sony_curve
_lb_12luce_raw_raw_10sony_curve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    mov x19, x0
    mov x14, x1
    mov x0, x14
    movz x1, #28688
    sub x8, x29, #96
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #176]
    cbz w14, L7aabc20ffc55_1
L7aabc20ffc55_2:
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_1:
    ldrb w14, [sp, #168]
    cbz w14, L7aabc20ffc55_5
L7aabc20ffc55_4:
    sub x10, x29, #96
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    b L7aabc20ffc55_6
L7aabc20ffc55_5:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_127a5b35f325@PAGE
    add x20, x20, _lb_text_127a5b35f325@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #25
    str x9, [x14, #16]
    adrp x15, _lb_text_69ccc0a8b4db@PAGE
    add x15, x15, _lb_text_69ccc0a8b4db@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_6:
    sub x10, x29, #152
    sub x11, x29, #208
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #16]
    cmp x14, #4
    b.eq L7aabc20ffc55_9
L7aabc20ffc55_8:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_7e5b01f6e17d@PAGE
    add x20, x20, _lb_text_7e5b01f6e17d@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #34
    str x9, [x14, #16]
    adrp x15, _lb_text_eb18da856a9b@PAGE
    add x15, x15, _lb_text_eb18da856a9b@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_9:
    mov x9, #0
    str x9, [sp, #136]
    mov x9, #0
    str x9, [sp, #144]
    mov x9, #0
    str x9, [sp, #152]
    mov x9, #0
    str x9, [sp, #160]
    mov x9, #0
    str x9, [sp, #168]
    movz x9, #4095
    str x9, [sp, #176]
    mov x14, #0
L7aabc20ffc55_12:
    cmp x14, #4
    b.hs L7aabc20ffc55_15
    .p2align 4
L7aabc20ffc55_13:
    add x20, x14, #1
    movz x10, #6
    cmp x20, x10
    b.hs L7aabc20ffc55_c1
    sub x9, x29, #72
    add x21, x9, x20, lsl #3
    mov x1, x14
    sub x0, x29, #208
    bl _lb_12luce_raw_raw_Entry_uint
    mov x14, x0
    mov w15, w1
    cbz w15, L7aabc20ffc55_16
L7aabc20ffc55_17:
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_16:
    lsr x14, x14, #2
    and x14, x14, #4095
    str x14, [x21]
    mov x14, x20
    cmp x14, #4
    b.lo L7aabc20ffc55_13
L7aabc20ffc55_15:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    cbz x14, L7aabc20ffc55_25
L7aabc20ffc55_24:
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #2, lsl #16
    movz x2, #2
    sub x8, x29, #96
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #128]
    cmp w14, #0
    cset w14, eq
    and w14, w14, #1
    cbz w14, L7aabc20ffc55_27
L7aabc20ffc55_26:
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
    adrp x15, _lb_text_f5e17d66942f@PAGE
    add x15, x15, _lb_text_f5e17d66942f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b L7aabc20ffc55_23
L7aabc20ffc55_27:
    ldr x20, [sp, #112]
    mov x0, x20
    mov x1, #0
    movz x2, #2, lsl #16
    bl _memset
    mov x14, x0
    mov x14, x20
    movz x15, #1, lsl #16
    mov w12, #0
L7aabc20ffc55_23:
    cbz w12, L7aabc20ffc55_28
L7aabc20ffc55_29:
    movz x0, #1
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_28:
    str x14, [x19, #368]
    str x15, [x19, #376]
    mov x14, #0
L7aabc20ffc55_31:
    cmp x14, x15
    b.hs L7aabc20ffc55_34
    .p2align 4
L7aabc20ffc55_32:
    ldr x12, [x19, #368]
    ldr x13, [x19, #376]
    cmp x14, x13
    b.hs L7aabc20ffc55_c2
    strh w14, [x12, x14, lsl #1]
    add x14, x14, #1
    cmp x14, x15
    b.lo L7aabc20ffc55_32
L7aabc20ffc55_34:
    mov x14, #0
L7aabc20ffc55_35:
    cmp x14, #5
    b.hs L7aabc20ffc55_38
    .p2align 4
L7aabc20ffc55_36:
    sub x10, x29, #72
    ldr x15, [x10, x14, lsl #3]
    adds x15, x15, #1
    b.cs L7aabc20ffc55_c3
    add x12, x14, #1
    sub x9, x29, #72
    add x13, x9, x12, lsl #3
    and w7, w14, #65535
    cmp x7, #16
    cset w7, hs
    movz x9, #1
    lsl w14, w9, w14
    and w14, w14, #65535
    .p2align 4
L7aabc20ffc55_39:
    movz x10, #6
    cmp x12, x10
    b.hs L7aabc20ffc55_c4
    ldr x6, [x13]
    cmp x15, x6
    b.hi L7aabc20ffc55_41
L7aabc20ffc55_40:
    ldr x6, [x19, #368]
    ldr x5, [x19, #376]
    cmp x15, x5
    b.hs L7aabc20ffc55_c5
    add x5, x6, x15, lsl #1
    add x6, x6, x15, lsl #1
    ldrh w6, [x6, #-2]
    cbnz w7, L7aabc20ffc55_42
L7aabc20ffc55_43:
    add w6, w14, w6
    strh w6, [x5]
    add x15, x15, #1
    b L7aabc20ffc55_39
L7aabc20ffc55_41:
    mov x14, x12
    cmp x14, #5
    b.lo L7aabc20ffc55_36
L7aabc20ffc55_38:
    mov x0, #0
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7aabc20ffc55_25:
    adrp x0, _lb_text_f5e17d66942f@PAGE
    add x0, x0, _lb_text_f5e17d66942f@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_42:
    adrp x0, _lb_text_b79588bccacb@PAGE
    add x0, x0, _lb_text_b79588bccacb@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_c1:
    adrp x0, _lb_text_7c7030b1b8f2@PAGE
    add x0, x0, _lb_text_7c7030b1b8f2@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_c2:
    adrp x0, _lb_text_4116e665f14d@PAGE
    add x0, x0, _lb_text_4116e665f14d@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_c3:
    adrp x0, _lb_text_21b82356bb4c@PAGE
    add x0, x0, _lb_text_21b82356bb4c@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_c4:
    adrp x0, _lb_text_6cdf4bfe1fc8@PAGE
    add x0, x0, _lb_text_6cdf4bfe1fc8@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
L7aabc20ffc55_c5:
    adrp x0, _lb_text_b79588bccacb@PAGE
    add x0, x0, _lb_text_b79588bccacb@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_12sony_private
_lb_12luce_raw_raw_12sony_private:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1216
    str x19, [sp, #1208]
    str x20, [sp, #1200]
    str x21, [sp, #1192]
    str x22, [sp, #1184]
    str x23, [sp, #1176]
    str x24, [sp, #1168]
    str x25, [sp, #1160]
    str x26, [sp, #1152]
    str x27, [sp, #1144]
    str d8, [sp, #1136]
    str d9, [sp, #1128]
    sub x16, x29, #616
    str x0, [x16]
    str x1, [x16, #8]
    mov x19, x2
    mov x20, x3
    mov x14, x4
    ldrb w15, [x20, #40]
    mov x3, x14
    mov x4, x15
    sub x9, x29, #616
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    sub x8, x29, #144
    bl _lb_12luce_raw_raw_Directory_open
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_1
Lc1fd76db96c2_2:
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_1:
    sub x10, x29, #144
    sub x11, x29, #664
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    sub x0, x29, #664
    movz x1, #29184
    mov x2, #0
    bl _lb_12luce_raw_raw_Directory_uint
    mov x21, x0
    mov w14, w1
    cbz w14, Lc1fd76db96c2_4
Lc1fd76db96c2_5:
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_4:
    sub x0, x29, #664
    movz x1, #29185
    mov x2, #0
    bl _lb_12luce_raw_raw_Directory_uint
    mov x22, x0
    mov w14, w1
    cbz w14, Lc1fd76db96c2_7
Lc1fd76db96c2_8:
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_7:
    sub x0, x29, #664
    movz x1, #29217
    sub x8, x29, #160
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_10
Lc1fd76db96c2_11:
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_10:
    ldrb w14, [sp, #1112]
    cbz w14, Lc1fd76db96c2_14
Lc1fd76db96c2_13:
    ldr x14, [sp, #1080]
    ldr x15, [sp, #1088]
    b Lc1fd76db96c2_15
Lc1fd76db96c2_14:
    mov x0, #0
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_15:
    cmp x22, #16
    b.lo Lc1fd76db96c2_17
Lc1fd76db96c2_20:
    movz x10, #16, lsl #16
    cmp x22, x10
    b.ls Lc1fd76db96c2_18
Lc1fd76db96c2_17:
    mov x0, #0
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_18:
    ldrb w12, [x20, #40]
    str x14, [sp, #520]
    str x15, [sp, #528]
    mov x9, #0
    str x9, [sp, #536]
    strb w12, [sp, #544]
    mov x9, #0
    strb w9, [sp, #545]
    mov x9, #0
    strh w9, [sp, #546]
    mov x9, #0
    str w9, [sp, #548]
    sub x0, x29, #696
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x23, x0
    mov w14, w1
    cbz w14, Lc1fd76db96c2_22
Lc1fd76db96c2_23:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_a3a63c60597a@PAGE
    add x15, x15, _lb_text_a3a63c60597a@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_22:
    adrp x24, _lb_memory_heap@PAGE
    add x24, x24, _lb_memory_heap@PAGEOFF
    ldr x14, [x24]
    add x25, x24, #8
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_29
Lc1fd76db96c2_28:
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #112
    ldr x17, [sp], #16
    blr x17
    ldrb w14, [sp, #1120]
    cmp x22, #0
    cset w15, ne
    cmp w14, #0
    cset w14, eq
    and w14, w15, w14
    cbz w14, Lc1fd76db96c2_31
Lc1fd76db96c2_30:
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
    adrp x15, _lb_text_68c2981c8d55@PAGE
    add x15, x15, _lb_text_68c2981c8d55@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Lc1fd76db96c2_27
Lc1fd76db96c2_31:
    ldr x14, [sp, #1104]
    mov x15, x22
    mov w12, #0
Lc1fd76db96c2_27:
    cbz w12, Lc1fd76db96c2_32
Lc1fd76db96c2_33:
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_32:
    str x14, [sp, #504]
    str x15, [sp, #512]
    sub x10, x29, #712
    sub x11, x29, #728
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [sp, #600]
    ldr x15, [sp, #608]
    cmp x21, x15
    b.hi Lc1fd76db96c2_167
Lc1fd76db96c2_170:
    sub x12, x15, x21
    cmp x22, x12
    b.ls Lc1fd76db96c2_168
Lc1fd76db96c2_167:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w26, [x14]
    adrp x27, _lb_text_13806cf9a1a2@PAGE
    add x27, x27, _lb_text_13806cf9a1a2@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w26, [x14]
    str x27, [x14, #8]
    movz x9, #35
    str x9, [x14, #16]
    adrp x15, _lb_text_b055e2fb7cf1@PAGE
    add x15, x15, _lb_text_b055e2fb7cf1@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x9, #0
    str x9, [sp, #464]
    mov x9, #0
    str x9, [sp, #472]
    movz x9, #1
    str w9, [sp, #480]
    mov x14, #0
    mov x15, #0
    movz w12, #1
    b Lc1fd76db96c2_175
Lc1fd76db96c2_168:
    adds x12, x21, x22
    b.cs Lc1fd76db96c2_c1
    cmp x12, x15
    b.hi Lc1fd76db96c2_c2
    cmp x21, x12
    b.hi Lc1fd76db96c2_173
Lc1fd76db96c2_172:
    add x14, x14, x21
    str x14, [sp, #464]
    str x22, [sp, #472]
    mov x9, #0
    str w9, [sp, #480]
    mov x15, x22
    mov w12, #0
Lc1fd76db96c2_175:
    str x14, [sp, #464]
    str x15, [sp, #472]
    strb w12, [sp, #480]
    ldrb w14, [sp, #480]
    cbz w14, Lc1fd76db96c2_35
Lc1fd76db96c2_36:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    adrp x14, _lb_text_186074f6b393@PAGE
    add x14, x14, _lb_text_186074f6b393@PAGEOFF
    adrp x15, _lb_core_11origin_base@PAGE
    add x15, x15, _lb_core_11origin_base@PAGEOFF
    sub x14, x14, x15
    str w14, [x19, #20]
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #448]
    str x15, [sp, #456]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_37
Lc1fd76db96c2_38:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #768
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_37:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_35:
    mov x4, x22
    sub x9, x29, #728
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x9, x29, #752
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_memory_copy_0g1_u8
    ldr x22, [sp, #504]
    ldr x26, [sp, #512]
    sub x0, x29, #600
    mov x1, #0
    movz x2, #512
    bl _memset
    mov x14, #0
Lc1fd76db96c2_138:
    cmp x14, #4
    b.hs Lc1fd76db96c2_141
    .p2align 4
Lc1fd76db96c2_139:
    movz x10, #3805
    movk x10, #745, lsl #16
    mul w15, w23, w10
    add w23, w15, #1
    sub x10, x29, #600
    str w23, [x10, x14, lsl #2]
    add x14, x14, #1
    cmp x14, #4
    b.lo Lc1fd76db96c2_139
Lc1fd76db96c2_141:
    ldr w14, [sp, #628]
    lsl w14, w14, #1
    ldr w15, [sp, #616]
    ldr w12, [sp, #624]
    eor w15, w15, w12
    lsr w15, w15, #31
    orr w14, w15, w14
    str w14, [sp, #628]
    movz x14, #4
Lc1fd76db96c2_146:
    cmp x14, #127
    b.hs Lc1fd76db96c2_149
    .p2align 4
Lc1fd76db96c2_147:
    sub x9, x29, #600
    add x15, x9, x14, lsl #2
    subs x12, x14, #4
    b.cc Lc1fd76db96c2_c3
    movz x10, #128
    cmp x12, x10
    b.hs Lc1fd76db96c2_c4
    sub x10, x29, #600
    ldr w12, [x10, x12, lsl #2]
    subs x13, x14, #2
    b.cc Lc1fd76db96c2_c5
    movz x10, #128
    cmp x13, x10
    b.hs Lc1fd76db96c2_c6
    sub x10, x29, #600
    ldr w13, [x10, x13, lsl #2]
    eor w12, w12, w13
    lsl w12, w12, #1
    subs x13, x14, #3
    b.cc Lc1fd76db96c2_c7
    movz x10, #128
    cmp x13, x10
    b.hs Lc1fd76db96c2_c8
    sub x10, x29, #600
    ldr w13, [x10, x13, lsl #2]
    subs x7, x14, #1
    b.cc Lc1fd76db96c2_c9
    movz x10, #128
    cmp x7, x10
    b.hs Lc1fd76db96c2_c10
    sub x10, x29, #600
    ldr w7, [x10, x7, lsl #2]
    eor w13, w13, w7
    lsr w13, w13, #31
    orr w12, w13, w12
    str w12, [x15]
    add x14, x14, #1
    cmp x14, #127
    b.lo Lc1fd76db96c2_147
Lc1fd76db96c2_149:
    lsr x14, x26, #2
    movz x15, #127
    mov x12, #0
Lc1fd76db96c2_154:
    cmp x12, x14
    b.hs Lc1fd76db96c2_157
    .p2align 4
Lc1fd76db96c2_155:
    adds x13, x15, #1
    b.cs Lc1fd76db96c2_c11
    and x7, x13, #127
    sub x10, x29, #600
    ldr w7, [x10, x7, lsl #2]
    adds x6, x13, #64
    b.cs Lc1fd76db96c2_c12
    and x6, x6, #127
    sub x10, x29, #600
    ldr w6, [x10, x6, lsl #2]
    eor w7, w7, w6
    and x15, x15, #127
    sub x10, x29, #600
    str w7, [x10, x15, lsl #2]
    lsl x15, x12, #2
    mov x6, #0
Lc1fd76db96c2_160:
    cmp x6, #4
    b.hs Lc1fd76db96c2_163
    .p2align 4
Lc1fd76db96c2_161:
    add x5, x15, x6
    cmp x5, x26
    b.hs Lc1fd76db96c2_c13
    add x5, x5, x22
    ldrb w4, [x5]
    movz x10, #8
    mov w9, w6
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.ne Lc1fd76db96c2_c14
    mov w3, w9
    movz x9, #24
    subs w3, w9, w3
    b.cc Lc1fd76db96c2_c15
    mov w2, w3
    cmp x2, #32
    b.hs Lc1fd76db96c2_164
Lc1fd76db96c2_165:
    lsr w3, w7, w3
    and w3, w3, #255
    eor w4, w3, w4
    strb w4, [x5]
    add x6, x6, #1
    cmp x6, #4
    b.lo Lc1fd76db96c2_161
Lc1fd76db96c2_163:
    add x12, x12, #1
    mov x15, x13
    cmp x12, x14
    b.lo Lc1fd76db96c2_155
Lc1fd76db96c2_157:
    mov x9, #0
    subs x14, x9, x21
    b.vs Lc1fd76db96c2_c16
    ldrb w15, [x20, #40]
    mov x2, x14
    mov x4, x15
    sub x9, x29, #712
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x3, #0
    sub x8, x29, #144
    bl _lb_12luce_raw_raw_Directory_open
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_40
Lc1fd76db96c2_41:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #168
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #384]
    str x15, [sp, #392]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_42
Lc1fd76db96c2_43:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #832
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_42:
    sub x10, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_40:
    sub x10, x29, #144
    sub x11, x29, #816
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    sub x0, x29, #816
    movz x1, #29443
    sub x8, x29, #160
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_48
Lc1fd76db96c2_49:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #184
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #368]
    str x15, [sp, #376]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_50
Lc1fd76db96c2_51:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #848
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_50:
    sub x10, x29, #184
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_48:
    ldrb w14, [sp, #1112]
    cbz w14, Lc1fd76db96c2_46
Lc1fd76db96c2_53:
    sub x10, x29, #160
    sub x11, x29, #904
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #328]
    cmp x14, #4
    b.ne Lc1fd76db96c2_55
Lc1fd76db96c2_54:
    sub x0, x29, #904
    movz x1, #1
    bl _lb_12luce_raw_raw_Entry_real
    fmov d8, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_57
Lc1fd76db96c2_58:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #296]
    str x15, [sp, #304]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_59
Lc1fd76db96c2_60:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #920
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_59:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_57:
    sub x0, x29, #904
    mov x1, #0
    bl _lb_12luce_raw_raw_Entry_real
    fmov d9, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_62
Lc1fd76db96c2_63:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #280]
    str x15, [sp, #288]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_64
Lc1fd76db96c2_65:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #936
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_64:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_62:
    sub x0, x29, #904
    movz x1, #3
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_67
Lc1fd76db96c2_68:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #264]
    str x15, [sp, #272]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_69
Lc1fd76db96c2_70:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #952
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_69:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_67:
    fadd d24, d9, d24
    fmov d25, #0.5000000
    fmul d9, d24, d25
    sub x0, x29, #904
    movz x1, #2
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_72
Lc1fd76db96c2_73:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #248]
    str x15, [sp, #256]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_74
Lc1fd76db96c2_75:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #968
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_74:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_72:
    fmov d25, xzr
    fcmp d8, d25
    b.le Lc1fd76db96c2_177
Lc1fd76db96c2_180:
    fcmp d9, d25
    b.le Lc1fd76db96c2_177
Lc1fd76db96c2_179:
    fcmp d24, d25
    b.le Lc1fd76db96c2_177
Lc1fd76db96c2_176:
    fdiv d25, d9, d8
    fmov d26, #1.0000000
    fdiv d24, d9, d24
    str d25, [x19, #1200]
    str d26, [x19, #1208]
    str d24, [x19, #1216]
    movz x9, #1
    strb w9, [x19, #1224]
Lc1fd76db96c2_177:
Lc1fd76db96c2_178:
Lc1fd76db96c2_55:
Lc1fd76db96c2_56:
Lc1fd76db96c2_46:
Lc1fd76db96c2_47:
    sub x0, x29, #816
    movz x1, #29459
    sub x8, x29, #160
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_85
Lc1fd76db96c2_86:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #184
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #232]
    str x15, [sp, #240]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_87
Lc1fd76db96c2_88:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #984
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_87:
    sub x10, x29, #184
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_85:
    ldrb w14, [sp, #1112]
    cbz w14, Lc1fd76db96c2_83
Lc1fd76db96c2_90:
    sub x10, x29, #160
    sub x11, x29, #1040
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #192]
    cmp x14, #4
    b.ne Lc1fd76db96c2_92
Lc1fd76db96c2_91:
    sub x0, x29, #1040
    mov x1, #0
    bl _lb_12luce_raw_raw_Entry_real
    fmov d8, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_94
Lc1fd76db96c2_95:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #160]
    str x15, [sp, #168]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_96
Lc1fd76db96c2_97:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1056
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_96:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_94:
    sub x0, x29, #1040
    movz x1, #1
    bl _lb_12luce_raw_raw_Entry_real
    fmov d9, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_99
Lc1fd76db96c2_100:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #144]
    str x15, [sp, #152]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_101
Lc1fd76db96c2_102:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1072
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_101:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_99:
    sub x0, x29, #1040
    movz x1, #2
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_104
Lc1fd76db96c2_105:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #128]
    str x15, [sp, #136]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_106
Lc1fd76db96c2_107:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1088
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_106:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_104:
    fadd d24, d9, d24
    fmov d25, #0.5000000
    fmul d9, d24, d25
    sub x0, x29, #1040
    movz x1, #3
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, Lc1fd76db96c2_109
Lc1fd76db96c2_110:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #112]
    str x15, [sp, #120]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_111
Lc1fd76db96c2_112:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1104
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_111:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_109:
    fmov d25, xzr
    fcmp d8, d25
    b.le Lc1fd76db96c2_183
Lc1fd76db96c2_186:
    fcmp d9, d25
    b.le Lc1fd76db96c2_183
Lc1fd76db96c2_185:
    fcmp d24, d25
    b.le Lc1fd76db96c2_183
Lc1fd76db96c2_182:
    fdiv d25, d9, d8
    fmov d26, #1.0000000
    fdiv d24, d9, d24
    str d25, [x19, #1200]
    str d26, [x19, #1208]
    str d24, [x19, #1216]
    movz x9, #1
    strb w9, [x19, #1224]
Lc1fd76db96c2_183:
Lc1fd76db96c2_184:
Lc1fd76db96c2_92:
Lc1fd76db96c2_93:
Lc1fd76db96c2_83:
Lc1fd76db96c2_84:
    sub x0, x29, #816
    movz x1, #29456
    sub x8, x29, #160
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #1120]
    cbz w14, Lc1fd76db96c2_122
Lc1fd76db96c2_123:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #184
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #96]
    str x15, [sp, #104]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_124
Lc1fd76db96c2_125:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1120
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_124:
    sub x10, x29, #184
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_122:
    ldrb w14, [sp, #1112]
    cbz w14, Lc1fd76db96c2_120
Lc1fd76db96c2_127:
    sub x10, x29, #160
    sub x11, x29, #1176
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #56]
    cmp x14, #4
    b.ne Lc1fd76db96c2_129
Lc1fd76db96c2_128:
    mov x0, x19
    sub x1, x29, #1176
    bl _lb_12luce_raw_raw_15canonical_black
    mov w14, w0
    cbz w14, Lc1fd76db96c2_131
Lc1fd76db96c2_132:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x11, x29, #112
    ldp x16, x17, [x19, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x19, #16]
    str x16, [x11, #16]
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #24]
    str x15, [sp, #32]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_133
Lc1fd76db96c2_134:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1192
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_133:
    sub x10, x29, #112
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    movz x0, #1
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_131:
Lc1fd76db96c2_129:
Lc1fd76db96c2_130:
Lc1fd76db96c2_120:
Lc1fd76db96c2_121:
    ldr x14, [sp, #504]
    ldr x15, [sp, #512]
    str x14, [sp, #8]
    str x15, [sp, #16]
    ldr x14, [x24]
    ldr x15, [x25]
    cbz x15, Lc1fd76db96c2_136
Lc1fd76db96c2_137:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #1208
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
Lc1fd76db96c2_136:
    mov x0, #0
    ldr x19, [sp, #1208]
    ldr x20, [sp, #1200]
    ldr x21, [sp, #1192]
    ldr x22, [sp, #1184]
    ldr x23, [sp, #1176]
    ldr x24, [sp, #1168]
    ldr x25, [sp, #1160]
    ldr x26, [sp, #1152]
    ldr x27, [sp, #1144]
    ldr d8, [sp, #1136]
    ldr d9, [sp, #1128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc1fd76db96c2_29:
    adrp x0, _lb_text_68c2981c8d55@PAGE
    add x0, x0, _lb_text_68c2981c8d55@PAGEOFF
    adrp x1, _lb_text_7c040e7cd3a7@PAGE
    add x1, x1, _lb_text_7c040e7cd3a7@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_173:
    adrp x0, _lb_text_f89855dc2b84@PAGE
    add x0, x0, _lb_text_f89855dc2b84@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_164:
    adrp x0, _lb_text_ad4048ed6a09@PAGE
    add x0, x0, _lb_text_ad4048ed6a09@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c1:
    adrp x0, _lb_text_f89855dc2b84@PAGE
    add x0, x0, _lb_text_f89855dc2b84@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c2:
    adrp x0, _lb_text_f89855dc2b84@PAGE
    add x0, x0, _lb_text_f89855dc2b84@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c3:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c4:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c5:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c6:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c7:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c8:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c9:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c10:
    adrp x0, _lb_text_70cba92c6d77@PAGE
    add x0, x0, _lb_text_70cba92c6d77@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c11:
    adrp x0, _lb_text_4163417472ca@PAGE
    add x0, x0, _lb_text_4163417472ca@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c12:
    adrp x0, _lb_text_4fe93d1d28b6@PAGE
    add x0, x0, _lb_text_4fe93d1d28b6@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c13:
    adrp x0, _lb_text_ad4048ed6a09@PAGE
    add x0, x0, _lb_text_ad4048ed6a09@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c14:
    adrp x0, _lb_text_ad4048ed6a09@PAGE
    add x0, x0, _lb_text_ad4048ed6a09@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c15:
    adrp x0, _lb_text_ad4048ed6a09@PAGE
    add x0, x0, _lb_text_ad4048ed6a09@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lc1fd76db96c2_c16:
    adrp x0, _lb_text_d84b89b7beed@PAGE
    add x0, x0, _lb_text_d84b89b7beed@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_8exif_cfa
_lb_12luce_raw_raw_8exif_cfa:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #88]
    str x20, [sp, #80]
    mov x14, x0
    mov x19, x1
    mov x0, x14
    movz x1, #41730
    sub x8, x29, #88
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #72]
    cbz w14, Lab021aeda8e1_1
Lab021aeda8e1_2:
    movz x0, #1
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab021aeda8e1_1:
    ldrb w14, [sp, #64]
    cbz w14, Lab021aeda8e1_5
Lab021aeda8e1_4:
    ldr x14, [sp, #24]
    ldr x15, [sp, #32]
    ldr x12, [sp, #40]
    b Lab021aeda8e1_6
Lab021aeda8e1_5:
    mov x0, #0
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab021aeda8e1_6:
    cmp x14, #8
    b.eq Lab021aeda8e1_9
Lab021aeda8e1_8:
    mov x0, #0
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab021aeda8e1_9:
    mov x9, #0
    cmp x9, x12
    b.hs Lab021aeda8e1_c1
    ldrb w14, [x15]
    cmp w14, #2
    cset w13, eq
    cbnz w13, Lab021aeda8e1_12
Lab021aeda8e1_36:
    b Lab021aeda8e1_13
Lab021aeda8e1_12:
    movz x9, #1
    cmp x9, x12
    b.hs Lab021aeda8e1_c2
    ldrb w13, [x15, #1]
    cmp w13, #0
    cset w13, eq
Lab021aeda8e1_13:
    and w13, w13, #255
    cbz w13, Lab021aeda8e1_14
Lab021aeda8e1_37:
    b Lab021aeda8e1_15
Lab021aeda8e1_14:
    cmp w14, #0
    cset w13, eq
    cbnz w13, Lab021aeda8e1_16
Lab021aeda8e1_38:
    b Lab021aeda8e1_17
Lab021aeda8e1_16:
    movz x9, #1
    cmp x9, x12
    b.hs Lab021aeda8e1_c3
    ldrb w13, [x15, #1]
    cmp w13, #2
    cset w13, eq
Lab021aeda8e1_17:
    and w13, w13, #255
Lab021aeda8e1_15:
    and w13, w13, #255
    cbz w13, Lab021aeda8e1_18
Lab021aeda8e1_22:
    movz x9, #2
    cmp x9, x12
    b.hs Lab021aeda8e1_c4
    ldrb w13, [x15, #2]
    cmp w14, w13
    b.ne Lab021aeda8e1_18
Lab021aeda8e1_21:
    movz x9, #3
    cmp x9, x12
    b.hs Lab021aeda8e1_c5
    ldrb w14, [x15, #3]
    ldrb w13, [x15, #1]
    cmp w14, w13
    b.eq Lab021aeda8e1_19
Lab021aeda8e1_18:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_7455afff1590@PAGE
    add x20, x20, _lb_text_7455afff1590@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #43
    str x9, [x14, #16]
    adrp x15, _lb_text_0b87c797249b@PAGE
    add x15, x15, _lb_text_0b87c797249b@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x0, #1
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab021aeda8e1_19:
    add x14, x19, #448
    mov x13, #0
Lab021aeda8e1_24:
    cmp x13, #4
    b.hs Lab021aeda8e1_27
    .p2align 4
Lab021aeda8e1_25:
    add x7, x14, x13
    ldr x6, [x19, #384]
    lsr x5, x13, #1
    adds x6, x5, x6
    b.cs Lab021aeda8e1_c6
    and x6, x6, #1
    lsl x6, x6, #1
    add x6, x6, #4
    ldr x5, [x19, #392]
    and x4, x13, #1
    adds x5, x4, x5
    b.cs Lab021aeda8e1_c7
    and x5, x5, #1
    adds x6, x5, x6
    b.cs Lab021aeda8e1_c8
    cmp x6, x12
    b.hs Lab021aeda8e1_c9
    ldrb w6, [x6, x15]
    strb w6, [x7]
    add x13, x13, #1
    cmp x13, #4
    b.lo Lab021aeda8e1_25
Lab021aeda8e1_27:
    mov x0, #0
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lab021aeda8e1_c1:
    adrp x0, _lb_text_88d33faebaef@PAGE
    add x0, x0, _lb_text_88d33faebaef@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c2:
    adrp x0, _lb_text_88d33faebaef@PAGE
    add x0, x0, _lb_text_88d33faebaef@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c3:
    adrp x0, _lb_text_88d33faebaef@PAGE
    add x0, x0, _lb_text_88d33faebaef@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c4:
    adrp x0, _lb_text_9dd2d6018842@PAGE
    add x0, x0, _lb_text_9dd2d6018842@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c5:
    adrp x0, _lb_text_9dd2d6018842@PAGE
    add x0, x0, _lb_text_9dd2d6018842@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c6:
    adrp x0, _lb_text_549fd68b7889@PAGE
    add x0, x0, _lb_text_549fd68b7889@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c7:
    adrp x0, _lb_text_549fd68b7889@PAGE
    add x0, x0, _lb_text_549fd68b7889@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c8:
    adrp x0, _lb_text_549fd68b7889@PAGE
    add x0, x0, _lb_text_549fd68b7889@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
Lab021aeda8e1_c9:
    adrp x0, _lb_text_549fd68b7889@PAGE
    add x0, x0, _lb_text_549fd68b7889@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_Directory_real
_lb_12luce_raw_raw_Directory_real:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str d8, [sp, #136]
    fmov d8, d0
    mov x14, x0
    mov x15, x1
    mov x0, x14
    mov x1, x15
    sub x8, x29, #80
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #128]
    cbz w14, Lc4fc92f9e255_4
Lc4fc92f9e255_5:
    fmov d0, xzr
    movz x0, #1
    ldr d8, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc4fc92f9e255_4:
    ldrb w14, [sp, #120]
    cbz w14, Lc4fc92f9e255_2
Lc4fc92f9e255_7:
    sub x10, x29, #80
    sub x11, x29, #136
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #24]
    cmp x14, #0
    b.ls Lc4fc92f9e255_9
Lc4fc92f9e255_8:
    sub x0, x29, #136
    mov x1, #0
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, Lc4fc92f9e255_11
Lc4fc92f9e255_12:
    fmov d0, xzr
    movz x0, #1
    ldr d8, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc4fc92f9e255_11:
    fmov d0, d24
    mov x0, #0
    ldr d8, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lc4fc92f9e255_9:
Lc4fc92f9e255_10:
Lc4fc92f9e255_2:
Lc4fc92f9e255_3:
    fmov d0, d8
    mov x0, #0
    ldr d8, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_16normalized_model
_lb_12luce_raw_raw_16normalized_model:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    str x24, [sp, #80]
    str x25, [sp, #72]
    str x26, [sp, #64]
    str x27, [sp, #56]
    str x28, [sp, #48]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    ldr x19, [sp, #32]
    ldr x20, [sp, #40]
    adrp x21, _lb_text_3df2c3383c52@PAGE
    add x21, x21, _lb_text_3df2c3383c52@PAGEOFF
    adrp x22, _lb_text_9c14182511c1@PAGE
    add x22, x22, _lb_text_9c14182511c1@PAGEOFF
    adrp x23, _lb_text_ee709b456970@PAGE
    add x23, x23, _lb_text_ee709b456970@PAGEOFF
    adrp x24, _lb_text_7400979d2db0@PAGE
    add x24, x24, _lb_text_7400979d2db0@PAGEOFF
    adrp x25, _lb_text_fd00b30ec04a@PAGE
    add x25, x25, _lb_text_fd00b30ec04a@PAGEOFF
    adrp x26, _lb_text_3d656cf51c81@PAGE
    add x26, x26, _lb_text_3d656cf51c81@PAGEOFF
    adrp x27, _lb_text_ee709b456970@PAGE
    add x27, x27, _lb_text_ee709b456970@PAGEOFF
    mov x28, #0
    mov x14, #0
La1e766c95f91_1:
    cmp x14, x20
    b.hs La1e766c95f91_3
    .p2align 4
La1e766c95f91_4:
    adds x15, x28, #12
    b.cs La1e766c95f91_c1
    ldr x12, [sp, #24]
    cmp x15, x12
    b.hs La1e766c95f91_3
La1e766c95f91_2:
    adds x15, x14, #2
    b.cs La1e766c95f91_c2
    cmp x15, x20
    b.ne La1e766c95f91_6
La1e766c95f91_13:
    cmp x14, #0
    b.ls La1e766c95f91_6
La1e766c95f91_12:
    sub x15, x14, #1
    ldrb w15, [x15, x19]
    cmp w15, #48
    b.lo La1e766c95f91_6
La1e766c95f91_11:
    cmp w15, #57
    b.hi La1e766c95f91_6
La1e766c95f91_10:
    ldrb w15, [x19, x14]
    cmp w15, #109
    b.ne La1e766c95f91_6
La1e766c95f91_9:
    add x15, x14, #1
    cmp x15, x20
    b.hs La1e766c95f91_c3
    ldrb w15, [x15, x19]
    cmp w15, #50
    b.lo La1e766c95f91_6
La1e766c95f91_8:
    cmp w15, #52
    b.hi La1e766c95f91_6
La1e766c95f91_5:
    cmp w15, #50
    b.ne La1e766c95f91_15
La1e766c95f91_14:
    mov x15, x26
    movz x13, #8
    b La1e766c95f91_16
La1e766c95f91_15:
    cmp w15, #51
    cset w15, eq
    cmp w15, #0
    csel x13, x24, x25, ne
    cmp w15, #0
    movz x10, #9
    movz x11, #8
    csel x15, x10, x11, ne
    mov x7, x15
    mov x15, x13
    mov x13, x7
La1e766c95f91_16:
    movz x7, #2
    b La1e766c95f91_7
La1e766c95f91_6:
    adds x15, x14, #4
    b.cs La1e766c95f91_c4
    cmp x15, x20
    b.hi La1e766c95f91_21
La1e766c95f91_25:
    cmp x14, x15
    b.hi La1e766c95f91_27
La1e766c95f91_26:
    add x15, x19, x14
    str x12, [sp, #32]
    str x14, [sp, #40]
    mov x0, x15
    mov x1, x22
    movz x2, #4
    bl _memcmp
    mov w15, w0
    ldr x12, [sp, #32]
    ldr x14, [sp, #40]
    cmp w15, #0
    cset w15, eq
    movz w13, #1
    mov w13, w15
    and w15, w13, #255
    cbz w15, La1e766c95f91_21
La1e766c95f91_24:
    cmp x14, #0
    b.ls La1e766c95f91_21
La1e766c95f91_23:
    sub x15, x14, #1
    ldrb w15, [x15, x19]
    cmp w15, #32
    b.eq La1e766c95f91_21
La1e766c95f91_20:
    movz x7, #4
    mov x15, x23
    movz x13, #5
    b La1e766c95f91_22
La1e766c95f91_21:
    mov x7, #0
    mov x15, x21
    mov x13, #0
La1e766c95f91_22:
La1e766c95f91_7:
    cmp x7, #0
    b.ls La1e766c95f91_31
La1e766c95f91_30:
    ldr x6, [sp, #16]
    mov x5, #0
La1e766c95f91_33:
    cmp x5, x13
    b.hs La1e766c95f91_36
    .p2align 4
La1e766c95f91_34:
    ldrb w4, [x15, x5]
    cmp x28, x12
    b.hs La1e766c95f91_c5
    strb w4, [x6, x28]
    add x28, x28, #1
    add x5, x5, #1
    cmp x5, x13
    b.lo La1e766c95f91_34
La1e766c95f91_36:
    adds x14, x14, x7
    b.cs La1e766c95f91_c6
    cmp x13, #5
    cset w7, eq
    cbnz w7, La1e766c95f91_42
La1e766c95f91_48:
    b La1e766c95f91_43
La1e766c95f91_42:
    str x12, [sp, #32]
    str x14, [sp, #8]
    mov x0, x15
    mov x1, x27
    mov x2, x13
    bl _memcmp
    mov w15, w0
    ldr x12, [sp, #32]
    ldr x14, [sp, #8]
    cmp w15, #0
    cset w7, eq
La1e766c95f91_43:
    and w15, w7, #255
    cbz w15, La1e766c95f91_38
La1e766c95f91_41:
    cmp x14, x20
    b.hs La1e766c95f91_38
La1e766c95f91_40:
    ldrb w15, [x14, x19]
    cmp w15, #32
    b.eq La1e766c95f91_38
La1e766c95f91_37:
    ldr x15, [sp, #16]
    cmp x28, x12
    b.hs La1e766c95f91_c7
    movz x9, #32
    strb w9, [x15, x28]
    add x15, x28, #1
    b La1e766c95f91_39
La1e766c95f91_38:
    mov x15, x28
La1e766c95f91_39:
    mov x28, x15
    cmp x14, x20
    b.lo La1e766c95f91_4
    b La1e766c95f91_3
La1e766c95f91_31:
    ldr x15, [sp, #16]
    cmp x28, x12
    b.hs La1e766c95f91_c8
    add x15, x15, x28
    ldrb w12, [x19, x14]
    strb w12, [x15]
    add x28, x28, #1
    add x14, x14, #1
    cmp x14, x20
    b.lo La1e766c95f91_4
La1e766c95f91_3:
    ldr x14, [sp, #16]
    ldr x15, [sp, #24]
    cmp x28, x15
    b.hi La1e766c95f91_c9
    mov x0, x14
    mov x1, x28
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    ldr x24, [sp, #80]
    ldr x25, [sp, #72]
    ldr x26, [sp, #64]
    ldr x27, [sp, #56]
    ldr x28, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La1e766c95f91_27:
    adrp x0, _lb_text_f1d7a5ff9fa5@PAGE
    add x0, x0, _lb_text_f1d7a5ff9fa5@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c1:
    adrp x0, _lb_text_deba0dd926dd@PAGE
    add x0, x0, _lb_text_deba0dd926dd@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c2:
    adrp x0, _lb_text_57188c61ff13@PAGE
    add x0, x0, _lb_text_57188c61ff13@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c3:
    adrp x0, _lb_text_57188c61ff13@PAGE
    add x0, x0, _lb_text_57188c61ff13@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c4:
    adrp x0, _lb_text_f1d7a5ff9fa5@PAGE
    add x0, x0, _lb_text_f1d7a5ff9fa5@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c5:
    adrp x0, _lb_text_d2a3dfdacac4@PAGE
    add x0, x0, _lb_text_d2a3dfdacac4@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c6:
    adrp x0, _lb_text_3f3dc3d39e23@PAGE
    add x0, x0, _lb_text_3f3dc3d39e23@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c7:
    adrp x0, _lb_text_ab075ef96e0a@PAGE
    add x0, x0, _lb_text_ab075ef96e0a@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c8:
    adrp x0, _lb_text_8ef882598d21@PAGE
    add x0, x0, _lb_text_8ef882598d21@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at
La1e766c95f91_c9:
    adrp x0, _lb_text_c76f071b7805@PAGE
    add x0, x0, _lb_text_c76f071b7805@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_14luce_std_paths_separator
_lb_14luce_std_paths_separator:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    uxtb w14, w0
    cmp w14, #47
    cset w14, eq
    cbz w14, L3ea6b3289662_1
L3ea6b3289662_6:
    b L3ea6b3289662_2
L3ea6b3289662_1:
    mov w14, #0
L3ea6b3289662_2:
    and w14, w14, #255
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_14canon_black_at
_lb_12luce_raw_raw_14canon_black_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    cmp x14, #582
    b.ne Lbbf1fc936a67_2
Lbbf1fc936a67_1:
    movz x0, #166
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_2:
Lbbf1fc936a67_3:
    cmp x14, #653
    b.ne Lbbf1fc936a67_6
Lbbf1fc936a67_5:
    movz x0, #286
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_6:
Lbbf1fc936a67_7:
    cmp x14, #796
    b.ne Lbbf1fc936a67_10
Lbbf1fc936a67_9:
    movz x0, #196
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_10:
Lbbf1fc936a67_11:
    cmp x14, #674
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_23:
    cmp x14, #692
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_22:
    cmp x14, #702
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_21:
    cmp x14, #1227
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_20:
    cmp x14, #1250
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_19:
    cmp x14, #1251
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_18:
    cmp x14, #1337
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_17:
    cmp x14, #1338
    b.eq Lbbf1fc936a67_13
Lbbf1fc936a67_16:
    cmp x14, #1346
    b.ne Lbbf1fc936a67_14
Lbbf1fc936a67_13:
    cmp x15, #4
    cset w14, eq
    cmp x15, #5
    cset w12, eq
    cmp w14, #0
    csel w14, w14, w12, ne
    and w14, w14, #255
    cbz w14, Lbbf1fc936a67_25
Lbbf1fc936a67_24:
    movz x14, #692
    b Lbbf1fc936a67_26
Lbbf1fc936a67_25:
    cmp x15, #6
    cset w14, eq
    cmp x15, #7
    cset w12, eq
    cmp w14, #0
    csel w14, w14, w12, ne
    and w14, w14, #255
    cbz w14, Lbbf1fc936a67_30
Lbbf1fc936a67_29:
    movz x14, #715
    b Lbbf1fc936a67_31
Lbbf1fc936a67_30:
    cmp x15, #9
    movz x10, #719
    movz x11, #231
    csel x14, x10, x11, eq
Lbbf1fc936a67_31:
Lbbf1fc936a67_26:
    mov x0, x14
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_14:
Lbbf1fc936a67_15:
    cmp x14, #1273
    b.eq Lbbf1fc936a67_38
Lbbf1fc936a67_41:
    cmp x14, #1275
    b.ne Lbbf1fc936a67_39
Lbbf1fc936a67_38:
    movz x0, #479
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_39:
Lbbf1fc936a67_40:
    cmp x14, #1312
    b.eq Lbbf1fc936a67_43
Lbbf1fc936a67_48:
    cmp x14, #1313
    b.eq Lbbf1fc936a67_43
Lbbf1fc936a67_47:
    cmp x14, #1316
    b.eq Lbbf1fc936a67_43
Lbbf1fc936a67_46:
    cmp x14, #1506
    b.ne Lbbf1fc936a67_44
Lbbf1fc936a67_43:
    cmp x15, #10
    b.ne Lbbf1fc936a67_50
Lbbf1fc936a67_49:
    movz x14, #504
    b Lbbf1fc936a67_51
Lbbf1fc936a67_50:
    cmp x15, #11
    movz x10, #728
    mov x11, #0
    csel x14, x10, x11, eq
Lbbf1fc936a67_51:
    mov x0, x14
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_44:
Lbbf1fc936a67_45:
    cmp x14, #1560
    b.eq Lbbf1fc936a67_56
Lbbf1fc936a67_61:
    cmp x14, #1592
    b.eq Lbbf1fc936a67_56
Lbbf1fc936a67_60:
    cmp x14, #1353
    b.eq Lbbf1fc936a67_56
Lbbf1fc936a67_59:
    cmp x14, #1602
    b.ne Lbbf1fc936a67_57
Lbbf1fc936a67_56:
    cmp x15, #14
    movz x10, #556
    movz x11, #778
    csel x14, x10, x11, eq
    mov x0, x14
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_57:
Lbbf1fc936a67_58:
    cmp x14, #1816
    b.eq Lbbf1fc936a67_66
Lbbf1fc936a67_70:
    cmp x14, #1820
    b.eq Lbbf1fc936a67_66
Lbbf1fc936a67_69:
    cmp x14, #1824
    b.ne Lbbf1fc936a67_67
Lbbf1fc936a67_66:
    movz x0, #792
    movz x1, #329
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_67:
Lbbf1fc936a67_68:
    cmp x14, #1770
    b.eq Lbbf1fc936a67_72
Lbbf1fc936a67_76:
    cmp x14, #2024
    b.eq Lbbf1fc936a67_72
Lbbf1fc936a67_75:
    cmp x14, #3656
    b.ne Lbbf1fc936a67_73
Lbbf1fc936a67_72:
    movz x0, #806
    movz x1, #343
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_73:
Lbbf1fc936a67_74:
    cmp x14, #3973
    b.eq Lbbf1fc936a67_78
Lbbf1fc936a67_81:
    cmp x14, #3778
    b.ne Lbbf1fc936a67_79
Lbbf1fc936a67_78:
    movz x0, #636
    movz x1, #363
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_79:
Lbbf1fc936a67_80:
    movz x10, #4528
    cmp x14, x10
    b.ne Lbbf1fc936a67_84
Lbbf1fc936a67_83:
    movz x0, #656
    movz x1, #383
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbbf1fc936a67_84:
Lbbf1fc936a67_85:
    mov x0, #0
    mov x1, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_11read_matrix
_lb_12luce_raw_raw_11read_matrix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    str x19, [sp, #248]
    str x20, [sp, #240]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    mov x14, x0
    mov x15, x1
    mov x0, x14
    mov x1, x15
    sub x8, x29, #136
    bl _lb_12luce_raw_raw_Directory_find
    ldrb w14, [sp, #184]
    cbz w14, L03b726b76011_1
L03b726b76011_2:
    mov x0, #0
    movz x1, #1
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L03b726b76011_1:
    ldrb w14, [sp, #176]
    cbz w14, L03b726b76011_5
L03b726b76011_4:
    sub x10, x29, #136
    sub x11, x29, #192
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    b L03b726b76011_6
L03b726b76011_5:
    mov x0, #0
    mov x1, #0
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L03b726b76011_6:
    sub x10, x29, #192
    sub x11, x29, #248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x14, [sp, #24]
    cmp x14, #9
    b.eq L03b726b76011_9
L03b726b76011_8:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_062bb2d11d5c@PAGE
    add x20, x20, _lb_text_062bb2d11d5c@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #43
    str x9, [x14, #16]
    adrp x15, _lb_text_15c9eaa4da97@PAGE
    add x15, x15, _lb_text_15c9eaa4da97@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    mov x0, #0
    movz x1, #1
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L03b726b76011_9:
L03b726b76011_10:
    mov x19, #0
L03b726b76011_12:
    cmp x19, #9
    b.hs L03b726b76011_15
    .p2align 4
L03b726b76011_13:
    ldr x14, [sp, #192]
    ldr x15, [sp, #200]
    cmp x19, x15
    b.hs L03b726b76011_c1
    add x20, x14, x19, lsl #3
    mov x1, x19
    sub x0, x29, #248
    bl _lb_12luce_raw_raw_Entry_real
    fmov d24, d0
    mov w14, w0
    cbz w14, L03b726b76011_16
L03b726b76011_17:
    mov x0, #0
    movz x1, #1
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L03b726b76011_16:
    str d24, [x20]
    add x19, x19, #1
    cmp x19, #9
    b.lo L03b726b76011_13
L03b726b76011_15:
    movz x0, #1
    mov x1, #0
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L03b726b76011_c1:
    adrp x0, _lb_text_0485fac74113@PAGE
    add x0, x0, _lb_text_0485fac74113@PAGEOFF
    adrp x1, _lb_text_0911e1c79030@PAGE
    add x1, x1, _lb_text_0911e1c79030@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_22illuminant_temperature
_lb_12luce_raw_raw_22illuminant_temperature:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    cmp x14, #1
    b.eq Lbd7747f1b939_1
Lbd7747f1b939_7:
    cmp x14, #4
    b.eq Lbd7747f1b939_1
Lbd7747f1b939_6:
    cmp x14, #9
    b.eq Lbd7747f1b939_1
Lbd7747f1b939_5:
    cmp x14, #18
    b.eq Lbd7747f1b939_1
Lbd7747f1b939_4:
    cmp x14, #20
    b.ne Lbd7747f1b939_2
Lbd7747f1b939_1:
    ldr d24, Lbd7747f1b939_k0
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_2:
Lbd7747f1b939_3:
    cmp x14, #2
    b.eq Lbd7747f1b939_9
Lbd7747f1b939_12:
    cmp x14, #14
    b.ne Lbd7747f1b939_10
Lbd7747f1b939_9:
    ldr d24, Lbd7747f1b939_k1
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_10:
Lbd7747f1b939_11:
    cmp x14, #3
    b.eq Lbd7747f1b939_14
Lbd7747f1b939_17:
    cmp x14, #17
    b.ne Lbd7747f1b939_15
Lbd7747f1b939_14:
    ldr d24, Lbd7747f1b939_k2
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_15:
Lbd7747f1b939_16:
    cmp x14, #10
    b.ne Lbd7747f1b939_20
Lbd7747f1b939_19:
    ldr d24, Lbd7747f1b939_k3
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_20:
Lbd7747f1b939_21:
    cmp x14, #11
    b.ne Lbd7747f1b939_24
Lbd7747f1b939_23:
    ldr d24, Lbd7747f1b939_k4
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_24:
Lbd7747f1b939_25:
    cmp x14, #12
    b.ne Lbd7747f1b939_28
Lbd7747f1b939_27:
    ldr d24, Lbd7747f1b939_k5
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_28:
Lbd7747f1b939_29:
    cmp x14, #13
    b.ne Lbd7747f1b939_32
Lbd7747f1b939_31:
    ldr d24, Lbd7747f1b939_k6
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_32:
Lbd7747f1b939_33:
    cmp x14, #15
    b.ne Lbd7747f1b939_36
Lbd7747f1b939_35:
    ldr d24, Lbd7747f1b939_k7
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_36:
Lbd7747f1b939_37:
    cmp x14, #16
    b.ne Lbd7747f1b939_40
Lbd7747f1b939_39:
    ldr d24, Lbd7747f1b939_k8
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_40:
Lbd7747f1b939_41:
    cmp x14, #19
    b.ne Lbd7747f1b939_44
Lbd7747f1b939_43:
    ldr d24, Lbd7747f1b939_k9
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_44:
Lbd7747f1b939_45:
    cmp x14, #22
    b.ne Lbd7747f1b939_48
Lbd7747f1b939_47:
    ldr d24, Lbd7747f1b939_k10
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_48:
Lbd7747f1b939_49:
    cmp x14, #23
    b.ne Lbd7747f1b939_52
Lbd7747f1b939_51:
    ldr d24, Lbd7747f1b939_k11
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_52:
Lbd7747f1b939_53:
    cmp x14, #24
    b.ne Lbd7747f1b939_56
Lbd7747f1b939_55:
    ldr d24, Lbd7747f1b939_k12
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lbd7747f1b939_56:
Lbd7747f1b939_57:
    ldr d24, Lbd7747f1b939_k13
    fmov d0, d24
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lbd7747f1b939_k0:
    .quad 4662769328653860864
Lbd7747f1b939_k1:
    .quad 4661339963537752064
Lbd7747f1b939_k2:
    .quad 4658485631352045568
Lbd7747f1b939_k3:
    .quad 4663868840281636864
Lbd7747f1b939_k4:
    .quad 4664968351909412864
Lbd7747f1b939_k5:
    .quad 4663758889118859264
Lbd7747f1b939_k6:
    .quad 4662219572839972864
Lbd7747f1b939_k7:
    .quad 4659805045305376768
Lbd7747f1b939_k8:
    .quad 4658683543445045248
Lbd7747f1b939_k9:
    .quad 4664170106467647488
Lbd7747f1b939_k10:
    .quad 4664972749955923968
Lbd7747f1b939_k11:
    .quad 4662222871374856192
Lbd7747f1b939_k12:
    .quad 4659255289491488768
Lbd7747f1b939_k13:
    .quad 4663873238328147968


    .p2align 2
    .globl _lb_core_6muls_u
_lb_core_6muls_u:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov w12, w2
    cmp w12, #64
    cset w13, ge
    cbz w13, La0dcd9b29c21_27
La0dcd9b29c21_26:
    movn x7, #0
    b La0dcd9b29c21_33
La0dcd9b29c21_27:
La0dcd9b29c21_28:
    sxtw x7, w12
    cmp x7, #64
    b.hs La0dcd9b29c21_30
La0dcd9b29c21_31:
    movz x9, #1
    lsl x7, x9, x12
    subs x7, x7, #1
    b.cc La0dcd9b29c21_c1
La0dcd9b29c21_33:
    and x14, x14, x7
    cbz w13, La0dcd9b29c21_37
La0dcd9b29c21_36:
    movn x7, #0
    b La0dcd9b29c21_43
La0dcd9b29c21_37:
La0dcd9b29c21_38:
    sxtw x7, w12
    cmp x7, #64
    b.hs La0dcd9b29c21_40
La0dcd9b29c21_41:
    movz x9, #1
    lsl x7, x9, x12
    subs x7, x7, #1
    b.cc La0dcd9b29c21_c2
La0dcd9b29c21_43:
    and x15, x15, x7
    cmp x15, #0
    cset w7, eq
    cmp x15, #0
    b.eq La0dcd9b29c21_2
La0dcd9b29c21_4:
    cbz w13, La0dcd9b29c21_10
La0dcd9b29c21_9:
    movn x6, #0
    b La0dcd9b29c21_16
La0dcd9b29c21_10:
La0dcd9b29c21_11:
    sxtw x6, w12
    cmp x6, #64
    b.hs La0dcd9b29c21_13
La0dcd9b29c21_14:
    movz x9, #1
    lsl x6, x9, x12
    subs x6, x6, #1
    b.cc La0dcd9b29c21_c3
La0dcd9b29c21_16:
    cbnz w7, La0dcd9b29c21_5
La0dcd9b29c21_6:
    udiv x7, x6, x15
    cmp x14, x7
    b.ls La0dcd9b29c21_2
La0dcd9b29c21_1:
    cbz w13, La0dcd9b29c21_18
La0dcd9b29c21_17:
    movn x14, #0
    b La0dcd9b29c21_24
La0dcd9b29c21_18:
La0dcd9b29c21_19:
    sxtw x14, w12
    cmp x14, #64
    b.hs La0dcd9b29c21_21
La0dcd9b29c21_22:
    movz x9, #1
    lsl x14, x9, x12
    subs x14, x14, #1
    b.cc La0dcd9b29c21_c4
La0dcd9b29c21_24:
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La0dcd9b29c21_2:
La0dcd9b29c21_3:
    mul x14, x14, x15
    cbz w13, La0dcd9b29c21_47
La0dcd9b29c21_46:
    movn x15, #0
    b La0dcd9b29c21_53
La0dcd9b29c21_47:
La0dcd9b29c21_48:
    sxtw x15, w12
    cmp x15, #64
    b.hs La0dcd9b29c21_50
La0dcd9b29c21_51:
    movz x9, #1
    lsl x15, x9, x12
    subs x15, x15, #1
    b.cc La0dcd9b29c21_c5
La0dcd9b29c21_53:
    and x14, x14, x15
    mov x0, x14
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
La0dcd9b29c21_30:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_40:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_13:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_5:
    adrp x0, _lb_text_a575da7428ed@PAGE
    add x0, x0, _lb_text_a575da7428ed@PAGEOFF
    adrp x1, _lb_text_52523bf77b6b@PAGE
    add x1, x1, _lb_text_52523bf77b6b@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_21:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_50:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_dab6cf4a5542@PAGE
    add x1, x1, _lb_text_dab6cf4a5542@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_c1:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_c2:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_c3:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_c4:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
La0dcd9b29c21_c5:
    adrp x0, _lb_text_36cd334fe8c3@PAGE
    add x0, x0, _lb_text_36cd334fe8c3@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_Huffman_close
_lb_12luce_raw_raw_Huffman_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #40]
    mov x19, x0
    ldr x14, [x19, #8]
    cmp x14, #0
    b.ls L85f3b7d1be74_2
L85f3b7d1be74_1:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    ldr x12, [x19]
    movz x10, #2
    umulh x11, x14, x10
    lsl x14, x14, #1
    cbnz x11, L85f3b7d1be74_c1
    str x12, [sp, #0]
    str x14, [sp, #8]
    ldr x14, [x15]
    ldr x15, [x15, #8]
    cbz x15, L85f3b7d1be74_4
L85f3b7d1be74_5:
    ldr x15, [x15, #16]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    sub x9, x29, #48
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L85f3b7d1be74_4:
L85f3b7d1be74_2:
L85f3b7d1be74_3:
    sub x11, x29, #32
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x10, x29, #32
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x19, #0]
    ldr x16, [x10, #16]
    str x16, [x19, #16]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L85f3b7d1be74_c1:
    adrp x0, _lb_text_38ad4cc679df@PAGE
    add x0, x0, _lb_text_38ad4cc679df@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_12luce_raw_raw_12sony_balance
_lb_12luce_raw_raw_12sony_balance:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    mov x14, x0
    fmov d27, xzr
    fcmp d24, d27
    b.le L1cdfbaf08ed3_2
L1cdfbaf08ed3_5:
    fcmp d25, d27
    b.le L1cdfbaf08ed3_2
L1cdfbaf08ed3_4:
    fcmp d26, d27
    b.le L1cdfbaf08ed3_2
L1cdfbaf08ed3_1:
    fdiv d24, d25, d24
    fmov d27, #1.0000000
    fdiv d25, d25, d26
    str d24, [x14, #1200]
    str d27, [x14, #1208]
    str d25, [x14, #1216]
    movz x9, #1
    strb w9, [x14, #1224]
L1cdfbaf08ed3_2:
L1cdfbaf08ed3_3:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_10crx_header
_lb_12luce_raw_raw_10crx_header:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #8
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    str x26, [sp, #296]
    str x27, [sp, #288]
    str x28, [sp, #280]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    ldr x14, [sp, #272]
    cmp x14, #32
    b.hs L030217e7e7da_2
L030217e7e7da_1:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_9a0893b94352@PAGE
    add x20, x20, _lb_text_9a0893b94352@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #28
    str x9, [x14, #16]
    adrp x15, _lb_text_6cdcb7434a40@PAGE
    add x15, x15, _lb_text_6cdcb7434a40@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_2:
    ldr x19, [sp, #264]
    str x19, [sp, #0]
    str x14, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    mov x9, #0
    strb w9, [sp, #24]
    mov x9, #0
    strb w9, [sp, #25]
    mov x9, #0
    strh w9, [sp, #26]
    mov x9, #0
    str w9, [sp, #28]
    sub x11, x29, #248
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    sub x10, x29, #248
    sub x11, x29, #168
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
    sub x0, x29, #368
    movz x1, #2
    bl _lb_18luce_raster_binary_Reader_uint
    mov x20, x0
    mov w14, w1
    cbz w14, L030217e7e7da_5
L030217e7e7da_6:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_4515a088c0fd@PAGE
    add x15, x15, _lb_text_4515a088c0fd@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_5:
    str w20, [sp, #200]
    sub x0, x29, #368
    movz x1, #2
    bl _lb_18luce_raster_binary_Reader_uint
    mov x14, x0
    mov w15, w1
    cbz w15, L030217e7e7da_8
L030217e7e7da_9:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_f9ced22670a5@PAGE
    add x15, x15, _lb_text_f9ced22670a5@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_8:
    sub x0, x29, #368
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x21, x0
    mov w14, w1
    cbz w14, L030217e7e7da_11
L030217e7e7da_12:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_208eb5cdfd3e@PAGE
    add x15, x15, _lb_text_208eb5cdfd3e@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_11:
    str x21, [sp, #208]
    sub x0, x29, #368
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x22, x0
    mov w14, w1
    cbz w14, L030217e7e7da_14
L030217e7e7da_15:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_d324e1140b2e@PAGE
    add x15, x15, _lb_text_d324e1140b2e@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_14:
    str x22, [sp, #216]
    sub x0, x29, #368
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x23, x0
    mov w14, w1
    cbz w14, L030217e7e7da_17
L030217e7e7da_18:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_4d71561910f3@PAGE
    add x15, x15, _lb_text_4d71561910f3@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_17:
    str x23, [sp, #224]
    sub x0, x29, #368
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x24, x0
    mov w14, w1
    cbz w14, L030217e7e7da_20
L030217e7e7da_21:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_6534655b162c@PAGE
    add x15, x15, _lb_text_6534655b162c@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_20:
    str x24, [sp, #232]
    ldrb w14, [x19, #24]
    mov w25, w14
    str w14, [sp, #240]
    ldrb w14, [x19, #25]
    lsr w14, w14, #4
    and w14, w14, #255
    mov w26, w14
    str x26, [sp, #248]
    ldrb w14, [x19, #25]
    and w14, w14, #15
    mov w27, w14
    str w14, [sp, #256]
    ldrb w14, [x19, #26]
    lsr w14, w14, #4
    and w14, w14, #255
    mov w28, w14
    str w14, [sp, #260]
    ldrb w14, [x19, #26]
    and w14, w14, #15
    mov w19, w14
    str x19, [sp, #264]
    movz x9, #28
    str x9, [sp, #16]
    sub x0, x29, #368
    movz x1, #4
    bl _lb_18luce_raster_binary_Reader_uint
    mov x14, x0
    mov w15, w1
    cbz w15, L030217e7e7da_27
L030217e7e7da_28:
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    adrp x15, _lb_text_911ebbfd68d2@PAGE
    add x15, x15, _lb_text_911ebbfd68d2@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #20]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_27:
    str x14, [sp, #272]
    cmp w20, #256
    b.eq L030217e7e7da_34
L030217e7e7da_35:
    cmp w20, #512
    b.ne L030217e7e7da_30
L030217e7e7da_34:
    cmp x14, #0
    b.eq L030217e7e7da_30
L030217e7e7da_33:
    cmp x19, #3
    b.ls L030217e7e7da_31
L030217e7e7da_30:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_a40ad2737fd1@PAGE
    add x20, x20, _lb_text_a40ad2737fd1@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #36
    str x9, [x14, #16]
    adrp x15, _lb_text_7d04161c8d65@PAGE
    add x15, x15, _lb_text_7d04161c8d65@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_31:
    cmp w28, #3
    b.ne L030217e7e7da_38
L030217e7e7da_37:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_4a356d07c50f@PAGE
    add x20, x20, _lb_text_4a356d07c50f@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #55
    str x9, [x14, #16]
    adrp x15, _lb_text_531d99b72e03@PAGE
    add x15, x15, _lb_text_531d99b72e03@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_38:
    cmp w28, #1
    b.hi L030217e7e7da_41
L030217e7e7da_51:
    cmp w28, #1
    movz x10, #15
    movz x11, #14
    csel w14, w10, w11, eq
    cmp w25, w14
    b.hi L030217e7e7da_41
L030217e7e7da_50:
    cmp x26, #4
    b.ne L030217e7e7da_41
L030217e7e7da_49:
    and x14, x21, #1
    cmp x14, #0
    b.ne L030217e7e7da_41
L030217e7e7da_48:
    and x14, x22, #1
    cmp x14, #0
    b.ne L030217e7e7da_41
L030217e7e7da_47:
    and x14, x23, #1
    cmp x14, #0
    b.ne L030217e7e7da_41
L030217e7e7da_46:
    and x14, x24, #1
    cmp x14, #0
    b.ne L030217e7e7da_41
L030217e7e7da_45:
    cmp w27, #3
    b.hi L030217e7e7da_41
L030217e7e7da_44:
    cmp w25, #9
    b.hs L030217e7e7da_42
L030217e7e7da_41:
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_f82dc5296a2c@PAGE
    add x20, x20, _lb_text_f82dc5296a2c@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #36
    str x9, [x14, #16]
    adrp x15, _lb_text_ca23473bab12@PAGE
    add x15, x15, _lb_text_ca23473bab12@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_42:
    cmp x23, x21
    b.hi L030217e7e7da_64
L030217e7e7da_69:
    cmp x24, x22
    b.hi L030217e7e7da_64
L030217e7e7da_68:
    cmp x21, #0
    b.eq L030217e7e7da_64
L030217e7e7da_67:
    cmp x22, #0
    b.ne L030217e7e7da_65
L030217e7e7da_64:
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    ldr w19, [x14]
    adrp x20, _lb_text_690b8e6f9927@PAGE
    add x20, x20, _lb_text_690b8e6f9927@PAGEOFF
    adrp x0, _lb_core_failure@TLVPPAGE
    ldr x0, [x0, _lb_core_failure@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    str w19, [x14]
    str x20, [x14, #8]
    movz x9, #36
    str x9, [x14, #16]
    adrp x15, _lb_text_96d19b05f32f@PAGE
    add x15, x15, _lb_text_96d19b05f32f@PAGEOFF
    adrp x12, _lb_core_11origin_base@PAGE
    add x12, x12, _lb_core_11origin_base@PAGEOFF
    sub x15, x15, x12
    str w15, [x14, #4]
    movz x9, #1
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L030217e7e7da_65:
    sub x10, x29, #168
    sub x11, x29, #336
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
    mov x9, #0
    strb w9, [sp, #112]
    sub x1, x29, #336
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
    ldr x16, [x1, #80]
    str x16, [x0, #80]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_test_26
_lb_test_26:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    movz x0, #6
    mov x1, #0
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #0
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbz w14, Lccb91433e0f5_2
Lccb91433e0f5_3:
    movz x0, #6
    movz x1, #1
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #0
    cset w14, eq
    and w14, w14, #1
    cmp x15, #0
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_1
Lccb91433e0f5_2:
    mov x9, #0
    str x9, [sp, #80]
    mov x9, #0
    str x9, [sp, #88]
    adrp x14, _lb_text_9e4759a16b81@PAGE
    add x14, x14, _lb_text_9e4759a16b81@PAGEOFF
    adrp x15, _lb_text_84a05d817347@PAGE
    add x15, x15, _lb_text_84a05d817347@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #16
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lccb91433e0f5_1:
    movz x0, #6
    mov x1, #0
    movz x2, #2
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbz w14, Lccb91433e0f5_6
Lccb91433e0f5_7:
    movz x0, #6
    movz x1, #1
    movz x2, #2
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #0
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_5
Lccb91433e0f5_6:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_5f6aa33f1cf4@PAGE
    add x14, x14, _lb_text_5f6aa33f1cf4@PAGEOFF
    adrp x15, _lb_text_86903abfa685@PAGE
    add x15, x15, _lb_text_86903abfa685@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #32
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lccb91433e0f5_5:
    movz x0, #8
    mov x1, #0
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #0
    cset w15, eq
    and w14, w14, w15
    cbz w14, Lccb91433e0f5_10
Lccb91433e0f5_11:
    movz x0, #8
    movz x1, #1
    movz x2, #2
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #0
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_9
Lccb91433e0f5_10:
    mov x9, #0
    str x9, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_59ded701db58@PAGE
    add x14, x14, _lb_text_59ded701db58@PAGEOFF
    adrp x15, _lb_text_71764214c179@PAGE
    add x15, x15, _lb_text_71764214c179@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #48
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lccb91433e0f5_9:
    movz x0, #3
    mov x1, #0
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbz w14, Lccb91433e0f5_14
Lccb91433e0f5_15:
    movz x0, #2
    mov x1, #0
    movz x2, #1
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_13
Lccb91433e0f5_14:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_abb47110f897@PAGE
    add x14, x14, _lb_text_abb47110f897@PAGEOFF
    adrp x15, _lb_text_86b37d4abc43@PAGE
    add x15, x15, _lb_text_86b37d4abc43@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #64
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lccb91433e0f5_13:
    movz x0, #4
    movz x1, #2
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbz w14, Lccb91433e0f5_18
Lccb91433e0f5_19:
    movz x0, #5
    movz x1, #1
    movz x2, #2
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_17
Lccb91433e0f5_18:
    mov x9, #0
    str x9, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    adrp x14, _lb_text_16788f7c4aa8@PAGE
    add x14, x14, _lb_text_16788f7c4aa8@PAGEOFF
    adrp x15, _lb_text_24184bdaae3a@PAGE
    add x15, x15, _lb_text_24184bdaae3a@PAGEOFF
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
Lccb91433e0f5_17:
    movz x0, #7
    mov x1, #0
    mov x2, #0
    movz x3, #3
    movz x4, #2
    bl _lb_scene_14upright_source
    mov x14, x0
    mov x15, x1
    cmp x14, #2
    cset w14, eq
    and w14, w14, #1
    cmp x15, #1
    cset w15, eq
    and w14, w14, w15
    cbnz w14, Lccb91433e0f5_21
Lccb91433e0f5_22:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_044ba00bed46@PAGE
    add x14, x14, _lb_text_044ba00bed46@PAGEOFF
    adrp x15, _lb_text_aeb38c87fe49@PAGE
    add x15, x15, _lb_text_aeb38c87fe49@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x9, x29, #96
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_core_11test_assert
    mov w14, w0
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
Lccb91433e0f5_21:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_scene_14upright_source
_lb_scene_14upright_source:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x14, x0
    mov x15, x1
    mov x12, x2
    mov x13, x3
    mov x7, x4
    sub x9, x14, #2
    cmp x9, #7
    b.hs L36a6c879fcc7_9
    adr x10, L36a6c879fcc7_jt0
    ldrsw x9, [x10, x9, lsl #2]
    add x10, x10, x9
    br x10
L36a6c879fcc7_jt0:
    .long L36a6c879fcc7_2 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_3 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_4 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_5 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_6 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_7 - L36a6c879fcc7_jt0
    .long L36a6c879fcc7_8 - L36a6c879fcc7_jt0
L36a6c879fcc7_2:
    subs x14, x13, #1
    b.cc L36a6c879fcc7_c1
    subs x14, x14, x15
    b.cc L36a6c879fcc7_c2
    b L36a6c879fcc7_1
L36a6c879fcc7_3:
    subs x14, x13, #1
    b.cc L36a6c879fcc7_c3
    subs x14, x14, x15
    b.cc L36a6c879fcc7_c4
    subs x15, x7, #1
    b.cc L36a6c879fcc7_c5
    subs x12, x15, x12
    b.cc L36a6c879fcc7_c6
    b L36a6c879fcc7_1
L36a6c879fcc7_4:
    subs x14, x7, #1
    b.cc L36a6c879fcc7_c7
    subs x12, x14, x12
    b.cc L36a6c879fcc7_c8
    mov x14, x15
    b L36a6c879fcc7_1
L36a6c879fcc7_5:
    mov x14, x12
    mov x12, x15
    b L36a6c879fcc7_1
L36a6c879fcc7_6:
    subs x14, x7, #1
    b.cc L36a6c879fcc7_c9
    subs x15, x14, x15
    b.cc L36a6c879fcc7_c10
    mov x14, x12
    mov x12, x15
    b L36a6c879fcc7_1
L36a6c879fcc7_7:
    subs x14, x13, #1
    b.cc L36a6c879fcc7_c11
    subs x14, x14, x12
    b.cc L36a6c879fcc7_c12
    subs x12, x7, #1
    b.cc L36a6c879fcc7_c13
    subs x12, x12, x15
    b.cc L36a6c879fcc7_c14
    b L36a6c879fcc7_1
L36a6c879fcc7_8:
    subs x14, x13, #1
    b.cc L36a6c879fcc7_c15
    subs x14, x14, x12
    b.cc L36a6c879fcc7_c16
    mov x12, x15
    b L36a6c879fcc7_1
L36a6c879fcc7_9:
    mov x14, x15
L36a6c879fcc7_1:
    mov x0, x14
    mov x1, x12
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36a6c879fcc7_c1:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c2:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c3:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c4:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c5:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c6:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c7:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c8:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c9:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c10:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c11:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c12:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c13:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c14:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c15:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at
L36a6c879fcc7_c16:
    adrp x0, _lb_text_ffcd5b3f8207@PAGE
    add x0, x0, _lb_text_ffcd5b3f8207@PAGEOFF
    adrp x1, _lb_text_ae04cb4bef55@PAGE
    add x1, x1, _lb_text_ae04cb4bef55@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_test_27
_lb_test_27:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4208
    sub sp, sp, x16
    sub x0, x29, #2040
    mov x1, #0
    movz x2, #2040
    bl _memset
    fmov d24, #1.0000000
    str d24, [sp, #2216]
    str d24, [sp, #2224]
    str d24, [sp, #2232]
    ldr d24, L87fcff060574_k0
    str d24, [sp, #2240]
    sub x10, x29, #2040
    sub x0, x29, #4080
    mov x1, x10
    movz x2, #2040
    bl _memcpy
    adrp x14, _lb_text_4632251d3142@PAGE
    add x14, x14, _lb_text_4632251d3142@PAGEOFF
    str x14, [sp, #112]
    movz x9, #23
    str x9, [sp, #120]
    sub x0, x29, #4080
    movz x16, #4096
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_scene_12grey_through
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    mov w14, w0
    cbz w14, L87fcff060574_1
L87fcff060574_2:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87fcff060574_1:
    str d24, [sp, #4184]
    str d25, [sp, #4192]
    str d26, [sp, #4200]
    ldr d25, L87fcff060574_k1
    fsub d24, d24, d25
    fabs d24, d24
    ldr d27, L87fcff060574_k2
    fcmp d24, d27
    b.pl L87fcff060574_5
L87fcff060574_6:
    fsub d24, d26, d25
    fabs d24, d24
    fcmp d24, d27
    b.mi L87fcff060574_4
L87fcff060574_5:
    mov x9, #0
    str x9, [sp, #96]
    mov x9, #0
    str x9, [sp, #104]
    adrp x14, _lb_text_6be51fa9e56e@PAGE
    add x14, x14, _lb_text_6be51fa9e56e@PAGEOFF
    adrp x15, _lb_text_90a3bc10ce63@PAGE
    add x15, x15, _lb_text_90a3bc10ce63@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #4112
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
L87fcff060574_4:
    adrp x14, _lb_text_311056ddbde2@PAGE
    add x14, x14, _lb_text_311056ddbde2@PAGEOFF
    str x14, [sp, #80]
    movz x9, #16
    str x9, [sp, #88]
    sub x0, x29, #4080
    movz x16, #4128
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_scene_12grey_through
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    mov w14, w0
    cbz w14, L87fcff060574_8
L87fcff060574_9:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87fcff060574_8:
    str d24, [sp, #4184]
    str d25, [sp, #4192]
    str d26, [sp, #4200]
    fcmp d24, d25
    b.le L87fcff060574_12
L87fcff060574_13:
    fcmp d25, d26
    b.gt L87fcff060574_11
L87fcff060574_12:
    mov x9, #0
    str x9, [sp, #64]
    mov x9, #0
    str x9, [sp, #72]
    adrp x14, _lb_text_76ecefd6a2d0@PAGE
    add x14, x14, _lb_text_76ecefd6a2d0@PAGEOFF
    adrp x15, _lb_text_a475cdd2762c@PAGE
    add x15, x15, _lb_text_a475cdd2762c@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #4144
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
L87fcff060574_11:
    adrp x14, _lb_text_6e96a6380a72@PAGE
    add x14, x14, _lb_text_6e96a6380a72@PAGEOFF
    str x14, [sp, #48]
    movz x9, #16
    str x9, [sp, #56]
    sub x0, x29, #4080
    movz x16, #4160
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_scene_12grey_through
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    mov w14, w0
    cbz w14, L87fcff060574_15
L87fcff060574_16:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87fcff060574_15:
    str d24, [sp, #4184]
    str d25, [sp, #4192]
    str d26, [sp, #4200]
    fcmp d26, d25
    b.le L87fcff060574_19
L87fcff060574_20:
    fcmp d25, d24
    b.gt L87fcff060574_18
L87fcff060574_19:
    mov x9, #0
    str x9, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    adrp x14, _lb_text_6ed20983a721@PAGE
    add x14, x14, _lb_text_6ed20983a721@PAGEOFF
    adrp x15, _lb_text_05507ffa74be@PAGE
    add x15, x15, _lb_text_05507ffa74be@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #4176
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
L87fcff060574_18:
    adrp x14, _lb_text_665fe1904127@PAGE
    add x14, x14, _lb_text_665fe1904127@PAGEOFF
    str x14, [sp, #16]
    movz x9, #24
    str x9, [sp, #24]
    sub x0, x29, #4080
    movz x16, #4192
    sub x9, x29, x16
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_scene_12grey_through
    fmov d24, d0
    fmov d25, d1
    fmov d26, d2
    mov w14, w0
    cbz w14, L87fcff060574_22
L87fcff060574_23:
    movz x0, #1
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L87fcff060574_22:
    str d24, [sp, #4184]
    str d25, [sp, #4192]
    str d26, [sp, #4200]
    fcmp d25, d24
    b.pl L87fcff060574_26
L87fcff060574_27:
    fcmp d25, d26
    b.mi L87fcff060574_25
L87fcff060574_26:
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x14, _lb_text_6055ad55437d@PAGE
    add x14, x14, _lb_text_6055ad55437d@PAGEOFF
    adrp x15, _lb_text_8888fc7d4b31@PAGE
    add x15, x15, _lb_text_8888fc7d4b31@PAGEOFF
    mov x0, x14
    mov x1, x15
    movz x16, #4208
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
L87fcff060574_25:
    mov x0, #0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L87fcff060574_k0:
    .quad 4663868840281636864
L87fcff060574_k1:
    .quad 4595653203753948938
L87fcff060574_k2:
    .quad 4472406533629990549

.subsections_via_symbols
