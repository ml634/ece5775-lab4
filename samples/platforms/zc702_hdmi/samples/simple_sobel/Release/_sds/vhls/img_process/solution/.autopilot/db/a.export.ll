; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@line_buffer = common global [6144 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@img_process_str = internal unnamed_addr constant [12 x i8] c"img_process\00"

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out, i32 %isobelInvert, i32 %iminsobelSensitivity, i32 %imaxsobelSensitivity) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_in), !map !9
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_out), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %isobelInvert) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iminsobelSensitivity) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %imaxsobelSensitivity) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @img_process_str) nounwind
  %imaxsobelSensitivity_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imaxsobelSensitivity)
  %iminsobelSensitivity_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %iminsobelSensitivity)
  %isobelInvert_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %isobelInvert)
  %pixel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_out, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_in, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %pix_j = phi i12 [ 0, %0 ], [ %pix_j_2, %2 ]
  %exitcond = icmp eq i12 %pix_j, -2048
  %pix_j_2 = add i12 %pix_j, 1
  br i1 %exitcond, label %.preheader31, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %pixel_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in)
  store volatile i32 %pixel_1, i32* %pixel, align 4
  %pixel_load = load volatile i32* %pixel, align 4
  %in_B = trunc i32 %pixel_load to i8
  %pixel_load_1 = load volatile i32* %pixel, align 4
  %in_G = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_1, i32 8, i32 15)
  %pixel_load_2 = load volatile i32* %pixel, align 4
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_2, i32 16, i32 23)
  %p_shl1_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_1, i6 0)
  %p_shl1_i_cast = zext i14 %p_shl1_i to i15
  %p_shl2_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_1, i1 false)
  %p_shl2_i_cast = zext i9 %p_shl2_i to i15
  %tmp_2_i_cast1 = zext i8 %in_G to i9
  %p_shl_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G, i7 0)
  %p_shl_i_cast = zext i15 %p_shl_i to i16
  %tmp_4_i_cast = zext i8 %in_B to i13
  %tmp_5_i = mul i13 25, %tmp_4_i_cast
  %tmp6 = add i15 %p_shl1_i_cast, %p_shl2_i_cast
  %tmp20_cast = zext i15 %tmp6 to i16
  %tmp7 = add i16 %p_shl_i_cast, %tmp20_cast
  %tmp8 = add i9 128, %tmp_2_i_cast1
  %tmp22_cast = zext i9 %tmp8 to i13
  %tmp9 = add i13 %tmp_5_i, %tmp22_cast
  %tmp21_cast = zext i13 %tmp9 to i16
  %tmp_8_i = add i16 %tmp7, %tmp21_cast
  %tmp_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i, i32 8, i32 15)
  %y = add i8 16, %tmp_i
  %tmp_5 = zext i12 %pix_j to i64
  %line_buffer_addr = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_5
  store i8 %y, i8* %line_buffer_addr, align 1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind
  br label %1

.preheader31:                                     ; preds = %1, %3
  %pix_j_1 = phi i12 [ %pix_j_6, %3 ], [ 0, %1 ]
  %exitcond1 = icmp eq i12 %pix_j_1, -2048
  %pix_j_6 = add i12 %pix_j_1, 1
  br i1 %exitcond1, label %.preheader28, label %3

