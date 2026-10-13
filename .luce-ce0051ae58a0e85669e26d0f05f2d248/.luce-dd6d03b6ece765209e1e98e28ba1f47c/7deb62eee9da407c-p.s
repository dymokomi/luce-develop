    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_recipe_12mode_spacing_0init
_lb_recipe_12mode_spacing_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L8d491ae27980_k0
    adrp x14, _lb_recipe_12mode_spacing@PAGE
    add x14, x14, _lb_recipe_12mode_spacing@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L8d491ae27980_k0:
    .quad 4634204016564240384


    .p2align 2
    .globl _lb_codes_invalid_0init
_lb_codes_invalid_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_codes_invalid@PAGE
    add x14, x14, _lb_codes_invalid@PAGEOFF
    movz x9, #1
    movk x9, #52148, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_settings_invalid_0init
_lb_settings_invalid_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_codes_invalid@PAGE
    add x14, x14, _lb_codes_invalid@PAGEOFF
    ldr w14, [x14]
    adrp x15, _lb_settings_invalid@PAGE
    add x15, x15, _lb_settings_invalid@PAGEOFF
    str w14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_settings_11curve_names_0init
_lb_settings_11curve_names_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    adrp x14, _lb_text_73caa79d09e5@PAGE
    add x14, x14, _lb_text_73caa79d09e5@PAGEOFF
    str x14, [sp, #0]
    movz x9, #9
    str x9, [sp, #8]
    adrp x14, _lb_text_1e7ce854b686@PAGE
    add x14, x14, _lb_text_1e7ce854b686@PAGEOFF
    str x14, [sp, #16]
    movz x9, #9
    str x9, [sp, #24]
    adrp x14, _lb_text_f0cc63c24b8b@PAGE
    add x14, x14, _lb_text_f0cc63c24b8b@PAGEOFF
    str x14, [sp, #32]
    movz x9, #11
    str x9, [sp, #40]
    adrp x14, _lb_text_a882e7fbb232@PAGE
    add x14, x14, _lb_text_a882e7fbb232@PAGEOFF
    str x14, [sp, #48]
    movz x9, #10
    str x9, [sp, #56]
    adrp x14, _lb_text_e14b2bff692d@PAGE
    add x14, x14, _lb_text_e14b2bff692d@PAGEOFF
    str x14, [sp, #64]
    movz x9, #10
    str x9, [sp, #72]
    adrp x14, _lb_settings_11curve_names@PAGE
    add x14, x14, _lb_settings_11curve_names@PAGEOFF
    sub x10, x29, #80
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_14negative_gamma_0init
_lb_10film_print_14negative_gamma_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lb1d6d24ffdbd_k0
    adrp x14, _lb_10film_print_14negative_gamma@PAGE
    add x14, x14, _lb_10film_print_14negative_gamma@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb1d6d24ffdbd_k0:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_10film_print_14lad_below_grey_0init
_lb_10film_print_14lad_below_grey_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L770fe7fb5636_k0
    adrp x14, _lb_10film_print_14lad_below_grey@PAGE
    add x14, x14, _lb_10film_print_14lad_below_grey@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L770fe7fb5636_k0:
    .quad 4587366580439587226


    .p2align 2
    .globl _lb_10film_print_15projector_flare_0init
_lb_10film_print_15projector_flare_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L3ece01f8ff15_k0
    adrp x14, _lb_10film_print_15projector_flare@PAGE
    add x14, x14, _lb_10film_print_15projector_flare@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L3ece01f8ff15_k0:
    .quad 4566758108544739836


    .p2align 2
    .globl _lb_10film_print_16projector_kelvin_0init
_lb_10film_print_16projector_kelvin_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lae4e266cd8dc_k0
    adrp x14, _lb_10film_print_16projector_kelvin@PAGE
    add x14, x14, _lb_10film_print_16projector_kelvin@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lae4e266cd8dc_k0:
    .quad 4662879279816638464


    .p2align 2
    .globl _lb_10film_print_8most_dye_0init
_lb_10film_print_8most_dye_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #10.0000000
    adrp x14, _lb_10film_print_8most_dye@PAGE
    add x14, x14, _lb_10film_print_8most_dye@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_16base_reflectance_0init
_lb_10film_print_16base_reflectance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L45ba5224f700_k0
    adrp x14, _lb_10film_print_16base_reflectance@PAGE
    add x14, x14, _lb_10film_print_16base_reflectance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L45ba5224f700_k0:
    .quad 4606281698874543309


    .p2align 2
    .globl _lb_10film_print_12surface_seen_0init
_lb_10film_print_12surface_seen_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L7d72564100df_k0
    adrp x14, _lb_10film_print_12surface_seen@PAGE
    add x14, x14, _lb_10film_print_12surface_seen@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L7d72564100df_k0:
    .quad 4562254508917369340


    .p2align 2
    .globl _lb_10film_print_13gelatin_index_0init
_lb_10film_print_13gelatin_index_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #1.5000000
    adrp x14, _lb_10film_print_13gelatin_index@PAGE
    add x14, x14, _lb_10film_print_13gelatin_index@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_15reflection_most_0init
_lb_10film_print_15reflection_most_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #6.0000000
    adrp x14, _lb_10film_print_15reflection_most@PAGE
    add x14, x14, _lb_10film_print_15reflection_most@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_built_0init
_lb_10film_print_built_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_10film_print_built@PAGE
    add x14, x14, _lb_10film_print_built@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_12dye_transfer_0init
_lb_10film_print_12dye_transfer_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_10film_print_12dye_transfer@PAGE
    add x14, x14, _lb_10film_print_12dye_transfer@PAGEOFF
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_print_20print_silver_density_0init
_lb_10film_print_20print_silver_density_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L4af3a7d39b62_k0
    adrp x14, _lb_10film_print_20print_silver_density@PAGE
    add x14, x14, _lb_10film_print_20print_silver_density@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L4af3a7d39b62_k0:
    .quad 4601778099247172813


    .p2align 2
    .globl _lb_10film_paper_14negative_gamma_0init
_lb_10film_paper_14negative_gamma_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L5a872810e0b2_k0
    adrp x14, _lb_10film_paper_14negative_gamma@PAGE
    add x14, x14, _lb_10film_paper_14negative_gamma@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L5a872810e0b2_k0:
    .quad 4603579539098121011


    .p2align 2
    .globl _lb_10film_paper_12grey_density_0init
_lb_10film_paper_12grey_density_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lf01b42b674f4_k0
    adrp x14, _lb_10film_paper_12grey_density@PAGE
    add x14, x14, _lb_10film_paper_12grey_density@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lf01b42b674f4_k0:
    .quad 4604480259023595110


    .p2align 2
    .globl _lb_10film_paper_13viewing_flare_0init
_lb_10film_paper_13viewing_flare_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L717160cc5f6c_k0
    adrp x14, _lb_10film_paper_13viewing_flare@PAGE
    add x14, x14, _lb_10film_paper_13viewing_flare@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L717160cc5f6c_k0:
    .quad 4576918229304087675


    .p2align 2
    .globl _lb_10film_paper_callier_0init
_lb_10film_paper_callier_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L381de993e2ee_k0
    adrp x14, _lb_10film_paper_callier@PAGE
    add x14, x14, _lb_10film_paper_callier@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L381de993e2ee_k0:
    .quad 4608533498688228557


    .p2align 2
    .globl _lb_view_10shaper_low_0init
_lb_view_10shaper_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #-12.0000000
    adrp x14, _lb_view_10shaper_low@PAGE
    add x14, x14, _lb_view_10shaper_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_view_11shaper_high_0init
_lb_view_11shaper_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #12.0000000
    adrp x14, _lb_view_11shaper_high@PAGE
    add x14, x14, _lb_view_11shaper_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_view_9aces_lift_0init
_lb_view_9aces_lift_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #2.0000000
    adrp x14, _lb_view_9aces_lift@PAGE
    add x14, x14, _lb_view_9aces_lift@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_view_13squeeze_scale_0init
_lb_view_13squeeze_scale_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L27cc40933318_k0
    adrp x14, _lb_view_13squeeze_scale@PAGE
    add x14, x14, _lb_view_13squeeze_scale@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L27cc40933318_k0:
    .quad 4643211215818981376


    .p2align 2
    .globl _lb_view_12screen_white_0init
_lb_view_12screen_white_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, Lb385d95e14a6_k0
    adrp x14, _lb_view_12screen_white@PAGE
    add x14, x14, _lb_view_12screen_white@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
Lb385d95e14a6_k0:
    .quad 4631952216750555136


    .p2align 2
    .globl _lb_view_8room_lux_0init
_lb_view_8room_lux_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L9c318b76d246_k0
    adrp x14, _lb_view_8room_lux@PAGE
    add x14, x14, _lb_view_8room_lux@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L9c318b76d246_k0:
    .quad 4647503709213818880


    .p2align 2
    .globl _lb_view_13display_white_0init
_lb_view_13display_white_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L6098631a40d1_k0
    adrp x14, _lb_view_13display_white@PAGE
    add x14, x14, _lb_view_13display_white@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L6098631a40d1_k0:
    .quad 4636737291354636288


    .p2align 2
    .globl _lb_view_23paper_white_reflectance_0init
_lb_view_23paper_white_reflectance_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L61b8049db88e_k0
    adrp x14, _lb_view_23paper_white_reflectance@PAGE
    add x14, x14, _lb_view_23paper_white_reflectance@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L61b8049db88e_k0:
    .quad 4606281698874543309


    .p2align 2
    .globl _lb_10film_model_7log_low_0init
_lb_10film_model_7log_low_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #-4.5000000
    adrp x14, _lb_10film_model_7log_low@PAGE
    add x14, x14, _lb_10film_model_7log_low@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_8log_high_0init
_lb_10film_model_8log_high_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    fmov d24, #2.5000000
    adrp x14, _lb_10film_model_8log_high@PAGE
    add x14, x14, _lb_10film_model_8log_high@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_10film_model_15lightbox_kelvin_0init
_lb_10film_model_15lightbox_kelvin_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    ldr d24, L777a84c53829_k0
    adrp x14, _lb_10film_model_15lightbox_kelvin@PAGE
    add x14, x14, _lb_10film_model_15lightbox_kelvin@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
    .p2align 3
L777a84c53829_k0:
    .quad 4662219572839972864


    .p2align 2
    .globl _lb_18luce_raster_errors_invalid_0init
_lb_18luce_raster_errors_invalid_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_18luce_raster_errors_invalid@PAGE
    add x14, x14, _lb_18luce_raster_errors_invalid@PAGEOFF
    movz x9, #200
    movk x9, #50391, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_18luce_raster_errors_unsupported_0init
_lb_18luce_raster_errors_unsupported_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_18luce_raster_errors_unsupported@PAGE
    add x14, x14, _lb_18luce_raster_errors_unsupported@PAGEOFF
    movz x9, #201
    movk x9, #50391, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_18luce_raster_errors_limit_0init
_lb_18luce_raster_errors_limit_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_18luce_raster_errors_limit@PAGE
    add x14, x14, _lb_18luce_raster_errors_limit@PAGEOFF
    movz x9, #202
    movk x9, #50391, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_18luce_raster_errors_corrupt_0init
_lb_18luce_raster_errors_corrupt_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x14, _lb_18luce_raster_errors_corrupt@PAGE
    add x14, x14, _lb_18luce_raster_errors_corrupt@PAGEOFF
    movz x9, #203
    movk x9, #50391, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_11nikon_crops_0init
_lb_12luce_raw_raw_11nikon_crops_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    adrp x14, _lb_text_b139b4fc019b@PAGE
    add x14, x14, _lb_text_b139b4fc019b@PAGEOFF
    str x14, [sp, #0]
    movz x9, #2
    str x9, [sp, #8]
    movz x9, #2
    strb w9, [sp, #16]
    movz x9, #2
    strb w9, [sp, #17]
    mov x9, #0
    strh w9, [sp, #18]
    mov x9, #0
    str w9, [sp, #20]
    adrp x14, _lb_text_306ab07182d4@PAGE
    add x14, x14, _lb_text_306ab07182d4@PAGEOFF
    str x14, [sp, #24]
    movz x9, #3
    str x9, [sp, #32]
    movz x9, #2
    strb w9, [sp, #40]
    movz x9, #2
    strb w9, [sp, #41]
    mov x9, #0
    strh w9, [sp, #42]
    mov x9, #0
    str w9, [sp, #44]
    adrp x14, _lb_text_0901f77e5e5e@PAGE
    add x14, x14, _lb_text_0901f77e5e5e@PAGEOFF
    str x14, [sp, #48]
    movz x9, #4
    str x9, [sp, #56]
    movz x9, #2
    strb w9, [sp, #64]
    movz x9, #2
    strb w9, [sp, #65]
    mov x9, #0
    strh w9, [sp, #66]
    mov x9, #0
    str w9, [sp, #68]
    adrp x14, _lb_text_5e271af3d31d@PAGE
    add x14, x14, _lb_text_5e271af3d31d@PAGEOFF
    str x14, [sp, #72]
    movz x9, #5
    str x9, [sp, #80]
    movz x9, #22
    strb w9, [sp, #88]
    movz x9, #6
    strb w9, [sp, #89]
    mov x9, #0
    strh w9, [sp, #90]
    mov x9, #0
    str w9, [sp, #92]
    adrp x14, _lb_text_a6007a594900@PAGE
    add x14, x14, _lb_text_a6007a594900@PAGEOFF
    str x14, [sp, #96]
    movz x9, #5
    str x9, [sp, #104]
    movz x9, #42
    strb w9, [sp, #112]
    mov x9, #0
    strb w9, [sp, #113]
    mov x9, #0
    strh w9, [sp, #114]
    mov x9, #0
    str w9, [sp, #116]
    adrp x14, _lb_text_f3f972e49a12@PAGE
    add x14, x14, _lb_text_f3f972e49a12@PAGEOFF
    str x14, [sp, #120]
    movz x9, #3
    str x9, [sp, #128]
    movz x9, #42
    strb w9, [sp, #136]
    mov x9, #0
    strb w9, [sp, #137]
    mov x9, #0
    strh w9, [sp, #138]
    mov x9, #0
    str w9, [sp, #140]
    adrp x14, _lb_text_b53a394f1696@PAGE
    add x14, x14, _lb_text_b53a394f1696@PAGEOFF
    str x14, [sp, #144]
    movz x9, #5
    str x9, [sp, #152]
    movz x9, #44
    strb w9, [sp, #160]
    mov x9, #0
    strb w9, [sp, #161]
    mov x9, #0
    strh w9, [sp, #162]
    mov x9, #0
    str w9, [sp, #164]
    adrp x14, _lb_text_d0a6bc022636@PAGE
    add x14, x14, _lb_text_d0a6bc022636@PAGEOFF
    str x14, [sp, #168]
    movz x9, #5
    str x9, [sp, #176]
    movz x9, #44
    strb w9, [sp, #184]
    mov x9, #0
    strb w9, [sp, #185]
    mov x9, #0
    strh w9, [sp, #186]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_6b417ee20866@PAGE
    add x14, x14, _lb_text_6b417ee20866@PAGEOFF
    str x14, [sp, #192]
    movz x9, #9
    str x9, [sp, #200]
    movz x9, #44
    strb w9, [sp, #208]
    mov x9, #0
    strb w9, [sp, #209]
    mov x9, #0
    strh w9, [sp, #210]
    mov x9, #0
    str w9, [sp, #212]
    adrp x14, _lb_text_5a5631d3c5f4@PAGE
    add x14, x14, _lb_text_5a5631d3c5f4@PAGEOFF
    str x14, [sp, #216]
    movz x9, #5
    str x9, [sp, #224]
    movz x9, #46
    strb w9, [sp, #232]
    mov x9, #0
    strb w9, [sp, #233]
    mov x9, #0
    strh w9, [sp, #234]
    mov x9, #0
    str w9, [sp, #236]
    adrp x14, _lb_text_7a0e5f9f2dee@PAGE
    add x14, x14, _lb_text_7a0e5f9f2dee@PAGEOFF
    str x14, [sp, #240]
    movz x9, #4
    str x9, [sp, #248]
    movz x9, #46
    strb w9, [sp, #256]
    mov x9, #0
    strb w9, [sp, #257]
    mov x9, #0
    strh w9, [sp, #258]
    mov x9, #0
    str w9, [sp, #260]
    adrp x14, _lb_text_7418c642cc08@PAGE
    add x14, x14, _lb_text_7418c642cc08@PAGEOFF
    str x14, [sp, #264]
    movz x9, #4
    str x9, [sp, #272]
    movz x9, #46
    strb w9, [sp, #280]
    mov x9, #0
    strb w9, [sp, #281]
    mov x9, #0
    strh w9, [sp, #282]
    mov x9, #0
    str w9, [sp, #284]
    adrp x14, _lb_text_b98f87159f20@PAGE
    add x14, x14, _lb_text_b98f87159f20@PAGEOFF
    str x14, [sp, #288]
    movz x9, #4
    str x9, [sp, #296]
    movz x9, #46
    strb w9, [sp, #304]
    mov x9, #0
    strb w9, [sp, #305]
    mov x9, #0
    strh w9, [sp, #306]
    mov x9, #0
    str w9, [sp, #308]
    adrp x14, _lb_text_fc2abc90ef26@PAGE
    add x14, x14, _lb_text_fc2abc90ef26@PAGEOFF
    str x14, [sp, #312]
    movz x9, #5
    str x9, [sp, #320]
    movz x9, #46
    strb w9, [sp, #328]
    mov x9, #0
    strb w9, [sp, #329]
    mov x9, #0
    strh w9, [sp, #330]
    mov x9, #0
    str w9, [sp, #332]
    adrp x14, _lb_text_d4e5043f763c@PAGE
    add x14, x14, _lb_text_d4e5043f763c@PAGEOFF
    str x14, [sp, #336]
    movz x9, #2
    str x9, [sp, #344]
    movz x9, #50
    strb w9, [sp, #352]
    movz x9, #2
    strb w9, [sp, #353]
    mov x9, #0
    strh w9, [sp, #354]
    mov x9, #0
    str w9, [sp, #356]
    adrp x14, _lb_text_fe2f58d0080b@PAGE
    add x14, x14, _lb_text_fe2f58d0080b@PAGEOFF
    str x14, [sp, #360]
    movz x9, #2
    str x9, [sp, #368]
    movz x9, #50
    strb w9, [sp, #376]
    movz x9, #2
    strb w9, [sp, #377]
    mov x9, #0
    strh w9, [sp, #378]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_text_4ac771799011@PAGE
    add x14, x14, _lb_text_4ac771799011@PAGEOFF
    str x14, [sp, #384]
    movz x9, #4
    str x9, [sp, #392]
    movz x9, #32
    strb w9, [sp, #400]
    mov x9, #0
    strb w9, [sp, #401]
    mov x9, #0
    strh w9, [sp, #402]
    mov x9, #0
    str w9, [sp, #404]
    adrp x14, _lb_text_5f2ad31f7f91@PAGE
    add x14, x14, _lb_text_5f2ad31f7f91@PAGEOFF
    str x14, [sp, #408]
    movz x9, #5
    str x9, [sp, #416]
    movz x9, #32
    strb w9, [sp, #424]
    mov x9, #0
    strb w9, [sp, #425]
    mov x9, #0
    strh w9, [sp, #426]
    mov x9, #0
    str w9, [sp, #428]
    adrp x14, _lb_12luce_raw_raw_11nikon_crops@PAGE
    add x14, x14, _lb_12luce_raw_raw_11nikon_crops@PAGEOFF
    sub x10, x29, #432
    mov x0, x14
    mov x1, x10
    movz x2, #432
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_12pentax_crops_0init
_lb_12luce_raw_raw_12pentax_crops_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    adrp x14, _lb_text_f7440552cf49@PAGE
    add x14, x14, _lb_text_f7440552cf49@PAGEOFF
    str x14, [sp, #0]
    movz x9, #12
    str x9, [sp, #8]
    movz x9, #6304
    strh w9, [sp, #16]
    movz x9, #26
    strh w9, [sp, #18]
    movz x9, #34
    strh w9, [sp, #20]
    movz x9, #6224
    strh w9, [sp, #22]
    movz x9, #4160
    strh w9, [sp, #24]
    mov x9, #0
    strh w9, [sp, #26]
    mov x9, #0
    str w9, [sp, #28]
    adrp x14, _lb_text_3659e8ebbf3a@PAGE
    add x14, x14, _lb_text_3659e8ebbf3a@PAGEOFF
    str x14, [sp, #32]
    movz x9, #3
    str x9, [sp, #40]
    movz x9, #6080
    strh w9, [sp, #48]
    movz x9, #4
    strh w9, [sp, #50]
    mov x9, #0
    strh w9, [sp, #52]
    movz x9, #6040
    strh w9, [sp, #54]
    mov x9, #0
    strh w9, [sp, #56]
    mov x9, #0
    strh w9, [sp, #58]
    mov x9, #0
    str w9, [sp, #60]
    adrp x14, _lb_text_66c325558af8@PAGE
    add x14, x14, _lb_text_66c325558af8@PAGEOFF
    str x14, [sp, #64]
    movz x9, #4
    str x9, [sp, #72]
    movz x9, #6080
    strh w9, [sp, #80]
    movz x9, #60
    strh w9, [sp, #82]
    movz x9, #32
    strh w9, [sp, #84]
    movz x9, #6020
    strh w9, [sp, #86]
    movz x9, #4016
    strh w9, [sp, #88]
    mov x9, #0
    strh w9, [sp, #90]
    mov x9, #0
    str w9, [sp, #92]
    adrp x14, _lb_text_1fc303ed2a3a@PAGE
    add x14, x14, _lb_text_1fc303ed2a3a@PAGEOFF
    str x14, [sp, #96]
    movz x9, #2
    str x9, [sp, #104]
    movz x9, #6080
    strh w9, [sp, #112]
    movz x9, #56
    strh w9, [sp, #114]
    movz x9, #28
    strh w9, [sp, #116]
    movz x9, #6024
    strh w9, [sp, #118]
    movz x9, #4024
    strh w9, [sp, #120]
    mov x9, #0
    strh w9, [sp, #122]
    mov x9, #0
    str w9, [sp, #124]
    adrp x14, _lb_text_39f9d1b9cc95@PAGE
    add x14, x14, _lb_text_39f9d1b9cc95@PAGEOFF
    str x14, [sp, #128]
    movz x9, #2
    str x9, [sp, #136]
    movz x9, #6112
    strh w9, [sp, #144]
    movz x9, #54
    strh w9, [sp, #146]
    movz x9, #28
    strh w9, [sp, #148]
    movz x9, #6028
    strh w9, [sp, #150]
    mov x9, #0
    strh w9, [sp, #152]
    mov x9, #0
    strh w9, [sp, #154]
    mov x9, #0
    str w9, [sp, #156]
    adrp x14, _lb_text_1013462d5f39@PAGE
    add x14, x14, _lb_text_1013462d5f39@PAGEOFF
    str x14, [sp, #160]
    movz x9, #3
    str x9, [sp, #168]
    movz x9, #7392
    strh w9, [sp, #176]
    movz x9, #6
    strh w9, [sp, #178]
    movz x9, #18
    strh w9, [sp, #180]
    movz x9, #7376
    strh w9, [sp, #182]
    mov x9, #0
    strh w9, [sp, #184]
    mov x9, #0
    strh w9, [sp, #186]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_3a95d93daa46@PAGE
    add x14, x14, _lb_text_3a95d93daa46@PAGEOFF
    str x14, [sp, #192]
    movz x9, #3
    str x9, [sp, #200]
    movz x9, #4992
    strh w9, [sp, #208]
    movz x9, #10
    strh w9, [sp, #210]
    mov x9, #0
    strh w9, [sp, #212]
    movz x9, #4950
    strh w9, [sp, #214]
    mov x9, #0
    strh w9, [sp, #216]
    mov x9, #0
    strh w9, [sp, #218]
    mov x9, #0
    str w9, [sp, #220]
    adrp x14, _lb_text_d8feee1d0d3a@PAGE
    add x14, x14, _lb_text_d8feee1d0d3a@PAGEOFF
    str x14, [sp, #224]
    movz x9, #3
    str x9, [sp, #232]
    movz x9, #4352
    strh w9, [sp, #240]
    mov x9, #0
    strh w9, [sp, #242]
    mov x9, #0
    strh w9, [sp, #244]
    movz x9, #4309
    strh w9, [sp, #246]
    mov x9, #0
    strh w9, [sp, #248]
    mov x9, #0
    strh w9, [sp, #250]
    mov x9, #0
    str w9, [sp, #252]
    adrp x14, _lb_text_5ee0040aba3f@PAGE
    add x14, x14, _lb_text_5ee0040aba3f@PAGEOFF
    str x14, [sp, #256]
    movz x9, #3
    str x9, [sp, #264]
    movz x9, #4352
    strh w9, [sp, #272]
    mov x9, #0
    strh w9, [sp, #274]
    mov x9, #0
    strh w9, [sp, #276]
    movz x9, #4309
    strh w9, [sp, #278]
    mov x9, #0
    strh w9, [sp, #280]
    mov x9, #0
    strh w9, [sp, #282]
    mov x9, #0
    str w9, [sp, #284]
    adrp x14, _lb_text_06293e02b546@PAGE
    add x14, x14, _lb_text_06293e02b546@PAGEOFF
    str x14, [sp, #288]
    movz x9, #3
    str x9, [sp, #296]
    movz x9, #4736
    strh w9, [sp, #304]
    mov x9, #0
    strh w9, [sp, #306]
    movz x9, #2
    strh w9, [sp, #308]
    movz x9, #4684
    strh w9, [sp, #310]
    movz x9, #3122
    strh w9, [sp, #312]
    mov x9, #0
    strh w9, [sp, #314]
    mov x9, #0
    str w9, [sp, #316]
    adrp x14, _lb_text_e46cbc37cb19@PAGE
    add x14, x14, _lb_text_e46cbc37cb19@PAGEOFF
    str x14, [sp, #320]
    movz x9, #4
    str x9, [sp, #328]
    movz x9, #4864
    strh w9, [sp, #336]
    mov x9, #0
    strh w9, [sp, #338]
    mov x9, #0
    strh w9, [sp, #340]
    movz x9, #4688
    strh w9, [sp, #342]
    movz x9, #3124
    strh w9, [sp, #344]
    mov x9, #0
    strh w9, [sp, #346]
    mov x9, #0
    str w9, [sp, #348]
    adrp x14, _lb_text_c7770b286119@PAGE
    add x14, x14, _lb_text_c7770b286119@PAGEOFF
    str x14, [sp, #352]
    movz x9, #4
    str x9, [sp, #360]
    movz x9, #3936
    strh w9, [sp, #368]
    mov x9, #0
    strh w9, [sp, #370]
    mov x9, #0
    strh w9, [sp, #372]
    movz x9, #3896
    strh w9, [sp, #374]
    movz x9, #2616
    strh w9, [sp, #376]
    mov x9, #0
    strh w9, [sp, #378]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_12luce_raw_raw_12pentax_crops@PAGE
    add x14, x14, _lb_12luce_raw_raw_12pentax_crops@PAGEOFF
    sub x10, x29, #384
    mov x0, x14
    mov x1, x10
    movz x2, #384
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_12canon_colors_0init
_lb_12luce_raw_raw_12canon_colors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #9536
    sub sp, sp, x16
    adrp x14, _lb_text_0f4b36c77ce0@PAGE
    add x14, x14, _lb_text_0f4b36c77ce0@PAGEOFF
    str x14, [sp, #0]
    movz x9, #7
    str x9, [sp, #8]
    mov x9, #0
    str w9, [sp, #16]
    mov x9, #0
    str w9, [sp, #20]
    movz x9, #9900
    str w9, [sp, #24]
    movn x9, #2770
    str w9, [sp, #28]
    movn x9, #1323
    str w9, [sp, #32]
    movn x9, #7071
    str w9, [sp, #36]
    movz x9, #14229
    str w9, [sp, #40]
    movz x9, #3140
    str w9, [sp, #44]
    movn x9, #2789
    str w9, [sp, #48]
    movz x9, #3344
    str w9, [sp, #52]
    movz x9, #8861
    str w9, [sp, #56]
    mov x9, #0
    str w9, [sp, #60]
    adrp x14, _lb_text_eb02d3728db5@PAGE
    add x14, x14, _lb_text_eb02d3728db5@PAGEOFF
    str x14, [sp, #64]
    movz x9, #7
    str x9, [sp, #72]
    mov x9, #0
    str w9, [sp, #80]
    movz x9, #4000
    str w9, [sp, #84]
    movz x9, #6211
    str w9, [sp, #88]
    movn x9, #1357
    str w9, [sp, #92]
    movn x9, #895
    str w9, [sp, #96]
    movn x9, #8556
    str w9, [sp, #100]
    movz x9, #15766
    str w9, [sp, #104]
    movz x9, #3012
    str w9, [sp, #108]
    movn x9, #3000
    str w9, [sp, #112]
    movz x9, #3507
    str w9, [sp, #116]
    movz x9, #8567
    str w9, [sp, #120]
    mov x9, #0
    str w9, [sp, #124]
    adrp x14, _lb_text_15b779e1151e@PAGE
    add x14, x14, _lb_text_15b779e1151e@PAGEOFF
    str x14, [sp, #128]
    movz x9, #7
    str x9, [sp, #136]
    mov x9, #0
    str w9, [sp, #144]
    movz x9, #15510
    str w9, [sp, #148]
    movz x9, #6250
    str w9, [sp, #152]
    movn x9, #710
    str w9, [sp, #156]
    movn x9, #807
    str w9, [sp, #160]
    movn x9, #5152
    str w9, [sp, #164]
    movz x9, #12794
    str w9, [sp, #168]
    movz x9, #2636
    str w9, [sp, #172]
    movn x9, #1248
    str w9, [sp, #176]
    movz x9, #2198
    str w9, [sp, #180]
    movz x9, #5610
    str w9, [sp, #184]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_6780b045cd1f@PAGE
    add x14, x14, _lb_text_6780b045cd1f@PAGEOFF
    str x14, [sp, #192]
    movz x9, #14
    str x9, [sp, #200]
    mov x9, #0
    str w9, [sp, #208]
    mov x9, #0
    str w9, [sp, #212]
    movz x9, #6446
    str w9, [sp, #216]
    movn x9, #365
    str w9, [sp, #220]
    movn x9, #863
    str w9, [sp, #224]
    movn x9, #4435
    str w9, [sp, #228]
    movz x9, #12204
    str w9, [sp, #232]
    movz x9, #2513
    str w9, [sp, #236]
    movn x9, #951
    str w9, [sp, #240]
    movz x9, #2496
    str w9, [sp, #244]
    movz x9, #6348
    str w9, [sp, #248]
    mov x9, #0
    str w9, [sp, #252]
    adrp x14, _lb_text_bc54562e1171@PAGE
    add x14, x14, _lb_text_bc54562e1171@PAGEOFF
    str x14, [sp, #256]
    movz x9, #15
    str x9, [sp, #264]
    mov x9, #0
    str w9, [sp, #272]
    movz x9, #15488
    str w9, [sp, #276]
    movz x9, #6722
    str w9, [sp, #280]
    movn x9, #634
    str w9, [sp, #284]
    movn x9, #962
    str w9, [sp, #288]
    movn x9, #4286
    str w9, [sp, #292]
    movz x9, #12460
    str w9, [sp, #296]
    movz x9, #2028
    str w9, [sp, #300]
    movn x9, #907
    str w9, [sp, #304]
    movz x9, #2162
    str w9, [sp, #308]
    movz x9, #5668
    str w9, [sp, #312]
    mov x9, #0
    str w9, [sp, #316]
    adrp x14, _lb_text_20dc3d4ed76c@PAGE
    add x14, x14, _lb_text_20dc3d4ed76c@PAGEOFF
    str x14, [sp, #320]
    movz x9, #14
    str x9, [sp, #328]
    mov x9, #0
    str w9, [sp, #336]
    movz x9, #15600
    str w9, [sp, #340]
    movz x9, #4716
    str w9, [sp, #344]
    movz x9, #603
    str w9, [sp, #348]
    movn x9, #829
    str w9, [sp, #352]
    movn x9, #7797
    str w9, [sp, #356]
    movz x9, #15474
    str w9, [sp, #360]
    movz x9, #2480
    str w9, [sp, #364]
    movn x9, #1495
    str w9, [sp, #368]
    movz x9, #1937
    str w9, [sp, #372]
    movz x9, #6651
    str w9, [sp, #376]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_text_c8be1cd02e5a@PAGE
    add x14, x14, _lb_text_c8be1cd02e5a@PAGEOFF
    str x14, [sp, #384]
    movz x9, #6
    str x9, [sp, #392]
    mov x9, #0
    str w9, [sp, #400]
    movz x9, #3692
    str w9, [sp, #404]
    movz x9, #6347
    str w9, [sp, #408]
    movn x9, #478
    str w9, [sp, #412]
    movn x9, #971
    str w9, [sp, #416]
    movn x9, #8296
    str w9, [sp, #420]
    movz x9, #15954
    str w9, [sp, #424]
    movz x9, #2480
    str w9, [sp, #428]
    movn x9, #1967
    str w9, [sp, #432]
    movz x9, #2131
    str w9, [sp, #436]
    movz x9, #7649
    str w9, [sp, #440]
    mov x9, #0
    str w9, [sp, #444]
    adrp x14, _lb_text_2f565dc33c6b@PAGE
    add x14, x14, _lb_text_2f565dc33c6b@PAGEOFF
    str x14, [sp, #448]
    movz x9, #14
    str x9, [sp, #456]
    mov x9, #0
    str w9, [sp, #464]
    movz x9, #14558
    str w9, [sp, #468]
    movz x9, #6875
    str w9, [sp, #472]
    movn x9, #969
    str w9, [sp, #476]
    movn x9, #931
    str w9, [sp, #480]
    movn x9, #4690
    str w9, [sp, #484]
    movz x9, #12459
    str w9, [sp, #488]
    movz x9, #2501
    str w9, [sp, #492]
    movn x9, #873
    str w9, [sp, #496]
    movz x9, #1953
    str w9, [sp, #500]
    movz x9, #5809
    str w9, [sp, #504]
    mov x9, #0
    str w9, [sp, #508]
    adrp x14, _lb_text_18e4bcf044e8@PAGE
    add x14, x14, _lb_text_18e4bcf044e8@PAGEOFF
    str x14, [sp, #512]
    movz x9, #6
    str x9, [sp, #520]
    mov x9, #0
    str w9, [sp, #528]
    movz x9, #15490
    str w9, [sp, #532]
    movz x9, #7034
    str w9, [sp, #536]
    movn x9, #803
    str w9, [sp, #540]
    movn x9, #1013
    str w9, [sp, #544]
    movn x9, #4419
    str w9, [sp, #548]
    movz x9, #12564
    str w9, [sp, #552]
    movz x9, #2058
    str w9, [sp, #556]
    movn x9, #850
    str w9, [sp, #560]
    movz x9, #1994
    str w9, [sp, #564]
    movz x9, #5758
    str w9, [sp, #568]
    mov x9, #0
    str w9, [sp, #572]
    adrp x14, _lb_text_2c7bc0e1a011@PAGE
    add x14, x14, _lb_text_2c7bc0e1a011@PAGEOFF
    str x14, [sp, #576]
    movz x9, #7
    str x9, [sp, #584]
    mov x9, #0
    str w9, [sp, #592]
    mov x9, #0
    str w9, [sp, #596]
    movz x9, #7377
    str w9, [sp, #600]
    movn x9, #741
    str w9, [sp, #604]
    movn x9, #997
    str w9, [sp, #608]
    movn x9, #4234
    str w9, [sp, #612]
    movz x9, #11981
    str w9, [sp, #616]
    movz x9, #2549
    str w9, [sp, #620]
    movn x9, #672
    str w9, [sp, #624]
    movz x9, #1918
    str w9, [sp, #628]
    movz x9, #5538
    str w9, [sp, #632]
    mov x9, #0
    str w9, [sp, #636]
    adrp x14, _lb_text_d0c4648b6b2d@PAGE
    add x14, x14, _lb_text_d0c4648b6b2d@PAGEOFF
    str x14, [sp, #640]
    movz x9, #14
    str x9, [sp, #648]
    mov x9, #0
    str w9, [sp, #656]
    movz x9, #13584
    str w9, [sp, #660]
    movz x9, #7268
    str w9, [sp, #664]
    movn x9, #1081
    str w9, [sp, #668]
    movn x9, #968
    str w9, [sp, #672]
    movn x9, #4185
    str w9, [sp, #676]
    movz x9, #11839
    str w9, [sp, #680]
    movz x9, #2663
    str w9, [sp, #684]
    movn x9, #824
    str w9, [sp, #688]
    movz x9, #2029
    str w9, [sp, #692]
    movz x9, #5839
    str w9, [sp, #696]
    mov x9, #0
    str w9, [sp, #700]
    adrp x14, _lb_text_f0c214e9db4e@PAGE
    add x14, x14, _lb_text_f0c214e9db4e@PAGEOFF
    str x14, [sp, #704]
    movz x9, #6
    str x9, [sp, #712]
    mov x9, #0
    str w9, [sp, #720]
    movz x9, #13584
    str w9, [sp, #724]
    movz x9, #6844
    str w9, [sp, #728]
    movn x9, #995
    str w9, [sp, #732]
    movn x9, #855
    str w9, [sp, #736]
    movn x9, #3875
    str w9, [sp, #740]
    movz x9, #11761
    str w9, [sp, #744]
    movz x9, #2396
    str w9, [sp, #748]
    movn x9, #592
    str w9, [sp, #752]
    movz x9, #1772
    str w9, [sp, #756]
    movz x9, #6198
    str w9, [sp, #760]
    mov x9, #0
    str w9, [sp, #764]
    adrp x14, _lb_text_cfdaecdd8f7c@PAGE
    add x14, x14, _lb_text_cfdaecdd8f7c@PAGEOFF
    str x14, [sp, #768]
    movz x9, #8
    str x9, [sp, #776]
    mov x9, #0
    str w9, [sp, #784]
    mov x9, #0
    str w9, [sp, #788]
    movz x9, #9079
    str w9, [sp, #792]
    movn x9, #1922
    str w9, [sp, #796]
    movn x9, #1235
    str w9, [sp, #800]
    movn x9, #4676
    str w9, [sp, #804]
    movz x9, #12454
    str w9, [sp, #808]
    movz x9, #2492
    str w9, [sp, #812]
    movn x9, #921
    str w9, [sp, #816]
    movz x9, #2319
    str w9, [sp, #820]
    movz x9, #5565
    str w9, [sp, #824]
    mov x9, #0
    str w9, [sp, #828]
    adrp x14, _lb_text_646d563c8ba8@PAGE
    add x14, x14, _lb_text_646d563c8ba8@PAGEOFF
    str x14, [sp, #832]
    movz x9, #8
    str x9, [sp, #840]
    mov x9, #0
    str w9, [sp, #848]
    mov x9, #0
    str w9, [sp, #852]
    movz x9, #6970
    str w9, [sp, #856]
    movn x9, #511
    str w9, [sp, #860]
    movn x9, #967
    str w9, [sp, #864]
    movn x9, #4424
    str w9, [sp, #868]
    movz x9, #12161
    str w9, [sp, #872]
    movz x9, #2553
    str w9, [sp, #876]
    movn x9, #738
    str w9, [sp, #880]
    movz x9, #1982
    str w9, [sp, #884]
    movz x9, #5601
    str w9, [sp, #888]
    mov x9, #0
    str w9, [sp, #892]
    adrp x14, _lb_text_7d378a19fb59@PAGE
    add x14, x14, _lb_text_7d378a19fb59@PAGEOFF
    str x14, [sp, #896]
    movz x9, #7
    str x9, [sp, #904]
    mov x9, #0
    str w9, [sp, #912]
    mov x9, #0
    str w9, [sp, #916]
    movz x9, #7457
    str w9, [sp, #920]
    movn x9, #670
    str w9, [sp, #924]
    movn x9, #936
    str w9, [sp, #928]
    movn x9, #4848
    str w9, [sp, #932]
    movz x9, #12495
    str w9, [sp, #936]
    movz x9, #2643
    str w9, [sp, #940]
    movn x9, #1212
    str w9, [sp, #944]
    movz x9, #2354
    str w9, [sp, #948]
    movz x9, #5492
    str w9, [sp, #952]
    mov x9, #0
    str w9, [sp, #956]
    adrp x14, _lb_text_fa8b434847b1@PAGE
    add x14, x14, _lb_text_fa8b434847b1@PAGEOFF
    str x14, [sp, #960]
    movz x9, #7
    str x9, [sp, #968]
    mov x9, #0
    str w9, [sp, #976]
    movz x9, #4000
    str w9, [sp, #980]
    movz x9, #8250
    str w9, [sp, #984]
    movn x9, #2043
    str w9, [sp, #988]
    movn x9, #1126
    str w9, [sp, #992]
    movn x9, #8091
    str w9, [sp, #996]
    movz x9, #15606
    str w9, [sp, #1000]
    movz x9, #2664
    str w9, [sp, #1004]
    movn x9, #2892
    str w9, [sp, #1008]
    movz x9, #3453
    str w9, [sp, #1012]
    movz x9, #8348
    str w9, [sp, #1016]
    mov x9, #0
    str w9, [sp, #1020]
    adrp x14, _lb_text_0274433af978@PAGE
    add x14, x14, _lb_text_0274433af978@PAGEOFF
    str x14, [sp, #1024]
    movz x9, #8
    str x9, [sp, #1032]
    mov x9, #0
    str w9, [sp, #1040]
    mov x9, #0
    str w9, [sp, #1044]
    movz x9, #9079
    str w9, [sp, #1048]
    movn x9, #1922
    str w9, [sp, #1052]
    movn x9, #1235
    str w9, [sp, #1056]
    movn x9, #4676
    str w9, [sp, #1060]
    movz x9, #12454
    str w9, [sp, #1064]
    movz x9, #2492
    str w9, [sp, #1068]
    movn x9, #921
    str w9, [sp, #1072]
    movz x9, #2319
    str w9, [sp, #1076]
    movz x9, #5565
    str w9, [sp, #1080]
    mov x9, #0
    str w9, [sp, #1084]
    adrp x14, _lb_text_493bf69bff04@PAGE
    add x14, x14, _lb_text_493bf69bff04@PAGEOFF
    str x14, [sp, #1088]
    movz x9, #8
    str x9, [sp, #1096]
    mov x9, #0
    str w9, [sp, #1104]
    mov x9, #0
    str w9, [sp, #1108]
    movz x9, #7377
    str w9, [sp, #1112]
    movn x9, #741
    str w9, [sp, #1116]
    movn x9, #997
    str w9, [sp, #1120]
    movn x9, #4234
    str w9, [sp, #1124]
    movz x9, #11981
    str w9, [sp, #1128]
    movz x9, #2549
    str w9, [sp, #1132]
    movn x9, #672
    str w9, [sp, #1136]
    movz x9, #1918
    str w9, [sp, #1140]
    movz x9, #5538
    str w9, [sp, #1144]
    mov x9, #0
    str w9, [sp, #1148]
    adrp x14, _lb_text_6cac4dfec2c8@PAGE
    add x14, x14, _lb_text_6cac4dfec2c8@PAGEOFF
    str x14, [sp, #1152]
    movz x9, #8
    str x9, [sp, #1160]
    mov x9, #0
    str w9, [sp, #1168]
    mov x9, #0
    str w9, [sp, #1172]
    movz x9, #14155
    str w9, [sp, #1176]
    movn x9, #5064
    str w9, [sp, #1180]
    movn x9, #1381
    str w9, [sp, #1184]
    movn x9, #6549
    str w9, [sp, #1188]
    movz x9, #14633
    str w9, [sp, #1192]
    movz x9, #2039
    str w9, [sp, #1196]
    movn x9, #1622
    str w9, [sp, #1200]
    movz x9, #1824
    str w9, [sp, #1204]
    movz x9, #6561
    str w9, [sp, #1208]
    mov x9, #0
    str w9, [sp, #1212]
    adrp x14, _lb_text_37c065cb8f41@PAGE
    add x14, x14, _lb_text_37c065cb8f41@PAGEOFF
    str x14, [sp, #1216]
    movz x9, #7
    str x9, [sp, #1224]
    mov x9, #0
    str w9, [sp, #1232]
    movz x9, #4095
    str w9, [sp, #1236]
    movz x9, #6599
    str w9, [sp, #1240]
    movn x9, #536
    str w9, [sp, #1244]
    movn x9, #890
    str w9, [sp, #1248]
    movn x9, #8070
    str w9, [sp, #1252]
    movz x9, #15783
    str w9, [sp, #1256]
    movz x9, #2424
    str w9, [sp, #1260]
    movn x9, #1982
    str w9, [sp, #1264]
    movz x9, #2234
    str w9, [sp, #1268]
    movz x9, #7462
    str w9, [sp, #1272]
    mov x9, #0
    str w9, [sp, #1276]
    adrp x14, _lb_text_b2c5b8e77284@PAGE
    add x14, x14, _lb_text_b2c5b8e77284@PAGEOFF
    str x14, [sp, #1280]
    movz x9, #7
    str x9, [sp, #1288]
    mov x9, #0
    str w9, [sp, #1296]
    mov x9, #0
    str w9, [sp, #1300]
    movz x9, #6257
    str w9, [sp, #1304]
    movn x9, #302
    str w9, [sp, #1308]
    movn x9, #999
    str w9, [sp, #1312]
    movn x9, #7879
    str w9, [sp, #1316]
    movz x9, #15621
    str w9, [sp, #1320]
    movz x9, #2396
    str w9, [sp, #1324]
    movn x9, #1713
    str w9, [sp, #1328]
    movz x9, #1904
    str w9, [sp, #1332]
    movz x9, #7046
    str w9, [sp, #1336]
    mov x9, #0
    str w9, [sp, #1340]
    adrp x14, _lb_text_6986c866b98d@PAGE
    add x14, x14, _lb_text_6986c866b98d@PAGEOFF
    str x14, [sp, #1344]
    movz x9, #7
    str x9, [sp, #1352]
    mov x9, #0
    str w9, [sp, #1360]
    movz x9, #16224
    str w9, [sp, #1364]
    movz x9, #6071
    str w9, [sp, #1368]
    movn x9, #746
    str w9, [sp, #1372]
    movn x9, #855
    str w9, [sp, #1376]
    movn x9, #7652
    str w9, [sp, #1380]
    movz x9, #15365
    str w9, [sp, #1384]
    movz x9, #2441
    str w9, [sp, #1388]
    movn x9, #2024
    str w9, [sp, #1392]
    movz x9, #2553
    str w9, [sp, #1396]
    movz x9, #7315
    str w9, [sp, #1400]
    mov x9, #0
    str w9, [sp, #1404]
    adrp x14, _lb_text_7c21cc20cf88@PAGE
    add x14, x14, _lb_text_7c21cc20cf88@PAGEOFF
    str x14, [sp, #1408]
    movz x9, #7
    str x9, [sp, #1416]
    mov x9, #0
    str w9, [sp, #1424]
    movz x9, #15763
    str w9, [sp, #1428]
    movz x9, #4920
    str w9, [sp, #1432]
    movz x9, #616
    str w9, [sp, #1436]
    movn x9, #592
    str w9, [sp, #1440]
    movn x9, #6492
    str w9, [sp, #1444]
    movz x9, #13964
    str w9, [sp, #1448]
    movz x9, #2784
    str w9, [sp, #1452]
    movn x9, #1773
    str w9, [sp, #1456]
    movz x9, #3178
    str w9, [sp, #1460]
    movz x9, #7005
    str w9, [sp, #1464]
    mov x9, #0
    str w9, [sp, #1468]
    adrp x14, _lb_text_cb9fdf0b5048@PAGE
    add x14, x14, _lb_text_cb9fdf0b5048@PAGEOFF
    str x14, [sp, #1472]
    movz x9, #8
    str x9, [sp, #1480]
    mov x9, #0
    str w9, [sp, #1488]
    movz x9, #12279
    str w9, [sp, #1492]
    movz x9, #17492
    str w9, [sp, #1496]
    movn x9, #7239
    str w9, [sp, #1500]
    movn x9, #2022
    str w9, [sp, #1504]
    movn x9, #1790
    str w9, [sp, #1508]
    movz x9, #10323
    str w9, [sp, #1512]
    movz x9, #1701
    str w9, [sp, #1516]
    movn x9, #185
    str w9, [sp, #1520]
    movz x9, #1329
    str w9, [sp, #1524]
    movz x9, #5406
    str w9, [sp, #1528]
    mov x9, #0
    str w9, [sp, #1532]
    adrp x14, _lb_text_f85039d822f0@PAGE
    add x14, x14, _lb_text_f85039d822f0@PAGEOFF
    str x14, [sp, #1536]
    movz x9, #7
    str x9, [sp, #1544]
    mov x9, #0
    str w9, [sp, #1552]
    movz x9, #12279
    str w9, [sp, #1556]
    movz x9, #6719
    str w9, [sp, #1560]
    movn x9, #993
    str w9, [sp, #1564]
    movn x9, #924
    str w9, [sp, #1568]
    movn x9, #4407
    str w9, [sp, #1572]
    movz x9, #12426
    str w9, [sp, #1576]
    movz x9, #2211
    str w9, [sp, #1580]
    movn x9, #886
    str w9, [sp, #1584]
    movz x9, #2129
    str w9, [sp, #1588]
    movz x9, #6051
    str w9, [sp, #1592]
    mov x9, #0
    str w9, [sp, #1596]
    adrp x14, _lb_text_e25a56ea7cba@PAGE
    add x14, x14, _lb_text_e25a56ea7cba@PAGEOFF
    str x14, [sp, #1600]
    movz x9, #7
    str x9, [sp, #1608]
    mov x9, #0
    str w9, [sp, #1616]
    movz x9, #15303
    str w9, [sp, #1620]
    movz x9, #7034
    str w9, [sp, #1624]
    movn x9, #803
    str w9, [sp, #1628]
    movn x9, #1013
    str w9, [sp, #1632]
    movn x9, #4419
    str w9, [sp, #1636]
    movz x9, #12564
    str w9, [sp, #1640]
    movz x9, #2058
    str w9, [sp, #1644]
    movn x9, #850
    str w9, [sp, #1648]
    movz x9, #1994
    str w9, [sp, #1652]
    movz x9, #5758
    str w9, [sp, #1656]
    mov x9, #0
    str w9, [sp, #1660]
    adrp x14, _lb_text_2cf69deae9fe@PAGE
    add x14, x14, _lb_text_2cf69deae9fe@PAGEOFF
    str x14, [sp, #1664]
    movz x9, #8
    str x9, [sp, #1672]
    mov x9, #0
    str w9, [sp, #1680]
    movz x9, #13583
    str w9, [sp, #1684]
    movz x9, #6602
    str w9, [sp, #1688]
    movn x9, #840
    str w9, [sp, #1692]
    movn x9, #938
    str w9, [sp, #1696]
    movn x9, #4471
    str w9, [sp, #1700]
    movz x9, #12458
    str w9, [sp, #1704]
    movz x9, #2247
    str w9, [sp, #1708]
    movn x9, #974
    str w9, [sp, #1712]
    movz x9, #2039
    str w9, [sp, #1716]
    movz x9, #6148
    str w9, [sp, #1720]
    mov x9, #0
    str w9, [sp, #1724]
    adrp x14, _lb_text_c336fceac20b@PAGE
    add x14, x14, _lb_text_c336fceac20b@PAGEOFF
    str x14, [sp, #1728]
    movz x9, #8
    str x9, [sp, #1736]
    mov x9, #0
    str w9, [sp, #1744]
    movz x9, #4000
    str w9, [sp, #1748]
    movz x9, #8250
    str w9, [sp, #1752]
    movn x9, #2043
    str w9, [sp, #1756]
    movn x9, #1126
    str w9, [sp, #1760]
    movn x9, #8091
    str w9, [sp, #1764]
    movz x9, #15606
    str w9, [sp, #1768]
    movz x9, #2664
    str w9, [sp, #1772]
    movn x9, #2892
    str w9, [sp, #1776]
    movz x9, #3453
    str w9, [sp, #1780]
    movz x9, #8348
    str w9, [sp, #1784]
    mov x9, #0
    str w9, [sp, #1788]
    adrp x14, _lb_text_dcbce8168ae9@PAGE
    add x14, x14, _lb_text_dcbce8168ae9@PAGEOFF
    str x14, [sp, #1792]
    movz x9, #8
    str x9, [sp, #1800]
    mov x9, #0
    str w9, [sp, #1808]
    movz x9, #4095
    str w9, [sp, #1812]
    movz x9, #6018
    str w9, [sp, #1816]
    movn x9, #616
    str w9, [sp, #1820]
    movn x9, #964
    str w9, [sp, #1824]
    movn x9, #8644
    str w9, [sp, #1828]
    movz x9, #15881
    str w9, [sp, #1832]
    movz x9, #2975
    str w9, [sp, #1836]
    movn x9, #1529
    str w9, [sp, #1840]
    movz x9, #1719
    str w9, [sp, #1844]
    movz x9, #7642
    str w9, [sp, #1848]
    mov x9, #0
    str w9, [sp, #1852]
    adrp x14, _lb_text_0e033b1d64cf@PAGE
    add x14, x14, _lb_text_0e033b1d64cf@PAGEOFF
    str x14, [sp, #1856]
    movz x9, #9
    str x9, [sp, #1864]
    mov x9, #0
    str w9, [sp, #1872]
    mov x9, #0
    str w9, [sp, #1876]
    movz x9, #6939
    str w9, [sp, #1880]
    movn x9, #1015
    str w9, [sp, #1884]
    movn x9, #865
    str w9, [sp, #1888]
    movn x9, #4427
    str w9, [sp, #1892]
    movz x9, #12473
    str w9, [sp, #1896]
    movz x9, #2177
    str w9, [sp, #1900]
    movn x9, #1174
    str w9, [sp, #1904]
    movz x9, #2178
    str w9, [sp, #1908]
    movz x9, #6162
    str w9, [sp, #1912]
    mov x9, #0
    str w9, [sp, #1916]
    adrp x14, _lb_text_a1de2654f680@PAGE
    add x14, x14, _lb_text_a1de2654f680@PAGEOFF
    str x14, [sp, #1920]
    movz x9, #8
    str x9, [sp, #1928]
    mov x9, #0
    str w9, [sp, #1936]
    movz x9, #3726
    str w9, [sp, #1940]
    movz x9, #7054
    str w9, [sp, #1944]
    movn x9, #1500
    str w9, [sp, #1948]
    movn x9, #989
    str w9, [sp, #1952]
    movn x9, #8155
    str w9, [sp, #1956]
    movz x9, #15544
    str w9, [sp, #1960]
    movz x9, #2812
    str w9, [sp, #1964]
    movn x9, #1277
    str w9, [sp, #1968]
    movz x9, #1414
    str w9, [sp, #1972]
    movz x9, #7796
    str w9, [sp, #1976]
    mov x9, #0
    str w9, [sp, #1980]
    adrp x14, _lb_text_3154a8924f4a@PAGE
    add x14, x14, _lb_text_3154a8924f4a@PAGEOFF
    str x14, [sp, #1984]
    movz x9, #8
    str x9, [sp, #1992]
    mov x9, #0
    str w9, [sp, #2000]
    movz x9, #14605
    str w9, [sp, #2004]
    movz x9, #5784
    str w9, [sp, #2008]
    movn x9, #261
    str w9, [sp, #2012]
    movn x9, #820
    str w9, [sp, #2016]
    movn x9, #7538
    str w9, [sp, #2020]
    movz x9, #15064
    str w9, [sp, #2024]
    movz x9, #2672
    str w9, [sp, #2028]
    movn x9, #1981
    str w9, [sp, #2032]
    movz x9, #2681
    str w9, [sp, #2036]
    movz x9, #7427
    str w9, [sp, #2040]
    mov x9, #0
    str w9, [sp, #2044]
    adrp x14, _lb_text_5f4abb6e99e3@PAGE
    add x14, x14, _lb_text_5f4abb6e99e3@PAGEOFF
    str x14, [sp, #2048]
    movz x9, #8
    str x9, [sp, #2056]
    mov x9, #0
    str w9, [sp, #2064]
    movz x9, #13433
    str w9, [sp, #2068]
    movz x9, #4763
    str w9, [sp, #2072]
    movz x9, #712
    str w9, [sp, #2076]
    movn x9, #645
    str w9, [sp, #2080]
    movn x9, #6820
    str w9, [sp, #2084]
    movz x9, #14399
    str w9, [sp, #2088]
    movz x9, #2640
    str w9, [sp, #2092]
    movn x9, #1920
    str w9, [sp, #2096]
    movz x9, #3276
    str w9, [sp, #2100]
    movz x9, #6561
    str w9, [sp, #2104]
    mov x9, #0
    str w9, [sp, #2108]
    adrp x14, _lb_text_fc0a12416eb0@PAGE
    add x14, x14, _lb_text_fc0a12416eb0@PAGEOFF
    str x14, [sp, #2112]
    movz x9, #8
    str x9, [sp, #2120]
    mov x9, #0
    str w9, [sp, #2128]
    movz x9, #15831
    str w9, [sp, #2132]
    movz x9, #6941
    str w9, [sp, #2136]
    movn x9, #1163
    str w9, [sp, #2140]
    movn x9, #856
    str w9, [sp, #2144]
    movn x9, #3824
    str w9, [sp, #2148]
    movz x9, #11597
    str w9, [sp, #2152]
    movz x9, #2534
    str w9, [sp, #2156]
    movn x9, #415
    str w9, [sp, #2160]
    movz x9, #1540
    str w9, [sp, #2164]
    movz x9, #6039
    str w9, [sp, #2168]
    mov x9, #0
    str w9, [sp, #2172]
    adrp x14, _lb_text_01995f2b6db4@PAGE
    add x14, x14, _lb_text_01995f2b6db4@PAGEOFF
    str x14, [sp, #2176]
    movz x9, #8
    str x9, [sp, #2184]
    mov x9, #0
    str w9, [sp, #2192]
    movz x9, #13584
    str w9, [sp, #2196]
    movz x9, #6461
    str w9, [sp, #2200]
    movn x9, #906
    str w9, [sp, #2204]
    movn x9, #881
    str w9, [sp, #2208]
    movn x9, #4299
    str w9, [sp, #2212]
    movz x9, #12184
    str w9, [sp, #2216]
    movz x9, #2378
    str w9, [sp, #2220]
    movn x9, #818
    str w9, [sp, #2224]
    movz x9, #1944
    str w9, [sp, #2228]
    movz x9, #5931
    str w9, [sp, #2232]
    mov x9, #0
    str w9, [sp, #2236]
    adrp x14, _lb_text_35805eddd393@PAGE
    add x14, x14, _lb_text_35805eddd393@PAGEOFF
    str x14, [sp, #2240]
    movz x9, #8
    str x9, [sp, #2248]
    mov x9, #0
    str w9, [sp, #2256]
    movz x9, #13645
    str w9, [sp, #2260]
    movz x9, #6602
    str w9, [sp, #2264]
    movn x9, #840
    str w9, [sp, #2268]
    movn x9, #938
    str w9, [sp, #2272]
    movn x9, #4471
    str w9, [sp, #2276]
    movz x9, #12458
    str w9, [sp, #2280]
    movz x9, #2247
    str w9, [sp, #2284]
    movn x9, #974
    str w9, [sp, #2288]
    movz x9, #2039
    str w9, [sp, #2292]
    movz x9, #6148
    str w9, [sp, #2296]
    mov x9, #0
    str w9, [sp, #2300]
    adrp x14, _lb_text_774462c78304@PAGE
    add x14, x14, _lb_text_774462c78304@PAGEOFF
    str x14, [sp, #2304]
    movz x9, #8
    str x9, [sp, #2312]
    mov x9, #0
    str w9, [sp, #2320]
    movz x9, #15360
    str w9, [sp, #2324]
    movz x9, #6362
    str w9, [sp, #2328]
    movn x9, #822
    str w9, [sp, #2332]
    movn x9, #846
    str w9, [sp, #2336]
    movn x9, #4425
    str w9, [sp, #2340]
    movz x9, #12109
    str w9, [sp, #2344]
    movz x9, #2616
    str w9, [sp, #2348]
    movn x9, #742
    str w9, [sp, #2352]
    movz x9, #1857
    str w9, [sp, #2356]
    movz x9, #5635
    str w9, [sp, #2360]
    mov x9, #0
    str w9, [sp, #2364]
    adrp x14, _lb_text_810a54067b92@PAGE
    add x14, x14, _lb_text_810a54067b92@PAGEOFF
    str x14, [sp, #2368]
    movz x9, #8
    str x9, [sp, #2376]
    mov x9, #0
    str w9, [sp, #2384]
    movz x9, #15360
    str w9, [sp, #2388]
    movz x9, #6362
    str w9, [sp, #2392]
    movn x9, #822
    str w9, [sp, #2396]
    movn x9, #846
    str w9, [sp, #2400]
    movn x9, #4425
    str w9, [sp, #2404]
    movz x9, #12109
    str w9, [sp, #2408]
    movz x9, #2616
    str w9, [sp, #2412]
    movn x9, #742
    str w9, [sp, #2416]
    movz x9, #1857
    str w9, [sp, #2420]
    movz x9, #5635
    str w9, [sp, #2424]
    mov x9, #0
    str w9, [sp, #2428]
    adrp x14, _lb_text_e866761a1982@PAGE
    add x14, x14, _lb_text_e866761a1982@PAGEOFF
    str x14, [sp, #2432]
    movz x9, #8
    str x9, [sp, #2440]
    mov x9, #0
    str w9, [sp, #2448]
    movz x9, #15360
    str w9, [sp, #2452]
    movz x9, #6602
    str w9, [sp, #2456]
    movn x9, #840
    str w9, [sp, #2460]
    movn x9, #938
    str w9, [sp, #2464]
    movn x9, #4471
    str w9, [sp, #2468]
    movz x9, #12458
    str w9, [sp, #2472]
    movz x9, #2247
    str w9, [sp, #2476]
    movn x9, #974
    str w9, [sp, #2480]
    movz x9, #2039
    str w9, [sp, #2484]
    movz x9, #6148
    str w9, [sp, #2488]
    mov x9, #0
    str w9, [sp, #2492]
    adrp x14, _lb_text_3d13b2bde630@PAGE
    add x14, x14, _lb_text_3d13b2bde630@PAGEOFF
    str x14, [sp, #2496]
    movz x9, #7
    str x9, [sp, #2504]
    mov x9, #0
    str w9, [sp, #2512]
    mov x9, #0
    str w9, [sp, #2516]
    movz x9, #11498
    str w9, [sp, #2520]
    movn x9, #3758
    str w9, [sp, #2524]
    movn x9, #1515
    str w9, [sp, #2528]
    movn x9, #5072
    str w9, [sp, #2532]
    movz x9, #12954
    str w9, [sp, #2536]
    movz x9, #2349
    str w9, [sp, #2540]
    movn x9, #891
    str w9, [sp, #2544]
    movz x9, #1867
    str w9, [sp, #2548]
    movz x9, #6118
    str w9, [sp, #2552]
    mov x9, #0
    str w9, [sp, #2556]
    adrp x14, _lb_text_ae81d95b4d30@PAGE
    add x14, x14, _lb_text_ae81d95b4d30@PAGEOFF
    str x14, [sp, #2560]
    movz x9, #9
    str x9, [sp, #2568]
    mov x9, #0
    str w9, [sp, #2576]
    movz x9, #3651
    str w9, [sp, #2580]
    movz x9, #6771
    str w9, [sp, #2584]
    movn x9, #1138
    str w9, [sp, #2588]
    movn x9, #976
    str w9, [sp, #2592]
    movn x9, #7817
    str w9, [sp, #2596]
    movz x9, #15123
    str w9, [sp, #2600]
    movz x9, #2928
    str w9, [sp, #2604]
    movn x9, #1243
    str w9, [sp, #2608]
    movz x9, #1437
    str w9, [sp, #2612]
    movz x9, #7533
    str w9, [sp, #2616]
    mov x9, #0
    str w9, [sp, #2620]
    adrp x14, _lb_text_108309b81e87@PAGE
    add x14, x14, _lb_text_108309b81e87@PAGEOFF
    str x14, [sp, #2624]
    movz x9, #9
    str x9, [sp, #2632]
    mov x9, #0
    str w9, [sp, #2640]
    movz x9, #13584
    str w9, [sp, #2644]
    movz x9, #6444
    str w9, [sp, #2648]
    movn x9, #903
    str w9, [sp, #2652]
    movn x9, #892
    str w9, [sp, #2656]
    movn x9, #4562
    str w9, [sp, #2660]
    movz x9, #12308
    str w9, [sp, #2664]
    movz x9, #2535
    str w9, [sp, #2668]
    movn x9, #902
    str w9, [sp, #2672]
    movz x9, #2016
    str w9, [sp, #2676]
    movz x9, #6728
    str w9, [sp, #2680]
    mov x9, #0
    str w9, [sp, #2684]
    adrp x14, _lb_text_2f60872c73d5@PAGE
    add x14, x14, _lb_text_2f60872c73d5@PAGEOFF
    str x14, [sp, #2688]
    movz x9, #9
    str x9, [sp, #2696]
    mov x9, #0
    str w9, [sp, #2704]
    movz x9, #14274
    str w9, [sp, #2708]
    movz x9, #6461
    str w9, [sp, #2712]
    movn x9, #906
    str w9, [sp, #2716]
    movn x9, #881
    str w9, [sp, #2720]
    movn x9, #4299
    str w9, [sp, #2724]
    movz x9, #12184
    str w9, [sp, #2728]
    movz x9, #2378
    str w9, [sp, #2732]
    movn x9, #818
    str w9, [sp, #2736]
    movz x9, #1944
    str w9, [sp, #2740]
    movz x9, #5931
    str w9, [sp, #2744]
    mov x9, #0
    str w9, [sp, #2748]
    adrp x14, _lb_text_7647b914d32f@PAGE
    add x14, x14, _lb_text_7647b914d32f@PAGEOFF
    str x14, [sp, #2752]
    movz x9, #9
    str x9, [sp, #2760]
    mov x9, #0
    str w9, [sp, #2768]
    movz x9, #14274
    str w9, [sp, #2772]
    movz x9, #6939
    str w9, [sp, #2776]
    movn x9, #1015
    str w9, [sp, #2780]
    movn x9, #865
    str w9, [sp, #2784]
    movn x9, #4427
    str w9, [sp, #2788]
    movz x9, #12473
    str w9, [sp, #2792]
    movz x9, #2177
    str w9, [sp, #2796]
    movn x9, #1174
    str w9, [sp, #2800]
    movz x9, #2178
    str w9, [sp, #2804]
    movz x9, #6162
    str w9, [sp, #2808]
    mov x9, #0
    str w9, [sp, #2812]
    adrp x14, _lb_text_3adea9210f8a@PAGE
    add x14, x14, _lb_text_3adea9210f8a@PAGEOFF
    str x14, [sp, #2816]
    movz x9, #9
    str x9, [sp, #2824]
    mov x9, #0
    str w9, [sp, #2832]
    mov x9, #0
    str w9, [sp, #2836]
    movz x9, #8300
    str w9, [sp, #2840]
    movn x9, #2109
    str w9, [sp, #2844]
    movn x9, #1119
    str w9, [sp, #2848]
    movn x9, #4916
    str w9, [sp, #2852]
    movz x9, #12694
    str w9, [sp, #2856]
    movz x9, #2482
    str w9, [sp, #2860]
    movn x9, #937
    str w9, [sp, #2864]
    movz x9, #2141
    str w9, [sp, #2868]
    movz x9, #5666
    str w9, [sp, #2872]
    mov x9, #0
    str w9, [sp, #2876]
    adrp x14, _lb_text_67579506b649@PAGE
    add x14, x14, _lb_text_67579506b649@PAGEOFF
    str x14, [sp, #2880]
    movz x9, #6
    str x9, [sp, #2888]
    mov x9, #0
    str w9, [sp, #2896]
    mov x9, #0
    str w9, [sp, #2900]
    movz x9, #8608
    str w9, [sp, #2904]
    movn x9, #2096
    str w9, [sp, #2908]
    movn x9, #1177
    str w9, [sp, #2912]
    movn x9, #5424
    str w9, [sp, #2916]
    movz x9, #13265
    str w9, [sp, #2920]
    movz x9, #2383
    str w9, [sp, #2924]
    movn x9, #1148
    str w9, [sp, #2928]
    movz x9, #2238
    str w9, [sp, #2932]
    movz x9, #5680
    str w9, [sp, #2936]
    mov x9, #0
    str w9, [sp, #2940]
    adrp x14, _lb_text_3339be6691db@PAGE
    add x14, x14, _lb_text_3339be6691db@PAGEOFF
    str x14, [sp, #2944]
    movz x9, #6
    str x9, [sp, #2952]
    mov x9, #0
    str w9, [sp, #2960]
    mov x9, #0
    str w9, [sp, #2964]
    movz x9, #9423
    str w9, [sp, #2968]
    movn x9, #2838
    str w9, [sp, #2972]
    movn x9, #1194
    str w9, [sp, #2976]
    movn x9, #4531
    str w9, [sp, #2980]
    movz x9, #12377
    str w9, [sp, #2984]
    movz x9, #2415
    str w9, [sp, #2988]
    movn x9, #482
    str w9, [sp, #2992]
    movz x9, #1374
    str w9, [sp, #2996]
    movz x9, #5276
    str w9, [sp, #3000]
    mov x9, #0
    str w9, [sp, #3004]
    adrp x14, _lb_text_f1c35a151a47@PAGE
    add x14, x14, _lb_text_f1c35a151a47@PAGEOFF
    str x14, [sp, #3008]
    movz x9, #9
    str x9, [sp, #3016]
    mov x9, #0
    str w9, [sp, #3024]
    mov x9, #0
    str w9, [sp, #3028]
    movz x9, #9089
    str w9, [sp, #3032]
    movn x9, #1809
    str w9, [sp, #3036]
    movn x9, #1208
    str w9, [sp, #3040]
    movn x9, #4293
    str w9, [sp, #3044]
    movz x9, #12116
    str w9, [sp, #3048]
    movz x9, #2454
    str w9, [sp, #3052]
    movn x9, #497
    str w9, [sp, #3056]
    movz x9, #1862
    str w9, [sp, #3060]
    movz x9, #4923
    str w9, [sp, #3064]
    mov x9, #0
    str w9, [sp, #3068]
    adrp x14, _lb_text_a55a2dfe308c@PAGE
    add x14, x14, _lb_text_a55a2dfe308c@PAGEOFF
    str x14, [sp, #3072]
    movz x9, #7
    str x9, [sp, #3080]
    mov x9, #0
    str w9, [sp, #3088]
    mov x9, #0
    str w9, [sp, #3092]
    movz x9, #9269
    str w9, [sp, #3096]
    movn x9, #2011
    str w9, [sp, #3100]
    movn x9, #1106
    str w9, [sp, #3104]
    movn x9, #3989
    str w9, [sp, #3108]
    movz x9, #11762
    str w9, [sp, #3112]
    movz x9, #2527
    str w9, [sp, #3116]
    movn x9, #568
    str w9, [sp, #3120]
    movz x9, #2093
    str w9, [sp, #3124]
    movz x9, #4913
    str w9, [sp, #3128]
    mov x9, #0
    str w9, [sp, #3132]
    adrp x14, _lb_text_d4972e89d2e9@PAGE
    add x14, x14, _lb_text_d4972e89d2e9@PAGEOFF
    str x14, [sp, #3136]
    movz x9, #8
    str x9, [sp, #3144]
    mov x9, #0
    str w9, [sp, #3152]
    mov x9, #0
    str w9, [sp, #3156]
    movz x9, #8230
    str w9, [sp, #3160]
    movn x9, #1514
    str w9, [sp, #3164]
    movn x9, #1031
    str w9, [sp, #3168]
    movn x9, #4178
    str w9, [sp, #3172]
    movz x9, #12005
    str w9, [sp, #3176]
    movz x9, #2454
    str w9, [sp, #3180]
    movn x9, #648
    str w9, [sp, #3184]
    movz x9, #2076
    str w9, [sp, #3188]
    movz x9, #4711
    str w9, [sp, #3192]
    mov x9, #0
    str w9, [sp, #3196]
    adrp x14, _lb_text_e413481a1b6c@PAGE
    add x14, x14, _lb_text_e413481a1b6c@PAGEOFF
    str x14, [sp, #3200]
    movz x9, #14
    str x9, [sp, #3208]
    mov x9, #0
    str w9, [sp, #3216]
    mov x9, #0
    str w9, [sp, #3220]
    movz x9, #9396
    str w9, [sp, #3224]
    movn x9, #2597
    str w9, [sp, #3228]
    movn x9, #1206
    str w9, [sp, #3232]
    movn x9, #4407
    str w9, [sp, #3236]
    movz x9, #12296
    str w9, [sp, #3240]
    movz x9, #2369
    str w9, [sp, #3244]
    movn x9, #504
    str w9, [sp, #3248]
    movz x9, #1575
    str w9, [sp, #3252]
    movz x9, #6077
    str w9, [sp, #3256]
    mov x9, #0
    str w9, [sp, #3260]
    adrp x14, _lb_text_c56e6854ce66@PAGE
    add x14, x14, _lb_text_c56e6854ce66@PAGEOFF
    str x14, [sp, #3264]
    movz x9, #6
    str x9, [sp, #3272]
    mov x9, #0
    str w9, [sp, #3280]
    mov x9, #0
    str w9, [sp, #3284]
    movz x9, #9766
    str w9, [sp, #3288]
    movn x9, #2952
    str w9, [sp, #3292]
    movn x9, #1253
    str w9, [sp, #3296]
    movn x9, #4275
    str w9, [sp, #3300]
    movz x9, #12116
    str w9, [sp, #3304]
    movz x9, #2433
    str w9, [sp, #3308]
    movn x9, #436
    str w9, [sp, #3312]
    movz x9, #1336
    str w9, [sp, #3316]
    movz x9, #5131
    str w9, [sp, #3320]
    mov x9, #0
    str w9, [sp, #3324]
    adrp x14, _lb_text_f8e351913927@PAGE
    add x14, x14, _lb_text_f8e351913927@PAGEOFF
    str x14, [sp, #3328]
    movz x9, #14
    str x9, [sp, #3336]
    mov x9, #0
    str w9, [sp, #3344]
    mov x9, #0
    str w9, [sp, #3348]
    movz x9, #9539
    str w9, [sp, #3352]
    movn x9, #2794
    str w9, [sp, #3356]
    movn x9, #1223
    str w9, [sp, #3360]
    movn x9, #4174
    str w9, [sp, #3364]
    movz x9, #11998
    str w9, [sp, #3368]
    movz x9, #2458
    str w9, [sp, #3372]
    movn x9, #464
    str w9, [sp, #3376]
    movz x9, #1755
    str w9, [sp, #3380]
    movz x9, #6048
    str w9, [sp, #3384]
    mov x9, #0
    str w9, [sp, #3388]
    adrp x14, _lb_text_b36cc83b8656@PAGE
    add x14, x14, _lb_text_b36cc83b8656@PAGEOFF
    str x14, [sp, #3392]
    movz x9, #6
    str x9, [sp, #3400]
    mov x9, #0
    str w9, [sp, #3408]
    mov x9, #0
    str w9, [sp, #3412]
    movz x9, #8293
    str w9, [sp, #3416]
    movn x9, #1610
    str w9, [sp, #3420]
    movn x9, #1131
    str w9, [sp, #3424]
    movn x9, #4758
    str w9, [sp, #3428]
    movz x9, #12711
    str w9, [sp, #3432]
    movz x9, #2275
    str w9, [sp, #3436]
    movn x9, #1012
    str w9, [sp, #3440]
    movz x9, #2415
    str w9, [sp, #3444]
    movz x9, #5509
    str w9, [sp, #3448]
    mov x9, #0
    str w9, [sp, #3452]
    adrp x14, _lb_text_11b32ade8d2a@PAGE
    add x14, x14, _lb_text_11b32ade8d2a@PAGEOFF
    str x14, [sp, #3456]
    movz x9, #6
    str x9, [sp, #3464]
    mov x9, #0
    str w9, [sp, #3472]
    mov x9, #0
    str w9, [sp, #3476]
    movz x9, #10424
    str w9, [sp, #3480]
    movn x9, #3137
    str w9, [sp, #3484]
    movn x9, #1299
    str w9, [sp, #3488]
    movn x9, #4220
    str w9, [sp, #3492]
    movz x9, #11938
    str w9, [sp, #3496]
    movz x9, #2584
    str w9, [sp, #3500]
    movn x9, #546
    str w9, [sp, #3504]
    movz x9, #1658
    str w9, [sp, #3508]
    movz x9, #6183
    str w9, [sp, #3512]
    mov x9, #0
    str w9, [sp, #3516]
    adrp x14, _lb_text_a381c110c6ba@PAGE
    add x14, x14, _lb_text_a381c110c6ba@PAGEOFF
    str x14, [sp, #3520]
    movz x9, #6
    str x9, [sp, #3528]
    mov x9, #0
    str w9, [sp, #3536]
    mov x9, #0
    str w9, [sp, #3540]
    movz x9, #9539
    str w9, [sp, #3544]
    movn x9, #2794
    str w9, [sp, #3548]
    movn x9, #1223
    str w9, [sp, #3552]
    movn x9, #4174
    str w9, [sp, #3556]
    movz x9, #11998
    str w9, [sp, #3560]
    movz x9, #2458
    str w9, [sp, #3564]
    movn x9, #464
    str w9, [sp, #3568]
    movz x9, #1755
    str w9, [sp, #3572]
    movz x9, #6048
    str w9, [sp, #3576]
    mov x9, #0
    str w9, [sp, #3580]
    adrp x14, _lb_text_ae0d9c027acb@PAGE
    add x14, x14, _lb_text_ae0d9c027acb@PAGEOFF
    str x14, [sp, #3584]
    movz x9, #7
    str x9, [sp, #3592]
    mov x9, #0
    str w9, [sp, #3600]
    mov x9, #0
    str w9, [sp, #3604]
    movz x9, #9269
    str w9, [sp, #3608]
    movn x9, #2011
    str w9, [sp, #3612]
    movn x9, #1106
    str w9, [sp, #3616]
    movn x9, #3989
    str w9, [sp, #3620]
    movz x9, #11762
    str w9, [sp, #3624]
    movz x9, #2527
    str w9, [sp, #3628]
    movn x9, #568
    str w9, [sp, #3632]
    movz x9, #2093
    str w9, [sp, #3636]
    movz x9, #4913
    str w9, [sp, #3640]
    mov x9, #0
    str w9, [sp, #3644]
    adrp x14, _lb_text_470bad961940@PAGE
    add x14, x14, _lb_text_470bad961940@PAGEOFF
    str x14, [sp, #3648]
    movz x9, #6
    str x9, [sp, #3656]
    mov x9, #0
    str w9, [sp, #3664]
    mov x9, #0
    str w9, [sp, #3668]
    movz x9, #9020
    str w9, [sp, #3672]
    movn x9, #2274
    str w9, [sp, #3676]
    movn x9, #1208
    str w9, [sp, #3680]
    movn x9, #4915
    str w9, [sp, #3684]
    movz x9, #12856
    str w9, [sp, #3688]
    movz x9, #2284
    str w9, [sp, #3692]
    movn x9, #922
    str w9, [sp, #3696]
    movz x9, #1953
    str w9, [sp, #3700]
    movz x9, #5928
    str w9, [sp, #3704]
    mov x9, #0
    str w9, [sp, #3708]
    adrp x14, _lb_text_b9390b3a1169@PAGE
    add x14, x14, _lb_text_b9390b3a1169@PAGEOFF
    str x14, [sp, #3712]
    movz x9, #6
    str x9, [sp, #3720]
    mov x9, #0
    str w9, [sp, #3728]
    mov x9, #0
    str w9, [sp, #3732]
    movz x9, #22880
    str w9, [sp, #3736]
    movn x9, #11530
    str w9, [sp, #3740]
    movn x9, #2222
    str w9, [sp, #3744]
    movn x9, #2033
    str w9, [sp, #3748]
    movz x9, #10469
    str w9, [sp, #3752]
    movz x9, #1809
    str w9, [sp, #3756]
    movz x9, #316
    str w9, [sp, #3760]
    movz x9, #1401
    str w9, [sp, #3764]
    movz x9, #5769
    str w9, [sp, #3768]
    mov x9, #0
    str w9, [sp, #3772]
    adrp x14, _lb_text_aaca72646ed6@PAGE
    add x14, x14, _lb_text_aaca72646ed6@PAGEOFF
    str x14, [sp, #3776]
    movz x9, #5
    str x9, [sp, #3784]
    mov x9, #0
    str w9, [sp, #3792]
    mov x9, #0
    str w9, [sp, #3796]
    movz x9, #8293
    str w9, [sp, #3800]
    movn x9, #1788
    str w9, [sp, #3804]
    movn x9, #1093
    str w9, [sp, #3808]
    movn x9, #5024
    str w9, [sp, #3812]
    movz x9, #12925
    str w9, [sp, #3816]
    movz x9, #2327
    str w9, [sp, #3820]
    movn x9, #1198
    str w9, [sp, #3824]
    movz x9, #2769
    str w9, [sp, #3828]
    movz x9, #6108
    str w9, [sp, #3832]
    mov x9, #0
    str w9, [sp, #3836]
    adrp x14, _lb_text_ecd4bf305d69@PAGE
    add x14, x14, _lb_text_ecd4bf305d69@PAGEOFF
    str x14, [sp, #3840]
    movz x9, #14
    str x9, [sp, #3848]
    mov x9, #0
    str w9, [sp, #3856]
    mov x9, #0
    str w9, [sp, #3860]
    movz x9, #11498
    str w9, [sp, #3864]
    movn x9, #3758
    str w9, [sp, #3868]
    movn x9, #1515
    str w9, [sp, #3872]
    movn x9, #5072
    str w9, [sp, #3876]
    movz x9, #12954
    str w9, [sp, #3880]
    movz x9, #2349
    str w9, [sp, #3884]
    movn x9, #891
    str w9, [sp, #3888]
    movz x9, #1867
    str w9, [sp, #3892]
    movz x9, #6118
    str w9, [sp, #3896]
    mov x9, #0
    str w9, [sp, #3900]
    adrp x14, _lb_text_4c4035eea2df@PAGE
    add x14, x14, _lb_text_4c4035eea2df@PAGEOFF
    str x14, [sp, #3904]
    movz x9, #6
    str x9, [sp, #3912]
    mov x9, #0
    str w9, [sp, #3920]
    mov x9, #0
    str w9, [sp, #3924]
    movz x9, #8532
    str w9, [sp, #3928]
    movn x9, #700
    str w9, [sp, #3932]
    movn x9, #1166
    str w9, [sp, #3936]
    movn x9, #4094
    str w9, [sp, #3940]
    movz x9, #11879
    str w9, [sp, #3944]
    movz x9, #2508
    str w9, [sp, #3948]
    movn x9, #796
    str w9, [sp, #3952]
    movz x9, #2424
    str w9, [sp, #3956]
    movz x9, #7010
    str w9, [sp, #3960]
    mov x9, #0
    str w9, [sp, #3964]
    adrp x14, _lb_text_d94c946b2542@PAGE
    add x14, x14, _lb_text_d94c946b2542@PAGEOFF
    str x14, [sp, #3968]
    movz x9, #15
    str x9, [sp, #3976]
    mov x9, #0
    str w9, [sp, #3984]
    mov x9, #0
    str w9, [sp, #3988]
    movz x9, #10463
    str w9, [sp, #3992]
    movn x9, #2172
    str w9, [sp, #3996]
    movn x9, #1436
    str w9, [sp, #4000]
    movn x9, #4855
    str w9, [sp, #4004]
    movz x9, #12635
    str w9, [sp, #4008]
    movz x9, #2482
    str w9, [sp, #4012]
    movn x9, #1215
    str w9, [sp, #4016]
    movz x9, #2915
    str w9, [sp, #4020]
    movz x9, #7237
    str w9, [sp, #4024]
    mov x9, #0
    str w9, [sp, #4028]
    adrp x14, _lb_text_c9e83ecabcd4@PAGE
    add x14, x14, _lb_text_c9e83ecabcd4@PAGEOFF
    str x14, [sp, #4032]
    movz x9, #7
    str x9, [sp, #4040]
    mov x9, #0
    str w9, [sp, #4048]
    mov x9, #0
    str w9, [sp, #4052]
    movz x9, #8532
    str w9, [sp, #4056]
    movn x9, #700
    str w9, [sp, #4060]
    movn x9, #1166
    str w9, [sp, #4064]
    movn x9, #4094
    str w9, [sp, #4068]
    movz x9, #11879
    str w9, [sp, #4072]
    movz x9, #2508
    str w9, [sp, #4076]
    movn x9, #796
    str w9, [sp, #4080]
    movz x9, #2424
    str w9, [sp, #4084]
    movz x9, #7010
    str w9, [sp, #4088]
    mov x9, #0
    str w9, [sp, #4092]
    adrp x14, _lb_text_9507a7f00819@PAGE
    add x14, x14, _lb_text_9507a7f00819@PAGEOFF
    str x14, [sp, #4096]
    movz x9, #6
    str x9, [sp, #4104]
    mov x9, #0
    str w9, [sp, #4112]
    mov x9, #0
    str w9, [sp, #4116]
    movz x9, #8532
    str w9, [sp, #4120]
    movn x9, #700
    str w9, [sp, #4124]
    movn x9, #1166
    str w9, [sp, #4128]
    movn x9, #4094
    str w9, [sp, #4132]
    movz x9, #11879
    str w9, [sp, #4136]
    movz x9, #2508
    str w9, [sp, #4140]
    movn x9, #796
    str w9, [sp, #4144]
    movz x9, #2424
    str w9, [sp, #4148]
    movz x9, #7010
    str w9, [sp, #4152]
    mov x9, #0
    str w9, [sp, #4156]
    adrp x14, _lb_text_f485aedd75da@PAGE
    add x14, x14, _lb_text_f485aedd75da@PAGEOFF
    str x14, [sp, #4160]
    movz x9, #6
    str x9, [sp, #4168]
    mov x9, #0
    str w9, [sp, #4176]
    mov x9, #0
    str w9, [sp, #4180]
    movz x9, #6362
    str w9, [sp, #4184]
    movn x9, #822
    str w9, [sp, #4188]
    movn x9, #846
    str w9, [sp, #4192]
    movn x9, #4425
    str w9, [sp, #4196]
    movz x9, #12109
    str w9, [sp, #4200]
    movz x9, #2616
    str w9, [sp, #4204]
    movn x9, #742
    str w9, [sp, #4208]
    movz x9, #1857
    str w9, [sp, #4212]
    movz x9, #5635
    str w9, [sp, #4216]
    mov x9, #0
    str w9, [sp, #4220]
    adrp x14, _lb_text_4c9ce9b1bec9@PAGE
    add x14, x14, _lb_text_4c9ce9b1bec9@PAGEOFF
    str x14, [sp, #4224]
    movz x9, #8
    str x9, [sp, #4232]
    mov x9, #0
    str w9, [sp, #4240]
    mov x9, #0
    str w9, [sp, #4244]
    movz x9, #10463
    str w9, [sp, #4248]
    movn x9, #2172
    str w9, [sp, #4252]
    movn x9, #1436
    str w9, [sp, #4256]
    movn x9, #4855
    str w9, [sp, #4260]
    movz x9, #12635
    str w9, [sp, #4264]
    movz x9, #2482
    str w9, [sp, #4268]
    movn x9, #1215
    str w9, [sp, #4272]
    movz x9, #2915
    str w9, [sp, #4276]
    movz x9, #7237
    str w9, [sp, #4280]
    mov x9, #0
    str w9, [sp, #4284]
    adrp x14, _lb_text_57ce108537ec@PAGE
    add x14, x14, _lb_text_57ce108537ec@PAGEOFF
    str x14, [sp, #4288]
    movz x9, #6
    str x9, [sp, #4296]
    mov x9, #0
    str w9, [sp, #4304]
    mov x9, #0
    str w9, [sp, #4308]
    movz x9, #6400
    str w9, [sp, #4312]
    movn x9, #479
    str w9, [sp, #4316]
    movn x9, #887
    str w9, [sp, #4320]
    movn x9, #5293
    str w9, [sp, #4324]
    movz x9, #13416
    str w9, [sp, #4328]
    movz x9, #2047
    str w9, [sp, #4332]
    movn x9, #1295
    str w9, [sp, #4336]
    movz x9, #2203
    str w9, [sp, #4340]
    movz x9, #6137
    str w9, [sp, #4344]
    mov x9, #0
    str w9, [sp, #4348]
    adrp x14, _lb_text_db39e4a777e6@PAGE
    add x14, x14, _lb_text_db39e4a777e6@PAGEOFF
    str x14, [sp, #4352]
    movz x9, #8
    str x9, [sp, #4360]
    mov x9, #0
    str w9, [sp, #4368]
    mov x9, #0
    str w9, [sp, #4372]
    movz x9, #8532
    str w9, [sp, #4376]
    movn x9, #700
    str w9, [sp, #4380]
    movn x9, #1166
    str w9, [sp, #4384]
    movn x9, #4094
    str w9, [sp, #4388]
    movz x9, #11879
    str w9, [sp, #4392]
    movz x9, #2508
    str w9, [sp, #4396]
    movn x9, #796
    str w9, [sp, #4400]
    movz x9, #2424
    str w9, [sp, #4404]
    movz x9, #7010
    str w9, [sp, #4408]
    mov x9, #0
    str w9, [sp, #4412]
    adrp x14, _lb_text_85c1b4c6c674@PAGE
    add x14, x14, _lb_text_85c1b4c6c674@PAGEOFF
    str x14, [sp, #4416]
    movz x9, #7
    str x9, [sp, #4424]
    mov x9, #0
    str w9, [sp, #4432]
    mov x9, #0
    str w9, [sp, #4436]
    movz x9, #6400
    str w9, [sp, #4440]
    movn x9, #479
    str w9, [sp, #4444]
    movn x9, #887
    str w9, [sp, #4448]
    movn x9, #5293
    str w9, [sp, #4452]
    movz x9, #13416
    str w9, [sp, #4456]
    movz x9, #2047
    str w9, [sp, #4460]
    movn x9, #1295
    str w9, [sp, #4464]
    movz x9, #2203
    str w9, [sp, #4468]
    movz x9, #6137
    str w9, [sp, #4472]
    mov x9, #0
    str w9, [sp, #4476]
    adrp x14, _lb_text_65f9f47db5d6@PAGE
    add x14, x14, _lb_text_65f9f47db5d6@PAGEOFF
    str x14, [sp, #4480]
    movz x9, #5
    str x9, [sp, #4488]
    mov x9, #0
    str w9, [sp, #4496]
    mov x9, #0
    str w9, [sp, #4500]
    movz x9, #6602
    str w9, [sp, #4504]
    movn x9, #840
    str w9, [sp, #4508]
    movn x9, #938
    str w9, [sp, #4512]
    movn x9, #4471
    str w9, [sp, #4516]
    movz x9, #12458
    str w9, [sp, #4520]
    movz x9, #2247
    str w9, [sp, #4524]
    movn x9, #974
    str w9, [sp, #4528]
    movz x9, #2039
    str w9, [sp, #4532]
    movz x9, #6148
    str w9, [sp, #4536]
    mov x9, #0
    str w9, [sp, #4540]
    adrp x14, _lb_text_bc8354c4dc1a@PAGE
    add x14, x14, _lb_text_bc8354c4dc1a@PAGEOFF
    str x14, [sp, #4544]
    movz x9, #16
    str x9, [sp, #4552]
    mov x9, #0
    str w9, [sp, #4560]
    movz x9, #15280
    str w9, [sp, #4564]
    movz x9, #5859
    str w9, [sp, #4568]
    movn x9, #210
    str w9, [sp, #4572]
    movn x9, #929
    str w9, [sp, #4576]
    movn x9, #8254
    str w9, [sp, #4580]
    movz x9, #16017
    str w9, [sp, #4584]
    movz x9, #2353
    str w9, [sp, #4588]
    movn x9, #1731
    str w9, [sp, #4592]
    movz x9, #1887
    str w9, [sp, #4596]
    movz x9, #7448
    str w9, [sp, #4600]
    mov x9, #0
    str w9, [sp, #4604]
    adrp x14, _lb_text_0c740c7d342b@PAGE
    add x14, x14, _lb_text_0c740c7d342b@PAGEOFF
    str x14, [sp, #4608]
    movz x9, #15
    str x9, [sp, #4616]
    mov x9, #0
    str w9, [sp, #4624]
    movz x9, #3712
    str w9, [sp, #4628]
    movz x9, #6517
    str w9, [sp, #4632]
    movn x9, #601
    str w9, [sp, #4636]
    movn x9, #866
    str w9, [sp, #4640]
    movn x9, #8179
    str w9, [sp, #4644]
    movz x9, #15926
    str w9, [sp, #4648]
    movz x9, #2378
    str w9, [sp, #4652]
    movn x9, #1617
    str w9, [sp, #4656]
    movz x9, #1771
    str w9, [sp, #4660]
    movz x9, #7633
    str w9, [sp, #4664]
    mov x9, #0
    str w9, [sp, #4668]
    adrp x14, _lb_text_c5e7d57bfa05@PAGE
    add x14, x14, _lb_text_c5e7d57bfa05@PAGEOFF
    str x14, [sp, #4672]
    movz x9, #14
    str x9, [sp, #4680]
    mov x9, #0
    str w9, [sp, #4688]
    movz x9, #15280
    str w9, [sp, #4692]
    movz x9, #6014
    str w9, [sp, #4696]
    movn x9, #219
    str w9, [sp, #4700]
    movn x9, #794
    str w9, [sp, #4704]
    movn x9, #4108
    str w9, [sp, #4708]
    movz x9, #12014
    str w9, [sp, #4712]
    movz x9, #2361
    str w9, [sp, #4716]
    movn x9, #560
    str w9, [sp, #4720]
    movz x9, #1824
    str w9, [sp, #4724]
    movz x9, #5787
    str w9, [sp, #4728]
    mov x9, #0
    str w9, [sp, #4732]
    adrp x14, _lb_text_deda8a858359@PAGE
    add x14, x14, _lb_text_deda8a858359@PAGEOFF
    str x14, [sp, #4736]
    movz x9, #15
    str x9, [sp, #4744]
    mov x9, #0
    str w9, [sp, #4752]
    movz x9, #15280
    str w9, [sp, #4756]
    movz x9, #6291
    str w9, [sp, #4760]
    movn x9, #539
    str w9, [sp, #4764]
    movn x9, #975
    str w9, [sp, #4768]
    movn x9, #8349
    str w9, [sp, #4772]
    movz x9, #16145
    str w9, [sp, #4776]
    movz x9, #2311
    str w9, [sp, #4780]
    movn x9, #1713
    str w9, [sp, #4784]
    movz x9, #1858
    str w9, [sp, #4788]
    movz x9, #7326
    str w9, [sp, #4792]
    mov x9, #0
    str w9, [sp, #4796]
    adrp x14, _lb_text_e7ec15bd2b74@PAGE
    add x14, x14, _lb_text_e7ec15bd2b74@PAGEOFF
    str x14, [sp, #4800]
    movz x9, #16
    str x9, [sp, #4808]
    mov x9, #0
    str w9, [sp, #4816]
    movz x9, #3712
    str w9, [sp, #4820]
    movz x9, #6240
    str w9, [sp, #4824]
    movn x9, #465
    str w9, [sp, #4828]
    movn x9, #821
    str w9, [sp, #4832]
    movn x9, #8179
    str w9, [sp, #4836]
    movz x9, #15825
    str w9, [sp, #4840]
    movz x9, #2500
    str w9, [sp, #4844]
    movn x9, #1800
    str w9, [sp, #4848]
    movz x9, #1938
    str w9, [sp, #4852]
    movz x9, #8042
    str w9, [sp, #4856]
    mov x9, #0
    str w9, [sp, #4860]
    adrp x14, _lb_text_e027ca0cbc94@PAGE
    add x14, x14, _lb_text_e027ca0cbc94@PAGEOFF
    str x14, [sp, #4864]
    movz x9, #14
    str x9, [sp, #4872]
    mov x9, #0
    str w9, [sp, #4880]
    movz x9, #3712
    str w9, [sp, #4884]
    movz x9, #6264
    str w9, [sp, #4888]
    movn x9, #581
    str w9, [sp, #4892]
    movn x9, #723
    str w9, [sp, #4896]
    movn x9, #8311
    str w9, [sp, #4900]
    movz x9, #15948
    str w9, [sp, #4904]
    movz x9, #2504
    str w9, [sp, #4908]
    movn x9, #1743
    str w9, [sp, #4912]
    movz x9, #1919
    str w9, [sp, #4916]
    movz x9, #8664
    str w9, [sp, #4920]
    mov x9, #0
    str w9, [sp, #4924]
    adrp x14, _lb_text_5124cc58edbf@PAGE
    add x14, x14, _lb_text_5124cc58edbf@PAGEOFF
    str x14, [sp, #4928]
    movz x9, #7
    str x9, [sp, #4936]
    mov x9, #0
    str w9, [sp, #4944]
    movz x9, #3616
    str w9, [sp, #4948]
    movz x9, #3925
    str w9, [sp, #4952]
    movz x9, #4060
    str w9, [sp, #4956]
    movn x9, #1738
    str w9, [sp, #4960]
    movn x9, #8972
    str w9, [sp, #4964]
    movz x9, #16552
    str w9, [sp, #4968]
    movz x9, #2545
    str w9, [sp, #4972]
    movn x9, #3286
    str w9, [sp, #4976]
    movz x9, #3945
    str w9, [sp, #4980]
    movz x9, #8243
    str w9, [sp, #4984]
    mov x9, #0
    str w9, [sp, #4988]
    adrp x14, _lb_text_71c67f1e376d@PAGE
    add x14, x14, _lb_text_71c67f1e376d@PAGEOFF
    str x14, [sp, #4992]
    movz x9, #8
    str x9, [sp, #5000]
    mov x9, #0
    str w9, [sp, #5008]
    movz x9, #15438
    str w9, [sp, #5012]
    movz x9, #6847
    str w9, [sp, #5016]
    movn x9, #613
    str w9, [sp, #5020]
    movn x9, #1013
    str w9, [sp, #5024]
    movn x9, #4668
    str w9, [sp, #5028]
    movz x9, #12737
    str w9, [sp, #5032]
    movz x9, #2139
    str w9, [sp, #5036]
    movn x9, #1196
    str w9, [sp, #5040]
    movz x9, #2488
    str w9, [sp, #5044]
    movz x9, #6846
    str w9, [sp, #5048]
    mov x9, #0
    str w9, [sp, #5052]
    adrp x14, _lb_text_3f51ae685db2@PAGE
    add x14, x14, _lb_text_3f51ae685db2@PAGEOFF
    str x14, [sp, #5056]
    movz x9, #17
    str x9, [sp, #5064]
    mov x9, #0
    str w9, [sp, #5072]
    mov x9, #0
    str w9, [sp, #5076]
    movz x9, #8971
    str w9, [sp, #5080]
    movn x9, #2021
    str w9, [sp, #5084]
    movn x9, #1241
    str w9, [sp, #5088]
    movn x9, #5404
    str w9, [sp, #5092]
    movz x9, #13249
    str w9, [sp, #5096]
    movz x9, #2380
    str w9, [sp, #5100]
    movn x9, #1279
    str w9, [sp, #5104]
    movz x9, #2483
    str w9, [sp, #5108]
    movz x9, #6072
    str w9, [sp, #5112]
    mov x9, #0
    str w9, [sp, #5116]
    adrp x14, _lb_text_a552c51b3035@PAGE
    add x14, x14, _lb_text_a552c51b3035@PAGEOFF
    str x14, [sp, #5120]
    movz x9, #16
    str x9, [sp, #5128]
    mov x9, #0
    str w9, [sp, #5136]
    movz x9, #15438
    str w9, [sp, #5140]
    movz x9, #7596
    str w9, [sp, #5144]
    movn x9, #977
    str w9, [sp, #5148]
    movn x9, #966
    str w9, [sp, #5152]
    movn x9, #4807
    str w9, [sp, #5156]
    movz x9, #12571
    str w9, [sp, #5160]
    movz x9, #2503
    str w9, [sp, #5164]
    movn x9, #1397
    str w9, [sp, #5168]
    movz x9, #2567
    str w9, [sp, #5172]
    movz x9, #5752
    str w9, [sp, #5176]
    mov x9, #0
    str w9, [sp, #5180]
    adrp x14, _lb_text_f34d00b803dd@PAGE
    add x14, x14, _lb_text_f34d00b803dd@PAGEOFF
    str x14, [sp, #5184]
    movz x9, #8
    str x9, [sp, #5192]
    mov x9, #0
    str w9, [sp, #5200]
    movz x9, #15438
    str w9, [sp, #5204]
    movz x9, #6847
    str w9, [sp, #5208]
    movn x9, #613
    str w9, [sp, #5212]
    movn x9, #1013
    str w9, [sp, #5216]
    movn x9, #4668
    str w9, [sp, #5220]
    movz x9, #12737
    str w9, [sp, #5224]
    movz x9, #2139
    str w9, [sp, #5228]
    movn x9, #1196
    str w9, [sp, #5232]
    movz x9, #2488
    str w9, [sp, #5236]
    movz x9, #6846
    str w9, [sp, #5240]
    mov x9, #0
    str w9, [sp, #5244]
    adrp x14, _lb_text_9fd72750d64d@PAGE
    add x14, x14, _lb_text_9fd72750d64d@PAGEOFF
    str x14, [sp, #5248]
    movz x9, #6
    str x9, [sp, #5256]
    mov x9, #0
    str w9, [sp, #5264]
    movz x9, #3616
    str w9, [sp, #5268]
    movz x9, #6806
    str w9, [sp, #5272]
    movn x9, #178
    str w9, [sp, #5276]
    movn x9, #1019
    str w9, [sp, #5280]
    movn x9, #8096
    str w9, [sp, #5284]
    movz x9, #16415
    str w9, [sp, #5288]
    movz x9, #1687
    str w9, [sp, #5292]
    movn x9, #3266
    str w9, [sp, #5296]
    movz x9, #4236
    str w9, [sp, #5300]
    movz x9, #7690
    str w9, [sp, #5304]
    mov x9, #0
    str w9, [sp, #5308]
    adrp x14, _lb_text_f762af46375b@PAGE
    add x14, x14, _lb_text_f762af46375b@PAGEOFF
    str x14, [sp, #5312]
    movz x9, #8
    str x9, [sp, #5320]
    movz x9, #853
    str w9, [sp, #5328]
    mov x9, #0
    str w9, [sp, #5332]
    movz x9, #17851
    str w9, [sp, #5336]
    movn x9, #10603
    str w9, [sp, #5340]
    movz x9, #922
    str w9, [sp, #5344]
    movn x9, #7424
    str w9, [sp, #5348]
    movz x9, #16662
    str w9, [sp, #5352]
    movz x9, #763
    str w9, [sp, #5356]
    movn x9, #3659
    str w9, [sp, #5360]
    movz x9, #3636
    str w9, [sp, #5364]
    movz x9, #22278
    str w9, [sp, #5368]
    mov x9, #0
    str w9, [sp, #5372]
    adrp x14, _lb_text_4752c5df9551@PAGE
    add x14, x14, _lb_text_4752c5df9551@PAGEOFF
    str x14, [sp, #5376]
    movz x9, #8
    str x9, [sp, #5384]
    mov x9, #0
    str w9, [sp, #5392]
    mov x9, #0
    str w9, [sp, #5396]
    movz x9, #11657
    str w9, [sp, #5400]
    movn x9, #3780
    str w9, [sp, #5404]
    movn x9, #1135
    str w9, [sp, #5408]
    movn x9, #3543
    str w9, [sp, #5412]
    movz x9, #11262
    str w9, [sp, #5416]
    movz x9, #2283
    str w9, [sp, #5420]
    movn x9, #159
    str w9, [sp, #5424]
    movz x9, #1219
    str w9, [sp, #5428]
    movz x9, #4700
    str w9, [sp, #5432]
    mov x9, #0
    str w9, [sp, #5436]
    adrp x14, _lb_text_6cb95d11bc73@PAGE
    add x14, x14, _lb_text_6cb95d11bc73@PAGEOFF
    str x14, [sp, #5440]
    movz x9, #13
    str x9, [sp, #5448]
    mov x9, #0
    str w9, [sp, #5456]
    mov x9, #0
    str w9, [sp, #5460]
    movn x9, #3821
    str w9, [sp, #5464]
    movz x9, #10019
    str w9, [sp, #5468]
    movz x9, #1311
    str w9, [sp, #5472]
    movz x9, #4085
    str w9, [sp, #5476]
    movn x9, #156
    str w9, [sp, #5480]
    movz x9, #3386
    str w9, [sp, #5484]
    movn x9, #5340
    str w9, [sp, #5488]
    movz x9, #10829
    str w9, [sp, #5492]
    movz x9, #4812
    str w9, [sp, #5496]
    mov x9, #0
    str w9, [sp, #5500]
    adrp x14, _lb_text_49dddbd521cb@PAGE
    add x14, x14, _lb_text_49dddbd521cb@PAGEOFF
    str x14, [sp, #5504]
    movz x9, #18
    str x9, [sp, #5512]
    mov x9, #0
    str w9, [sp, #5520]
    mov x9, #0
    str w9, [sp, #5524]
    movz x9, #10826
    str w9, [sp, #5528]
    movn x9, #3653
    str w9, [sp, #5532]
    movn x9, #1022
    str w9, [sp, #5536]
    movn x9, #3214
    str w9, [sp, #5540]
    movz x9, #11310
    str w9, [sp, #5544]
    movz x9, #1906
    str w9, [sp, #5548]
    mov x9, #0
    str w9, [sp, #5552]
    movz x9, #999
    str w9, [sp, #5556]
    movz x9, #4960
    str w9, [sp, #5560]
    mov x9, #0
    str w9, [sp, #5564]
    adrp x14, _lb_text_5106d7321a4e@PAGE
    add x14, x14, _lb_text_5106d7321a4e@PAGEOFF
    str x14, [sp, #5568]
    movz x9, #14
    str x9, [sp, #5576]
    mov x9, #0
    str w9, [sp, #5584]
    mov x9, #0
    str w9, [sp, #5588]
    movz x9, #6493
    str w9, [sp, #5592]
    movn x9, #2337
    str w9, [sp, #5596]
    movn x9, #884
    str w9, [sp, #5600]
    movn x9, #1588
    str w9, [sp, #5604]
    movz x9, #5934
    str w9, [sp, #5608]
    movz x9, #697
    str w9, [sp, #5612]
    movn x9, #444
    str w9, [sp, #5616]
    movz x9, #1368
    str w9, [sp, #5620]
    movz x9, #2543
    str w9, [sp, #5624]
    mov x9, #0
    str w9, [sp, #5628]
    adrp x14, _lb_text_5c734dd87381@PAGE
    add x14, x14, _lb_text_5c734dd87381@PAGEOFF
    str x14, [sp, #5632]
    movz x9, #14
    str x9, [sp, #5640]
    mov x9, #0
    str w9, [sp, #5648]
    mov x9, #0
    str w9, [sp, #5652]
    movz x9, #12513
    str w9, [sp, #5656]
    movn x9, #4406
    str w9, [sp, #5660]
    movn x9, #1241
    str w9, [sp, #5664]
    movn x9, #2679
    str w9, [sp, #5668]
    movz x9, #10276
    str w9, [sp, #5672]
    movz x9, #2405
    str w9, [sp, #5676]
    movn x9, #877
    str w9, [sp, #5680]
    movz x9, #2215
    str w9, [sp, #5684]
    movz x9, #4734
    str w9, [sp, #5688]
    mov x9, #0
    str w9, [sp, #5692]
    adrp x14, _lb_text_50da42eb9656@PAGE
    add x14, x14, _lb_text_50da42eb9656@PAGEOFF
    str x14, [sp, #5696]
    movz x9, #14
    str x9, [sp, #5704]
    mov x9, #0
    str w9, [sp, #5712]
    mov x9, #0
    str w9, [sp, #5716]
    movz x9, #7252
    str w9, [sp, #5720]
    movn x9, #2404
    str w9, [sp, #5724]
    movn x9, #1222
    str w9, [sp, #5728]
    movn x9, #2101
    str w9, [sp, #5732]
    movz x9, #6560
    str w9, [sp, #5736]
    movz x9, #523
    str w9, [sp, #5740]
    movn x9, #111
    str w9, [sp, #5744]
    movz x9, #704
    str w9, [sp, #5748]
    movz x9, #3007
    str w9, [sp, #5752]
    mov x9, #0
    str w9, [sp, #5756]
    adrp x14, _lb_text_e2805c82568f@PAGE
    add x14, x14, _lb_text_e2805c82568f@PAGEOFF
    str x14, [sp, #5760]
    movz x9, #13
    str x9, [sp, #5768]
    mov x9, #0
    str w9, [sp, #5776]
    mov x9, #0
    str w9, [sp, #5780]
    movn x9, #6232
    str w9, [sp, #5784]
    movz x9, #10706
    str w9, [sp, #5788]
    movz x9, #1825
    str w9, [sp, #5792]
    movz x9, #3260
    str w9, [sp, #5796]
    movz x9, #821
    str w9, [sp, #5800]
    movz x9, #3980
    str w9, [sp, #5804]
    movn x9, #6511
    str w9, [sp, #5808]
    movz x9, #10745
    str w9, [sp, #5812]
    movz x9, #6287
    str w9, [sp, #5816]
    mov x9, #0
    str w9, [sp, #5820]
    adrp x14, _lb_text_2baf3dae0e40@PAGE
    add x14, x14, _lb_text_2baf3dae0e40@PAGEOFF
    str x14, [sp, #5824]
    movz x9, #12
    str x9, [sp, #5832]
    mov x9, #0
    str w9, [sp, #5840]
    mov x9, #0
    str w9, [sp, #5844]
    movn x9, #5706
    str w9, [sp, #5848]
    movz x9, #10308
    str w9, [sp, #5852]
    movz x9, #2002
    str w9, [sp, #5856]
    movz x9, #2662
    str w9, [sp, #5860]
    movz x9, #1829
    str w9, [sp, #5864]
    movz x9, #4139
    str w9, [sp, #5868]
    movn x9, #6264
    str w9, [sp, #5872]
    movz x9, #11063
    str w9, [sp, #5876]
    movz x9, #6033
    str w9, [sp, #5880]
    mov x9, #0
    str w9, [sp, #5884]
    adrp x14, _lb_text_7172529c806d@PAGE
    add x14, x14, _lb_text_7172529c806d@PAGEOFF
    str x14, [sp, #5888]
    movz x9, #14
    str x9, [sp, #5896]
    mov x9, #0
    str w9, [sp, #5904]
    mov x9, #0
    str w9, [sp, #5908]
    movz x9, #15591
    str w9, [sp, #5912]
    movn x9, #6401
    str w9, [sp, #5916]
    movn x9, #1591
    str w9, [sp, #5920]
    movn x9, #5364
    str w9, [sp, #5924]
    movz x9, #13198
    str w9, [sp, #5928]
    movz x9, #2168
    str w9, [sp, #5932]
    movn x9, #1299
    str w9, [sp, #5936]
    movz x9, #1824
    str w9, [sp, #5940]
    movz x9, #5075
    str w9, [sp, #5944]
    mov x9, #0
    str w9, [sp, #5948]
    adrp x14, _lb_text_d2a8203cb967@PAGE
    add x14, x14, _lb_text_d2a8203cb967@PAGEOFF
    str x14, [sp, #5952]
    movz x9, #14
    str x9, [sp, #5960]
    mov x9, #0
    str w9, [sp, #5968]
    mov x9, #0
    str w9, [sp, #5972]
    movz x9, #15265
    str w9, [sp, #5976]
    movn x9, #6192
    str w9, [sp, #5980]
    movn x9, #1557
    str w9, [sp, #5984]
    movn x9, #4124
    str w9, [sp, #5988]
    movz x9, #12116
    str w9, [sp, #5992]
    movz x9, #2010
    str w9, [sp, #5996]
    movn x9, #887
    str w9, [sp, #6000]
    movz x9, #1639
    str w9, [sp, #6004]
    movz x9, #5220
    str w9, [sp, #6008]
    mov x9, #0
    str w9, [sp, #6012]
    adrp x14, _lb_text_9f6d857f4ec8@PAGE
    add x14, x14, _lb_text_9f6d857f4ec8@PAGEOFF
    str x14, [sp, #6016]
    movz x9, #14
    str x9, [sp, #6024]
    mov x9, #0
    str w9, [sp, #6032]
    mov x9, #0
    str w9, [sp, #6036]
    movz x9, #14201
    str w9, [sp, #6040]
    movn x9, #5307
    str w9, [sp, #6044]
    movn x9, #1756
    str w9, [sp, #6048]
    movn x9, #6086
    str w9, [sp, #6052]
    movz x9, #14472
    str w9, [sp, #6056]
    movz x9, #1617
    str w9, [sp, #6060]
    movn x9, #2190
    str w9, [sp, #6064]
    movz x9, #3105
    str w9, [sp, #6068]
    movz x9, #5348
    str w9, [sp, #6072]
    mov x9, #0
    str w9, [sp, #6076]
    adrp x14, _lb_text_3ba66ada1366@PAGE
    add x14, x14, _lb_text_3ba66ada1366@PAGEOFF
    str x14, [sp, #6080]
    movz x9, #14
    str x9, [sp, #6088]
    mov x9, #0
    str w9, [sp, #6096]
    mov x9, #0
    str w9, [sp, #6100]
    movz x9, #13124
    str w9, [sp, #6104]
    movn x9, #5328
    str w9, [sp, #6108]
    movn x9, #1389
    str w9, [sp, #6112]
    movn x9, #3601
    str w9, [sp, #6116]
    movz x9, #11658
    str w9, [sp, #6120]
    movz x9, #1944
    str w9, [sp, #6124]
    movn x9, #1611
    str w9, [sp, #6128]
    movz x9, #2863
    str w9, [sp, #6132]
    movz x9, #4885
    str w9, [sp, #6136]
    mov x9, #0
    str w9, [sp, #6140]
    adrp x14, _lb_text_0d5f1849134e@PAGE
    add x14, x14, _lb_text_0d5f1849134e@PAGEOFF
    str x14, [sp, #6144]
    movz x9, #17
    str x9, [sp, #6152]
    mov x9, #0
    str w9, [sp, #6160]
    mov x9, #0
    str w9, [sp, #6164]
    movz x9, #9427
    str w9, [sp, #6168]
    movn x9, #3035
    str w9, [sp, #6172]
    movn x9, #958
    str w9, [sp, #6176]
    movn x9, #2580
    str w9, [sp, #6180]
    movz x9, #10671
    str w9, [sp, #6184]
    movz x9, #1911
    str w9, [sp, #6188]
    movn x9, #1038
    str w9, [sp, #6192]
    movz x9, #1982
    str w9, [sp, #6196]
    movz x9, #4430
    str w9, [sp, #6200]
    mov x9, #0
    str w9, [sp, #6204]
    adrp x14, _lb_text_52165361d187@PAGE
    add x14, x14, _lb_text_52165361d187@PAGEOFF
    str x14, [sp, #6208]
    movz x9, #17
    str x9, [sp, #6216]
    mov x9, #0
    str w9, [sp, #6224]
    mov x9, #0
    str w9, [sp, #6228]
    movz x9, #14573
    str w9, [sp, #6232]
    movn x9, #5481
    str w9, [sp, #6236]
    movn x9, #1545
    str w9, [sp, #6240]
    movn x9, #1265
    str w9, [sp, #6244]
    movz x9, #9799
    str w9, [sp, #6248]
    movz x9, #1468
    str w9, [sp, #6252]
    movn x9, #1039
    str w9, [sp, #6256]
    movz x9, #1912
    str w9, [sp, #6260]
    movz x9, #3810
    str w9, [sp, #6264]
    mov x9, #0
    str w9, [sp, #6268]
    adrp x14, _lb_text_1acc20db0a0a@PAGE
    add x14, x14, _lb_text_1acc20db0a0a@PAGEOFF
    str x14, [sp, #6272]
    movz x9, #13
    str x9, [sp, #6280]
    movz x9, #127
    str w9, [sp, #6288]
    mov x9, #0
    str w9, [sp, #6292]
    movz x9, #14052
    str w9, [sp, #6296]
    movn x9, #5228
    str w9, [sp, #6300]
    movn x9, #1155
    str w9, [sp, #6304]
    movn x9, #1324
    str w9, [sp, #6308]
    movz x9, #9420
    str w9, [sp, #6312]
    movz x9, #2252
    str w9, [sp, #6316]
    movn x9, #497
    str w9, [sp, #6320]
    movz x9, #1957
    str w9, [sp, #6324]
    movz x9, #4116
    str w9, [sp, #6328]
    mov x9, #0
    str w9, [sp, #6332]
    adrp x14, _lb_text_82a6720f3f56@PAGE
    add x14, x14, _lb_text_82a6720f3f56@PAGEOFF
    str x14, [sp, #6336]
    movz x9, #13
    str x9, [sp, #6344]
    mov x9, #0
    str w9, [sp, #6352]
    mov x9, #0
    str w9, [sp, #6356]
    movz x9, #11093
    str w9, [sp, #6360]
    movn x9, #3905
    str w9, [sp, #6364]
    movn x9, #1027
    str w9, [sp, #6368]
    movn x9, #5046
    str w9, [sp, #6372]
    movz x9, #12492
    str w9, [sp, #6376]
    movz x9, #2879
    str w9, [sp, #6380]
    movn x9, #1002
    str w9, [sp, #6384]
    movz x9, #1750
    str w9, [sp, #6388]
    movz x9, #5561
    str w9, [sp, #6392]
    mov x9, #0
    str w9, [sp, #6396]
    adrp x14, _lb_text_d46cce7554b8@PAGE
    add x14, x14, _lb_text_d46cce7554b8@PAGEOFF
    str x14, [sp, #6400]
    movz x9, #13
    str x9, [sp, #6408]
    mov x9, #0
    str w9, [sp, #6416]
    mov x9, #0
    str w9, [sp, #6420]
    movz x9, #12177
    str w9, [sp, #6424]
    movn x9, #4816
    str w9, [sp, #6428]
    movn x9, #1068
    str w9, [sp, #6432]
    movn x9, #1611
    str w9, [sp, #6436]
    movz x9, #9864
    str w9, [sp, #6440]
    movz x9, #2049
    str w9, [sp, #6444]
    movn x9, #97
    str w9, [sp, #6448]
    movz x9, #850
    str w9, [sp, #6452]
    movz x9, #4471
    str w9, [sp, #6456]
    mov x9, #0
    str w9, [sp, #6460]
    adrp x14, _lb_text_575257e9be5a@PAGE
    add x14, x14, _lb_text_575257e9be5a@PAGEOFF
    str x14, [sp, #6464]
    movz x9, #13
    str x9, [sp, #6472]
    mov x9, #0
    str w9, [sp, #6480]
    mov x9, #0
    str w9, [sp, #6484]
    movz x9, #13244
    str w9, [sp, #6488]
    movn x9, #5500
    str w9, [sp, #6492]
    movn x9, #1247
    str w9, [sp, #6496]
    movn x9, #1507
    str w9, [sp, #6500]
    movz x9, #9858
    str w9, [sp, #6504]
    movz x9, #1935
    str w9, [sp, #6508]
    movn x9, #269
    str w9, [sp, #6512]
    movz x9, #1083
    str w9, [sp, #6516]
    movz x9, #4366
    str w9, [sp, #6520]
    mov x9, #0
    str w9, [sp, #6524]
    adrp x14, _lb_text_430e3a057955@PAGE
    add x14, x14, _lb_text_430e3a057955@PAGEOFF
    str x14, [sp, #6528]
    movz x9, #13
    str x9, [sp, #6536]
    mov x9, #0
    str w9, [sp, #6544]
    mov x9, #0
    str w9, [sp, #6548]
    movz x9, #7474
    str w9, [sp, #6552]
    movn x9, #2300
    str w9, [sp, #6556]
    movn x9, #566
    str w9, [sp, #6560]
    movn x9, #4055
    str w9, [sp, #6564]
    movz x9, #11456
    str w9, [sp, #6568]
    movz x9, #2975
    str w9, [sp, #6572]
    movn x9, #221
    str w9, [sp, #6576]
    movz x9, #716
    str w9, [sp, #6580]
    movz x9, #4181
    str w9, [sp, #6584]
    mov x9, #0
    str w9, [sp, #6588]
    adrp x14, _lb_text_8a615af83ba7@PAGE
    add x14, x14, _lb_text_8a615af83ba7@PAGEOFF
    str x14, [sp, #6592]
    movz x9, #13
    str x9, [sp, #6600]
    mov x9, #0
    str w9, [sp, #6608]
    mov x9, #0
    str w9, [sp, #6612]
    movz x9, #8020
    str w9, [sp, #6616]
    movn x9, #2686
    str w9, [sp, #6620]
    movn x9, #681
    str w9, [sp, #6624]
    movn x9, #3703
    str w9, [sp, #6628]
    movz x9, #11879
    str w9, [sp, #6632]
    movz x9, #2052
    str w9, [sp, #6636]
    movn x9, #964
    str w9, [sp, #6640]
    movz x9, #1921
    str w9, [sp, #6644]
    movz x9, #5556
    str w9, [sp, #6648]
    mov x9, #0
    str w9, [sp, #6652]
    adrp x14, _lb_text_5a6013c6cc96@PAGE
    add x14, x14, _lb_text_5a6013c6cc96@PAGEOFF
    str x14, [sp, #6656]
    movz x9, #23
    str x9, [sp, #6664]
    mov x9, #0
    str w9, [sp, #6672]
    mov x9, #0
    str w9, [sp, #6676]
    movz x9, #8532
    str w9, [sp, #6680]
    movn x9, #700
    str w9, [sp, #6684]
    movn x9, #1166
    str w9, [sp, #6688]
    movn x9, #4094
    str w9, [sp, #6692]
    movz x9, #11879
    str w9, [sp, #6696]
    movz x9, #2508
    str w9, [sp, #6700]
    movn x9, #796
    str w9, [sp, #6704]
    movz x9, #2424
    str w9, [sp, #6708]
    movz x9, #7010
    str w9, [sp, #6712]
    mov x9, #0
    str w9, [sp, #6716]
    adrp x14, _lb_text_671708316e1f@PAGE
    add x14, x14, _lb_text_671708316e1f@PAGEOFF
    str x14, [sp, #6720]
    movz x9, #22
    str x9, [sp, #6728]
    mov x9, #0
    str w9, [sp, #6736]
    mov x9, #0
    str w9, [sp, #6740]
    movz x9, #7378
    str w9, [sp, #6744]
    movn x9, #1254
    str w9, [sp, #6748]
    movn x9, #1042
    str w9, [sp, #6752]
    movn x9, #4087
    str w9, [sp, #6756]
    movz x9, #12251
    str w9, [sp, #6760]
    movz x9, #2048
    str w9, [sp, #6764]
    movn x9, #875
    str w9, [sp, #6768]
    movz x9, #1946
    str w9, [sp, #6772]
    movz x9, #5805
    str w9, [sp, #6776]
    mov x9, #0
    str w9, [sp, #6780]
    adrp x14, _lb_text_3223fefec78b@PAGE
    add x14, x14, _lb_text_3223fefec78b@PAGEOFF
    str x14, [sp, #6784]
    movz x9, #14
    str x9, [sp, #6792]
    mov x9, #0
    str w9, [sp, #6800]
    mov x9, #0
    str w9, [sp, #6804]
    movz x9, #7378
    str w9, [sp, #6808]
    movn x9, #1254
    str w9, [sp, #6812]
    movn x9, #1042
    str w9, [sp, #6816]
    movn x9, #4087
    str w9, [sp, #6820]
    movz x9, #12251
    str w9, [sp, #6824]
    movz x9, #2048
    str w9, [sp, #6828]
    movn x9, #875
    str w9, [sp, #6832]
    movz x9, #1946
    str w9, [sp, #6836]
    movz x9, #5805
    str w9, [sp, #6840]
    mov x9, #0
    str w9, [sp, #6844]
    adrp x14, _lb_text_1e4723f0674a@PAGE
    add x14, x14, _lb_text_1e4723f0674a@PAGEOFF
    str x14, [sp, #6848]
    movz x9, #12
    str x9, [sp, #6856]
    mov x9, #0
    str w9, [sp, #6864]
    mov x9, #0
    str w9, [sp, #6868]
    movn x9, #5685
    str w9, [sp, #6872]
    movz x9, #10300
    str w9, [sp, #6876]
    movz x9, #2223
    str w9, [sp, #6880]
    movz x9, #4725
    str w9, [sp, #6884]
    movn x9, #1156
    str w9, [sp, #6888]
    movz x9, #4383
    str w9, [sp, #6892]
    movn x9, #6127
    str w9, [sp, #6896]
    movz x9, #10783
    str w9, [sp, #6900]
    movz x9, #6163
    str w9, [sp, #6904]
    mov x9, #0
    str w9, [sp, #6908]
    adrp x14, _lb_text_21a887f66494@PAGE
    add x14, x14, _lb_text_21a887f66494@PAGEOFF
    str x14, [sp, #6912]
    movz x9, #12
    str x9, [sp, #6920]
    mov x9, #0
    str w9, [sp, #6928]
    mov x9, #0
    str w9, [sp, #6932]
    movz x9, #9194
    str w9, [sp, #6936]
    movn x9, #2786
    str w9, [sp, #6940]
    movn x9, #1058
    str w9, [sp, #6944]
    movn x9, #8097
    str w9, [sp, #6948]
    movz x9, #15657
    str w9, [sp, #6952]
    movz x9, #2608
    str w9, [sp, #6956]
    movn x9, #2609
    str w9, [sp, #6960]
    movz x9, #3064
    str w9, [sp, #6964]
    movz x9, #7867
    str w9, [sp, #6968]
    mov x9, #0
    str w9, [sp, #6972]
    adrp x14, _lb_text_206075b86bfc@PAGE
    add x14, x14, _lb_text_206075b86bfc@PAGEOFF
    str x14, [sp, #6976]
    movz x9, #14
    str x9, [sp, #6984]
    mov x9, #0
    str w9, [sp, #6992]
    mov x9, #0
    str w9, [sp, #6996]
    movz x9, #9701
    str w9, [sp, #7000]
    movn x9, #3856
    str w9, [sp, #7004]
    movn x9, #920
    str w9, [sp, #7008]
    movn x9, #3148
    str w9, [sp, #7012]
    movz x9, #11537
    str w9, [sp, #7016]
    movz x9, #1817
    str w9, [sp, #7020]
    movn x9, #785
    str w9, [sp, #7024]
    movz x9, #1817
    str w9, [sp, #7028]
    movz x9, #5147
    str w9, [sp, #7032]
    mov x9, #0
    str w9, [sp, #7036]
    adrp x14, _lb_text_0785ec0b3775@PAGE
    add x14, x14, _lb_text_0785ec0b3775@PAGEOFF
    str x14, [sp, #7040]
    movz x9, #12
    str x9, [sp, #7048]
    mov x9, #0
    str w9, [sp, #7056]
    mov x9, #0
    str w9, [sp, #7060]
    movz x9, #9326
    str w9, [sp, #7064]
    movn x9, #2881
    str w9, [sp, #7068]
    movn x9, #1083
    str w9, [sp, #7072]
    movn x9, #7939
    str w9, [sp, #7076]
    movz x9, #15447
    str w9, [sp, #7080]
    movz x9, #2677
    str w9, [sp, #7084]
    movn x9, #2619
    str w9, [sp, #7088]
    movz x9, #3090
    str w9, [sp, #7092]
    movz x9, #7740
    str w9, [sp, #7096]
    mov x9, #0
    str w9, [sp, #7100]
    adrp x14, _lb_text_4fff8e6be1c8@PAGE
    add x14, x14, _lb_text_4fff8e6be1c8@PAGEOFF
    str x14, [sp, #7104]
    movz x9, #22
    str x9, [sp, #7112]
    mov x9, #0
    str w9, [sp, #7120]
    mov x9, #0
    str w9, [sp, #7124]
    movz x9, #11629
    str w9, [sp, #7128]
    movn x9, #5712
    str w9, [sp, #7132]
    movn x9, #913
    str w9, [sp, #7136]
    movn x9, #2705
    str w9, [sp, #7140]
    movz x9, #11090
    str w9, [sp, #7144]
    movz x9, #1842
    str w9, [sp, #7148]
    movn x9, #205
    str w9, [sp, #7152]
    movz x9, #1225
    str w9, [sp, #7156]
    movz x9, #5515
    str w9, [sp, #7160]
    mov x9, #0
    str w9, [sp, #7164]
    adrp x14, _lb_text_ec0de057f238@PAGE
    add x14, x14, _lb_text_ec0de057f238@PAGEOFF
    str x14, [sp, #7168]
    movz x9, #14
    str x9, [sp, #7176]
    mov x9, #0
    str w9, [sp, #7184]
    mov x9, #0
    str w9, [sp, #7188]
    movz x9, #9602
    str w9, [sp, #7192]
    movn x9, #3822
    str w9, [sp, #7196]
    movn x9, #936
    str w9, [sp, #7200]
    movn x9, #2983
    str w9, [sp, #7204]
    movz x9, #11495
    str w9, [sp, #7208]
    movz x9, #1675
    str w9, [sp, #7212]
    movn x9, #406
    str w9, [sp, #7216]
    movz x9, #1415
    str w9, [sp, #7220]
    movz x9, #5049
    str w9, [sp, #7224]
    mov x9, #0
    str w9, [sp, #7228]
    adrp x14, _lb_text_1dd8ee8e9489@PAGE
    add x14, x14, _lb_text_1dd8ee8e9489@PAGEOFF
    str x14, [sp, #7232]
    movz x9, #12
    str x9, [sp, #7240]
    mov x9, #0
    str w9, [sp, #7248]
    mov x9, #0
    str w9, [sp, #7252]
    movz x9, #9869
    str w9, [sp, #7256]
    movn x9, #2971
    str w9, [sp, #7260]
    movn x9, #941
    str w9, [sp, #7264]
    movn x9, #7313
    str w9, [sp, #7268]
    movz x9, #15098
    str w9, [sp, #7272]
    movz x9, #2369
    str w9, [sp, #7276]
    movn x9, #1897
    str w9, [sp, #7280]
    movz x9, #2536
    str w9, [sp, #7284]
    movz x9, #7282
    str w9, [sp, #7288]
    mov x9, #0
    str w9, [sp, #7292]
    adrp x14, _lb_text_fe2a7eb72689@PAGE
    add x14, x14, _lb_text_fe2a7eb72689@PAGEOFF
    str x14, [sp, #7296]
    movz x9, #12
    str x9, [sp, #7304]
    mov x9, #0
    str w9, [sp, #7312]
    mov x9, #0
    str w9, [sp, #7316]
    movz x9, #9876
    str w9, [sp, #7320]
    movn x9, #3773
    str w9, [sp, #7324]
    movn x9, #870
    str w9, [sp, #7328]
    movn x9, #7612
    str w9, [sp, #7332]
    movz x9, #14807
    str w9, [sp, #7336]
    movz x9, #3071
    str w9, [sp, #7340]
    movn x9, #1447
    str w9, [sp, #7344]
    movz x9, #1305
    str w9, [sp, #7348]
    movz x9, #7485
    str w9, [sp, #7352]
    mov x9, #0
    str w9, [sp, #7356]
    adrp x14, _lb_text_a3b0c662f2b8@PAGE
    add x14, x14, _lb_text_a3b0c662f2b8@PAGEOFF
    str x14, [sp, #7360]
    movz x9, #23
    str x9, [sp, #7368]
    mov x9, #0
    str w9, [sp, #7376]
    mov x9, #0
    str w9, [sp, #7380]
    movz x9, #11629
    str w9, [sp, #7384]
    movn x9, #5712
    str w9, [sp, #7388]
    movn x9, #913
    str w9, [sp, #7392]
    movn x9, #2705
    str w9, [sp, #7396]
    movz x9, #11090
    str w9, [sp, #7400]
    movz x9, #1842
    str w9, [sp, #7404]
    movn x9, #205
    str w9, [sp, #7408]
    movz x9, #1225
    str w9, [sp, #7412]
    movz x9, #5515
    str w9, [sp, #7416]
    mov x9, #0
    str w9, [sp, #7420]
    adrp x14, _lb_text_40251da66af7@PAGE
    add x14, x14, _lb_text_40251da66af7@PAGEOFF
    str x14, [sp, #7424]
    movz x9, #22
    str x9, [sp, #7432]
    mov x9, #0
    str w9, [sp, #7440]
    mov x9, #0
    str w9, [sp, #7444]
    movz x9, #9602
    str w9, [sp, #7448]
    movn x9, #3822
    str w9, [sp, #7452]
    movn x9, #936
    str w9, [sp, #7456]
    movn x9, #2983
    str w9, [sp, #7460]
    movz x9, #11495
    str w9, [sp, #7464]
    movz x9, #1675
    str w9, [sp, #7468]
    movn x9, #406
    str w9, [sp, #7472]
    movz x9, #1415
    str w9, [sp, #7476]
    movz x9, #5049
    str w9, [sp, #7480]
    mov x9, #0
    str w9, [sp, #7484]
    adrp x14, _lb_text_1b36ab8d0cbb@PAGE
    add x14, x14, _lb_text_1b36ab8d0cbb@PAGEOFF
    str x14, [sp, #7488]
    movz x9, #14
    str x9, [sp, #7496]
    mov x9, #0
    str w9, [sp, #7504]
    mov x9, #0
    str w9, [sp, #7508]
    movz x9, #9602
    str w9, [sp, #7512]
    movn x9, #3822
    str w9, [sp, #7516]
    movn x9, #936
    str w9, [sp, #7520]
    movn x9, #2983
    str w9, [sp, #7524]
    movz x9, #11495
    str w9, [sp, #7528]
    movz x9, #1675
    str w9, [sp, #7532]
    movn x9, #406
    str w9, [sp, #7536]
    movz x9, #1415
    str w9, [sp, #7540]
    movz x9, #5049
    str w9, [sp, #7544]
    mov x9, #0
    str w9, [sp, #7548]
    adrp x14, _lb_text_73eec128d65c@PAGE
    add x14, x14, _lb_text_73eec128d65c@PAGEOFF
    str x14, [sp, #7552]
    movz x9, #22
    str x9, [sp, #7560]
    mov x9, #0
    str w9, [sp, #7568]
    mov x9, #0
    str w9, [sp, #7572]
    movz x9, #10056
    str w9, [sp, #7576]
    movn x9, #4130
    str w9, [sp, #7580]
    movn x9, #943
    str w9, [sp, #7584]
    movn x9, #2575
    str w9, [sp, #7588]
    movz x9, #11143
    str w9, [sp, #7592]
    movz x9, #1625
    str w9, [sp, #7596]
    movn x9, #237
    str w9, [sp, #7600]
    movz x9, #1294
    str w9, [sp, #7604]
    movz x9, #5179
    str w9, [sp, #7608]
    mov x9, #0
    str w9, [sp, #7612]
    adrp x14, _lb_text_6d1c19d8d11c@PAGE
    add x14, x14, _lb_text_6d1c19d8d11c@PAGEOFF
    str x14, [sp, #7616]
    movz x9, #14
    str x9, [sp, #7624]
    mov x9, #0
    str w9, [sp, #7632]
    mov x9, #0
    str w9, [sp, #7636]
    movz x9, #9602
    str w9, [sp, #7640]
    movn x9, #3822
    str w9, [sp, #7644]
    movn x9, #936
    str w9, [sp, #7648]
    movn x9, #2983
    str w9, [sp, #7652]
    movz x9, #11495
    str w9, [sp, #7656]
    movz x9, #1675
    str w9, [sp, #7660]
    movn x9, #406
    str w9, [sp, #7664]
    movz x9, #1415
    str w9, [sp, #7668]
    movz x9, #5049
    str w9, [sp, #7672]
    mov x9, #0
    str w9, [sp, #7676]
    adrp x14, _lb_text_dad01474dd39@PAGE
    add x14, x14, _lb_text_dad01474dd39@PAGEOFF
    str x14, [sp, #7680]
    movz x9, #12
    str x9, [sp, #7688]
    mov x9, #0
    str w9, [sp, #7696]
    mov x9, #0
    str w9, [sp, #7700]
    movz x9, #7368
    str w9, [sp, #7704]
    movn x9, #2140
    str w9, [sp, #7708]
    movn x9, #597
    str w9, [sp, #7712]
    movn x9, #5620
    str w9, [sp, #7716]
    movz x9, #13254
    str w9, [sp, #7720]
    movz x9, #2625
    str w9, [sp, #7724]
    movn x9, #1417
    str w9, [sp, #7728]
    movz x9, #1696
    str w9, [sp, #7732]
    movz x9, #5743
    str w9, [sp, #7736]
    mov x9, #0
    str w9, [sp, #7740]
    adrp x14, _lb_text_5fe46e950bd2@PAGE
    add x14, x14, _lb_text_5fe46e950bd2@PAGEOFF
    str x14, [sp, #7744]
    movz x9, #15
    str x9, [sp, #7752]
    mov x9, #0
    str w9, [sp, #7760]
    mov x9, #0
    str w9, [sp, #7764]
    movz x9, #5477
    str w9, [sp, #7768]
    movn x9, #1434
    str w9, [sp, #7772]
    movn x9, #991
    str w9, [sp, #7776]
    movn x9, #1867
    str w9, [sp, #7780]
    movz x9, #6639
    str w9, [sp, #7784]
    movz x9, #510
    str w9, [sp, #7788]
    movn x9, #57
    str w9, [sp, #7792]
    movz x9, #792
    str w9, [sp, #7796]
    movz x9, #2670
    str w9, [sp, #7800]
    mov x9, #0
    str w9, [sp, #7804]
    adrp x14, _lb_text_ec082aee7982@PAGE
    add x14, x14, _lb_text_ec082aee7982@PAGEOFF
    str x14, [sp, #7808]
    movz x9, #15
    str x9, [sp, #7816]
    mov x9, #0
    str w9, [sp, #7824]
    mov x9, #0
    str w9, [sp, #7828]
    movz x9, #14062
    str w9, [sp, #7832]
    movn x9, #5198
    str w9, [sp, #7836]
    movn x9, #1445
    str w9, [sp, #7840]
    movn x9, #4711
    str w9, [sp, #7844]
    movz x9, #12470
    str w9, [sp, #7848]
    movz x9, #2243
    str w9, [sp, #7852]
    movn x9, #1285
    str w9, [sp, #7856]
    movz x9, #2028
    str w9, [sp, #7860]
    movz x9, #4836
    str w9, [sp, #7864]
    mov x9, #0
    str w9, [sp, #7868]
    adrp x14, _lb_text_788c5225ae7d@PAGE
    add x14, x14, _lb_text_788c5225ae7d@PAGEOFF
    str x14, [sp, #7872]
    movz x9, #13
    str x9, [sp, #7880]
    mov x9, #0
    str w9, [sp, #7888]
    mov x9, #0
    str w9, [sp, #7892]
    movz x9, #10744
    str w9, [sp, #7896]
    movn x9, #3812
    str w9, [sp, #7900]
    movn x9, #1141
    str w9, [sp, #7904]
    movn x9, #7961
    str w9, [sp, #7908]
    movz x9, #15966
    str w9, [sp, #7912]
    movz x9, #2075
    str w9, [sp, #7916]
    movn x9, #2491
    str w9, [sp, #7920]
    movz x9, #2805
    str w9, [sp, #7924]
    movz x9, #7744
    str w9, [sp, #7928]
    mov x9, #0
    str w9, [sp, #7932]
    adrp x14, _lb_text_83bb88b90835@PAGE
    add x14, x14, _lb_text_83bb88b90835@PAGEOFF
    str x14, [sp, #7936]
    movz x9, #13
    str x9, [sp, #7944]
    mov x9, #0
    str w9, [sp, #7952]
    mov x9, #0
    str w9, [sp, #7956]
    movz x9, #8606
    str w9, [sp, #7960]
    movn x9, #2572
    str w9, [sp, #7964]
    movn x9, #948
    str w9, [sp, #7968]
    movn x9, #8236
    str w9, [sp, #7972]
    movz x9, #15489
    str w9, [sp, #7976]
    movz x9, #2974
    str w9, [sp, #7980]
    movn x9, #2648
    str w9, [sp, #7984]
    movz x9, #3076
    str w9, [sp, #7988]
    movz x9, #9100
    str w9, [sp, #7992]
    mov x9, #0
    str w9, [sp, #7996]
    adrp x14, _lb_text_f586ec9024d8@PAGE
    add x14, x14, _lb_text_f586ec9024d8@PAGEOFF
    str x14, [sp, #8000]
    movz x9, #13
    str x9, [sp, #8008]
    mov x9, #0
    str w9, [sp, #8016]
    mov x9, #0
    str w9, [sp, #8020]
    movz x9, #8251
    str w9, [sp, #8024]
    movn x9, #2409
    str w9, [sp, #8028]
    movn x9, #963
    str w9, [sp, #8032]
    movn x9, #8046
    str w9, [sp, #8036]
    movz x9, #15430
    str w9, [sp, #8040]
    movz x9, #2823
    str w9, [sp, #8044]
    movn x9, #2379
    str w9, [sp, #8048]
    movz x9, #2824
    str w9, [sp, #8052]
    movz x9, #8119
    str w9, [sp, #8056]
    mov x9, #0
    str w9, [sp, #8060]
    adrp x14, _lb_text_bc94cee86537@PAGE
    add x14, x14, _lb_text_bc94cee86537@PAGEOFF
    str x14, [sp, #8064]
    movz x9, #13
    str x9, [sp, #8072]
    mov x9, #0
    str w9, [sp, #8080]
    mov x9, #0
    str w9, [sp, #8084]
    movz x9, #8979
    str w9, [sp, #8088]
    movn x9, #2657
    str w9, [sp, #8092]
    movn x9, #870
    str w9, [sp, #8096]
    movn x9, #7720
    str w9, [sp, #8100]
    movz x9, #15500
    str w9, [sp, #8104]
    movz x9, #2357
    str w9, [sp, #8108]
    movn x9, #1772
    str w9, [sp, #8112]
    movz x9, #2366
    str w9, [sp, #8116]
    movz x9, #6634
    str w9, [sp, #8120]
    mov x9, #0
    str w9, [sp, #8124]
    adrp x14, _lb_text_359d1e92cf7c@PAGE
    add x14, x14, _lb_text_359d1e92cf7c@PAGEOFF
    str x14, [sp, #8128]
    movz x9, #13
    str x9, [sp, #8136]
    mov x9, #0
    str w9, [sp, #8144]
    mov x9, #0
    str w9, [sp, #8148]
    movz x9, #8794
    str w9, [sp, #8152]
    movn x9, #2481
    str w9, [sp, #8156]
    movn x9, #796
    str w9, [sp, #8160]
    movn x9, #7803
    str w9, [sp, #8164]
    movz x9, #15403
    str w9, [sp, #8168]
    movz x9, #2572
    str w9, [sp, #8172]
    movn x9, #1421
    str w9, [sp, #8176]
    movz x9, #1996
    str w9, [sp, #8180]
    movz x9, #7083
    str w9, [sp, #8184]
    mov x9, #0
    str w9, [sp, #8188]
    adrp x14, _lb_text_660d9822e9c1@PAGE
    add x14, x14, _lb_text_660d9822e9c1@PAGEOFF
    str x14, [sp, #8192]
    movz x9, #13
    str x9, [sp, #8200]
    mov x9, #0
    str w9, [sp, #8208]
    mov x9, #0
    str w9, [sp, #8212]
    movz x9, #9976
    str w9, [sp, #8216]
    movn x9, #3809
    str w9, [sp, #8220]
    movn x9, #831
    str w9, [sp, #8224]
    movn x9, #7114
    str w9, [sp, #8228]
    movz x9, #14463
    str w9, [sp, #8232]
    movz x9, #2906
    str w9, [sp, #8236]
    movn x9, #900
    str w9, [sp, #8240]
    movz x9, #989
    str w9, [sp, #8244]
    movz x9, #7889
    str w9, [sp, #8248]
    mov x9, #0
    str w9, [sp, #8252]
    adrp x14, _lb_text_cecd2dd45d1f@PAGE
    add x14, x14, _lb_text_cecd2dd45d1f@PAGEOFF
    str x14, [sp, #8256]
    movz x9, #13
    str x9, [sp, #8264]
    mov x9, #0
    str w9, [sp, #8272]
    mov x9, #0
    str w9, [sp, #8276]
    movz x9, #12374
    str w9, [sp, #8280]
    movn x9, #5015
    str w9, [sp, #8284]
    movn x9, #1048
    str w9, [sp, #8288]
    movn x9, #1676
    str w9, [sp, #8292]
    movz x9, #9902
    str w9, [sp, #8296]
    movz x9, #2078
    str w9, [sp, #8300]
    movn x9, #82
    str w9, [sp, #8304]
    movz x9, #852
    str w9, [sp, #8308]
    movz x9, #4683
    str w9, [sp, #8312]
    mov x9, #0
    str w9, [sp, #8316]
    adrp x14, _lb_text_3e333a040c27@PAGE
    add x14, x14, _lb_text_3e333a040c27@PAGEOFF
    str x14, [sp, #8320]
    movz x9, #13
    str x9, [sp, #8328]
    mov x9, #0
    str w9, [sp, #8336]
    mov x9, #0
    str w9, [sp, #8340]
    movz x9, #13440
    str w9, [sp, #8344]
    movn x9, #5895
    str w9, [sp, #8348]
    movn x9, #1278
    str w9, [sp, #8352]
    movn x9, #1235
    str w9, [sp, #8356]
    movz x9, #9598
    str w9, [sp, #8360]
    movz x9, #1931
    str w9, [sp, #8364]
    movn x9, #179
    str w9, [sp, #8368]
    movz x9, #1001
    str w9, [sp, #8372]
    movz x9, #4651
    str w9, [sp, #8376]
    mov x9, #0
    str w9, [sp, #8380]
    adrp x14, _lb_text_56b166a3954d@PAGE
    add x14, x14, _lb_text_56b166a3954d@PAGEOFF
    str x14, [sp, #8384]
    movz x9, #14
    str x9, [sp, #8392]
    mov x9, #0
    str w9, [sp, #8400]
    mov x9, #0
    str w9, [sp, #8404]
    movz x9, #6961
    str w9, [sp, #8408]
    movn x9, #1684
    str w9, [sp, #8412]
    movn x9, #694
    str w9, [sp, #8416]
    movn x9, #4624
    str w9, [sp, #8420]
    movz x9, #12945
    str w9, [sp, #8424]
    movz x9, #1836
    str w9, [sp, #8428]
    movn x9, #1113
    str w9, [sp, #8432]
    movz x9, #2152
    str w9, [sp, #8436]
    movz x9, #5518
    str w9, [sp, #8440]
    mov x9, #0
    str w9, [sp, #8444]
    adrp x14, _lb_text_a376e4defc21@PAGE
    add x14, x14, _lb_text_a376e4defc21@PAGEOFF
    str x14, [sp, #8448]
    movz x9, #14
    str x9, [sp, #8456]
    mov x9, #0
    str w9, [sp, #8464]
    mov x9, #0
    str w9, [sp, #8468]
    movz x9, #8039
    str w9, [sp, #8472]
    movn x9, #2642
    str w9, [sp, #8476]
    movn x9, #653
    str w9, [sp, #8480]
    movn x9, #3782
    str w9, [sp, #8484]
    movz x9, #11230
    str w9, [sp, #8488]
    movz x9, #2930
    str w9, [sp, #8492]
    movn x9, #205
    str w9, [sp, #8496]
    movz x9, #690
    str w9, [sp, #8500]
    movz x9, #4194
    str w9, [sp, #8504]
    mov x9, #0
    str w9, [sp, #8508]
    adrp x14, _lb_text_2801e9acceff@PAGE
    add x14, x14, _lb_text_2801e9acceff@PAGEOFF
    str x14, [sp, #8512]
    movz x9, #14
    str x9, [sp, #8520]
    mov x9, #0
    str w9, [sp, #8528]
    mov x9, #0
    str w9, [sp, #8532]
    movz x9, #7968
    str w9, [sp, #8536]
    movn x9, #2564
    str w9, [sp, #8540]
    movn x9, #635
    str w9, [sp, #8544]
    movn x9, #2872
    str w9, [sp, #8548]
    movz x9, #10697
    str w9, [sp, #8552]
    movz x9, #2513
    str w9, [sp, #8556]
    movz x9, #180
    str w9, [sp, #8560]
    movz x9, #667
    str w9, [sp, #8564]
    movz x9, #4211
    str w9, [sp, #8568]
    mov x9, #0
    str w9, [sp, #8572]
    adrp x14, _lb_text_e3fa03d62347@PAGE
    add x14, x14, _lb_text_e3fa03d62347@PAGEOFF
    str x14, [sp, #8576]
    movz x9, #15
    str x9, [sp, #8584]
    mov x9, #0
    str w9, [sp, #8592]
    mov x9, #0
    str w9, [sp, #8596]
    movz x9, #6526
    str w9, [sp, #8600]
    movn x9, #1719
    str w9, [sp, #8604]
    movn x9, #1074
    str w9, [sp, #8608]
    movn x9, #1389
    str w9, [sp, #8612]
    movz x9, #5945
    str w9, [sp, #8616]
    movz x9, #602
    str w9, [sp, #8620]
    movn x9, #89
    str w9, [sp, #8624]
    movz x9, #820
    str w9, [sp, #8628]
    movz x9, #2380
    str w9, [sp, #8632]
    mov x9, #0
    str w9, [sp, #8636]
    adrp x14, _lb_text_cdb311bf442a@PAGE
    add x14, x14, _lb_text_cdb311bf442a@PAGEOFF
    str x14, [sp, #8640]
    movz x9, #16
    str x9, [sp, #8648]
    mov x9, #0
    str w9, [sp, #8656]
    mov x9, #0
    str w9, [sp, #8660]
    movz x9, #6578
    str w9, [sp, #8664]
    movn x9, #258
    str w9, [sp, #8668]
    movn x9, #501
    str w9, [sp, #8672]
    movn x9, #5973
    str w9, [sp, #8676]
    movz x9, #13030
    str w9, [sp, #8680]
    movz x9, #3309
    str w9, [sp, #8684]
    movn x9, #307
    str w9, [sp, #8688]
    movz x9, #1058
    str w9, [sp, #8692]
    movz x9, #4970
    str w9, [sp, #8696]
    mov x9, #0
    str w9, [sp, #8700]
    adrp x14, _lb_text_5e05b321d8d8@PAGE
    add x14, x14, _lb_text_5e05b321d8d8@PAGEOFF
    str x14, [sp, #8704]
    movz x9, #17
    str x9, [sp, #8712]
    mov x9, #0
    str w9, [sp, #8720]
    mov x9, #0
    str w9, [sp, #8724]
    movz x9, #8275
    str w9, [sp, #8728]
    movn x9, #2903
    str w9, [sp, #8732]
    movn x9, #1259
    str w9, [sp, #8736]
    movn x9, #127
    str w9, [sp, #8740]
    movz x9, #5305
    str w9, [sp, #8744]
    movz x9, #505
    str w9, [sp, #8748]
    movz x9, #51
    str w9, [sp, #8752]
    movz x9, #481
    str w9, [sp, #8756]
    movz x9, #2450
    str w9, [sp, #8760]
    mov x9, #0
    str w9, [sp, #8764]
    adrp x14, _lb_text_94f2e283530d@PAGE
    add x14, x14, _lb_text_94f2e283530d@PAGEOFF
    str x14, [sp, #8768]
    movz x9, #17
    str x9, [sp, #8776]
    mov x9, #0
    str w9, [sp, #8784]
    mov x9, #0
    str w9, [sp, #8788]
    movz x9, #13014
    str w9, [sp, #8792]
    movn x9, #4697
    str w9, [sp, #8796]
    movn x9, #1025
    str w9, [sp, #8800]
    movn x9, #2000
    str w9, [sp, #8804]
    movz x9, #9615
    str w9, [sp, #8808]
    movz x9, #2386
    str w9, [sp, #8812]
    movn x9, #163
    str w9, [sp, #8816]
    movz x9, #1423
    str w9, [sp, #8820]
    movz x9, #3759
    str w9, [sp, #8824]
    mov x9, #0
    str w9, [sp, #8828]
    adrp x14, _lb_text_884db5986451@PAGE
    add x14, x14, _lb_text_884db5986451@PAGEOFF
    str x14, [sp, #8832]
    movz x9, #17
    str x9, [sp, #8840]
    mov x9, #0
    str w9, [sp, #8848]
    mov x9, #0
    str w9, [sp, #8852]
    movz x9, #54480
    str w9, [sp, #8856]
    movn x9, #17403
    str w9, [sp, #8860]
    movn x9, #8038
    str w9, [sp, #8864]
    movn x9, #7504
    str w9, [sp, #8868]
    movz x9, #44044
    str w9, [sp, #8872]
    movz x9, #1136
    str w9, [sp, #8876]
    movn x9, #579
    str w9, [sp, #8880]
    movz x9, #7158
    str w9, [sp, #8884]
    movz x9, #11891
    str w9, [sp, #8888]
    mov x9, #0
    str w9, [sp, #8892]
    adrp x14, _lb_text_d6dd16ca7949@PAGE
    add x14, x14, _lb_text_d6dd16ca7949@PAGEOFF
    str x14, [sp, #8896]
    movz x9, #17
    str x9, [sp, #8904]
    mov x9, #0
    str w9, [sp, #8912]
    mov x9, #0
    str w9, [sp, #8916]
    movz x9, #12432
    str w9, [sp, #8920]
    movn x9, #4752
    str w9, [sp, #8924]
    movn x9, #1246
    str w9, [sp, #8928]
    movn x9, #2109
    str w9, [sp, #8932]
    movz x9, #10691
    str w9, [sp, #8936]
    movz x9, #1629
    str w9, [sp, #8940]
    movn x9, #411
    str w9, [sp, #8944]
    movz x9, #1623
    str w9, [sp, #8948]
    movz x9, #4926
    str w9, [sp, #8952]
    mov x9, #0
    str w9, [sp, #8956]
    adrp x14, _lb_text_a3921b4bc930@PAGE
    add x14, x14, _lb_text_a3921b4bc930@PAGEOFF
    str x14, [sp, #8960]
    movz x9, #17
    str x9, [sp, #8968]
    mov x9, #0
    str w9, [sp, #8976]
    mov x9, #0
    str w9, [sp, #8980]
    movz x9, #13161
    str w9, [sp, #8984]
    movn x9, #5450
    str w9, [sp, #8988]
    movn x9, #1343
    str w9, [sp, #8992]
    movn x9, #1988
    str w9, [sp, #8996]
    movz x9, #10654
    str w9, [sp, #9000]
    movz x9, #1531
    str w9, [sp, #9004]
    movn x9, #46
    str w9, [sp, #9008]
    movz x9, #1271
    str w9, [sp, #9012]
    movz x9, #4955
    str w9, [sp, #9016]
    mov x9, #0
    str w9, [sp, #9020]
    adrp x14, _lb_text_737c99dd0beb@PAGE
    add x14, x14, _lb_text_737c99dd0beb@PAGEOFF
    str x14, [sp, #9024]
    movz x9, #17
    str x9, [sp, #9032]
    mov x9, #0
    str w9, [sp, #9040]
    mov x9, #0
    str w9, [sp, #9044]
    movz x9, #18285
    str w9, [sp, #9048]
    movn x9, #8906
    str w9, [sp, #9052]
    movn x9, #1950
    str w9, [sp, #9056]
    movn x9, #1844
    str w9, [sp, #9060]
    movz x9, #10688
    str w9, [sp, #9064]
    movz x9, #1323
    str w9, [sp, #9068]
    movz x9, #364
    str w9, [sp, #9072]
    movz x9, #1101
    str w9, [sp, #9076]
    movz x9, #5139
    str w9, [sp, #9080]
    mov x9, #0
    str w9, [sp, #9084]
    adrp x14, _lb_text_ccf7853a2128@PAGE
    add x14, x14, _lb_text_ccf7853a2128@PAGEOFF
    str x14, [sp, #9088]
    movz x9, #18
    str x9, [sp, #9096]
    mov x9, #0
    str w9, [sp, #9104]
    mov x9, #0
    str w9, [sp, #9108]
    movz x9, #14134
    str w9, [sp, #9112]
    movn x9, #5575
    str w9, [sp, #9116]
    movn x9, #1526
    str w9, [sp, #9120]
    movn x9, #1990
    str w9, [sp, #9124]
    movz x9, #10719
    str w9, [sp, #9128]
    movz x9, #1273
    str w9, [sp, #9132]
    movn x9, #1157
    str w9, [sp, #9136]
    movz x9, #1929
    str w9, [sp, #9140]
    movz x9, #3581
    str w9, [sp, #9144]
    mov x9, #0
    str w9, [sp, #9148]
    adrp x14, _lb_text_cd9f314a954f@PAGE
    add x14, x14, _lb_text_cd9f314a954f@PAGEOFF
    str x14, [sp, #9152]
    movz x9, #18
    str x9, [sp, #9160]
    mov x9, #0
    str w9, [sp, #9168]
    mov x9, #0
    str w9, [sp, #9172]
    movz x9, #7286
    str w9, [sp, #9176]
    movn x9, #2241
    str w9, [sp, #9180]
    movn x9, #1046
    str w9, [sp, #9184]
    movz x9, #41
    str w9, [sp, #9188]
    movz x9, #4401
    str w9, [sp, #9192]
    movz x9, #457
    str w9, [sp, #9196]
    movz x9, #269
    str w9, [sp, #9200]
    movz x9, #684
    str w9, [sp, #9204]
    movz x9, #1864
    str w9, [sp, #9208]
    mov x9, #0
    str w9, [sp, #9212]
    adrp x14, _lb_text_5c406406706b@PAGE
    add x14, x14, _lb_text_5c406406706b@PAGEOFF
    str x14, [sp, #9216]
    movz x9, #18
    str x9, [sp, #9224]
    mov x9, #0
    str w9, [sp, #9232]
    mov x9, #0
    str w9, [sp, #9236]
    movz x9, #13898
    str w9, [sp, #9240]
    movn x9, #5075
    str w9, [sp, #9244]
    movn x9, #1446
    str w9, [sp, #9248]
    movn x9, #1404
    str w9, [sp, #9252]
    movz x9, #10109
    str w9, [sp, #9256]
    movz x9, #1297
    str w9, [sp, #9260]
    movn x9, #243
    str w9, [sp, #9264]
    movz x9, #1860
    str w9, [sp, #9268]
    movz x9, #3687
    str w9, [sp, #9272]
    mov x9, #0
    str w9, [sp, #9276]
    adrp x14, _lb_text_fe781fb2af3a@PAGE
    add x14, x14, _lb_text_fe781fb2af3a@PAGEOFF
    str x14, [sp, #9280]
    movz x9, #18
    str x9, [sp, #9288]
    mov x9, #0
    str w9, [sp, #9296]
    mov x9, #0
    str w9, [sp, #9300]
    movz x9, #13161
    str w9, [sp, #9304]
    movn x9, #5450
    str w9, [sp, #9308]
    movn x9, #1343
    str w9, [sp, #9312]
    movn x9, #1988
    str w9, [sp, #9316]
    movz x9, #10654
    str w9, [sp, #9320]
    movz x9, #1531
    str w9, [sp, #9324]
    movn x9, #46
    str w9, [sp, #9328]
    movz x9, #1271
    str w9, [sp, #9332]
    movz x9, #4955
    str w9, [sp, #9336]
    mov x9, #0
    str w9, [sp, #9340]
    adrp x14, _lb_text_96dbba99cde5@PAGE
    add x14, x14, _lb_text_96dbba99cde5@PAGEOFF
    str x14, [sp, #9344]
    movz x9, #14
    str x9, [sp, #9352]
    mov x9, #0
    str w9, [sp, #9360]
    mov x9, #0
    str w9, [sp, #9364]
    movz x9, #10062
    str w9, [sp, #9368]
    movn x9, #3521
    str w9, [sp, #9372]
    movn x9, #999
    str w9, [sp, #9376]
    movn x9, #7642
    str w9, [sp, #9380]
    movz x9, #15117
    str w9, [sp, #9384]
    movz x9, #2730
    str w9, [sp, #9388]
    movn x9, #764
    str w9, [sp, #9392]
    movz x9, #817
    str w9, [sp, #9396]
    movz x9, #7322
    str w9, [sp, #9400]
    mov x9, #0
    str w9, [sp, #9404]
    adrp x14, _lb_text_25077ec1efd8@PAGE
    add x14, x14, _lb_text_25077ec1efd8@PAGEOFF
    str x14, [sp, #9408]
    movz x9, #15
    str x9, [sp, #9416]
    movz x9, #34
    str w9, [sp, #9424]
    mov x9, #0
    str w9, [sp, #9428]
    movn x9, #5105
    str w9, [sp, #9432]
    movz x9, #10695
    str w9, [sp, #9436]
    movz x9, #1576
    str w9, [sp, #9440]
    movz x9, #3820
    str w9, [sp, #9444]
    movz x9, #53
    str w9, [sp, #9448]
    movz x9, #4566
    str w9, [sp, #9452]
    movn x9, #6496
    str w9, [sp, #9456]
    movz x9, #10736
    str w9, [sp, #9460]
    movz x9, #6701
    str w9, [sp, #9464]
    mov x9, #0
    str w9, [sp, #9468]
    adrp x14, _lb_text_6341db4de3e5@PAGE
    add x14, x14, _lb_text_6341db4de3e5@PAGEOFF
    str x14, [sp, #9472]
    movz x9, #15
    str x9, [sp, #9480]
    mov x9, #0
    str w9, [sp, #9488]
    mov x9, #0
    str w9, [sp, #9492]
    movn x9, #5911
    str w9, [sp, #9496]
    movz x9, #10768
    str w9, [sp, #9500]
    movz x9, #2288
    str w9, [sp, #9504]
    movz x9, #4612
    str w9, [sp, #9508]
    movn x9, #988
    str w9, [sp, #9512]
    movz x9, #4333
    str w9, [sp, #9516]
    movn x9, #6152
    str w9, [sp, #9520]
    movz x9, #10897
    str w9, [sp, #9524]
    movz x9, #5944
    str w9, [sp, #9528]
    mov x9, #0
    str w9, [sp, #9532]
    adrp x14, _lb_12luce_raw_raw_12canon_colors@PAGE
    add x14, x14, _lb_12luce_raw_raw_12canon_colors@PAGEOFF
    movz x16, #9536
    sub x10, x29, x16
    mov x0, x14
    mov x1, x10
    movz x2, #9536
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_12nikon_colors_0init
_lb_12luce_raw_raw_12nikon_colors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5952
    sub sp, sp, x16
    adrp x14, _lb_text_cff360a8ff77@PAGE
    add x14, x14, _lb_text_cff360a8ff77@PAGEOFF
    str x14, [sp, #0]
    movz x9, #5
    str x9, [sp, #8]
    mov x9, #0
    str w9, [sp, #16]
    mov x9, #0
    str w9, [sp, #20]
    movz x9, #6588
    str w9, [sp, #24]
    movn x9, #1304
    str w9, [sp, #28]
    movn x9, #692
    str w9, [sp, #32]
    movn x9, #3276
    str w9, [sp, #36]
    movz x9, #10987
    str w9, [sp, #40]
    movz x9, #2634
    str w9, [sp, #44]
    movn x9, #354
    str w9, [sp, #48]
    movz x9, #2016
    str w9, [sp, #52]
    movz x9, #5106
    str w9, [sp, #56]
    mov x9, #0
    str w9, [sp, #60]
    adrp x14, _lb_text_3f2790891284@PAGE
    add x14, x14, _lb_text_3f2790891284@PAGEOFF
    str x14, [sp, #64]
    movz x9, #4
    str x9, [sp, #72]
    mov x9, #0
    str w9, [sp, #80]
    mov x9, #0
    str w9, [sp, #84]
    movz x9, #6588
    str w9, [sp, #88]
    movn x9, #1304
    str w9, [sp, #92]
    movn x9, #692
    str w9, [sp, #96]
    movn x9, #3276
    str w9, [sp, #100]
    movz x9, #10987
    str w9, [sp, #104]
    movz x9, #2634
    str w9, [sp, #108]
    movn x9, #354
    str w9, [sp, #112]
    movz x9, #2016
    str w9, [sp, #116]
    movz x9, #5106
    str w9, [sp, #120]
    mov x9, #0
    str w9, [sp, #124]
    adrp x14, _lb_text_cdca99a580af@PAGE
    add x14, x14, _lb_text_cdca99a580af@PAGEOFF
    str x14, [sp, #128]
    movz x9, #4
    str x9, [sp, #136]
    mov x9, #0
    str w9, [sp, #144]
    mov x9, #0
    str w9, [sp, #148]
    movz x9, #5958
    str w9, [sp, #152]
    movn x9, #1558
    str w9, [sp, #156]
    movn x9, #570
    str w9, [sp, #160]
    movn x9, #4020
    str w9, [sp, #164]
    movz x9, #11453
    str w9, [sp, #168]
    movz x9, #2939
    str w9, [sp, #172]
    movn x9, #633
    str w9, [sp, #176]
    movz x9, #1548
    str w9, [sp, #180]
    movz x9, #5087
    str w9, [sp, #184]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_ca58ec53ee6d@PAGE
    add x14, x14, _lb_text_ca58ec53ee6d@PAGEOFF
    str x14, [sp, #192]
    movz x9, #4
    str x9, [sp, #200]
    mov x9, #0
    str w9, [sp, #208]
    mov x9, #0
    str w9, [sp, #212]
    movz x9, #7520
    str w9, [sp, #216]
    movn x9, #2517
    str w9, [sp, #220]
    movn x9, #644
    str w9, [sp, #224]
    movn x9, #3843
    str w9, [sp, #228]
    movz x9, #12102
    str w9, [sp, #232]
    movz x9, #1945
    str w9, [sp, #236]
    movn x9, #912
    str w9, [sp, #240]
    movz x9, #2249
    str w9, [sp, #244]
    movz x9, #6835
    str w9, [sp, #248]
    mov x9, #0
    str w9, [sp, #252]
    adrp x14, _lb_text_0dabcc9e79dc@PAGE
    add x14, x14, _lb_text_0dabcc9e79dc@PAGEOFF
    str x14, [sp, #256]
    movz x9, #4
    str x9, [sp, #264]
    movn x9, #199
    str w9, [sp, #272]
    mov x9, #0
    str w9, [sp, #276]
    movz x9, #6612
    str w9, [sp, #280]
    movn x9, #1341
    str w9, [sp, #284]
    movn x9, #617
    str w9, [sp, #288]
    movn x9, #3337
    str w9, [sp, #292]
    movz x9, #11055
    str w9, [sp, #296]
    movz x9, #2623
    str w9, [sp, #300]
    movn x9, #173
    str w9, [sp, #304]
    movz x9, #1792
    str w9, [sp, #308]
    movz x9, #5075
    str w9, [sp, #312]
    mov x9, #0
    str w9, [sp, #316]
    adrp x14, _lb_text_007db20706ca@PAGE
    add x14, x14, _lb_text_007db20706ca@PAGEOFF
    str x14, [sp, #320]
    movz x9, #4
    str x9, [sp, #328]
    mov x9, #0
    str w9, [sp, #336]
    mov x9, #0
    str w9, [sp, #340]
    movz x9, #6588
    str w9, [sp, #344]
    movn x9, #1304
    str w9, [sp, #348]
    movn x9, #692
    str w9, [sp, #352]
    movn x9, #3276
    str w9, [sp, #356]
    movz x9, #10987
    str w9, [sp, #360]
    movz x9, #2634
    str w9, [sp, #364]
    movn x9, #354
    str w9, [sp, #368]
    movz x9, #2016
    str w9, [sp, #372]
    movz x9, #5106
    str w9, [sp, #376]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_text_03a88cdd633f@PAGE
    add x14, x14, _lb_text_03a88cdd633f@PAGEOFF
    str x14, [sp, #384]
    movz x9, #4
    str x9, [sp, #392]
    movn x9, #199
    str w9, [sp, #400]
    mov x9, #0
    str w9, [sp, #404]
    movz x9, #5958
    str w9, [sp, #408]
    movn x9, #1558
    str w9, [sp, #412]
    movn x9, #570
    str w9, [sp, #416]
    movn x9, #4020
    str w9, [sp, #420]
    movz x9, #11453
    str w9, [sp, #424]
    movz x9, #2939
    str w9, [sp, #428]
    movn x9, #633
    str w9, [sp, #432]
    movz x9, #1548
    str w9, [sp, #436]
    movz x9, #5087
    str w9, [sp, #440]
    mov x9, #0
    str w9, [sp, #444]
    adrp x14, _lb_text_76ae1948b17c@PAGE
    add x14, x14, _lb_text_76ae1948b17c@PAGEOFF
    str x14, [sp, #448]
    movz x9, #2
    str x9, [sp, #456]
    mov x9, #0
    str w9, [sp, #464]
    mov x9, #0
    str w9, [sp, #468]
    movz x9, #8994
    str w9, [sp, #472]
    movn x9, #2666
    str w9, [sp, #476]
    movn x9, #864
    str w9, [sp, #480]
    movn x9, #4593
    str w9, [sp, #484]
    movz x9, #12324
    str w9, [sp, #488]
    movz x9, #2552
    str w9, [sp, #492]
    movn x9, #698
    str w9, [sp, #496]
    movz x9, #1786
    str w9, [sp, #500]
    movz x9, #6260
    str w9, [sp, #504]
    mov x9, #0
    str w9, [sp, #508]
    adrp x14, _lb_text_2f2a201b8c7d@PAGE
    add x14, x14, _lb_text_2f2a201b8c7d@PAGEOFF
    str x14, [sp, #512]
    movz x9, #12
    str x9, [sp, #520]
    mov x9, #0
    str w9, [sp, #528]
    mov x9, #0
    str w9, [sp, #532]
    movz x9, #13142
    str w9, [sp, #536]
    movn x9, #4151
    str w9, [sp, #540]
    movn x9, #1595
    str w9, [sp, #544]
    movn x9, #4654
    str w9, [sp, #548]
    movz x9, #12374
    str w9, [sp, #552]
    movz x9, #2282
    str w9, [sp, #556]
    movn x9, #1768
    str w9, [sp, #560]
    movz x9, #2696
    str w9, [sp, #564]
    movz x9, #6711
    str w9, [sp, #568]
    mov x9, #0
    str w9, [sp, #572]
    adrp x14, _lb_text_cc0b85fa0d09@PAGE
    add x14, x14, _lb_text_cc0b85fa0d09@PAGEOFF
    str x14, [sp, #576]
    movz x9, #12
    str x9, [sp, #584]
    mov x9, #0
    str w9, [sp, #592]
    mov x9, #0
    str w9, [sp, #596]
    movn x9, #5546
    str w9, [sp, #600]
    movz x9, #11762
    str w9, [sp, #604]
    movz x9, #2189
    str w9, [sp, #608]
    movz x9, #5814
    str w9, [sp, #612]
    movn x9, #557
    str w9, [sp, #616]
    movz x9, #3342
    str w9, [sp, #620]
    movn x9, #4923
    str w9, [sp, #624]
    movz x9, #9840
    str w9, [sp, #628]
    movz x9, #5949
    str w9, [sp, #632]
    mov x9, #0
    str w9, [sp, #636]
    adrp x14, _lb_text_a52ba30f9fc1@PAGE
    add x14, x14, _lb_text_a52ba30f9fc1@PAGEOFF
    str x14, [sp, #640]
    movz x9, #12
    str x9, [sp, #648]
    mov x9, #0
    str w9, [sp, #656]
    mov x9, #0
    str w9, [sp, #660]
    movz x9, #9846
    str w9, [sp, #664]
    movn x9, #2084
    str w9, [sp, #668]
    movn x9, #1018
    str w9, [sp, #672]
    movn x9, #3277
    str w9, [sp, #676]
    movz x9, #11109
    str w9, [sp, #680]
    movz x9, #2170
    str w9, [sp, #684]
    movn x9, #773
    str w9, [sp, #688]
    movz x9, #2134
    str w9, [sp, #692]
    movz x9, #5745
    str w9, [sp, #696]
    mov x9, #0
    str w9, [sp, #700]
    adrp x14, _lb_text_a936873124a0@PAGE
    add x14, x14, _lb_text_a936873124a0@PAGEOFF
    str x14, [sp, #704]
    movz x9, #12
    str x9, [sp, #712]
    mov x9, #0
    str w9, [sp, #720]
    mov x9, #0
    str w9, [sp, #724]
    movz x9, #11280
    str w9, [sp, #728]
    movn x9, #3563
    str w9, [sp, #732]
    movn x9, #1369
    str w9, [sp, #736]
    movn x9, #4654
    str w9, [sp, #740]
    movz x9, #12374
    str w9, [sp, #744]
    movz x9, #2282
    str w9, [sp, #748]
    movn x9, #1422
    str w9, [sp, #752]
    movz x9, #2168
    str w9, [sp, #756]
    movz x9, #5396
    str w9, [sp, #760]
    mov x9, #0
    str w9, [sp, #764]
    adrp x14, _lb_text_4b5c64d06ac7@PAGE
    add x14, x14, _lb_text_4b5c64d06ac7@PAGEOFF
    str x14, [sp, #768]
    movz x9, #12
    str x9, [sp, #776]
    mov x9, #0
    str w9, [sp, #784]
    mov x9, #0
    str w9, [sp, #788]
    movn x9, #5546
    str w9, [sp, #792]
    movz x9, #11762
    str w9, [sp, #796]
    movz x9, #2189
    str w9, [sp, #800]
    movz x9, #5814
    str w9, [sp, #804]
    movn x9, #557
    str w9, [sp, #808]
    movz x9, #3342
    str w9, [sp, #812]
    movn x9, #4923
    str w9, [sp, #816]
    movz x9, #9840
    str w9, [sp, #820]
    movz x9, #5949
    str w9, [sp, #824]
    mov x9, #0
    str w9, [sp, #828]
    adrp x14, _lb_text_3db256bfb092@PAGE
    add x14, x14, _lb_text_3db256bfb092@PAGEOFF
    str x14, [sp, #832]
    movz x9, #12
    str x9, [sp, #840]
    mov x9, #0
    str w9, [sp, #848]
    mov x9, #0
    str w9, [sp, #852]
    movn x9, #6677
    str w9, [sp, #856]
    movz x9, #12805
    str w9, [sp, #860]
    movz x9, #2248
    str w9, [sp, #864]
    movz x9, #5725
    str w9, [sp, #868]
    movn x9, #498
    str w9, [sp, #872]
    movz x9, #3375
    str w9, [sp, #876]
    movn x9, #5902
    str w9, [sp, #880]
    movz x9, #10713
    str w9, [sp, #884]
    movz x9, #6034
    str w9, [sp, #888]
    mov x9, #0
    str w9, [sp, #892]
    adrp x14, _lb_text_7ade71703a48@PAGE
    add x14, x14, _lb_text_7ade71703a48@PAGEOFF
    str x14, [sp, #896]
    movz x9, #12
    str x9, [sp, #904]
    mov x9, #0
    str w9, [sp, #912]
    mov x9, #0
    str w9, [sp, #916]
    movz x9, #9349
    str w9, [sp, #920]
    movn x9, #2987
    str w9, [sp, #924]
    movn x9, #1000
    str w9, [sp, #928]
    movn x9, #7917
    str w9, [sp, #932]
    movz x9, #15766
    str w9, [sp, #936]
    movz x9, #2266
    str w9, [sp, #940]
    movn x9, #2096
    str w9, [sp, #944]
    movz x9, #2680
    str w9, [sp, #948]
    movz x9, #6839
    str w9, [sp, #952]
    mov x9, #0
    str w9, [sp, #956]
    adrp x14, _lb_text_2af6bc3b1a1d@PAGE
    add x14, x14, _lb_text_2af6bc3b1a1d@PAGEOFF
    str x14, [sp, #960]
    movz x9, #12
    str x9, [sp, #968]
    mov x9, #0
    str w9, [sp, #976]
    mov x9, #0
    str w9, [sp, #980]
    movn x9, #6474
    str w9, [sp, #984]
    movz x9, #12496
    str w9, [sp, #988]
    movz x9, #2428
    str w9, [sp, #992]
    movz x9, #5409
    str w9, [sp, #996]
    movn x9, #15
    str w9, [sp, #1000]
    movz x9, #3180
    str w9, [sp, #1004]
    movn x9, #5964
    str w9, [sp, #1008]
    movz x9, #10912
    str w9, [sp, #1012]
    movz x9, #5866
    str w9, [sp, #1016]
    mov x9, #0
    str w9, [sp, #1020]
    adrp x14, _lb_text_09034d9933d2@PAGE
    add x14, x14, _lb_text_09034d9933d2@PAGEOFF
    str x14, [sp, #1024]
    movz x9, #12
    str x9, [sp, #1032]
    mov x9, #0
    str w9, [sp, #1040]
    mov x9, #0
    str w9, [sp, #1044]
    movz x9, #7842
    str w9, [sp, #1048]
    movn x9, #2319
    str w9, [sp, #1052]
    movn x9, #991
    str w9, [sp, #1056]
    movn x9, #8153
    str w9, [sp, #1060]
    movz x9, #15718
    str w9, [sp, #1064]
    movz x9, #2599
    str w9, [sp, #1068]
    movn x9, #1097
    str w9, [sp, #1072]
    movz x9, #1342
    str w9, [sp, #1076]
    movz x9, #7560
    str w9, [sp, #1080]
    mov x9, #0
    str w9, [sp, #1084]
    adrp x14, _lb_text_720160fca3aa@PAGE
    add x14, x14, _lb_text_720160fca3aa@PAGEOFF
    str x14, [sp, #1088]
    movz x9, #12
    str x9, [sp, #1096]
    mov x9, #0
    str w9, [sp, #1104]
    mov x9, #0
    str w9, [sp, #1108]
    movz x9, #8489
    str w9, [sp, #1112]
    movn x9, #2582
    str w9, [sp, #1116]
    movn x9, #1035
    str w9, [sp, #1120]
    movn x9, #8050
    str w9, [sp, #1124]
    movz x9, #15583
    str w9, [sp, #1128]
    movz x9, #2643
    str w9, [sp, #1132]
    movn x9, #1306
    str w9, [sp, #1136]
    movz x9, #1407
    str w9, [sp, #1140]
    movz x9, #7354
    str w9, [sp, #1144]
    mov x9, #0
    str w9, [sp, #1148]
    adrp x14, _lb_text_9bb4fb21e2f5@PAGE
    add x14, x14, _lb_text_9bb4fb21e2f5@PAGEOFF
    str x14, [sp, #1152]
    movz x9, #12
    str x9, [sp, #1160]
    mov x9, #0
    str w9, [sp, #1168]
    mov x9, #0
    str w9, [sp, #1172]
    movz x9, #7971
    str w9, [sp, #1176]
    movn x9, #2313
    str w9, [sp, #1180]
    movn x9, #912
    str w9, [sp, #1184]
    movn x9, #8450
    str w9, [sp, #1188]
    movz x9, #15762
    str w9, [sp, #1192]
    movz x9, #2894
    str w9, [sp, #1196]
    movn x9, #1441
    str w9, [sp, #1200]
    movz x9, #1520
    str w9, [sp, #1204]
    movz x9, #7610
    str w9, [sp, #1208]
    mov x9, #0
    str w9, [sp, #1212]
    adrp x14, _lb_text_87ca88c4406d@PAGE
    add x14, x14, _lb_text_87ca88c4406d@PAGEOFF
    str x14, [sp, #1216]
    movz x9, #11
    str x9, [sp, #1224]
    mov x9, #0
    str w9, [sp, #1232]
    movz x9, #989
    str w9, [sp, #1236]
    movn x9, #3745
    str w9, [sp, #1240]
    movz x9, #10611
    str w9, [sp, #1244]
    movz x9, #1665
    str w9, [sp, #1248]
    movz x9, #9621
    str w9, [sp, #1252]
    movn x9, #1733
    str w9, [sp, #1256]
    movz x9, #2114
    str w9, [sp, #1260]
    movn x9, #2388
    str w9, [sp, #1264]
    movz x9, #7082
    str w9, [sp, #1268]
    movz x9, #3064
    str w9, [sp, #1272]
    mov x9, #0
    str w9, [sp, #1276]
    adrp x14, _lb_text_d416a2b5ff22@PAGE
    add x14, x14, _lb_text_d416a2b5ff22@PAGEOFF
    str x14, [sp, #1280]
    movz x9, #11
    str x9, [sp, #1288]
    mov x9, #0
    str w9, [sp, #1296]
    movz x9, #989
    str w9, [sp, #1300]
    movn x9, #3745
    str w9, [sp, #1304]
    movz x9, #10611
    str w9, [sp, #1308]
    movz x9, #1665
    str w9, [sp, #1312]
    movz x9, #9621
    str w9, [sp, #1316]
    movn x9, #1733
    str w9, [sp, #1320]
    movz x9, #2114
    str w9, [sp, #1324]
    movn x9, #2388
    str w9, [sp, #1328]
    movz x9, #7082
    str w9, [sp, #1332]
    movz x9, #3064
    str w9, [sp, #1336]
    mov x9, #0
    str w9, [sp, #1340]
    adrp x14, _lb_text_cefad6d836de@PAGE
    add x14, x14, _lb_text_cefad6d836de@PAGEOFF
    str x14, [sp, #1344]
    movz x9, #11
    str x9, [sp, #1352]
    mov x9, #0
    str w9, [sp, #1360]
    movz x9, #989
    str w9, [sp, #1364]
    movn x9, #3745
    str w9, [sp, #1368]
    movz x9, #10611
    str w9, [sp, #1372]
    movz x9, #1665
    str w9, [sp, #1376]
    movz x9, #9621
    str w9, [sp, #1380]
    movn x9, #1733
    str w9, [sp, #1384]
    movz x9, #2114
    str w9, [sp, #1388]
    movn x9, #2388
    str w9, [sp, #1392]
    movz x9, #7082
    str w9, [sp, #1396]
    movz x9, #3064
    str w9, [sp, #1400]
    mov x9, #0
    str w9, [sp, #1404]
    adrp x14, _lb_text_d2d2af67f865@PAGE
    add x14, x14, _lb_text_d2d2af67f865@PAGEOFF
    str x14, [sp, #1408]
    movz x9, #11
    str x9, [sp, #1416]
    mov x9, #0
    str w9, [sp, #1424]
    mov x9, #0
    str w9, [sp, #1428]
    movn x9, #5546
    str w9, [sp, #1432]
    movz x9, #11762
    str w9, [sp, #1436]
    movz x9, #2189
    str w9, [sp, #1440]
    movz x9, #5814
    str w9, [sp, #1444]
    movn x9, #557
    str w9, [sp, #1448]
    movz x9, #3342
    str w9, [sp, #1452]
    movn x9, #4923
    str w9, [sp, #1456]
    movz x9, #9840
    str w9, [sp, #1460]
    movz x9, #5949
    str w9, [sp, #1464]
    mov x9, #0
    str w9, [sp, #1468]
    adrp x14, _lb_text_b2b4309e1c77@PAGE
    add x14, x14, _lb_text_b2b4309e1c77@PAGEOFF
    str x14, [sp, #1472]
    movz x9, #13
    str x9, [sp, #1480]
    mov x9, #0
    str w9, [sp, #1488]
    mov x9, #0
    str w9, [sp, #1492]
    movz x9, #10601
    str w9, [sp, #1496]
    movn x9, #3486
    str w9, [sp, #1500]
    movn x9, #1126
    str w9, [sp, #1504]
    movn x9, #2930
    str w9, [sp, #1508]
    movz x9, #11443
    str w9, [sp, #1512]
    movz x9, #1676
    str w9, [sp, #1516]
    movn x9, #586
    str w9, [sp, #1520]
    movz x9, #1740
    str w9, [sp, #1524]
    movz x9, #5278
    str w9, [sp, #1528]
    mov x9, #0
    str w9, [sp, #1532]
    adrp x14, _lb_text_12ffc262b3f3@PAGE
    add x14, x14, _lb_text_12ffc262b3f3@PAGEOFF
    str x14, [sp, #1536]
    movz x9, #12
    str x9, [sp, #1544]
    mov x9, #0
    str w9, [sp, #1552]
    mov x9, #0
    str w9, [sp, #1556]
    movz x9, #14387
    str w9, [sp, #1560]
    movn x9, #6013
    str w9, [sp, #1564]
    movn x9, #1298
    str w9, [sp, #1568]
    movn x9, #1356
    str w9, [sp, #1572]
    movz x9, #9975
    str w9, [sp, #1576]
    movz x9, #1616
    str w9, [sp, #1580]
    movz x9, #467
    str w9, [sp, #1584]
    movz x9, #1047
    str w9, [sp, #1588]
    movz x9, #4744
    str w9, [sp, #1592]
    mov x9, #0
    str w9, [sp, #1596]
    adrp x14, _lb_text_6b417ee20866@PAGE
    add x14, x14, _lb_text_6b417ee20866@PAGEOFF
    str x14, [sp, #1600]
    movz x9, #9
    str x9, [sp, #1608]
    mov x9, #0
    str w9, [sp, #1616]
    mov x9, #0
    str w9, [sp, #1620]
    movz x9, #8198
    str w9, [sp, #1624]
    movn x9, #2238
    str w9, [sp, #1628]
    movn x9, #723
    str w9, [sp, #1632]
    movn x9, #4870
    str w9, [sp, #1636]
    movz x9, #12389
    str w9, [sp, #1640]
    movz x9, #2798
    str w9, [sp, #1644]
    movn x9, #1042
    str w9, [sp, #1648]
    movz x9, #2050
    str w9, [sp, #1652]
    movz x9, #7181
    str w9, [sp, #1656]
    mov x9, #0
    str w9, [sp, #1660]
    adrp x14, _lb_text_bd9f1beafaea@PAGE
    add x14, x14, _lb_text_bd9f1beafaea@PAGEOFF
    str x14, [sp, #1664]
    movz x9, #13
    str x9, [sp, #1672]
    mov x9, #0
    str w9, [sp, #1680]
    mov x9, #0
    str w9, [sp, #1684]
    movz x9, #14294
    str w9, [sp, #1688]
    movn x9, #6115
    str w9, [sp, #1692]
    movn x9, #1332
    str w9, [sp, #1696]
    movn x9, #1627
    str w9, [sp, #1700]
    movz x9, #10219
    str w9, [sp, #1704]
    movz x9, #1637
    str w9, [sp, #1708]
    movn x9, #13
    str w9, [sp, #1712]
    movz x9, #1158
    str w9, [sp, #1716]
    movz x9, #5022
    str w9, [sp, #1720]
    mov x9, #0
    str w9, [sp, #1724]
    adrp x14, _lb_text_dc89f98fb866@PAGE
    add x14, x14, _lb_text_dc89f98fb866@PAGEOFF
    str x14, [sp, #1728]
    movz x9, #13
    str x9, [sp, #1736]
    mov x9, #0
    str w9, [sp, #1744]
    mov x9, #0
    str w9, [sp, #1748]
    movz x9, #9698
    str w9, [sp, #1752]
    movn x9, #3366
    str w9, [sp, #1756]
    movn x9, #913
    str w9, [sp, #1760]
    movn x9, #4705
    str w9, [sp, #1764]
    movz x9, #12584
    str w9, [sp, #1768]
    movz x9, #2368
    str w9, [sp, #1772]
    movn x9, #836
    str w9, [sp, #1776]
    movz x9, #968
    str w9, [sp, #1780]
    movz x9, #5801
    str w9, [sp, #1784]
    mov x9, #0
    str w9, [sp, #1788]
    adrp x14, _lb_text_7720461f2bd4@PAGE
    add x14, x14, _lb_text_7720461f2bd4@PAGEOFF
    str x14, [sp, #1792]
    movz x9, #13
    str x9, [sp, #1800]
    mov x9, #0
    str w9, [sp, #1808]
    mov x9, #0
    str w9, [sp, #1812]
    movz x9, #11432
    str w9, [sp, #1816]
    movn x9, #3678
    str w9, [sp, #1820]
    movn x9, #1110
    str w9, [sp, #1824]
    movn x9, #3168
    str w9, [sp, #1828]
    movz x9, #11239
    str w9, [sp, #1832]
    movz x9, #2202
    str w9, [sp, #1836]
    movn x9, #790
    str w9, [sp, #1840]
    movz x9, #1380
    str w9, [sp, #1844]
    movz x9, #4455
    str w9, [sp, #1848]
    mov x9, #0
    str w9, [sp, #1852]
    adrp x14, _lb_text_af331761b686@PAGE
    add x14, x14, _lb_text_af331761b686@PAGEOFF
    str x14, [sp, #1856]
    movz x9, #13
    str x9, [sp, #1864]
    mov x9, #0
    str w9, [sp, #1872]
    mov x9, #0
    str w9, [sp, #1876]
    movz x9, #11053
    str w9, [sp, #1880]
    movn x9, #4268
    str w9, [sp, #1884]
    movn x9, #1023
    str w9, [sp, #1888]
    movn x9, #1975
    str w9, [sp, #1892]
    movz x9, #10182
    str w9, [sp, #1896]
    movz x9, #2088
    str w9, [sp, #1900]
    movn x9, #525
    str w9, [sp, #1904]
    movz x9, #1263
    str w9, [sp, #1908]
    movz x9, #4469
    str w9, [sp, #1912]
    mov x9, #0
    str w9, [sp, #1916]
    adrp x14, _lb_text_b8184f1a8af5@PAGE
    add x14, x14, _lb_text_b8184f1a8af5@PAGEOFF
    str x14, [sp, #1920]
    movz x9, #13
    str x9, [sp, #1928]
    movn x9, #3199
    str w9, [sp, #1936]
    mov x9, #0
    str w9, [sp, #1940]
    movz x9, #10321
    str w9, [sp, #1944]
    movn x9, #3919
    str w9, [sp, #1948]
    movn x9, #930
    str w9, [sp, #1952]
    movn x9, #2749
    str w9, [sp, #1956]
    movz x9, #11146
    str w9, [sp, #1960]
    movz x9, #1824
    str w9, [sp, #1964]
    movn x9, #441
    str w9, [sp, #1968]
    movz x9, #1545
    str w9, [sp, #1972]
    movz x9, #5539
    str w9, [sp, #1976]
    mov x9, #0
    str w9, [sp, #1980]
    adrp x14, _lb_text_d42671ff8ccf@PAGE
    add x14, x14, _lb_text_d42671ff8ccf@PAGEOFF
    str x14, [sp, #1984]
    movz x9, #13
    str x9, [sp, #1992]
    movn x9, #3199
    str w9, [sp, #2000]
    mov x9, #0
    str w9, [sp, #2004]
    movz x9, #10321
    str w9, [sp, #2008]
    movn x9, #3919
    str w9, [sp, #2012]
    movn x9, #930
    str w9, [sp, #2016]
    movn x9, #2749
    str w9, [sp, #2020]
    movz x9, #11146
    str w9, [sp, #2024]
    movz x9, #1824
    str w9, [sp, #2028]
    movn x9, #441
    str w9, [sp, #2032]
    movz x9, #1545
    str w9, [sp, #2036]
    movz x9, #5539
    str w9, [sp, #2040]
    mov x9, #0
    str w9, [sp, #2044]
    adrp x14, _lb_text_796bfec91b2b@PAGE
    add x14, x14, _lb_text_796bfec91b2b@PAGEOFF
    str x14, [sp, #2048]
    movz x9, #12
    str x9, [sp, #2056]
    movn x9, #199
    str w9, [sp, #2064]
    mov x9, #0
    str w9, [sp, #2068]
    movz x9, #10321
    str w9, [sp, #2072]
    movn x9, #3919
    str w9, [sp, #2076]
    movn x9, #930
    str w9, [sp, #2080]
    movn x9, #2749
    str w9, [sp, #2084]
    movz x9, #11146
    str w9, [sp, #2088]
    movz x9, #1824
    str w9, [sp, #2092]
    movn x9, #441
    str w9, [sp, #2096]
    movz x9, #1545
    str w9, [sp, #2100]
    movz x9, #5539
    str w9, [sp, #2104]
    mov x9, #0
    str w9, [sp, #2108]
    adrp x14, _lb_text_980698aafbd6@PAGE
    add x14, x14, _lb_text_980698aafbd6@PAGEOFF
    str x14, [sp, #2112]
    movz x9, #12
    str x9, [sp, #2120]
    movn x9, #199
    str w9, [sp, #2128]
    mov x9, #0
    str w9, [sp, #2132]
    movz x9, #10321
    str w9, [sp, #2136]
    movn x9, #3919
    str w9, [sp, #2140]
    movn x9, #930
    str w9, [sp, #2144]
    movn x9, #2749
    str w9, [sp, #2148]
    movz x9, #11146
    str w9, [sp, #2152]
    movz x9, #1824
    str w9, [sp, #2156]
    movn x9, #441
    str w9, [sp, #2160]
    movz x9, #1545
    str w9, [sp, #2164]
    movz x9, #5539
    str w9, [sp, #2168]
    mov x9, #0
    str w9, [sp, #2172]
    adrp x14, _lb_text_f3fef6283614@PAGE
    add x14, x14, _lb_text_f3fef6283614@PAGEOFF
    str x14, [sp, #2176]
    movz x9, #12
    str x9, [sp, #2184]
    mov x9, #0
    str w9, [sp, #2192]
    mov x9, #0
    str w9, [sp, #2196]
    movz x9, #13307
    str w9, [sp, #2200]
    movn x9, #5640
    str w9, [sp, #2204]
    movn x9, #1289
    str w9, [sp, #2208]
    movn x9, #2047
    str w9, [sp, #2212]
    movz x9, #10581
    str w9, [sp, #2216]
    movz x9, #1689
    str w9, [sp, #2220]
    movn x9, #63
    str w9, [sp, #2224]
    movz x9, #1222
    str w9, [sp, #2228]
    movz x9, #5176
    str w9, [sp, #2232]
    mov x9, #0
    str w9, [sp, #2236]
    adrp x14, _lb_text_d2689579555d@PAGE
    add x14, x14, _lb_text_d2689579555d@PAGEOFF
    str x14, [sp, #2240]
    movz x9, #5
    str x9, [sp, #2248]
    mov x9, #0
    str w9, [sp, #2256]
    mov x9, #0
    str w9, [sp, #2260]
    movz x9, #8736
    str w9, [sp, #2264]
    movn x9, #2457
    str w9, [sp, #2268]
    movn x9, #934
    str w9, [sp, #2272]
    movn x9, #9074
    str w9, [sp, #2276]
    movz x9, #16894
    str w9, [sp, #2280]
    movz x9, #2251
    str w9, [sp, #2284]
    movn x9, #1353
    str w9, [sp, #2288]
    movz x9, #1242
    str w9, [sp, #2292]
    movz x9, #8263
    str w9, [sp, #2296]
    mov x9, #0
    str w9, [sp, #2300]
    adrp x14, _lb_text_5e271af3d31d@PAGE
    add x14, x14, _lb_text_5e271af3d31d@PAGEOFF
    str x14, [sp, #2304]
    movz x9, #5
    str x9, [sp, #2312]
    mov x9, #0
    str w9, [sp, #2320]
    mov x9, #0
    str w9, [sp, #2324]
    movz x9, #7911
    str w9, [sp, #2328]
    movn x9, #2166
    str w9, [sp, #2332]
    movn x9, #812
    str w9, [sp, #2336]
    movn x9, #5326
    str w9, [sp, #2340]
    movz x9, #13150
    str w9, [sp, #2344]
    movz x9, #2408
    str w9, [sp, #2348]
    movn x9, #1287
    str w9, [sp, #2352]
    movz x9, #2483
    str w9, [sp, #2356]
    movz x9, #7968
    str w9, [sp, #2360]
    mov x9, #0
    str w9, [sp, #2364]
    adrp x14, _lb_text_5a5631d3c5f4@PAGE
    add x14, x14, _lb_text_5a5631d3c5f4@PAGEOFF
    str x14, [sp, #2368]
    movz x9, #5
    str x9, [sp, #2376]
    mov x9, #0
    str w9, [sp, #2384]
    movz x9, #4025
    str w9, [sp, #2388]
    movz x9, #7013
    str w9, [sp, #2392]
    movn x9, #1407
    str w9, [sp, #2396]
    movn x9, #634
    str w9, [sp, #2400]
    movn x9, #5267
    str w9, [sp, #2404]
    movz x9, #12902
    str w9, [sp, #2408]
    movz x9, #2640
    str w9, [sp, #2412]
    movn x9, #1469
    str w9, [sp, #2416]
    movz x9, #2801
    str w9, [sp, #2420]
    movz x9, #7379
    str w9, [sp, #2424]
    mov x9, #0
    str w9, [sp, #2428]
    adrp x14, _lb_text_0afa310a8c61@PAGE
    add x14, x14, _lb_text_0afa310a8c61@PAGEOFF
    str x14, [sp, #2432]
    movz x9, #5
    str x9, [sp, #2440]
    mov x9, #0
    str w9, [sp, #2448]
    mov x9, #0
    str w9, [sp, #2452]
    movz x9, #6988
    str w9, [sp, #2456]
    movn x9, #1383
    str w9, [sp, #2460]
    movn x9, #713
    str w9, [sp, #2464]
    movn x9, #5630
    str w9, [sp, #2468]
    movz x9, #13410
    str w9, [sp, #2472]
    movz x9, #2447
    str w9, [sp, #2476]
    movn x9, #1484
    str w9, [sp, #2480]
    movz x9, #2204
    str w9, [sp, #2484]
    movz x9, #7318
    str w9, [sp, #2488]
    mov x9, #0
    str w9, [sp, #2492]
    adrp x14, _lb_text_009f881f0762@PAGE
    add x14, x14, _lb_text_009f881f0762@PAGEOFF
    str x14, [sp, #2496]
    movz x9, #5
    str x9, [sp, #2504]
    mov x9, #0
    str w9, [sp, #2512]
    mov x9, #0
    str w9, [sp, #2516]
    movz x9, #6988
    str w9, [sp, #2520]
    movn x9, #1383
    str w9, [sp, #2524]
    movn x9, #713
    str w9, [sp, #2528]
    movn x9, #5630
    str w9, [sp, #2532]
    movz x9, #13410
    str w9, [sp, #2536]
    movz x9, #2447
    str w9, [sp, #2540]
    movn x9, #1484
    str w9, [sp, #2544]
    movz x9, #2204
    str w9, [sp, #2548]
    movz x9, #7318
    str w9, [sp, #2552]
    mov x9, #0
    str w9, [sp, #2556]
    adrp x14, _lb_text_d2bdb523fd4c@PAGE
    add x14, x14, _lb_text_d2bdb523fd4c@PAGEOFF
    str x14, [sp, #2560]
    movz x9, #5
    str x9, [sp, #2568]
    mov x9, #0
    str w9, [sp, #2576]
    mov x9, #0
    str w9, [sp, #2580]
    movz x9, #8821
    str w9, [sp, #2584]
    movn x9, #2937
    str w9, [sp, #2588]
    movn x9, #784
    str w9, [sp, #2592]
    movn x9, #4177
    str w9, [sp, #2596]
    movz x9, #12142
    str w9, [sp, #2600]
    movz x9, #2287
    str w9, [sp, #2604]
    movn x9, #823
    str w9, [sp, #2608]
    movz x9, #1651
    str w9, [sp, #2612]
    movz x9, #6860
    str w9, [sp, #2616]
    mov x9, #0
    str w9, [sp, #2620]
    adrp x14, _lb_text_a6007a594900@PAGE
    add x14, x14, _lb_text_a6007a594900@PAGEOFF
    str x14, [sp, #2624]
    movz x9, #5
    str x9, [sp, #2632]
    mov x9, #0
    str w9, [sp, #2640]
    movz x9, #3840
    str w9, [sp, #2644]
    movz x9, #7309
    str w9, [sp, #2648]
    movn x9, #1402
    str w9, [sp, #2652]
    movn x9, #518
    str w9, [sp, #2656]
    movn x9, #8473
    str w9, [sp, #2660]
    movz x9, #16008
    str w9, [sp, #2664]
    movz x9, #2622
    str w9, [sp, #2668]
    movn x9, #2432
    str w9, [sp, #2672]
    movz x9, #2826
    str w9, [sp, #2676]
    movz x9, #8064
    str w9, [sp, #2680]
    mov x9, #0
    str w9, [sp, #2684]
    adrp x14, _lb_text_b53a394f1696@PAGE
    add x14, x14, _lb_text_b53a394f1696@PAGEOFF
    str x14, [sp, #2688]
    movz x9, #5
    str x9, [sp, #2696]
    mov x9, #0
    str w9, [sp, #2704]
    movz x9, #15846
    str w9, [sp, #2708]
    movz x9, #8198
    str w9, [sp, #2712]
    movn x9, #2238
    str w9, [sp, #2716]
    movn x9, #723
    str w9, [sp, #2720]
    movn x9, #4870
    str w9, [sp, #2724]
    movz x9, #12389
    str w9, [sp, #2728]
    movz x9, #2798
    str w9, [sp, #2732]
    movn x9, #1042
    str w9, [sp, #2736]
    movz x9, #2050
    str w9, [sp, #2740]
    movz x9, #7181
    str w9, [sp, #2744]
    mov x9, #0
    str w9, [sp, #2748]
    adrp x14, _lb_text_a53123ad2d26@PAGE
    add x14, x14, _lb_text_a53123ad2d26@PAGEOFF
    str x14, [sp, #2752]
    movz x9, #5
    str x9, [sp, #2760]
    mov x9, #0
    str w9, [sp, #2768]
    mov x9, #0
    str w9, [sp, #2772]
    movz x9, #8322
    str w9, [sp, #2776]
    movn x9, #3111
    str w9, [sp, #2780]
    movn x9, #1046
    str w9, [sp, #2784]
    movn x9, #6366
    str w9, [sp, #2788]
    movz x9, #14342
    str w9, [sp, #2792]
    movz x9, #2179
    str w9, [sp, #2796]
    movn x9, #987
    str w9, [sp, #2800]
    movz x9, #1638
    str w9, [sp, #2804]
    movz x9, #6394
    str w9, [sp, #2808]
    mov x9, #0
    str w9, [sp, #2812]
    adrp x14, _lb_text_0dab5fc9df4c@PAGE
    add x14, x14, _lb_text_0dab5fc9df4c@PAGEOFF
    str x14, [sp, #2816]
    movz x9, #5
    str x9, [sp, #2824]
    mov x9, #0
    str w9, [sp, #2832]
    mov x9, #0
    str w9, [sp, #2836]
    movz x9, #6988
    str w9, [sp, #2840]
    movn x9, #1383
    str w9, [sp, #2844]
    movn x9, #713
    str w9, [sp, #2848]
    movn x9, #5630
    str w9, [sp, #2852]
    movz x9, #13410
    str w9, [sp, #2856]
    movz x9, #2447
    str w9, [sp, #2860]
    movn x9, #1484
    str w9, [sp, #2864]
    movz x9, #2204
    str w9, [sp, #2868]
    movz x9, #7318
    str w9, [sp, #2872]
    mov x9, #0
    str w9, [sp, #2876]
    adrp x14, _lb_text_3652badb9016@PAGE
    add x14, x14, _lb_text_3652badb9016@PAGEOFF
    str x14, [sp, #2880]
    movz x9, #5
    str x9, [sp, #2888]
    mov x9, #0
    str w9, [sp, #2896]
    mov x9, #0
    str w9, [sp, #2900]
    movz x9, #8821
    str w9, [sp, #2904]
    movn x9, #2937
    str w9, [sp, #2908]
    movn x9, #784
    str w9, [sp, #2912]
    movn x9, #4177
    str w9, [sp, #2916]
    movz x9, #12142
    str w9, [sp, #2920]
    movz x9, #2287
    str w9, [sp, #2924]
    movn x9, #823
    str w9, [sp, #2928]
    movz x9, #1651
    str w9, [sp, #2932]
    movz x9, #6860
    str w9, [sp, #2936]
    mov x9, #0
    str w9, [sp, #2940]
    adrp x14, _lb_text_647a6a66cfaf@PAGE
    add x14, x14, _lb_text_647a6a66cfaf@PAGEOFF
    str x14, [sp, #2944]
    movz x9, #5
    str x9, [sp, #2952]
    mov x9, #0
    str w9, [sp, #2960]
    mov x9, #0
    str w9, [sp, #2964]
    movz x9, #8821
    str w9, [sp, #2968]
    movn x9, #2937
    str w9, [sp, #2972]
    movn x9, #784
    str w9, [sp, #2976]
    movn x9, #4177
    str w9, [sp, #2980]
    movz x9, #12142
    str w9, [sp, #2984]
    movz x9, #2287
    str w9, [sp, #2988]
    movn x9, #823
    str w9, [sp, #2992]
    movz x9, #1651
    str w9, [sp, #2996]
    movz x9, #6860
    str w9, [sp, #3000]
    mov x9, #0
    str w9, [sp, #3004]
    adrp x14, _lb_text_d0a6bc022636@PAGE
    add x14, x14, _lb_text_d0a6bc022636@PAGEOFF
    str x14, [sp, #3008]
    movz x9, #5
    str x9, [sp, #3016]
    mov x9, #0
    str w9, [sp, #3024]
    mov x9, #0
    str w9, [sp, #3028]
    movz x9, #8198
    str w9, [sp, #3032]
    movn x9, #2238
    str w9, [sp, #3036]
    movn x9, #723
    str w9, [sp, #3040]
    movn x9, #4870
    str w9, [sp, #3044]
    movz x9, #12389
    str w9, [sp, #3048]
    movz x9, #2798
    str w9, [sp, #3052]
    movn x9, #1042
    str w9, [sp, #3056]
    movz x9, #2050
    str w9, [sp, #3060]
    movz x9, #7181
    str w9, [sp, #3064]
    mov x9, #0
    str w9, [sp, #3068]
    adrp x14, _lb_text_05d4ecea4400@PAGE
    add x14, x14, _lb_text_05d4ecea4400@PAGEOFF
    str x14, [sp, #3072]
    movz x9, #5
    str x9, [sp, #3080]
    mov x9, #0
    str w9, [sp, #3088]
    mov x9, #0
    str w9, [sp, #3092]
    movz x9, #8322
    str w9, [sp, #3096]
    movn x9, #3111
    str w9, [sp, #3100]
    movn x9, #1046
    str w9, [sp, #3104]
    movn x9, #6366
    str w9, [sp, #3108]
    movz x9, #14342
    str w9, [sp, #3112]
    movz x9, #2179
    str w9, [sp, #3116]
    movn x9, #987
    str w9, [sp, #3120]
    movz x9, #1638
    str w9, [sp, #3124]
    movz x9, #6394
    str w9, [sp, #3128]
    mov x9, #0
    str w9, [sp, #3132]
    adrp x14, _lb_text_48e499a1a8c9@PAGE
    add x14, x14, _lb_text_48e499a1a8c9@PAGEOFF
    str x14, [sp, #3136]
    movz x9, #5
    str x9, [sp, #3144]
    mov x9, #0
    str w9, [sp, #3152]
    mov x9, #0
    str w9, [sp, #3156]
    movz x9, #8322
    str w9, [sp, #3160]
    movn x9, #3111
    str w9, [sp, #3164]
    movn x9, #1046
    str w9, [sp, #3168]
    movn x9, #6366
    str w9, [sp, #3172]
    movz x9, #14342
    str w9, [sp, #3176]
    movz x9, #2179
    str w9, [sp, #3180]
    movn x9, #987
    str w9, [sp, #3184]
    movz x9, #1638
    str w9, [sp, #3188]
    movz x9, #6394
    str w9, [sp, #3192]
    mov x9, #0
    str w9, [sp, #3196]
    adrp x14, _lb_text_e54e1276da21@PAGE
    add x14, x14, _lb_text_e54e1276da21@PAGEOFF
    str x14, [sp, #3200]
    movz x9, #5
    str x9, [sp, #3208]
    mov x9, #0
    str w9, [sp, #3216]
    mov x9, #0
    str w9, [sp, #3220]
    movz x9, #8813
    str w9, [sp, #3224]
    movn x9, #3209
    str w9, [sp, #3228]
    movn x9, #1035
    str w9, [sp, #3232]
    movn x9, #4702
    str w9, [sp, #3236]
    movz x9, #12868
    str w9, [sp, #3240]
    movz x9, #2021
    str w9, [sp, #3244]
    movn x9, #1053
    str w9, [sp, #3248]
    movz x9, #1940
    str w9, [sp, #3252]
    movz x9, #6129
    str w9, [sp, #3256]
    mov x9, #0
    str w9, [sp, #3260]
    adrp x14, _lb_text_c7210a183a8c@PAGE
    add x14, x14, _lb_text_c7210a183a8c@PAGEOFF
    str x14, [sp, #3264]
    movz x9, #4
    str x9, [sp, #3272]
    mov x9, #0
    str w9, [sp, #3280]
    mov x9, #0
    str w9, [sp, #3284]
    movz x9, #5902
    str w9, [sp, #3288]
    movn x9, #932
    str w9, [sp, #3292]
    movn x9, #781
    str w9, [sp, #3296]
    movn x9, #8982
    str w9, [sp, #3300]
    movz x9, #16719
    str w9, [sp, #3304]
    movz x9, #2354
    str w9, [sp, #3308]
    movn x9, #1401
    str w9, [sp, #3312]
    movz x9, #1455
    str w9, [sp, #3316]
    movz x9, #6464
    str w9, [sp, #3320]
    mov x9, #0
    str w9, [sp, #3324]
    adrp x14, _lb_text_d347713626de@PAGE
    add x14, x14, _lb_text_d347713626de@PAGEOFF
    str x14, [sp, #3328]
    movz x9, #4
    str x9, [sp, #3336]
    mov x9, #0
    str w9, [sp, #3344]
    movz x9, #4028
    str w9, [sp, #3348]
    movz x9, #8367
    str w9, [sp, #3352]
    movn x9, #2247
    str w9, [sp, #3356]
    movn x9, #762
    str w9, [sp, #3360]
    movn x9, #8757
    str w9, [sp, #3364]
    movz x9, #16447
    str w9, [sp, #3368]
    movz x9, #2422
    str w9, [sp, #3372]
    movn x9, #1526
    str w9, [sp, #3376]
    movz x9, #1550
    str w9, [sp, #3380]
    movz x9, #8053
    str w9, [sp, #3384]
    mov x9, #0
    str w9, [sp, #3388]
    adrp x14, _lb_text_4ac771799011@PAGE
    add x14, x14, _lb_text_4ac771799011@PAGEOFF
    str x14, [sp, #3392]
    movz x9, #4
    str x9, [sp, #3400]
    mov x9, #0
    str w9, [sp, #3408]
    mov x9, #0
    str w9, [sp, #3412]
    movz x9, #9030
    str w9, [sp, #3416]
    movn x9, #1991
    str w9, [sp, #3420]
    movn x9, #714
    str w9, [sp, #3424]
    movn x9, #8464
    str w9, [sp, #3428]
    movz x9, #16302
    str w9, [sp, #3432]
    movz x9, #2255
    str w9, [sp, #3436]
    movn x9, #2688
    str w9, [sp, #3440]
    movz x9, #3217
    str w9, [sp, #3444]
    movz x9, #8069
    str w9, [sp, #3448]
    mov x9, #0
    str w9, [sp, #3452]
    adrp x14, _lb_text_1a01aaf09118@PAGE
    add x14, x14, _lb_text_1a01aaf09118@PAGEOFF
    str x14, [sp, #3456]
    movz x9, #4
    str x9, [sp, #3464]
    mov x9, #0
    str w9, [sp, #3472]
    mov x9, #0
    str w9, [sp, #3476]
    movz x9, #8813
    str w9, [sp, #3480]
    movn x9, #3209
    str w9, [sp, #3484]
    movn x9, #1035
    str w9, [sp, #3488]
    movn x9, #4702
    str w9, [sp, #3492]
    movz x9, #12868
    str w9, [sp, #3496]
    movz x9, #2021
    str w9, [sp, #3500]
    movn x9, #1053
    str w9, [sp, #3504]
    movz x9, #1940
    str w9, [sp, #3508]
    movz x9, #6129
    str w9, [sp, #3512]
    mov x9, #0
    str w9, [sp, #3516]
    adrp x14, _lb_text_7a0e5f9f2dee@PAGE
    add x14, x14, _lb_text_7a0e5f9f2dee@PAGEOFF
    str x14, [sp, #3520]
    movz x9, #4
    str x9, [sp, #3528]
    mov x9, #0
    str w9, [sp, #3536]
    movz x9, #15879
    str w9, [sp, #3540]
    movz x9, #8178
    str w9, [sp, #3544]
    movn x9, #2244
    str w9, [sp, #3548]
    movn x9, #608
    str w9, [sp, #3552]
    movn x9, #4856
    str w9, [sp, #3556]
    movz x9, #12394
    str w9, [sp, #3560]
    movz x9, #2776
    str w9, [sp, #3564]
    movn x9, #1206
    str w9, [sp, #3568]
    movz x9, #2086
    str w9, [sp, #3572]
    movz x9, #7298
    str w9, [sp, #3576]
    mov x9, #0
    str w9, [sp, #3580]
    adrp x14, _lb_text_7418c642cc08@PAGE
    add x14, x14, _lb_text_7418c642cc08@PAGEOFF
    str x14, [sp, #3584]
    movz x9, #4
    str x9, [sp, #3592]
    mov x9, #0
    str w9, [sp, #3600]
    mov x9, #0
    str w9, [sp, #3604]
    movz x9, #8178
    str w9, [sp, #3608]
    movn x9, #2244
    str w9, [sp, #3612]
    movn x9, #608
    str w9, [sp, #3616]
    movn x9, #4856
    str w9, [sp, #3620]
    movz x9, #12394
    str w9, [sp, #3624]
    movz x9, #2776
    str w9, [sp, #3628]
    movn x9, #1206
    str w9, [sp, #3632]
    movz x9, #2086
    str w9, [sp, #3636]
    movz x9, #7298
    str w9, [sp, #3640]
    mov x9, #0
    str w9, [sp, #3644]
    adrp x14, _lb_text_0901f77e5e5e@PAGE
    add x14, x14, _lb_text_0901f77e5e5e@PAGEOFF
    str x14, [sp, #3648]
    movz x9, #4
    str x9, [sp, #3656]
    mov x9, #0
    str w9, [sp, #3664]
    mov x9, #0
    str w9, [sp, #3668]
    movz x9, #8139
    str w9, [sp, #3672]
    movn x9, #2170
    str w9, [sp, #3676]
    movn x9, #662
    str w9, [sp, #3680]
    movn x9, #8746
    str w9, [sp, #3684]
    movz x9, #16541
    str w9, [sp, #3688]
    movz x9, #2295
    str w9, [sp, #3692]
    movn x9, #1924
    str w9, [sp, #3696]
    movz x9, #2008
    str w9, [sp, #3700]
    movz x9, #8093
    str w9, [sp, #3704]
    mov x9, #0
    str w9, [sp, #3708]
    adrp x14, _lb_text_6609a19522cb@PAGE
    add x14, x14, _lb_text_6609a19522cb@PAGEOFF
    str x14, [sp, #3712]
    movz x9, #4
    str x9, [sp, #3720]
    movn x9, #599
    str w9, [sp, #3728]
    mov x9, #0
    str w9, [sp, #3732]
    movz x9, #9020
    str w9, [sp, #3736]
    movn x9, #2889
    str w9, [sp, #3740]
    movn x9, #714
    str w9, [sp, #3744]
    movn x9, #4534
    str w9, [sp, #3748]
    movz x9, #12436
    str w9, [sp, #3752]
    movz x9, #2348
    str w9, [sp, #3756]
    movn x9, #933
    str w9, [sp, #3760]
    movz x9, #1919
    str w9, [sp, #3764]
    movz x9, #7086
    str w9, [sp, #3768]
    mov x9, #0
    str w9, [sp, #3772]
    adrp x14, _lb_text_d19e5d2bf389@PAGE
    add x14, x14, _lb_text_d19e5d2bf389@PAGEOFF
    str x14, [sp, #3776]
    movz x9, #4
    str x9, [sp, #3784]
    movn x9, #599
    str w9, [sp, #3792]
    mov x9, #0
    str w9, [sp, #3796]
    movz x9, #9943
    str w9, [sp, #3800]
    movn x9, #3268
    str w9, [sp, #3804]
    movn x9, #838
    str w9, [sp, #3808]
    movn x9, #5322
    str w9, [sp, #3812]
    movz x9, #13269
    str w9, [sp, #3816]
    movz x9, #2259
    str w9, [sp, #3820]
    movn x9, #1197
    str w9, [sp, #3824]
    movz x9, #2083
    str w9, [sp, #3828]
    movz x9, #7557
    str w9, [sp, #3832]
    mov x9, #0
    str w9, [sp, #3836]
    adrp x14, _lb_text_b98f87159f20@PAGE
    add x14, x14, _lb_text_b98f87159f20@PAGEOFF
    str x14, [sp, #3840]
    movz x9, #4
    str x9, [sp, #3848]
    mov x9, #0
    str w9, [sp, #3856]
    mov x9, #0
    str w9, [sp, #3860]
    movz x9, #7866
    str w9, [sp, #3864]
    movn x9, #2107
    str w9, [sp, #3868]
    movn x9, #554
    str w9, [sp, #3872]
    movn x9, #4868
    str w9, [sp, #3876]
    movz x9, #12483
    str w9, [sp, #3880]
    movz x9, #2681
    str w9, [sp, #3884]
    movn x9, #1175
    str w9, [sp, #3888]
    movz x9, #2069
    str w9, [sp, #3892]
    movz x9, #7501
    str w9, [sp, #3896]
    mov x9, #0
    str w9, [sp, #3900]
    adrp x14, _lb_text_8fc7bd10324b@PAGE
    add x14, x14, _lb_text_8fc7bd10324b@PAGEOFF
    str x14, [sp, #3904]
    movz x9, #5
    str x9, [sp, #3912]
    mov x9, #0
    str w9, [sp, #3920]
    mov x9, #0
    str w9, [sp, #3924]
    movz x9, #11973
    str w9, [sp, #3928]
    movn x9, #5684
    str w9, [sp, #3932]
    movn x9, #887
    str w9, [sp, #3936]
    movn x9, #1964
    str w9, [sp, #3940]
    movz x9, #10326
    str w9, [sp, #3944]
    movz x9, #1901
    str w9, [sp, #3948]
    movn x9, #114
    str w9, [sp, #3952]
    movz x9, #1123
    str w9, [sp, #3956]
    movz x9, #7169
    str w9, [sp, #3960]
    mov x9, #0
    str w9, [sp, #3964]
    adrp x14, _lb_text_e96119d3afb2@PAGE
    add x14, x14, _lb_text_e96119d3afb2@PAGEOFF
    str x14, [sp, #3968]
    movz x9, #4
    str x9, [sp, #3976]
    mov x9, #0
    str w9, [sp, #3984]
    mov x9, #0
    str w9, [sp, #3988]
    movz x9, #9369
    str w9, [sp, #3992]
    movn x9, #3194
    str w9, [sp, #3996]
    movn x9, #790
    str w9, [sp, #4000]
    movn x9, #4487
    str w9, [sp, #4004]
    movz x9, #12430
    str w9, [sp, #4008]
    movz x9, #2301
    str w9, [sp, #4012]
    movn x9, #892
    str w9, [sp, #4016]
    movz x9, #1796
    str w9, [sp, #4020]
    movz x9, #6872
    str w9, [sp, #4024]
    mov x9, #0
    str w9, [sp, #4028]
    adrp x14, _lb_text_af3ffd003e09@PAGE
    add x14, x14, _lb_text_af3ffd003e09@PAGEOFF
    str x14, [sp, #4032]
    movz x9, #4
    str x9, [sp, #4040]
    mov x9, #0
    str w9, [sp, #4048]
    mov x9, #0
    str w9, [sp, #4052]
    movz x9, #10405
    str w9, [sp, #4056]
    movn x9, #3754
    str w9, [sp, #4060]
    movn x9, #1269
    str w9, [sp, #4064]
    movn x9, #5460
    str w9, [sp, #4068]
    movz x9, #13787
    str w9, [sp, #4072]
    movz x9, #1793
    str w9, [sp, #4076]
    movn x9, #1039
    str w9, [sp, #4080]
    movz x9, #2015
    str w9, [sp, #4084]
    movz x9, #6785
    str w9, [sp, #4088]
    mov x9, #0
    str w9, [sp, #4092]
    adrp x14, _lb_text_85b3971aa93a@PAGE
    add x14, x14, _lb_text_85b3971aa93a@PAGEOFF
    str x14, [sp, #4096]
    movz x9, #4
    str x9, [sp, #4104]
    mov x9, #0
    str w9, [sp, #4112]
    mov x9, #0
    str w9, [sp, #4116]
    movz x9, #8819
    str w9, [sp, #4120]
    movn x9, #2542
    str w9, [sp, #4124]
    movn x9, #910
    str w9, [sp, #4128]
    movn x9, #9024
    str w9, [sp, #4132]
    movz x9, #16928
    str w9, [sp, #4136]
    movz x9, #2151
    str w9, [sp, #4140]
    movn x9, #1328
    str w9, [sp, #4144]
    movz x9, #1213
    str w9, [sp, #4148]
    movz x9, #8449
    str w9, [sp, #4152]
    mov x9, #0
    str w9, [sp, #4156]
    adrp x14, _lb_text_db267e28ba74@PAGE
    add x14, x14, _lb_text_db267e28ba74@PAGEOFF
    str x14, [sp, #4160]
    movz x9, #3
    str x9, [sp, #4168]
    mov x9, #0
    str w9, [sp, #4176]
    mov x9, #0
    str w9, [sp, #4180]
    movz x9, #6992
    str w9, [sp, #4184]
    movn x9, #1667
    str w9, [sp, #4188]
    movn x9, #805
    str w9, [sp, #4192]
    movn x9, #8137
    str w9, [sp, #4196]
    movz x9, #15748
    str w9, [sp, #4200]
    movz x9, #2543
    str w9, [sp, #4204]
    movn x9, #873
    str w9, [sp, #4208]
    movz x9, #850
    str w9, [sp, #4212]
    movz x9, #7897
    str w9, [sp, #4216]
    mov x9, #0
    str w9, [sp, #4220]
    adrp x14, _lb_text_9a0add857a07@PAGE
    add x14, x14, _lb_text_9a0add857a07@PAGEOFF
    str x14, [sp, #4224]
    movz x9, #3
    str x9, [sp, #4232]
    mov x9, #0
    str w9, [sp, #4240]
    mov x9, #0
    str w9, [sp, #4244]
    movz x9, #7732
    str w9, [sp, #4248]
    movn x9, #2421
    str w9, [sp, #4252]
    movn x9, #788
    str w9, [sp, #4256]
    movn x9, #8237
    str w9, [sp, #4260]
    movz x9, #15884
    str w9, [sp, #4264]
    movz x9, #2498
    str w9, [sp, #4268]
    movn x9, #858
    str w9, [sp, #4272]
    movz x9, #783
    str w9, [sp, #4276]
    movz x9, #7330
    str w9, [sp, #4280]
    mov x9, #0
    str w9, [sp, #4284]
    adrp x14, _lb_text_80765844ad66@PAGE
    add x14, x14, _lb_text_80765844ad66@PAGEOFF
    str x14, [sp, #4288]
    movz x9, #3
    str x9, [sp, #4296]
    mov x9, #0
    str w9, [sp, #4304]
    mov x9, #0
    str w9, [sp, #4308]
    movz x9, #8736
    str w9, [sp, #4312]
    movn x9, #2457
    str w9, [sp, #4316]
    movn x9, #934
    str w9, [sp, #4320]
    movn x9, #9074
    str w9, [sp, #4324]
    movz x9, #16894
    str w9, [sp, #4328]
    movz x9, #2251
    str w9, [sp, #4332]
    movn x9, #1353
    str w9, [sp, #4336]
    movz x9, #1242
    str w9, [sp, #4340]
    movz x9, #8263
    str w9, [sp, #4344]
    mov x9, #0
    str w9, [sp, #4348]
    adrp x14, _lb_text_83164d90abf3@PAGE
    add x14, x14, _lb_text_83164d90abf3@PAGEOFF
    str x14, [sp, #4352]
    movz x9, #3
    str x9, [sp, #4360]
    mov x9, #0
    str w9, [sp, #4368]
    mov x9, #0
    str w9, [sp, #4372]
    movz x9, #7732
    str w9, [sp, #4376]
    movn x9, #2421
    str w9, [sp, #4380]
    movn x9, #788
    str w9, [sp, #4384]
    movn x9, #8237
    str w9, [sp, #4388]
    movz x9, #15884
    str w9, [sp, #4392]
    movz x9, #2498
    str w9, [sp, #4396]
    movn x9, #858
    str w9, [sp, #4400]
    movz x9, #783
    str w9, [sp, #4404]
    movz x9, #7330
    str w9, [sp, #4408]
    mov x9, #0
    str w9, [sp, #4412]
    adrp x14, _lb_text_ad13690cf11a@PAGE
    add x14, x14, _lb_text_ad13690cf11a@PAGEOFF
    str x14, [sp, #4416]
    movz x9, #3
    str x9, [sp, #4424]
    mov x9, #0
    str w9, [sp, #4432]
    mov x9, #0
    str w9, [sp, #4436]
    movz x9, #8629
    str w9, [sp, #4440]
    movn x9, #2409
    str w9, [sp, #4444]
    movn x9, #882
    str w9, [sp, #4448]
    movn x9, #9054
    str w9, [sp, #4452]
    movz x9, #16940
    str w9, [sp, #4456]
    movz x9, #2171
    str w9, [sp, #4460]
    movn x9, #1489
    str w9, [sp, #4464]
    movz x9, #1363
    str w9, [sp, #4468]
    movz x9, #8520
    str w9, [sp, #4472]
    mov x9, #0
    str w9, [sp, #4476]
    adrp x14, _lb_text_f3f972e49a12@PAGE
    add x14, x14, _lb_text_f3f972e49a12@PAGEOFF
    str x14, [sp, #4480]
    movz x9, #3
    str x9, [sp, #4488]
    mov x9, #0
    str w9, [sp, #4496]
    movz x9, #3840
    str w9, [sp, #4500]
    movz x9, #7309
    str w9, [sp, #4504]
    movn x9, #1402
    str w9, [sp, #4508]
    movn x9, #518
    str w9, [sp, #4512]
    movn x9, #8473
    str w9, [sp, #4516]
    movz x9, #16008
    str w9, [sp, #4520]
    movz x9, #2622
    str w9, [sp, #4524]
    movn x9, #2433
    str w9, [sp, #4528]
    movz x9, #2826
    str w9, [sp, #4532]
    movz x9, #8064
    str w9, [sp, #4536]
    mov x9, #0
    str w9, [sp, #4540]
    adrp x14, _lb_text_5ce6923c223d@PAGE
    add x14, x14, _lb_text_5ce6923c223d@PAGEOFF
    str x14, [sp, #4544]
    movz x9, #3
    str x9, [sp, #4552]
    mov x9, #0
    str w9, [sp, #4560]
    mov x9, #0
    str w9, [sp, #4564]
    movz x9, #7659
    str w9, [sp, #4568]
    movn x9, #2237
    str w9, [sp, #4572]
    movn x9, #934
    str w9, [sp, #4576]
    movn x9, #8941
    str w9, [sp, #4580]
    movz x9, #16969
    str w9, [sp, #4584]
    movz x9, #2004
    str w9, [sp, #4588]
    movn x9, #2700
    str w9, [sp, #4592]
    movz x9, #3051
    str w9, [sp, #4596]
    movz x9, #8690
    str w9, [sp, #4600]
    mov x9, #0
    str w9, [sp, #4604]
    adrp x14, _lb_text_eb6b0af5e40b@PAGE
    add x14, x14, _lb_text_eb6b0af5e40b@PAGEOFF
    str x14, [sp, #4608]
    movz x9, #3
    str x9, [sp, #4616]
    mov x9, #0
    str w9, [sp, #4624]
    mov x9, #0
    str w9, [sp, #4628]
    movz x9, #7702
    str w9, [sp, #4632]
    movn x9, #2244
    str w9, [sp, #4636]
    movn x9, #974
    str w9, [sp, #4640]
    movn x9, #9113
    str w9, [sp, #4644]
    movz x9, #17242
    str w9, [sp, #4648]
    movz x9, #1875
    str w9, [sp, #4652]
    movn x9, #2678
    str w9, [sp, #4656]
    movz x9, #3055
    str w9, [sp, #4660]
    movz x9, #8521
    str w9, [sp, #4664]
    mov x9, #0
    str w9, [sp, #4668]
    adrp x14, _lb_text_643f93f40c9e@PAGE
    add x14, x14, _lb_text_643f93f40c9e@PAGEOFF
    str x14, [sp, #4672]
    movz x9, #2
    str x9, [sp, #4680]
    mov x9, #0
    str w9, [sp, #4688]
    mov x9, #0
    str w9, [sp, #4692]
    movz x9, #7637
    str w9, [sp, #4696]
    movn x9, #2198
    str w9, [sp, #4700]
    movn x9, #973
    str w9, [sp, #4704]
    movn x9, #9108
    str w9, [sp, #4708]
    movz x9, #17099
    str w9, [sp, #4712]
    movz x9, #2043
    str w9, [sp, #4716]
    movn x9, #2821
    str w9, [sp, #4720]
    movz x9, #3306
    str w9, [sp, #4724]
    movz x9, #8372
    str w9, [sp, #4728]
    mov x9, #0
    str w9, [sp, #4732]
    adrp x14, _lb_text_fd9e29897c06@PAGE
    add x14, x14, _lb_text_fd9e29897c06@PAGEOFF
    str x14, [sp, #4736]
    movz x9, #3
    str x9, [sp, #4744]
    mov x9, #0
    str w9, [sp, #4752]
    mov x9, #0
    str w9, [sp, #4756]
    movz x9, #5733
    str w9, [sp, #4760]
    movn x9, #910
    str w9, [sp, #4764]
    movn x9, #628
    str w9, [sp, #4768]
    movn x9, #7966
    str w9, [sp, #4772]
    movz x9, #15987
    str w9, [sp, #4776]
    movz x9, #2055
    str w9, [sp, #4780]
    movn x9, #3049
    str w9, [sp, #4784]
    movz x9, #4013
    str w9, [sp, #4788]
    movz x9, #7048
    str w9, [sp, #4792]
    mov x9, #0
    str w9, [sp, #4796]
    adrp x14, _lb_text_fd7e9d0765e6@PAGE
    add x14, x14, _lb_text_fd7e9d0765e6@PAGEOFF
    str x14, [sp, #4800]
    movz x9, #3
    str x9, [sp, #4808]
    mov x9, #0
    str w9, [sp, #4816]
    mov x9, #0
    str w9, [sp, #4820]
    movz x9, #10231
    str w9, [sp, #4824]
    movn x9, #2767
    str w9, [sp, #4828]
    movn x9, #1253
    str w9, [sp, #4832]
    movn x9, #8301
    str w9, [sp, #4836]
    movz x9, #15900
    str w9, [sp, #4840]
    movz x9, #2551
    str w9, [sp, #4844]
    movn x9, #796
    str w9, [sp, #4848]
    movz x9, #681
    str w9, [sp, #4852]
    movz x9, #7148
    str w9, [sp, #4856]
    mov x9, #0
    str w9, [sp, #4860]
    adrp x14, _lb_text_306ab07182d4@PAGE
    add x14, x14, _lb_text_306ab07182d4@PAGEOFF
    str x14, [sp, #4864]
    movz x9, #3
    str x9, [sp, #4872]
    mov x9, #0
    str w9, [sp, #4880]
    mov x9, #0
    str w9, [sp, #4884]
    movz x9, #8828
    str w9, [sp, #4888]
    movn x9, #2405
    str w9, [sp, #4892]
    movn x9, #693
    str w9, [sp, #4896]
    movn x9, #4873
    str w9, [sp, #4900]
    movz x9, #12603
    str w9, [sp, #4904]
    movz x9, #2541
    str w9, [sp, #4908]
    movn x9, #659
    str w9, [sp, #4912]
    movz x9, #1509
    str w9, [sp, #4916]
    movz x9, #7587
    str w9, [sp, #4920]
    mov x9, #0
    str w9, [sp, #4924]
    adrp x14, _lb_text_316dad9cb0a2@PAGE
    add x14, x14, _lb_text_316dad9cb0a2@PAGEOFF
    str x14, [sp, #4928]
    movz x9, #3
    str x9, [sp, #4936]
    mov x9, #0
    str w9, [sp, #4944]
    mov x9, #0
    str w9, [sp, #4948]
    movz x9, #7171
    str w9, [sp, #4952]
    movn x9, #1985
    str w9, [sp, #4956]
    movn x9, #647
    str w9, [sp, #4960]
    movn x9, #8084
    str w9, [sp, #4964]
    movz x9, #15555
    str w9, [sp, #4968]
    movz x9, #2718
    str w9, [sp, #4972]
    movn x9, #2169
    str w9, [sp, #4976]
    movz x9, #2512
    str w9, [sp, #4980]
    movz x9, #7457
    str w9, [sp, #4984]
    mov x9, #0
    str w9, [sp, #4988]
    adrp x14, _lb_text_b139b4fc019b@PAGE
    add x14, x14, _lb_text_b139b4fc019b@PAGEOFF
    str x14, [sp, #4992]
    movz x9, #2
    str x9, [sp, #5000]
    mov x9, #0
    str w9, [sp, #5008]
    mov x9, #0
    str w9, [sp, #5012]
    movz x9, #8139
    str w9, [sp, #5016]
    movn x9, #2170
    str w9, [sp, #5020]
    movn x9, #662
    str w9, [sp, #5024]
    movn x9, #8746
    str w9, [sp, #5028]
    movz x9, #16541
    str w9, [sp, #5032]
    movz x9, #2295
    str w9, [sp, #5036]
    movn x9, #1924
    str w9, [sp, #5040]
    movz x9, #2008
    str w9, [sp, #5044]
    movz x9, #8093
    str w9, [sp, #5048]
    mov x9, #0
    str w9, [sp, #5052]
    adrp x14, _lb_text_d4e5043f763c@PAGE
    add x14, x14, _lb_text_d4e5043f763c@PAGEOFF
    str x14, [sp, #5056]
    movz x9, #2
    str x9, [sp, #5064]
    mov x9, #0
    str w9, [sp, #5072]
    mov x9, #0
    str w9, [sp, #5076]
    movz x9, #8598
    str w9, [sp, #5080]
    movn x9, #2847
    str w9, [sp, #5084]
    movn x9, #856
    str w9, [sp, #5088]
    movn x9, #5617
    str w9, [sp, #5092]
    movz x9, #13606
    str w9, [sp, #5096]
    movz x9, #2195
    str w9, [sp, #5100]
    movn x9, #1001
    str w9, [sp, #5104]
    movz x9, #1773
    str w9, [sp, #5108]
    movz x9, #7137
    str w9, [sp, #5112]
    mov x9, #0
    str w9, [sp, #5116]
    adrp x14, _lb_text_c843ced14cfc@PAGE
    add x14, x14, _lb_text_c843ced14cfc@PAGEOFF
    str x14, [sp, #5120]
    movz x9, #2
    str x9, [sp, #5128]
    mov x9, #0
    str w9, [sp, #5136]
    mov x9, #0
    str w9, [sp, #5140]
    movz x9, #9200
    str w9, [sp, #5144]
    movn x9, #3521
    str w9, [sp, #5148]
    movn x9, #991
    str w9, [sp, #5152]
    movn x9, #5754
    str w9, [sp, #5156]
    movz x9, #13803
    str w9, [sp, #5160]
    movz x9, #2117
    str w9, [sp, #5164]
    movn x9, #752
    str w9, [sp, #5168]
    movz x9, #1486
    str w9, [sp, #5172]
    movz x9, #6338
    str w9, [sp, #5176]
    mov x9, #0
    str w9, [sp, #5180]
    adrp x14, _lb_text_6b7ca819fad2@PAGE
    add x14, x14, _lb_text_6b7ca819fad2@PAGEOFF
    str x14, [sp, #5184]
    movz x9, #2
    str x9, [sp, #5192]
    mov x9, #0
    str w9, [sp, #5200]
    mov x9, #0
    str w9, [sp, #5204]
    movz x9, #9028
    str w9, [sp, #5208]
    movn x9, #3422
    str w9, [sp, #5212]
    movn x9, #1034
    str w9, [sp, #5216]
    movn x9, #6320
    str w9, [sp, #5220]
    movz x9, #14265
    str w9, [sp, #5224]
    movz x9, #2217
    str w9, [sp, #5228]
    movn x9, #1012
    str w9, [sp, #5232]
    movz x9, #1683
    str w9, [sp, #5236]
    movz x9, #6928
    str w9, [sp, #5240]
    mov x9, #0
    str w9, [sp, #5244]
    adrp x14, _lb_text_fe2f58d0080b@PAGE
    add x14, x14, _lb_text_fe2f58d0080b@PAGEOFF
    str x14, [sp, #5248]
    movz x9, #2
    str x9, [sp, #5256]
    mov x9, #0
    str w9, [sp, #5264]
    mov x9, #0
    str w9, [sp, #5268]
    movz x9, #8598
    str w9, [sp, #5272]
    movn x9, #2847
    str w9, [sp, #5276]
    movn x9, #856
    str w9, [sp, #5280]
    movn x9, #5617
    str w9, [sp, #5284]
    movz x9, #13606
    str w9, [sp, #5288]
    movz x9, #2195
    str w9, [sp, #5292]
    movn x9, #1001
    str w9, [sp, #5296]
    movz x9, #1773
    str w9, [sp, #5300]
    movz x9, #7137
    str w9, [sp, #5304]
    mov x9, #0
    str w9, [sp, #5308]
    adrp x14, _lb_text_12586c27144b@PAGE
    add x14, x14, _lb_text_12586c27144b@PAGEOFF
    str x14, [sp, #5312]
    movz x9, #4
    str x9, [sp, #5320]
    mov x9, #0
    str w9, [sp, #5328]
    mov x9, #0
    str w9, [sp, #5332]
    movz x9, #10339
    str w9, [sp, #5336]
    movn x9, #3821
    str w9, [sp, #5340]
    movn x9, #889
    str w9, [sp, #5344]
    movn x9, #4182
    str w9, [sp, #5348]
    movz x9, #12023
    str w9, [sp, #5352]
    movz x9, #2436
    str w9, [sp, #5356]
    movn x9, #670
    str w9, [sp, #5360]
    movz x9, #1638
    str w9, [sp, #5364]
    movz x9, #7049
    str w9, [sp, #5368]
    mov x9, #0
    str w9, [sp, #5372]
    adrp x14, _lb_text_ed93c2b27a18@PAGE
    add x14, x14, _lb_text_ed93c2b27a18@PAGEOFF
    str x14, [sp, #5376]
    movz x9, #4
    str x9, [sp, #5384]
    mov x9, #0
    str w9, [sp, #5392]
    mov x9, #0
    str w9, [sp, #5396]
    movz x9, #11640
    str w9, [sp, #5400]
    movn x9, #4828
    str w9, [sp, #5404]
    movn x9, #1078
    str w9, [sp, #5408]
    movn x9, #5106
    str w9, [sp, #5412]
    movz x9, #13006
    str w9, [sp, #5416]
    movz x9, #2325
    str w9, [sp, #5420]
    movn x9, #971
    str w9, [sp, #5424]
    movz x9, #1711
    str w9, [sp, #5428]
    movz x9, #7380
    str w9, [sp, #5432]
    mov x9, #0
    str w9, [sp, #5436]
    adrp x14, _lb_text_113d4efcf431@PAGE
    add x14, x14, _lb_text_113d4efcf431@PAGEOFF
    str x14, [sp, #5440]
    movz x9, #3
    str x9, [sp, #5448]
    mov x9, #0
    str w9, [sp, #5456]
    mov x9, #0
    str w9, [sp, #5460]
    movz x9, #8695
    str w9, [sp, #5464]
    movn x9, #2557
    str w9, [sp, #5468]
    movn x9, #647
    str w9, [sp, #5472]
    movn x9, #5014
    str w9, [sp, #5476]
    movz x9, #12711
    str w9, [sp, #5480]
    movz x9, #2575
    str w9, [sp, #5484]
    movn x9, #1278
    str w9, [sp, #5488]
    movz x9, #2215
    str w9, [sp, #5492]
    movz x9, #7514
    str w9, [sp, #5496]
    mov x9, #0
    str w9, [sp, #5500]
    adrp x14, _lb_text_c864d12b377e@PAGE
    add x14, x14, _lb_text_c864d12b377e@PAGEOFF
    str x14, [sp, #5504]
    movz x9, #4
    str x9, [sp, #5512]
    mov x9, #0
    str w9, [sp, #5520]
    mov x9, #0
    str w9, [sp, #5524]
    movz x9, #11206
    str w9, [sp, #5528]
    movn x9, #4285
    str w9, [sp, #5532]
    movn x9, #940
    str w9, [sp, #5536]
    movn x9, #4878
    str w9, [sp, #5540]
    movz x9, #12847
    str w9, [sp, #5544]
    movz x9, #2251
    str w9, [sp, #5548]
    movn x9, #744
    str w9, [sp, #5552]
    movz x9, #1654
    str w9, [sp, #5556]
    movz x9, #7374
    str w9, [sp, #5560]
    mov x9, #0
    str w9, [sp, #5564]
    adrp x14, _lb_text_d380dd433c66@PAGE
    add x14, x14, _lb_text_d380dd433c66@PAGEOFF
    str x14, [sp, #5568]
    movz x9, #3
    str x9, [sp, #5576]
    mov x9, #0
    str w9, [sp, #5584]
    mov x9, #0
    str w9, [sp, #5588]
    movz x9, #9943
    str w9, [sp, #5592]
    movn x9, #3268
    str w9, [sp, #5596]
    movn x9, #838
    str w9, [sp, #5600]
    movn x9, #5322
    str w9, [sp, #5604]
    movz x9, #13269
    str w9, [sp, #5608]
    movz x9, #2259
    str w9, [sp, #5612]
    movn x9, #1197
    str w9, [sp, #5616]
    movz x9, #2083
    str w9, [sp, #5620]
    movz x9, #7557
    str w9, [sp, #5624]
    mov x9, #0
    str w9, [sp, #5628]
    adrp x14, _lb_text_43545b893cc3@PAGE
    add x14, x14, _lb_text_43545b893cc3@PAGEOFF
    str x14, [sp, #5632]
    movz x9, #3
    str x9, [sp, #5640]
    mov x9, #0
    str w9, [sp, #5648]
    mov x9, #0
    str w9, [sp, #5652]
    movz x9, #13705
    str w9, [sp, #5656]
    movn x9, #6003
    str w9, [sp, #5660]
    movn x9, #1399
    str w9, [sp, #5664]
    movn x9, #5463
    str w9, [sp, #5668]
    movz x9, #13568
    str w9, [sp, #5672]
    movz x9, #2062
    str w9, [sp, #5676]
    movn x9, #939
    str w9, [sp, #5680]
    movz x9, #1706
    str w9, [sp, #5684]
    movz x9, #7618
    str w9, [sp, #5688]
    mov x9, #0
    str w9, [sp, #5692]
    adrp x14, _lb_text_4da3f98f1ae1@PAGE
    add x14, x14, _lb_text_4da3f98f1ae1@PAGEOFF
    str x14, [sp, #5696]
    movz x9, #3
    str x9, [sp, #5704]
    mov x9, #0
    str w9, [sp, #5712]
    mov x9, #0
    str w9, [sp, #5716]
    movz x9, #11423
    str w9, [sp, #5720]
    movn x9, #4563
    str w9, [sp, #5724]
    movn x9, #1122
    str w9, [sp, #5728]
    movn x9, #4815
    str w9, [sp, #5732]
    movz x9, #12895
    str w9, [sp, #5736]
    movz x9, #2119
    str w9, [sp, #5740]
    movn x9, #209
    str w9, [sp, #5744]
    movz x9, #1061
    str w9, [sp, #5748]
    movz x9, #7282
    str w9, [sp, #5752]
    mov x9, #0
    str w9, [sp, #5756]
    adrp x14, _lb_text_97a44f158c89@PAGE
    add x14, x14, _lb_text_97a44f158c89@PAGEOFF
    str x14, [sp, #5760]
    movz x9, #3
    str x9, [sp, #5768]
    mov x9, #0
    str w9, [sp, #5776]
    mov x9, #0
    str w9, [sp, #5780]
    movz x9, #13389
    str w9, [sp, #5784]
    movn x9, #6048
    str w9, [sp, #5788]
    movn x9, #1440
    str w9, [sp, #5792]
    movn x9, #4543
    str w9, [sp, #5796]
    movz x9, #12757
    str w9, [sp, #5800]
    movz x9, #1969
    str w9, [sp, #5804]
    movz x9, #229
    str w9, [sp, #5808]
    movz x9, #498
    str w9, [sp, #5812]
    movz x9, #7390
    str w9, [sp, #5816]
    mov x9, #0
    str w9, [sp, #5820]
    adrp x14, _lb_text_47eca9f2603d@PAGE
    add x14, x14, _lb_text_47eca9f2603d@PAGEOFF
    str x14, [sp, #5824]
    movz x9, #4
    str x9, [sp, #5832]
    mov x9, #0
    str w9, [sp, #5840]
    mov x9, #0
    str w9, [sp, #5844]
    movz x9, #11640
    str w9, [sp, #5848]
    movn x9, #4828
    str w9, [sp, #5852]
    movn x9, #1078
    str w9, [sp, #5856]
    movn x9, #5106
    str w9, [sp, #5860]
    movz x9, #13006
    str w9, [sp, #5864]
    movz x9, #2325
    str w9, [sp, #5868]
    movn x9, #971
    str w9, [sp, #5872]
    movz x9, #1711
    str w9, [sp, #5876]
    movz x9, #7380
    str w9, [sp, #5880]
    mov x9, #0
    str w9, [sp, #5884]
    adrp x14, _lb_text_752c2087c240@PAGE
    add x14, x14, _lb_text_752c2087c240@PAGEOFF
    str x14, [sp, #5888]
    movz x9, #3
    str x9, [sp, #5896]
    mov x9, #0
    str w9, [sp, #5904]
    mov x9, #0
    str w9, [sp, #5908]
    movz x9, #11607
    str w9, [sp, #5912]
    movn x9, #4490
    str w9, [sp, #5916]
    movn x9, #976
    str w9, [sp, #5920]
    movn x9, #4521
    str w9, [sp, #5924]
    movz x9, #12460
    str w9, [sp, #5928]
    movz x9, #2304
    str w9, [sp, #5932]
    movn x9, #457
    str w9, [sp, #5936]
    movz x9, #1519
    str w9, [sp, #5940]
    movz x9, #7616
    str w9, [sp, #5944]
    mov x9, #0
    str w9, [sp, #5948]
    adrp x14, _lb_12luce_raw_raw_12nikon_colors@PAGE
    add x14, x14, _lb_12luce_raw_raw_12nikon_colors@PAGEOFF
    movz x16, #5952
    sub x10, x29, x16
    mov x0, x14
    mov x1, x10
    movz x2, #5952
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_12luce_raw_raw_11sony_colors_0init
_lb_12luce_raw_raw_11sony_colors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5504
    sub sp, sp, x16
    adrp x14, _lb_text_9277bbd3f31d@PAGE
    add x14, x14, _lb_text_9277bbd3f31d@PAGEOFF
    str x14, [sp, #0]
    movz x9, #8
    str x9, [sp, #8]
    mov x9, #0
    str w9, [sp, #16]
    mov x9, #0
    str w9, [sp, #20]
    movz x9, #7924
    str w9, [sp, #24]
    movn x9, #1909
    str w9, [sp, #28]
    movn x9, #776
    str w9, [sp, #32]
    movn x9, #8225
    str w9, [sp, #36]
    movz x9, #15459
    str w9, [sp, #40]
    movz x9, #2998
    str w9, [sp, #44]
    movn x9, #1516
    str w9, [sp, #48]
    movz x9, #2199
    str w9, [sp, #52]
    movz x9, #6818
    str w9, [sp, #56]
    mov x9, #0
    str w9, [sp, #60]
    adrp x14, _lb_text_e03d48d281d6@PAGE
    add x14, x14, _lb_text_e03d48d281d6@PAGEOFF
    str x14, [sp, #64]
    movz x9, #6
    str x9, [sp, #72]
    mov x9, #0
    str w9, [sp, #80]
    mov x9, #0
    str w9, [sp, #84]
    movz x9, #8512
    str w9, [sp, #88]
    movn x9, #2640
    str w9, [sp, #92]
    movn x9, #693
    str w9, [sp, #96]
    movn x9, #8041
    str w9, [sp, #100]
    movz x9, #15670
    str w9, [sp, #104]
    movz x9, #2526
    str w9, [sp, #108]
    movn x9, #1820
    str w9, [sp, #112]
    movz x9, #2117
    str w9, [sp, #116]
    movz x9, #7414
    str w9, [sp, #120]
    mov x9, #0
    str w9, [sp, #124]
    adrp x14, _lb_text_29715c583a9e@PAGE
    add x14, x14, _lb_text_29715c583a9e@PAGEOFF
    str x14, [sp, #128]
    movz x9, #6
    str x9, [sp, #136]
    mov x9, #0
    str w9, [sp, #144]
    mov x9, #0
    str w9, [sp, #148]
    movz x9, #7511
    str w9, [sp, #152]
    movn x9, #2570
    str w9, [sp, #156]
    movn x9, #691
    str w9, [sp, #160]
    movn x9, #7893
    str w9, [sp, #164]
    movz x9, #15088
    str w9, [sp, #168]
    movz x9, #3060
    str w9, [sp, #172]
    movn x9, #947
    str w9, [sp, #176]
    movz x9, #1111
    str w9, [sp, #180]
    movz x9, #8128
    str w9, [sp, #184]
    mov x9, #0
    str w9, [sp, #188]
    adrp x14, _lb_text_071d50627f93@PAGE
    add x14, x14, _lb_text_071d50627f93@PAGEOFF
    str x14, [sp, #192]
    movz x9, #7
    str x9, [sp, #200]
    movn x9, #799
    str w9, [sp, #208]
    mov x9, #0
    str w9, [sp, #212]
    movz x9, #13076
    str w9, [sp, #216]
    movn x9, #5685
    str w9, [sp, #220]
    movn x9, #1480
    str w9, [sp, #224]
    movn x9, #4026
    str w9, [sp, #228]
    movz x9, #12851
    str w9, [sp, #232]
    movz x9, #1251
    str w9, [sp, #236]
    movn x9, #166
    str w9, [sp, #240]
    movz x9, #725
    str w9, [sp, #244]
    movz x9, #4937
    str w9, [sp, #248]
    mov x9, #0
    str w9, [sp, #252]
    adrp x14, _lb_text_63bd6dfb095b@PAGE
    add x14, x14, _lb_text_63bd6dfb095b@PAGEOFF
    str x14, [sp, #256]
    movz x9, #4
    str x9, [sp, #264]
    movn x9, #799
    str w9, [sp, #272]
    mov x9, #0
    str w9, [sp, #276]
    movz x9, #8280
    str w9, [sp, #280]
    movn x9, #2986
    str w9, [sp, #284]
    movn x9, #702
    str w9, [sp, #288]
    movn x9, #3530
    str w9, [sp, #292]
    movz x9, #11645
    str w9, [sp, #296]
    movz x9, #2133
    str w9, [sp, #300]
    movn x9, #549
    str w9, [sp, #304]
    movz x9, #1542
    str w9, [sp, #308]
    movz x9, #5312
    str w9, [sp, #312]
    mov x9, #0
    str w9, [sp, #316]
    adrp x14, _lb_text_a2788bfc9de3@PAGE
    add x14, x14, _lb_text_a2788bfc9de3@PAGEOFF
    str x14, [sp, #320]
    movz x9, #8
    str x9, [sp, #328]
    mov x9, #0
    str w9, [sp, #336]
    mov x9, #0
    str w9, [sp, #340]
    movz x9, #6972
    str w9, [sp, #344]
    movn x9, #2407
    str w9, [sp, #348]
    movn x9, #599
    str w9, [sp, #352]
    movn x9, #4329
    str w9, [sp, #356]
    movz x9, #12101
    str w9, [sp, #360]
    movz x9, #2515
    str w9, [sp, #364]
    movn x9, #387
    str w9, [sp, #368]
    movz x9, #1277
    str w9, [sp, #372]
    movz x9, #5847
    str w9, [sp, #376]
    mov x9, #0
    str w9, [sp, #380]
    adrp x14, _lb_text_54a1107ce2ed@PAGE
    add x14, x14, _lb_text_54a1107ce2ed@PAGEOFF
    str x14, [sp, #384]
    movz x9, #6
    str x9, [sp, #392]
    mov x9, #0
    str w9, [sp, #400]
    mov x9, #0
    str w9, [sp, #404]
    movz x9, #6355
    str w9, [sp, #408]
    movn x9, #2066
    str w9, [sp, #412]
    movn x9, #489
    str w9, [sp, #416]
    movn x9, #3652
    str w9, [sp, #420]
    movz x9, #11542
    str w9, [sp, #424]
    movz x9, #2400
    str w9, [sp, #428]
    movn x9, #405
    str w9, [sp, #432]
    movz x9, #1258
    str w9, [sp, #436]
    movz x9, #5506
    str w9, [sp, #440]
    mov x9, #0
    str w9, [sp, #444]
    adrp x14, _lb_text_75cf3fef23b6@PAGE
    add x14, x14, _lb_text_75cf3fef23b6@PAGEOFF
    str x14, [sp, #448]
    movz x9, #5
    str x9, [sp, #456]
    mov x9, #0
    str w9, [sp, #464]
    mov x9, #0
    str w9, [sp, #468]
    movz x9, #6912
    str w9, [sp, #472]
    movn x9, #2126
    str w9, [sp, #476]
    movn x9, #468
    str w9, [sp, #480]
    movn x9, #4469
    str w9, [sp, #484]
    movz x9, #12175
    str w9, [sp, #488]
    movz x9, #2587
    str w9, [sp, #492]
    movn x9, #397
    str w9, [sp, #496]
    movz x9, #1478
    str w9, [sp, #500]
    movz x9, #6492
    str w9, [sp, #504]
    mov x9, #0
    str w9, [sp, #508]
    adrp x14, _lb_text_0f880d5ec613@PAGE
    add x14, x14, _lb_text_0f880d5ec613@PAGEOFF
    str x14, [sp, #512]
    movz x9, #11
    str x9, [sp, #520]
    movn x9, #799
    str w9, [sp, #528]
    mov x9, #0
    str w9, [sp, #532]
    movz x9, #10315
    str w9, [sp, #536]
    movn x9, #4389
    str w9, [sp, #540]
    movn x9, #936
    str w9, [sp, #544]
    movn x9, #4858
    str w9, [sp, #548]
    movz x9, #12734
    str w9, [sp, #552]
    movz x9, #2365
    str w9, [sp, #556]
    movn x9, #733
    str w9, [sp, #560]
    movz x9, #1537
    str w9, [sp, #564]
    movz x9, #5997
    str w9, [sp, #568]
    mov x9, #0
    str w9, [sp, #572]
    adrp x14, _lb_text_21f6363e0bcf@PAGE
    add x14, x14, _lb_text_21f6363e0bcf@PAGEOFF
    str x14, [sp, #576]
    movz x9, #11
    str x9, [sp, #584]
    movn x9, #799
    str w9, [sp, #592]
    mov x9, #0
    str w9, [sp, #596]
    movz x9, #7325
    str w9, [sp, #600]
    movn x9, #2320
    str w9, [sp, #604]
    movn x9, #595
    str w9, [sp, #608]
    movn x9, #3493
    str w9, [sp, #612]
    movz x9, #11674
    str w9, [sp, #616]
    movz x9, #2055
    str w9, [sp, #620]
    movn x9, #667
    str w9, [sp, #624]
    movz x9, #1562
    str w9, [sp, #628]
    movz x9, #5031
    str w9, [sp, #632]
    mov x9, #0
    str w9, [sp, #636]
    adrp x14, _lb_text_d088b27018d0@PAGE
    add x14, x14, _lb_text_d088b27018d0@PAGEOFF
    str x14, [sp, #640]
    movz x9, #12
    str x9, [sp, #648]
    movn x9, #799
    str w9, [sp, #656]
    mov x9, #0
    str w9, [sp, #660]
    movz x9, #11176
    str w9, [sp, #664]
    movn x9, #4699
    str w9, [sp, #668]
    movn x9, #964
    str w9, [sp, #672]
    movn x9, #4003
    str w9, [sp, #676]
    movz x9, #12184
    str w9, [sp, #680]
    movz x9, #2032
    str w9, [sp, #684]
    movn x9, #762
    str w9, [sp, #688]
    movz x9, #1726
    str w9, [sp, #692]
    movz x9, #5876
    str w9, [sp, #696]
    mov x9, #0
    str w9, [sp, #700]
    adrp x14, _lb_text_7ee3169088c9@PAGE
    add x14, x14, _lb_text_7ee3169088c9@PAGEOFF
    str x14, [sp, #704]
    movz x9, #10
    str x9, [sp, #712]
    movn x9, #799
    str w9, [sp, #720]
    mov x9, #0
    str w9, [sp, #724]
    movz x9, #6596
    str w9, [sp, #728]
    movn x9, #2078
    str w9, [sp, #732]
    movn x9, #561
    str w9, [sp, #736]
    movn x9, #4781
    str w9, [sp, #740]
    movz x9, #13016
    str w9, [sp, #744]
    movz x9, #1933
    str w9, [sp, #748]
    movn x9, #969
    str w9, [sp, #752]
    movz x9, #1581
    str w9, [sp, #756]
    movz x9, #5181
    str w9, [sp, #760]
    mov x9, #0
    str w9, [sp, #764]
    adrp x14, _lb_text_de8a40419bb4@PAGE
    add x14, x14, _lb_text_de8a40419bb4@PAGEOFF
    str x14, [sp, #768]
    movz x9, #9
    str x9, [sp, #776]
    mov x9, #0
    str w9, [sp, #784]
    mov x9, #0
    str w9, [sp, #788]
    movz x9, #8651
    str w9, [sp, #792]
    movn x9, #2753
    str w9, [sp, #796]
    movn x9, #1056
    str w9, [sp, #800]
    movn x9, #3463
    str w9, [sp, #804]
    movz x9, #12207
    str w9, [sp, #808]
    movz x9, #1373
    str w9, [sp, #812]
    movn x9, #567
    str w9, [sp, #816]
    movz x9, #1398
    str w9, [sp, #820]
    movz x9, #4434
    str w9, [sp, #824]
    mov x9, #0
    str w9, [sp, #828]
    adrp x14, _lb_text_1da8556e47a2@PAGE
    add x14, x14, _lb_text_1da8556e47a2@PAGEOFF
    str x14, [sp, #832]
    movz x9, #10
    str x9, [sp, #840]
    movn x9, #799
    str w9, [sp, #848]
    mov x9, #0
    str w9, [sp, #852]
    movz x9, #7699
    str w9, [sp, #856]
    movn x9, #2565
    str w9, [sp, #860]
    movn x9, #628
    str w9, [sp, #864]
    movn x9, #2966
    str w9, [sp, #868]
    movz x9, #11270
    str w9, [sp, #872]
    movz x9, #1928
    str w9, [sp, #876]
    movn x9, #377
    str w9, [sp, #880]
    movz x9, #1286
    str w9, [sp, #884]
    movz x9, #4807
    str w9, [sp, #888]
    mov x9, #0
    str w9, [sp, #892]
    adrp x14, _lb_text_89e524dba20d@PAGE
    add x14, x14, _lb_text_89e524dba20d@PAGEOFF
    str x14, [sp, #896]
    movz x9, #8
    str x9, [sp, #904]
    mov x9, #0
    str w9, [sp, #912]
    mov x9, #0
    str w9, [sp, #916]
    movz x9, #6679
    str w9, [sp, #920]
    movn x9, #1824
    str w9, [sp, #924]
    movn x9, #744
    str w9, [sp, #928]
    movn x9, #5046
    str w9, [sp, #932]
    movz x9, #13256
    str w9, [sp, #936]
    movz x9, #1953
    str w9, [sp, #940]
    movn x9, #1579
    str w9, [sp, #944]
    movz x9, #2422
    str w9, [sp, #948]
    movz x9, #5183
    str w9, [sp, #952]
    mov x9, #0
    str w9, [sp, #956]
    adrp x14, _lb_text_32fcc42dd360@PAGE
    add x14, x14, _lb_text_32fcc42dd360@PAGEOFF
    str x14, [sp, #960]
    movz x9, #10
    str x9, [sp, #968]
    mov x9, #0
    str w9, [sp, #976]
    mov x9, #0
    str w9, [sp, #980]
    movz x9, #6629
    str w9, [sp, #984]
    movn x9, #1899
    str w9, [sp, #988]
    movn x9, #482
    str w9, [sp, #992]
    movn x9, #4617
    str w9, [sp, #996]
    movz x9, #12349
    str w9, [sp, #1000]
    movz x9, #2550
    str w9, [sp, #1004]
    movn x9, #621
    str w9, [sp, #1008]
    movz x9, #1381
    str w9, [sp, #1012]
    movz x9, #6514
    str w9, [sp, #1016]
    mov x9, #0
    str w9, [sp, #1020]
    adrp x14, _lb_text_f167f88af1de@PAGE
    add x14, x14, _lb_text_f167f88af1de@PAGEOFF
    str x14, [sp, #1024]
    movz x9, #8
    str x9, [sp, #1032]
    mov x9, #0
    str w9, [sp, #1040]
    mov x9, #0
    str w9, [sp, #1044]
    movz x9, #6344
    str w9, [sp, #1048]
    movn x9, #1611
    str w9, [sp, #1052]
    movn x9, #461
    str w9, [sp, #1056]
    movn x9, #4862
    str w9, [sp, #1060]
    movz x9, #12477
    str w9, [sp, #1064]
    movz x9, #2681
    str w9, [sp, #1068]
    movn x9, #864
    str w9, [sp, #1072]
    movz x9, #1786
    str w9, [sp, #1076]
    movz x9, #6899
    str w9, [sp, #1080]
    mov x9, #0
    str w9, [sp, #1084]
    adrp x14, _lb_text_413321bdd0e6@PAGE
    add x14, x14, _lb_text_413321bdd0e6@PAGEOFF
    str x14, [sp, #1088]
    movz x9, #7
    str x9, [sp, #1096]
    mov x9, #0
    str w9, [sp, #1104]
    mov x9, #0
    str w9, [sp, #1108]
    movz x9, #6344
    str w9, [sp, #1112]
    movn x9, #1611
    str w9, [sp, #1116]
    movn x9, #461
    str w9, [sp, #1120]
    movn x9, #4862
    str w9, [sp, #1124]
    movz x9, #12477
    str w9, [sp, #1128]
    movz x9, #2681
    str w9, [sp, #1132]
    movn x9, #864
    str w9, [sp, #1136]
    movz x9, #1786
    str w9, [sp, #1140]
    movz x9, #6899
    str w9, [sp, #1144]
    mov x9, #0
    str w9, [sp, #1148]
    adrp x14, _lb_text_6cac93587fea@PAGE
    add x14, x14, _lb_text_6cac93587fea@PAGEOFF
    str x14, [sp, #1152]
    movz x9, #7
    str x9, [sp, #1160]
    movn x9, #799
    str w9, [sp, #1168]
    mov x9, #0
    str w9, [sp, #1172]
    movz x9, #9396
    str w9, [sp, #1176]
    movn x9, #3506
    str w9, [sp, #1180]
    movn x9, #842
    str w9, [sp, #1184]
    movn x9, #2496
    str w9, [sp, #1188]
    movz x9, #11111
    str w9, [sp, #1192]
    movz x9, #1572
    str w9, [sp, #1196]
    movn x9, #342
    str w9, [sp, #1200]
    movz x9, #1355
    str w9, [sp, #1204]
    movz x9, #5089
    str w9, [sp, #1208]
    mov x9, #0
    str w9, [sp, #1212]
    adrp x14, _lb_text_d7299bf7adfd@PAGE
    add x14, x14, _lb_text_d7299bf7adfd@PAGEOFF
    str x14, [sp, #1216]
    movz x9, #9
    str x9, [sp, #1224]
    mov x9, #0
    str w9, [sp, #1232]
    movz x9, #4075
    str w9, [sp, #1236]
    movz x9, #9437
    str w9, [sp, #1240]
    movn x9, #2810
    str w9, [sp, #1244]
    movn x9, #773
    str w9, [sp, #1248]
    movn x9, #8404
    str w9, [sp, #1252]
    movz x9, #16215
    str w9, [sp, #1256]
    movz x9, #2290
    str w9, [sp, #1260]
    movn x9, #709
    str w9, [sp, #1264]
    movz x9, #596
    str w9, [sp, #1268]
    movz x9, #7181
    str w9, [sp, #1272]
    mov x9, #0
    str w9, [sp, #1276]
    adrp x14, _lb_text_6ec2c6b88474@PAGE
    add x14, x14, _lb_text_6ec2c6b88474@PAGEOFF
    str x14, [sp, #1280]
    movz x9, #9
    str x9, [sp, #1288]
    mov x9, #0
    str w9, [sp, #1296]
    mov x9, #0
    str w9, [sp, #1300]
    movz x9, #6038
    str w9, [sp, #1304]
    movn x9, #1483
    str w9, [sp, #1308]
    movn x9, #578
    str w9, [sp, #1312]
    movn x9, #9144
    str w9, [sp, #1316]
    movz x9, #16746
    str w9, [sp, #1320]
    movz x9, #2512
    str w9, [sp, #1324]
    movn x9, #874
    str w9, [sp, #1328]
    movz x9, #746
    str w9, [sp, #1332]
    movz x9, #7218
    str w9, [sp, #1336]
    mov x9, #0
    str w9, [sp, #1340]
    adrp x14, _lb_text_31b68a138f66@PAGE
    add x14, x14, _lb_text_31b68a138f66@PAGEOFF
    str x14, [sp, #1344]
    movz x9, #7
    str x9, [sp, #1352]
    mov x9, #0
    str w9, [sp, #1360]
    mov x9, #0
    str w9, [sp, #1364]
    movz x9, #9847
    str w9, [sp, #1368]
    movn x9, #3090
    str w9, [sp, #1372]
    movn x9, #927
    str w9, [sp, #1376]
    movn x9, #8484
    str w9, [sp, #1380]
    movz x9, #16345
    str w9, [sp, #1384]
    movz x9, #2225
    str w9, [sp, #1388]
    movn x9, #714
    str w9, [sp, #1392]
    movz x9, #595
    str w9, [sp, #1396]
    movz x9, #7103
    str w9, [sp, #1400]
    mov x9, #0
    str w9, [sp, #1404]
    adrp x14, _lb_text_ec43e928902a@PAGE
    add x14, x14, _lb_text_ec43e928902a@PAGEOFF
    str x14, [sp, #1408]
    movz x9, #9
    str x9, [sp, #1416]
    mov x9, #0
    str w9, [sp, #1424]
    mov x9, #0
    str w9, [sp, #1428]
    movz x9, #9847
    str w9, [sp, #1432]
    movn x9, #3090
    str w9, [sp, #1436]
    movn x9, #927
    str w9, [sp, #1440]
    movn x9, #8484
    str w9, [sp, #1444]
    movz x9, #16345
    str w9, [sp, #1448]
    movz x9, #2225
    str w9, [sp, #1452]
    movn x9, #714
    str w9, [sp, #1456]
    movz x9, #595
    str w9, [sp, #1460]
    movz x9, #7103
    str w9, [sp, #1464]
    mov x9, #0
    str w9, [sp, #1468]
    adrp x14, _lb_text_d514470d8d16@PAGE
    add x14, x14, _lb_text_d514470d8d16@PAGEOFF
    str x14, [sp, #1472]
    movz x9, #9
    str x9, [sp, #1480]
    mov x9, #0
    str w9, [sp, #1488]
    mov x9, #0
    str w9, [sp, #1492]
    movz x9, #9847
    str w9, [sp, #1496]
    movn x9, #3090
    str w9, [sp, #1500]
    movn x9, #928
    str w9, [sp, #1504]
    movn x9, #8484
    str w9, [sp, #1508]
    movz x9, #16346
    str w9, [sp, #1512]
    movz x9, #2225
    str w9, [sp, #1516]
    movn x9, #713
    str w9, [sp, #1520]
    movz x9, #595
    str w9, [sp, #1524]
    movz x9, #7103
    str w9, [sp, #1528]
    mov x9, #0
    str w9, [sp, #1532]
    adrp x14, _lb_text_56daf5bf5b43@PAGE
    add x14, x14, _lb_text_56daf5bf5b43@PAGEOFF
    str x14, [sp, #1536]
    movz x9, #7
    str x9, [sp, #1544]
    mov x9, #0
    str w9, [sp, #1552]
    mov x9, #0
    str w9, [sp, #1556]
    movz x9, #6038
    str w9, [sp, #1560]
    movn x9, #1483
    str w9, [sp, #1564]
    movn x9, #578
    str w9, [sp, #1568]
    movn x9, #9144
    str w9, [sp, #1572]
    movz x9, #16746
    str w9, [sp, #1576]
    movz x9, #2512
    str w9, [sp, #1580]
    movn x9, #874
    str w9, [sp, #1584]
    movz x9, #746
    str w9, [sp, #1588]
    movz x9, #7218
    str w9, [sp, #1592]
    mov x9, #0
    str w9, [sp, #1596]
    adrp x14, _lb_text_28c7280df888@PAGE
    add x14, x14, _lb_text_28c7280df888@PAGEOFF
    str x14, [sp, #1600]
    movz x9, #9
    str x9, [sp, #1608]
    mov x9, #0
    str w9, [sp, #1616]
    mov x9, #0
    str w9, [sp, #1620]
    movz x9, #4950
    str w9, [sp, #1624]
    movn x9, #579
    str w9, [sp, #1628]
    movn x9, #102
    str w9, [sp, #1632]
    movn x9, #5227
    str w9, [sp, #1636]
    movz x9, #12542
    str w9, [sp, #1640]
    movz x9, #3029
    str w9, [sp, #1644]
    movn x9, #708
    str w9, [sp, #1648]
    movz x9, #1435
    str w9, [sp, #1652]
    movz x9, #7371
    str w9, [sp, #1656]
    mov x9, #0
    str w9, [sp, #1660]
    adrp x14, _lb_text_92370d3a100e@PAGE
    add x14, x14, _lb_text_92370d3a100e@PAGEOFF
    str x14, [sp, #1664]
    movz x9, #9
    str x9, [sp, #1672]
    mov x9, #0
    str w9, [sp, #1680]
    movz x9, #16596
    str w9, [sp, #1684]
    movz x9, #5932
    str w9, [sp, #1688]
    movn x9, #1491
    str w9, [sp, #1692]
    movn x9, #410
    str w9, [sp, #1696]
    movn x9, #4812
    str w9, [sp, #1700]
    movz x9, #12285
    str w9, [sp, #1704]
    movz x9, #2856
    str w9, [sp, #1708]
    movn x9, #740
    str w9, [sp, #1712]
    movz x9, #1524
    str w9, [sp, #1716]
    movz x9, #6739
    str w9, [sp, #1720]
    mov x9, #0
    str w9, [sp, #1724]
    adrp x14, _lb_text_62d934e02811@PAGE
    add x14, x14, _lb_text_62d934e02811@PAGEOFF
    str x14, [sp, #1728]
    movz x9, #9
    str x9, [sp, #1736]
    mov x9, #0
    str w9, [sp, #1744]
    movz x9, #16596
    str w9, [sp, #1748]
    movz x9, #6046
    str w9, [sp, #1752]
    movn x9, #1126
    str w9, [sp, #1756]
    movn x9, #277
    str w9, [sp, #1760]
    movn x9, #5573
    str w9, [sp, #1764]
    movz x9, #13076
    str w9, [sp, #1768]
    movz x9, #2786
    str w9, [sp, #1772]
    movn x9, #690
    str w9, [sp, #1776]
    movz x9, #1419
    str w9, [sp, #1780]
    movz x9, #7625
    str w9, [sp, #1784]
    mov x9, #0
    str w9, [sp, #1788]
    adrp x14, _lb_text_37568f0f405b@PAGE
    add x14, x14, _lb_text_37568f0f405b@PAGEOFF
    str x14, [sp, #1792]
    movz x9, #7
    str x9, [sp, #1800]
    mov x9, #0
    str w9, [sp, #1808]
    movz x9, #16596
    str w9, [sp, #1812]
    movz x9, #4950
    str w9, [sp, #1816]
    movn x9, #579
    str w9, [sp, #1820]
    movn x9, #102
    str w9, [sp, #1824]
    movn x9, #5227
    str w9, [sp, #1828]
    movz x9, #12542
    str w9, [sp, #1832]
    movz x9, #3029
    str w9, [sp, #1836]
    movn x9, #708
    str w9, [sp, #1840]
    movz x9, #1435
    str w9, [sp, #1844]
    movz x9, #7371
    str w9, [sp, #1848]
    mov x9, #0
    str w9, [sp, #1852]
    adrp x14, _lb_text_689605ceed74@PAGE
    add x14, x14, _lb_text_689605ceed74@PAGEOFF
    str x14, [sp, #1856]
    movz x9, #9
    str x9, [sp, #1864]
    mov x9, #0
    str w9, [sp, #1872]
    mov x9, #0
    str w9, [sp, #1876]
    movz x9, #5775
    str w9, [sp, #1880]
    movn x9, #804
    str w9, [sp, #1884]
    movn x9, #358
    str w9, [sp, #1888]
    movn x9, #8573
    str w9, [sp, #1892]
    movz x9, #16295
    str w9, [sp, #1896]
    movz x9, #2391
    str w9, [sp, #1900]
    movn x9, #1942
    str w9, [sp, #1904]
    movz x9, #2341
    str w9, [sp, #1908]
    movz x9, #7249
    str w9, [sp, #1912]
    mov x9, #0
    str w9, [sp, #1916]
    adrp x14, _lb_text_3090d5aad8bf@PAGE
    add x14, x14, _lb_text_3090d5aad8bf@PAGEOFF
    str x14, [sp, #1920]
    movz x9, #9
    str x9, [sp, #1928]
    mov x9, #0
    str w9, [sp, #1936]
    mov x9, #0
    str w9, [sp, #1940]
    movz x9, #5413
    str w9, [sp, #1944]
    movn x9, #1161
    str w9, [sp, #1948]
    movn x9, #364
    str w9, [sp, #1952]
    movn x9, #5664
    str w9, [sp, #1956]
    movz x9, #13098
    str w9, [sp, #1960]
    movz x9, #2866
    str w9, [sp, #1964]
    movn x9, #607
    str w9, [sp, #1968]
    movz x9, #1179
    str w9, [sp, #1972]
    movz x9, #8440
    str w9, [sp, #1976]
    mov x9, #0
    str w9, [sp, #1980]
    adrp x14, _lb_text_a636803b260a@PAGE
    add x14, x14, _lb_text_a636803b260a@PAGEOFF
    str x14, [sp, #1984]
    movz x9, #9
    str x9, [sp, #1992]
    mov x9, #0
    str w9, [sp, #2000]
    mov x9, #0
    str w9, [sp, #2004]
    movz x9, #5209
    str w9, [sp, #2008]
    movn x9, #1071
    str w9, [sp, #2012]
    movn x9, #396
    str w9, [sp, #2016]
    movn x9, #8844
    str w9, [sp, #2020]
    movz x9, #16120
    str w9, [sp, #2024]
    movz x9, #2919
    str w9, [sp, #2028]
    movn x9, #1617
    str w9, [sp, #2032]
    movz x9, #1803
    str w9, [sp, #2036]
    movz x9, #8654
    str w9, [sp, #2040]
    mov x9, #0
    str w9, [sp, #2044]
    adrp x14, _lb_text_5c3c2edb7241@PAGE
    add x14, x14, _lb_text_5c3c2edb7241@PAGEOFF
    str x14, [sp, #2048]
    movz x9, #6
    str x9, [sp, #2056]
    mov x9, #0
    str w9, [sp, #2064]
    mov x9, #0
    str w9, [sp, #2068]
    movz x9, #5209
    str w9, [sp, #2072]
    movn x9, #1071
    str w9, [sp, #2076]
    movn x9, #396
    str w9, [sp, #2080]
    movn x9, #8844
    str w9, [sp, #2084]
    movz x9, #16120
    str w9, [sp, #2088]
    movz x9, #2919
    str w9, [sp, #2092]
    movn x9, #1617
    str w9, [sp, #2096]
    movz x9, #1803
    str w9, [sp, #2100]
    movz x9, #8654
    str w9, [sp, #2104]
    mov x9, #0
    str w9, [sp, #2108]
    adrp x14, _lb_text_9c70d7bd8224@PAGE
    add x14, x14, _lb_text_9c70d7bd8224@PAGEOFF
    str x14, [sp, #2112]
    movz x9, #7
    str x9, [sp, #2120]
    mov x9, #0
    str w9, [sp, #2128]
    mov x9, #0
    str w9, [sp, #2132]
    movz x9, #6435
    str w9, [sp, #2136]
    movn x9, #1902
    str w9, [sp, #2140]
    movn x9, #535
    str w9, [sp, #2144]
    movn x9, #4721
    str w9, [sp, #2148]
    movz x9, #12449
    str w9, [sp, #2152]
    movz x9, #2550
    str w9, [sp, #2156]
    movn x9, #662
    str w9, [sp, #2160]
    movz x9, #1363
    str w9, [sp, #2164]
    movz x9, #6517
    str w9, [sp, #2168]
    mov x9, #0
    str w9, [sp, #2172]
    adrp x14, _lb_text_f8ab7e545141@PAGE
    add x14, x14, _lb_text_f8ab7e545141@PAGEOFF
    str x14, [sp, #2176]
    movz x9, #9
    str x9, [sp, #2184]
    mov x9, #0
    str w9, [sp, #2192]
    mov x9, #0
    str w9, [sp, #2196]
    movz x9, #5991
    str w9, [sp, #2200]
    movn x9, #1731
    str w9, [sp, #2204]
    movn x9, #442
    str w9, [sp, #2208]
    movn x9, #4099
    str w9, [sp, #2212]
    movz x9, #11989
    str w9, [sp, #2216]
    movz x9, #2381
    str w9, [sp, #2220]
    movn x9, #703
    str w9, [sp, #2224]
    movz x9, #1467
    str w9, [sp, #2228]
    movz x9, #5992
    str w9, [sp, #2232]
    mov x9, #0
    str w9, [sp, #2236]
    adrp x14, _lb_text_2fab3e9b86b3@PAGE
    add x14, x14, _lb_text_2fab3e9b86b3@PAGEOFF
    str x14, [sp, #2240]
    movz x9, #9
    str x9, [sp, #2248]
    mov x9, #0
    str w9, [sp, #2256]
    mov x9, #0
    str w9, [sp, #2260]
    movz x9, #6660
    str w9, [sp, #2264]
    movn x9, #1917
    str w9, [sp, #2268]
    movn x9, #470
    str w9, [sp, #2272]
    movn x9, #4612
    str w9, [sp, #2276]
    movz x9, #12398
    str w9, [sp, #2280]
    movz x9, #2485
    str w9, [sp, #2284]
    movn x9, #648
    str w9, [sp, #2288]
    movz x9, #1433
    str w9, [sp, #2292]
    movz x9, #6447
    str w9, [sp, #2296]
    mov x9, #0
    str w9, [sp, #2300]
    adrp x14, _lb_text_5811db29365a@PAGE
    add x14, x14, _lb_text_5811db29365a@PAGEOFF
    str x14, [sp, #2304]
    movz x9, #8
    str x9, [sp, #2312]
    mov x9, #0
    str w9, [sp, #2320]
    mov x9, #0
    str w9, [sp, #2324]
    movz x9, #10058
    str w9, [sp, #2328]
    movn x9, #4073
    str w9, [sp, #2332]
    movn x9, #931
    str w9, [sp, #2336]
    movn x9, #4776
    str w9, [sp, #2340]
    movz x9, #12731
    str w9, [sp, #2344]
    movz x9, #2274
    str w9, [sp, #2348]
    movn x9, #543
    str w9, [sp, #2352]
    movz x9, #1282
    str w9, [sp, #2356]
    movz x9, #6102
    str w9, [sp, #2360]
    mov x9, #0
    str w9, [sp, #2364]
    adrp x14, _lb_text_9e95a57c478e@PAGE
    add x14, x14, _lb_text_9e95a57c478e@PAGEOFF
    str x14, [sp, #2368]
    movz x9, #6
    str x9, [sp, #2376]
    mov x9, #0
    str w9, [sp, #2384]
    mov x9, #0
    str w9, [sp, #2388]
    movz x9, #8161
    str w9, [sp, #2392]
    movn x9, #2946
    str w9, [sp, #2396]
    movn x9, #738
    str w9, [sp, #2400]
    movn x9, #4810
    str w9, [sp, #2404]
    movz x9, #12668
    str w9, [sp, #2408]
    movz x9, #2389
    str w9, [sp, #2412]
    movn x9, #436
    str w9, [sp, #2416]
    movz x9, #1229
    str w9, [sp, #2420]
    movz x9, #6524
    str w9, [sp, #2424]
    mov x9, #0
    str w9, [sp, #2428]
    adrp x14, _lb_text_c0364db72913@PAGE
    add x14, x14, _lb_text_c0364db72913@PAGEOFF
    str x14, [sp, #2432]
    movz x9, #9
    str x9, [sp, #2440]
    mov x9, #0
    str w9, [sp, #2448]
    mov x9, #0
    str w9, [sp, #2452]
    movz x9, #8200
    str w9, [sp, #2456]
    movn x9, #2975
    str w9, [sp, #2460]
    movn x9, #718
    str w9, [sp, #2464]
    movn x9, #4295
    str w9, [sp, #2468]
    movz x9, #12053
    str w9, [sp, #2472]
    movz x9, #2532
    str w9, [sp, #2476]
    movn x9, #428
    str w9, [sp, #2480]
    movz x9, #1282
    str w9, [sp, #2484]
    movz x9, #5774
    str w9, [sp, #2488]
    mov x9, #0
    str w9, [sp, #2492]
    adrp x14, _lb_text_c751ed91b637@PAGE
    add x14, x14, _lb_text_c751ed91b637@PAGEOFF
    str x14, [sp, #2496]
    movz x9, #9
    str x9, [sp, #2504]
    mov x9, #0
    str w9, [sp, #2512]
    mov x9, #0
    str w9, [sp, #2516]
    movz x9, #7662
    str w9, [sp, #2520]
    movn x9, #2685
    str w9, [sp, #2524]
    movn x9, #659
    str w9, [sp, #2528]
    movn x9, #5239
    str w9, [sp, #2532]
    movz x9, #12965
    str w9, [sp, #2536]
    movz x9, #2530
    str w9, [sp, #2540]
    movn x9, #795
    str w9, [sp, #2544]
    movz x9, #1508
    str w9, [sp, #2548]
    movz x9, #6167
    str w9, [sp, #2552]
    mov x9, #0
    str w9, [sp, #2556]
    adrp x14, _lb_text_7cd3d3ececbb@PAGE
    add x14, x14, _lb_text_7cd3d3ececbb@PAGEOFF
    str x14, [sp, #2560]
    movz x9, #9
    str x9, [sp, #2568]
    mov x9, #0
    str w9, [sp, #2576]
    mov x9, #0
    str w9, [sp, #2580]
    movz x9, #6640
    str w9, [sp, #2584]
    movn x9, #1846
    str w9, [sp, #2588]
    movn x9, #502
    str w9, [sp, #2592]
    movn x9, #5237
    str w9, [sp, #2596]
    movz x9, #13010
    str w9, [sp, #2600]
    movz x9, #2474
    str w9, [sp, #2604]
    movn x9, #992
    str w9, [sp, #2608]
    movz x9, #1673
    str w9, [sp, #2612]
    movz x9, #6527
    str w9, [sp, #2616]
    mov x9, #0
    str w9, [sp, #2620]
    adrp x14, _lb_text_8df43fe96ad3@PAGE
    add x14, x14, _lb_text_8df43fe96ad3@PAGEOFF
    str x14, [sp, #2624]
    movz x9, #9
    str x9, [sp, #2632]
    mov x9, #0
    str w9, [sp, #2640]
    mov x9, #0
    str w9, [sp, #2644]
    movz x9, #6629
    str w9, [sp, #2648]
    movn x9, #1899
    str w9, [sp, #2652]
    movn x9, #482
    str w9, [sp, #2656]
    movn x9, #4617
    str w9, [sp, #2660]
    movz x9, #12349
    str w9, [sp, #2664]
    movz x9, #2550
    str w9, [sp, #2668]
    movn x9, #621
    str w9, [sp, #2672]
    movz x9, #1381
    str w9, [sp, #2676]
    movz x9, #6514
    str w9, [sp, #2680]
    mov x9, #0
    str w9, [sp, #2684]
    adrp x14, _lb_text_39a29568033a@PAGE
    add x14, x14, _lb_text_39a29568033a@PAGEOFF
    str x14, [sp, #2688]
    movz x9, #7
    str x9, [sp, #2696]
    mov x9, #0
    str w9, [sp, #2704]
    mov x9, #0
    str w9, [sp, #2708]
    movz x9, #4913
    str w9, [sp, #2712]
    movn x9, #540
    str w9, [sp, #2716]
    movn x9, #201
    str w9, [sp, #2720]
    movn x9, #6129
    str w9, [sp, #2724]
    movz x9, #13513
    str w9, [sp, #2728]
    movz x9, #2906
    str w9, [sp, #2732]
    movn x9, #1563
    str w9, [sp, #2736]
    movz x9, #2151
    str w9, [sp, #2740]
    movz x9, #7183
    str w9, [sp, #2744]
    mov x9, #0
    str w9, [sp, #2748]
    adrp x14, _lb_text_16b6d9478e36@PAGE
    add x14, x14, _lb_text_16b6d9478e36@PAGEOFF
    str x14, [sp, #2752]
    movz x9, #9
    str x9, [sp, #2760]
    mov x9, #0
    str w9, [sp, #2768]
    mov x9, #0
    str w9, [sp, #2772]
    movz x9, #6912
    str w9, [sp, #2776]
    movn x9, #2126
    str w9, [sp, #2780]
    movn x9, #468
    str w9, [sp, #2784]
    movn x9, #4469
    str w9, [sp, #2788]
    movz x9, #12175
    str w9, [sp, #2792]
    movz x9, #2587
    str w9, [sp, #2796]
    movn x9, #397
    str w9, [sp, #2800]
    movz x9, #1478
    str w9, [sp, #2804]
    movz x9, #6492
    str w9, [sp, #2808]
    mov x9, #0
    str w9, [sp, #2812]
    adrp x14, _lb_text_34b17e72e218@PAGE
    add x14, x14, _lb_text_34b17e72e218@PAGEOFF
    str x14, [sp, #2816]
    movz x9, #7
    str x9, [sp, #2824]
    mov x9, #0
    str w9, [sp, #2832]
    mov x9, #0
    str w9, [sp, #2836]
    movz x9, #5838
    str w9, [sp, #2840]
    movn x9, #1429
    str w9, [sp, #2844]
    movn x9, #245
    str w9, [sp, #2848]
    movn x9, #3496
    str w9, [sp, #2852]
    movz x9, #11477
    str w9, [sp, #2856]
    movz x9, #2297
    str w9, [sp, #2860]
    movn x9, #747
    str w9, [sp, #2864]
    movz x9, #1885
    str w9, [sp, #2868]
    movz x9, #5778
    str w9, [sp, #2872]
    mov x9, #0
    str w9, [sp, #2876]
    adrp x14, _lb_text_046201419217@PAGE
    add x14, x14, _lb_text_046201419217@PAGEOFF
    str x14, [sp, #2880]
    movz x9, #8
    str x9, [sp, #2888]
    mov x9, #0
    str w9, [sp, #2896]
    mov x9, #0
    str w9, [sp, #2900]
    movz x9, #8200
    str w9, [sp, #2904]
    movn x9, #2975
    str w9, [sp, #2908]
    movn x9, #718
    str w9, [sp, #2912]
    movn x9, #4295
    str w9, [sp, #2916]
    movz x9, #12053
    str w9, [sp, #2920]
    movz x9, #2532
    str w9, [sp, #2924]
    movn x9, #428
    str w9, [sp, #2928]
    movz x9, #1282
    str w9, [sp, #2932]
    movz x9, #5774
    str w9, [sp, #2936]
    mov x9, #0
    str w9, [sp, #2940]
    adrp x14, _lb_text_b0c2f2b1e5b7@PAGE
    add x14, x14, _lb_text_b0c2f2b1e5b7@PAGEOFF
    str x14, [sp, #2944]
    movz x9, #9
    str x9, [sp, #2952]
    mov x9, #0
    str w9, [sp, #2960]
    mov x9, #0
    str w9, [sp, #2964]
    movz x9, #7460
    str w9, [sp, #2968]
    movn x9, #2364
    str w9, [sp, #2972]
    movn x9, #587
    str w9, [sp, #2976]
    movn x9, #5686
    str w9, [sp, #2980]
    movz x9, #13442
    str w9, [sp, #2984]
    movz x9, #2474
    str w9, [sp, #2988]
    movn x9, #623
    str w9, [sp, #2992]
    movz x9, #1156
    str w9, [sp, #2996]
    movz x9, #6584
    str w9, [sp, #3000]
    mov x9, #0
    str w9, [sp, #3004]
    adrp x14, _lb_text_dd9da554919e@PAGE
    add x14, x14, _lb_text_dd9da554919e@PAGEOFF
    str x14, [sp, #3008]
    movz x9, #7
    str x9, [sp, #3016]
    mov x9, #0
    str w9, [sp, #3024]
    mov x9, #0
    str w9, [sp, #3028]
    movz x9, #7374
    str w9, [sp, #3032]
    movn x9, #2388
    str w9, [sp, #3036]
    movn x9, #550
    str w9, [sp, #3040]
    movn x9, #5434
    str w9, [sp, #3044]
    movz x9, #13162
    str w9, [sp, #3048]
    movz x9, #2519
    str w9, [sp, #3052]
    movn x9, #1005
    str w9, [sp, #3056]
    movz x9, #1795
    str w9, [sp, #3060]
    movz x9, #6552
    str w9, [sp, #3064]
    mov x9, #0
    str w9, [sp, #3068]
    adrp x14, _lb_text_be0f2f2eb5da@PAGE
    add x14, x14, _lb_text_be0f2f2eb5da@PAGEOFF
    str x14, [sp, #3072]
    movz x9, #8
    str x9, [sp, #3080]
    mov x9, #0
    str w9, [sp, #3088]
    mov x9, #0
    str w9, [sp, #3092]
    movz x9, #9089
    str w9, [sp, #3096]
    movn x9, #3576
    str w9, [sp, #3100]
    movn x9, #786
    str w9, [sp, #3104]
    movn x9, #3562
    str w9, [sp, #3108]
    movz x9, #11326
    str w9, [sp, #3112]
    movz x9, #2557
    str w9, [sp, #3116]
    movn x9, #113
    str w9, [sp, #3120]
    movz x9, #928
    str w9, [sp, #3124]
    movz x9, #5904
    str w9, [sp, #3128]
    mov x9, #0
    str w9, [sp, #3132]
    adrp x14, _lb_text_0fbf5eacc611@PAGE
    add x14, x14, _lb_text_0fbf5eacc611@PAGEOFF
    str x14, [sp, #3136]
    movz x9, #8
    str x9, [sp, #3144]
    mov x9, #0
    str w9, [sp, #3152]
    mov x9, #0
    str w9, [sp, #3156]
    movz x9, #7460
    str w9, [sp, #3160]
    movn x9, #2364
    str w9, [sp, #3164]
    movn x9, #587
    str w9, [sp, #3168]
    movn x9, #5686
    str w9, [sp, #3172]
    movz x9, #13442
    str w9, [sp, #3176]
    movz x9, #2474
    str w9, [sp, #3180]
    movn x9, #623
    str w9, [sp, #3184]
    movz x9, #1156
    str w9, [sp, #3188]
    movz x9, #6584
    str w9, [sp, #3192]
    mov x9, #0
    str w9, [sp, #3196]
    adrp x14, _lb_text_159b7e655a8a@PAGE
    add x14, x14, _lb_text_159b7e655a8a@PAGEOFF
    str x14, [sp, #3200]
    movz x9, #8
    str x9, [sp, #3208]
    mov x9, #0
    str w9, [sp, #3216]
    mov x9, #0
    str w9, [sp, #3220]
    movz x9, #7374
    str w9, [sp, #3224]
    movn x9, #2388
    str w9, [sp, #3228]
    movn x9, #550
    str w9, [sp, #3232]
    movn x9, #5434
    str w9, [sp, #3236]
    movz x9, #13162
    str w9, [sp, #3240]
    movz x9, #2519
    str w9, [sp, #3244]
    movn x9, #1005
    str w9, [sp, #3248]
    movz x9, #1795
    str w9, [sp, #3252]
    movz x9, #6552
    str w9, [sp, #3256]
    mov x9, #0
    str w9, [sp, #3260]
    adrp x14, _lb_text_1ac39545c987@PAGE
    add x14, x14, _lb_text_1ac39545c987@PAGEOFF
    str x14, [sp, #3264]
    movz x9, #6
    str x9, [sp, #3272]
    mov x9, #0
    str w9, [sp, #3280]
    mov x9, #0
    str w9, [sp, #3284]
    movz x9, #5271
    str w9, [sp, #3288]
    movn x9, #711
    str w9, [sp, #3292]
    movn x9, #346
    str w9, [sp, #3296]
    movn x9, #6152
    str w9, [sp, #3300]
    movz x9, #13653
    str w9, [sp, #3304]
    movz x9, #2763
    str w9, [sp, #3308]
    movn x9, #1600
    str w9, [sp, #3312]
    movz x9, #2366
    str w9, [sp, #3316]
    movz x9, #7242
    str w9, [sp, #3320]
    mov x9, #0
    str w9, [sp, #3324]
    adrp x14, _lb_text_3bc63aa93da1@PAGE
    add x14, x14, _lb_text_3bc63aa93da1@PAGEOFF
    str x14, [sp, #3328]
    movz x9, #8
    str x9, [sp, #3336]
    mov x9, #0
    str w9, [sp, #3344]
    mov x9, #0
    str w9, [sp, #3348]
    movz x9, #9811
    str w9, [sp, #3352]
    movn x9, #3907
    str w9, [sp, #3356]
    movn x9, #751
    str w9, [sp, #3360]
    movn x9, #3703
    str w9, [sp, #3364]
    movz x9, #11577
    str w9, [sp, #3368]
    movz x9, #2417
    str w9, [sp, #3372]
    movn x9, #72
    str w9, [sp, #3376]
    movz x9, #950
    str w9, [sp, #3380]
    movz x9, #5980
    str w9, [sp, #3384]
    mov x9, #0
    str w9, [sp, #3388]
    adrp x14, _lb_text_27ef30c0ea2b@PAGE
    add x14, x14, _lb_text_27ef30c0ea2b@PAGEOFF
    str x14, [sp, #3392]
    movz x9, #6
    str x9, [sp, #3400]
    mov x9, #0
    str w9, [sp, #3408]
    mov x9, #0
    str w9, [sp, #3412]
    movz x9, #6389
    str w9, [sp, #3416]
    movn x9, #1702
    str w9, [sp, #3420]
    movn x9, #377
    str w9, [sp, #3424]
    movn x9, #4561
    str w9, [sp, #3428]
    movz x9, #12265
    str w9, [sp, #3432]
    movz x9, #2587
    str w9, [sp, #3436]
    movn x9, #669
    str w9, [sp, #3440]
    movz x9, #1489
    str w9, [sp, #3444]
    movz x9, #6550
    str w9, [sp, #3448]
    mov x9, #0
    str w9, [sp, #3452]
    adrp x14, _lb_text_6c77093ce085@PAGE
    add x14, x14, _lb_text_6c77093ce085@PAGEOFF
    str x14, [sp, #3456]
    movz x9, #9
    str x9, [sp, #3464]
    mov x9, #0
    str w9, [sp, #3472]
    mov x9, #0
    str w9, [sp, #3476]
    movz x9, #7657
    str w9, [sp, #3480]
    movn x9, #2846
    str w9, [sp, #3484]
    movn x9, #606
    str w9, [sp, #3488]
    movn x9, #4082
    str w9, [sp, #3492]
    movz x9, #11966
    str w9, [sp, #3496]
    movz x9, #2389
    str w9, [sp, #3500]
    movn x9, #683
    str w9, [sp, #3504]
    movz x9, #1418
    str w9, [sp, #3508]
    movz x9, #5844
    str w9, [sp, #3512]
    mov x9, #0
    str w9, [sp, #3516]
    adrp x14, _lb_text_b5cc649e194e@PAGE
    add x14, x14, _lb_text_b5cc649e194e@PAGEOFF
    str x14, [sp, #3520]
    movz x9, #9
    str x9, [sp, #3528]
    mov x9, #0
    str w9, [sp, #3536]
    mov x9, #0
    str w9, [sp, #3540]
    movz x9, #5973
    str w9, [sp, #3544]
    movn x9, #1694
    str w9, [sp, #3548]
    movn x9, #418
    str w9, [sp, #3552]
    movn x9, #3825
    str w9, [sp, #3556]
    movz x9, #11797
    str w9, [sp, #3560]
    movz x9, #2293
    str w9, [sp, #3564]
    movn x9, #638
    str w9, [sp, #3568]
    movz x9, #1398
    str w9, [sp, #3572]
    movz x9, #5789
    str w9, [sp, #3576]
    mov x9, #0
    str w9, [sp, #3580]
    adrp x14, _lb_text_901d52d758ff@PAGE
    add x14, x14, _lb_text_901d52d758ff@PAGEOFF
    str x14, [sp, #3584]
    movz x9, #9
    str x9, [sp, #3592]
    mov x9, #0
    str w9, [sp, #3600]
    mov x9, #0
    str w9, [sp, #3604]
    movz x9, #7657
    str w9, [sp, #3608]
    movn x9, #2846
    str w9, [sp, #3612]
    movn x9, #606
    str w9, [sp, #3616]
    movn x9, #4082
    str w9, [sp, #3620]
    movz x9, #11966
    str w9, [sp, #3624]
    movz x9, #2389
    str w9, [sp, #3628]
    movn x9, #683
    str w9, [sp, #3632]
    movz x9, #1418
    str w9, [sp, #3636]
    movz x9, #5844
    str w9, [sp, #3640]
    mov x9, #0
    str w9, [sp, #3644]
    adrp x14, _lb_text_c1e17ef7524a@PAGE
    add x14, x14, _lb_text_c1e17ef7524a@PAGEOFF
    str x14, [sp, #3648]
    movz x9, #9
    str x9, [sp, #3656]
    mov x9, #0
    str w9, [sp, #3664]
    mov x9, #0
    str w9, [sp, #3668]
    movz x9, #5973
    str w9, [sp, #3672]
    movn x9, #1694
    str w9, [sp, #3676]
    movn x9, #418
    str w9, [sp, #3680]
    movn x9, #3825
    str w9, [sp, #3684]
    movz x9, #11797
    str w9, [sp, #3688]
    movz x9, #2293
    str w9, [sp, #3692]
    movn x9, #638
    str w9, [sp, #3696]
    movz x9, #1398
    str w9, [sp, #3700]
    movz x9, #5789
    str w9, [sp, #3704]
    mov x9, #0
    str w9, [sp, #3708]
    adrp x14, _lb_text_28e3d9548492@PAGE
    add x14, x14, _lb_text_28e3d9548492@PAGEOFF
    str x14, [sp, #3712]
    movz x9, #9
    str x9, [sp, #3720]
    mov x9, #0
    str w9, [sp, #3728]
    mov x9, #0
    str w9, [sp, #3732]
    movz x9, #7657
    str w9, [sp, #3736]
    movn x9, #2846
    str w9, [sp, #3740]
    movn x9, #606
    str w9, [sp, #3744]
    movn x9, #4082
    str w9, [sp, #3748]
    movz x9, #11966
    str w9, [sp, #3752]
    movz x9, #2389
    str w9, [sp, #3756]
    movn x9, #683
    str w9, [sp, #3760]
    movz x9, #1418
    str w9, [sp, #3764]
    movz x9, #5844
    str w9, [sp, #3768]
    mov x9, #0
    str w9, [sp, #3772]
    adrp x14, _lb_text_35660671c3d7@PAGE
    add x14, x14, _lb_text_35660671c3d7@PAGEOFF
    str x14, [sp, #3776]
    movz x9, #9
    str x9, [sp, #3784]
    mov x9, #0
    str w9, [sp, #3792]
    mov x9, #0
    str w9, [sp, #3796]
    movz x9, #6972
    str w9, [sp, #3800]
    movn x9, #2407
    str w9, [sp, #3804]
    movn x9, #599
    str w9, [sp, #3808]
    movn x9, #4329
    str w9, [sp, #3812]
    movz x9, #12101
    str w9, [sp, #3816]
    movz x9, #2515
    str w9, [sp, #3820]
    movn x9, #387
    str w9, [sp, #3824]
    movz x9, #1277
    str w9, [sp, #3828]
    movz x9, #5847
    str w9, [sp, #3832]
    mov x9, #0
    str w9, [sp, #3836]
    adrp x14, _lb_text_62a73c3dccab@PAGE
    add x14, x14, _lb_text_62a73c3dccab@PAGEOFF
    str x14, [sp, #3840]
    movz x9, #5
    str x9, [sp, #3848]
    mov x9, #0
    str w9, [sp, #3856]
    mov x9, #0
    str w9, [sp, #3860]
    movz x9, #5991
    str w9, [sp, #3864]
    movn x9, #1455
    str w9, [sp, #3868]
    movn x9, #454
    str w9, [sp, #3872]
    movn x9, #4763
    str w9, [sp, #3876]
    movz x9, #12135
    str w9, [sp, #3880]
    movz x9, #2980
    str w9, [sp, #3884]
    movn x9, #706
    str w9, [sp, #3888]
    movz x9, #1425
    str w9, [sp, #3892]
    movz x9, #6701
    str w9, [sp, #3896]
    mov x9, #0
    str w9, [sp, #3900]
    adrp x14, _lb_text_653100046ab1@PAGE
    add x14, x14, _lb_text_653100046ab1@PAGEOFF
    str x14, [sp, #3904]
    movz x9, #9
    str x9, [sp, #3912]
    mov x9, #0
    str w9, [sp, #3920]
    mov x9, #0
    str w9, [sp, #3924]
    movz x9, #6972
    str w9, [sp, #3928]
    movn x9, #2407
    str w9, [sp, #3932]
    movn x9, #599
    str w9, [sp, #3936]
    movn x9, #4329
    str w9, [sp, #3940]
    movz x9, #12101
    str w9, [sp, #3944]
    movz x9, #2515
    str w9, [sp, #3948]
    movn x9, #387
    str w9, [sp, #3952]
    movz x9, #1277
    str w9, [sp, #3956]
    movz x9, #5847
    str w9, [sp, #3960]
    mov x9, #0
    str w9, [sp, #3964]
    adrp x14, _lb_text_fe3ca4290096@PAGE
    add x14, x14, _lb_text_fe3ca4290096@PAGEOFF
    str x14, [sp, #3968]
    movz x9, #8
    str x9, [sp, #3976]
    mov x9, #0
    str w9, [sp, #3984]
    mov x9, #0
    str w9, [sp, #3988]
    movz x9, #6912
    str w9, [sp, #3992]
    movn x9, #2126
    str w9, [sp, #3996]
    movn x9, #468
    str w9, [sp, #4000]
    movn x9, #4469
    str w9, [sp, #4004]
    movz x9, #12175
    str w9, [sp, #4008]
    movz x9, #2587
    str w9, [sp, #4012]
    movn x9, #397
    str w9, [sp, #4016]
    movz x9, #1478
    str w9, [sp, #4020]
    movz x9, #6492
    str w9, [sp, #4024]
    mov x9, #0
    str w9, [sp, #4028]
    adrp x14, _lb_text_bf37bae32d44@PAGE
    add x14, x14, _lb_text_bf37bae32d44@PAGEOFF
    str x14, [sp, #4032]
    movz x9, #8
    str x9, [sp, #4040]
    mov x9, #0
    str w9, [sp, #4048]
    mov x9, #0
    str w9, [sp, #4052]
    movz x9, #7460
    str w9, [sp, #4056]
    movn x9, #2364
    str w9, [sp, #4060]
    movn x9, #587
    str w9, [sp, #4064]
    movn x9, #5686
    str w9, [sp, #4068]
    movz x9, #13442
    str w9, [sp, #4072]
    movz x9, #2474
    str w9, [sp, #4076]
    movn x9, #623
    str w9, [sp, #4080]
    movz x9, #1156
    str w9, [sp, #4084]
    movz x9, #6584
    str w9, [sp, #4088]
    mov x9, #0
    str w9, [sp, #4092]
    adrp x14, _lb_text_0f4c5d77b96b@PAGE
    add x14, x14, _lb_text_0f4c5d77b96b@PAGEOFF
    str x14, [sp, #4096]
    movz x9, #7
    str x9, [sp, #4104]
    mov x9, #0
    str w9, [sp, #4112]
    mov x9, #0
    str w9, [sp, #4116]
    movz x9, #8200
    str w9, [sp, #4120]
    movn x9, #2975
    str w9, [sp, #4124]
    movn x9, #718
    str w9, [sp, #4128]
    movn x9, #4295
    str w9, [sp, #4132]
    movz x9, #12053
    str w9, [sp, #4136]
    movz x9, #2532
    str w9, [sp, #4140]
    movn x9, #428
    str w9, [sp, #4144]
    movz x9, #1282
    str w9, [sp, #4148]
    movz x9, #5774
    str w9, [sp, #4152]
    mov x9, #0
    str w9, [sp, #4156]
    adrp x14, _lb_text_91e56a8bf332@PAGE
    add x14, x14, _lb_text_91e56a8bf332@PAGEOFF
    str x14, [sp, #4160]
    movz x9, #6
    str x9, [sp, #4168]
    mov x9, #0
    str w9, [sp, #4176]
    mov x9, #0
    str w9, [sp, #4180]
    movz x9, #5991
    str w9, [sp, #4184]
    movn x9, #1455
    str w9, [sp, #4188]
    movn x9, #454
    str w9, [sp, #4192]
    movn x9, #4763
    str w9, [sp, #4196]
    movz x9, #12135
    str w9, [sp, #4200]
    movz x9, #2980
    str w9, [sp, #4204]
    movn x9, #706
    str w9, [sp, #4208]
    movz x9, #1425
    str w9, [sp, #4212]
    movz x9, #6701
    str w9, [sp, #4216]
    mov x9, #0
    str w9, [sp, #4220]
    adrp x14, _lb_text_449d0183f90a@PAGE
    add x14, x14, _lb_text_449d0183f90a@PAGEOFF
    str x14, [sp, #4224]
    movz x9, #6
    str x9, [sp, #4232]
    mov x9, #0
    str w9, [sp, #4240]
    mov x9, #0
    str w9, [sp, #4244]
    movz x9, #6129
    str w9, [sp, #4248]
    movn x9, #1544
    str w9, [sp, #4252]
    movn x9, #417
    str w9, [sp, #4256]
    movn x9, #4929
    str w9, [sp, #4260]
    movz x9, #12490
    str w9, [sp, #4264]
    movz x9, #2743
    str w9, [sp, #4268]
    movn x9, #976
    str w9, [sp, #4272]
    movz x9, #1693
    str w9, [sp, #4276]
    movz x9, #6615
    str w9, [sp, #4280]
    mov x9, #0
    str w9, [sp, #4284]
    adrp x14, _lb_text_92537624ba47@PAGE
    add x14, x14, _lb_text_92537624ba47@PAGEOFF
    str x14, [sp, #4288]
    movz x9, #6
    str x9, [sp, #4296]
    mov x9, #0
    str w9, [sp, #4304]
    mov x9, #0
    str w9, [sp, #4308]
    movz x9, #6129
    str w9, [sp, #4312]
    movn x9, #1544
    str w9, [sp, #4316]
    movn x9, #417
    str w9, [sp, #4320]
    movn x9, #4929
    str w9, [sp, #4324]
    movz x9, #12490
    str w9, [sp, #4328]
    movz x9, #2743
    str w9, [sp, #4332]
    movn x9, #976
    str w9, [sp, #4336]
    movz x9, #1693
    str w9, [sp, #4340]
    movz x9, #6615
    str w9, [sp, #4344]
    mov x9, #0
    str w9, [sp, #4348]
    adrp x14, _lb_text_3d8dd8ffe170@PAGE
    add x14, x14, _lb_text_3d8dd8ffe170@PAGEOFF
    str x14, [sp, #4352]
    movz x9, #5
    str x9, [sp, #4360]
    mov x9, #0
    str w9, [sp, #4368]
    mov x9, #0
    str w9, [sp, #4372]
    movz x9, #6549
    str w9, [sp, #4376]
    movn x9, #1549
    str w9, [sp, #4380]
    movn x9, #435
    str w9, [sp, #4384]
    movn x9, #4879
    str w9, [sp, #4388]
    movz x9, #12435
    str w9, [sp, #4392]
    movz x9, #2753
    str w9, [sp, #4396]
    movn x9, #853
    str w9, [sp, #4400]
    movz x9, #1868
    str w9, [sp, #4404]
    movz x9, #6976
    str w9, [sp, #4408]
    mov x9, #0
    str w9, [sp, #4412]
    adrp x14, _lb_text_318f1698b1a1@PAGE
    add x14, x14, _lb_text_318f1698b1a1@PAGEOFF
    str x14, [sp, #4416]
    movz x9, #6
    str x9, [sp, #4424]
    mov x9, #0
    str w9, [sp, #4432]
    mov x9, #0
    str w9, [sp, #4436]
    movz x9, #6129
    str w9, [sp, #4440]
    movn x9, #1544
    str w9, [sp, #4444]
    movn x9, #417
    str w9, [sp, #4448]
    movn x9, #4929
    str w9, [sp, #4452]
    movz x9, #12490
    str w9, [sp, #4456]
    movz x9, #2743
    str w9, [sp, #4460]
    movn x9, #976
    str w9, [sp, #4464]
    movz x9, #1693
    str w9, [sp, #4468]
    movz x9, #6615
    str w9, [sp, #4472]
    mov x9, #0
    str w9, [sp, #4476]
    adrp x14, _lb_text_9277de90dab7@PAGE
    add x14, x14, _lb_text_9277de90dab7@PAGEOFF
    str x14, [sp, #4480]
    movz x9, #5
    str x9, [sp, #4488]
    mov x9, #0
    str w9, [sp, #4496]
    mov x9, #0
    str w9, [sp, #4500]
    movz x9, #6549
    str w9, [sp, #4504]
    movn x9, #1549
    str w9, [sp, #4508]
    movn x9, #435
    str w9, [sp, #4512]
    movn x9, #4879
    str w9, [sp, #4516]
    movz x9, #12435
    str w9, [sp, #4520]
    movz x9, #2753
    str w9, [sp, #4524]
    movn x9, #853
    str w9, [sp, #4528]
    movz x9, #1868
    str w9, [sp, #4532]
    movz x9, #6976
    str w9, [sp, #4536]
    mov x9, #0
    str w9, [sp, #4540]
    adrp x14, _lb_text_64834573eae6@PAGE
    add x14, x14, _lb_text_64834573eae6@PAGEOFF
    str x14, [sp, #4544]
    movz x9, #5
    str x9, [sp, #4552]
    mov x9, #0
    str w9, [sp, #4560]
    mov x9, #0
    str w9, [sp, #4564]
    movz x9, #6129
    str w9, [sp, #4568]
    movn x9, #1544
    str w9, [sp, #4572]
    movn x9, #417
    str w9, [sp, #4576]
    movn x9, #4929
    str w9, [sp, #4580]
    movz x9, #12490
    str w9, [sp, #4584]
    movz x9, #2743
    str w9, [sp, #4588]
    movn x9, #976
    str w9, [sp, #4592]
    movz x9, #1693
    str w9, [sp, #4596]
    movz x9, #6615
    str w9, [sp, #4600]
    mov x9, #0
    str w9, [sp, #4604]
    adrp x14, _lb_text_1a252956a0a2@PAGE
    add x14, x14, _lb_text_1a252956a0a2@PAGEOFF
    str x14, [sp, #4608]
    movz x9, #5
    str x9, [sp, #4616]
    mov x9, #0
    str w9, [sp, #4624]
    mov x9, #0
    str w9, [sp, #4628]
    movz x9, #5491
    str w9, [sp, #4632]
    movn x9, #1191
    str w9, [sp, #4636]
    movn x9, #362
    str w9, [sp, #4640]
    movn x9, #4950
    str w9, [sp, #4644]
    movz x9, #12342
    str w9, [sp, #4648]
    movz x9, #2948
    str w9, [sp, #4652]
    movn x9, #910
    str w9, [sp, #4656]
    movz x9, #1722
    str w9, [sp, #4660]
    movz x9, #7192
    str w9, [sp, #4664]
    mov x9, #0
    str w9, [sp, #4668]
    adrp x14, _lb_text_a10168262192@PAGE
    add x14, x14, _lb_text_a10168262192@PAGEOFF
    str x14, [sp, #4672]
    movz x9, #8
    str x9, [sp, #4680]
    mov x9, #0
    str w9, [sp, #4688]
    mov x9, #0
    str w9, [sp, #4692]
    movz x9, #6129
    str w9, [sp, #4696]
    movn x9, #1544
    str w9, [sp, #4700]
    movn x9, #417
    str w9, [sp, #4704]
    movn x9, #4929
    str w9, [sp, #4708]
    movz x9, #12490
    str w9, [sp, #4712]
    movz x9, #2743
    str w9, [sp, #4716]
    movn x9, #976
    str w9, [sp, #4720]
    movz x9, #1693
    str w9, [sp, #4724]
    movz x9, #6615
    str w9, [sp, #4728]
    mov x9, #0
    str w9, [sp, #4732]
    adrp x14, _lb_text_0fd19860af08@PAGE
    add x14, x14, _lb_text_0fd19860af08@PAGEOFF
    str x14, [sp, #4736]
    movz x9, #9
    str x9, [sp, #4744]
    mov x9, #0
    str w9, [sp, #4752]
    mov x9, #0
    str w9, [sp, #4756]
    movz x9, #6344
    str w9, [sp, #4760]
    movn x9, #1611
    str w9, [sp, #4764]
    movn x9, #461
    str w9, [sp, #4768]
    movn x9, #4862
    str w9, [sp, #4772]
    movz x9, #12477
    str w9, [sp, #4776]
    movz x9, #2681
    str w9, [sp, #4780]
    movn x9, #864
    str w9, [sp, #4784]
    movz x9, #1786
    str w9, [sp, #4788]
    movz x9, #6899
    str w9, [sp, #4792]
    mov x9, #0
    str w9, [sp, #4796]
    adrp x14, _lb_text_078f08cbff57@PAGE
    add x14, x14, _lb_text_078f08cbff57@PAGEOFF
    str x14, [sp, #4800]
    movz x9, #4
    str x9, [sp, #4808]
    mov x9, #0
    str w9, [sp, #4816]
    mov x9, #0
    str w9, [sp, #4820]
    movz x9, #5991
    str w9, [sp, #4824]
    movn x9, #1455
    str w9, [sp, #4828]
    movn x9, #454
    str w9, [sp, #4832]
    movn x9, #4763
    str w9, [sp, #4836]
    movz x9, #12135
    str w9, [sp, #4840]
    movz x9, #2980
    str w9, [sp, #4844]
    movn x9, #706
    str w9, [sp, #4848]
    movz x9, #1425
    str w9, [sp, #4852]
    movz x9, #6701
    str w9, [sp, #4856]
    mov x9, #0
    str w9, [sp, #4860]
    adrp x14, _lb_text_511dae601c46@PAGE
    add x14, x14, _lb_text_511dae601c46@PAGEOFF
    str x14, [sp, #4864]
    movz x9, #7
    str x9, [sp, #4872]
    mov x9, #0
    str w9, [sp, #4880]
    mov x9, #0
    str w9, [sp, #4884]
    movz x9, #6069
    str w9, [sp, #4888]
    movn x9, #1220
    str w9, [sp, #4892]
    movn x9, #365
    str w9, [sp, #4896]
    movn x9, #5220
    str w9, [sp, #4900]
    movz x9, #12779
    str w9, [sp, #4904]
    movz x9, #2734
    str w9, [sp, #4908]
    movn x9, #1023
    str w9, [sp, #4912]
    movz x9, #2066
    str w9, [sp, #4916]
    movz x9, #6834
    str w9, [sp, #4920]
    mov x9, #0
    str w9, [sp, #4924]
    adrp x14, _lb_text_e5129b9838fb@PAGE
    add x14, x14, _lb_text_e5129b9838fb@PAGEOFF
    str x14, [sp, #4928]
    movz x9, #7
    str x9, [sp, #4936]
    mov x9, #0
    str w9, [sp, #4944]
    mov x9, #0
    str w9, [sp, #4948]
    movz x9, #5986
    str w9, [sp, #4952]
    movn x9, #1617
    str w9, [sp, #4956]
    movn x9, #414
    str w9, [sp, #4960]
    movn x9, #4556
    str w9, [sp, #4964]
    movz x9, #11820
    str w9, [sp, #4968]
    movz x9, #3120
    str w9, [sp, #4972]
    movn x9, #680
    str w9, [sp, #4976]
    movz x9, #1404
    str w9, [sp, #4980]
    movz x9, #6971
    str w9, [sp, #4984]
    mov x9, #0
    str w9, [sp, #4988]
    adrp x14, _lb_text_c67ba3d4d511@PAGE
    add x14, x14, _lb_text_c67ba3d4d511@PAGEOFF
    str x14, [sp, #4992]
    movz x9, #7
    str x9, [sp, #5000]
    mov x9, #0
    str w9, [sp, #5008]
    mov x9, #0
    str w9, [sp, #5012]
    movz x9, #5991
    str w9, [sp, #5016]
    movn x9, #1455
    str w9, [sp, #5020]
    movn x9, #454
    str w9, [sp, #5024]
    movn x9, #4763
    str w9, [sp, #5028]
    movz x9, #12135
    str w9, [sp, #5032]
    movz x9, #2980
    str w9, [sp, #5036]
    movn x9, #706
    str w9, [sp, #5040]
    movz x9, #1425
    str w9, [sp, #5044]
    movz x9, #6701
    str w9, [sp, #5048]
    mov x9, #0
    str w9, [sp, #5052]
    adrp x14, _lb_text_0df5956e96e2@PAGE
    add x14, x14, _lb_text_0df5956e96e2@PAGEOFF
    str x14, [sp, #5056]
    movz x9, #7
    str x9, [sp, #5064]
    mov x9, #0
    str w9, [sp, #5072]
    mov x9, #0
    str w9, [sp, #5076]
    movz x9, #5932
    str w9, [sp, #5080]
    movn x9, #1491
    str w9, [sp, #5084]
    movn x9, #410
    str w9, [sp, #5088]
    movn x9, #4812
    str w9, [sp, #5092]
    movz x9, #12285
    str w9, [sp, #5096]
    movz x9, #2856
    str w9, [sp, #5100]
    movn x9, #740
    str w9, [sp, #5104]
    movz x9, #1524
    str w9, [sp, #5108]
    movz x9, #6739
    str w9, [sp, #5112]
    mov x9, #0
    str w9, [sp, #5116]
    adrp x14, _lb_text_6a7abd7a9d2a@PAGE
    add x14, x14, _lb_text_6a7abd7a9d2a@PAGEOFF
    str x14, [sp, #5120]
    movz x9, #6
    str x9, [sp, #5128]
    mov x9, #0
    str w9, [sp, #5136]
    mov x9, #0
    str w9, [sp, #5140]
    movz x9, #5991
    str w9, [sp, #5144]
    movn x9, #1455
    str w9, [sp, #5148]
    movn x9, #454
    str w9, [sp, #5152]
    movn x9, #4763
    str w9, [sp, #5156]
    movz x9, #12135
    str w9, [sp, #5160]
    movz x9, #2980
    str w9, [sp, #5164]
    movn x9, #706
    str w9, [sp, #5168]
    movz x9, #1425
    str w9, [sp, #5172]
    movz x9, #6701
    str w9, [sp, #5176]
    mov x9, #0
    str w9, [sp, #5180]
    adrp x14, _lb_text_82a041e0ede7@PAGE
    add x14, x14, _lb_text_82a041e0ede7@PAGEOFF
    str x14, [sp, #5184]
    movz x9, #7
    str x9, [sp, #5192]
    mov x9, #0
    str w9, [sp, #5200]
    mov x9, #0
    str w9, [sp, #5204]
    movz x9, #5491
    str w9, [sp, #5208]
    movn x9, #1191
    str w9, [sp, #5212]
    movn x9, #362
    str w9, [sp, #5216]
    movn x9, #4950
    str w9, [sp, #5220]
    movz x9, #12342
    str w9, [sp, #5224]
    movz x9, #2948
    str w9, [sp, #5228]
    movn x9, #910
    str w9, [sp, #5232]
    movz x9, #1722
    str w9, [sp, #5236]
    movz x9, #7192
    str w9, [sp, #5240]
    mov x9, #0
    str w9, [sp, #5244]
    adrp x14, _lb_text_c2d5417620fa@PAGE
    add x14, x14, _lb_text_c2d5417620fa@PAGEOFF
    str x14, [sp, #5248]
    movz x9, #7
    str x9, [sp, #5256]
    mov x9, #0
    str w9, [sp, #5264]
    mov x9, #0
    str w9, [sp, #5268]
    movz x9, #5491
    str w9, [sp, #5272]
    movn x9, #1191
    str w9, [sp, #5276]
    movn x9, #362
    str w9, [sp, #5280]
    movn x9, #4950
    str w9, [sp, #5284]
    movz x9, #12342
    str w9, [sp, #5288]
    movz x9, #2948
    str w9, [sp, #5292]
    movn x9, #910
    str w9, [sp, #5296]
    movz x9, #1722
    str w9, [sp, #5300]
    movz x9, #7192
    str w9, [sp, #5304]
    mov x9, #0
    str w9, [sp, #5308]
    adrp x14, _lb_text_654ff99658f7@PAGE
    add x14, x14, _lb_text_654ff99658f7@PAGEOFF
    str x14, [sp, #5312]
    movz x9, #7
    str x9, [sp, #5320]
    mov x9, #0
    str w9, [sp, #5328]
    mov x9, #0
    str w9, [sp, #5332]
    movz x9, #6344
    str w9, [sp, #5336]
    movn x9, #1611
    str w9, [sp, #5340]
    movn x9, #461
    str w9, [sp, #5344]
    movn x9, #4862
    str w9, [sp, #5348]
    movz x9, #12477
    str w9, [sp, #5352]
    movz x9, #2681
    str w9, [sp, #5356]
    movn x9, #864
    str w9, [sp, #5360]
    movz x9, #1786
    str w9, [sp, #5364]
    movz x9, #6899
    str w9, [sp, #5368]
    mov x9, #0
    str w9, [sp, #5372]
    adrp x14, _lb_text_78254197a0d4@PAGE
    add x14, x14, _lb_text_78254197a0d4@PAGEOFF
    str x14, [sp, #5376]
    movz x9, #5
    str x9, [sp, #5384]
    mov x9, #0
    str w9, [sp, #5392]
    mov x9, #0
    str w9, [sp, #5396]
    movz x9, #5986
    str w9, [sp, #5400]
    movn x9, #1617
    str w9, [sp, #5404]
    movn x9, #414
    str w9, [sp, #5408]
    movn x9, #4556
    str w9, [sp, #5412]
    movz x9, #11820
    str w9, [sp, #5416]
    movz x9, #3120
    str w9, [sp, #5420]
    movn x9, #680
    str w9, [sp, #5424]
    movz x9, #1404
    str w9, [sp, #5428]
    movz x9, #6971
    str w9, [sp, #5432]
    mov x9, #0
    str w9, [sp, #5436]
    adrp x14, _lb_text_17cafd0488c3@PAGE
    add x14, x14, _lb_text_17cafd0488c3@PAGEOFF
    str x14, [sp, #5440]
    movz x9, #10
    str x9, [sp, #5448]
    mov x9, #0
    str w9, [sp, #5456]
    mov x9, #0
    str w9, [sp, #5460]
    movz x9, #5491
    str w9, [sp, #5464]
    movn x9, #1191
    str w9, [sp, #5468]
    movn x9, #362
    str w9, [sp, #5472]
    movn x9, #4950
    str w9, [sp, #5476]
    movz x9, #12342
    str w9, [sp, #5480]
    movz x9, #2948
    str w9, [sp, #5484]
    movn x9, #910
    str w9, [sp, #5488]
    movz x9, #1722
    str w9, [sp, #5492]
    movz x9, #7192
    str w9, [sp, #5496]
    mov x9, #0
    str w9, [sp, #5500]
    adrp x14, _lb_12luce_raw_raw_11sony_colors@PAGE
    add x14, x14, _lb_12luce_raw_raw_11sony_colors@PAGEOFF
    movz x16, #5504
    sub x10, x29, x16
    mov x0, x14
    mov x1, x10
    movz x2, #5504
    bl _memcpy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.subsections_via_symbols
