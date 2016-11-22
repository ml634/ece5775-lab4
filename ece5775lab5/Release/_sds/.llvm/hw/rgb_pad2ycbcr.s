; ModuleID = '/home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @rgb_pad2ycbcr(i32* %rgb_data_in, i16* %yc_data_out, i8 zeroext %color) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i16*, align 4
  %3 = alloca i8, align 1
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !22), !dbg !23
  store i16* %yc_data_out, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !24), !dbg !25
  store i8 %color, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !26), !dbg !27
  call void @llvm.dbg.declare(metadata !{i8* %in_R}, metadata !28), !dbg !30
  call void @llvm.dbg.declare(metadata !{i8* %in_G}, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata !{i8* %in_B}, metadata !33), !dbg !34
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !35), !dbg !37
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !38), !dbg !39
  store i32 0, i32* %row, align 4, !dbg !40
  br label %4, !dbg !40

; <label>:4                                       ; preds = %131, %0
  %5 = load i32* %row, align 4, !dbg !42
  %6 = icmp slt i32 %5, 1080, !dbg !42
  br i1 %6, label %7, label %134, !dbg !42

; <label>:7                                       ; preds = %4
  store i32 0, i32* %col, align 4, !dbg !45
  br label %8, !dbg !45

; <label>:8                                       ; preds = %112, %7
  %9 = load i32* %col, align 4, !dbg !48
  %10 = icmp slt i32 %9, 1920, !dbg !48
  br i1 %10, label %11, label %115, !dbg !48

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{i16* %u}, metadata !51), !dbg !53
  store i16 0, i16* %u, align 2, !dbg !54
  call void @llvm.dbg.declare(metadata !{i16* %v}, metadata !55), !dbg !56
  store i16 0, i16* %v, align 2, !dbg !57
  call void @llvm.dbg.declare(metadata !{i16* %y}, metadata !58), !dbg !59
  store i16 0, i16* %y, align 2, !dbg !60
  call void @llvm.dbg.declare(metadata !{i16* %pixel_out0}, metadata !61), !dbg !62
  call void @llvm.dbg.declare(metadata !{i16* %pixel_out1}, metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !65), !dbg !66
  %12 = load i32* %row, align 4, !dbg !67
  %13 = mul nsw i32 %12, 2048, !dbg !67
  %14 = load i32* %col, align 4, !dbg !67
  %15 = add nsw i32 %13, %14, !dbg !67
  %16 = load i32** %1, align 4, !dbg !67
  %17 = getelementptr inbounds i32* %16, i32 %15, !dbg !67
  %18 = load i32* %17, align 4, !dbg !67
  store i32 %18, i32* %pixel, align 4, !dbg !67
  %19 = load i32* %pixel, align 4, !dbg !68
  %20 = and i32 %19, 255, !dbg !68
  %21 = trunc i32 %20 to i8, !dbg !68
  store i8 %21, i8* %in_B, align 1, !dbg !68
  %22 = load i32* %pixel, align 4, !dbg !69
  %23 = lshr i32 %22, 8, !dbg !69
  %24 = and i32 %23, 255, !dbg !69
  %25 = trunc i32 %24 to i8, !dbg !69
  store i8 %25, i8* %in_G, align 1, !dbg !69
  %26 = load i32* %pixel, align 4, !dbg !70
  %27 = lshr i32 %26, 16, !dbg !70
  %28 = and i32 %27, 255, !dbg !70
  %29 = trunc i32 %28 to i8, !dbg !70
  store i8 %29, i8* %in_R, align 1, !dbg !70
  %30 = load i8* %in_R, align 1, !dbg !71
  %31 = zext i8 %30 to i32, !dbg !71
  %32 = mul nsw i32 66, %31, !dbg !71
  %33 = load i8* %in_G, align 1, !dbg !71
  %34 = zext i8 %33 to i32, !dbg !71
  %35 = mul nsw i32 129, %34, !dbg !71
  %36 = add nsw i32 %32, %35, !dbg !71
  %37 = load i8* %in_B, align 1, !dbg !71
  %38 = zext i8 %37 to i32, !dbg !71
  %39 = mul nsw i32 25, %38, !dbg !71
  %40 = add nsw i32 %36, %39, !dbg !71
  %41 = add nsw i32 %40, 128, !dbg !71
  %42 = ashr i32 %41, 8, !dbg !71
  %43 = add nsw i32 %42, 16, !dbg !71
  %44 = trunc i32 %43 to i16, !dbg !71
  store i16 %44, i16* %y, align 2, !dbg !71
  %45 = load i8* %in_B, align 1, !dbg !72
  %46 = zext i8 %45 to i32, !dbg !72
  %47 = mul nsw i32 112, %46, !dbg !72
  %48 = load i8* %in_G, align 1, !dbg !72
  %49 = zext i8 %48 to i32, !dbg !72
  %50 = mul nsw i32 74, %49, !dbg !72
  %51 = sub nsw i32 %47, %50, !dbg !72
  %52 = load i8* %in_R, align 1, !dbg !72
  %53 = zext i8 %52 to i32, !dbg !72
  %54 = mul nsw i32 38, %53, !dbg !72
  %55 = sub nsw i32 %51, %54, !dbg !72
  %56 = ashr i32 %55, 8, !dbg !72
  %57 = add nsw i32 %56, 128, !dbg !72
  %58 = trunc i32 %57 to i16, !dbg !72
  store i16 %58, i16* %u, align 2, !dbg !72
  %59 = load i8* %in_R, align 1, !dbg !73
  %60 = zext i8 %59 to i32, !dbg !73
  %61 = mul nsw i32 112, %60, !dbg !73
  %62 = load i8* %in_G, align 1, !dbg !73
  %63 = zext i8 %62 to i32, !dbg !73
  %64 = mul nsw i32 94, %63, !dbg !73
  %65 = sub nsw i32 %61, %64, !dbg !73
  %66 = load i8* %in_B, align 1, !dbg !73
  %67 = zext i8 %66 to i32, !dbg !73
  %68 = mul nsw i32 18, %67, !dbg !73
  %69 = sub nsw i32 %65, %68, !dbg !73
  %70 = ashr i32 %69, 8, !dbg !73
  %71 = add nsw i32 %70, 128, !dbg !73
  %72 = trunc i32 %71 to i16, !dbg !73
  store i16 %72, i16* %v, align 2, !dbg !73
  %73 = load i8* %3, align 1, !dbg !74
  %74 = zext i8 %73 to i32, !dbg !74
  switch i32 %74, label %111 [
    i32 114, label %75
    i32 98, label %87
    i32 103, label %99
  ], !dbg !74