; <label>:3                                       ; preds = %.preheader31
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %pixel_2 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in)
  store volatile i32 %pixel_2, i32* %pixel, align 4
  %pixel_load_3 = load volatile i32* %pixel, align 4
  %in_B_1 = trunc i32 %pixel_load_3 to i8
  %pixel_load_4 = load volatile i32* %pixel, align 4
  %in_G_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_4, i32 8, i32 15)
  %pixel_load_5 = load volatile i32* %pixel, align 4
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_5, i32 16, i32 23)
  %p_shl1_i1 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_7, i6 0)
  %p_shl1_i1_cast = zext i14 %p_shl1_i1 to i15
  %p_shl2_i1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_7, i1 false)
  %p_shl2_i1_cast = zext i9 %p_shl2_i1 to i15
  %tmp_2_i1_cast1 = zext i8 %in_G_1 to i9
  %p_shl_i1 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G_1, i7 0)
  %p_shl_i1_cast = zext i15 %p_shl_i1 to i16
  %tmp_4_i1_cast = zext i8 %in_B_1 to i13
  %tmp_5_i1 = mul i13 25, %tmp_4_i1_cast
  %tmp5 = add i15 %p_shl2_i1_cast, %p_shl1_i1_cast
  %tmp24_cast = zext i15 %tmp5 to i16
  %tmp10 = add i16 %tmp24_cast, %p_shl_i1_cast
  %tmp11 = add i9 128, %tmp_2_i1_cast1
  %tmp26_cast = zext i9 %tmp11 to i13
  %tmp12 = add i13 %tmp26_cast, %tmp_5_i1
  %tmp25_cast = zext i13 %tmp12 to i16
  %tmp_8_i1 = add i16 %tmp25_cast, %tmp10
  %tmp_i1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i1, i32 8, i32 15)
  %y_1 = add i8 16, %tmp_i1
  %line_buffer_addr1 = xor i12 %pix_j_1, -2048
  %tmp_3 = zext i12 %line_buffer_addr1 to i64
  %line_buffer_addr_1 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_3
  store i8 %y_1, i8* %line_buffer_addr_1, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_6) nounwind
  br label %.preheader31

.preheader28:                                     ; preds = %.preheader31, %4
  %p_01_rec = phi i12 [ %p_rec3, %4 ], [ 0, %.preheader31 ]
  %exitcond2 = icmp eq i12 %p_01_rec, -2048
  %p_rec3 = add i12 %p_01_rec, 1
  br i1 %exitcond2, label %.preheader26.preheader, label %4

.preheader26.preheader:                           ; preds = %.preheader28
  %not_tmp_8 = icmp ne i32 %isobelInvert_read, 0
  %tmp_9_cast = select i1 %not_tmp_8, i8 -1, i8 0
  br label %.preheader26

; <label>:4                                       ; preds = %.preheader28
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_8) nounwind
  br label %.preheader28

.preheader26:                                     ; preds = %11, %.preheader26.preheader
  %pix_i = phi i11 [ %pix_i_1, %11 ], [ 2, %.preheader26.preheader ]
  %exitcond3 = icmp eq i11 %pix_i, -968
  br i1 %exitcond3, label %.preheader, label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %.preheader26
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.preheader, %5
  %pix_j_3 = phi i12 [ %pix_j_7, %5 ], [ 0, %.preheader23.preheader ]
  %exitcond4 = icmp eq i12 %pix_j_3, -2048
  %pix_j_7 = add i12 %pix_j_3, 1
  br i1 %exitcond4, label %6, label %5

; <label>:5                                       ; preds = %.preheader23
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %pixel_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in)
  store volatile i32 %pixel_3, i32* %pixel, align 4
  %pixel_load_6 = load volatile i32* %pixel, align 4
  %in_B_2 = trunc i32 %pixel_load_6 to i8
  %pixel_load_7 = load volatile i32* %pixel, align 4
  %in_G_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_7, i32 8, i32 15)
  %pixel_load_8 = load volatile i32* %pixel, align 4
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_8, i32 16, i32 23)
  %p_shl1_i2 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_4, i6 0)
  %p_shl1_i2_cast = zext i14 %p_shl1_i2 to i15
  %p_shl2_i2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_4, i1 false)
  %p_shl2_i2_cast = zext i9 %p_shl2_i2 to i15
  %tmp_2_i2_cast1 = zext i8 %in_G_2 to i9
  %p_shl_i2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G_2, i7 0)
  %p_shl_i2_cast = zext i15 %p_shl_i2 to i16
  %tmp_4_i2_cast = zext i8 %in_B_2 to i13
  %tmp_5_i2 = mul i13 25, %tmp_4_i2_cast
  %tmp14 = add i15 %p_shl1_i2_cast, %p_shl2_i2_cast
  %tmp28_cast = zext i15 %tmp14 to i16
  %tmp15 = add i16 %p_shl_i2_cast, %tmp28_cast
  %tmp16 = add i9 128, %tmp_2_i2_cast1
  %tmp30_cast = zext i9 %tmp16 to i13
  %tmp17 = add i13 %tmp_5_i2, %tmp30_cast
  %tmp29_cast = zext i13 %tmp17 to i16
  %tmp_8_i2 = add i16 %tmp15, %tmp29_cast
  %tmp_i2 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i2, i32 8, i32 15)
  %y_2 = add i8 16, %tmp_i2
  %line_buffer_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20 1, i12 %pix_j_3)
  %tmp_10 = zext i32 %line_buffer_addr2 to i64
  %line_buffer_addr_2 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_10
  store i8 %y_2, i8* %line_buffer_addr_2, align 1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_s) nounwind
  br label %.preheader23

