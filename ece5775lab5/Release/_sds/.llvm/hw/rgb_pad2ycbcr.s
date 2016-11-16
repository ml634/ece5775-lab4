; ModuleID = '/home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @rgb_pad2ycbcr(i32* %rgb_data_in, i16* %yc_data_out) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i16*, align 4
  %in_R = alloca i8, align 1
  %in_G = alloca i8, align 1
  %in_B = alloca i8, align 1
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %u = alloca i16, align 2
  %v = alloca i16, align 2
  %y = alloca i16, align 2
  %pixel_out0 = alloca i16, align 2
  %pixel_out1 = alloca i16, align 2
  %pixel = alloca i32, align 4
  %pixel0 = alloca i32, align 4
  store i32* %rgb_data_in, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !21), !dbg !22
  store i16* %yc_data_out, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata !{i8* %in_R}, metadata !25), !dbg !27
  call void @llvm.dbg.declare(metadata !{i8* %in_G}, metadata !28), !dbg !29
  call void @llvm.dbg.declare(metadata !{i8* %in_B}, metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !32), !dbg !34
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !35), !dbg !36
  store i32 0, i32* %row, align 4, !dbg !37
  br label %3, !dbg !37

; <label>:3                                       ; preds = %129, %0
  %4 = load i32* %row, align 4, !dbg !39
  %5 = icmp slt i32 %4, 1080, !dbg !39
  br i1 %5, label %6, label %132, !dbg !39

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !42
  br label %7, !dbg !42

