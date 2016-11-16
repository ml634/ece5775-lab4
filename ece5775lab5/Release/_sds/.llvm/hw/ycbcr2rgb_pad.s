; ModuleID = '/home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @ycbcr2rgb_pad(i16* %yc_in, i32* %rgb_out) #0 {
  %1 = alloca i16*, align 4
  %2 = alloca i32*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %uv = alloca i8, align 1
  %y = alloca i8, align 1
  %pixval = alloca i32, align 4
  %c = alloca i16, align 2
  %d = alloca i16, align 2
  %e = alloca i16, align 2
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %input_data = alloca i16, align 2
  %tmp_uv = alloca i16, align 2
  store i16* %yc_in, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !21), !dbg !22
  store i32* %rgb_out, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !25), !dbg !27
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !28), !dbg !29
  store i32 0, i32* %row, align 4, !dbg !30
  br label %3, !dbg !30

; <label>:3                                       ; preds = %174, %0
  %4 = load i32* %row, align 4, !dbg !32
  %5 = icmp slt i32 %4, 1080, !dbg !32
  br i1 %5, label %6, label %177, !dbg !32

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !35
  br label %7, !dbg !35

; <label>:7                                       ; preds = %156, %6
  %8 = load i32* %col, align 4, !dbg !38
  %9 = icmp slt i32 %8, 1920, !dbg !38
  br i1 %9, label %10, label %159, !dbg !38

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i8* %uv}, metadata !41), !dbg !44
  store i8 0, i8* %uv, align 1, !dbg !45
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !46), !dbg !47
  call void @llvm.dbg.declare(metadata !{i32* %pixval}, metadata !48), !dbg !49
  call void @llvm.dbg.declare(metadata !{i16* %c}, metadata !50), !dbg !52
  call void @llvm.dbg.declare(metadata !{i16* %d}, metadata !53), !dbg !54
  store i16 0, i16* %d, align 2, !dbg !55
  call void @llvm.dbg.declare(metadata !{i16* %e}, metadata !56), !dbg !57
  store i16 0, i16* %e, align 2, !dbg !55
  call void @llvm.dbg.declare(metadata !{i16* %r}, metadata !58), !dbg !59
  call void @llvm.dbg.declare(metadata !{i16* %g}, metadata !60), !dbg !61
  call void @llvm.dbg.declare(metadata !{i16* %b}, metadata !62), !dbg !63
  call void @llvm.dbg.declare(metadata !{i16* %input_data}, metadata !64), !dbg !65
  call void @llvm.dbg.declare(metadata !{i16* %tmp_uv}, metadata !66), !dbg !67
  %11 = load i32* %row, align 4, !dbg !68
  %12 = mul nsw i32 %11, 1920, !dbg !68
  %13 = load i32* %col, align 4, !dbg !68
  %14 = add nsw i32 %12, %13, !dbg !68
  %15 = load i16** %1, align 4, !dbg !68
  %16 = getelementptr inbounds i16* %15, i32 %14, !dbg !68
  %17 = load i16* %16, align 2, !dbg !68
  store i16 %17, i16* %input_data, align 2, !dbg !68
  %18 = load i16* %input_data, align 2, !dbg !69
  %19 = zext i16 %18 to i32, !dbg !69
  %20 = ashr i32 %19, 8, !dbg !69
  %21 = trunc i32 %20 to i8, !dbg !69
  store i8 %21, i8* %y, align 1, !dbg !69
  %22 = load i16* %input_data, align 2, !dbg !70
  %23 = zext i16 %22 to i32, !dbg !70
  %24 = and i32 %23, 255, !dbg !70
  %25 = trunc i32 %24 to i16, !dbg !70
  store i16 %25, i16* %tmp_uv, align 2, !dbg !70
  %26 = load i16* %tmp_uv, align 2, !dbg !71
  %27 = trunc i16 %26 to i8, !dbg !71
  store i8 %27, i8* %uv, align 1, !dbg !71
  %28 = load i16* %input_data, align 2, !dbg !72
  %29 = zext i16 %28 to i32, !dbg !72
  %30 = ashr i32 %29, 8, !dbg !72
  %31 = and i32 %30, 255, !dbg !72
  %32 = sub nsw i32 %31, 16, !dbg !72
  %33 = trunc i32 %32 to i16, !dbg !72
  store i16 %33, i16* %c, align 2, !dbg !72
  %34 = load i32* %col, align 4, !dbg !73
  %35 = srem i32 %34, 2, !dbg !73
  %36 = icmp ne i32 %35, 0, !dbg !73
  br i1 %36, label %37, label %43, !dbg !73