; <label>:6                                       ; preds = %.preheader23
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0)
  br label %7

; <label>:7                                       ; preds = %_ifconv, %6
  %pix_j_4 = phi i11 [ 1, %6 ], [ %pix_j_9, %_ifconv ]
  %p_12_pn_rec = phi i11 [ 0, %6 ], [ %p_23_rec, %_ifconv ]
  %exitcond6 = icmp eq i11 %p_12_pn_rec, -2
  %p_23_rec = add i11 %p_12_pn_rec, 1
  br i1 %exitcond6, label %8, label %_ifconv

_ifconv:                                          ; preds = %7
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2046, i64 2046, i64 2046) nounwind
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_12 = add i11 -1, %pix_j_4
  %tmp_13 = zext i11 %tmp_12 to i64
  %line_buffer_addr_3 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_13
  %line_buffer_load = load i8* %line_buffer_addr_3, align 1
  %tmp_16_cast = zext i8 %line_buffer_load to i9
  %pix_j_9 = add i11 1, %pix_j_4
  %tmp_14 = zext i11 %pix_j_9 to i64
  %line_buffer_addr_4 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_14
  %line_buffer_load_1 = load i8* %line_buffer_addr_4, align 1
  %tmp_18_cast = zext i8 %line_buffer_load_1 to i9
  %line_buffer_addr5 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %tmp_12)
  %tmp_15 = zext i32 %line_buffer_addr5 to i64
  %line_buffer_addr_5 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_15
  %line_buffer_load_2 = load i8* %line_buffer_addr_5, align 1
  %tmp_19_cast = zext i8 %line_buffer_load_2 to i9
  %line_buffer_addr6 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %pix_j_9)
  %tmp_16 = zext i32 %line_buffer_addr6 to i64
  %line_buffer_addr_6 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_16
  %line_buffer_load_3 = load i8* %line_buffer_addr_6, align 1
  %tmp_20_cast = zext i8 %line_buffer_load_3 to i9
  %line_buffer_addr7 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %tmp_12)
  %tmp_17 = zext i32 %line_buffer_addr7 to i64
  %line_buffer_addr_7 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_17
  %line_buffer_load_4 = load i8* %line_buffer_addr_7, align 1
  %tmp_14_cast = zext i8 %line_buffer_load_4 to i11
  %tmp_21_cast = zext i8 %line_buffer_load_4 to i10
  %tmp = sub i9 %tmp_20_cast, %tmp_19_cast
  %tmp_23 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp, i1 false)
  %tmp1_cast = sext i10 %tmp_23 to i11
  %line_buffer_addr8 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_9)
  %tmp_30 = zext i32 %line_buffer_addr8 to i64
  %line_buffer_addr_8 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_30
  %line_buffer_load_5 = load i8* %line_buffer_addr_8, align 1
  %tmp_16_cast1 = zext i8 %line_buffer_load_5 to i11
  %tmp_22_cast = zext i8 %line_buffer_load_5 to i10
  %tmp_18 = sub i9 %tmp_18_cast, %tmp_16_cast
  %tmp_23_cast_cast = sext i9 %tmp_18 to i11
  %tmp_19 = add i11 %tmp1_cast, %tmp_23_cast_cast
  %tmp_20 = sub i11 %tmp_19, %tmp_14_cast
  %x_weight = add i11 %tmp_20, %tmp_16_cast1
  %tmp_36 = zext i11 %pix_j_4 to i64
  %line_buffer_addr_9 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_36
  %line_buffer_load_6 = load i8* %line_buffer_addr_9, align 1
  %tmp_27_cast = zext i8 %line_buffer_load_6 to i9
  %line_buffer_addr10 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_4)
  %tmp_37 = zext i32 %line_buffer_addr10 to i64
  %line_buffer_addr_10 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_37
  %line_buffer_load_7 = load i8* %line_buffer_addr_10, align 1
  %tmp_28_cast = zext i8 %line_buffer_load_7 to i9
  %tmp2 = sub i9 %tmp_27_cast, %tmp_28_cast
  %tmp_38 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp2, i1 false)
  %tmp3_cast = sext i10 %tmp_38 to i11
  %tmp_21 = add i9 %tmp_16_cast, %tmp_18_cast
  %tmp_29_cast = zext i9 %tmp_21 to i10
  %tmp_22 = sub i10 %tmp_29_cast, %tmp_21_cast
  %tmp_24 = sub i10 %tmp_22, %tmp_22_cast
  %tmp_31_cast_cast = sext i10 %tmp_24 to i11
  %y_weight = add i11 %tmp3_cast, %tmp_31_cast_cast
  %tmp_25 = icmp sgt i11 %x_weight, 0
  %tmp_26 = sub i11 0, %x_weight
  %x_weight_1 = select i1 %tmp_25, i11 %x_weight, i11 %tmp_26
  %x_weight_1_cast = sext i11 %x_weight_1 to i12
  %tmp_27 = icmp sgt i11 %y_weight, 0
  %tmp_28 = sub i11 0, %y_weight
  %y_weight_1 = select i1 %tmp_27, i11 %y_weight, i11 %tmp_28
  %y_weight_1_cast = sext i11 %y_weight_1 to i12
  %edge_weight = add i12 %x_weight_1_cast, %y_weight_1_cast
  %tmp_29 = icmp slt i12 %edge_weight, 255
  %tmp_39 = trunc i12 %edge_weight to i8
  %edge_val = xor i8 %tmp_39, -1
  %edge_val1 = select i1 %tmp_29, i8 %edge_val, i8 0
  %tmp_31 = zext i8 %edge_val1 to i32
  %tmp_32 = icmp sgt i32 %tmp_31, %imaxsobelSensitivity_read
  %tmp_33 = icmp slt i32 %tmp_31, %iminsobelSensitivity_read
  %p_edge_val = select i1 %tmp_32, i8 -1, i8 0
  %tmp_34 = or i1 %tmp_32, %tmp_33
  %edge_val_2 = select i1 %tmp_34, i8 %p_edge_val, i8 %edge_val1
  %edge_val_1 = xor i8 %edge_val_2, %tmp_9_cast
  %tmp_35 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %edge_val_1, i8 %edge_val_1, i8 %edge_val_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 %tmp_35)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_11) nounwind
  br label %7

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0)
  br label %9