; <label>:75                                      ; preds = %11
  %76 = load i16* %v, align 2, !dbg !75
  %77 = zext i16 %76 to i32, !dbg !75
  %78 = icmp sgt i32 %77, 160, !dbg !75
  %79 = select i1 %78, i32 255, i32 0, !dbg !75
  %80 = trunc i32 %79 to i16, !dbg !75
  %81 = load i32* %row, align 4, !dbg !75
  %82 = mul nsw i32 %81, 1920, !dbg !75
  %83 = load i32* %col, align 4, !dbg !75
  %84 = add nsw i32 %82, %83, !dbg !75
  %85 = load i16** %2, align 4, !dbg !75
  %86 = getelementptr inbounds i16* %85, i32 %84, !dbg !75
  store i16 %80, i16* %86, align 2, !dbg !75
  br label %111, !dbg !77

; <label>:87                                      ; preds = %11
  %88 = load i16* %u, align 2, !dbg !78
  %89 = zext i16 %88 to i32, !dbg !78
  %90 = icmp sgt i32 %89, 150, !dbg !78
  %91 = select i1 %90, i32 255, i32 0, !dbg !78
  %92 = trunc i32 %91 to i16, !dbg !78
  %93 = load i32* %row, align 4, !dbg !78
  %94 = mul nsw i32 %93, 1920, !dbg !78
  %95 = load i32* %col, align 4, !dbg !78
  %96 = add nsw i32 %94, %95, !dbg !78
  %97 = load i16** %2, align 4, !dbg !78
  %98 = getelementptr inbounds i16* %97, i32 %96, !dbg !78
  store i16 %92, i16* %98, align 2, !dbg !78
  br label %111, !dbg !79

