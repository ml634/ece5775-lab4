; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@line_buffer = common global [3 x [2048 x i8]] zeroinitializer, align 16 ; [#uses=14 type=[3 x [2048 x i8]]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=2 type=[12 x i8]*]
@img_process.str = internal unnamed_addr constant [12 x i8] c"img_process\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone

; [#uses=0]
define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out, i32 %isobelInvert, i32 %iminsobelSensitivity, i32 %imaxsobelSensitivity) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_in), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rgb_data_out), !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %isobelInvert) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iminsobelSensitivity) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %imaxsobelSensitivity) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @img_process.str) nounwind
  %pixel = alloca i32, align 4                    ; [#uses=12 type=i32*]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_in}, i64 0, metadata !50), !dbg !60 ; [debug line = 52:22] [debug variable = rgb_data_in]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_out}, i64 0, metadata !61), !dbg !62 ; [debug line = 52:48] [debug variable = rgb_data_out]
  call void @llvm.dbg.value(metadata !{i32 %isobelInvert}, i64 0, metadata !63), !dbg !64 ; [debug line = 52:75] [debug variable = isobelInvert]
  call void @llvm.dbg.value(metadata !{i32 %iminsobelSensitivity}, i64 0, metadata !65), !dbg !66 ; [debug line = 52:93] [debug variable = iminsobelSensitivity]
  call void @llvm.dbg.value(metadata !{i32 %imaxsobelSensitivity}, i64 0, metadata !67), !dbg !68 ; [debug line = 52:119] [debug variable = imaxsobelSensitivity]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !69 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_out, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_in, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  br label %1, !dbg !71                           ; [debug line = 68:8]

; <label>:1                                       ; preds = %3, %0
  %pix_j = phi i12 [ 0, %0 ], [ %pix_j.2, %3 ]    ; [#uses=2 type=i12]
  %.0.rec = phi i12 [ 0, %0 ], [ %.rec1, %3 ]     ; [#uses=2 type=i12]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %exitcond = icmp eq i12 %.0.rec, -2048, !dbg !71 ; [#uses=1 type=i1] [debug line = 68:8]
  br i1 %exitcond, label %.preheader31, label %3, !dbg !71 ; [debug line = 68:8]

; <label>:3                                       ; preds = %1
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 68:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !75 ; [debug line = 69:1]
  %pixel.1 = load volatile i32* %rgb_data_in, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 70:2] [debug variable = pixel]
  store volatile i32 %pixel.1, i32* %pixel, align 4, !dbg !76 ; [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !77), !dbg !80 ; [debug line = 71:5] [debug variable = pixel]
  %pixel.load = load volatile i32* %pixel, align 4, !dbg !80 ; [#uses=1 type=i32] [debug line = 71:5]
  %in_B = trunc i32 %pixel.load to i8, !dbg !80   ; [#uses=1 type=i8] [debug line = 71:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B}, i64 0, metadata !81), !dbg !80 ; [debug line = 71:5] [debug variable = in_B]
  %pixel.load.1 = load volatile i32* %pixel, align 4, !dbg !82 ; [#uses=1 type=i32] [debug line = 72:5]
  %pixel.load.1.cast = trunc i32 %pixel.load.1 to i16, !dbg !82 ; [#uses=1 type=i16] [debug line = 72:5]
  %tmp. = lshr i16 %pixel.load.1.cast, 8, !dbg !82 ; [#uses=1 type=i16] [debug line = 72:5]
  %in_G = trunc i16 %tmp. to i8, !dbg !82         ; [#uses=2 type=i8] [debug line = 72:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G}, i64 0, metadata !83), !dbg !82 ; [debug line = 72:5] [debug variable = in_G]
  %pixel.load.2 = load volatile i32* %pixel, align 4, !dbg !84 ; [#uses=1 type=i32] [debug line = 73:5]
  %pixel.load.2.cast = trunc i32 %pixel.load.2 to i24, !dbg !84 ; [#uses=1 type=i24] [debug line = 73:5]
  %tmp.1 = lshr i24 %pixel.load.2.cast, 16, !dbg !84 ; [#uses=1 type=i24] [debug line = 73:5]
  %in_R = trunc i24 %tmp.1 to i8, !dbg !84        ; [#uses=2 type=i8] [debug line = 73:5]
  call void @llvm.dbg.value(metadata !{i8 %in_R}, i64 0, metadata !85), !dbg !84 ; [debug line = 73:5] [debug variable = in_R]
  call void @llvm.dbg.value(metadata !{i8 %in_R}, i64 0, metadata !86), !dbg !91 ; [debug line = 45:35@74:29] [debug variable = R]
  call void @llvm.dbg.value(metadata !{i8 %in_G}, i64 0, metadata !92), !dbg !93 ; [debug line = 45:52@74:29] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B}, i64 0, metadata !94), !dbg !95 ; [debug line = 45:69@74:29] [debug variable = B]
  %tmp.i.cast1 = zext i8 %in_R to i9, !dbg !96    ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %tmp.i.cast = zext i8 %in_R to i14, !dbg !96    ; [#uses=1 type=i14] [debug line = 48:3@74:29]
  %_shl1.i = shl nuw i14 %tmp.i.cast, 6, !dbg !96 ; [#uses=1 type=i14] [debug line = 48:3@74:29]
  %_shl1.i.cast = zext i14 %_shl1.i to i15, !dbg !96 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %_shl2.i = shl nuw i9 %tmp.i.cast1, 1, !dbg !96 ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %_shl2.i.cast = zext i9 %_shl2.i to i15, !dbg !96 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %tmp.2.i.cast1 = zext i8 %in_G to i9, !dbg !96  ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %tmp.2.i.cast = zext i8 %in_G to i15, !dbg !96  ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %_shl.i = shl nuw i15 %tmp.2.i.cast, 7, !dbg !96 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %_shl.i.cast = zext i15 %_shl.i to i16, !dbg !96 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp.4.i.cast = zext i8 %in_B to i13, !dbg !96  ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp.5.i = mul i13 %tmp.4.i.cast, 25, !dbg !96  ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp6 = add i15 %_shl1.i.cast, %_shl2.i.cast, !dbg !96 ; [#uses=1 type=i15] [debug line = 48:3@74:29]
  %tmp20.cast = zext i15 %tmp6 to i16, !dbg !96   ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp7 = add i16 %_shl.i.cast, %tmp20.cast, !dbg !96 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp8 = add i9 %tmp.2.i.cast1, 128, !dbg !96    ; [#uses=1 type=i9] [debug line = 48:3@74:29]
  %tmp22.cast = zext i9 %tmp8 to i13, !dbg !96    ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp9 = add i13 %tmp.5.i, %tmp22.cast, !dbg !96 ; [#uses=1 type=i13] [debug line = 48:3@74:29]
  %tmp21.cast = zext i13 %tmp9 to i16, !dbg !96   ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp.8.i = add i16 %tmp7, %tmp21.cast, !dbg !96 ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp.9.i = lshr i16 %tmp.8.i, 8, !dbg !96       ; [#uses=1 type=i16] [debug line = 48:3@74:29]
  %tmp..i = trunc i16 %tmp.9.i to i8, !dbg !96    ; [#uses=1 type=i8] [debug line = 48:3@74:29]
  %y = add i8 %tmp..i, 16, !dbg !96               ; [#uses=1 type=i8] [debug line = 48:3@74:29]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !98), !dbg !96 ; [debug line = 48:3@74:29] [debug variable = y]
  %tmp.3 = zext i12 %pix_j to i64, !dbg !90       ; [#uses=1 type=i64] [debug line = 74:29]
  %line_buffer.addr = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.3, !dbg !90 ; [#uses=1 type=i8*] [debug line = 74:29]
  store i8 %y, i8* %line_buffer.addr, align 1, !dbg !90 ; [debug line = 74:29]
  %.rec1 = add i12 %.0.rec, 1, !dbg !99           ; [#uses=1 type=i12] [debug line = 75:5]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.2) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 76:3]
  %pix_j.2 = add i12 %pix_j, 1, !dbg !101         ; [#uses=1 type=i12] [debug line = 68:35]
  call void @llvm.dbg.value(metadata !{i12 %pix_j.2}, i64 0, metadata !102), !dbg !101 ; [debug line = 68:35] [debug variable = pix_j]
  br label %1, !dbg !101                          ; [debug line = 68:35]

.preheader31:                                     ; preds = %6, %1
  %pix_j.1 = phi i12 [ %pix_j.6, %6 ], [ 0, %1 ]  ; [#uses=2 type=i12]
  %.1.rec = phi i12 [ %.rec2, %6 ], [ 0, %1 ]     ; [#uses=2 type=i12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i12 %.1.rec, -2048, !dbg !103 ; [#uses=1 type=i1] [debug line = 77:8]
  br i1 %exitcond1, label %.preheader28, label %6, !dbg !103 ; [debug line = 77:8]

; <label>:6                                       ; preds = %.preheader31
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str3) nounwind, !dbg !105 ; [#uses=1 type=i32] [debug line = 77:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !107 ; [debug line = 78:1]
  %pixel.2 = load volatile i32* %rgb_data_in, align 4, !dbg !108 ; [#uses=1 type=i32] [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.2}, i64 0, metadata !77), !dbg !108 ; [debug line = 79:2] [debug variable = pixel]
  store volatile i32 %pixel.2, i32* %pixel, align 4, !dbg !108 ; [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !77), !dbg !109 ; [debug line = 80:5] [debug variable = pixel]
  %pixel.load.3 = load volatile i32* %pixel, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 80:5]
  %in_B.1 = trunc i32 %pixel.load.3 to i8, !dbg !109 ; [#uses=1 type=i8] [debug line = 80:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B.1}, i64 0, metadata !81), !dbg !109 ; [debug line = 80:5] [debug variable = in_B]
  %pixel.load.4 = load volatile i32* %pixel, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 81:5]
  %pixel.load.4.cast = trunc i32 %pixel.load.4 to i16, !dbg !110 ; [#uses=1 type=i16] [debug line = 81:5]
  %tmp.4 = lshr i16 %pixel.load.4.cast, 8, !dbg !110 ; [#uses=1 type=i16] [debug line = 81:5]
  %in_G.1 = trunc i16 %tmp.4 to i8, !dbg !110     ; [#uses=2 type=i8] [debug line = 81:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G.1}, i64 0, metadata !83), !dbg !110 ; [debug line = 81:5] [debug variable = in_G]
  %pixel.load.5 = load volatile i32* %pixel, align 4, !dbg !111 ; [#uses=1 type=i32] [debug line = 82:5]
  %pixel.load.5.cast = trunc i32 %pixel.load.5 to i24, !dbg !111 ; [#uses=1 type=i24] [debug line = 82:5]
  %tmp.5 = lshr i24 %pixel.load.5.cast, 16, !dbg !111 ; [#uses=1 type=i24] [debug line = 82:5]
  %in_R.1 = trunc i24 %tmp.5 to i8, !dbg !111     ; [#uses=2 type=i8] [debug line = 82:5]
  call void @llvm.dbg.value(metadata !{i8 %in_R.1}, i64 0, metadata !85), !dbg !111 ; [debug line = 82:5] [debug variable = in_R]
  call void @llvm.dbg.value(metadata !{i8 %in_R.1}, i64 0, metadata !112), !dbg !114 ; [debug line = 45:35@83:29] [debug variable = R]
  call void @llvm.dbg.value(metadata !{i8 %in_G.1}, i64 0, metadata !115), !dbg !116 ; [debug line = 45:52@83:29] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B.1}, i64 0, metadata !117), !dbg !118 ; [debug line = 45:69@83:29] [debug variable = B]
  %tmp.i1.cast1 = zext i8 %in_R.1 to i9, !dbg !119 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %tmp.i1.cast = zext i8 %in_R.1 to i14, !dbg !119 ; [#uses=1 type=i14] [debug line = 48:3@83:29]
  %_shl1.i1 = shl nuw i14 %tmp.i1.cast, 6, !dbg !119 ; [#uses=1 type=i14] [debug line = 48:3@83:29]
  %_shl1.i1.cast = zext i14 %_shl1.i1 to i15, !dbg !119 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %_shl2.i1 = shl nuw i9 %tmp.i1.cast1, 1, !dbg !119 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %_shl2.i1.cast = zext i9 %_shl2.i1 to i15, !dbg !119 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %tmp.2.i1.cast1 = zext i8 %in_G.1 to i9, !dbg !119 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %tmp.2.i1.cast = zext i8 %in_G.1 to i15, !dbg !119 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %_shl.i1 = shl nuw i15 %tmp.2.i1.cast, 7, !dbg !119 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %_shl.i1.cast = zext i15 %_shl.i1 to i16, !dbg !119 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp.4.i1.cast = zext i8 %in_B.1 to i13, !dbg !119 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp.5.i1 = mul i13 %tmp.4.i1.cast, 25, !dbg !119 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp10 = add i15 %_shl1.i1.cast, %_shl2.i1.cast, !dbg !119 ; [#uses=1 type=i15] [debug line = 48:3@83:29]
  %tmp24.cast = zext i15 %tmp10 to i16, !dbg !119 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp11 = add i16 %_shl.i1.cast, %tmp24.cast, !dbg !119 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp12 = add i9 %tmp.2.i1.cast1, 128, !dbg !119 ; [#uses=1 type=i9] [debug line = 48:3@83:29]
  %tmp26.cast = zext i9 %tmp12 to i13, !dbg !119  ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp13 = add i13 %tmp.5.i1, %tmp26.cast, !dbg !119 ; [#uses=1 type=i13] [debug line = 48:3@83:29]
  %tmp25.cast = zext i13 %tmp13 to i16, !dbg !119 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp.8.i1 = add i16 %tmp11, %tmp25.cast, !dbg !119 ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp.9.i1 = lshr i16 %tmp.8.i1, 8, !dbg !119    ; [#uses=1 type=i16] [debug line = 48:3@83:29]
  %tmp..i1 = trunc i16 %tmp.9.i1 to i8, !dbg !119 ; [#uses=1 type=i8] [debug line = 48:3@83:29]
  %y.1 = add i8 %tmp..i1, 16, !dbg !119           ; [#uses=1 type=i8] [debug line = 48:3@83:29]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !120), !dbg !119 ; [debug line = 48:3@83:29] [debug variable = y]
  %tmp.7 = zext i12 %pix_j.1 to i64, !dbg !113    ; [#uses=1 type=i64] [debug line = 83:29]
  %line_buffer.addr.1 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.7, !dbg !113 ; [#uses=1 type=i8*] [debug line = 83:29]
  store i8 %y.1, i8* %line_buffer.addr.1, align 1, !dbg !113 ; [debug line = 83:29]
  %.rec2 = add i12 %.1.rec, 1, !dbg !121          ; [#uses=1 type=i12] [debug line = 84:5]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str3, i32 %tmp.6) nounwind, !dbg !122 ; [#uses=0 type=i32] [debug line = 85:3]
  %pix_j.6 = add i12 %pix_j.1, 1, !dbg !123       ; [#uses=1 type=i12] [debug line = 77:35]
  call void @llvm.dbg.value(metadata !{i12 %pix_j.6}, i64 0, metadata !102), !dbg !123 ; [debug line = 77:35] [debug variable = pix_j]
  br label %.preheader31, !dbg !123               ; [debug line = 77:35]

.preheader28:                                     ; preds = %9, %.preheader31
  %.01.rec = phi i12 [ %.rec3, %9 ], [ 0, %.preheader31 ] ; [#uses=2 type=i12]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %exitcond2 = icmp eq i12 %.01.rec, -2048, !dbg !124 ; [#uses=1 type=i1] [debug line = 88:8]
  br i1 %exitcond2, label %.preheader26.preheader, label %9, !dbg !124 ; [debug line = 88:8]

.preheader26.preheader:                           ; preds = %.preheader28
  %not.tmp.8 = icmp ne i32 %isobelInvert, 0, !dbg !126 ; [#uses=1 type=i1] [debug line = 132:7]
  %tmp.9.cast = sext i1 %not.tmp.8 to i8, !dbg !126 ; [#uses=1 type=i8] [debug line = 132:7]
  br label %.preheader26

; <label>:9                                       ; preds = %.preheader28
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 88:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !133 ; [debug line = 89:1]
  store volatile i32 0, i32* %rgb_data_out, align 4, !dbg !134 ; [debug line = 90:2]
  %.rec3 = add i12 %.01.rec, 1, !dbg !135         ; [#uses=1 type=i12] [debug line = 91:5]
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.8) nounwind, !dbg !136 ; [#uses=0 type=i32] [debug line = 92:3]
  br label %.preheader28, !dbg !137               ; [debug line = 88:35]

.preheader26:                                     ; preds = %23, %.preheader26.preheader
  %pix_i = phi i11 [ %pix_i.1, %23 ], [ 2, %.preheader26.preheader ] ; [#uses=2 type=i11]
  %exitcond3 = icmp eq i11 %pix_i, -968, !dbg !138 ; [#uses=1 type=i1] [debug line = 94:8]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader, label %.preheader23, !dbg !138 ; [debug line = 94:8]

.preheader23:                                     ; preds = %13, %.preheader26
  %pix_j.3 = phi i12 [ %pix_j.7, %13 ], [ 0, %.preheader26 ] ; [#uses=2 type=i12]
  %.3.rec = phi i12 [ %.rec8, %13 ], [ 0, %.preheader26 ] ; [#uses=2 type=i12]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i12 %.3.rec, -2048, !dbg !139 ; [#uses=1 type=i1] [debug line = 97:10]
  br i1 %exitcond4, label %15, label %13, !dbg !139 ; [debug line = 97:10]

; <label>:13                                      ; preds = %.preheader23
  %tmp.12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str5) nounwind, !dbg !141 ; [#uses=1 type=i32] [debug line = 97:47]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !143 ; [debug line = 98:1]
  %pixel.3 = load volatile i32* %rgb_data_in, align 4, !dbg !144 ; [#uses=1 type=i32] [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.3}, i64 0, metadata !77), !dbg !144 ; [debug line = 99:2] [debug variable = pixel]
  store volatile i32 %pixel.3, i32* %pixel, align 4, !dbg !144 ; [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !77), !dbg !145 ; [debug line = 100:7] [debug variable = pixel]
  %pixel.load.6 = load volatile i32* %pixel, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 100:7]
  %in_B.2 = trunc i32 %pixel.load.6 to i8, !dbg !145 ; [#uses=1 type=i8] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i8 %in_B.2}, i64 0, metadata !81), !dbg !145 ; [debug line = 100:7] [debug variable = in_B]
  %pixel.load.7 = load volatile i32* %pixel, align 4, !dbg !146 ; [#uses=1 type=i32] [debug line = 101:7]
  %pixel.load.7.cast = trunc i32 %pixel.load.7 to i16, !dbg !146 ; [#uses=1 type=i16] [debug line = 101:7]
  %tmp.10 = lshr i16 %pixel.load.7.cast, 8, !dbg !146 ; [#uses=1 type=i16] [debug line = 101:7]
  %in_G.2 = trunc i16 %tmp.10 to i8, !dbg !146    ; [#uses=2 type=i8] [debug line = 101:7]
  call void @llvm.dbg.value(metadata !{i8 %in_G.2}, i64 0, metadata !83), !dbg !146 ; [debug line = 101:7] [debug variable = in_G]
  %pixel.load.8 = load volatile i32* %pixel, align 4, !dbg !147 ; [#uses=1 type=i32] [debug line = 102:7]
  %pixel.load.8.cast = trunc i32 %pixel.load.8 to i24, !dbg !147 ; [#uses=1 type=i24] [debug line = 102:7]
  %tmp.11 = lshr i24 %pixel.load.8.cast, 16, !dbg !147 ; [#uses=1 type=i24] [debug line = 102:7]
  %in_R.2 = trunc i24 %tmp.11 to i8, !dbg !147    ; [#uses=2 type=i8] [debug line = 102:7]
  call void @llvm.dbg.value(metadata !{i8 %in_R.2}, i64 0, metadata !85), !dbg !147 ; [debug line = 102:7] [debug variable = in_R]
  call void @llvm.dbg.value(metadata !{i8 %in_R.2}, i64 0, metadata !148), !dbg !150 ; [debug line = 45:35@103:31] [debug variable = R]
  call void @llvm.dbg.value(metadata !{i8 %in_G.2}, i64 0, metadata !151), !dbg !152 ; [debug line = 45:52@103:31] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %in_B.2}, i64 0, metadata !153), !dbg !154 ; [debug line = 45:69@103:31] [debug variable = B]
  %tmp.i2.cast1 = zext i8 %in_R.2 to i9, !dbg !155 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %tmp.i2.cast = zext i8 %in_R.2 to i14, !dbg !155 ; [#uses=1 type=i14] [debug line = 48:3@103:31]
  %_shl1.i2 = shl nuw i14 %tmp.i2.cast, 6, !dbg !155 ; [#uses=1 type=i14] [debug line = 48:3@103:31]
  %_shl1.i2.cast = zext i14 %_shl1.i2 to i15, !dbg !155 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %_shl2.i2 = shl nuw i9 %tmp.i2.cast1, 1, !dbg !155 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %_shl2.i2.cast = zext i9 %_shl2.i2 to i15, !dbg !155 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %tmp.2.i2.cast1 = zext i8 %in_G.2 to i9, !dbg !155 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %tmp.2.i2.cast = zext i8 %in_G.2 to i15, !dbg !155 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %_shl.i2 = shl nuw i15 %tmp.2.i2.cast, 7, !dbg !155 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %_shl.i2.cast = zext i15 %_shl.i2 to i16, !dbg !155 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp.4.i2.cast = zext i8 %in_B.2 to i13, !dbg !155 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp.5.i2 = mul i13 %tmp.4.i2.cast, 25, !dbg !155 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp14 = add i15 %_shl1.i2.cast, %_shl2.i2.cast, !dbg !155 ; [#uses=1 type=i15] [debug line = 48:3@103:31]
  %tmp28.cast = zext i15 %tmp14 to i16, !dbg !155 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp15 = add i16 %_shl.i2.cast, %tmp28.cast, !dbg !155 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp16 = add i9 %tmp.2.i2.cast1, 128, !dbg !155 ; [#uses=1 type=i9] [debug line = 48:3@103:31]
  %tmp30.cast = zext i9 %tmp16 to i13, !dbg !155  ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp17 = add i13 %tmp.5.i2, %tmp30.cast, !dbg !155 ; [#uses=1 type=i13] [debug line = 48:3@103:31]
  %tmp29.cast = zext i13 %tmp17 to i16, !dbg !155 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp.8.i2 = add i16 %tmp15, %tmp29.cast, !dbg !155 ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp.9.i2 = lshr i16 %tmp.8.i2, 8, !dbg !155    ; [#uses=1 type=i16] [debug line = 48:3@103:31]
  %tmp..i2 = trunc i16 %tmp.9.i2 to i8, !dbg !155 ; [#uses=1 type=i8] [debug line = 48:3@103:31]
  %y.2 = add i8 %tmp..i2, 16, !dbg !155           ; [#uses=1 type=i8] [debug line = 48:3@103:31]
  call void @llvm.dbg.value(metadata !{i8 %y.2}, i64 0, metadata !156), !dbg !155 ; [debug line = 48:3@103:31] [debug variable = y]
  %tmp.13 = zext i12 %pix_j.3 to i64, !dbg !149   ; [#uses=1 type=i64] [debug line = 103:31]
  %line_buffer.addr.2 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.13, !dbg !149 ; [#uses=1 type=i8*] [debug line = 103:31]
  store i8 %y.2, i8* %line_buffer.addr.2, align 1, !dbg !149 ; [debug line = 103:31]
  %.rec8 = add i12 %.3.rec, 1, !dbg !157          ; [#uses=1 type=i12] [debug line = 104:7]
  %14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str5, i32 %tmp.12) nounwind, !dbg !158 ; [#uses=0 type=i32] [debug line = 105:5]
  %pix_j.7 = add i12 %pix_j.3, 1, !dbg !159       ; [#uses=1 type=i12] [debug line = 97:37]
  call void @llvm.dbg.value(metadata !{i12 %pix_j.7}, i64 0, metadata !102), !dbg !159 ; [debug line = 97:37] [debug variable = pix_j]
  br label %.preheader23, !dbg !159               ; [debug line = 97:37]

; <label>:15                                      ; preds = %.preheader23
  store volatile i32 0, i32* %rgb_data_out, align 4, !dbg !160 ; [debug line = 108:5]
  br label %16, !dbg !161                         ; [debug line = 111:10]

; <label>:16                                      ; preds = %_ifconv, %15
  %pix_j.4 = phi i11 [ 1, %15 ], [ %pix_j.9, %_ifconv ] ; [#uses=3 type=i11]
  %.12.pn.rec = phi i11 [ 0, %15 ], [ %.23.rec, %_ifconv ] ; [#uses=2 type=i11]
  %.23.rec = add i11 %.12.pn.rec, 1, !dbg !162    ; [#uses=1 type=i11] [debug line = 109:5]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2046, i64 2046, i64 2046) nounwind ; [#uses=0 type=i32]
  %exitcond6 = icmp eq i11 %.12.pn.rec, -2, !dbg !161 ; [#uses=1 type=i1] [debug line = 111:10]
  br i1 %exitcond6, label %19, label %_ifconv, !dbg !161 ; [debug line = 111:10]

_ifconv:                                          ; preds = %16
  %tmp.16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str6) nounwind, !dbg !163 ; [#uses=1 type=i32] [debug line = 111:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !164 ; [debug line = 112:1]
  %tmp.14 = add i11 %pix_j.4, -1, !dbg !165       ; [#uses=1 type=i11] [debug line = 117:7]
  %tmp.15 = zext i11 %tmp.14 to i64, !dbg !165    ; [#uses=3 type=i64] [debug line = 117:7]
  %line_buffer.addr.3 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.15, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load = load i8* %line_buffer.addr.3, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp.16.cast = zext i8 %line_buffer.load to i9, !dbg !165 ; [#uses=2 type=i9] [debug line = 117:7]
  %pix_j.9 = add i11 %pix_j.4, 1, !dbg !165       ; [#uses=2 type=i11] [debug line = 117:7]
  %tmp.17 = zext i11 %pix_j.9 to i64, !dbg !165   ; [#uses=3 type=i64] [debug line = 117:7]
  %line_buffer.addr.4 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.17, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.1 = load i8* %line_buffer.addr.4, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp.18.cast = zext i8 %line_buffer.load.1 to i9, !dbg !165 ; [#uses=2 type=i9] [debug line = 117:7]
  %line_buffer.addr.5 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.15, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.2 = load i8* %line_buffer.addr.5, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp.19.cast = zext i8 %line_buffer.load.2 to i9, !dbg !165 ; [#uses=1 type=i9] [debug line = 117:7]
  %line_buffer.addr.6 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.17, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.3 = load i8* %line_buffer.addr.6, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 117:7]
  %tmp.20.cast = zext i8 %line_buffer.load.3 to i9, !dbg !165 ; [#uses=1 type=i9] [debug line = 117:7]
  %line_buffer.addr.7 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.15, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.4 = load i8* %line_buffer.addr.7, align 1, !dbg !165 ; [#uses=2 type=i8] [debug line = 117:7]
  %tmp.18 = zext i8 %line_buffer.load.4 to i16, !dbg !165 ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.21.cast = zext i8 %line_buffer.load.4 to i10 ; [#uses=1 type=i10]
  %tmp = sub i9 %tmp.20.cast, %tmp.19.cast        ; [#uses=1 type=i9]
  %tmp.cast = sext i9 %tmp to i15                 ; [#uses=1 type=i15]
  %tmp4 = zext i15 %tmp.cast to i16               ; [#uses=1 type=i16]
  %tmp1 = shl nuw nsw i16 %tmp4, 1                ; [#uses=1 type=i16]
  %line_buffer.addr.8 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.17, !dbg !165 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.5 = load i8* %line_buffer.addr.8, align 1, !dbg !165 ; [#uses=2 type=i8] [debug line = 117:7]
  %tmp.19 = zext i8 %line_buffer.load.5 to i16, !dbg !165 ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.22.cast = zext i8 %line_buffer.load.5 to i10, !dbg !165 ; [#uses=1 type=i10] [debug line = 117:7]
  %tmp.20 = sub i9 %tmp.18.cast, %tmp.16.cast, !dbg !165 ; [#uses=1 type=i9] [debug line = 117:7]
  %tmp.23.cast = sext i9 %tmp.20 to i16, !dbg !165 ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.21 = add i16 %tmp1, %tmp.23.cast, !dbg !165 ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.22 = sub i16 %tmp.21, %tmp.18, !dbg !165   ; [#uses=1 type=i16] [debug line = 117:7]
  %x_weight = add i16 %tmp.22, %tmp.19, !dbg !165 ; [#uses=3 type=i16] [debug line = 117:7]
  call void @llvm.dbg.value(metadata !{i16 %x_weight}, i64 0, metadata !166), !dbg !165 ; [debug line = 117:7] [debug variable = x_weight]
  %tmp.23 = zext i11 %pix_j.4 to i64, !dbg !168   ; [#uses=2 type=i64] [debug line = 118:7]
  %line_buffer.addr.9 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.23, !dbg !168 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer.load.6 = load i8* %line_buffer.addr.9, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 118:7]
  %tmp.27.cast = zext i8 %line_buffer.load.6 to i9, !dbg !168 ; [#uses=1 type=i9] [debug line = 118:7]
  %line_buffer.addr.10 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.23, !dbg !168 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer.load.7 = load i8* %line_buffer.addr.10, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 118:7]
  %tmp.28.cast = zext i8 %line_buffer.load.7 to i9 ; [#uses=1 type=i9]
  %tmp2 = sub i9 %tmp.27.cast, %tmp.28.cast       ; [#uses=1 type=i9]
  %tmp2.cast = sext i9 %tmp2 to i15               ; [#uses=1 type=i15]
  %tmp5 = zext i15 %tmp2.cast to i16              ; [#uses=1 type=i16]
  %tmp3 = shl nuw nsw i16 %tmp5, 1                ; [#uses=1 type=i16]
  %tmp.24 = add i9 %tmp.16.cast, %tmp.18.cast, !dbg !168 ; [#uses=1 type=i9] [debug line = 118:7]
  %tmp.29.cast = zext i9 %tmp.24 to i10, !dbg !168 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp.25 = sub i10 %tmp.29.cast, %tmp.21.cast, !dbg !168 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp.26 = sub i10 %tmp.25, %tmp.22.cast, !dbg !168 ; [#uses=1 type=i10] [debug line = 118:7]
  %tmp.31.cast = sext i10 %tmp.26 to i16, !dbg !168 ; [#uses=1 type=i16] [debug line = 118:7]
  %y_weight = add i16 %tmp3, %tmp.31.cast, !dbg !168 ; [#uses=3 type=i16] [debug line = 118:7]
  call void @llvm.dbg.value(metadata !{i16 %y_weight}, i64 0, metadata !169), !dbg !168 ; [debug line = 118:7] [debug variable = y_weight]
  %tmp.27 = icmp sgt i16 %x_weight, 0, !dbg !170  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp.28 = sub i16 0, %x_weight, !dbg !170       ; [#uses=1 type=i16] [debug line = 120:7]
  %x_weight.1 = select i1 %tmp.27, i16 %x_weight, i16 %tmp.28, !dbg !170 ; [#uses=1 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %x_weight.1}, i64 0, metadata !166), !dbg !170 ; [debug line = 120:7] [debug variable = x_weight]
  %tmp.29 = icmp sgt i16 %y_weight, 0, !dbg !170  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp.30 = sub i16 0, %y_weight, !dbg !170       ; [#uses=1 type=i16] [debug line = 120:7]
  %y_weight.1 = select i1 %tmp.29, i16 %y_weight, i16 %tmp.30, !dbg !170 ; [#uses=1 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %y_weight.1}, i64 0, metadata !169), !dbg !170 ; [debug line = 120:7] [debug variable = y_weight]
  %edge_weight = add i16 %x_weight.1, %y_weight.1, !dbg !170 ; [#uses=2 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %edge_weight}, i64 0, metadata !171), !dbg !170 ; [debug line = 120:7] [debug variable = edge_weight]
  %tmp.31 = icmp slt i16 %edge_weight, 255, !dbg !172 ; [#uses=1 type=i1] [debug line = 122:7]
  %tmp.32 = trunc i16 %edge_weight to i8, !dbg !173 ; [#uses=1 type=i8] [debug line = 123:9]
  %edge_val = xor i8 %tmp.32, -1, !dbg !173       ; [#uses=1 type=i8] [debug line = 123:9]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !174), !dbg !173 ; [debug line = 123:9] [debug variable = edge_val]
  %edge_val1 = select i1 %tmp.31, i8 %edge_val, i8 0 ; [#uses=2 type=i8]
  %tmp.33 = zext i8 %edge_val1 to i32, !dbg !175  ; [#uses=2 type=i32] [debug line = 127:7]
  %tmp.34 = icmp sgt i32 %tmp.33, %imaxsobelSensitivity, !dbg !175 ; [#uses=2 type=i1] [debug line = 127:7]
  %tmp.35 = icmp slt i32 %tmp.33, %iminsobelSensitivity, !dbg !176 ; [#uses=1 type=i1] [debug line = 129:12]
  %.edge_val = sext i1 %tmp.34 to i8              ; [#uses=1 type=i8]
  %tmp.36 = or i1 %tmp.34, %tmp.35                ; [#uses=1 type=i1]
  %edge_val.2 = select i1 %tmp.36, i8 %.edge_val, i8 %edge_val1 ; [#uses=1 type=i8]
  %edge_val.1 = xor i8 %edge_val.2, %tmp.9.cast, !dbg !126 ; [#uses=3 type=i8] [debug line = 132:7]
  call void @llvm.dbg.value(metadata !{i8 %edge_val.1}, i64 0, metadata !174), !dbg !126 ; [debug line = 132:7] [debug variable = edge_val]
  %tmp.37 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %edge_val.1, i8 %edge_val.1, i8 %edge_val.1) ; [#uses=1 type=i24]
  %tmp.38 = zext i24 %tmp.37 to i32, !dbg !177    ; [#uses=1 type=i32] [debug line = 135:7]
  %tmp.39 = or i32 %tmp.38, -16777216, !dbg !177  ; [#uses=1 type=i32] [debug line = 135:7]
  store volatile i32 %tmp.39, i32* %rgb_data_out, align 4, !dbg !177 ; [debug line = 135:7]
  %18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str6, i32 %tmp.16) nounwind, !dbg !178 ; [#uses=0 type=i32] [debug line = 137:5]
  call void @llvm.dbg.value(metadata !{i11 %pix_j.9}, i64 0, metadata !102), !dbg !179 ; [debug line = 111:41] [debug variable = pix_j]
  br label %16, !dbg !179                         ; [debug line = 111:41]

; <label>:19                                      ; preds = %16
  store volatile i32 0, i32* %rgb_data_out, align 4, !dbg !180 ; [debug line = 140:5]
  br label %20, !dbg !181                         ; [debug line = 143:10]

; <label>:20                                      ; preds = %22, %19
  %pix_j.5 = phi i11 [ 0, %19 ], [ %pix_j.8, %22 ] ; [#uses=3 type=i11]
  %exitcond5 = icmp eq i11 %pix_j.5, -128, !dbg !181 ; [#uses=1 type=i1] [debug line = 143:10]
  %21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5, label %23, label %22, !dbg !181 ; [debug line = 143:10]

; <label>:22                                      ; preds = %20
  %tmp.40 = zext i11 %pix_j.5 to i64, !dbg !183   ; [#uses=3 type=i64] [debug line = 144:7]
  %line_buffer.addr.11 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.40, !dbg !183 ; [#uses=2 type=i8*] [debug line = 144:7]
  %line_buffer.load.8 = load i8* %line_buffer.addr.11, align 1, !dbg !183 ; [#uses=1 type=i8] [debug line = 144:7]
  %line_buffer.addr.12 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.40, !dbg !183 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %line_buffer.load.8, i8* %line_buffer.addr.12, align 1, !dbg !183 ; [debug line = 144:7]
  %line_buffer.addr.13 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.40, !dbg !185 ; [#uses=1 type=i8*] [debug line = 145:7]
  %line_buffer.load.9 = load i8* %line_buffer.addr.13, align 1, !dbg !185 ; [#uses=1 type=i8] [debug line = 145:7]
  store i8 %line_buffer.load.9, i8* %line_buffer.addr.11, align 1, !dbg !185 ; [debug line = 145:7]
  %pix_j.8 = add i11 %pix_j.5, 1, !dbg !186       ; [#uses=1 type=i11] [debug line = 143:36]
  call void @llvm.dbg.value(metadata !{i11 %pix_j.8}, i64 0, metadata !102), !dbg !186 ; [debug line = 143:36] [debug variable = pix_j]
  br label %20, !dbg !186                         ; [debug line = 143:36]

; <label>:23                                      ; preds = %20
  %pix_i.1 = add i11 %pix_i, 1, !dbg !187         ; [#uses=1 type=i11] [debug line = 94:35]
  call void @llvm.dbg.value(metadata !{i11 %pix_i.1}, i64 0, metadata !188), !dbg !187 ; [debug line = 94:35] [debug variable = pix_i]
  br label %.preheader26, !dbg !187               ; [debug line = 94:35]

.preheader:                                       ; preds = %25, %.preheader26
  %.34.rec = phi i12 [ %.rec, %25 ], [ 0, %.preheader26 ] ; [#uses=2 type=i12]
  %24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  %exitcond8 = icmp eq i12 %.34.rec, -2048, !dbg !189 ; [#uses=1 type=i1] [debug line = 150:8]
  br i1 %exitcond8, label %27, label %25, !dbg !189 ; [debug line = 150:8]

; <label>:25                                      ; preds = %.preheader
  %tmp.9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str7) nounwind, !dbg !191 ; [#uses=1 type=i32] [debug line = 150:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !193 ; [debug line = 151:1]
  store volatile i32 0, i32* %rgb_data_out, align 4, !dbg !194 ; [debug line = 152:2]
  %.rec = add i12 %.34.rec, 1, !dbg !195          ; [#uses=1 type=i12] [debug line = 153:5]
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str7, i32 %tmp.9) nounwind, !dbg !196 ; [#uses=0 type=i32] [debug line = 154:3]
  br label %.preheader, !dbg !197                 ; [debug line = 150:35]

; <label>:27                                      ; preds = %.preheader
  ret void, !dbg !198                             ; [debug line = 156:1]
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!llvm.dbg.cu = !{!8}

!0 = metadata !{metadata !1, [3 x [2048 x i8]]* @line_buffer}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"line_buffer", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{i32 0, i32 2047, i32 1}
!8 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/img_filters.pragma.2.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !9} ; [ DW_TAG_compile_unit ]
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !11, metadata !18, metadata !21, metadata !22, metadata !23}
!11 = metadata !{i32 786484, i32 0, null, metadata !"line_buffer", metadata !"line_buffer", metadata !"", metadata !12, i32 43, metadata !13, i32 0, i32 1, [3 x [2048 x i8]]* @line_buffer} ; [ DW_TAG_variable ]
!12 = metadata !{i32 786473, metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 49152, i64 8, i32 0, i32 0, metadata !14, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!17 = metadata !{i32 786465, i64 0, i64 2047}     ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !19, i32 346, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !19, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !19, i32 347, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !19, i32 348, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !24, i32 27, metadata !25, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"rgb_data_in", metadata !30, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 2211839, i32 1}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"rgb_data_out", metadata !30, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"isobelInvert", metadata !40, metadata !"int", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 0}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"iminsobelSensitivity", metadata !40, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"imaxsobelSensitivity", metadata !40, metadata !"int", i32 0, i32 31}
!50 = metadata !{i32 786689, metadata !51, metadata !"rgb_data_in", null, i32 52, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786478, i32 0, metadata !12, metadata !"img_process", metadata !"img_process", metadata !"", metadata !12, i32 52, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !55, i32 53} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !54, metadata !54, metadata !25, metadata !25, metadata !25}
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 70778880, i64 32, i32 0, i32 0, metadata !25, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 2211839}  ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 52, i32 22, metadata !51, null}
!61 = metadata !{i32 786689, metadata !51, metadata !"rgb_data_out", null, i32 52, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 52, i32 48, metadata !51, null}
!63 = metadata !{i32 786689, metadata !51, metadata !"isobelInvert", metadata !12, i32 50331700, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 52, i32 75, metadata !51, null}
!65 = metadata !{i32 786689, metadata !51, metadata !"iminsobelSensitivity", metadata !12, i32 67108916, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 52, i32 93, metadata !51, null}
!67 = metadata !{i32 786689, metadata !51, metadata !"imaxsobelSensitivity", metadata !12, i32 83886132, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 52, i32 119, metadata !51, null}
!69 = metadata !{i32 54, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !51, i32 53, i32 1, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 68, i32 8, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 68, i32 3, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 68, i32 45, metadata !74, null}
!74 = metadata !{i32 786443, metadata !72, i32 68, i32 44, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 69, i32 1, metadata !74, null}
!76 = metadata !{i32 70, i32 2, metadata !74, null}
!77 = metadata !{i32 786688, metadata !70, metadata !"pixel", metadata !12, i32 65, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_volatile_type ]
!79 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 71, i32 5, metadata !74, null}
!81 = metadata !{i32 786688, metadata !70, metadata !"in_B", metadata !12, i32 62, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 72, i32 5, metadata !74, null}
!83 = metadata !{i32 786688, metadata !70, metadata !"in_G", metadata !12, i32 62, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 73, i32 5, metadata !74, null}
!85 = metadata !{i32 786688, metadata !70, metadata !"in_R", metadata !12, i32 62, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786689, metadata !87, metadata !"R", metadata !12, i32 16777261, metadata !14, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786478, i32 0, metadata !12, metadata !"rgb2y", metadata !"rgb2y", metadata !"", metadata !12, i32 45, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !55, i32 46} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14}
!90 = metadata !{i32 74, i32 29, metadata !74, null}
!91 = metadata !{i32 45, i32 35, metadata !87, metadata !90}
!92 = metadata !{i32 786689, metadata !87, metadata !"G", metadata !12, i32 33554477, metadata !14, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 45, i32 52, metadata !87, metadata !90}
!94 = metadata !{i32 786689, metadata !87, metadata !"B", metadata !12, i32 50331693, metadata !14, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 45, i32 69, metadata !87, metadata !90}
!96 = metadata !{i32 48, i32 3, metadata !97, metadata !90}
!97 = metadata !{i32 786443, metadata !87, i32 46, i32 1, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786688, metadata !97, metadata !"y", metadata !12, i32 47, metadata !14, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 75, i32 5, metadata !74, null}
!100 = metadata !{i32 76, i32 3, metadata !74, null}
!101 = metadata !{i32 68, i32 35, metadata !72, null}
!102 = metadata !{i32 786688, metadata !70, metadata !"pix_j", metadata !12, i32 64, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 77, i32 8, metadata !104, null}
!104 = metadata !{i32 786443, metadata !70, i32 77, i32 3, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 77, i32 45, metadata !106, null}
!106 = metadata !{i32 786443, metadata !104, i32 77, i32 44, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 78, i32 1, metadata !106, null}
!108 = metadata !{i32 79, i32 2, metadata !106, null}
!109 = metadata !{i32 80, i32 5, metadata !106, null}
!110 = metadata !{i32 81, i32 5, metadata !106, null}
!111 = metadata !{i32 82, i32 5, metadata !106, null}
!112 = metadata !{i32 786689, metadata !87, metadata !"R", metadata !12, i32 16777261, metadata !14, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 83, i32 29, metadata !106, null}
!114 = metadata !{i32 45, i32 35, metadata !87, metadata !113}
!115 = metadata !{i32 786689, metadata !87, metadata !"G", metadata !12, i32 33554477, metadata !14, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 45, i32 52, metadata !87, metadata !113}
!117 = metadata !{i32 786689, metadata !87, metadata !"B", metadata !12, i32 50331693, metadata !14, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 45, i32 69, metadata !87, metadata !113}
!119 = metadata !{i32 48, i32 3, metadata !97, metadata !113}
!120 = metadata !{i32 786688, metadata !97, metadata !"y", metadata !12, i32 47, metadata !14, i32 0, metadata !113} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 84, i32 5, metadata !106, null}
!122 = metadata !{i32 85, i32 3, metadata !106, null}
!123 = metadata !{i32 77, i32 35, metadata !104, null}
!124 = metadata !{i32 88, i32 8, metadata !125, null}
!125 = metadata !{i32 786443, metadata !70, i32 88, i32 3, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 132, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !128, i32 111, i32 50, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 111, i32 5, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 94, i32 44, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !70, i32 94, i32 3, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 88, i32 45, metadata !132, null}
!132 = metadata !{i32 786443, metadata !125, i32 88, i32 44, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 89, i32 1, metadata !132, null}
!134 = metadata !{i32 90, i32 2, metadata !132, null}
!135 = metadata !{i32 91, i32 5, metadata !132, null}
!136 = metadata !{i32 92, i32 3, metadata !132, null}
!137 = metadata !{i32 88, i32 35, metadata !125, null}
!138 = metadata !{i32 94, i32 8, metadata !130, null}
!139 = metadata !{i32 97, i32 10, metadata !140, null}
!140 = metadata !{i32 786443, metadata !129, i32 97, i32 5, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 97, i32 47, metadata !142, null}
!142 = metadata !{i32 786443, metadata !140, i32 97, i32 46, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 98, i32 1, metadata !142, null}
!144 = metadata !{i32 99, i32 2, metadata !142, null}
!145 = metadata !{i32 100, i32 7, metadata !142, null}
!146 = metadata !{i32 101, i32 7, metadata !142, null}
!147 = metadata !{i32 102, i32 7, metadata !142, null}
!148 = metadata !{i32 786689, metadata !87, metadata !"R", metadata !12, i32 16777261, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 103, i32 31, metadata !142, null}
!150 = metadata !{i32 45, i32 35, metadata !87, metadata !149}
!151 = metadata !{i32 786689, metadata !87, metadata !"G", metadata !12, i32 33554477, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 45, i32 52, metadata !87, metadata !149}
!153 = metadata !{i32 786689, metadata !87, metadata !"B", metadata !12, i32 50331693, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 45, i32 69, metadata !87, metadata !149}
!155 = metadata !{i32 48, i32 3, metadata !97, metadata !149}
!156 = metadata !{i32 786688, metadata !97, metadata !"y", metadata !12, i32 47, metadata !14, i32 0, metadata !149} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 104, i32 7, metadata !142, null}
!158 = metadata !{i32 105, i32 5, metadata !142, null}
!159 = metadata !{i32 97, i32 37, metadata !140, null}
!160 = metadata !{i32 108, i32 5, metadata !129, null}
!161 = metadata !{i32 111, i32 10, metadata !128, null}
!162 = metadata !{i32 109, i32 5, metadata !129, null}
!163 = metadata !{i32 111, i32 51, metadata !127, null}
!164 = metadata !{i32 112, i32 1, metadata !127, null}
!165 = metadata !{i32 117, i32 7, metadata !127, null}
!166 = metadata !{i32 786688, metadata !70, metadata !"x_weight", metadata !12, i32 57, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!168 = metadata !{i32 118, i32 7, metadata !127, null}
!169 = metadata !{i32 786688, metadata !70, metadata !"y_weight", metadata !12, i32 58, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 120, i32 7, metadata !127, null}
!171 = metadata !{i32 786688, metadata !70, metadata !"edge_weight", metadata !12, i32 59, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 122, i32 7, metadata !127, null}
!173 = metadata !{i32 123, i32 9, metadata !127, null}
!174 = metadata !{i32 786688, metadata !70, metadata !"edge_val", metadata !12, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 127, i32 7, metadata !127, null}
!176 = metadata !{i32 129, i32 12, metadata !127, null}
!177 = metadata !{i32 135, i32 7, metadata !127, null}
!178 = metadata !{i32 137, i32 5, metadata !127, null}
!179 = metadata !{i32 111, i32 41, metadata !128, null}
!180 = metadata !{i32 140, i32 5, metadata !129, null}
!181 = metadata !{i32 143, i32 10, metadata !182, null}
!182 = metadata !{i32 786443, metadata !129, i32 143, i32 5, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 144, i32 7, metadata !184, null}
!184 = metadata !{i32 786443, metadata !182, i32 143, i32 45, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 145, i32 7, metadata !184, null}
!186 = metadata !{i32 143, i32 36, metadata !182, null}
!187 = metadata !{i32 94, i32 35, metadata !130, null}
!188 = metadata !{i32 786688, metadata !70, metadata !"pix_i", metadata !12, i32 64, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 150, i32 8, metadata !190, null}
!190 = metadata !{i32 786443, metadata !70, i32 150, i32 3, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 150, i32 45, metadata !192, null}
!192 = metadata !{i32 786443, metadata !190, i32 150, i32 44, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 151, i32 1, metadata !192, null}
!194 = metadata !{i32 152, i32 2, metadata !192, null}
!195 = metadata !{i32 153, i32 5, metadata !192, null}
!196 = metadata !{i32 154, i32 3, metadata !192, null}
!197 = metadata !{i32 150, i32 35, metadata !190, null}
!198 = metadata !{i32 156, i32 1, metadata !70, null}
