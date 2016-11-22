; ModuleID = '/home/student/ml634/ece5775lab5/hw/img_filters.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@yc_data_red = common global [2073600 x i16] zeroinitializer, align 2
@yc_data_blue = common global [2073600 x i16] zeroinitializer, align 2
@yc_data_combined = common global [2073600 x i16] zeroinitializer, align 2
@yc_data_green = common global [2073600 x i16] zeroinitializer, align 2
@blueCOM = common global [2 x i32] zeroinitializer, align 4
@redCOM = common global [2 x i32] zeroinitializer, align 4
@blueCorners = common global [8 x i32] zeroinitializer, align 4
@redCorners = common global [8 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @img_process(i32* %rgb_data_in, i32* %rgb_data_out) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32* %rgb_data_in, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !44), !dbg !45
  store i32* %rgb_data_out, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !46), !dbg !47
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !48), !dbg !50
  store i32 0, i32* %i, align 4, !dbg !51
  %3 = load i32** %1, align 4, !dbg !52
  call void @rgb_pad2ycbcr(i32* %3, i16* getelementptr inbounds ([2073600 x i16]* @yc_data_red, i32 0, i32 0), i8 zeroext 114), !dbg !52
  %4 = load i32** %1, align 4, !dbg !53
  call void @rgb_pad2ycbcr(i32* %4, i16* getelementptr inbounds ([2073600 x i16]* @yc_data_blue, i32 0, i32 0), i8 zeroext 98), !dbg !53
  store i32 0, i32* %i, align 4, !dbg !54
  br label %5, !dbg !54

; <label>:5                                       ; preds = %21, %0
  %6 = load i32* %i, align 4, !dbg !56
  %7 = icmp slt i32 %6, 2073600, !dbg !56
  br i1 %7, label %8, label %24, !dbg !56

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4, !dbg !59
  %10 = getelementptr inbounds [2073600 x i16]* @yc_data_red, i32 0, i32 %9, !dbg !59
  %11 = load i16* %10, align 2, !dbg !59
  %12 = zext i16 %11 to i32, !dbg !59
  %13 = load i32* %i, align 4, !dbg !59
  %14 = getelementptr inbounds [2073600 x i16]* @yc_data_blue, i32 0, i32 %13, !dbg !59
  %15 = load i16* %14, align 2, !dbg !59
  %16 = zext i16 %15 to i32, !dbg !59
  %17 = or i32 %12, %16, !dbg !59
  %18 = trunc i32 %17 to i16, !dbg !59
  %19 = load i32* %i, align 4, !dbg !59
  %20 = getelementptr inbounds [2073600 x i16]* @yc_data_combined, i32 0, i32 %19, !dbg !59
  store i16 %18, i16* %20, align 2, !dbg !59
  br label %21, !dbg !61

; <label>:21                                      ; preds = %8
  %22 = load i32* %i, align 4, !dbg !62
  %23 = add nsw i32 %22, 1, !dbg !62
  store i32 %23, i32* %i, align 4, !dbg !62
  br label %5, !dbg !62

; <label>:24                                      ; preds = %5
  %25 = load i32** %2, align 4, !dbg !63
  call void @ycbcr2rgb_pad(i16* getelementptr inbounds ([2073600 x i16]* @yc_data_combined, i32 0, i32 0), i32* %25), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @rgb_pad2ycbcr(i32*, i16*, i8 zeroext) #2