; <label>:99                                      ; preds = %11
  %100 = load i16* %v, align 2, !dbg !80
  %101 = zext i16 %100 to i32, !dbg !80
  %102 = icmp sgt i32 %101, 160, !dbg !80
  %103 = select i1 %102, i32 255, i32 0, !dbg !80
  %104 = trunc i32 %103 to i16, !dbg !80
  %105 = load i32* %row, align 4, !dbg !80
  %106 = mul nsw i32 %105, 1920, !dbg !80
  %107 = load i32* %col, align 4, !dbg !80
  %108 = add nsw i32 %106, %107, !dbg !80
  %109 = load i16** %2, align 4, !dbg !80
  %110 = getelementptr inbounds i16* %109, i32 %108, !dbg !80
  store i16 %104, i16* %110, align 2, !dbg !80
  br label %111, !dbg !81

; <label>:111                                     ; preds = %11, %99, %87, %75
  br label %112, !dbg !82

; <label>:112                                     ; preds = %111
  %113 = load i32* %col, align 4, !dbg !83
  %114 = add nsw i32 %113, 1, !dbg !83
  store i32 %114, i32* %col, align 4, !dbg !83
  br label %8, !dbg !83

; <label>:115                                     ; preds = %8
  store i32 1920, i32* %col, align 4, !dbg !84
  br label %116, !dbg !84

; <label>:116                                     ; preds = %127, %115
  %117 = load i32* %col, align 4, !dbg !86
  %118 = icmp slt i32 %117, 2048, !dbg !86
  br i1 %118, label %119, label %130, !dbg !86

; <label>:119                                     ; preds = %116
  call void @llvm.dbg.declare(metadata !{i32* %pixel0}, metadata !89), !dbg !92
  %120 = load i32* %row, align 4, !dbg !93
  %121 = mul nsw i32 %120, 2048, !dbg !93
  %122 = load i32* %col, align 4, !dbg !93
  %123 = add nsw i32 %121, %122, !dbg !93
  %124 = load i32** %1, align 4, !dbg !93
  %125 = getelementptr inbounds i32* %124, i32 %123, !dbg !93
  %126 = load i32* %125, align 4, !dbg !93
  store volatile i32 %126, i32* %pixel0, align 4, !dbg !93
  br label %127, !dbg !94

; <label>:127                                     ; preds = %119
  %128 = load i32* %col, align 4, !dbg !95
  %129 = add nsw i32 %128, 1, !dbg !95
  store i32 %129, i32* %col, align 4, !dbg !95
  br label %116, !dbg !95

; <label>:130                                     ; preds = %116
  br label %131, !dbg !96

; <label>:131                                     ; preds = %130
  %132 = load i32* %row, align 4, !dbg !97
  %133 = add nsw i32 %132, 1, !dbg !97
  store i32 %133, i32* %row, align 4, !dbg !97
  br label %4, !dbg !97