; <label>:37                                      ; preds = %10
  %38 = load i16* %input_data, align 2, !dbg !75
  %39 = zext i16 %38 to i32, !dbg !75
  %40 = and i32 %39, 255, !dbg !75
  %41 = sub nsw i32 %40, 128, !dbg !75
  %42 = trunc i32 %41 to i16, !dbg !75
  store i16 %42, i16* %e, align 2, !dbg !75
  br label %49, !dbg !77

; <label>:43                                      ; preds = %10
  %44 = load i16* %input_data, align 2, !dbg !78
  %45 = zext i16 %44 to i32, !dbg !78
  %46 = and i32 %45, 255, !dbg !78
  %47 = sub nsw i32 %46, 128, !dbg !78
  %48 = trunc i32 %47 to i16, !dbg !78
  store i16 %48, i16* %d, align 2, !dbg !78
  br label %49

; <label>:49                                      ; preds = %43, %37
  %50 = load i16* %c, align 2, !dbg !80
  %51 = sext i16 %50 to i32, !dbg !80
  %52 = mul nsw i32 298, %51, !dbg !80
  %53 = load i16* %e, align 2, !dbg !80
  %54 = sext i16 %53 to i32, !dbg !80
  %55 = mul nsw i32 409, %54, !dbg !80
  %56 = add nsw i32 %52, %55, !dbg !80
  %57 = add nsw i32 %56, 128, !dbg !80
  %58 = ashr i32 %57, 8, !dbg !80
  %59 = trunc i32 %58 to i16, !dbg !80
  store i16 %59, i16* %r, align 2, !dbg !80
  %60 = load i16* %c, align 2, !dbg !81
  %61 = sext i16 %60 to i32, !dbg !81
  %62 = mul nsw i32 298, %61, !dbg !81
  %63 = load i16* %d, align 2, !dbg !81
  %64 = sext i16 %63 to i32, !dbg !81
  %65 = mul nsw i32 100, %64, !dbg !81
  %66 = sub nsw i32 %62, %65, !dbg !81
  %67 = load i16* %e, align 2, !dbg !81
  %68 = sext i16 %67 to i32, !dbg !81
  %69 = mul nsw i32 208, %68, !dbg !81
  %70 = sub nsw i32 %66, %69, !dbg !81
  %71 = ashr i32 %70, 8, !dbg !81
  %72 = trunc i32 %71 to i16, !dbg !81
  store i16 %72, i16* %g, align 2, !dbg !81
  %73 = load i16* %c, align 2, !dbg !82
  %74 = sext i16 %73 to i32, !dbg !82
  %75 = mul nsw i32 298, %74, !dbg !82
  %76 = load i16* %d, align 2, !dbg !82
  %77 = sext i16 %76 to i32, !dbg !82
  %78 = mul nsw i32 516, %77, !dbg !82
  %79 = add nsw i32 %75, %78, !dbg !82
  %80 = add nsw i32 %79, 128, !dbg !82
  %81 = ashr i32 %80, 8, !dbg !82
  %82 = trunc i32 %81 to i16, !dbg !82
  store i16 %82, i16* %b, align 2, !dbg !82
  %83 = load i16* %r, align 2, !dbg !83
  %84 = sext i16 %83 to i32, !dbg !83
  %85 = icmp sgt i32 %84, 255, !dbg !83
  br i1 %85, label %86, label %87, !dbg !83

; <label>:86                                      ; preds = %49
  br label %97, !dbg !84

; <label>:87                                      ; preds = %49
  %88 = load i16* %r, align 2, !dbg !86
  %89 = sext i16 %88 to i32, !dbg !86
  %90 = icmp slt i32 %89, 0, !dbg !86
  br i1 %90, label %91, label %92, !dbg !86

; <label>:91                                      ; preds = %87
  br label %95, !dbg !88

; <label>:92                                      ; preds = %87
  %93 = load i16* %r, align 2, !dbg !90
  %94 = sext i16 %93 to i32, !dbg !90
  br label %95, !dbg !90

; <label>:95                                      ; preds = %92, %91
  %96 = phi i32 [ 0, %91 ], [ %94, %92 ], !dbg !83
  br label %97, !dbg !92

; <label>:97                                      ; preds = %95, %86
  %98 = phi i32 [ 255, %86 ], [ %96, %95 ], !dbg !83
  %99 = trunc i32 %98 to i16, !dbg !95
  store i16 %99, i16* %r, align 2, !dbg !95
  %100 = load i16* %g, align 2, !dbg !98
  %101 = sext i16 %100 to i32, !dbg !98
  %102 = icmp sgt i32 %101, 255, !dbg !98
  br i1 %102, label %103, label %104, !dbg !98