; <label>:7                                       ; preds = %110, %6
  %8 = load i32* %col, align 4, !dbg !45
  %9 = icmp slt i32 %8, 1920, !dbg !45
  br i1 %9, label %10, label %113, !dbg !45

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i16* %u}, metadata !48), !dbg !50
  store i16 0, i16* %u, align 2, !dbg !51
  call void @llvm.dbg.declare(metadata !{i16* %v}, metadata !52), !dbg !53
  store i16 0, i16* %v, align 2, !dbg !54
  call void @llvm.dbg.declare(metadata !{i16* %y}, metadata !55), !dbg !56
  store i16 0, i16* %y, align 2, !dbg !57
  call void @llvm.dbg.declare(metadata !{i16* %pixel_out0}, metadata !58), !dbg !59
  call void @llvm.dbg.declare(metadata !{i16* %pixel_out1}, metadata !60), !dbg !61
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !62), !dbg !63
  %11 = load i32* %row, align 4, !dbg !64
  %12 = mul nsw i32 %11, 2048, !dbg !64
  %13 = load i32* %col, align 4, !dbg !64
  %14 = add nsw i32 %12, %13, !dbg !64
  %15 = load i32** %1, align 4, !dbg !64
  %16 = getelementptr inbounds i32* %15, i32 %14, !dbg !64
  %17 = load i32* %16, align 4, !dbg !64
  store i32 %17, i32* %pixel, align 4, !dbg !64
  %18 = load i32* %pixel, align 4, !dbg !65
  %19 = and i32 %18, 255, !dbg !65
  %20 = trunc i32 %19 to i8, !dbg !65
  store i8 %20, i8* %in_B, align 1, !dbg !65
  %21 = load i32* %pixel, align 4, !dbg !66
  %22 = lshr i32 %21, 8, !dbg !66
  %23 = and i32 %22, 255, !dbg !66
  %24 = trunc i32 %23 to i8, !dbg !66
  store i8 %24, i8* %in_G, align 1, !dbg !66
  %25 = load i32* %pixel, align 4, !dbg !67
  %26 = lshr i32 %25, 16, !dbg !67
  %27 = and i32 %26, 255, !dbg !67
  %28 = trunc i32 %27 to i8, !dbg !67
  store i8 %28, i8* %in_R, align 1, !dbg !67
  %29 = load i8* %in_R, align 1, !dbg !68
  %30 = zext i8 %29 to i32, !dbg !68
  %31 = mul nsw i32 66, %30, !dbg !68
  %32 = load i8* %in_G, align 1, !dbg !68
  %33 = zext i8 %32 to i32, !dbg !68
  %34 = mul nsw i32 129, %33, !dbg !68
  %35 = add nsw i32 %31, %34, !dbg !68
  %36 = load i8* %in_B, align 1, !dbg !68
  %37 = zext i8 %36 to i32, !dbg !68
  %38 = mul nsw i32 25, %37, !dbg !68
  %39 = add nsw i32 %35, %38, !dbg !68
  %40 = add nsw i32 %39, 128, !dbg !68
  %41 = ashr i32 %40, 8, !dbg !68
  %42 = add nsw i32 %41, 16, !dbg !68
  %43 = trunc i32 %42 to i16, !dbg !68
  store i16 %43, i16* %y, align 2, !dbg !68
  %44 = load i8* %in_B, align 1, !dbg !69
  %45 = zext i8 %44 to i32, !dbg !69
  %46 = mul nsw i32 112, %45, !dbg !69
  %47 = load i8* %in_G, align 1, !dbg !69
  %48 = zext i8 %47 to i32, !dbg !69
  %49 = mul nsw i32 74, %48, !dbg !69
  %50 = sub nsw i32 %46, %49, !dbg !69
  %51 = load i8* %in_R, align 1, !dbg !69
  %52 = zext i8 %51 to i32, !dbg !69
  %53 = mul nsw i32 38, %52, !dbg !69
  %54 = sub nsw i32 %50, %53, !dbg !69
  %55 = add nsw i32 %54, 128, !dbg !69
  %56 = trunc i32 %55 to i16, !dbg !69
  store i16 %56, i16* %u, align 2, !dbg !69
  %57 = load i8* %in_R, align 1, !dbg !70
  %58 = zext i8 %57 to i32, !dbg !70
  %59 = mul nsw i32 112, %58, !dbg !70
  %60 = load i8* %in_G, align 1, !dbg !70
  %61 = zext i8 %60 to i32, !dbg !70
  %62 = mul nsw i32 94, %61, !dbg !70
  %63 = sub nsw i32 %59, %62, !dbg !70
  %64 = load i8* %in_B, align 1, !dbg !70
  %65 = zext i8 %64 to i32, !dbg !70
  %66 = mul nsw i32 18, %65, !dbg !70
  %67 = sub nsw i32 %63, %66, !dbg !70
  %68 = add nsw i32 %67, 128, !dbg !70
  %69 = trunc i32 %68 to i16, !dbg !70
  store i16 %69, i16* %v, align 2, !dbg !70
  %70 = load i16* %y, align 2, !dbg !71
  %71 = zext i16 %70 to i32, !dbg !71
  %72 = shl i32 %71, 8, !dbg !71
  %73 = and i32 %72, 65280, !dbg !71
  %74 = load i16* %u, align 2, !dbg !71
  %75 = zext i16 %74 to i32, !dbg !71
  %76 = ashr i32 %75, 8, !dbg !71
  %77 = add nsw i32 %76, 128, !dbg !71
  %78 = and i32 %77, 255, !dbg !71
  %79 = or i32 %73, %78, !dbg !71
  %80 = trunc i32 %79 to i16, !dbg !71
  store i16 %80, i16* %pixel_out0, align 2, !dbg !71
  %81 = load i16* %y, align 2, !dbg !72
  %82 = zext i16 %81 to i32, !dbg !72
  %83 = shl i32 %82, 8, !dbg !72
  %84 = and i32 %83, 65280, !dbg !72
  %85 = load i16* %v, align 2, !dbg !72
  %86 = zext i16 %85 to i32, !dbg !72
  %87 = ashr i32 %86, 8, !dbg !72
  %88 = add nsw i32 %87, 128, !dbg !72
  %89 = and i32 %88, 255, !dbg !72
  %90 = or i32 %84, %89, !dbg !72
  %91 = trunc i32 %90 to i16, !dbg !72
  store i16 %91, i16* %pixel_out1, align 2, !dbg !72
  %92 = load i32* %col, align 4, !dbg !73
  %93 = srem i32 %92, 2, !dbg !73
  %94 = icmp eq i32 %93, 0, !dbg !73
  br i1 %94, label %95, label %98, !dbg !73

; <label>:95                                      ; preds = %10
  %96 = load i16* %pixel_out0, align 2, !dbg !74
  %97 = zext i16 %96 to i32, !dbg !74
  br label %101, !dbg !74