; <label>:134                                     ; preds = %4
  ret void, !dbg !98
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!13, !14}
!xidane.function_declaration_type = !{!13, !15}
!xidane.function_declaration_filename = !{!13, !16}
!xidane.ExternC = !{!13}
!llvm.module.flags = !{!17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rgb_pad2ycbcr", metadata !"rgb_pad2ycbcr", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i16*, i8)* @rgb_pad2ycbcr, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [rgb_pad2ycbcr]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !12}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!11 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{void (i32*, i16*, i8)* @rgb_pad2ycbcr}
!14 = metadata !{metadata !"rgb_data_in,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_data_out,,,,,,,, "}
!15 = metadata !{metadata !"void.unsigned int [2211840].1.unsigned short [2073600].1.char.0"}
!16 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!17 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!18 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!19 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!20 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!21 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!22 = metadata !{i32 786689, metadata !4, metadata !"rgb_data_in", metadata !5, i32 16777254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_data_in] [line 38]
!23 = metadata !{i32 38, i32 33, metadata !4, null}
!24 = metadata !{i32 786689, metadata !4, metadata !"yc_data_out", metadata !5, i32 33554470, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yc_data_out] [line 38]
!25 = metadata !{i32 38, i32 82, metadata !4, null}
!26 = metadata !{i32 786689, metadata !4, metadata !"color", metadata !5, i32 50331686, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 38]
!27 = metadata !{i32 38, i32 117, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"in_R", metadata !5, i32 43, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_R] [line 43]
!29 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!30 = metadata !{i32 43, i32 17, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"in_G", metadata !5, i32 43, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_G] [line 43]
!32 = metadata !{i32 43, i32 23, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"in_B", metadata !5, i32 43, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_B] [line 43]
!34 = metadata !{i32 43, i32 29, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !5, i32 45, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 45]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 45, i32 7, metadata !4, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !5, i32 46, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 46]
!39 = metadata !{i32 46, i32 7, metadata !4, null}
!40 = metadata !{i32 49, i32 7, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!42 = metadata !{i32 49, i32 7, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 49, i32 7, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!44 = metadata !{i32 786443, metadata !1, metadata !41, i32 49, i32 7, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!45 = metadata !{i32 50, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 50, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!47 = metadata !{i32 786443, metadata !1, metadata !41, i32 49, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!48 = metadata !{i32 50, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 50, i32 9, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!50 = metadata !{i32 786443, metadata !1, metadata !46, i32 50, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!51 = metadata !{i32 786688, metadata !52, metadata !"u", metadata !5, i32 53, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 53]
!52 = metadata !{i32 786443, metadata !1, metadata !46, i32 50, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!53 = metadata !{i32 53, i32 25, metadata !52, null}
!54 = metadata !{i32 53, i32 9, metadata !52, null}
!55 = metadata !{i32 786688, metadata !52, metadata !"v", metadata !5, i32 54, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 54]
!56 = metadata !{i32 54, i32 25, metadata !52, null}
!57 = metadata !{i32 54, i32 9, metadata !52, null}
!58 = metadata !{i32 786688, metadata !52, metadata !"y", metadata !5, i32 55, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 55]
!59 = metadata !{i32 55, i32 25, metadata !52, null}
!60 = metadata !{i32 55, i32 9, metadata !52, null}
!61 = metadata !{i32 786688, metadata !52, metadata !"pixel_out0", metadata !5, i32 56, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel_out0] [line 56]
!62 = metadata !{i32 56, i32 22, metadata !52, null}
!63 = metadata !{i32 786688, metadata !52, metadata !"pixel_out1", metadata !5, i32 56, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel_out1] [line 56]
!64 = metadata !{i32 56, i32 34, metadata !52, null}
!65 = metadata !{i32 786688, metadata !52, metadata !"pixel", metadata !5, i32 57, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 57]
!66 = metadata !{i32 57, i32 25, metadata !52, null}
!67 = metadata !{i32 60, i32 2, metadata !52, null}
!68 = metadata !{i32 61, i32 2, metadata !52, null}
!69 = metadata !{i32 62, i32 2, metadata !52, null}
!70 = metadata !{i32 63, i32 2, metadata !52, null}
!71 = metadata !{i32 65, i32 2, metadata !52, null}
!72 = metadata !{i32 66, i32 5, metadata !52, null}
!73 = metadata !{i32 67, i32 5, metadata !52, null}
!74 = metadata !{i32 71, i32 4, metadata !52, null}
!75 = metadata !{i32 73, i32 10, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !52, i32 71, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!77 = metadata !{i32 75, i32 10, metadata !76, null}
!78 = metadata !{i32 77, i32 10, metadata !76, null}
!79 = metadata !{i32 79, i32 10, metadata !76, null}
!80 = metadata !{i32 81, i32 10, metadata !76, null}
!81 = metadata !{i32 82, i32 10, metadata !76, null}
!82 = metadata !{i32 88, i32 5, metadata !52, null}
!83 = metadata !{i32 50, i32 33, metadata !46, null}
!84 = metadata !{i32 90, i32 10, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !47, i32 90, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!86 = metadata !{i32 90, i32 10, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !88, i32 90, i32 10, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!88 = metadata !{i32 786443, metadata !1, metadata !85, i32 90, i32 10, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!89 = metadata !{i32 786688, metadata !90, metadata !"pixel0", metadata !5, i32 91, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel0] [line 91]
!90 = metadata !{i32 786443, metadata !1, metadata !85, i32 90, i32 50, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/rgb_pad2ycbcr.c]
!91 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!92 = metadata !{i32 91, i32 31, metadata !90, null}
!93 = metadata !{i32 93, i32 2, metadata !90, null}
!94 = metadata !{i32 94, i32 5, metadata !90, null}
!95 = metadata !{i32 90, i32 43, metadata !85, null}
!96 = metadata !{i32 95, i32 2, metadata !47, null}
!97 = metadata !{i32 49, i32 31, metadata !41, null}
!98 = metadata !{i32 96, i32 1, metadata !4, null}