; <label>:9                                       ; preds = %10, %8
  %pix_j_5 = phi i11 [ 0, %8 ], [ %pix_j_8, %10 ]
  %exitcond5 = icmp eq i11 %pix_j_5, -128
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind
  %pix_j_8 = add i11 %pix_j_5, 1
  br i1 %exitcond5, label %11, label %10

; <label>:10                                      ; preds = %9
  %line_buffer_addr11 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %pix_j_5)
  %tmp_40 = zext i32 %line_buffer_addr11 to i64
  %line_buffer_addr_11 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_40
  %line_buffer_load_8 = load i8* %line_buffer_addr_11, align 1
  %tmp_41 = zext i11 %pix_j_5 to i64
  %line_buffer_addr_12 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_41
  store i8 %line_buffer_load_8, i8* %line_buffer_addr_12, align 1
  %line_buffer_addr13 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_5)
  %tmp_42 = zext i32 %line_buffer_addr13 to i64
  %line_buffer_addr_13 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_42
  %line_buffer_load_9 = load i8* %line_buffer_addr_13, align 1
  store i8 %line_buffer_load_9, i8* %line_buffer_addr_11, align 1
  br label %9

; <label>:11                                      ; preds = %9
  %pix_i_1 = add i11 %pix_i, 1
  br label %.preheader26

