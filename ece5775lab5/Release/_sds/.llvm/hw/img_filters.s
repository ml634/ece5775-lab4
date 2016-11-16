; ModuleID = '/home/student/ml634/ece5775lab5/hw/img_filters.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@yc_data_prev = common global [2073600 x i16] zeroinitializer, align 2
@yc_data_in = common global [2073600 x i16] zeroinitializer, align 2
@sobel_curr = common global [2073600 x i8] zeroinitializer, align 1
@yc_out_tmp1 = common global [2073600 x i16] zeroinitializer, align 2
@sobel_prev = common global [2073600 x i8] zeroinitializer, align 1
@yc_out_tmp2 = common global [2073600 x i16] zeroinitializer, align 2
@motion_image_tmp1 = common global [2073600 x i8] zeroinitializer, align 1
@motion_image_tmp2 = common global [2073600 x i8] zeroinitializer, align 1
@yc_out_tmp3 = common global [2073600 x i16] zeroinitializer, align 2
@yc_out_tmp4 = common global [2073600 x i16] zeroinitializer, align 2

; Function Attrs: nounwind
define void @img_process(i32* %rgb_data_prev, i32* %rgb_data_in, i32* %rgb_data_out, i32 %param0, i32 %param1, i32 %param2) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pass_through = alloca i8, align 1
  %threshold = alloca i8, align 1
  store i32* %rgb_data_prev, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !58), !dbg !59
  store i32* %rgb_data_in, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !60), !dbg !61
  store i32* %rgb_data_out, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !62), !dbg !63
  store i32 %param0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !64), !dbg !65
  store i32 %param1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !66), !dbg !67
  store i32 %param2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !68), !dbg !69
  call void @llvm.dbg.declare(metadata !{i8* %pass_through}, metadata !70), !dbg !71
  call void @llvm.dbg.declare(metadata !{i8* %threshold}, metadata !72), !dbg !73
  store i8 100, i8* %threshold, align 1, !dbg !74
  store i8 0, i8* %pass_through, align 1, !dbg !75
  %7 = load i32** %1, align 4, !dbg !76
  call void @rgb_pad2ycbcr(i32* %7, i16* getelementptr inbounds ([2073600 x i16]* @yc_data_prev, i32 0, i32 0)), !dbg !76
  %8 = load i32** %2, align 4, !dbg !77
  call void @rgb_pad2ycbcr(i32* %8, i16* getelementptr inbounds ([2073600 x i16]* @yc_data_in, i32 0, i32 0)), !dbg !77
  call void @sobel_filter_pass(i16* getelementptr inbounds ([2073600 x i16]* @yc_data_in, i32 0, i32 0), i8* getelementptr inbounds ([2073600 x i8]* @sobel_curr, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp1, i32 0, i32 0)), !dbg !78
  call void @sobel_filter(i16* getelementptr inbounds ([2073600 x i16]* @yc_data_prev, i32 0, i32 0), i8* getelementptr inbounds ([2073600 x i8]* @sobel_prev, i32 0, i32 0)), !dbg !79
  call void @diff_image(i8* getelementptr inbounds ([2073600 x i8]* @sobel_curr, i32 0, i32 0), i8* getelementptr inbounds ([2073600 x i8]* @sobel_prev, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp1, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp2, i32 0, i32 0), i8* getelementptr inbounds ([2073600 x i8]* @motion_image_tmp1, i32 0, i32 0)), !dbg !80
  %9 = load i8* %threshold, align 1, !dbg !81
  call void @median_char_filter_pass(i8 zeroext %9, i8* getelementptr inbounds ([2073600 x i8]* @motion_image_tmp1, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp2, i32 0, i32 0), i8* getelementptr inbounds ([2073600 x i8]* @motion_image_tmp2, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp3, i32 0, i32 0)), !dbg !81
  %10 = load i8* %pass_through, align 1, !dbg !82
  call void @combo_image(i8 zeroext %10, i8* getelementptr inbounds ([2073600 x i8]* @motion_image_tmp2, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp3, i32 0, i32 0), i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp4, i32 0, i32 0)), !dbg !82
  %11 = load i32** %3, align 4, !dbg !83
  call void @ycbcr2rgb_pad(i16* getelementptr inbounds ([2073600 x i16]* @yc_out_tmp4, i32 0, i32 0), i32* %11), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @rgb_pad2ycbcr(i32*, i16*) #2