; <label>:103                                     ; preds = %97
  br label %114, !dbg !99

; <label>:104                                     ; preds = %97
  %105 = load i16* %g, align 2, !dbg !101
  %106 = sext i16 %105 to i32, !dbg !101
  %107 = icmp slt i32 %106, 0, !dbg !101
  br i1 %107, label %108, label %109, !dbg !101

; <label>:108                                     ; preds = %104
  br label %112, !dbg !103

; <label>:109                                     ; preds = %104
  %110 = load i16* %g, align 2, !dbg !105
  %111 = sext i16 %110 to i32, !dbg !105
  br label %112, !dbg !105

; <label>:112                                     ; preds = %109, %108
  %113 = phi i32 [ 0, %108 ], [ %111, %109 ], !dbg !98
  br label %114, !dbg !107

; <label>:114                                     ; preds = %112, %103
  %115 = phi i32 [ 255, %103 ], [ %113, %112 ], !dbg !98
  %116 = trunc i32 %115 to i16, !dbg !110
  store i16 %116, i16* %g, align 2, !dbg !110
  %117 = load i16* %b, align 2, !dbg !113
  %118 = sext i16 %117 to i32, !dbg !113
  %119 = icmp sgt i32 %118, 255, !dbg !113
  br i1 %119, label %120, label %121, !dbg !113

; <label>:120                                     ; preds = %114
  br label %131, !dbg !114

; <label>:121                                     ; preds = %114
  %122 = load i16* %b, align 2, !dbg !116
  %123 = sext i16 %122 to i32, !dbg !116
  %124 = icmp slt i32 %123, 0, !dbg !116
  br i1 %124, label %125, label %126, !dbg !116

; <label>:125                                     ; preds = %121
  br label %129, !dbg !118

; <label>:126                                     ; preds = %121
  %127 = load i16* %b, align 2, !dbg !120
  %128 = sext i16 %127 to i32, !dbg !120
  br label %129, !dbg !120

; <label>:129                                     ; preds = %126, %125
  %130 = phi i32 [ 0, %125 ], [ %128, %126 ], !dbg !113
  br label %131, !dbg !122

; <label>:131                                     ; preds = %129, %120
  %132 = phi i32 [ 255, %120 ], [ %130, %129 ], !dbg !113
  %133 = trunc i32 %132 to i16, !dbg !125
  store i16 %133, i16* %b, align 2, !dbg !125
  store i32 255, i32* %pixval, align 4, !dbg !128
  %134 = load i32* %pixval, align 4, !dbg !129
  %135 = shl i32 %134, 8, !dbg !129
  %136 = load i16* %r, align 2, !dbg !129
  %137 = sext i16 %136 to i32, !dbg !129
  %138 = or i32 %135, %137, !dbg !129
  store i32 %138, i32* %pixval, align 4, !dbg !129
  %139 = load i32* %pixval, align 4, !dbg !130
  %140 = shl i32 %139, 8, !dbg !130
  %141 = load i16* %g, align 2, !dbg !130
  %142 = sext i16 %141 to i32, !dbg !130
  %143 = or i32 %140, %142, !dbg !130
  store i32 %143, i32* %pixval, align 4, !dbg !130
  %144 = load i32* %pixval, align 4, !dbg !131
  %145 = shl i32 %144, 8, !dbg !131
  %146 = load i16* %b, align 2, !dbg !131
  %147 = sext i16 %146 to i32, !dbg !131
  %148 = or i32 %145, %147, !dbg !131
  store i32 %148, i32* %pixval, align 4, !dbg !131
  %149 = load i32* %pixval, align 4, !dbg !132
  %150 = load i32* %row, align 4, !dbg !132
  %151 = mul nsw i32 %150, 2048, !dbg !132
  %152 = load i32* %col, align 4, !dbg !132
  %153 = add nsw i32 %151, %152, !dbg !132
  %154 = load i32** %2, align 4, !dbg !132
  %155 = getelementptr inbounds i32* %154, i32 %153, !dbg !132
  store i32 %149, i32* %155, align 4, !dbg !132
  br label %156, !dbg !133

; <label>:156                                     ; preds = %131
  %157 = load i32* %col, align 4, !dbg !134
  %158 = add nsw i32 %157, 1, !dbg !134
  store i32 %158, i32* %col, align 4, !dbg !134
  br label %7, !dbg !134

