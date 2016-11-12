; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@line_buffer = common global [3 x [2048 x i8]] zeroinitializer, align 16 ; [#uses=14 type=[3 x [2048 x i8]]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=1 type=[12 x i8]*]
@img_process.str = internal unnamed_addr constant [12 x i8] c"img_process\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=3]
define internal fastcc zeroext i8 @rgb2y(i8 zeroext %R, i8 zeroext %G, i8 zeroext %B) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !31), !dbg !32 ; [debug line = 45:35] [debug variable = R]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !33), !dbg !34 ; [debug line = 45:52] [debug variable = G]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !35), !dbg !36 ; [debug line = 45:69] [debug variable = B]
  %tmp = zext i8 %R to i32, !dbg !37              ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.1 = mul nsw i32 %tmp, 66, !dbg !37         ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.2 = zext i8 %G to i32, !dbg !37            ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.3 = mul nsw i32 %tmp.2, 129, !dbg !37      ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.4 = zext i8 %B to i32, !dbg !37            ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.5 = mul nsw i32 %tmp.4, 25, !dbg !37       ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.6 = add i32 %tmp.1, 128, !dbg !37          ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.7 = add i32 %tmp.6, %tmp.3, !dbg !37       ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.8 = add i32 %tmp.7, %tmp.5, !dbg !37       ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.9 = lshr i32 %tmp.8, 8, !dbg !37           ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.10 = trunc i32 %tmp.9 to i8, !dbg !37      ; [#uses=1 type=i8] [debug line = 48:3]
  %y = add i8 %tmp.10, 16, !dbg !37               ; [#uses=1 type=i8] [debug line = 48:3]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !39), !dbg !37 ; [debug line = 48:3] [debug variable = y]
  ret i8 %y, !dbg !40                             ; [debug line = 49:3]
}

; [#uses=0]
define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out, i32 %isobelInvert, i32 %iminsobelSensitivity, i32 %imaxsobelSensitivity) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @img_process.str) nounwind
  %pixel = alloca i32, align 4                    ; [#uses=12 type=i32*]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_in}, i64 0, metadata !41), !dbg !42 ; [debug line = 52:22] [debug variable = rgb_data_in]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_out}, i64 0, metadata !43), !dbg !44 ; [debug line = 52:48] [debug variable = rgb_data_out]
  call void @llvm.dbg.value(metadata !{i32 %isobelInvert}, i64 0, metadata !45), !dbg !46 ; [debug line = 52:75] [debug variable = isobelInvert]
  call void @llvm.dbg.value(metadata !{i32 %iminsobelSensitivity}, i64 0, metadata !47), !dbg !48 ; [debug line = 52:93] [debug variable = iminsobelSensitivity]
  call void @llvm.dbg.value(metadata !{i32 %imaxsobelSensitivity}, i64 0, metadata !49), !dbg !50 ; [debug line = 52:119] [debug variable = imaxsobelSensitivity]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %rgb_data_out, i32 2211840) nounwind, !dbg !51 ; [debug line = 53:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %rgb_data_in, i32 2211840) nounwind, !dbg !53 ; [debug line = 53:47]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_out, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rgb_data_in, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 54:1]
  br label %1, !dbg !55                           ; [debug line = 68:8]