declare void @ycbcr2rgb_pad(i16*, i32*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!29, !30, !31, !32, !33, !34}
!xidane.function_declaration_filename = !{!29, !35, !31, !36, !33, !36}
!xidane.ExternC = !{!29, !31, !33}
!xidane.function_argument_annotation = !{!31, !37, !33, !38}
!llvm.module.flags = !{!39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !10, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/img_filters.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"img_process", metadata !"img_process", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @img_process, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [img_process]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{metadata !11, metadata !16, metadata !17, metadata !18, metadata !19, metadata !23, metadata !24, metadata !28}
!11 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_blue", metadata !"yc_data_blue", metadata !"", metadata !5, i32 38, metadata !12, i32 0, i32 1, [2073600 x i16]* @yc_data_blue, null} ; [ DW_TAG_variable ] [yc_data_blue] [line 38] [def]
!12 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 33177600, i64 16, i32 0, i32 0, metadata !13, metadata !14, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 33177600, align 16, offset 0] [from unsigned short]
!13 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 2073600}  ; [ DW_TAG_subrange_type ] [0, 2073599]
!16 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_red", metadata !"yc_data_red", metadata !"", metadata !5, i32 39, metadata !12, i32 0, i32 1, [2073600 x i16]* @yc_data_red, null} ; [ DW_TAG_variable ] [yc_data_red] [line 39] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_green", metadata !"yc_data_green", metadata !"", metadata !5, i32 40, metadata !12, i32 0, i32 1, [2073600 x i16]* @yc_data_green, null} ; [ DW_TAG_variable ] [yc_data_green] [line 40] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"yc_data_combined", metadata !"yc_data_combined", metadata !"", metadata !5, i32 42, metadata !12, i32 0, i32 1, [2073600 x i16]* @yc_data_combined, null} ; [ DW_TAG_variable ] [yc_data_combined] [line 42] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"blueCOM", metadata !"blueCOM", metadata !"", metadata !5, i32 45, metadata !20, i32 0, i32 1, [2 x i32]* @blueCOM, null} ; [ DW_TAG_variable ] [blueCOM] [line 45] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !9, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from unsigned int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!23 = metadata !{i32 786484, i32 0, null, metadata !"redCOM", metadata !"redCOM", metadata !"", metadata !5, i32 46, metadata !20, i32 0, i32 1, [2 x i32]* @redCOM, null} ; [ DW_TAG_variable ] [redCOM] [line 46] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"blueCorners", metadata !"blueCorners", metadata !"", metadata !5, i32 49, metadata !25, i32 0, i32 1, [8 x i32]* @blueCorners, null} ; [ DW_TAG_variable ] [blueCorners] [line 49] [def]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !9, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!28 = metadata !{i32 786484, i32 0, null, metadata !"redCorners", metadata !"redCorners", metadata !"", metadata !5, i32 50, metadata !25, i32 0, i32 1, [8 x i32]* @redCorners, null} ; [ DW_TAG_variable ] [redCorners] [line 50] [def]
!29 = metadata !{void (i32*, i32*)* @img_process}
!30 = metadata !{metadata !"void.unsigned int *.1.unsigned int *.1"}
!31 = metadata !{void (i32*, i16*, i8)* @rgb_pad2ycbcr}
!32 = metadata !{metadata !"void.unsigned int [2211840].1.unsigned short [2073600].1.char.0"}
!33 = metadata !{void (i16*, i32*)* @ycbcr2rgb_pad}
!34 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned int [2211840].1"}
!35 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/img_filters.c"}
!36 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!37 = metadata !{metadata !"rgb_data_in,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_data_out,,,,,,,, "}
!38 = metadata !{metadata !"rgb_out,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_in,,,,,,,, "}
!39 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!40 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!41 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!42 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!43 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!44 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_in", metadata !5, i32 16777269, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_in] [line 53]
!45 = metadata !{i32 53, i32 33, metadata !4, null}
!46 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_out", metadata !5, i32 33554485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_out] [line 53]
!47 = metadata !{i32 53, i32 60, metadata !4, null}
!48 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 56, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!49 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!50 = metadata !{i32 56, i32 8, metadata !4, null}
!51 = metadata !{i32 56, i32 4, metadata !4, null}
!52 = metadata !{i32 58, i32 5, metadata !4, null} ; [ DW_TAG_imported_module ]
!53 = metadata !{i32 59, i32 5, metadata !4, null}
!54 = metadata !{i32 63, i32 7, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!56 = metadata !{i32 63, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 63, i32 7, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!58 = metadata !{i32 786443, metadata !1, metadata !55, i32 63, i32 7, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!59 = metadata !{i32 64, i32 3, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !55, i32 63, i32 40, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/img_filters.c]
!61 = metadata !{i32 65, i32 2, metadata !60, null}
!62 = metadata !{i32 63, i32 35, metadata !55, null}
!63 = metadata !{i32 67, i32 5, metadata !4, null}
!64 = metadata !{i32 69, i32 1, metadata !4, null}