; <label>:159                                     ; preds = %7
  store i32 1920, i32* %col, align 4, !dbg !135
  br label %160, !dbg !135

; <label>:160                                     ; preds = %170, %159
  %161 = load i32* %col, align 4, !dbg !137
  %162 = icmp slt i32 %161, 2048, !dbg !137
  br i1 %162, label %163, label %173, !dbg !137

; <label>:163                                     ; preds = %160
  %164 = load i32* %row, align 4, !dbg !140
  %165 = mul nsw i32 %164, 2048, !dbg !140
  %166 = load i32* %col, align 4, !dbg !140
  %167 = add nsw i32 %165, %166, !dbg !140
  %168 = load i32** %2, align 4, !dbg !140
  %169 = getelementptr inbounds i32* %168, i32 %167, !dbg !140
  store i32 0, i32* %169, align 4, !dbg !140
  br label %170, !dbg !142

; <label>:170                                     ; preds = %163
  %171 = load i32* %col, align 4, !dbg !143
  %172 = add nsw i32 %171, 1, !dbg !143
  store i32 %172, i32* %col, align 4, !dbg !143
  br label %160, !dbg !143

; <label>:173                                     ; preds = %160
  br label %174, !dbg !144

; <label>:174                                     ; preds = %173
  %175 = load i32* %row, align 4, !dbg !145
  %176 = add nsw i32 %175, 1, !dbg !145
  store i32 %176, i32* %row, align 4, !dbg !145
  br label %3, !dbg !145