; <label>:98                                      ; preds = %10
  %99 = load i16* %pixel_out1, align 2, !dbg !76
  %100 = zext i16 %99 to i32, !dbg !76
  br label %101, !dbg !76

; <label>:101                                     ; preds = %98, %95
  %102 = phi i32 [ %97, %95 ], [ %100, %98 ], !dbg !73
  %103 = trunc i32 %102 to i16, !dbg !78
  %104 = load i32* %row, align 4, !dbg !78
  %105 = mul nsw i32 %104, 1920, !dbg !78
  %106 = load i32* %col, align 4, !dbg !78
  %107 = add nsw i32 %105, %106, !dbg !78
  %108 = load i16** %2, align 4, !dbg !78
  %109 = getelementptr inbounds i16* %108, i32 %107, !dbg !78
  store i16 %103, i16* %109, align 2, !dbg !78
  br label %110, !dbg !81

; <label>:110                                     ; preds = %101
  %111 = load i32* %col, align 4, !dbg !82
  %112 = add nsw i32 %111, 1, !dbg !82
  store i32 %112, i32* %col, align 4, !dbg !82
  br label %7, !dbg !82

; <label>:113                                     ; preds = %7
  store i32 1920, i32* %col, align 4, !dbg !83
  br label %114, !dbg !83

; <label>:114                                     ; preds = %125, %113
  %115 = load i32* %col, align 4, !dbg !85
  %116 = icmp slt i32 %115, 2048, !dbg !85
  br i1 %116, label %117, label %128, !dbg !85

; <label>:117                                     ; preds = %114
  call void @llvm.dbg.declare(metadata !{i32* %pixel0}, metadata !88), !dbg !91
  %118 = load i32* %row, align 4, !dbg !92
  %119 = mul nsw i32 %118, 2048, !dbg !92
  %120 = load i32* %col, align 4, !dbg !92
  %121 = add nsw i32 %119, %120, !dbg !92
  %122 = load i32** %1, align 4, !dbg !92
  %123 = getelementptr inbounds i32* %122, i32 %121, !dbg !92
  %124 = load i32* %123, align 4, !dbg !92
  store volatile i32 %124, i32* %pixel0, align 4, !dbg !92
  br label %125, !dbg !93

; <label>:125                                     ; preds = %117
  %126 = load i32* %col, align 4, !dbg !94
  %127 = add nsw i32 %126, 1, !dbg !94
  store i32 %127, i32* %col, align 4, !dbg !94
  br label %114, !dbg !94

; <label>:128                                     ; preds = %114
  br label %129, !dbg !95

; <label>:129                                     ; preds = %128
  %130 = load i32* %row, align 4, !dbg !96
  %131 = add nsw i32 %130, 1, !dbg !96
  store i32 %131, i32* %row, align 4, !dbg !96
  br label %3, !dbg !96

; <label>:132                                     ; preds = %3
  ret void, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!12, !13}