; <label>:1                                       ; preds = %2, %0
  %pix_j = phi i32 [ 0, %0 ], [ %pix_j.2, %2 ]    ; [#uses=2 type=i32]
  %.0.rec = phi i64 [ 0, %0 ], [ %.rec1, %2 ]     ; [#uses=3 type=i64]
  %rgb_data_in.addr = getelementptr i32* %rgb_data_in, i64 %.0.rec ; [#uses=1 type=i32*]
  %lftr.wideiv1 = trunc i64 %.0.rec to i32, !dbg !55 ; [#uses=1 type=i32] [debug line = 68:8]
  %exitcond1 = icmp eq i32 %lftr.wideiv1, 2048, !dbg !55 ; [#uses=1 type=i1] [debug line = 68:8]
  br i1 %exitcond1, label %.preheader31.preheader, label %2, !dbg !55 ; [debug line = 68:8]

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !57 ; [#uses=1 type=i32] [debug line = 68:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 69:1]
  %pixel.1 = load i32* %rgb_data_in.addr, align 4, !dbg !60 ; [#uses=1 type=i32] [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.1}, i64 0, metadata !61), !dbg !60 ; [debug line = 70:2] [debug variable = pixel]
  store volatile i32 %pixel.1, i32* %pixel, align 4, !dbg !60 ; [debug line = 70:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !64 ; [debug line = 71:5] [debug variable = pixel]
  %pixel.load = load volatile i32* %pixel, align 4, !dbg !64 ; [#uses=1 type=i32] [debug line = 71:5]
  %in_B = trunc i32 %pixel.load to i8, !dbg !64   ; [#uses=1 type=i8] [debug line = 71:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B}, i64 0, metadata !65), !dbg !64 ; [debug line = 71:5] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !66 ; [debug line = 72:5] [debug variable = pixel]
  %pixel.load.1 = load volatile i32* %pixel, align 4, !dbg !66 ; [#uses=1 type=i32] [debug line = 72:5]
  %tmp.12 = lshr i32 %pixel.load.1, 8, !dbg !66   ; [#uses=1 type=i32] [debug line = 72:5]
  %in_G = trunc i32 %tmp.12 to i8, !dbg !66       ; [#uses=1 type=i8] [debug line = 72:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G}, i64 0, metadata !67), !dbg !66 ; [debug line = 72:5] [debug variable = in_G]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !68 ; [debug line = 73:5] [debug variable = pixel]
  %pixel.load.2 = load volatile i32* %pixel, align 4, !dbg !68 ; [#uses=1 type=i32] [debug line = 73:5]
  %tmp.14 = lshr i32 %pixel.load.2, 16, !dbg !68  ; [#uses=1 type=i32] [debug line = 73:5]
  %in_R = trunc i32 %tmp.14 to i8, !dbg !68       ; [#uses=1 type=i8] [debug line = 73:5]
  call void @llvm.dbg.value(metadata !{i8 %in_R}, i64 0, metadata !69), !dbg !68 ; [debug line = 73:5] [debug variable = in_R]
  %tmp.16 = call fastcc zeroext i8 @rgb2y(i8 zeroext %in_R, i8 zeroext %in_G, i8 zeroext %in_B), !dbg !70 ; [#uses=1 type=i8] [debug line = 74:29]
  %tmp.17 = sext i32 %pix_j to i64, !dbg !70      ; [#uses=1 type=i64] [debug line = 74:29]
  %line_buffer.addr = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.17, !dbg !70 ; [#uses=1 type=i8*] [debug line = 74:29]
  store i8 %tmp.16, i8* %line_buffer.addr, align 1, !dbg !70 ; [debug line = 74:29]
  %.rec1 = add i64 %.0.rec, 1, !dbg !71           ; [#uses=1 type=i64] [debug line = 75:5]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !72 ; [#uses=0 type=i32] [debug line = 76:3]
  %pix_j.2 = add nsw i32 %pix_j, 1, !dbg !73      ; [#uses=1 type=i32] [debug line = 68:35]
  call void @llvm.dbg.value(metadata !{i32 %pix_j.2}, i64 0, metadata !74), !dbg !73 ; [debug line = 68:35] [debug variable = pix_j]
  br label %1, !dbg !73                           ; [debug line = 68:35]

.preheader31:                                     ; preds = %3, %.preheader31.preheader
  %pix_j.1 = phi i32 [ %pix_j.6, %3 ], [ 0, %.preheader31.preheader ] ; [#uses=2 type=i32]
  %.1.rec = phi i64 [ %.rec2, %3 ], [ 0, %.preheader31.preheader ] ; [#uses=3 type=i64]
  %.0.sum = add i64 %.1.rec, 2048                 ; [#uses=2 type=i64]
  %rgb_data_in.addr.1 = getelementptr i32* %rgb_data_in, i64 %.0.sum ; [#uses=1 type=i32*]
  %lftr.wideiv2 = trunc i64 %.1.rec to i32, !dbg !75 ; [#uses=1 type=i32] [debug line = 77:8]
  %exitcond2 = icmp eq i32 %lftr.wideiv2, 2048, !dbg !75 ; [#uses=1 type=i1] [debug line = 77:8]
  br i1 %exitcond2, label %.preheader28.preheader, label %3, !dbg !75 ; [debug line = 77:8]

.preheader28.preheader:                           ; preds = %.preheader31
  %.1.lcssa = phi i64 [ %.0.sum, %.preheader31 ]  ; [#uses=1 type=i64]
  %rgb_data_in.addr.2 = getelementptr i32* %rgb_data_in, i64 %.1.lcssa ; [#uses=1 type=i32*]
  br label %.preheader28

; <label>:3                                       ; preds = %.preheader31
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !77 ; [#uses=1 type=i32] [debug line = 77:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 78:1]
  %pixel.2 = load i32* %rgb_data_in.addr.1, align 4, !dbg !80 ; [#uses=1 type=i32] [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.2}, i64 0, metadata !61), !dbg !80 ; [debug line = 79:2] [debug variable = pixel]
  store volatile i32 %pixel.2, i32* %pixel, align 4, !dbg !80 ; [debug line = 79:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !81 ; [debug line = 80:5] [debug variable = pixel]
  %pixel.load.3 = load volatile i32* %pixel, align 4, !dbg !81 ; [#uses=1 type=i32] [debug line = 80:5]
  %in_B.1 = trunc i32 %pixel.load.3 to i8, !dbg !81 ; [#uses=1 type=i8] [debug line = 80:5]
  call void @llvm.dbg.value(metadata !{i8 %in_B.1}, i64 0, metadata !65), !dbg !81 ; [debug line = 80:5] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !82 ; [debug line = 81:5] [debug variable = pixel]
  %pixel.load.4 = load volatile i32* %pixel, align 4, !dbg !82 ; [#uses=1 type=i32] [debug line = 81:5]
  %tmp.20 = lshr i32 %pixel.load.4, 8, !dbg !82   ; [#uses=1 type=i32] [debug line = 81:5]
  %in_G.1 = trunc i32 %tmp.20 to i8, !dbg !82     ; [#uses=1 type=i8] [debug line = 81:5]
  call void @llvm.dbg.value(metadata !{i8 %in_G.1}, i64 0, metadata !67), !dbg !82 ; [debug line = 81:5] [debug variable = in_G]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !83 ; [debug line = 82:5] [debug variable = pixel]
  %pixel.load.5 = load volatile i32* %pixel, align 4, !dbg !83 ; [#uses=1 type=i32] [debug line = 82:5]
  %tmp.22 = lshr i32 %pixel.load.5, 16, !dbg !83  ; [#uses=1 type=i32] [debug line = 82:5]
  %in_R.1 = trunc i32 %tmp.22 to i8, !dbg !83     ; [#uses=1 type=i8] [debug line = 82:5]
  call void @llvm.dbg.value(metadata !{i8 %in_R.1}, i64 0, metadata !69), !dbg !83 ; [debug line = 82:5] [debug variable = in_R]
  %tmp.24 = call fastcc zeroext i8 @rgb2y(i8 zeroext %in_R.1, i8 zeroext %in_G.1, i8 zeroext %in_B.1), !dbg !84 ; [#uses=1 type=i8] [debug line = 83:29]
  %tmp.25 = sext i32 %pix_j.1 to i64, !dbg !84    ; [#uses=1 type=i64] [debug line = 83:29]
  %line_buffer.addr.1 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.25, !dbg !84 ; [#uses=1 type=i8*] [debug line = 83:29]
  store i8 %tmp.24, i8* %line_buffer.addr.1, align 1, !dbg !84 ; [debug line = 83:29]
  %.rec2 = add i64 %.1.rec, 1, !dbg !85           ; [#uses=1 type=i64] [debug line = 84:5]
  %rend68 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !86 ; [#uses=0 type=i32] [debug line = 85:3]
  %pix_j.6 = add nsw i32 %pix_j.1, 1, !dbg !87    ; [#uses=1 type=i32] [debug line = 77:35]
  call void @llvm.dbg.value(metadata !{i32 %pix_j.6}, i64 0, metadata !74), !dbg !87 ; [debug line = 77:35] [debug variable = pix_j]
  br label %.preheader31, !dbg !87                ; [debug line = 77:35]

.preheader28:                                     ; preds = %4, %.preheader28.preheader
  %.01.rec = phi i64 [ %.rec3, %4 ], [ 0, %.preheader28.preheader ] ; [#uses=3 type=i64]
  %rgb_data_out.addr = getelementptr i32* %rgb_data_out, i64 %.01.rec ; [#uses=1 type=i32*]
  %lftr.wideiv = trunc i64 %.01.rec to i32, !dbg !88 ; [#uses=1 type=i32] [debug line = 88:8]
  %exitcond = icmp eq i32 %lftr.wideiv, 2048, !dbg !88 ; [#uses=1 type=i1] [debug line = 88:8]
  br i1 %exitcond, label %.preheader26.preheader, label %4, !dbg !88 ; [debug line = 88:8]

.preheader26.preheader:                           ; preds = %.preheader28
  %tmp.27 = icmp eq i32 %isobelInvert, 0, !dbg !90 ; [#uses=1 type=i1] [debug line = 132:7]
  %tmp.28 = select i1 %tmp.27, i8 0, i8 -1, !dbg !90 ; [#uses=1 type=i8] [debug line = 132:7]
  br label %.preheader26

; <label>:4                                       ; preds = %.preheader28
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 88:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !97 ; [debug line = 89:1]
  store i32 0, i32* %rgb_data_out.addr, align 4, !dbg !98 ; [debug line = 90:2]
  %.rec3 = add i64 %.01.rec, 1, !dbg !99          ; [#uses=1 type=i64] [debug line = 91:5]
  %rend66 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 92:3]
  br label %.preheader28, !dbg !101               ; [debug line = 88:35]

.preheader26:                                     ; preds = %14, %.preheader26.preheader
  %pix_i = phi i32 [ %pix_i.1, %14 ], [ 2, %.preheader26.preheader ] ; [#uses=2 type=i32]
  %.12.rec = phi i64 [ %phitmp, %14 ], [ 2048, %.preheader26.preheader ], !dbg !102 ; [#uses=3 type=i64] [debug line = 141:5]
  %.2.idx = phi i64 [ %.3.lcssa.idx, %14 ], [ 0, %.preheader26.preheader ] ; [#uses=2 type=i64]
  %rgb_data_in.addr.3 = getelementptr i32* %rgb_data_in.addr.2, i64 %.2.idx ; [#uses=1 type=i32*]
  %rgb_data_out.addr.1 = getelementptr i32* %rgb_data_out, i64 %.12.rec ; [#uses=1 type=i32*]
  %exitcond3 = icmp eq i32 %pix_i, 1080, !dbg !103 ; [#uses=1 type=i1] [debug line = 94:8]
  br i1 %exitcond3, label %.preheader.preheader, label %.preheader23.preheader, !dbg !103 ; [debug line = 94:8]

.preheader23.preheader:                           ; preds = %.preheader26
  br label %.preheader23

.preheader.preheader:                             ; preds = %.preheader26
  br label %.preheader

.preheader23:                                     ; preds = %5, %.preheader23.preheader
  %pix_j.3 = phi i32 [ %pix_j.7, %5 ], [ 0, %.preheader23.preheader ] ; [#uses=2 type=i32]
  %.3.rec = phi i64 [ %.rec8, %5 ], [ 0, %.preheader23.preheader ] ; [#uses=4 type=i64]
  %.2.idx1 = add i64 %.2.idx, %.3.rec             ; [#uses=1 type=i64]
  %rgb_data_in.addr.4 = getelementptr i32* %rgb_data_in.addr.3, i64 %.3.rec ; [#uses=1 type=i32*]
  %lftr.wideiv4 = trunc i64 %.3.rec to i32, !dbg !104 ; [#uses=1 type=i32] [debug line = 97:10]
  %exitcond6 = icmp eq i32 %lftr.wideiv4, 2048, !dbg !104 ; [#uses=1 type=i1] [debug line = 97:10]
  br i1 %exitcond6, label %6, label %5, !dbg !104 ; [debug line = 97:10]

; <label>:5                                       ; preds = %.preheader23
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 97:47]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !108 ; [debug line = 98:1]
  %pixel.3 = load i32* %rgb_data_in.addr.4, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32 %pixel.3}, i64 0, metadata !61), !dbg !109 ; [debug line = 99:2] [debug variable = pixel]
  store volatile i32 %pixel.3, i32* %pixel, align 4, !dbg !109 ; [debug line = 99:2]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !110 ; [debug line = 100:7] [debug variable = pixel]
  %pixel.load.6 = load volatile i32* %pixel, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 100:7]
  %in_B.2 = trunc i32 %pixel.load.6 to i8, !dbg !110 ; [#uses=1 type=i8] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i8 %in_B.2}, i64 0, metadata !65), !dbg !110 ; [debug line = 100:7] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !111 ; [debug line = 101:7] [debug variable = pixel]
  %pixel.load.7 = load volatile i32* %pixel, align 4, !dbg !111 ; [#uses=1 type=i32] [debug line = 101:7]
  %tmp.30 = lshr i32 %pixel.load.7, 8, !dbg !111  ; [#uses=1 type=i32] [debug line = 101:7]
  %in_G.2 = trunc i32 %tmp.30 to i8, !dbg !111    ; [#uses=1 type=i8] [debug line = 101:7]
  call void @llvm.dbg.value(metadata !{i8 %in_G.2}, i64 0, metadata !67), !dbg !111 ; [debug line = 101:7] [debug variable = in_G]
  call void @llvm.dbg.value(metadata !{i32* %pixel}, i64 0, metadata !61), !dbg !112 ; [debug line = 102:7] [debug variable = pixel]
  %pixel.load.8 = load volatile i32* %pixel, align 4, !dbg !112 ; [#uses=1 type=i32] [debug line = 102:7]
  %tmp.32 = lshr i32 %pixel.load.8, 16, !dbg !112 ; [#uses=1 type=i32] [debug line = 102:7]
  %in_R.2 = trunc i32 %tmp.32 to i8, !dbg !112    ; [#uses=1 type=i8] [debug line = 102:7]
  call void @llvm.dbg.value(metadata !{i8 %in_R.2}, i64 0, metadata !69), !dbg !112 ; [debug line = 102:7] [debug variable = in_R]
  %tmp.34 = call fastcc zeroext i8 @rgb2y(i8 zeroext %in_R.2, i8 zeroext %in_G.2, i8 zeroext %in_B.2), !dbg !113 ; [#uses=1 type=i8] [debug line = 103:31]
  %tmp.35 = sext i32 %pix_j.3 to i64, !dbg !113   ; [#uses=1 type=i64] [debug line = 103:31]
  %line_buffer.addr.2 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.35, !dbg !113 ; [#uses=1 type=i8*] [debug line = 103:31]
  store i8 %tmp.34, i8* %line_buffer.addr.2, align 1, !dbg !113 ; [debug line = 103:31]
  %.rec8 = add i64 %.3.rec, 1, !dbg !114          ; [#uses=1 type=i64] [debug line = 104:7]
  %rend74 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !115 ; [#uses=0 type=i32] [debug line = 105:5]
  %pix_j.7 = add nsw i32 %pix_j.3, 1, !dbg !116   ; [#uses=1 type=i32] [debug line = 97:37]
  call void @llvm.dbg.value(metadata !{i32 %pix_j.7}, i64 0, metadata !74), !dbg !116 ; [debug line = 97:37] [debug variable = pix_j]
  br label %.preheader23, !dbg !116               ; [debug line = 97:37]

; <label>:6                                       ; preds = %.preheader23
  %.3.lcssa.idx = phi i64 [ %.2.idx1, %.preheader23 ] ; [#uses=1 type=i64]
  store i32 0, i32* %rgb_data_out.addr.1, align 4, !dbg !117 ; [debug line = 108:5]
  br label %7, !dbg !118                          ; [debug line = 111:10]

; <label>:7                                       ; preds = %._crit_edge64, %6
  %pix_j.4 = phi i32 [ 1, %6 ], [ %pix_j.9, %._crit_edge64 ] ; [#uses=3 type=i32]
  %.12.pn.rec = phi i64 [ 0, %6 ], [ %.23.rec, %._crit_edge64 ] ; [#uses=2 type=i64]
  %.23.rec = add i64 %.12.pn.rec, 1, !dbg !119    ; [#uses=2 type=i64] [debug line = 109:5]
  %.12.sum = add i64 %.23.rec, %.12.rec, !dbg !119 ; [#uses=2 type=i64] [debug line = 109:5]
  %rgb_data_out.assign = getelementptr inbounds i32* %rgb_data_out, i64 %.12.sum, !dbg !119 ; [#uses=1 type=i32*] [debug line = 109:5]
  call void @llvm.dbg.value(metadata !{i32* %rgb_data_out.assign}, i64 0, metadata !43), !dbg !119 ; [debug line = 109:5] [debug variable = rgb_data_out]
  %lftr.wideiv5 = trunc i64 %.12.pn.rec to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 111:10]
  %exitcond7 = icmp eq i32 %lftr.wideiv5, 2046, !dbg !118 ; [#uses=1 type=i1] [debug line = 111:10]
  br i1 %exitcond7, label %11, label %8, !dbg !118 ; [debug line = 111:10]

; <label>:8                                       ; preds = %7
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !120 ; [#uses=1 type=i32] [debug line = 111:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !121 ; [debug line = 112:1]
  %tmp.37 = add nsw i32 %pix_j.4, -1, !dbg !122   ; [#uses=1 type=i32] [debug line = 117:7]
  %tmp.38 = sext i32 %tmp.37 to i64, !dbg !122    ; [#uses=3 type=i64] [debug line = 117:7]
  %line_buffer.addr.3 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.38, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load = load i8* %line_buffer.addr.3, align 1, !dbg !122 ; [#uses=3 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  %tmp.39 = zext i8 %line_buffer.load to i16, !dbg !122 ; [#uses=2 type=i16] [debug line = 117:7]
  %pix_j.9 = add nsw i32 %pix_j.4, 1, !dbg !122   ; [#uses=2 type=i32] [debug line = 117:7]
  %tmp.41 = sext i32 %pix_j.9 to i64, !dbg !122   ; [#uses=3 type=i64] [debug line = 117:7]
  %line_buffer.addr.4 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.41, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.1 = load i8* %line_buffer.addr.4, align 1, !dbg !122 ; [#uses=3 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.1) nounwind
  %tmp.42 = zext i8 %line_buffer.load.1 to i16, !dbg !122 ; [#uses=2 type=i16] [debug line = 117:7]
  %line_buffer.addr.5 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.38, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.2 = load i8* %line_buffer.addr.5, align 1, !dbg !122 ; [#uses=2 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.2) nounwind
  %tmp.43 = zext i8 %line_buffer.load.2 to i16, !dbg !122 ; [#uses=1 type=i16] [debug line = 117:7]
  %line_buffer.addr.6 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.41, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.3 = load i8* %line_buffer.addr.6, align 1, !dbg !122 ; [#uses=2 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.3) nounwind
  %tmp.44 = zext i8 %line_buffer.load.3 to i16, !dbg !122 ; [#uses=1 type=i16] [debug line = 117:7]
  %line_buffer.addr.7 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.38, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.4 = load i8* %line_buffer.addr.7, align 1, !dbg !122 ; [#uses=3 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.4) nounwind
  %tmp.45 = zext i8 %line_buffer.load.4 to i16, !dbg !122 ; [#uses=1 type=i16] [debug line = 117:7]
  %.neg1 = sub i16 0, %tmp.45                     ; [#uses=2 type=i16]
  %tmp = sub i16 %tmp.44, %tmp.43                 ; [#uses=1 type=i16]
  %tmp38 = mul i16 %tmp, 2                        ; [#uses=1 type=i16]
  %line_buffer.addr.8 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.41, !dbg !122 ; [#uses=1 type=i8*] [debug line = 117:7]
  %line_buffer.load.5 = load i8* %line_buffer.addr.8, align 1, !dbg !122 ; [#uses=3 type=i8] [debug line = 117:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.5) nounwind
  %tmp.46 = zext i8 %line_buffer.load.5 to i16, !dbg !122 ; [#uses=2 type=i16] [debug line = 117:7]
  %.neg = sub i16 0, %tmp.39                      ; [#uses=1 type=i16]
  %tmp.47 = add i16 %tmp.42, %.neg, !dbg !122     ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.48 = add i16 %tmp.47, %tmp38, !dbg !122    ; [#uses=1 type=i16] [debug line = 117:7]
  %tmp.49 = add i16 %tmp.48, %.neg1, !dbg !122    ; [#uses=1 type=i16] [debug line = 117:7]
  %x_weight = add i16 %tmp.49, %tmp.46, !dbg !122 ; [#uses=3 type=i16] [debug line = 117:7]
  call void @llvm.dbg.value(metadata !{i16 %x_weight}, i64 0, metadata !123), !dbg !122 ; [debug line = 117:7] [debug variable = x_weight]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  %tmp.51 = sext i32 %pix_j.4 to i64, !dbg !125   ; [#uses=2 type=i64] [debug line = 118:7]
  %line_buffer.addr.9 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.51, !dbg !125 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer.load.6 = load i8* %line_buffer.addr.9, align 1, !dbg !125 ; [#uses=2 type=i8] [debug line = 118:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.6) nounwind
  %tmp.52 = zext i8 %line_buffer.load.6 to i16, !dbg !125 ; [#uses=1 type=i16] [debug line = 118:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.1) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.4) nounwind
  %line_buffer.addr.10 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.51, !dbg !125 ; [#uses=1 type=i8*] [debug line = 118:7]
  %line_buffer.load.7 = load i8* %line_buffer.addr.10, align 1, !dbg !125 ; [#uses=2 type=i8] [debug line = 118:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.7) nounwind
  %tmp.53 = zext i8 %line_buffer.load.7 to i16, !dbg !125 ; [#uses=1 type=i16] [debug line = 118:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.5) nounwind
  %tmp42 = sub i16 %tmp.52, %tmp.53               ; [#uses=1 type=i16]
  %tmp43 = shl nsw i16 %tmp42, 1                  ; [#uses=1 type=i16]
  %.neg2 = sub i16 0, %tmp.46                     ; [#uses=1 type=i16]
  %tmp.54 = add i16 %tmp.42, %tmp.39, !dbg !125   ; [#uses=1 type=i16] [debug line = 118:7]
  %tmp.55 = add i16 %tmp.54, %.neg1, !dbg !125    ; [#uses=1 type=i16] [debug line = 118:7]
  %tmp.56 = add i16 %tmp.55, %.neg2, !dbg !125    ; [#uses=1 type=i16] [debug line = 118:7]
  %y_weight = add i16 %tmp.56, %tmp43, !dbg !125  ; [#uses=3 type=i16] [debug line = 118:7]
  call void @llvm.dbg.value(metadata !{i16 %y_weight}, i64 0, metadata !126), !dbg !125 ; [debug line = 118:7] [debug variable = y_weight]
  %tmp.58 = icmp sgt i16 %x_weight, 0, !dbg !127  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp.59 = sub i16 0, %x_weight, !dbg !127       ; [#uses=1 type=i16] [debug line = 120:7]
  %x_weight.1 = select i1 %tmp.58, i16 %x_weight, i16 %tmp.59, !dbg !127 ; [#uses=1 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %x_weight.1}, i64 0, metadata !123), !dbg !127 ; [debug line = 120:7] [debug variable = x_weight]
  %tmp.61 = icmp sgt i16 %y_weight, 0, !dbg !127  ; [#uses=1 type=i1] [debug line = 120:7]
  %tmp.62 = sub i16 0, %y_weight, !dbg !127       ; [#uses=1 type=i16] [debug line = 120:7]
  %y_weight.1 = select i1 %tmp.61, i16 %y_weight, i16 %tmp.62, !dbg !127 ; [#uses=1 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %y_weight.1}, i64 0, metadata !126), !dbg !127 ; [debug line = 120:7] [debug variable = y_weight]
  %edge_weight = add i16 %y_weight.1, %x_weight.1, !dbg !127 ; [#uses=2 type=i16] [debug line = 120:7]
  call void @llvm.dbg.value(metadata !{i16 %edge_weight}, i64 0, metadata !128), !dbg !127 ; [debug line = 120:7] [debug variable = edge_weight]
  %tmp.65 = icmp slt i16 %edge_weight, 255, !dbg !129 ; [#uses=1 type=i1] [debug line = 122:7]
  br i1 %tmp.65, label %9, label %._crit_edge, !dbg !129 ; [debug line = 122:7]

; <label>:9                                       ; preds = %8
  %tmp.66 = trunc i16 %edge_weight to i8, !dbg !130 ; [#uses=1 type=i8] [debug line = 123:9]
  %edge_val = xor i8 %tmp.66, -1, !dbg !130       ; [#uses=1 type=i8] [debug line = 123:9]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !131), !dbg !130 ; [debug line = 123:9] [debug variable = edge_val]
  br label %._crit_edge, !dbg !130                ; [debug line = 123:9]

._crit_edge:                                      ; preds = %9, %8
  %edge_val1 = phi i8 [ %edge_val, %9 ], [ 0, %8 ] ; [#uses=2 type=i8]
  %tmp.68 = zext i8 %edge_val1 to i32, !dbg !132  ; [#uses=2 type=i32] [debug line = 127:7]
  %tmp.69 = icmp sgt i32 %tmp.68, %imaxsobelSensitivity, !dbg !132 ; [#uses=1 type=i1] [debug line = 127:7]
  br i1 %tmp.69, label %._crit_edge64, label %10, !dbg !132 ; [debug line = 127:7]

; <label>:10                                      ; preds = %._crit_edge
  %tmp.73 = icmp slt i32 %tmp.68, %iminsobelSensitivity, !dbg !133 ; [#uses=1 type=i1] [debug line = 129:12]
  %.edge_val = select i1 %tmp.73, i8 0, i8 %edge_val1, !dbg !133 ; [#uses=1 type=i8] [debug line = 129:12]
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %10, %._crit_edge
  %edge_val.2 = phi i8 [ %.edge_val, %10 ], [ -1, %._crit_edge ] ; [#uses=1 type=i8]
  %edge_val.3 = xor i8 %edge_val.2, %tmp.28, !dbg !90 ; [#uses=1 type=i8] [debug line = 132:7]
  call void @llvm.dbg.value(metadata !{i8 %edge_val.3}, i64 0, metadata !131), !dbg !90 ; [debug line = 132:7] [debug variable = edge_val]
  %tmp.74 = zext i8 %edge_val.3 to i32, !dbg !134 ; [#uses=3 type=i32] [debug line = 135:7]
  %tmp.75 = shl nuw nsw i32 %tmp.74, 8, !dbg !134 ; [#uses=1 type=i32] [debug line = 135:7]
  %tmp.76 = shl nuw nsw i32 %tmp.74, 16, !dbg !134 ; [#uses=1 type=i32] [debug line = 135:7]
  %tmp.77 = or i32 %tmp.74, -16777216, !dbg !134  ; [#uses=1 type=i32] [debug line = 135:7]
  %tmp.78 = or i32 %tmp.77, %tmp.75, !dbg !134    ; [#uses=1 type=i32] [debug line = 135:7]
  %tmp.79 = or i32 %tmp.78, %tmp.76, !dbg !134    ; [#uses=1 type=i32] [debug line = 135:7]
  store i32 %tmp.79, i32* %rgb_data_out.assign, align 4, !dbg !134 ; [debug line = 135:7]
  %rend72 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 137:5]
  call void @llvm.dbg.value(metadata !{i32 %pix_j.9}, i64 0, metadata !74), !dbg !136 ; [debug line = 111:41] [debug variable = pix_j]
  br label %7, !dbg !136                          ; [debug line = 111:41]

; <label>:11                                      ; preds = %7
  %.23.lcssa = phi i64 [ %.12.sum, %7 ]           ; [#uses=1 type=i64]
  %rgb_data_out.addr.4 = getelementptr i32* %rgb_data_out, i64 %.23.lcssa, !dbg !119 ; [#uses=1 type=i32*] [debug line = 109:5]
  store i32 0, i32* %rgb_data_out.addr.4, align 4, !dbg !137 ; [debug line = 140:5]
  br label %12, !dbg !138                         ; [debug line = 143:10]

; <label>:12                                      ; preds = %13, %11
  %pix_j.5 = phi i32 [ 0, %11 ], [ %pix_j.8, %13 ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %pix_j.5, 1920, !dbg !138 ; [#uses=1 type=i1] [debug line = 143:10]
  br i1 %exitcond5, label %14, label %13, !dbg !138 ; [debug line = 143:10]

; <label>:13                                      ; preds = %12
  %tmp.71 = sext i32 %pix_j.5 to i64, !dbg !140   ; [#uses=3 type=i64] [debug line = 144:7]
  %line_buffer.addr.11 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.71, !dbg !140 ; [#uses=2 type=i8*] [debug line = 144:7]
  %line_buffer.load.8 = load i8* %line_buffer.addr.11, align 1, !dbg !140 ; [#uses=2 type=i8] [debug line = 144:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.8) nounwind
  %line_buffer.addr.12 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.71, !dbg !140 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %line_buffer.load.8, i8* %line_buffer.addr.12, align 1, !dbg !140 ; [debug line = 144:7]
  %line_buffer.addr.13 = getelementptr inbounds [3 x [2048 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.71, !dbg !142 ; [#uses=1 type=i8*] [debug line = 145:7]
  %line_buffer.load.9 = load i8* %line_buffer.addr.13, align 1, !dbg !142 ; [#uses=2 type=i8] [debug line = 145:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.9) nounwind
  store i8 %line_buffer.load.9, i8* %line_buffer.addr.11, align 1, !dbg !142 ; [debug line = 145:7]
  %pix_j.8 = add nsw i32 %pix_j.5, 1, !dbg !143   ; [#uses=1 type=i32] [debug line = 143:36]
  call void @llvm.dbg.value(metadata !{i32 %pix_j.8}, i64 0, metadata !74), !dbg !143 ; [debug line = 143:36] [debug variable = pix_j]
  br label %12, !dbg !143                         ; [debug line = 143:36]

; <label>:14                                      ; preds = %12
  %pix_i.1 = add nsw i32 %pix_i, 1, !dbg !144     ; [#uses=1 type=i32] [debug line = 94:35]
  call void @llvm.dbg.value(metadata !{i32 %pix_i.1}, i64 0, metadata !145), !dbg !144 ; [debug line = 94:35] [debug variable = pix_i]
  %phitmp = add i64 %.12.rec, 2048, !dbg !144     ; [#uses=1 type=i64] [debug line = 94:35]
  br label %.preheader26, !dbg !144               ; [debug line = 94:35]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %.34.rec = phi i64 [ %.rec, %15 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i64]
  %.12.sum1 = add i64 %.34.rec, 2209792           ; [#uses=1 type=i64]
  %rgb_data_out.addr.2 = getelementptr i32* %rgb_data_out, i64 %.12.sum1 ; [#uses=1 type=i32*]
  %lftr.wideiv3 = trunc i64 %.34.rec to i32, !dbg !146 ; [#uses=1 type=i32] [debug line = 150:8]
  %exitcond4 = icmp eq i32 %lftr.wideiv3, 2048, !dbg !146 ; [#uses=1 type=i1] [debug line = 150:8]
  br i1 %exitcond4, label %16, label %15, !dbg !146 ; [debug line = 150:8]

; <label>:15                                      ; preds = %.preheader
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !148 ; [#uses=1 type=i32] [debug line = 150:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !150 ; [debug line = 151:1]
  store i32 0, i32* %rgb_data_out.addr.2, align 4, !dbg !151 ; [debug line = 152:2]
  %.rec = add i64 %.34.rec, 1, !dbg !152          ; [#uses=1 type=i64] [debug line = 153:5]
  %rend70 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !153 ; [#uses=0 type=i32] [debug line = 154:3]
  br label %.preheader, !dbg !154                 ; [debug line = 150:35]

; <label>:16                                      ; preds = %.preheader
  ret void, !dbg !155                             ; [debug line = 156:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=44]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=14]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls/img_process/solution/.autopilot/db/img_filters.pragma.2.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !17} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb2y", metadata !"rgb2y", metadata !"", metadata !6, i32 45, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @rgb2y, null, null, metadata !10, i32 46} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/hw/img_filters.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"img_process", metadata !"img_process", metadata !"", metadata !6, i32 52, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32, i32, i32)* @img_process, null, null, metadata !10, i32 53} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !16, metadata !16, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !24, metadata !27, metadata !28, metadata !29}
!19 = metadata !{i32 786484, i32 0, null, metadata !"line_buffer", metadata !"line_buffer", metadata !"", metadata !6, i32 43, metadata !20, i32 0, i32 1, [3 x [2048 x i8]]* @line_buffer} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 49152, i64 8, i32 0, i32 0, metadata !9, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ]
!21 = metadata !{metadata !22, metadata !23}
!22 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!23 = metadata !{i32 786465, i64 0, i64 2047}     ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !25, i32 346, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !25, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !25, i32 347, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !25, i32 348, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !30, i32 27, metadata !16, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release/_sds/vhls", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786689, metadata !5, metadata !"R", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 45, i32 35, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"G", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 45, i32 52, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"B", metadata !6, i32 50331693, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 45, i32 69, metadata !5, null}
!37 = metadata !{i32 48, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 46, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786688, metadata !38, metadata !"y", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 49, i32 3, metadata !38, null}
!41 = metadata !{i32 786689, metadata !12, metadata !"rgb_data_in", metadata !6, i32 16777268, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 52, i32 22, metadata !12, null}
!43 = metadata !{i32 786689, metadata !12, metadata !"rgb_data_out", metadata !6, i32 33554484, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 52, i32 48, metadata !12, null}
!45 = metadata !{i32 786689, metadata !12, metadata !"isobelInvert", metadata !6, i32 50331700, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 52, i32 75, metadata !12, null}
!47 = metadata !{i32 786689, metadata !12, metadata !"iminsobelSensitivity", metadata !6, i32 67108916, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 52, i32 93, metadata !12, null}
!49 = metadata !{i32 786689, metadata !12, metadata !"imaxsobelSensitivity", metadata !6, i32 83886132, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 52, i32 119, metadata !12, null}
!51 = metadata !{i32 53, i32 2, metadata !52, null}
!52 = metadata !{i32 786443, metadata !12, i32 53, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 53, i32 47, metadata !52, null}
!54 = metadata !{i32 54, i32 1, metadata !52, null}
!55 = metadata !{i32 68, i32 8, metadata !56, null}
!56 = metadata !{i32 786443, metadata !52, i32 68, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 68, i32 45, metadata !58, null}
!58 = metadata !{i32 786443, metadata !56, i32 68, i32 44, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 69, i32 1, metadata !58, null}
!60 = metadata !{i32 70, i32 2, metadata !58, null}
!61 = metadata !{i32 786688, metadata !52, metadata !"pixel", metadata !6, i32 65, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_volatile_type ]
!63 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 71, i32 5, metadata !58, null}
!65 = metadata !{i32 786688, metadata !52, metadata !"in_B", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 72, i32 5, metadata !58, null}
!67 = metadata !{i32 786688, metadata !52, metadata !"in_G", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 73, i32 5, metadata !58, null}
!69 = metadata !{i32 786688, metadata !52, metadata !"in_R", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 74, i32 29, metadata !58, null}
!71 = metadata !{i32 75, i32 5, metadata !58, null}
!72 = metadata !{i32 76, i32 3, metadata !58, null}
!73 = metadata !{i32 68, i32 35, metadata !56, null}
!74 = metadata !{i32 786688, metadata !52, metadata !"pix_j", metadata !6, i32 64, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 77, i32 8, metadata !76, null}
!76 = metadata !{i32 786443, metadata !52, i32 77, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 77, i32 45, metadata !78, null}
!78 = metadata !{i32 786443, metadata !76, i32 77, i32 44, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 78, i32 1, metadata !78, null}
!80 = metadata !{i32 79, i32 2, metadata !78, null}
!81 = metadata !{i32 80, i32 5, metadata !78, null}
!82 = metadata !{i32 81, i32 5, metadata !78, null}
!83 = metadata !{i32 82, i32 5, metadata !78, null}
!84 = metadata !{i32 83, i32 29, metadata !78, null}
!85 = metadata !{i32 84, i32 5, metadata !78, null}
!86 = metadata !{i32 85, i32 3, metadata !78, null}
!87 = metadata !{i32 77, i32 35, metadata !76, null}
!88 = metadata !{i32 88, i32 8, metadata !89, null}
!89 = metadata !{i32 786443, metadata !52, i32 88, i32 3, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 132, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 111, i32 50, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !93, i32 111, i32 5, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 94, i32 44, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !52, i32 94, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 88, i32 45, metadata !96, null}
!96 = metadata !{i32 786443, metadata !89, i32 88, i32 44, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 89, i32 1, metadata !96, null}
!98 = metadata !{i32 90, i32 2, metadata !96, null}
!99 = metadata !{i32 91, i32 5, metadata !96, null}
!100 = metadata !{i32 92, i32 3, metadata !96, null}
!101 = metadata !{i32 88, i32 35, metadata !89, null}
!102 = metadata !{i32 141, i32 5, metadata !93, null}
!103 = metadata !{i32 94, i32 8, metadata !94, null}
!104 = metadata !{i32 97, i32 10, metadata !105, null}
!105 = metadata !{i32 786443, metadata !93, i32 97, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 97, i32 47, metadata !107, null}
!107 = metadata !{i32 786443, metadata !105, i32 97, i32 46, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 98, i32 1, metadata !107, null}
!109 = metadata !{i32 99, i32 2, metadata !107, null}
!110 = metadata !{i32 100, i32 7, metadata !107, null}
!111 = metadata !{i32 101, i32 7, metadata !107, null}
!112 = metadata !{i32 102, i32 7, metadata !107, null}
!113 = metadata !{i32 103, i32 31, metadata !107, null}
!114 = metadata !{i32 104, i32 7, metadata !107, null}
!115 = metadata !{i32 105, i32 5, metadata !107, null}
!116 = metadata !{i32 97, i32 37, metadata !105, null}
!117 = metadata !{i32 108, i32 5, metadata !93, null}
!118 = metadata !{i32 111, i32 10, metadata !92, null}
!119 = metadata !{i32 109, i32 5, metadata !93, null}
!120 = metadata !{i32 111, i32 51, metadata !91, null}
!121 = metadata !{i32 112, i32 1, metadata !91, null}
!122 = metadata !{i32 117, i32 7, metadata !91, null}
!123 = metadata !{i32 786688, metadata !52, metadata !"x_weight", metadata !6, i32 57, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!125 = metadata !{i32 118, i32 7, metadata !91, null}
!126 = metadata !{i32 786688, metadata !52, metadata !"y_weight", metadata !6, i32 58, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 120, i32 7, metadata !91, null}
!128 = metadata !{i32 786688, metadata !52, metadata !"edge_weight", metadata !6, i32 59, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 122, i32 7, metadata !91, null}
!130 = metadata !{i32 123, i32 9, metadata !91, null}
!131 = metadata !{i32 786688, metadata !52, metadata !"edge_val", metadata !6, i32 60, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 127, i32 7, metadata !91, null}
!133 = metadata !{i32 129, i32 12, metadata !91, null}
!134 = metadata !{i32 135, i32 7, metadata !91, null}
!135 = metadata !{i32 137, i32 5, metadata !91, null}
!136 = metadata !{i32 111, i32 41, metadata !92, null}
!137 = metadata !{i32 140, i32 5, metadata !93, null}
!138 = metadata !{i32 143, i32 10, metadata !139, null}
!139 = metadata !{i32 786443, metadata !93, i32 143, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 144, i32 7, metadata !141, null}
!141 = metadata !{i32 786443, metadata !139, i32 143, i32 45, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 145, i32 7, metadata !141, null}
!143 = metadata !{i32 143, i32 36, metadata !139, null}
!144 = metadata !{i32 94, i32 35, metadata !94, null}
!145 = metadata !{i32 786688, metadata !52, metadata !"pix_i", metadata !6, i32 64, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 150, i32 8, metadata !147, null}
!147 = metadata !{i32 786443, metadata !52, i32 150, i32 3, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 150, i32 45, metadata !149, null}
!149 = metadata !{i32 786443, metadata !147, i32 150, i32 44, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 151, i32 1, metadata !149, null}
!151 = metadata !{i32 152, i32 2, metadata !149, null}
!152 = metadata !{i32 153, i32 5, metadata !149, null}
!153 = metadata !{i32 154, i32 3, metadata !149, null}
!154 = metadata !{i32 150, i32 35, metadata !147, null}
!155 = metadata !{i32 156, i32 1, metadata !52, null}