; <label>:177                                     ; preds = %3
  ret void, !dbg !146
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ycbcr2rgb_pad", metadata !"ycbcr2rgb_pad", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i32*)* @ycbcr2rgb_pad, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ycbcr2rgb_pad]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!11 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{void (i16*, i32*)* @ycbcr2rgb_pad}
!13 = metadata !{metadata !"rgb_out,,,PHYSICAL_CONTIGUOUS.NON_CACHEABLE,,,,, yc_in,,,,,,,, "}
!14 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned int [2211840].1"}
!15 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!19 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!20 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"yc_in", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yc_in] [line 10]
!22 = metadata !{i32 10, i32 35, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"rgb_out", metadata !5, i32 33554442, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb_out] [line 10]
!24 = metadata !{i32 10, i32 72, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !5, i32 12, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 12]
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 12, i32 7, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !5, i32 13, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 13]
!29 = metadata !{i32 13, i32 7, metadata !4, null}
!30 = metadata !{i32 15, i32 7, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!32 = metadata !{i32 15, i32 7, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 15, i32 7, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!34 = metadata !{i32 786443, metadata !1, metadata !31, i32 15, i32 7, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!35 = metadata !{i32 16, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 16, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!37 = metadata !{i32 786443, metadata !1, metadata !31, i32 15, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!38 = metadata !{i32 16, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 16, i32 9, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!40 = metadata !{i32 786443, metadata !1, metadata !36, i32 16, i32 9, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!41 = metadata !{i32 786688, metadata !42, metadata !"uv", metadata !5, i32 20, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 20]
!42 = metadata !{i32 786443, metadata !1, metadata !36, i32 16, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!44 = metadata !{i32 20, i32 21, metadata !42, null}
!45 = metadata !{i32 20, i32 7, metadata !42, null}
!46 = metadata !{i32 786688, metadata !42, metadata !"y", metadata !5, i32 21, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 21]
!47 = metadata !{i32 21, i32 21, metadata !42, null}
!48 = metadata !{i32 786688, metadata !42, metadata !"pixval", metadata !5, i32 22, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixval] [line 22]
!49 = metadata !{i32 22, i32 20, metadata !42, null}
!50 = metadata !{i32 786688, metadata !42, metadata !"c", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 23]
!51 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!52 = metadata !{i32 23, i32 13, metadata !42, null}
!53 = metadata !{i32 786688, metadata !42, metadata !"d", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 23]
!54 = metadata !{i32 23, i32 16, metadata !42, null}
!55 = metadata !{i32 23, i32 7, metadata !42, null}
!56 = metadata !{i32 786688, metadata !42, metadata !"e", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 23]
!57 = metadata !{i32 23, i32 21, metadata !42, null}
!58 = metadata !{i32 786688, metadata !42, metadata !"r", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 23]
!59 = metadata !{i32 23, i32 26, metadata !42, null}
!60 = metadata !{i32 786688, metadata !42, metadata !"g", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 23]
!61 = metadata !{i32 23, i32 29, metadata !42, null}
!62 = metadata !{i32 786688, metadata !42, metadata !"b", metadata !5, i32 23, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 23]
!63 = metadata !{i32 23, i32 32, metadata !42, null}
!64 = metadata !{i32 786688, metadata !42, metadata !"input_data", metadata !5, i32 24, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_data] [line 24]
!65 = metadata !{i32 24, i32 22, metadata !42, null}
!66 = metadata !{i32 786688, metadata !42, metadata !"tmp_uv", metadata !5, i32 25, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_uv] [line 25]
!67 = metadata !{i32 25, i32 22, metadata !42, null}
!68 = metadata !{i32 27, i32 7, metadata !42, null}
!69 = metadata !{i32 28, i32 7, metadata !42, null}
!70 = metadata !{i32 29, i32 7, metadata !42, null}
!71 = metadata !{i32 30, i32 7, metadata !42, null}
!72 = metadata !{i32 33, i32 7, metadata !42, null}
!73 = metadata !{i32 34, i32 11, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !42, i32 34, i32 11, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!75 = metadata !{i32 35, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 34, i32 19, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!77 = metadata !{i32 36, i32 7, metadata !76, null}
!78 = metadata !{i32 38, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !74, i32 37, i32 12, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!80 = metadata !{i32 40, i32 7, metadata !42, null}
!81 = metadata !{i32 41, i32 7, metadata !42, null}
!82 = metadata !{i32 42, i32 7, metadata !42, null}
!83 = metadata !{i32 43, i32 7, metadata !42, null}
!84 = metadata !{i32 43, i32 7, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!86 = metadata !{i32 43, i32 7, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!88 = metadata !{i32 43, i32 7, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 4, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!90 = metadata !{i32 43, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 5, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!92 = metadata !{i32 43, i32 7, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 43, i32 7, i32 7, i32 17} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!94 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 6, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!95 = metadata !{i32 43, i32 7, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !97, i32 43, i32 7, i32 8, i32 18} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!97 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 7, i32 3, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!98 = metadata !{i32 44, i32 7, metadata !42, null}
!99 = metadata !{i32 44, i32 7, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!101 = metadata !{i32 44, i32 7, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 2, i32 20} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!103 = metadata !{i32 44, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 4, i32 22} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!105 = metadata !{i32 44, i32 7, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 5, i32 23} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!107 = metadata !{i32 44, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !109, i32 44, i32 7, i32 7, i32 25} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!109 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 6, i32 24} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!110 = metadata !{i32 44, i32 7, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 44, i32 7, i32 8, i32 26} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!112 = metadata !{i32 786443, metadata !1, metadata !42, i32 44, i32 7, i32 3, i32 21} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!113 = metadata !{i32 45, i32 7, metadata !42, null}
!114 = metadata !{i32 45, i32 7, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!116 = metadata !{i32 45, i32 7, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!118 = metadata !{i32 45, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 4, i32 30} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!120 = metadata !{i32 45, i32 7, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 5, i32 31} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!122 = metadata !{i32 45, i32 7, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 45, i32 7, i32 7, i32 33} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!124 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 6, i32 32} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!125 = metadata !{i32 45, i32 7, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 45, i32 7, i32 8, i32 34} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!127 = metadata !{i32 786443, metadata !1, metadata !42, i32 45, i32 7, i32 3, i32 29} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!128 = metadata !{i32 46, i32 7, metadata !42, null}
!129 = metadata !{i32 47, i32 7, metadata !42, null}
!130 = metadata !{i32 48, i32 7, metadata !42, null}
!131 = metadata !{i32 49, i32 7, metadata !42, null}
!132 = metadata !{i32 50, i32 7, metadata !42, null}
!133 = metadata !{i32 51, i32 5, metadata !42, null}
!134 = metadata !{i32 16, i32 33, metadata !36, null}
!135 = metadata !{i32 52, i32 10, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !37, i32 52, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!137 = metadata !{i32 52, i32 10, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 52, i32 10, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!139 = metadata !{i32 786443, metadata !1, metadata !136, i32 52, i32 10, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!140 = metadata !{i32 54, i32 7, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !136, i32 52, i32 50, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!142 = metadata !{i32 55, i32 5, metadata !141, null}
!143 = metadata !{i32 52, i32 43, metadata !136, null}
!144 = metadata !{i32 56, i32 3, metadata !37, null}
!145 = metadata !{i32 15, i32 31, metadata !31, null}
!146 = metadata !{i32 57, i32 1, metadata !4, null}