!xidane.function_declaration_type = !{!12, !14}
!xidane.function_declaration_filename = !{!12, !15}
!xidane.ExternC = !{!12}
!llvm.module.flags = !{!16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rgb_pad2ycbcr", metadata !"rgb_pad2ycbcr", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i16*)* @rgb_pad2ycbcr, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [rgb_pad2ycbcr]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!11 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{void (i32*, i16*)* @rgb_pad2ycbcr}
!13 = metadata !{metadata !"rgb_data_in,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_data_out,,,,,,,, "}
!14 = metadata !{metadata !"void.unsigned int [2211840].1.unsigned short [2073600].1"}
!15 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!19 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!20 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_in", metadata !5, i32 16777254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_in] [line 38]
!22 = metadata !{i32 38, i32 33, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"yc_data_out", metadata !5, i32 33554470, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yc_data_out] [line 38]
!24 = metadata !{i32 38, i32 82, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"in_R", metadata !5, i32 40, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_R] [line 40]
!26 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!27 = metadata !{i32 40, i32 17, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"in_G", metadata !5, i32 40, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_G] [line 40]
!29 = metadata !{i32 40, i32 23, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"in_B", metadata !5, i32 40, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_B] [line 40]
!31 = metadata !{i32 40, i32 29, metadata !4, null}
!32 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 42]
!33 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 42, i32 7, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !5, i32 43, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 43]
!36 = metadata !{i32 43, i32 7, metadata !4, null}
!37 = metadata !{i32 45, i32 7, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!39 = metadata !{i32 45, i32 7, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 45, i32 7, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!41 = metadata !{i32 786443, metadata !1, metadata !38, i32 45, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!42 = metadata !{i32 46, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 46, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!44 = metadata !{i32 786443, metadata !1, metadata !38, i32 45, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!45 = metadata !{i32 46, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 46, i32 9, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!47 = metadata !{i32 786443, metadata !1, metadata !43, i32 46, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!48 = metadata !{i32 786688, metadata !49, metadata !"u", metadata !5, i32 48, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 48]
!49 = metadata !{i32 786443, metadata !1, metadata !43, i32 46, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!50 = metadata !{i32 48, i32 25, metadata !49, null}
!51 = metadata !{i32 48, i32 9, metadata !49, null}
!52 = metadata !{i32 786688, metadata !49, metadata !"v", metadata !5, i32 49, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 49]
!53 = metadata !{i32 49, i32 25, metadata !49, null}
!54 = metadata !{i32 49, i32 9, metadata !49, null}
!55 = metadata !{i32 786688, metadata !49, metadata !"y", metadata !5, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 50]
!56 = metadata !{i32 50, i32 25, metadata !49, null}
!57 = metadata !{i32 50, i32 9, metadata !49, null}
!58 = metadata !{i32 786688, metadata !49, metadata !"pixel_out0", metadata !5, i32 51, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel_out0] [line 51]
!59 = metadata !{i32 51, i32 19, metadata !49, null}
!60 = metadata !{i32 786688, metadata !49, metadata !"pixel_out1", metadata !5, i32 51, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel_out1] [line 51]
!61 = metadata !{i32 51, i32 31, metadata !49, null}
!62 = metadata !{i32 786688, metadata !49, metadata !"pixel", metadata !5, i32 52, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 52]
!63 = metadata !{i32 52, i32 22, metadata !49, null}
!64 = metadata !{i32 53, i32 2, metadata !49, null}
!65 = metadata !{i32 54, i32 2, metadata !49, null}
!66 = metadata !{i32 55, i32 2, metadata !49, null}
!67 = metadata !{i32 56, i32 2, metadata !49, null}
!68 = metadata !{i32 57, i32 2, metadata !49, null}
!69 = metadata !{i32 58, i32 9, metadata !49, null} ; [ DW_TAG_imported_module ]
!70 = metadata !{i32 59, i32 9, metadata !49, null}
!71 = metadata !{i32 60, i32 9, metadata !49, null}
!72 = metadata !{i32 61, i32 9, metadata !49, null}
!73 = metadata !{i32 62, i32 9, metadata !49, null}
!74 = metadata !{i32 62, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !49, i32 62, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!76 = metadata !{i32 62, i32 9, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !49, i32 62, i32 9, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!78 = metadata !{i32 62, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !80, i32 62, i32 9, i32 4, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!80 = metadata !{i32 786443, metadata !1, metadata !49, i32 62, i32 9, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!81 = metadata !{i32 63, i32 5, metadata !49, null}
!82 = metadata !{i32 46, i32 33, metadata !43, null}
!83 = metadata !{i32 65, i32 10, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !44, i32 65, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!85 = metadata !{i32 65, i32 10, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 65, i32 10, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 65, i32 10, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!88 = metadata !{i32 786688, metadata !89, metadata !"pixel0", metadata !5, i32 66, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel0] [line 66]
!89 = metadata !{i32 786443, metadata !1, metadata !84, i32 65, i32 50, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!90 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!91 = metadata !{i32 66, i32 31, metadata !89, null}
!92 = metadata !{i32 68, i32 2, metadata !89, null}
!93 = metadata !{i32 69, i32 5, metadata !89, null}
!94 = metadata !{i32 65, i32 43, metadata !84, null}
!95 = metadata !{i32 70, i32 2, metadata !44, null}
!96 = metadata !{i32 45, i32 31, metadata !38, null}
!97 = metadata !{i32 71, i32 1, metadata !4, null}
