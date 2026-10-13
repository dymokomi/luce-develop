    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_core_19crash_header_length_0init
_lb_core_19crash_header_length_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_19crash_header_length@PAGE
    add x14, x14, _lb_core_19crash_header_length@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_10crash_file_0init
_lb_core_10crash_file_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_10crash_file@PAGE
    add x14, x14, _lb_core_10crash_file@PAGEOFF
    movn x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_13crash_walking_0init
_lb_core_13crash_walking_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_13crash_walking@PAGE
    add x14, x14, _lb_core_13crash_walking@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_14crash_reported_0init
_lb_core_14crash_reported_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_14crash_reported@PAGE
    add x14, x14, _lb_core_14crash_reported@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_13crash_handler_0init
_lb_core_13crash_handler_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_13crash_handler@PAGE
    add x14, x14, _lb_core_13crash_handler@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_10raised_top_0init
_lb_core_10raised_top_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_core_10raised_top@TLVPPAGE
    ldr x0, [x0, _lb_core_10raised_top@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_11origin_base_0init
_lb_core_11origin_base_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_11origin_base@PAGE
    add x14, x14, _lb_core_11origin_base@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_13assert_failed_0init
_lb_core_13assert_failed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_13assert_failed@PAGE
    add x14, x14, _lb_core_13assert_failed@PAGEOFF
    movz x9, #60
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_15assert_position_0init
_lb_core_15assert_position_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    adrp x15, _lb_core_15assert_position@PAGE
    add x15, x15, _lb_core_15assert_position@PAGEOFF
    str x14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_12test_running_0init
_lb_core_12test_running_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    adrp x15, _lb_core_12test_running@PAGE
    add x15, x15, _lb_core_12test_running@PAGEOFF
    str x14, [x15]
    mov x9, #0
    str x9, [x15, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_12tests_passed_0init
_lb_core_12tests_passed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_12tests_passed@PAGE
    add x14, x14, _lb_core_12tests_passed@PAGEOFF
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_core_12tests_failed_0init
_lb_core_12tests_failed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_core_12tests_failed@PAGE
    add x14, x14, _lb_core_12tests_failed@PAGEOFF
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_exhausted_0init
_lb_memory_exhausted_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_memory_exhausted@PAGE
    add x14, x14, _lb_memory_exhausted@PAGEOFF
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_closed_0init
_lb_io_closed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    movz x9, #3
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_8err_file_0init
_lb_io_8err_file_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_io_8err_file@PAGE
    add x14, x14, _lb_io_8err_file@PAGEOFF
    movz x9, #2
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_io_full_0init
_lb_io_full_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_io_full@PAGE
    add x14, x14, _lb_io_full@PAGEOFF
    movz x9, #4
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_thread_failed_0init
_lb_thread_failed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_thread_failed@PAGE
    add x14, x14, _lb_thread_failed@PAGEOFF
    movz x9, #5
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_thread_13default_stack_0init
_lb_thread_13default_stack_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_thread_13default_stack@PAGE
    add x14, x14, _lb_thread_13default_stack@PAGEOFF
    movz x9, #128, lsl #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_live_0init
_lb_ownership_live_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_12next_context_0init
_lb_ownership_12next_context_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_ownership_12next_context@PAGE
    add x14, x14, _lb_ownership_12next_context@PAGEOFF
    movz x9, #1
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15next_generation_0init
_lb_ownership_15next_generation_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_ownership_15next_generation@PAGE
    add x14, x14, _lb_ownership_15next_generation@PAGEOFF
    movz x9, #1
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_14thread_context_0init
_lb_ownership_14thread_context_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13runtime_depth_0init
_lb_ownership_13runtime_depth_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_13pending_count_0init
_lb_ownership_13pending_count_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10root_count_0init
_lb_ownership_10root_count_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_11white_count_0init
_lb_ownership_11white_count_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_14disposal_count_0init
_lb_ownership_14disposal_count_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_14disposal_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14disposal_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_17collector_running_0init
_lb_ownership_17collector_running_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_17collector_running@TLVPPAGE
    ldr x0, [x0, _lb_ownership_17collector_running@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_8purge_at_0init
_lb_ownership_8purge_at_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_ownership_8purge_at@TLVPPAGE
    ldr x0, [x0, _lb_ownership_8purge_at@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_13invalid_radix_0init
_lb_strings_13invalid_radix_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_strings_13invalid_radix@PAGE
    add x14, x14, _lb_strings_13invalid_radix@PAGEOFF
    movz x9, #50
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_12current_seed_0init
_lb_testing_12current_seed_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    movz x9, #1
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_9text_info_0init
_lb_interop_9text_info_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_text_b5485cf9115c@PAGE
    add x14, x14, _lb_text_b5485cf9115c@PAGEOFF
    adrp x15, _lb_interop_9drop_text@GOTPAGE
    ldr x15, [x15, _lb_interop_9drop_text@GOTPAGEOFF]
    adrp x12, _lb_interop_10trace_text@GOTPAGE
    ldr x12, [x12, _lb_interop_10trace_text@GOTPAGEOFF]
    adrp x13, _lb_interop_9text_info@PAGE
    add x13, x13, _lb_interop_9text_info@PAGEOFF
    str x14, [x13]
    movz x9, #17
    str x9, [x13, #8]
    mov x9, #0
    str x9, [x13, #16]
    mov x9, #0
    str x9, [x13, #24]
    str x15, [x13, #32]
    str x12, [x13, #40]
    mov x9, #0
    str x9, [x13, #48]
    mov x9, #0
    strb w9, [x13, #56]
    mov x9, #0
    strb w9, [x13, #57]
    mov x9, #0
    strh w9, [x13, #58]
    mov x9, #0
    str w9, [x13, #60]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_13luce_std_math_pi_0init
_lb_13luce_std_math_pi_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L22aa6841f904_k0
    adrp x14, _lb_13luce_std_math_pi@PAGE
    add x14, x14, _lb_13luce_std_math_pi@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L22aa6841f904_k0:
    .quad 4614256656552045848


    .p2align 2
    .globl _lb_13luce_std_math_e_0init
_lb_13luce_std_math_e_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L3c5e6a45fbd1_k0
    adrp x14, _lb_13luce_std_math_e@PAGE
    add x14, x14, _lb_13luce_std_math_e@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3c5e6a45fbd1_k0:
    .quad 4613303445314885481


    .p2align 2
    .globl _lb_13luce_std_math_infinity_0init
_lb_13luce_std_math_infinity_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L8a5ae53a0d0c_k0
    adrp x14, _lb_13luce_std_math_infinity@PAGE
    add x14, x14, _lb_13luce_std_math_infinity@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8a5ae53a0d0c_k0:
    .quad 9218868437227405312


    .p2align 2
    .globl _lb_13luce_std_math_splitter_0init
_lb_13luce_std_math_splitter_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L9fb2b81dca8e_k0
    adrp x14, _lb_13luce_std_math_splitter@PAGE
    add x14, x14, _lb_13luce_std_math_splitter@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L9fb2b81dca8e_k0:
    .quad 4728779608772575232


    .p2align 2
    .globl _lb_13luce_std_math_11round_shift_0init
_lb_13luce_std_math_11round_shift_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Le6ab795f7ecd_k0
    adrp x14, _lb_13luce_std_math_11round_shift@PAGE
    add x14, x14, _lb_13luce_std_math_11round_shift@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le6ab795f7ecd_k0:
    .quad 4843621399236968448


    .p2align 2
    .globl _lb_13luce_std_math_10sixth_high_0init
_lb_13luce_std_math_10sixth_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L2d8ed8259024_k0
    adrp x14, _lb_13luce_std_math_10sixth_high@PAGE
    add x14, x14, _lb_13luce_std_math_10sixth_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L2d8ed8259024_k0:
    .quad 4595172819793696085


    .p2align 2
    .globl _lb_13luce_std_math_9sixth_low_0init
_lb_13luce_std_math_9sixth_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L4b995ed09b0a_k0
    adrp x14, _lb_13luce_std_math_9sixth_low@PAGE
    add x14, x14, _lb_13luce_std_math_9sixth_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4b995ed09b0a_k0:
    .quad 4351978439915689301


    .p2align 2
    .globl _lb_14luce_color_xyz_d65_0init
_lb_14luce_color_xyz_d65_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L4492f1a825e3_k0
    ldr d25, L4492f1a825e3_k1
    adrp x14, _lb_14luce_color_xyz_d65@PAGE
    add x14, x14, _lb_14luce_color_xyz_d65@PAGEOFF
    str d24, [x14]
    str d25, [x14, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4492f1a825e3_k0:
    .quad 4599304722331820936
L4492f1a825e3_k1:
    .quad 4599598357027525493


    .p2align 2
    .globl _lb_14luce_color_xyz_d50_0init
_lb_14luce_color_xyz_d50_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L39b6d2deba1b_k0
    ldr d25, L39b6d2deba1b_k1
    adrp x14, _lb_14luce_color_xyz_d50@PAGE
    add x14, x14, _lb_14luce_color_xyz_d50@PAGEOFF
    str d24, [x14]
    str d25, [x14, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L39b6d2deba1b_k0:
    .quad 4599899197482633842
L39b6d2deba1b_k1:
    .quad 4600129781783555211


    .p2align 2
    .globl _lb_14luce_color_xyz_10aces_white_0init
_lb_14luce_color_xyz_10aces_white_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lf98b3d8c29b7_k0
    ldr d25, Lf98b3d8c29b7_k1
    adrp x14, _lb_14luce_color_xyz_10aces_white@PAGE
    add x14, x14, _lb_14luce_color_xyz_10aces_white@PAGEOFF
    str d24, [x14]
    str d25, [x14, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lf98b3d8c29b7_k0:
    .quad 4599466491630436085
Lf98b3d8c29b7_k1:
    .quad 4599754541862602702


    .p2align 2
    .globl _lb_14luce_color_xyz_srgb_0init
_lb_14luce_color_xyz_srgb_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L3ab59b04152a_k0
    ldr d25, L3ab59b04152a_k1
    ldr d26, L3ab59b04152a_k2
    ldr d27, L3ab59b04152a_k3
    ldr d28, L3ab59b04152a_k4
    ldr d29, L3ab59b04152a_k5
    adrp x14, _lb_14luce_color_xyz_d65@PAGE
    add x14, x14, _lb_14luce_color_xyz_d65@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    adrp x12, _lb_14luce_color_xyz_srgb@PAGE
    add x12, x12, _lb_14luce_color_xyz_srgb@PAGEOFF
    str d24, [x12]
    str d25, [x12, #8]
    str d26, [x12, #16]
    str d27, [x12, #24]
    str d28, [x12, #32]
    str d29, [x12, #40]
    str x15, [x12, #48]
    str x14, [x12, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3ab59b04152a_k0:
    .quad 4603939827068310651
L3ab59b04152a_k1:
    .quad 4599616371426034975
L3ab59b04152a_k2:
    .quad 4599075939470750515
L3ab59b04152a_k3:
    .quad 4603579539098121011
L3ab59b04152a_k4:
    .quad 4594572339843380019
L3ab59b04152a_k5:
    .quad 4588807732320345784


    .p2align 2
    .globl _lb_14luce_color_xyz_10display_p3_0init
_lb_14luce_color_xyz_10display_p3_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L8b3b69cf9cf8_k0
    ldr d25, L8b3b69cf9cf8_k1
    ldr d26, L8b3b69cf9cf8_k2
    ldr d27, L8b3b69cf9cf8_k3
    ldr d28, L8b3b69cf9cf8_k4
    ldr d29, L8b3b69cf9cf8_k5
    adrp x14, _lb_14luce_color_xyz_d65@PAGE
    add x14, x14, _lb_14luce_color_xyz_d65@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    adrp x12, _lb_14luce_color_xyz_10display_p3@PAGE
    add x12, x12, _lb_14luce_color_xyz_10display_p3@PAGEOFF
    str d24, [x12]
    str d25, [x12, #8]
    str d26, [x12, #16]
    str d27, [x12, #24]
    str d28, [x12, #32]
    str d29, [x12, #40]
    str x15, [x12, #48]
    str x14, [x12, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8b3b69cf9cf8_k0:
    .quad 4604300115038500291
L8b3b69cf9cf8_k1:
    .quad 4599436227440940155
L8b3b69cf9cf8_k2:
    .quad 4598445435522918646
L8b3b69cf9cf8_k3:
    .quad 4604390187031047700
L8b3b69cf9cf8_k4:
    .quad 4594572339843380019
L8b3b69cf9cf8_k5:
    .quad 4588807732320345784


    .p2align 2
    .globl _lb_14luce_color_xyz_8aces_ap0_0init
_lb_14luce_color_xyz_8aces_ap0_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, xzr
    ldr d25, Lf50824778dc3_k0
    ldr d26, Lf50824778dc3_k1
    fmov d27, #1.0000000
    ldr d28, Lf50824778dc3_k2
    ldr d29, Lf50824778dc3_k3
    adrp x14, _lb_14luce_color_xyz_10aces_white@PAGE
    add x14, x14, _lb_14luce_color_xyz_10aces_white@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    adrp x12, _lb_14luce_color_xyz_8aces_ap0@PAGE
    add x12, x12, _lb_14luce_color_xyz_8aces_ap0@PAGEOFF
    str d25, [x12]
    str d26, [x12, #8]
    str d24, [x12, #16]
    str d27, [x12, #24]
    str d28, [x12, #32]
    str d29, [x12, #40]
    str x15, [x12, #48]
    str x14, [x12, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lf50824778dc3_k0:
    .quad 4604792808837734623
Lf50824778dc3_k1:
    .quad 4598450839842471490
Lf50824778dc3_k2:
    .quad 4547007122018943789
Lf50824778dc3_k3:
    .quad 13813584892258861187


    .p2align 2
    .globl _lb_14luce_color_xyz_8aces_ap1_0init
_lb_14luce_color_xyz_8aces_ap1_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L66a83c3f74b6_k0
    ldr d25, L66a83c3f74b6_k1
    ldr d26, L66a83c3f74b6_k2
    ldr d27, L66a83c3f74b6_k3
    ldr d28, L66a83c3f74b6_k4
    ldr d29, L66a83c3f74b6_k5
    adrp x14, _lb_14luce_color_xyz_10aces_white@PAGE
    add x14, x14, _lb_14luce_color_xyz_10aces_white@PAGEOFF
    ldr x15, [x14]
    ldr x14, [x14, #8]
    adrp x12, _lb_14luce_color_xyz_8aces_ap1@PAGE
    add x12, x12, _lb_14luce_color_xyz_8aces_ap1@PAGEOFF
    str d24, [x12]
    str d25, [x12, #8]
    str d26, [x12, #16]
    str d27, [x12, #24]
    str d28, [x12, #32]
    str d29, [x12, #40]
    str x15, [x12, #48]
    str x14, [x12, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L66a83c3f74b6_k0:
    .quad 4604597352613906743
L66a83c3f74b6_k1:
    .quad 4598949838681184141
L66a83c3f74b6_k2:
    .quad 4595112771798664479
L66a83c3f74b6_k3:
    .quad 4605651194926711439
L66a83c3f74b6_k4:
    .quad 4593779706308962812
L66a83c3f74b6_k5:
    .quad 4586501889311132090


    .p2align 2
    .globl _lb_14luce_color_xyz_bradford_0init
_lb_14luce_color_xyz_bradford_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x11, x29, #72
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr d24, Lb17c525c2cf5_k0
    str d24, [sp, #0]
    ldr d24, Lb17c525c2cf5_k1
    str d24, [sp, #8]
    ldr d24, Lb17c525c2cf5_k2
    str d24, [sp, #16]
    ldr d24, Lb17c525c2cf5_k3
    str d24, [sp, #24]
    ldr d24, Lb17c525c2cf5_k4
    str d24, [sp, #32]
    ldr d24, Lb17c525c2cf5_k5
    str d24, [sp, #40]
    ldr d24, Lb17c525c2cf5_k6
    str d24, [sp, #48]
    ldr d24, Lb17c525c2cf5_k7
    str d24, [sp, #56]
    ldr d24, Lb17c525c2cf5_k8
    str d24, [sp, #64]
    sub x10, x29, #144
    sub x11, x29, #72
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
    adrp x14, _lb_14luce_color_xyz_bradford@PAGE
    add x14, x14, _lb_14luce_color_xyz_bradford@PAGEOFF
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x14, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x14, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x14, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x14, #48]
    ldr x16, [x10, #64]
    str x16, [x14, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb17c525c2cf5_k0:
    .quad 4606237563598195078
Lb17c525c2cf5_k1:
    .quad 4598470655680831921
Lb17c525c2cf5_k2:
    .quad 13818355104984172016
Lb17c525c2cf5_k3:
    .quad 13828304457280958916
Lb17c525c2cf5_k4:
    .quad 4610395737134146257
Lb17c525c2cf5_k5:
    .quad 4585449848438178343
Lb17c525c2cf5_k6:
    .quad 4585766901851945225
Lb17c525c2cf5_k7:
    .quad 13812972402709538800
Lb17c525c2cf5_k8:
    .quad 4607315725348987575


    .p2align 2
    .globl _lb_22luce_color_temperature_10tint_scale_0init
_lb_22luce_color_temperature_10tint_scale_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lc929dd95d466_k0
    adrp x14, _lb_22luce_color_temperature_10tint_scale@PAGE
    add x14, x14, _lb_22luce_color_temperature_10tint_scale@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lc929dd95d466_k0:
    .quad 13882187521695154176


    .p2align 2
    .globl _lb_19luce_color_spectral_8first_nm_0init
_lb_19luce_color_spectral_8first_nm_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L55881e6d230f_k0
    adrp x14, _lb_19luce_color_spectral_8first_nm@PAGE
    add x14, x14, _lb_19luce_color_spectral_8first_nm@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L55881e6d230f_k0:
    .quad 4645392646888488960


    .p2align 2
    .globl _lb_19luce_color_spectral_7step_nm_0init
_lb_19luce_color_spectral_7step_nm_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #5.0000000
    adrp x14, _lb_19luce_color_spectral_7step_nm@PAGE
    add x14, x14, _lb_19luce_color_spectral_7step_nm@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_invalid_0init
_lb_15luce_color_aces_invalid_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_15luce_color_aces_invalid@PAGE
    add x14, x14, _lb_15luce_color_aces_invalid@PAGEOFF
    movz x9, #1
    movk x9, #633, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_19reference_luminance_0init
_lb_15luce_color_aces_19reference_luminance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L3b084856db9d_k0
    adrp x14, _lb_15luce_color_aces_19reference_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_19reference_luminance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3b084856db9d_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_15luce_color_aces_18adapting_luminance_0init
_lb_15luce_color_aces_18adapting_luminance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L020767b74654_k0
    adrp x14, _lb_15luce_color_aces_18adapting_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_18adapting_luminance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L020767b74654_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_15luce_color_aces_20background_luminance_0init
_lb_15luce_color_aces_20background_luminance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #20.0000000
    adrp x14, _lb_15luce_color_aces_20background_luminance@PAGE
    add x14, x14, _lb_15luce_color_aces_20background_luminance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_10surround_c_0init
_lb_15luce_color_aces_10surround_c_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lff09abefa0ed_k0
    adrp x14, _lb_15luce_color_aces_10surround_c@PAGE
    add x14, x14, _lb_15luce_color_aces_10surround_c@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lff09abefa0ed_k0:
    .quad 4603489467105573601


    .p2align 2
    .globl _lb_15luce_color_aces_10surround_n_0init
_lb_15luce_color_aces_10surround_n_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Le3e931af563b_k0
    adrp x14, _lb_15luce_color_aces_10surround_n@PAGE
    add x14, x14, _lb_15luce_color_aces_10surround_n@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le3e931af563b_k0:
    .quad 4606281698874543309


    .p2align 2
    .globl _lb_15luce_color_aces_7j_scale_0init
_lb_15luce_color_aces_7j_scale_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lc840018f6853_k0
    adrp x14, _lb_15luce_color_aces_7j_scale@PAGE
    add x14, x14, _lb_15luce_color_aces_7j_scale@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lc840018f6853_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_15luce_color_aces_18compression_offset_0init
_lb_15luce_color_aces_18compression_offset_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Le1da469771b2_k0
    adrp x14, _lb_15luce_color_aces_18compression_offset@PAGE
    add x14, x14, _lb_15luce_color_aces_18compression_offset@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Le1da469771b2_k0:
    .quad 4628329633800288993


    .p2align 2
    .globl _lb_15luce_color_aces_17compression_scale_0init
_lb_15luce_color_aces_17compression_scale_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L716fe798be93_k0
    adrp x14, _lb_15luce_color_aces_17compression_scale@PAGE
    add x14, x14, _lb_15luce_color_aces_17compression_scale@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L716fe798be93_k0:
    .quad 4645744490609377280


    .p2align 2
    .globl _lb_15luce_color_aces_15cam16_primaries_0init
_lb_15luce_color_aces_15cam16_primaries_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Ld531c1ad4edb_k0
    ldr d25, Ld531c1ad4edb_k1
    ldr d26, Ld531c1ad4edb_k2
    ldr d27, Ld531c1ad4edb_k3
    ldr d28, Ld531c1ad4edb_k4
    fmov d29, #-0.1250000
    ldr d30, Ld531c1ad4edb_k5
    adrp x14, _lb_15luce_color_aces_15cam16_primaries@PAGE
    add x14, x14, _lb_15luce_color_aces_15cam16_primaries@PAGEOFF
    str d24, [x14]
    str d25, [x14, #8]
    str d26, [x14, #16]
    str d27, [x14, #24]
    str d28, [x14, #32]
    str d29, [x14, #40]
    str d30, [x14, #48]
    str d30, [x14, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Ld531c1ad4edb_k0:
    .quad 4605683620844028507
Ld531c1ad4edb_k1:
    .quad 4595419016573325672
Ld531c1ad4edb_k2:
    .quad 4612553862075582199
Ld531c1ad4edb_k3:
    .quad 13832652682721185130
Ld531c1ad4edb_k4:
    .quad 4590933431344464658
Ld531c1ad4edb_k5:
    .quad 4599670414621563421


    .p2align 2
    .globl _lb_15luce_color_aces_12smooth_cusps_0init
_lb_15luce_color_aces_12smooth_cusps_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L211c5744c77e_k0
    adrp x14, _lb_15luce_color_aces_12smooth_cusps@PAGE
    add x14, x14, _lb_15luce_color_aces_12smooth_cusps@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L211c5744c77e_k0:
    .quad 4593311331947716280


    .p2align 2
    .globl _lb_15luce_color_aces_8smooth_m_0init
_lb_15luce_color_aces_8smooth_m_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L9280f7ae8c74_k0
    adrp x14, _lb_15luce_color_aces_8smooth_m@PAGE
    add x14, x14, _lb_15luce_color_aces_8smooth_m@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L9280f7ae8c74_k0:
    .quad 4598535507515466056


    .p2align 2
    .globl _lb_15luce_color_aces_14cusp_mid_blend_0init
_lb_15luce_color_aces_14cusp_mid_blend_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lcb81a994ce0a_k0
    adrp x14, _lb_15luce_color_aces_14cusp_mid_blend@PAGE
    add x14, x14, _lb_15luce_color_aces_14cusp_mid_blend@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lcb81a994ce0a_k0:
    .quad 4608533498688228557


    .p2align 2
    .globl _lb_15luce_color_aces_16focus_gain_blend_0init
_lb_15luce_color_aces_16focus_gain_blend_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lea03308edb49_k0
    adrp x14, _lb_15luce_color_aces_16focus_gain_blend@PAGE
    add x14, x14, _lb_15luce_color_aces_16focus_gain_blend@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lea03308edb49_k0:
    .quad 4599075939470750515


    .p2align 2
    .globl _lb_15luce_color_aces_14focus_distance_0init
_lb_15luce_color_aces_14focus_distance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lf682446784d3_k0
    adrp x14, _lb_15luce_color_aces_14focus_distance@PAGE
    add x14, x14, _lb_15luce_color_aces_14focus_distance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lf682446784d3_k0:
    .quad 4608758678669597082


    .p2align 2
    .globl _lb_15luce_color_aces_22focus_distance_scaling_0init
_lb_15luce_color_aces_22focus_distance_scaling_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #1.7500000
    adrp x14, _lb_15luce_color_aces_22focus_distance_scaling@PAGE
    add x14, x14, _lb_15luce_color_aces_22focus_distance_scaling@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_15luce_color_aces_21compression_threshold_0init
_lb_15luce_color_aces_21compression_threshold_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #0.7500000
    adrp x14, _lb_15luce_color_aces_21compression_threshold@PAGE
    add x14, x14, _lb_15luce_color_aces_21compression_threshold@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_16luce_color_cam16_m16_0init
_lb_16luce_color_cam16_m16_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x11, x29, #72
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    ldr d24, L8cdd4d39749d_k0
    str d24, [sp, #0]
    ldr d24, L8cdd4d39749d_k1
    str d24, [sp, #8]
    ldr d24, L8cdd4d39749d_k2
    str d24, [sp, #16]
    ldr d24, L8cdd4d39749d_k3
    str d24, [sp, #24]
    ldr d24, L8cdd4d39749d_k4
    str d24, [sp, #32]
    ldr d24, L8cdd4d39749d_k5
    str d24, [sp, #40]
    ldr d24, L8cdd4d39749d_k6
    str d24, [sp, #48]
    ldr d24, L8cdd4d39749d_k7
    str d24, [sp, #56]
    ldr d24, L8cdd4d39749d_k8
    str d24, [sp, #64]
    sub x10, x29, #144
    sub x11, x29, #72
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
    adrp x14, _lb_16luce_color_cam16_m16@PAGE
    add x14, x14, _lb_16luce_color_cam16_m16@PAGEOFF
    sub x10, x29, #72
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x14, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x14, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x14, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x14, #48]
    ldr x16, [x10, #64]
    str x16, [x14, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8cdd4d39749d_k0:
    .quad 4600900581866978926
L8cdd4d39749d_k1:
    .quad 4604031457306329131
L8cdd4d39749d_k2:
    .quad 13810949169584141859
L8cdd4d39749d_k3:
    .quad 13821552084258852765
L8cdd4d39749d_k4:
    .quad 4608103017614246721
L8cdd4d39749d_k5:
    .quad 4586769078869824727
L8cdd4d39749d_k6:
    .quad 13790312306997243526
L8cdd4d39749d_k7:
    .quad 4587215547722483729
L8cdd4d39749d_k8:
    .quad 4606760224349349933


    .p2align 2
    .globl _lb_17luce_std_parallel_started_0init
_lb_17luce_std_parallel_started_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_17luce_std_parallel_started@PAGE
    add x14, x14, _lb_17luce_std_parallel_started@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_12pool_threads_0init
_lb_17luce_std_parallel_12pool_threads_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_17luce_std_parallel_12pool_threads@PAGE
    add x14, x14, _lb_17luce_std_parallel_12pool_threads@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_sleeping_0init
_lb_17luce_std_parallel_sleeping_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_17luce_std_parallel_sleeping@PAGE
    add x14, x14, _lb_17luce_std_parallel_sleeping@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_spinning_0init
_lb_17luce_std_parallel_spinning_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_17luce_std_parallel_spinning@PAGE
    add x14, x14, _lb_17luce_std_parallel_spinning@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_relay_0init
_lb_17luce_std_parallel_relay_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_17luce_std_parallel_relay@PAGE
    add x14, x14, _lb_17luce_std_parallel_relay@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_17luce_std_parallel_7on_pool_0init
_lb_17luce_std_parallel_7on_pool_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, _lb_17luce_std_parallel_7on_pool@TLVPPAGE
    ldr x0, [x0, _lb_17luce_std_parallel_7on_pool@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_parameters_parameters_0init
_lb_parameters_parameters_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9552
    sub sp, sp, x16
    str d8, [sp, #9544]
    str d9, [sp, #9536]
    str d10, [sp, #9528]
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_0689d94e30b5@PAGE
    add x14, x14, _lb_text_0689d94e30b5@PAGEOFF
    str x14, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x14, _lb_text_931c5353de68@PAGE
    add x14, x14, _lb_text_931c5353de68@PAGEOFF
    str x14, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    adrp x15, _lb_text_27d9c1372b98@PAGE
    add x15, x15, _lb_text_27d9c1372b98@PAGEOFF
    str x15, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    fmov d24, xzr
    str d24, [sp, #56]
    ldr d25, L3e22e58504c5_k0
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9464
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_883382825f26@PAGE
    add x12, x12, _lb_text_883382825f26@PAGEOFF
    str x12, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    adrp x12, _lb_text_62aa5b5bce08@PAGE
    add x12, x12, _lb_text_62aa5b5bce08@PAGEOFF
    str x12, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x15, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    ldr d25, L3e22e58504c5_k1
    ldr d26, L3e22e58504c5_k2
    str d26, [sp, #56]
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9384
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x15, _lb_text_f9ede9d21354@PAGE
    add x15, x15, _lb_text_f9ede9d21354@PAGEOFF
    str x15, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x15, _lb_text_fc379d739191@PAGE
    add x15, x15, _lb_text_fc379d739191@PAGEOFF
    str x15, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x15, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    fmov d26, #6.0000000
    fmov d27, #-6.0000000
    str d27, [sp, #56]
    str d26, [sp, #64]
    str d24, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9304
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x13, _lb_text_f6b67cfcaad5@PAGE
    add x13, x13, _lb_text_f6b67cfcaad5@PAGEOFF
    str x13, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x13, _lb_text_a8847d8b2d10@PAGE
    add x13, x13, _lb_text_a8847d8b2d10@PAGEOFF
    str x13, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x15, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d24, [sp, #56]
    ldr d27, L3e22e58504c5_k3
    str d27, [sp, #64]
    str d24, [sp, #72]
    movz x9, #3
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9224
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x13, _lb_text_3c7b67033879@PAGE
    add x13, x13, _lb_text_3c7b67033879@PAGEOFF
    str x13, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x13, _lb_text_5a4c2855f72e@PAGE
    add x13, x13, _lb_text_5a4c2855f72e@PAGEOFF
    str x13, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    adrp x7, _lb_text_311e1a810a43@PAGE
    add x7, x7, _lb_text_311e1a810a43@PAGEOFF
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    ldr d27, L3e22e58504c5_k4
    ldr d28, L3e22e58504c5_k5
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9144
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x6, _lb_text_c1b0601ef5a4@PAGE
    add x6, x6, _lb_text_c1b0601ef5a4@PAGEOFF
    str x6, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x6, _lb_text_5fed8247e351@PAGE
    add x6, x6, _lb_text_5fed8247e351@PAGEOFF
    str x6, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #9064
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x5, _lb_text_9058d4cef0e3@PAGE
    add x5, x5, _lb_text_9058d4cef0e3@PAGEOFF
    str x5, [sp, #8]
    movz x9, #7
    str x9, [sp, #16]
    adrp x5, _lb_text_f1e4d50ced9b@PAGE
    add x5, x5, _lb_text_f1e4d50ced9b@PAGEOFF
    str x5, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8984
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_30b76d9d9163@PAGE
    add x4, x4, _lb_text_30b76d9d9163@PAGEOFF
    str x4, [sp, #8]
    movz x9, #6
    str x9, [sp, #16]
    adrp x4, _lb_text_2cee6ac6bdb4@PAGE
    add x4, x4, _lb_text_2cee6ac6bdb4@PAGEOFF
    str x4, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8904
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_a9ad5efb804f@PAGE
    add x4, x4, _lb_text_a9ad5efb804f@PAGEOFF
    str x4, [sp, #8]
    movz x9, #6
    str x9, [sp, #16]
    adrp x4, _lb_text_f339ca1d2d21@PAGE
    add x4, x4, _lb_text_f339ca1d2d21@PAGEOFF
    str x4, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8824
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x7, _lb_text_6ea009f5ad15@PAGE
    add x7, x7, _lb_text_6ea009f5ad15@PAGEOFF
    str x7, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x7, _lb_text_ff556e22f206@PAGE
    add x7, x7, _lb_text_ff556e22f206@PAGEOFF
    str x7, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    adrp x7, _lb_text_6267839b2df6@PAGE
    add x7, x7, _lb_text_6267839b2df6@PAGEOFF
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d29, #31.0000000
    str d29, [sp, #64]
    fmov d30, #3.0000000
    str d30, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8744
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_d27912aee939@PAGE
    add x4, x4, _lb_text_d27912aee939@PAGEOFF
    str x4, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x4, _lb_text_2f954d451526@PAGE
    add x4, x4, _lb_text_2f954d451526@PAGEOFF
    str x4, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d31, #5.0000000
    str d31, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8664
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_7e9b2b3ddb5d@PAGE
    add x4, x4, _lb_text_7e9b2b3ddb5d@PAGEOFF
    str x4, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x4, _lb_text_66b4ff72e46e@PAGE
    add x4, x4, _lb_text_66b4ff72e46e@PAGEOFF
    str x4, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    adrp x3, _lb_text_9a12a7e72f1d@PAGE
    add x3, x3, _lb_text_9a12a7e72f1d@PAGEOFF
    str x3, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d31, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8584
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x2, _lb_text_ede58295ba23@PAGE
    add x2, x2, _lb_text_ede58295ba23@PAGEOFF
    str x2, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x2, _lb_text_b3d599c618ea@PAGE
    add x2, x2, _lb_text_b3d599c618ea@PAGEOFF
    str x2, [sp, #24]
    movz x9, #12
    str x9, [sp, #32]
    str x3, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d19, #8.0000000
    str d19, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8504
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x3, _lb_text_57992a52194c@PAGE
    add x3, x3, _lb_text_57992a52194c@PAGEOFF
    str x3, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x3, _lb_text_41d24466e6fb@PAGE
    add x3, x3, _lb_text_41d24466e6fb@PAGEOFF
    str x3, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    adrp x3, _lb_text_9b1b3cb25592@PAGE
    add x3, x3, _lb_text_9b1b3cb25592@PAGEOFF
    str x3, [sp, #40]
    movz x9, #7
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d29, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8424
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x2, _lb_text_df714682e1c9@PAGE
    add x2, x2, _lb_text_df714682e1c9@PAGEOFF
    str x2, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x2, _lb_text_632dc1ef1a93@PAGE
    add x2, x2, _lb_text_632dc1ef1a93@PAGEOFF
    str x2, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x3, [sp, #40]
    movz x9, #7
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d29, #30.0000000
    str d29, [sp, #64]
    str d24, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8344
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x2, _lb_text_481028128758@PAGE
    add x2, x2, _lb_text_481028128758@PAGEOFF
    str x2, [sp, #8]
    movz x9, #19
    str x9, [sp, #16]
    str x14, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x3, [sp, #40]
    movz x9, #7
    str x9, [sp, #48]
    str d24, [sp, #56]
    ldr d19, L3e22e58504c5_k6
    str d19, [sp, #64]
    str d24, [sp, #72]
    movz x9, #1
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8264
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_9a135ad93fca@PAGE
    add x14, x14, _lb_text_9a135ad93fca@PAGEOFF
    str x14, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x14, _lb_text_d6953af13438@PAGE
    add x14, x14, _lb_text_d6953af13438@PAGEOFF
    str x14, [sp, #24]
    movz x9, #13
    str x9, [sp, #32]
    str x3, [sp, #40]
    movz x9, #7
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8184
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_c9891a2e0702@PAGE
    add x14, x14, _lb_text_c9891a2e0702@PAGEOFF
    str x14, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x14, _lb_text_1ec5b771a3d0@PAGE
    add x14, x14, _lb_text_1ec5b771a3d0@PAGEOFF
    str x14, [sp, #24]
    movz x9, #9
    str x9, [sp, #32]
    str x3, [sp, #40]
    movz x9, #7
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d30, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8104
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_f6956013f4f1@PAGE
    add x14, x14, _lb_text_f6956013f4f1@PAGEOFF
    str x14, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x14, _lb_text_8c3318e179d6@PAGE
    add x14, x14, _lb_text_8c3318e179d6@PAGEOFF
    str x14, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    ldr d20, L3e22e58504c5_k7
    str d20, [sp, #64]
    str d27, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #8024
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_260b2ff7e3ef@PAGE
    add x14, x14, _lb_text_260b2ff7e3ef@PAGEOFF
    str x14, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x14, _lb_text_d027fdd92f3c@PAGE
    add x14, x14, _lb_text_d027fdd92f3c@PAGEOFF
    str x14, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d20, [sp, #64]
    str d27, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7944
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_73e2098f4e94@PAGE
    add x14, x14, _lb_text_73e2098f4e94@PAGEOFF
    str x14, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x14, _lb_text_c625a9200afa@PAGE
    add x14, x14, _lb_text_c625a9200afa@PAGEOFF
    str x14, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    ldr d21, L3e22e58504c5_k8
    str d21, [sp, #64]
    str d27, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7864
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_68a751200b19@PAGE
    add x14, x14, _lb_text_68a751200b19@PAGEOFF
    str x14, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x14, _lb_text_61995a1fde26@PAGE
    add x14, x14, _lb_text_61995a1fde26@PAGEOFF
    str x14, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d22, #1.0000000
    str d22, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7784
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_bf71a783c3ea@PAGE
    add x14, x14, _lb_text_bf71a783c3ea@PAGEOFF
    str x14, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x14, _lb_text_4632f7c41bc6@PAGE
    add x14, x14, _lb_text_4632f7c41bc6@PAGEOFF
    str x14, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x7, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d19, [sp, #64]
    str d24, [sp, #72]
    movz x9, #1
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7704
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_1a8fd042292e@PAGE
    add x14, x14, _lb_text_1a8fd042292e@PAGEOFF
    str x14, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x14, _lb_text_f3124eadc707@PAGE
    add x14, x14, _lb_text_f3124eadc707@PAGEOFF
    str x14, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    adrp x14, _lb_text_5d58ba5eeabe@PAGE
    add x14, x14, _lb_text_5d58ba5eeabe@PAGEOFF
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7624
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x7, _lb_text_9b3b800a3d1f@PAGE
    add x7, x7, _lb_text_9b3b800a3d1f@PAGEOFF
    str x7, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    str x12, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7544
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_144026765ad9@PAGE
    add x12, x12, _lb_text_144026765ad9@PAGEOFF
    str x12, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    str x13, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7464
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_e35533ac2378@PAGE
    add x12, x12, _lb_text_e35533ac2378@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x12, _lb_text_c198c47bd816@PAGE
    add x12, x12, _lb_text_c198c47bd816@PAGEOFF
    str x12, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d19, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7384
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_e529db1f641f@PAGE
    add x12, x12, _lb_text_e529db1f641f@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_577f948e08aa@PAGE
    add x12, x12, _lb_text_577f948e08aa@PAGEOFF
    str x12, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7304
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_ada0cd5f0e02@PAGE
    add x14, x14, _lb_text_ada0cd5f0e02@PAGEOFF
    str x14, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x14, _lb_text_71d0ad31231c@PAGE
    add x14, x14, _lb_text_71d0ad31231c@PAGEOFF
    str x14, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    adrp x14, _lb_text_c61066d24613@PAGE
    add x14, x14, _lb_text_c61066d24613@PAGEOFF
    str x14, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    movz x9, #3
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7224
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_c2cb918c11ae@PAGE
    add x12, x12, _lb_text_c2cb918c11ae@PAGEOFF
    str x12, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x12, _lb_text_88d1499c2b56@PAGE
    add x12, x12, _lb_text_88d1499c2b56@PAGEOFF
    str x12, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d22, [sp, #72]
    movz x9, #3
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7144
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_9af82d71c971@PAGE
    add x12, x12, _lb_text_9af82d71c971@PAGEOFF
    str x12, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x12, _lb_text_5782c511459e@PAGE
    add x12, x12, _lb_text_5782c511459e@PAGEOFF
    str x12, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    ldr d23, L3e22e58504c5_k9
    str d23, [sp, #56]
    fmov d23, #10.0000000
    str d23, [sp, #64]
    str d22, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #7064
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_1ec81e0b901a@PAGE
    add x12, x12, _lb_text_1ec81e0b901a@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_b4e93dc05feb@PAGE
    add x12, x12, _lb_text_b4e93dc05feb@PAGEOFF
    str x12, [sp, #24]
    movz x9, #12
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    movz x9, #3
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6984
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_5097e1070111@PAGE
    add x12, x12, _lb_text_5097e1070111@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_e59d430bfd16@PAGE
    add x12, x12, _lb_text_e59d430bfd16@PAGEOFF
    str x12, [sp, #24]
    movz x9, #12
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #6
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d22, [sp, #72]
    movz x9, #3
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6904
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_9089ca431204@PAGE
    add x14, x14, _lb_text_9089ca431204@PAGEOFF
    str x14, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x14, _lb_text_8e09e3c1802c@PAGE
    add x14, x14, _lb_text_8e09e3c1802c@PAGEOFF
    str x14, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    adrp x14, _lb_text_d3f0df47dd02@PAGE
    add x14, x14, _lb_text_d3f0df47dd02@PAGEOFF
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6824
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_130ed111228e@PAGE
    add x12, x12, _lb_text_130ed111228e@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x12, _lb_text_db5bcaf5f17f@PAGE
    add x12, x12, _lb_text_db5bcaf5f17f@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6744
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_1912ed09a1bc@PAGE
    add x14, x14, _lb_text_1912ed09a1bc@PAGEOFF
    str x14, [sp, #8]
    movz x9, #7
    str x9, [sp, #16]
    adrp x14, _lb_text_3dd7bf864cd9@PAGE
    add x14, x14, _lb_text_3dd7bf864cd9@PAGEOFF
    str x14, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    adrp x14, _lb_text_b8d18b282971@PAGE
    add x14, x14, _lb_text_b8d18b282971@PAGEOFF
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6664
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_3a86846171c6@PAGE
    add x12, x12, _lb_text_3a86846171c6@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_db3f153d2758@PAGE
    add x12, x12, _lb_text_db3f153d2758@PAGEOFF
    str x12, [sp, #24]
    movz x9, #14
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6584
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_532f6278b2de@PAGE
    add x12, x12, _lb_text_532f6278b2de@PAGEOFF
    str x12, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x12, _lb_text_3800987736ef@PAGE
    add x12, x12, _lb_text_3800987736ef@PAGEOFF
    str x12, [sp, #24]
    movz x9, #13
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6504
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_afde4dc49fc7@PAGE
    add x12, x12, _lb_text_afde4dc49fc7@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x12, _lb_text_2f3d2f10a63d@PAGE
    add x12, x12, _lb_text_2f3d2f10a63d@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6424
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_de79c24c79e1@PAGE
    add x12, x12, _lb_text_de79c24c79e1@PAGEOFF
    str x12, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x12, _lb_text_985a7009d3ef@PAGE
    add x12, x12, _lb_text_985a7009d3ef@PAGEOFF
    str x12, [sp, #24]
    movz x9, #17
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6344
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_f5fdbecb1b48@PAGE
    add x12, x12, _lb_text_f5fdbecb1b48@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_f54485c8f9a7@PAGE
    add x12, x12, _lb_text_f54485c8f9a7@PAGEOFF
    str x12, [sp, #24]
    movz x9, #16
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6264
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_abd84a73c67a@PAGE
    add x12, x12, _lb_text_abd84a73c67a@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x12, _lb_text_9fcf3ab1b7d2@PAGE
    add x12, x12, _lb_text_9fcf3ab1b7d2@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6184
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_240244e13267@PAGE
    add x12, x12, _lb_text_240244e13267@PAGEOFF
    str x12, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x12, _lb_text_82d8f93628f8@PAGE
    add x12, x12, _lb_text_82d8f93628f8@PAGEOFF
    str x12, [sp, #24]
    movz x9, #17
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6104
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_139d4b9e7997@PAGE
    add x12, x12, _lb_text_139d4b9e7997@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_8f30f2b0db67@PAGE
    add x12, x12, _lb_text_8f30f2b0db67@PAGEOFF
    str x12, [sp, #24]
    movz x9, #16
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #6024
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_b3231a8cbd86@PAGE
    add x12, x12, _lb_text_b3231a8cbd86@PAGEOFF
    str x12, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    adrp x12, _lb_text_174da40d35ce@PAGE
    add x12, x12, _lb_text_174da40d35ce@PAGEOFF
    str x12, [sp, #24]
    movz x9, #9
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5944
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_ed24027784a4@PAGE
    add x12, x12, _lb_text_ed24027784a4@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_dcfa0d3b60b6@PAGE
    add x12, x12, _lb_text_dcfa0d3b60b6@PAGEOFF
    str x12, [sp, #24]
    movz x9, #16
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5864
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_8ca4689aa4cf@PAGE
    add x12, x12, _lb_text_8ca4689aa4cf@PAGEOFF
    str x12, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x12, _lb_text_cb60c39eb9e6@PAGE
    add x12, x12, _lb_text_cb60c39eb9e6@PAGEOFF
    str x12, [sp, #24]
    movz x9, #15
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5784
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_043609e99031@PAGE
    add x12, x12, _lb_text_043609e99031@PAGEOFF
    str x12, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x12, _lb_text_f757a6975d5f@PAGE
    add x12, x12, _lb_text_f757a6975d5f@PAGEOFF
    str x12, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5704
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_32448df34616@PAGE
    add x12, x12, _lb_text_32448df34616@PAGEOFF
    str x12, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x12, _lb_text_ea29fe20fdcf@PAGE
    add x12, x12, _lb_text_ea29fe20fdcf@PAGEOFF
    str x12, [sp, #24]
    movz x9, #15
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5624
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_55d3c502db86@PAGE
    add x12, x12, _lb_text_55d3c502db86@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_168483face54@PAGE
    add x12, x12, _lb_text_168483face54@PAGEOFF
    str x12, [sp, #24]
    movz x9, #14
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5544
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_564e8e4099ca@PAGE
    add x12, x12, _lb_text_564e8e4099ca@PAGEOFF
    str x12, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x12, _lb_text_3959178c76d3@PAGE
    add x12, x12, _lb_text_3959178c76d3@PAGEOFF
    str x12, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5464
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_71030649b8ea@PAGE
    add x12, x12, _lb_text_71030649b8ea@PAGEOFF
    str x12, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x12, _lb_text_87d6588c61aa@PAGE
    add x12, x12, _lb_text_87d6588c61aa@PAGEOFF
    str x12, [sp, #24]
    movz x9, #15
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5384
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_3fedbc05ed60@PAGE
    add x12, x12, _lb_text_3fedbc05ed60@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_76e0a23c5c90@PAGE
    add x12, x12, _lb_text_76e0a23c5c90@PAGEOFF
    str x12, [sp, #24]
    movz x9, #14
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5304
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_01c8d08fa9cc@PAGE
    add x12, x12, _lb_text_01c8d08fa9cc@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x12, _lb_text_46b4df59902f@PAGE
    add x12, x12, _lb_text_46b4df59902f@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5224
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_55f6940f737e@PAGE
    add x12, x12, _lb_text_55f6940f737e@PAGEOFF
    str x12, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x12, _lb_text_cd79825dd560@PAGE
    add x12, x12, _lb_text_cd79825dd560@PAGEOFF
    str x12, [sp, #24]
    movz x9, #17
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5144
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_ca1fb511bb75@PAGE
    add x12, x12, _lb_text_ca1fb511bb75@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_d2118c104ea4@PAGE
    add x12, x12, _lb_text_d2118c104ea4@PAGEOFF
    str x12, [sp, #24]
    movz x9, #16
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #5064
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_f750ad0a7777@PAGE
    add x12, x12, _lb_text_f750ad0a7777@PAGEOFF
    str x12, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x12, _lb_text_a227afdfc4a7@PAGE
    add x12, x12, _lb_text_a227afdfc4a7@PAGEOFF
    str x12, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4984
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_0ab59812b5aa@PAGE
    add x12, x12, _lb_text_0ab59812b5aa@PAGEOFF
    str x12, [sp, #8]
    movz x9, #18
    str x9, [sp, #16]
    adrp x12, _lb_text_5fac0bab6c13@PAGE
    add x12, x12, _lb_text_5fac0bab6c13@PAGEOFF
    str x12, [sp, #24]
    movz x9, #18
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4904
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_f38baa7e81d5@PAGE
    add x12, x12, _lb_text_f38baa7e81d5@PAGEOFF
    str x12, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x12, _lb_text_152df726b9b2@PAGE
    add x12, x12, _lb_text_152df726b9b2@PAGEOFF
    str x12, [sp, #24]
    movz x9, #17
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #11
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4824
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_d92022855abd@PAGE
    add x14, x14, _lb_text_d92022855abd@PAGEOFF
    str x14, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x14, _lb_text_1f68ec8d806c@PAGE
    add x14, x14, _lb_text_1f68ec8d806c@PAGEOFF
    str x14, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    adrp x14, _lb_text_3c2254592fbb@PAGE
    add x14, x14, _lb_text_3c2254592fbb@PAGEOFF
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    ldr d23, L3e22e58504c5_k10
    str d23, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4744
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_1302ba099129@PAGE
    add x12, x12, _lb_text_1302ba099129@PAGEOFF
    str x12, [sp, #8]
    movz x9, #24
    str x9, [sp, #16]
    adrp x12, _lb_text_e422da327286@PAGE
    add x12, x12, _lb_text_e422da327286@PAGEOFF
    str x12, [sp, #24]
    movz x9, #18
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4664
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_a9ce1e1f0130@PAGE
    add x12, x12, _lb_text_a9ce1e1f0130@PAGEOFF
    str x12, [sp, #8]
    movz x9, #23
    str x9, [sp, #16]
    str x5, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4584
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_55f6d8c16285@PAGE
    add x12, x12, _lb_text_55f6d8c16285@PAGEOFF
    str x12, [sp, #8]
    movz x9, #18
    str x9, [sp, #16]
    adrp x12, _lb_text_a75623caf894@PAGE
    add x12, x12, _lb_text_a75623caf894@PAGEOFF
    str x12, [sp, #24]
    movz x9, #12
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d23, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4504
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_41f9f3db2b47@PAGE
    add x12, x12, _lb_text_41f9f3db2b47@PAGEOFF
    str x12, [sp, #8]
    movz x9, #25
    str x9, [sp, #16]
    adrp x12, _lb_text_b875919d39f6@PAGE
    add x12, x12, _lb_text_b875919d39f6@PAGEOFF
    str x12, [sp, #24]
    movz x9, #19
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
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
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_0ea633fbb5da@PAGE
    add x12, x12, _lb_text_0ea633fbb5da@PAGEOFF
    str x12, [sp, #8]
    movz x9, #24
    str x9, [sp, #16]
    adrp x12, _lb_text_a13730fcc13e@PAGE
    add x12, x12, _lb_text_a13730fcc13e@PAGEOFF
    str x12, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4344
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_9b266acbb7e4@PAGE
    add x12, x12, _lb_text_9b266acbb7e4@PAGEOFF
    str x12, [sp, #8]
    movz x9, #20
    str x9, [sp, #16]
    adrp x12, _lb_text_ff85edb108ae@PAGE
    add x12, x12, _lb_text_ff85edb108ae@PAGEOFF
    str x12, [sp, #24]
    movz x9, #14
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d23, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4264
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_611234e212e3@PAGE
    add x12, x12, _lb_text_611234e212e3@PAGEOFF
    str x12, [sp, #8]
    movz x9, #27
    str x9, [sp, #16]
    adrp x12, _lb_text_fa395fd4b006@PAGE
    add x12, x12, _lb_text_fa395fd4b006@PAGEOFF
    str x12, [sp, #24]
    movz x9, #21
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4184
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_185cb16adacc@PAGE
    add x12, x12, _lb_text_185cb16adacc@PAGEOFF
    str x12, [sp, #8]
    movz x9, #26
    str x9, [sp, #16]
    str x6, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    movz x16, #4104
    sub x11, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_7c00ae915315@PAGE
    add x12, x12, _lb_text_7c00ae915315@PAGEOFF
    str x12, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x12, _lb_text_ff3e52f5c144@PAGE
    add x12, x12, _lb_text_ff3e52f5c144@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d23, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #4024
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_c2a08488768d@PAGE
    add x12, x12, _lb_text_c2a08488768d@PAGEOFF
    str x12, [sp, #8]
    movz x9, #23
    str x9, [sp, #16]
    adrp x12, _lb_text_e316410331fe@PAGE
    add x12, x12, _lb_text_e316410331fe@PAGEOFF
    str x12, [sp, #24]
    movz x9, #17
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3944
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_466ac484c80a@PAGE
    add x12, x12, _lb_text_466ac484c80a@PAGEOFF
    str x12, [sp, #8]
    movz x9, #22
    str x9, [sp, #16]
    adrp x12, _lb_text_eff4485d2fe5@PAGE
    add x12, x12, _lb_text_eff4485d2fe5@PAGEOFF
    str x12, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3864
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_d48ebe1ed35c@PAGE
    add x12, x12, _lb_text_d48ebe1ed35c@PAGEOFF
    str x12, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    str x4, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3784
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_3ad65b67d50c@PAGE
    add x12, x12, _lb_text_3ad65b67d50c@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_550e5d8aa313@PAGE
    add x12, x12, _lb_text_550e5d8aa313@PAGEOFF
    str x12, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d19, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3704
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_192a817c9784@PAGE
    add x14, x14, _lb_text_192a817c9784@PAGEOFF
    str x14, [sp, #8]
    movz x9, #2
    str x9, [sp, #16]
    adrp x14, _lb_text_61ac670957f0@PAGE
    add x14, x14, _lb_text_61ac670957f0@PAGEOFF
    str x14, [sp, #24]
    movz x9, #13
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3624
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_ba9a7d4ef9aa@PAGE
    add x12, x12, _lb_text_ba9a7d4ef9aa@PAGEOFF
    str x12, [sp, #8]
    movz x9, #6
    str x9, [sp, #16]
    adrp x12, _lb_text_491e2ab9d93f@PAGE
    add x12, x12, _lb_text_491e2ab9d93f@PAGEOFF
    str x12, [sp, #24]
    movz x9, #3
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    ldr d8, L3e22e58504c5_k11
    str d8, [sp, #56]
    str d21, [sp, #64]
    ldr d9, L3e22e58504c5_k12
    str d9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3544
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x13, _lb_text_a03851d4d9cc@PAGE
    add x13, x13, _lb_text_a03851d4d9cc@PAGEOFF
    str x13, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    adrp x13, _lb_text_16ec60b66d71@PAGE
    add x13, x13, _lb_text_16ec60b66d71@PAGEOFF
    str x13, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    str d29, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3464
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x13, _lb_text_90fd3bfe89e6@PAGE
    add x13, x13, _lb_text_90fd3bfe89e6@PAGEOFF
    str x13, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    adrp x13, _lb_text_a352af986a80@PAGE
    add x13, x13, _lb_text_a352af986a80@PAGEOFF
    str x13, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    fmov d29, #20.0000000
    str d29, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3384
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x7, _lb_text_72fab8f7e75e@PAGE
    add x7, x7, _lb_text_72fab8f7e75e@PAGEOFF
    str x7, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x7, _lb_text_0d064a9eb1dc@PAGE
    add x7, x7, _lb_text_0d064a9eb1dc@PAGEOFF
    str x7, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    fmov d9, #-10.0000000
    str d9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3304
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x6, _lb_text_0fe3658a5bd7@PAGE
    add x6, x6, _lb_text_0fe3658a5bd7@PAGEOFF
    str x6, [sp, #8]
    movz x9, #7
    str x9, [sp, #16]
    adrp x6, _lb_text_0fab34f53bc5@PAGE
    add x6, x6, _lb_text_0fab34f53bc5@PAGEOFF
    str x6, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    fmov d10, #-20.0000000
    str d10, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3224
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x6, _lb_text_b512424f6bc0@PAGE
    add x6, x6, _lb_text_b512424f6bc0@PAGEOFF
    str x6, [sp, #8]
    movz x9, #7
    str x9, [sp, #16]
    adrp x6, _lb_text_9e4ab4db9143@PAGE
    add x6, x6, _lb_text_9e4ab4db9143@PAGEOFF
    str x6, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    fmov d10, #-30.0000000
    str d10, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3144
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x5, _lb_text_8170cebfcede@PAGE
    add x5, x5, _lb_text_8170cebfcede@PAGEOFF
    str x5, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    adrp x5, _lb_text_893e7289b392@PAGE
    add x5, x5, _lb_text_893e7289b392@PAGEOFF
    str x5, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    str d9, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #3064
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x5, _lb_text_eebe4969f56d@PAGE
    add x5, x5, _lb_text_eebe4969f56d@PAGEOFF
    str x5, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x5, _lb_text_41fc615f6c4d@PAGE
    add x5, x5, _lb_text_41fc615f6c4d@PAGEOFF
    str x5, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d8, [sp, #56]
    str d21, [sp, #64]
    str d29, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2984
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_2d251be07c45@PAGE
    add x4, x4, _lb_text_2d251be07c45@PAGEOFF
    str x4, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x4, _lb_text_11567cbc1ea2@PAGE
    add x4, x4, _lb_text_11567cbc1ea2@PAGEOFF
    str x4, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d23, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2904
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_e3a9173cef3d@PAGE
    add x4, x4, _lb_text_e3a9173cef3d@PAGEOFF
    str x4, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x4, _lb_text_0a77e6b8bf74@PAGE
    add x4, x4, _lb_text_0a77e6b8bf74@PAGEOFF
    str x4, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #13
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2824
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_16a7f4f4934a@PAGE
    add x14, x14, _lb_text_16a7f4f4934a@PAGEOFF
    str x14, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x14, _lb_text_d528af34df23@PAGE
    add x14, x14, _lb_text_d528af34df23@PAGEOFF
    str x14, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    adrp x14, _lb_text_56189fe60d87@PAGE
    add x14, x14, _lb_text_56189fe60d87@PAGEOFF
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2744
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_f0b437034a0e@PAGE
    add x4, x4, _lb_text_f0b437034a0e@PAGEOFF
    str x4, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x4, _lb_text_289c191f66fc@PAGE
    add x4, x4, _lb_text_289c191f66fc@PAGEOFF
    str x4, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d19, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2664
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x3, _lb_text_c453c7cdc5e6@PAGE
    add x3, x3, _lb_text_c453c7cdc5e6@PAGEOFF
    str x3, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x3, _lb_text_9953327ec770@PAGE
    add x3, x3, _lb_text_9953327ec770@PAGEOFF
    str x3, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d29, #2.0000000
    str d29, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2584
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x3, _lb_text_ba115accf576@PAGE
    add x3, x3, _lb_text_ba115accf576@PAGEOFF
    str x3, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x3, _lb_text_c9c8a113c385@PAGE
    add x3, x3, _lb_text_c9c8a113c385@PAGEOFF
    str x3, [sp, #24]
    movz x9, #9
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d26, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2504
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_9f0909e5a153@PAGE
    add x14, x14, _lb_text_9f0909e5a153@PAGEOFF
    str x14, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x14, _lb_text_260096013127@PAGE
    add x14, x14, _lb_text_260096013127@PAGEOFF
    str x14, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    adrp x14, _lb_text_aef2fee22056@PAGE
    add x14, x14, _lb_text_aef2fee22056@PAGEOFF
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2424
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x3, _lb_text_eae7fa32cc71@PAGE
    add x3, x3, _lb_text_eae7fa32cc71@PAGEOFF
    str x3, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    str x4, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d19, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2344
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_8de76396c6d9@PAGE
    add x4, x4, _lb_text_8de76396c6d9@PAGEOFF
    str x4, [sp, #8]
    movz x9, #18
    str x9, [sp, #16]
    adrp x4, _lb_text_0cd0f50ba177@PAGE
    add x4, x4, _lb_text_0cd0f50ba177@PAGEOFF
    str x4, [sp, #24]
    movz x9, #9
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2264
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_04e6840100f6@PAGE
    add x4, x4, _lb_text_04e6840100f6@PAGEOFF
    str x4, [sp, #8]
    movz x9, #16
    str x9, [sp, #16]
    adrp x4, _lb_text_136e8def49f1@PAGE
    add x4, x4, _lb_text_136e8def49f1@PAGEOFF
    str x4, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d27, [sp, #64]
    str d19, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2184
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_eaac4f51ce2f@PAGE
    add x14, x14, _lb_text_eaac4f51ce2f@PAGEOFF
    str x14, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x14, _lb_text_5bab2ce48282@PAGE
    add x14, x14, _lb_text_5bab2ce48282@PAGEOFF
    str x14, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    adrp x14, _lb_text_9c9902882c85@PAGE
    add x14, x14, _lb_text_9c9902882c85@PAGEOFF
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    ldr d26, L3e22e58504c5_k13
    ldr d21, L3e22e58504c5_k14
    str d21, [sp, #56]
    str d26, [sp, #64]
    str d24, [sp, #72]
    movz x9, #1
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2104
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_83af96f7018c@PAGE
    add x4, x4, _lb_text_83af96f7018c@PAGEOFF
    str x4, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x4, _lb_text_fadf6d13ddce@PAGE
    add x4, x4, _lb_text_fadf6d13ddce@PAGEOFF
    str x4, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #2024
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_a9bc18f5aa41@PAGE
    add x4, x4, _lb_text_a9bc18f5aa41@PAGEOFF
    str x4, [sp, #8]
    movz x9, #19
    str x9, [sp, #16]
    adrp x4, _lb_text_d02f813c218e@PAGE
    add x4, x4, _lb_text_d02f813c218e@PAGEOFF
    str x4, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1944
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_4fd6f355928d@PAGE
    add x4, x4, _lb_text_4fd6f355928d@PAGEOFF
    str x4, [sp, #8]
    movz x9, #15
    str x9, [sp, #16]
    adrp x4, _lb_text_11ce2f48be2c@PAGE
    add x4, x4, _lb_text_11ce2f48be2c@PAGEOFF
    str x4, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d28, [sp, #56]
    str d27, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1864
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_0a61bc2762f8@PAGE
    add x4, x4, _lb_text_0a61bc2762f8@PAGEOFF
    str x4, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x4, _lb_text_f62d8c90aa56@PAGE
    add x4, x4, _lb_text_f62d8c90aa56@PAGEOFF
    str x4, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d19, [sp, #56]
    str d25, [sp, #64]
    str d27, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1784
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_9b29804fb3a9@PAGE
    add x4, x4, _lb_text_9b29804fb3a9@PAGEOFF
    str x4, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x4, _lb_text_06e584468c03@PAGE
    add x4, x4, _lb_text_06e584468c03@PAGEOFF
    str x4, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #8
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d22, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_d1399f6201ac@PAGE
    add x14, x14, _lb_text_d1399f6201ac@PAGEOFF
    str x14, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    adrp x14, _lb_text_e6efadfde2d0@PAGE
    add x14, x14, _lb_text_e6efadfde2d0@PAGEOFF
    str x14, [sp, #24]
    movz x9, #9
    str x9, [sp, #32]
    adrp x14, _lb_text_b1f7ae97a4be@PAGE
    add x14, x14, _lb_text_b1f7ae97a4be@PAGEOFF
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    movz x9, #4
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1624
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_0efdff3c9f1d@PAGE
    add x4, x4, _lb_text_0efdff3c9f1d@PAGEOFF
    str x4, [sp, #8]
    movz x9, #8
    str x9, [sp, #16]
    adrp x4, _lb_text_7862fcd7729e@PAGE
    add x4, x4, _lb_text_7862fcd7729e@PAGEOFF
    str x4, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    movz x9, #4
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1544
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_2b72b8bd3af1@PAGE
    add x4, x4, _lb_text_2b72b8bd3af1@PAGEOFF
    str x4, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x4, _lb_text_06b9ec88f928@PAGE
    add x4, x4, _lb_text_06b9ec88f928@PAGEOFF
    str x4, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d22, [sp, #72]
    movz x9, #4
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1464
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x4, _lb_text_6a6ab647d644@PAGE
    add x4, x4, _lb_text_6a6ab647d644@PAGEOFF
    str x4, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x4, _lb_text_04e1fb410ebf@PAGE
    add x4, x4, _lb_text_04e1fb410ebf@PAGEOFF
    str x4, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d22, [sp, #72]
    movz x9, #4
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1384
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_5f9a7e729ad7@PAGE
    add x14, x14, _lb_text_5f9a7e729ad7@PAGEOFF
    str x14, [sp, #8]
    movz x9, #9
    str x9, [sp, #16]
    str x12, [sp, #24]
    movz x9, #3
    str x9, [sp, #32]
    adrp x14, _lb_text_43cfd10bec8e@PAGE
    add x14, x14, _lb_text_43cfd10bec8e@PAGEOFF
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    fmov d25, #24.0000000
    fmov d26, #-24.0000000
    str d26, [sp, #56]
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1304
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_62902569573f@PAGE
    add x12, x12, _lb_text_62902569573f@PAGEOFF
    str x12, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    str x7, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d26, [sp, #56]
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1224
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_a837e6c1b62f@PAGE
    add x12, x12, _lb_text_a837e6c1b62f@PAGEOFF
    str x12, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    str x6, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d26, [sp, #56]
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_c41018687ed7@PAGE
    add x12, x12, _lb_text_c41018687ed7@PAGEOFF
    str x12, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    adrp x12, _lb_text_918c9c2ece86@PAGE
    add x12, x12, _lb_text_918c9c2ece86@PAGEOFF
    str x12, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    ldr d25, L3e22e58504c5_k15
    str d25, [sp, #56]
    ldr d26, L3e22e58504c5_k16
    str d26, [sp, #64]
    str d25, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #1064
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_24d88b5c64a3@PAGE
    add x12, x12, _lb_text_24d88b5c64a3@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_b8bd5df87942@PAGE
    add x12, x12, _lb_text_b8bd5df87942@PAGEOFF
    str x12, [sp, #24]
    movz x9, #10
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #984
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_ee768e90e238@PAGE
    add x12, x12, _lb_text_ee768e90e238@PAGEOFF
    str x12, [sp, #8]
    movz x9, #17
    str x9, [sp, #16]
    adrp x12, _lb_text_d035b3dcbd35@PAGE
    add x12, x12, _lb_text_d035b3dcbd35@PAGEOFF
    str x12, [sp, #24]
    movz x9, #11
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    fmov d25, #4.0000000
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #904
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_241091f9deb6@PAGE
    add x12, x12, _lb_text_241091f9deb6@PAGEOFF
    str x12, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x12, _lb_text_b1d68917bd39@PAGE
    add x12, x12, _lb_text_b1d68917bd39@PAGEOFF
    str x12, [sp, #24]
    movz x9, #12
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d22, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #824
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_d52ff3a9524d@PAGE
    add x14, x14, _lb_text_d52ff3a9524d@PAGEOFF
    str x14, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x14, _lb_text_ca19794edb4a@PAGE
    add x14, x14, _lb_text_ca19794edb4a@PAGEOFF
    str x14, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d31, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #744
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_6d9f63d4e9ca@PAGE
    add x12, x12, _lb_text_6d9f63d4e9ca@PAGEOFF
    str x12, [sp, #8]
    movz x9, #11
    str x9, [sp, #16]
    adrp x12, _lb_text_2c2a382f6702@PAGE
    add x12, x12, _lb_text_2c2a382f6702@PAGEOFF
    str x12, [sp, #24]
    movz x9, #5
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    fmov d26, #-1.0000000
    str d26, [sp, #56]
    str d31, [sp, #64]
    str d29, [sp, #72]
    movz x9, #1
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #664
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_27a417f55bf8@PAGE
    add x12, x12, _lb_text_27a417f55bf8@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    adrp x12, _lb_text_cff4ac896aed@PAGE
    add x12, x12, _lb_text_cff4ac896aed@PAGEOFF
    str x12, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d29, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x12, _lb_text_e44d45bccfd4@PAGE
    add x12, x12, _lb_text_e44d45bccfd4@PAGEOFF
    str x12, [sp, #8]
    movz x9, #14
    str x9, [sp, #16]
    str x15, [sp, #24]
    movz x9, #8
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    fmov d26, #-3.0000000
    str d26, [sp, #56]
    str d30, [sp, #64]
    str d24, [sp, #72]
    movz x9, #2
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #504
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x15, _lb_text_60a4516be66b@PAGE
    add x15, x15, _lb_text_60a4516be66b@PAGEOFF
    str x15, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    adrp x15, _lb_text_9acd625d7918@PAGE
    add x15, x15, _lb_text_9acd625d7918@PAGEOFF
    str x15, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d29, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #424
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x15, _lb_text_f3388cd1f178@PAGE
    add x15, x15, _lb_text_f3388cd1f178@PAGEOFF
    str x15, [sp, #8]
    movz x9, #12
    str x9, [sp, #16]
    str x13, [sp, #24]
    movz x9, #6
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d20, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #344
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x15, _lb_text_4aaa0e5ae416@PAGE
    add x15, x15, _lb_text_4aaa0e5ae416@PAGEOFF
    str x15, [sp, #8]
    movz x9, #13
    str x9, [sp, #16]
    str x5, [sp, #24]
    movz x9, #7
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d20, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x15, _lb_text_d7ef0b018083@PAGE
    add x15, x15, _lb_text_d7ef0b018083@PAGEOFF
    str x15, [sp, #8]
    movz x9, #10
    str x9, [sp, #16]
    adrp x15, _lb_text_52ef54cfdaf3@PAGE
    add x15, x15, _lb_text_52ef54cfdaf3@PAGEOFF
    str x15, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #5
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d20, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #184
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
    movz x16, #9544
    sub x11, x29, x16
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    adrp x14, _lb_text_f9bb0705aea5@PAGE
    add x14, x14, _lb_text_f9bb0705aea5@PAGEOFF
    str x14, [sp, #8]
    movz x9, #4
    str x9, [sp, #16]
    adrp x14, _lb_text_e63b9efe99a2@PAGE
    add x14, x14, _lb_text_e63b9efe99a2@PAGEOFF
    str x14, [sp, #24]
    movz x9, #4
    str x9, [sp, #32]
    str x14, [sp, #40]
    movz x9, #4
    str x9, [sp, #48]
    str d24, [sp, #56]
    str d25, [sp, #64]
    str d24, [sp, #72]
    mov x9, #0
    str x9, [sp, #80]
    movz x16, #9544
    sub x10, x29, x16
    sub x11, x29, #104
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
    adrp x14, _lb_parameters_parameters@PAGE
    add x14, x14, _lb_parameters_parameters@PAGEOFF
    movz x16, #9464
    sub x10, x29, x16
    mov x0, x14
    mov x1, x10
    movz x2, #9440
    bl _memcpy
    ldr d8, [sp, #9544]
    ldr d9, [sp, #9536]
    ldr d10, [sp, #9528]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3e22e58504c5_k0:
    .quad 4677104761256804352
L3e22e58504c5_k1:
    .quad 4639481672377565184
L3e22e58504c5_k2:
    .quad 13862853709232340992
L3e22e58504c5_k3:
    .quad 4660134898793709568
L3e22e58504c5_k4:
    .quad 4636737291354636288
L3e22e58504c5_k5:
    .quad 13860109328209412096
L3e22e58504c5_k6:
    .quad 4632233691727265792
L3e22e58504c5_k7:
    .quad 4641240890982006784
L3e22e58504c5_k8:
    .quad 4643985272004935680
L3e22e58504c5_k9:
    .quad 4591870180066957722
L3e22e58504c5_k10:
    .quad 4645040803167600640
L3e22e58504c5_k11:
    .quad 13864612927836782592
L3e22e58504c5_k12:
    .quad 4630826316843712512
L3e22e58504c5_k13:
    .quad 4631530004285489152
L3e22e58504c5_k14:
    .quad 13854902041140264960
L3e22e58504c5_k15:
    .quad 4603579539098121011
L3e22e58504c5_k16:
    .quad 4612586738352862003


    .p2align 2
    .globl _lb_recipe_10stage_keys_0init
_lb_recipe_10stage_keys_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    adrp x14, _lb_text_d0ddfd3b053d@PAGE
    add x14, x14, _lb_text_d0ddfd3b053d@PAGEOFF
    str x14, [sp, #0]
    movz x9, #4
    str x9, [sp, #8]
    adrp x14, _lb_text_cab10a1528bb@PAGE
    add x14, x14, _lb_text_cab10a1528bb@PAGEOFF
    str x14, [sp, #16]
    movz x9, #13
    str x9, [sp, #24]
    adrp x14, _lb_text_f9ede9d21354@PAGE
    add x14, x14, _lb_text_f9ede9d21354@PAGEOFF
    str x14, [sp, #32]
    movz x9, #8
    str x9, [sp, #40]
    adrp x14, _lb_text_6d962656d094@PAGE
    add x14, x14, _lb_text_6d962656d094@PAGEOFF
    str x14, [sp, #48]
    movz x9, #4
    str x9, [sp, #56]
    adrp x14, _lb_text_2f93deaebf4e@PAGE
    add x14, x14, _lb_text_2f93deaebf4e@PAGEOFF
    str x14, [sp, #64]
    movz x9, #6
    str x9, [sp, #72]
    adrp x14, _lb_text_e6d66a35abf0@PAGE
    add x14, x14, _lb_text_e6d66a35abf0@PAGEOFF
    str x14, [sp, #80]
    movz x9, #4
    str x9, [sp, #88]
    adrp x14, _lb_text_c6b28fc842dc@PAGE
    add x14, x14, _lb_text_c6b28fc842dc@PAGEOFF
    str x14, [sp, #96]
    movz x9, #7
    str x9, [sp, #104]
    adrp x14, _lb_text_0931feb6ee0c@PAGE
    add x14, x14, _lb_text_0931feb6ee0c@PAGEOFF
    str x14, [sp, #112]
    movz x9, #4
    str x9, [sp, #120]
    adrp x14, _lb_text_bded3da2d0b6@PAGE
    add x14, x14, _lb_text_bded3da2d0b6@PAGEOFF
    str x14, [sp, #128]
    movz x9, #5
    str x9, [sp, #136]
    adrp x14, _lb_text_568a5defc5f7@PAGE
    add x14, x14, _lb_text_568a5defc5f7@PAGEOFF
    str x14, [sp, #144]
    movz x9, #5
    str x9, [sp, #152]
    adrp x14, _lb_text_37bf52d804f2@PAGE
    add x14, x14, _lb_text_37bf52d804f2@PAGEOFF
    str x14, [sp, #160]
    movz x9, #7
    str x9, [sp, #168]
    adrp x14, _lb_text_fff780693ef4@PAGE
    add x14, x14, _lb_text_fff780693ef4@PAGEOFF
    str x14, [sp, #176]
    movz x9, #8
    str x9, [sp, #184]
    adrp x14, _lb_text_f9bb0705aea5@PAGE
    add x14, x14, _lb_text_f9bb0705aea5@PAGEOFF
    str x14, [sp, #192]
    movz x9, #4
    str x9, [sp, #200]
    adrp x14, _lb_text_31b1a7f07d78@PAGE
    add x14, x14, _lb_text_31b1a7f07d78@PAGEOFF
    str x14, [sp, #208]
    movz x9, #5
    str x9, [sp, #216]
    adrp x14, _lb_text_0af79378a40c@PAGE
    add x14, x14, _lb_text_0af79378a40c@PAGEOFF
    str x14, [sp, #224]
    movz x9, #6
    str x9, [sp, #232]
    adrp x14, _lb_text_c865e672e910@PAGE
    add x14, x14, _lb_text_c865e672e910@PAGEOFF
    str x14, [sp, #240]
    movz x9, #5
    str x9, [sp, #248]
    adrp x14, _lb_recipe_10stage_keys@PAGE
    add x14, x14, _lb_recipe_10stage_keys@PAGEOFF
    sub x10, x29, #256
    mov x0, x14
    mov x1, x10
    movz x2, #256
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_owned_0init
_lb_recipe_owned_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    str x14, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    adrp x15, _lb_text_27d9c1372b98@PAGE
    add x15, x15, _lb_text_27d9c1372b98@PAGEOFF
    str x15, [sp, #16]
    movz x9, #13
    str x9, [sp, #24]
    adrp x15, _lb_text_fc379d739191@PAGE
    add x15, x15, _lb_text_fc379d739191@PAGEOFF
    str x15, [sp, #32]
    movz x9, #8
    str x9, [sp, #40]
    adrp x15, _lb_text_56189fe60d87@PAGE
    add x15, x15, _lb_text_56189fe60d87@PAGEOFF
    str x15, [sp, #48]
    movz x9, #4
    str x9, [sp, #56]
    adrp x15, _lb_text_9a12a7e72f1d@PAGE
    add x15, x15, _lb_text_9a12a7e72f1d@PAGEOFF
    str x15, [sp, #64]
    movz x9, #6
    str x9, [sp, #72]
    adrp x15, _lb_text_6267839b2df6@PAGE
    add x15, x15, _lb_text_6267839b2df6@PAGEOFF
    str x15, [sp, #80]
    movz x9, #4
    str x9, [sp, #88]
    adrp x15, _lb_text_9b1b3cb25592@PAGE
    add x15, x15, _lb_text_9b1b3cb25592@PAGEOFF
    str x15, [sp, #96]
    movz x9, #7
    str x9, [sp, #104]
    adrp x15, _lb_text_5d58ba5eeabe@PAGE
    add x15, x15, _lb_text_5d58ba5eeabe@PAGEOFF
    str x15, [sp, #112]
    movz x9, #4
    str x9, [sp, #120]
    adrp x15, _lb_text_f3b640edce5d@PAGE
    add x15, x15, _lb_text_f3b640edce5d@PAGEOFF
    str x15, [sp, #128]
    movz x9, #64
    str x9, [sp, #136]
    adrp x15, _lb_text_43cfd10bec8e@PAGE
    add x15, x15, _lb_text_43cfd10bec8e@PAGEOFF
    str x15, [sp, #144]
    movz x9, #5
    str x9, [sp, #152]
    str x14, [sp, #160]
    mov x9, #0
    str x9, [sp, #168]
    str x14, [sp, #176]
    mov x9, #0
    str x9, [sp, #184]
    adrp x15, _lb_text_e63b9efe99a2@PAGE
    add x15, x15, _lb_text_e63b9efe99a2@PAGEOFF
    str x15, [sp, #192]
    movz x9, #4
    str x9, [sp, #200]
    adrp x15, _lb_text_45a89a03d2a6@PAGE
    add x15, x15, _lb_text_45a89a03d2a6@PAGEOFF
    str x15, [sp, #208]
    movz x9, #22
    str x9, [sp, #216]
    str x14, [sp, #224]
    mov x9, #0
    str x9, [sp, #232]
    adrp x14, _lb_text_ca19794edb4a@PAGE
    add x14, x14, _lb_text_ca19794edb4a@PAGEOFF
    str x14, [sp, #240]
    movz x9, #5
    str x9, [sp, #248]
    adrp x14, _lb_recipe_owned@PAGE
    add x14, x14, _lb_recipe_owned@PAGEOFF
    sub x10, x29, #256
    mov x0, x14
    mov x1, x10
    movz x2, #256
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_11mode_chains_0init
_lb_recipe_11mode_chains_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    adrp x14, _lb_text_a231887f32a4@PAGE
    add x14, x14, _lb_text_a231887f32a4@PAGEOFF
    str x14, [sp, #0]
    movz x9, #62
    str x9, [sp, #8]
    adrp x14, _lb_text_65e5c7664501@PAGE
    add x14, x14, _lb_text_65e5c7664501@PAGEOFF
    str x14, [sp, #16]
    movz x9, #60
    str x9, [sp, #24]
    adrp x15, _lb_text_d6e28ec270c9@PAGE
    add x15, x15, _lb_text_d6e28ec270c9@PAGEOFF
    str x15, [sp, #32]
    movz x9, #55
    str x9, [sp, #40]
    adrp x15, _lb_text_edec7bbda6a5@PAGE
    add x15, x15, _lb_text_edec7bbda6a5@PAGEOFF
    str x15, [sp, #48]
    movz x9, #55
    str x9, [sp, #56]
    str x14, [sp, #64]
    movz x9, #60
    str x9, [sp, #72]
    adrp x14, _lb_text_f80eb2d08824@PAGE
    add x14, x14, _lb_text_f80eb2d08824@PAGEOFF
    str x14, [sp, #80]
    movz x9, #78
    str x9, [sp, #88]
    adrp x14, _lb_text_4612cb96b541@PAGE
    add x14, x14, _lb_text_4612cb96b541@PAGEOFF
    str x14, [sp, #96]
    movz x9, #45
    str x9, [sp, #104]
    adrp x14, _lb_text_60a0449f3f5a@PAGE
    add x14, x14, _lb_text_60a0449f3f5a@PAGEOFF
    str x14, [sp, #112]
    movz x9, #52
    str x9, [sp, #120]
    adrp x14, _lb_recipe_11mode_chains@PAGE
    add x14, x14, _lb_recipe_11mode_chains@PAGEOFF
    sub x10, x29, #128
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
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x14, #96]
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x14, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_recipe_11mode_extras_0init
_lb_recipe_11mode_extras_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    adrp x14, _lb_text_3df2c3383c52@PAGE
    add x14, x14, _lb_text_3df2c3383c52@PAGEOFF
    str x14, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    str x14, [sp, #16]
    mov x9, #0
    str x9, [sp, #24]
    str x14, [sp, #32]
    mov x9, #0
    str x9, [sp, #40]
    str x14, [sp, #48]
    mov x9, #0
    str x9, [sp, #56]
    adrp x14, _lb_text_e3aa14db8587@PAGE
    add x14, x14, _lb_text_e3aa14db8587@PAGEOFF
    str x14, [sp, #64]
    movz x9, #13
    str x9, [sp, #72]
    adrp x14, _lb_text_1ef6ff9e299b@PAGE
    add x14, x14, _lb_text_1ef6ff9e299b@PAGEOFF
    str x14, [sp, #80]
    movz x9, #13
    str x9, [sp, #88]
    adrp x14, _lb_text_e0759884592f@PAGE
    add x14, x14, _lb_text_e0759884592f@PAGEOFF
    str x14, [sp, #96]
    movz x9, #13
    str x9, [sp, #104]
    adrp x14, _lb_text_545a3bf64ded@PAGE
    add x14, x14, _lb_text_545a3bf64ded@PAGEOFF
    str x14, [sp, #112]
    movz x9, #13
    str x9, [sp, #120]
    adrp x14, _lb_recipe_11mode_extras@PAGE
    add x14, x14, _lb_recipe_11mode_extras@PAGEOFF
    sub x10, x29, #128
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
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x14, #96]
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x14, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.subsections_via_symbols