declare void @sobel_filter_pass(i16*, i8*, i16*) #2

declare void @sobel_filter(i16*, i8*) #2

declare void @diff_image(i8*, i8*, i16*, i16*, i8*) #2

declare void @median_char_filter_pass(i8 zeroext, i8*, i16*, i8*, i16*) #2

declare void @combo_image(i8 zeroext, i8*, i16*, i16*) #2

declare void @ycbcr2rgb_pad(i16*, i32*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!xidane.function_declaration_filename = !{!28, !44, !30, !45, !32, !45, !34, !45, !36, !45, !38, !45, !40, !45, !42, !45}
!xidane.ExternC = !{!28, !30, !32, !34, !36, !38, !40, !42}
!xidane.function_argument_annotation = !{!30, !46, !32, !47, !34, !48, !36, !49, !38, !50, !40, !51, !42, !52}
!llvm.module.flags = !{!53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !11, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/img_filters.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"img_process", metadata !"img_process", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*, i32, i32, i32)* @img_process, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [img_process]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !10, metadata !10, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{metadata !12, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !25, metadata !26, metadata !27}
!12 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_prev", metadata !"yc_data_prev", metadata !"", metadata !5, i32 37, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_data_prev, null} ; [ DW_TAG_variable ] [yc_data_prev] [line 37] [def]
!13 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 33177600, i64 16, i32 0, i32 0, metadata !14, metadata !15, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 33177600, align 16, offset 0] [from unsigned short]
!14 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786465, i64 0, i64 2073600}  ; [ DW_TAG_subrange_type ] [0, 2073599]
!17 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_in", metadata !"yc_data_in", metadata !"", metadata !5, i32 37, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_data_in, null} ; [ DW_TAG_variable ] [yc_data_in] [line 37] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"yc_out_tmp1", metadata !"yc_out_tmp1", metadata !"", metadata !5, i32 38, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_out_tmp1, null} ; [ DW_TAG_variable ] [yc_out_tmp1] [line 38] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"yc_out_tmp2", metadata !"yc_out_tmp2", metadata !"", metadata !5, i32 38, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_out_tmp2, null} ; [ DW_TAG_variable ] [yc_out_tmp2] [line 38] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"yc_out_tmp3", metadata !"yc_out_tmp3", metadata !"", metadata !5, i32 39, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_out_tmp3, null} ; [ DW_TAG_variable ] [yc_out_tmp3] [line 39] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"yc_out_tmp4", metadata !"yc_out_tmp4", metadata !"", metadata !5, i32 39, metadata !13, i32 0, i32 1, [2073600 x i16]* @yc_out_tmp4, null} ; [ DW_TAG_variable ] [yc_out_tmp4] [line 39] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"sobel_curr", metadata !"sobel_curr", metadata !"", metadata !5, i32 40, metadata !23, i32 0, i32 1, [2073600 x i8]* @sobel_curr, null} ; [ DW_TAG_variable ] [sobel_curr] [line 40] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16588800, i64 8, i32 0, i32 0, metadata !24, metadata !15, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16588800, align 8, offset 0] [from unsigned char]
!24 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sobel_prev", metadata !"sobel_prev", metadata !"", metadata !5, i32 40, metadata !23, i32 0, i32 1, [2073600 x i8]* @sobel_prev, null} ; [ DW_TAG_variable ] [sobel_prev] [line 40] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"motion_image_tmp1", metadata !"motion_image_tmp1", metadata !"", metadata !5, i32 41, metadata !23, i32 0, i32 1, [2073600 x i8]* @motion_image_tmp1, null} ; [ DW_TAG_variable ] [motion_image_tmp1] [line 41] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"motion_image_tmp2", metadata !"motion_image_tmp2", metadata !"", metadata !5, i32 41, metadata !23, i32 0, i32 1, [2073600 x i8]* @motion_image_tmp2, null} ; [ DW_TAG_variable ] [motion_image_tmp2] [line 41] [def]
!28 = metadata !{void (i32*, i32*, i32*, i32, i32, i32)* @img_process}
!29 = metadata !{metadata !"void.unsigned int *.1.unsigned int *.1.unsigned int *.1.int.0.int.0.int.0"}
!30 = metadata !{void (i32*, i16*)* @rgb_pad2ycbcr}
!31 = metadata !{metadata !"void.unsigned int [2211840].1.unsigned short [2073600].1"}
!32 = metadata !{void (i16*, i8*, i16*)* @sobel_filter_pass}
!33 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned char [2073600].1.unsigned short [2073600].1"}
!34 = metadata !{void (i16*, i8*)* @sobel_filter}
!35 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned char [2073600].1"}
!36 = metadata !{void (i8*, i8*, i16*, i16*, i8*)* @diff_image}
!37 = metadata !{metadata !"void.unsigned char [2073600].1.unsigned char [2073600].1.unsigned short [2073600].1.unsigned short [2073600].1.unsigned char [2073600].1"}
!38 = metadata !{void (i8, i8*, i16*, i8*, i16*)* @median_char_filter_pass}
!39 = metadata !{metadata !"void.char.0.unsigned char [2073600].1.unsigned short [2073600].1.unsigned char [2073600].1.unsigned short [2073600].1"}
!40 = metadata !{void (i8, i8*, i16*, i16*)* @combo_image}
!41 = metadata !{metadata !"void.char.0.unsigned char [2073600].1.unsigned short [2073600].1.unsigned short [2073600].1"}
!42 = metadata !{void (i16*, i32*)* @ycbcr2rgb_pad}
!43 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned int [2211840].1"}
!44 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/img_filters.c"}
!45 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!46 = metadata !{metadata !"rgb_data_in,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_data_out,,,,,,,, "}
!47 = metadata !{metadata !"inter_pix,,,,,,,, original_pix,,,,,,,, output_edge,,,,,,,, "}
!48 = metadata !{metadata !"inter_pix,,,,,,,, output_edge,,,,,,,, "}
!49 = metadata !{metadata !"current_pix,,,,,,,, motion_image,,,,,,,, original,,,,,,,, original_output,,,,,,,, previous_pix,,,,,,,, "}
!50 = metadata !{metadata !"input_edge,,,,,,,, input_pix,,,,,,,, median_pix,,,,,,,, original_pix,,,,,,,, "}
!51 = metadata !{metadata !"motion_image,,,,,,,, original,,,,,,,, output_image,,,,,,,, "}
!52 = metadata !{metadata !"rgb_out,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_in,,,,,,,, "}
!53 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!54 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!55 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!56 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!57 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!58 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_prev", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_prev] [line 42]
!59 = metadata !{i32 42, i32 32, metadata !4, null}
!60 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_in", metadata !5, i32 33554474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_in] [line 42]
!61 = metadata !{i32 42, i32 61, metadata !4, null}
!62 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_out", metadata !5, i32 50331690, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_out] [line 42]
!63 = metadata !{i32 42, i32 88, metadata !4, null}
!64 = metadata !{i32 786689, metadata !4, metadata !"param0", metadata !5, i32 67108906, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [param0] [line 42]
!65 = metadata !{i32 42, i32 106, metadata !4, null}
!66 = metadata !{i32 786689, metadata !4, metadata !"param1", metadata !5, i32 83886122, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [param1] [line 42]
!67 = metadata !{i32 42, i32 118, metadata !4, null}
!68 = metadata !{i32 786689, metadata !4, metadata !"param2", metadata !5, i32 100663338, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [param2] [line 42]
!69 = metadata !{i32 42, i32 130, metadata !4, null}
!70 = metadata !{i32 786688, metadata !4, metadata !"pass_through", metadata !5, i32 44, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pass_through] [line 44]
!71 = metadata !{i32 44, i32 19, metadata !4, null}
!72 = metadata !{i32 786688, metadata !4, metadata !"threshold", metadata !5, i32 45, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threshold] [line 45]
!73 = metadata !{i32 45, i32 19, metadata !4, null}
!74 = metadata !{i32 45, i32 5, metadata !4, null}
!75 = metadata !{i32 46, i32 5, metadata !4, null}
!76 = metadata !{i32 47, i32 5, metadata !4, null}
!77 = metadata !{i32 48, i32 5, metadata !4, null}
!78 = metadata !{i32 50, i32 5, metadata !4, null}
!79 = metadata !{i32 51, i32 5, metadata !4, null}
!80 = metadata !{i32 53, i32 5, metadata !4, null}
!81 = metadata !{i32 55, i32 5, metadata !4, null}
!82 = metadata !{i32 56, i32 5, metadata !4, null}
!83 = metadata !{i32 57, i32 5, metadata !4, null}
!84 = metadata !{i32 58, i32 1, metadata !4, null} ; [ DW_TAG_imported_module ]
