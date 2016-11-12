; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@line_buffer = common global [6144 x i8] zeroinitializer ; [#uses=14 type=[6144 x i8]*]
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=2 type=[12 x i8]*]
@img_process_str = internal unnamed_addr constant [12 x i8] c"img_process\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out, i32 %isobelInvert, i32 %iminsobelSensitivity, i32 %imaxsobelSensitivity) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_in), !map !9
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_out), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %isobelInvert) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iminsobelSensitivity) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %imaxsobelSensitivity) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @img_process_str) nounwind
  %imaxsobelSensitivity_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %imaxsobelSensitivity) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %imaxsobelSensitivity_read}, i64 0, metadata !33), !dbg !42 ; [debug line = 52:119] [debug variable = imaxsobelSensitivity]
  %iminsobelSensitivity_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %iminsobelSensitivity) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %iminsobelSensitivity_read}, i64 0, metadata !43), !dbg !44 ; [debug line = 52:93] [debug variable = iminsobelSensitivity]
  %isobelInvert_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %isobelInvert) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %isobelInvert_read}, i64 0, metadata !45), !dbg !46 ; [debug line = 52:75] [debug variable = isobelInvert]
  %pixel = alloca i32, align 4                    ; [#uses=12 type=i32*]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_in}, i64 0, metadata !47), !dbg !51 ; [debug line = 52:22] [debug variable = rgb_data_in]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_out}, i64 0, metadata !52), !dbg !53 ; [debug line = 52:48] [debug variable = rgb_data_out]
  call void @llvm.dbg.value(metadata !{i32 %isobelInvert}, i64 0, metadata !45), !dbg !46 ; [debug line = 52:75] [debug variable = isobelInvert]
  call void @llvm.dbg.value(metadata !{i32 %iminsobelSensitivity}, i64 0, metadata !43), !dbg !44 ; [debug line = 52:93] [debug variable = iminsobelSensitivity]
  call void @llvm.dbg.value(metadata !{i32 %imaxsobelSensitivity}, i64 0, metadata !33), !dbg !42 ; [debug line = 52:119] [debug variable = imaxsobelSensitivity]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !54 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_out, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_in, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1, !dbg !56                           ; [debug line = 68:8]

; <label>:1                                       ; preds = %2, %0
  %pix_j = phi i12 [ 0, %0 ], [ %pix_j_2, %2 ]    ; [#uses=3 type=i12]
  %exitcond = icmp eq i12 %pix_j, -2048, !dbg !56 ; [#uses=1 type=i1] [debug line = 68:8]
  %pix_j_2 = add i12 %pix_j, 1, !dbg !58          ; [#uses=1 type=i12] [debug line = 68:35]
  br i1 %exitcond, label %.preheader31, label %2, !dbg !56 ; [debug line = 68:8]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 68:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !61 ; [debug line = 69:1]
  %pixel_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in), !dbg !62 ; [#uses=1 type=i32] [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel_1}, i64 0, metadata !63), !dbg !62 ; [debug line = 70:2] [debug variable = pixel]
  store volatile i32 %pixel_1, i32* %pixel, align 4, !dbg !62 ; [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !63), !dbg !66 ; [debug line = 71:5] [debug variable = pixel]
  %pixel_load = load volatile i32* %pixel, align 4, !dbg !66 ; [#uses=1 type=i32] [debug line = 71:5]
  %in_B = trunc i32 %pixel_load to i8, !dbg !66   ; [#uses=1 type=i8] [debug line = 71:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B}, i64 0, metadata !67), !dbg !66 ; [debug line = 71:5] [debug variable = in_B]
  %pixel_load_1 = load volatile i32* %pixel, align 4, !dbg !69 ; [#uses=1 type=i32] [debug line = 72:5]
  %in_G = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_1, i32 8, i32 15), !dbg !69 ; [#uses=2 type=i8] [debug line = 72:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G}, i64 0, metadata !70), !dbg !69 ; [debug line = 72:5] [debug variable = in_G]
  %pixel_load_2 = load volatile i32* %pixel, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 73:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G}, i64 0, metadata !72), !dbg !77 ; [debug line = 45:52@74:29] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B}, i64 0, metadata !78), !dbg !79 ; [debug line = 45:69@74:29] [debug variable = B]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_2, i32 16, i32 23) ; [#uses=2 type=i8]
  %p_shl1_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_1, i6 0), !dbg !80 ; [#uses=1 type=i14] [debug line = 48:3@74:29]
  %p_shl1_i_cast = zext i14 %p_shl1_i to i15, !dbg !80 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %p_shl2_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_1, i1 false), !dbg !80 ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %p_shl2_i_cast = zext i9 %p_shl2_i to i15, !dbg !80 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %tmp_2_i_cast1 = zext i8 %in_G to i9, !dbg !80  ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %p_shl_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G, i7 0), !dbg !80 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %p_shl_i_cast = zext i15 %p_shl_i to i16, !dbg !80 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp_4_i_cast = zext i8 %in_B to i13, !dbg !80  ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp_5_i = mul i13 25, %tmp_4_i_cast, !dbg !80  ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp6 = add i15 %p_shl1_i_cast, %p_shl2_i_cast, !dbg !80 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %tmp20_cast = zext i15 %tmp6 to i16, !dbg !80   ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp7 = add i16 %p_shl_i_cast, %tmp20_cast, !dbg !80 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp8 = add i9 128, %tmp_2_i_cast1, !dbg !80    ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %tmp22_cast = zext i9 %tmp8 to i13, !dbg !80    ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp9 = add i13 %tmp_5_i, %tmp22_cast, !dbg !80 ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp21_cast = zext i13 %tmp9 to i16, !dbg !80   ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp_8_i = add i16 %tmp7, %tmp21_cast, !dbg !80 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i, i32 8, i32 15), !dbg !80 ; [#uses=1 type=i8] [debug line = 48:3@74:29]
  %y = add i8 16, %tmp_i, !dbg !80                ; [#uses=1 type=i8] [debug line = 48:3@74:29]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !82), !dbg !80 ; [debug line = 48:3@74:29] [debug variable = y]
  %tmp_5 = zext i12 %pix_j to i64, !dbg !76       ; [#uses=1 type=i64] [debug line = 74:29]
  %line_buffer_addr = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_5, !dbg !76 ; [#uses=1 type=i8*] [debug line = 74:29]
  store i8 %y, i8* %line_buffer_addr, align 1, !dbg !76 ; [debug line = 74:29]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind, !dbg !83 ; [#uses=0 type=i32] [debug line = 76:3]
  call void @llvm.dbg.value(metadata !{i12 %pix_j_2}, i64 0, metadata !84), !dbg !58 ; [debug line = 68:35] [debug variable = pix_j]
  br label %1, !dbg !58                           ; [debug line = 68:35]

.preheader31:                                     ; preds = %3, %1
  %pix_j_1 = phi i12 [ %pix_j_6, %3 ], [ 0, %1 ]  ; [#uses=3 type=i12]
  %exitcond1 = icmp eq i12 %pix_j_1, -2048, !dbg !85 ; [#uses=1 type=i1] [debug line = 77:8]
  %pix_j_6 = add i12 %pix_j_1, 1, !dbg !87        ; [#uses=1 type=i12] [debug line = 77:35]
  br i1 %exitcond1, label %.preheader28, label %3, !dbg !85 ; [debug line = 77:8]

; <label>:3                                       ; preds = %.preheader31
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind, !dbg !88 ; [#uses=1 type=i32] [debug line = 77:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !90 ; [debug line = 78:1]
  %pixel_2 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in), !dbg !91 ; [#uses=1 type=i32] [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel_2}, i64 0, metadata !63), !dbg !91 ; [debug line = 79:2] [debug variable = pixel]
  store volatile i32 %pixel_2, i32* %pixel, align 4, !dbg !91 ; [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !63), !dbg !92 ; [debug line = 80:5] [debug variable = pixel]
  %pixel_load_3 = load volatile i32* %pixel, align 4, !dbg !92 ; [#uses=1 type=i32] [debug line = 80:5]
  %in_B_1 = trunc i32 %pixel_load_3 to i8, !dbg !92 ; [#uses=1 type=i8] [debug line = 80:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B_1}, i64 0, metadata !67), !dbg !92 ; [debug line = 80:5] [debug variable = in_B]
  %pixel_load_4 = load volatile i32* %pixel, align 4, !dbg !93 ; [#uses=1 type=i32] [debug line = 81:5]
  %in_G_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_4, i32 8, i32 15), !dbg !93 ; [#uses=2 type=i8] [debug line = 81:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G_1}, i64 0, metadata !70), !dbg !93 ; [debug line = 81:5] [debug variable = in_G]
  %pixel_load_5 = load volatile i32* %pixel, align 4, !dbg !94 ; [#uses=1 type=i32] [debug line = 82:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G_1}, i64 0, metadata !95), !dbg !97 ; [debug line = 45:52@83:29] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B_1}, i64 0, metadata !98), !dbg !99 ; [debug line = 45:69@83:29] [debug variable = B]
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_5, i32 16, i32 23) ; [#uses=2 type=i8]
  %p_shl1_i1 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_7, i6 0), !dbg !100 ; [#uses=1 type=i14] [debug line = 48:3@83:29]
  %p_shl1_i1_cast = zext i14 %p_shl1_i1 to i15, !dbg !100 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %p_shl2_i1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_7, i1 false), !dbg !100 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %p_shl2_i1_cast = zext i9 %p_shl2_i1 to i15, !dbg !100 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %tmp_2_i1_cast1 = zext i8 %in_G_1 to i9, !dbg !100 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %p_shl_i1 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G_1, i7 0), !dbg !100 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %p_shl_i1_cast = zext i15 %p_shl_i1 to i16, !dbg !100 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp_4_i1_cast = zext i8 %in_B_1 to i13, !dbg !100 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp_5_i1 = mul i13 25, %tmp_4_i1_cast, !dbg !100 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp5 = add i15 %p_shl2_i1_cast, %p_shl1_i1_cast, !dbg !100 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %tmp24_cast = zext i15 %tmp5 to i16, !dbg !100  ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp10 = add i16 %tmp24_cast, %p_shl_i1_cast, !dbg !100 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp11 = add i9 128, %tmp_2_i1_cast1, !dbg !100 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %tmp26_cast = zext i9 %tmp11 to i13, !dbg !100  ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp12 = add i13 %tmp26_cast, %tmp_5_i1, !dbg !100 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp25_cast = zext i13 %tmp12 to i16, !dbg !100 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp_8_i1 = add i16 %tmp25_cast, %tmp10, !dbg !100 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp_i1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i1, i32 8, i32 15), !dbg !100 ; [#uses=1 type=i8] [debug line = 48:3@83:29]
  %y_1 = add i8 16, %tmp_i1, !dbg !100            ; [#uses=1 type=i8] [debug line = 48:3@83:29]
  call void @llvm.dbg.value(metadata !{i8 %y_1}, i64 0, metadata !101), !dbg !100 ; [debug line = 48:3@83:29] [debug variable = y]
  %line_buffer_addr1 = xor i12 %pix_j_1, -2048, !dbg !96 ; [#uses=1 type=i12] [debug line = 83:29]
  %tmp_3 = zext i12 %line_buffer_addr1 to i64, !dbg !96 ; [#uses=1 type=i64] [debug line = 83:29]
  %line_buffer_addr_1 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_3, !dbg !96 ; [#uses=1 type=i8*] [debug line = 83:29]
  store i8 %y_1, i8* %line_buffer_addr_1, align 1, !dbg !96 ; [debug line = 83:29]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_6) nounwind, !dbg !102 ; [#uses=0 type=i32] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{i12 %pix_j_6}, i64 0, metadata !84), !dbg !87 ; [debug line = 77:35] [debug variable = pix_j]
  br label %.preheader31, !dbg !87                ; [debug line = 77:35]

.preheader28:                                     ; preds = %4, %.preheader31
  %p_01_rec = phi i12 [ %p_rec3, %4 ], [ 0, %.preheader31 ] ; [#uses=2 type=i12]
  %exitcond2 = icmp eq i12 %p_01_rec, -2048, !dbg !103 ; [#uses=1 type=i1] [debug line = 88:8]
  %p_rec3 = add i12 %p_01_rec, 1, !dbg !105       ; [#uses=1 type=i12] [debug line = 91:5]
  br i1 %exitcond2, label %.preheader26.preheader, label %4, !dbg !103 ; [debug line = 88:8]

.preheader26.preheader:                           ; preds = %.preheader28
  %not_tmp_8 = icmp ne i32 %isobelInvert_read, 0, !dbg !107 ; [#uses=1 type=i1] [debug line = 132:7]
  %tmp_9_cast = select i1 %not_tmp_8, i8 -1, i8 0, !dbg !107 ; [#uses=1 type=i8] [debug line = 132:7]
  br label %.preheader26

; <label>:4                                       ; preds = %.preheader28
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !112 ; [#uses=1 type=i32] [debug line = 88:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !113 ; [debug line = 89:1]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0), !dbg !114 ; [debug line = 90:2]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_8) nounwind, !dbg !115 ; [#uses=0 type=i32] [debug line = 92:3]
  br label %.preheader28, !dbg !116               ; [debug line = 88:35]

.preheader26:                                     ; preds = %11, %.preheader26.preheader
  %pix_i = phi i11 [ %pix_i_1, %11 ], [ 2, %.preheader26.preheader ] ; [#uses=2 type=i11]
  %exitcond3 = icmp eq i11 %pix_i, -968, !dbg !117 ; [#uses=1 type=i1] [debug line = 94:8]
  br i1 %exitcond3, label %.preheader, label %.preheader23.preheader, !dbg !117 ; [debug line = 94:8]

.preheader23.preheader:                           ; preds = %.preheader26
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; [#uses=0 type=i32]
  br label %.preheader23

.preheader23:                                     ; preds = %5, %.preheader23.preheader
  %pix_j_3 = phi i12 [ %pix_j_7, %5 ], [ 0, %.preheader23.preheader ] ; [#uses=3 type=i12]
  %exitcond4 = icmp eq i12 %pix_j_3, -2048, !dbg !118 ; [#uses=1 type=i1] [debug line = 97:10]
  %pix_j_7 = add i12 %pix_j_3, 1, !dbg !120       ; [#uses=1 type=i12] [debug line = 97:37]
  br i1 %exitcond4, label %6, label %5, !dbg !118 ; [debug line = 97:10]

; <label>:5                                       ; preds = %.preheader23
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind, !dbg !121 ; [#uses=1 type=i32] [debug line = 97:47]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !123 ; [debug line = 98:1]
  %pixel_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %rgb_data_in), !dbg !124 ; [#uses=1 type=i32] [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel_3}, i64 0, metadata !63), !dbg !124 ; [debug line = 99:2] [debug variable = pixel]
  store volatile i32 %pixel_3, i32* %pixel, align 4, !dbg !124 ; [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !63), !dbg !125 ; [debug line = 100:7] [debug variable = pixel]
  %pixel_load_6 = load volatile i32* %pixel, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 100:7]
  %in_B_2 = trunc i32 %pixel_load_6 to i8, !dbg !125 ; [#uses=1 type=i8] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i8 %in_B_2}, i64 0, metadata !67), !dbg !125 ; [debug line = 100:7] [debug variable = in_B]
  %pixel_load_7 = load volatile i32* %pixel, align 4, !dbg !126 ; [#uses=1 type=i32] [debug line = 101:7]
  %in_G_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_7, i32 8, i32 15), !dbg !126 ; [#uses=2 type=i8] [debug line = 101:7]
  call void @llvm.dbg.value(metadata !{i8 %in_G_2}, i64 0, metadata !70), !dbg !126 ; [debug line = 101:7] [debug variable = in_G]
  %pixel_load_8 = load volatile i32* %pixel, align 4, !dbg !127 ; [#uses=1 type=i32] [debug line = 102:7]
  call void @llvm.dbg.value(metadata !{i8 %in_G_2}, i64 0, metadata !128), !dbg !130 ; [debug line = 45:52@103:31] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B_2}, i64 0, metadata !131), !dbg !132 ; [debug line = 45:69@103:31] [debug variable = B]
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_load_8, i32 16, i32 23) ; [#uses=2 type=i8]
  %p_shl1_i2 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_4, i6 0), !dbg !133 ; [#uses=1 type=i14] [debug line = 48:3@103:31]
  %p_shl1_i2_cast = zext i14 %p_shl1_i2 to i15, !dbg !133 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %p_shl2_i2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_4, i1 false), !dbg !133 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %p_shl2_i2_cast = zext i9 %p_shl2_i2 to i15, !dbg !133 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %tmp_2_i2_cast1 = zext i8 %in_G_2 to i9, !dbg !133 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %p_shl_i2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %in_G_2, i7 0), !dbg !133 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %p_shl_i2_cast = zext i15 %p_shl_i2 to i16, !dbg !133 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp_4_i2_cast = zext i8 %in_B_2 to i13, !dbg !133 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp_5_i2 = mul i13 25, %tmp_4_i2_cast, !dbg !133 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp14 = add i15 %p_shl1_i2_cast, %p_shl2_i2_cast, !dbg !133 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %tmp28_cast = zext i15 %tmp14 to i16, !dbg !133 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp15 = add i16 %p_shl_i2_cast, %tmp28_cast, !dbg !133 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp16 = add i9 128, %tmp_2_i2_cast1, !dbg !133 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %tmp30_cast = zext i9 %tmp16 to i13, !dbg !133  ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp17 = add i13 %tmp_5_i2, %tmp30_cast, !dbg !133 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp29_cast = zext i13 %tmp17 to i16, !dbg !133 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp_8_i2 = add i16 %tmp15, %tmp29_cast, !dbg !133 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp_i2 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i2, i32 8, i32 15), !dbg !133 ; [#uses=1 type=i8] [debug line = 48:3@103:31]
  %y_2 = add i8 16, %tmp_i2, !dbg !133            ; [#uses=1 type=i8] [debug line = 48:3@103:31]
  call void @llvm.dbg.value(metadata !{i8 %y_2}, i64 0, metadata !134), !dbg !133 ; [debug line = 48:3@103:31] [debug variable = y]
  %line_buffer_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20 1, i12 %pix_j_3), !dbg !129 ; [#uses=1 type=i32] [debug line = 103:31]
  %tmp_10 = zext i32 %line_buffer_addr2 to i64, !dbg !129 ; [#uses=1 type=i64] [debug line = 103:31]
  %line_buffer_addr_2 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_10, !dbg !129 ; [#uses=1 type=i8*] [debug line = 103:31]
  store i8 %y_2, i8* %line_buffer_addr_2, align 1, !dbg !129 ; [debug line = 103:31]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_s) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 105:5]
  call void @llvm.dbg.value(metadata !{i12 %pix_j_7}, i64 0, metadata !84), !dbg !120 ; [debug line = 97:37] [debug variable = pix_j]
  br label %.preheader23, !dbg !120               ; [debug line = 97:37]

; <label>:6                                       ; preds = %.preheader23
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0), !dbg !136 ; [debug line = 108:5]
  br label %7, !dbg !137                          ; [debug line = 111:10]

; <label>:7                                       ; preds = %_ifconv, %6
  %pix_j_4 = phi i11 [ 1, %6 ], [ %pix_j_9, %_ifconv ] ; [#uses=4 type=i11]
  %p_12_pn_rec = phi i11 [ 0, %6 ], [ %p_23_rec, %_ifconv ] ; [#uses=2 type=i11]
  %exitcond6 = icmp eq i11 %p_12_pn_rec, -2, !dbg !137 ; [#uses=1 type=i1] [debug line = 111:10]
  %p_23_rec = add i11 %p_12_pn_rec, 1, !dbg !138  ; [#uses=1 type=i11] [debug line = 109:5]
  br i1 %exitcond6, label %8, label %_ifconv, !dbg !137 ; [debug line = 111:10]

_ifconv:                                          ; preds = %7
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2046, i64 2046, i64 2046) nounwind ; [#uses=0 type=i32]
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind, !dbg !139 ; [#uses=1 type=i32] [debug line = 111:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !140 ; [debug line = 112:1]
  %tmp_12 = add i11 -1, %pix_j_4, !dbg !141       ; [#uses=3 type=i11] [debug line = 117:7]
  %tmp_13 = zext i11 %tmp_12 to i64, !dbg !141    ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_3 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_13, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load = load i8* %line_buffer_addr_3, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp_16_cast = zext i8 %line_buffer_load to i9, !dbg !141 ; [#uses=2 type=i9] [debug line = 117:7]
  %pix_j_9 = add i11 1, %pix_j_4, !dbg !141       ; [#uses=4 type=i11] [debug line = 117:7]
  %tmp_14 = zext i11 %pix_j_9 to i64, !dbg !141   ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_4 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_14, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load_1 = load i8* %line_buffer_addr_4, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp_18_cast = zext i8 %line_buffer_load_1 to i9, !dbg !141 ; [#uses=2 type=i9] [debug line = 117:7]
  %line_buffer_addr5 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %tmp_12), !dbg !141 ; [#uses=1 type=i32] [debug line = 117:7]
  %tmp_15 = zext i32 %line_buffer_addr5 to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_5 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_15, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load_2 = load i8* %line_buffer_addr_5, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp_19_cast = zext i8 %line_buffer_load_2 to i9, !dbg !141 ; [#uses=1 type=i9] [debug line = 117:7]
  %line_buffer_addr6 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %pix_j_9), !dbg !141 ; [#uses=1 type=i32] [debug line = 117:7]
  %tmp_16 = zext i32 %line_buffer_addr6 to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_6 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_16, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load_3 = load i8* %line_buffer_addr_6, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp_20_cast = zext i8 %line_buffer_load_3 to i9, !dbg !141 ; [#uses=1 type=i9] [debug line = 117:7]
  %line_buffer_addr7 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %tmp_12), !dbg !141 ; [#uses=1 type=i32] [debug line = 117:7]
  %tmp_17 = zext i32 %line_buffer_addr7 to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_7 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_17, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load_4 = load i8* %line_buffer_addr_7, align 1, !dbg !141 ; [#uses=2 type=i8] [debug line = 117:7]
  %tmp_14_cast = zext i8 %line_buffer_load_4 to i11 ; [#uses=1 type=i11]
  %tmp_21_cast = zext i8 %line_buffer_load_4 to i10 ; [#uses=1 type=i10]
  %tmp = sub i9 %tmp_20_cast, %tmp_19_cast        ; [#uses=1 type=i9]
  %tmp_23 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp, i1 false) ; [#uses=1 type=i10]
  %tmp1_cast = sext i10 %tmp_23 to i11, !dbg !141 ; [#uses=1 type=i11] [debug line = 117:7]
  %line_buffer_addr8 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_9), !dbg !141 ; [#uses=1 type=i32] [debug line = 117:7]
  %tmp_30 = zext i32 %line_buffer_addr8 to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 117:7]
  %line_buffer_addr_8 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_30, !dbg !141 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer_load_5 = load i8* %line_buffer_addr_8, align 1, !dbg !141 ; [#uses=2 type=i8] [debug line = 117:7]
  %tmp_16_cast1 = zext i8 %line_buffer_load_5 to i11, !dbg !141 ; [#uses=1 type=i11] [debug line = 117:7]
  %tmp_22_cast = zext i8 %line_buffer_load_5 to i10, !dbg !141 ; [#uses=1 type=i10] [debug line = 117:7]
  %tmp_18 = sub i9 %tmp_18_cast, %tmp_16_cast, !dbg !141 ; [#uses=1 type=i9] [debug line = 117:7]
  %tmp_23_cast_cast = sext i9 %tmp_18 to i11, !dbg !141 ; [#uses=1 type=i11] [debug line = 117:7]
  %tmp_19 = add i11 %tmp1_cast, %tmp_23_cast_cast, !dbg !141 ; [#uses=1 type=i11] [debug line = 117:7]
  %tmp_20 = sub i11 %tmp_19, %tmp_14_cast, !dbg !141 ; [#uses=1 type=i11] [debug line = 117:7]
  %x_weight = add i11 %tmp_20, %tmp_16_cast1, !dbg !141 ; [#uses=3 type=i11] [debug line = 117:7]
  call void @llvm.dbg.value(metadata !{i11 %x_weight}, i64 0, metadata !142), !dbg !141 ; [debug line = 117:7] [debug variable = x_weight]
  %tmp_36 = zext i11 %pix_j_4 to i64, !dbg !144   ; [#uses=1 type=i64] [debug line = 118:7]
  %line_buffer_addr_9 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_36, !dbg !144 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer_load_6 = load i8* %line_buffer_addr_9, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 118:7]
  %tmp_27_cast = zext i8 %line_buffer_load_6 to i9, !dbg !144 ; [#uses=1 type=i9] [debug line = 118:7]
  %line_buffer_addr10 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_4), !dbg !144 ; [#uses=1 type=i32] [debug line = 118:7]
  %tmp_37 = zext i32 %line_buffer_addr10 to i64, !dbg !144 ; [#uses=1 type=i64] [debug line = 118:7]
  %line_buffer_addr_10 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_37, !dbg !144 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer_load_7 = load i8* %line_buffer_addr_10, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 118:7]
  %tmp_28_cast = zext i8 %line_buffer_load_7 to i9 ; [#uses=1 type=i9]
  %tmp2 = sub i9 %tmp_27_cast, %tmp_28_cast       ; [#uses=1 type=i9]
  %tmp_38 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp2, i1 false) ; [#uses=1 type=i10]
  %tmp3_cast = sext i10 %tmp_38 to i11, !dbg !144 ; [#uses=1 type=i11] [debug line = 118:7]
  %tmp_21 = add i9 %tmp_16_cast, %tmp_18_cast, !dbg !144 ; [#uses=1 type=i9] [debug line = 118:7]
  %tmp_29_cast = zext i9 %tmp_21 to i10, !dbg !144 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp_22 = sub i10 %tmp_29_cast, %tmp_21_cast, !dbg !144 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp_24 = sub i10 %tmp_22, %tmp_22_cast, !dbg !144 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp_31_cast_cast = sext i10 %tmp_24 to i11, !dbg !144 ; [#uses=1 type=i11] [debug line = 118:7]
  %y_weight = add i11 %tmp3_cast, %tmp_31_cast_cast, !dbg !144 ; [#uses=3 type=i11] [debug line = 118:7]
  call void @llvm.dbg.value(metadata !{i11 %y_weight}, i64 0, metadata !145), !dbg !144 ; [debug line = 118:7] [debug variable = y_weight]
  %tmp_25 = icmp sgt i11 %x_weight, 0, !dbg !146  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp_26 = sub i11 0, %x_weight, !dbg !146       ; [#uses=1 type=i11] [debug line = 120:7]
  %x_weight_1 = select i1 %tmp_25, i11 %x_weight, i11 %tmp_26, !dbg !146 ; [#uses=1 type=i11] [debug line = 120:7]
  %x_weight_1_cast = sext i11 %x_weight_1 to i12, !dbg !146 ; [#uses=1 type=i12] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i11 %x_weight_1}, i64 0, metadata !142), !dbg !146 ; [debug line = 120:7] [debug variable = x_weight]
  %tmp_27 = icmp sgt i11 %y_weight, 0, !dbg !146  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp_28 = sub i11 0, %y_weight, !dbg !146       ; [#uses=1 type=i11] [debug line = 120:7]
  %y_weight_1 = select i1 %tmp_27, i11 %y_weight, i11 %tmp_28, !dbg !146 ; [#uses=1 type=i11] [debug line = 120:7]
  %y_weight_1_cast = sext i11 %y_weight_1 to i12, !dbg !146 ; [#uses=1 type=i12] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i11 %y_weight_1}, i64 0, metadata !145), !dbg !146 ; [debug line = 120:7] [debug variable = y_weight]
  %edge_weight = add i12 %x_weight_1_cast, %y_weight_1_cast, !dbg !146 ; [#uses=2 type=i12] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i12 %edge_weight}, i64 0, metadata !147), !dbg !146 ; [debug line = 120:7] [debug variable = edge_weight]
  %tmp_29 = icmp slt i12 %edge_weight, 255, !dbg !148 ; [#uses=1 type=i1] [debug line = 122:7]
  %tmp_39 = trunc i12 %edge_weight to i8, !dbg !149 ; [#uses=1 type=i8] [debug line = 123:9]
  %edge_val = xor i8 %tmp_39, -1, !dbg !149       ; [#uses=1 type=i8] [debug line = 123:9]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !150), !dbg !149 ; [debug line = 123:9] [debug variable = edge_val]
  %edge_val1 = select i1 %tmp_29, i8 %edge_val, i8 0 ; [#uses=2 type=i8]
  %tmp_31 = zext i8 %edge_val1 to i32, !dbg !151  ; [#uses=2 type=i32] [debug line = 127:7]
  %tmp_32 = icmp sgt i32 %tmp_31, %imaxsobelSensitivity_read, !dbg !151 ; [#uses=2 type=i1] [debug line = 127:7]
  %tmp_33 = icmp slt i32 %tmp_31, %iminsobelSensitivity_read, !dbg !152 ; [#uses=1 type=i1] [debug line = 129:12]
  %p_edge_val = select i1 %tmp_32, i8 -1, i8 0    ; [#uses=1 type=i8]
  %tmp_34 = or i1 %tmp_32, %tmp_33                ; [#uses=1 type=i1]
  %edge_val_2 = select i1 %tmp_34, i8 %p_edge_val, i8 %edge_val1 ; [#uses=1 type=i8]
  %edge_val_1 = xor i8 %edge_val_2, %tmp_9_cast, !dbg !107 ; [#uses=3 type=i8] [debug line = 132:7]
  call void @llvm.dbg.value(metadata !{i8 %edge_val_1}, i64 0, metadata !150), !dbg !107 ; [debug line = 132:7] [debug variable = edge_val]
  %tmp_35 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %edge_val_1, i8 %edge_val_1, i8 %edge_val_1), !dbg !153 ; [#uses=1 type=i32] [debug line = 135:7]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 %tmp_35), !dbg !153 ; [debug line = 135:7]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_11) nounwind, !dbg !154 ; [#uses=0 type=i32] [debug line = 137:5]
  call void @llvm.dbg.value(metadata !{i11 %pix_j_9}, i64 0, metadata !84), !dbg !155 ; [debug line = 111:41] [debug variable = pix_j]
  br label %7, !dbg !155                          ; [debug line = 111:41]

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0), !dbg !156 ; [debug line = 140:5]
  br label %9, !dbg !157                          ; [debug line = 143:10]

; <label>:9                                       ; preds = %10, %8
  %pix_j_5 = phi i11 [ 0, %8 ], [ %pix_j_8, %10 ] ; [#uses=5 type=i11]
  %exitcond5 = icmp eq i11 %pix_j_5, -128, !dbg !157 ; [#uses=1 type=i1] [debug line = 143:10]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  %pix_j_8 = add i11 %pix_j_5, 1, !dbg !159       ; [#uses=1 type=i11] [debug line = 143:36]
  br i1 %exitcond5, label %11, label %10, !dbg !157 ; [debug line = 143:10]

; <label>:10                                      ; preds = %9
  %line_buffer_addr11 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 1, i11 %pix_j_5), !dbg !160 ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp_40 = zext i32 %line_buffer_addr11 to i64, !dbg !160 ; [#uses=1 type=i64] [debug line = 144:7]
  %line_buffer_addr_11 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_40, !dbg !160 ; [#uses=2 type=i8*] [debug line = 144:7]
  %line_buffer_load_8 = load i8* %line_buffer_addr_11, align 1, !dbg !160 ; [#uses=1 type=i8] [debug line = 144:7]
  %tmp_41 = zext i11 %pix_j_5 to i64, !dbg !160   ; [#uses=1 type=i64] [debug line = 144:7]
  %line_buffer_addr_12 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_41, !dbg !160 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %line_buffer_load_8, i8* %line_buffer_addr_12, align 1, !dbg !160 ; [debug line = 144:7]
  %line_buffer_addr13 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 2, i11 %pix_j_5), !dbg !162 ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp_42 = zext i32 %line_buffer_addr13 to i64, !dbg !162 ; [#uses=1 type=i64] [debug line = 145:7]
  %line_buffer_addr_13 = getelementptr [6144 x i8]* @line_buffer, i64 0, i64 %tmp_42, !dbg !162 ; [#uses=1 type=i8*] [debug line = 145:7]
  %line_buffer_load_9 = load i8* %line_buffer_addr_13, align 1, !dbg !162 ; [#uses=1 type=i8] [debug line = 145:7]
  store i8 %line_buffer_load_9, i8* %line_buffer_addr_11, align 1, !dbg !162 ; [debug line = 145:7]
  call void @llvm.dbg.value(metadata !{i11 %pix_j_8}, i64 0, metadata !84), !dbg !159 ; [debug line = 143:36] [debug variable = pix_j]
  br label %9, !dbg !159                          ; [debug line = 143:36]

; <label>:11                                      ; preds = %9
  %pix_i_1 = add i11 %pix_i, 1, !dbg !163         ; [#uses=1 type=i11] [debug line = 94:35]
  call void @llvm.dbg.value(metadata !{i11 %pix_i_1}, i64 0, metadata !164), !dbg !163 ; [debug line = 94:35] [debug variable = pix_i]
  br label %.preheader26, !dbg !163               ; [debug line = 94:35]

.preheader:                                       ; preds = %12, %.preheader26
  %p_34_rec = phi i12 [ %p_rec, %12 ], [ 0, %.preheader26 ] ; [#uses=2 type=i12]
  %exitcond8 = icmp eq i12 %p_34_rec, -2048, !dbg !165 ; [#uses=1 type=i1] [debug line = 150:8]
  %p_rec = add i12 %p_34_rec, 1, !dbg !167        ; [#uses=1 type=i12] [debug line = 153:5]
  br i1 %exitcond8, label %13, label %12, !dbg !165 ; [debug line = 150:8]

; <label>:12                                      ; preds = %.preheader
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7) nounwind, !dbg !169 ; [#uses=1 type=i32] [debug line = 150:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !170 ; [debug line = 151:1]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %rgb_data_out, i32 0), !dbg !171 ; [debug line = 152:2]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_9) nounwind, !dbg !172 ; [#uses=0 type=i32] [debug line = 154:3]
  br label %.preheader, !dbg !173                 ; [debug line = 150:35]

; <label>:13                                      ; preds = %.preheader
  ret void, !dbg !174                             ; [debug line = 156:1]
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_20 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_20
}

; [#uses=3]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_21 = zext i7 %1 to i15                   ; [#uses=1 type=i15]
  %empty_22 = shl i15 %empty, 7                   ; [#uses=1 type=i15]
  %empty_23 = or i15 %empty_22, %empty_21         ; [#uses=1 type=i15]
  ret i15 %empty_23
}

; [#uses=3]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_24 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_25 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_26 = or i9 %empty_25, %empty_24          ; [#uses=1 type=i9]
  ret i9 %empty_26
}

; [#uses=3]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_27 = zext i6 %1 to i14                   ; [#uses=1 type=i14]
  %empty_28 = shl i14 %empty, 6                   ; [#uses=1 type=i14]
  %empty_29 = or i14 %empty_28, %empty_27         ; [#uses=1 type=i14]
  ret i14 %empty_29
}

; [#uses=6]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_30 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_30
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20, i12) nounwind readnone {
entry:
  %empty = zext i20 %0 to i32                     ; [#uses=1 type=i32]
  %empty_31 = zext i12 %1 to i32                  ; [#uses=1 type=i32]
  %empty_32 = shl i32 %empty, 12                  ; [#uses=1 type=i32]
  %empty_33 = or i32 %empty_32, %empty_31         ; [#uses=1 type=i32]
  ret i32 %empty_33
}

; [#uses=7]
define weak i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21, i11) nounwind readnone {
entry:
  %empty = zext i21 %0 to i32                     ; [#uses=1 type=i32]
  %empty_34 = zext i11 %1 to i32                  ; [#uses=1 type=i32]
  %empty_35 = shl i32 %empty, 11                  ; [#uses=1 type=i32]
  %empty_36 = or i32 %empty_35, %empty_34         ; [#uses=1 type=i32]
  ret i32 %empty_36
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_37 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_38 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_39 = or i16 %empty_38, %empty_37         ; [#uses=1 type=i16]
  %empty_40 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_41 = zext i16 %empty_39 to i24           ; [#uses=1 type=i24]
  %empty_42 = shl i24 %empty_40, 16               ; [#uses=1 type=i24]
  %empty_43 = or i24 %empty_42, %empty_41         ; [#uses=1 type=i24]
  %empty_44 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_45 = zext i24 %empty_43 to i32           ; [#uses=1 type=i32]
  %empty_46 = shl i32 %empty_44, 24               ; [#uses=1 type=i32]
  %empty_47 = or i32 %empty_46, %empty_45         ; [#uses=1 type=i32]
  ret i32 %empty_47
}

; [#uses=2]
define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10                      ; [#uses=1 type=i10]
  %empty_48 = zext i1 %1 to i10                   ; [#uses=1 type=i10]
  %empty_49 = shl i10 %empty, 1                   ; [#uses=1 type=i10]
  %empty_50 = or i10 %empty_49, %empty_48         ; [#uses=1 type=i10]
  ret i10 %empty_50
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=5]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
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
!33 = metadata !{i32 786689, metadata !34, metadata !"imaxsobelSensitivity", metadata !35, i32 83886132, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"img_process", metadata !"img_process", metadata !"", metadata !35, i32 52, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 53} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786473, metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !38, metadata !38, metadata !39, metadata !39, metadata !39}
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!42 = metadata !{i32 52, i32 119, metadata !34, null}
!43 = metadata !{i32 786689, metadata !34, metadata !"iminsobelSensitivity", metadata !35, i32 67108916, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 52, i32 93, metadata !34, null}
!45 = metadata !{i32 786689, metadata !34, metadata !"isobelInvert", metadata !35, i32 50331700, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 52, i32 75, metadata !34, null}
!47 = metadata !{i32 786689, metadata !34, metadata !"rgb_data_in", null, i32 52, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 70778880, i64 32, i32 0, i32 0, metadata !39, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 2211839}  ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 52, i32 22, metadata !34, null}
!52 = metadata !{i32 786689, metadata !34, metadata !"rgb_data_out", null, i32 52, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 52, i32 48, metadata !34, null}
!54 = metadata !{i32 54, i32 1, metadata !55, null}
!55 = metadata !{i32 786443, metadata !34, i32 53, i32 1, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 68, i32 8, metadata !57, null}
!57 = metadata !{i32 786443, metadata !55, i32 68, i32 3, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 68, i32 35, metadata !57, null}
!59 = metadata !{i32 68, i32 45, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 68, i32 44, metadata !35, i32 3} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 69, i32 1, metadata !60, null}
!62 = metadata !{i32 70, i32 2, metadata !60, null}
!63 = metadata !{i32 786688, metadata !55, metadata !"pixel", metadata !35, i32 65, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_volatile_type ]
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{i32 71, i32 5, metadata !60, null}
!67 = metadata !{i32 786688, metadata !55, metadata !"in_B", metadata !35, i32 62, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 72, i32 5, metadata !60, null}
!70 = metadata !{i32 786688, metadata !55, metadata !"in_G", metadata !35, i32 62, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 73, i32 5, metadata !60, null}
!72 = metadata !{i32 786689, metadata !73, metadata !"G", metadata !35, i32 33554477, metadata !68, i32 0, metadata !76} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 786478, i32 0, metadata !35, metadata !"rgb2y", metadata !"rgb2y", metadata !"", metadata !35, i32 45, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 46} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !68, metadata !68, metadata !68, metadata !68}
!76 = metadata !{i32 74, i32 29, metadata !60, null}
!77 = metadata !{i32 45, i32 52, metadata !73, metadata !76}
!78 = metadata !{i32 786689, metadata !73, metadata !"B", metadata !35, i32 50331693, metadata !68, i32 0, metadata !76} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 45, i32 69, metadata !73, metadata !76}
!80 = metadata !{i32 48, i32 3, metadata !81, metadata !76}
!81 = metadata !{i32 786443, metadata !73, i32 46, i32 1, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"y", metadata !35, i32 47, metadata !68, i32 0, metadata !76} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 76, i32 3, metadata !60, null}
!84 = metadata !{i32 786688, metadata !55, metadata !"pix_j", metadata !35, i32 64, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 77, i32 8, metadata !86, null}
!86 = metadata !{i32 786443, metadata !55, i32 77, i32 3, metadata !35, i32 4} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 77, i32 35, metadata !86, null}
!88 = metadata !{i32 77, i32 45, metadata !89, null}
!89 = metadata !{i32 786443, metadata !86, i32 77, i32 44, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 78, i32 1, metadata !89, null}
!91 = metadata !{i32 79, i32 2, metadata !89, null}
!92 = metadata !{i32 80, i32 5, metadata !89, null}
!93 = metadata !{i32 81, i32 5, metadata !89, null}
!94 = metadata !{i32 82, i32 5, metadata !89, null}
!95 = metadata !{i32 786689, metadata !73, metadata !"G", metadata !35, i32 33554477, metadata !68, i32 0, metadata !96} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 83, i32 29, metadata !89, null}
!97 = metadata !{i32 45, i32 52, metadata !73, metadata !96}
!98 = metadata !{i32 786689, metadata !73, metadata !"B", metadata !35, i32 50331693, metadata !68, i32 0, metadata !96} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 45, i32 69, metadata !73, metadata !96}
!100 = metadata !{i32 48, i32 3, metadata !81, metadata !96}
!101 = metadata !{i32 786688, metadata !81, metadata !"y", metadata !35, i32 47, metadata !68, i32 0, metadata !96} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 85, i32 3, metadata !89, null}
!103 = metadata !{i32 88, i32 8, metadata !104, null}
!104 = metadata !{i32 786443, metadata !55, i32 88, i32 3, metadata !35, i32 6} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 91, i32 5, metadata !106, null}
!106 = metadata !{i32 786443, metadata !104, i32 88, i32 44, metadata !35, i32 7} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 132, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !109, i32 111, i32 50, metadata !35, i32 13} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786443, metadata !110, i32 111, i32 5, metadata !35, i32 12} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786443, metadata !111, i32 94, i32 44, metadata !35, i32 9} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786443, metadata !55, i32 94, i32 3, metadata !35, i32 8} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 88, i32 45, metadata !106, null}
!113 = metadata !{i32 89, i32 1, metadata !106, null}
!114 = metadata !{i32 90, i32 2, metadata !106, null}
!115 = metadata !{i32 92, i32 3, metadata !106, null}
!116 = metadata !{i32 88, i32 35, metadata !104, null}
!117 = metadata !{i32 94, i32 8, metadata !111, null}
!118 = metadata !{i32 97, i32 10, metadata !119, null}
!119 = metadata !{i32 786443, metadata !110, i32 97, i32 5, metadata !35, i32 10} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 97, i32 37, metadata !119, null}
!121 = metadata !{i32 97, i32 47, metadata !122, null}
!122 = metadata !{i32 786443, metadata !119, i32 97, i32 46, metadata !35, i32 11} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 98, i32 1, metadata !122, null}
!124 = metadata !{i32 99, i32 2, metadata !122, null}
!125 = metadata !{i32 100, i32 7, metadata !122, null}
!126 = metadata !{i32 101, i32 7, metadata !122, null}
!127 = metadata !{i32 102, i32 7, metadata !122, null}
!128 = metadata !{i32 786689, metadata !73, metadata !"G", metadata !35, i32 33554477, metadata !68, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 103, i32 31, metadata !122, null}
!130 = metadata !{i32 45, i32 52, metadata !73, metadata !129}
!131 = metadata !{i32 786689, metadata !73, metadata !"B", metadata !35, i32 50331693, metadata !68, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 45, i32 69, metadata !73, metadata !129}
!133 = metadata !{i32 48, i32 3, metadata !81, metadata !129}
!134 = metadata !{i32 786688, metadata !81, metadata !"y", metadata !35, i32 47, metadata !68, i32 0, metadata !129} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 105, i32 5, metadata !122, null}
!136 = metadata !{i32 108, i32 5, metadata !110, null}
!137 = metadata !{i32 111, i32 10, metadata !109, null}
!138 = metadata !{i32 109, i32 5, metadata !110, null}
!139 = metadata !{i32 111, i32 51, metadata !108, null}
!140 = metadata !{i32 112, i32 1, metadata !108, null}
!141 = metadata !{i32 117, i32 7, metadata !108, null}
!142 = metadata !{i32 786688, metadata !55, metadata !"x_weight", metadata !35, i32 57, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!144 = metadata !{i32 118, i32 7, metadata !108, null}
!145 = metadata !{i32 786688, metadata !55, metadata !"y_weight", metadata !35, i32 58, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 120, i32 7, metadata !108, null}
!147 = metadata !{i32 786688, metadata !55, metadata !"edge_weight", metadata !35, i32 59, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 122, i32 7, metadata !108, null}
!149 = metadata !{i32 123, i32 9, metadata !108, null}
!150 = metadata !{i32 786688, metadata !55, metadata !"edge_val", metadata !35, i32 60, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 127, i32 7, metadata !108, null}
!152 = metadata !{i32 129, i32 12, metadata !108, null}
!153 = metadata !{i32 135, i32 7, metadata !108, null}
!154 = metadata !{i32 137, i32 5, metadata !108, null}
!155 = metadata !{i32 111, i32 41, metadata !109, null}
!156 = metadata !{i32 140, i32 5, metadata !110, null}
!157 = metadata !{i32 143, i32 10, metadata !158, null}
!158 = metadata !{i32 786443, metadata !110, i32 143, i32 5, metadata !35, i32 14} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 143, i32 36, metadata !158, null}
!160 = metadata !{i32 144, i32 7, metadata !161, null}
!161 = metadata !{i32 786443, metadata !158, i32 143, i32 45, metadata !35, i32 15} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 145, i32 7, metadata !161, null}
!163 = metadata !{i32 94, i32 35, metadata !111, null}
!164 = metadata !{i32 786688, metadata !55, metadata !"pix_i", metadata !35, i32 64, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 150, i32 8, metadata !166, null}
!166 = metadata !{i32 786443, metadata !55, i32 150, i32 3, metadata !35, i32 16} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 153, i32 5, metadata !168, null}
!168 = metadata !{i32 786443, metadata !166, i32 150, i32 44, metadata !35, i32 17} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 150, i32 45, metadata !168, null}
!170 = metadata !{i32 151, i32 1, metadata !168, null}
!171 = metadata !{i32 152, i32 2, metadata !168, null}
!172 = metadata !{i32 154, i32 3, metadata !168, null}
!173 = metadata !{i32 150, i32 35, metadata !166, null}
!174 = metadata !{i32 156, i32 1, metadata !55, null}