.preheader:                                       ; preds = %.preheader26, %12
  %p_34_rec = phi i12 [ %p_rec, %12 ], [ 0, %.preheader26 ]
  %exitcond8 = icmp eq i12 %p_34_rec, -2048
  %p_rec = add i12 %p_34_rec, 1
  br i1 %exitcond8, label %13, label %12

; <label>:12                                      ; preds = %.preheader
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_9) nounwind
  br label %.preheader

; <label>:13                                      ; preds = %.preheader
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_20 = trunc i16 %empty to i8
  ret i8 %empty_20
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_21 = zext i7 %1 to i15
  %empty_22 = shl i15 %empty, 7
  %empty_23 = or i15 %empty_22, %empty_21
  ret i15 %empty_23
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_24 = zext i1 %1 to i9
  %empty_25 = shl i9 %empty, 1
  %empty_26 = or i9 %empty_25, %empty_24
  ret i9 %empty_26
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_27 = zext i6 %1 to i14
  %empty_28 = shl i14 %empty, 6
  %empty_29 = or i14 %empty_28, %empty_27
  ret i14 %empty_29
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_30 = trunc i32 %empty to i8
  ret i8 %empty_30
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20, i12) nounwind readnone {
entry:
  %empty = zext i20 %0 to i32
  %empty_31 = zext i12 %1 to i32
  %empty_32 = shl i32 %empty, 12
  %empty_33 = or i32 %empty_32, %empty_31
  ret i32 %empty_33
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21, i11) nounwind readnone {
entry:
  %empty = zext i21 %0 to i32
  %empty_34 = zext i11 %1 to i32
  %empty_35 = shl i32 %empty, 11
  %empty_36 = or i32 %empty_35, %empty_34
  ret i32 %empty_36
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_37 = zext i8 %3 to i16
  %empty_38 = shl i16 %empty, 8
  %empty_39 = or i16 %empty_38, %empty_37
  %empty_40 = zext i8 %1 to i24
  %empty_41 = zext i16 %empty_39 to i24
  %empty_42 = shl i24 %empty_40, 16
  %empty_43 = or i24 %empty_42, %empty_41
  %empty_44 = zext i8 %0 to i32
  %empty_45 = zext i24 %empty_43 to i32
  %empty_46 = shl i32 %empty_44, 24
  %empty_47 = or i32 %empty_46, %empty_45
  ret i32 %empty_47
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_48 = zext i1 %1 to i10
  %empty_49 = shl i10 %empty, 1
  %empty_50 = or i10 %empty_49, %empty_48
  ret i10 %empty_50
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !8}

!0 = metadata !{metadata !1, null}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"line_buffer", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{i32 0, i32 2047, i32 1}
!8 = metadata !{metadata !1, [6144 x i8]* @line_buffer}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 0, i32 31, metadata !11}
!11 = metadata !{metadata !12}
!12 = metadata !{metadata !"rgb_data_in", metadata !13, metadata !"int", i32 0, i32 31}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 2211839, i32 1}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"rgb_data_out", metadata !13, metadata !"int", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"isobelInvert", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"iminsobelSensitivity", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"imaxsobelSensitivity", metadata !23, metadata !"int", i32 0, i32 31}
