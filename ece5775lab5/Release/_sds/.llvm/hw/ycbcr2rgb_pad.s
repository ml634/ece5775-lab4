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

; <label>:3                                       ; preds = %61, %0
  %4 = load i32* %row, align 4, !dbg !32
  %5 = icmp slt i32 %4, 1080, !dbg !32
  br i1 %5, label %6, label %64, !dbg !32

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !35
  br label %7, !dbg !35

; <label>:7                                       ; preds = %43, %6
  %8 = load i32* %col, align 4, !dbg !38
  %9 = icmp slt i32 %8, 1920, !dbg !38
  br i1 %9, label %10, label %46, !dbg !38

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
  store i16 %18, i16* %r, align 2, !dbg !69
  %19 = load i16* %input_data, align 2, !dbg !70
  store i16 %19, i16* %g, align 2, !dbg !70
  %20 = load i16* %input_data, align 2, !dbg !71
  store i16 %20, i16* %b, align 2, !dbg !71
  store i32 255, i32* %pixval, align 4, !dbg !72
  %21 = load i32* %pixval, align 4, !dbg !73
  %22 = shl i32 %21, 8, !dbg !73
  %23 = load i16* %r, align 2, !dbg !73
  %24 = sext i16 %23 to i32, !dbg !73
  %25 = or i32 %22, %24, !dbg !73
  store i32 %25, i32* %pixval, align 4, !dbg !73
  %26 = load i32* %pixval, align 4, !dbg !74
  %27 = shl i32 %26, 8, !dbg !74
  %28 = load i16* %g, align 2, !dbg !74
  %29 = sext i16 %28 to i32, !dbg !74
  %30 = or i32 %27, %29, !dbg !74
  store i32 %30, i32* %pixval, align 4, !dbg !74
  %31 = load i32* %pixval, align 4, !dbg !75
  %32 = shl i32 %31, 8, !dbg !75
  %33 = load i16* %b, align 2, !dbg !75
  %34 = sext i16 %33 to i32, !dbg !75
  %35 = or i32 %32, %34, !dbg !75
  store i32 %35, i32* %pixval, align 4, !dbg !75
  %36 = load i32* %pixval, align 4, !dbg !76
  %37 = load i32* %row, align 4, !dbg !76
  %38 = mul nsw i32 %37, 2048, !dbg !76
  %39 = load i32* %col, align 4, !dbg !76
  %40 = add nsw i32 %38, %39, !dbg !76
  %41 = load i32** %2, align 4, !dbg !76
  %42 = getelementptr inbounds i32* %41, i32 %40, !dbg !76
  store i32 %36, i32* %42, align 4, !dbg !76
  br label %43, !dbg !77

; <label>:43                                      ; preds = %10
  %44 = load i32* %col, align 4, !dbg !78
  %45 = add nsw i32 %44, 1, !dbg !78
  store i32 %45, i32* %col, align 4, !dbg !78
  br label %7, !dbg !78

; <label>:46                                      ; preds = %7
  store i32 1920, i32* %col, align 4, !dbg !79
  br label %47, !dbg !79

; <label>:47                                      ; preds = %57, %46
  %48 = load i32* %col, align 4, !dbg !81
  %49 = icmp slt i32 %48, 2048, !dbg !81
  br i1 %49, label %50, label %60, !dbg !81

; <label>:50                                      ; preds = %47
  %51 = load i32* %row, align 4, !dbg !84
  %52 = mul nsw i32 %51, 2048, !dbg !84
  %53 = load i32* %col, align 4, !dbg !84
  %54 = add nsw i32 %52, %53, !dbg !84
  %55 = load i32** %2, align 4, !dbg !84
  %56 = getelementptr inbounds i32* %55, i32 %54, !dbg !84
  store i32 0, i32* %56, align 4, !dbg !84
  br label %57, !dbg !86

; <label>:57                                      ; preds = %50
  %58 = load i32* %col, align 4, !dbg !87
  %59 = add nsw i32 %58, 1, !dbg !87
  store i32 %59, i32* %col, align 4, !dbg !87
  br label %47, !dbg !87

; <label>:60                                      ; preds = %47
  br label %61, !dbg !88

; <label>:61                                      ; preds = %60
  %62 = load i32* %row, align 4, !dbg !89
  %63 = add nsw i32 %62, 1, !dbg !89
  store i32 %63, i32* %row, align 4, !dbg !89
  br label %3, !dbg !89

; <label>:64                                      ; preds = %3
  ret void, !dbg !90
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
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 15, i32 7, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!34 = metadata !{i32 786443, metadata !1, metadata !31, i32 15, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!35 = metadata !{i32 16, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 16, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!37 = metadata !{i32 786443, metadata !1, metadata !31, i32 15, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!38 = metadata !{i32 16, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 16, i32 9, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!40 = metadata !{i32 786443, metadata !1, metadata !36, i32 16, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
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
!69 = metadata !{i32 29, i32 1, metadata !42, null}
!70 = metadata !{i32 30, i32 1, metadata !42, null}
!71 = metadata !{i32 31, i32 1, metadata !42, null}
!72 = metadata !{i32 33, i32 1, metadata !42, null}
!73 = metadata !{i32 34, i32 1, metadata !42, null}
!74 = metadata !{i32 35, i32 1, metadata !42, null}
!75 = metadata !{i32 36, i32 1, metadata !42, null}
!76 = metadata !{i32 63, i32 7, metadata !42, null}
!77 = metadata !{i32 64, i32 5, metadata !42, null}
!78 = metadata !{i32 16, i32 33, metadata !36, null}
!79 = metadata !{i32 65, i32 10, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !37, i32 65, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!81 = metadata !{i32 65, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 65, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!83 = metadata !{i32 786443, metadata !1, metadata !80, i32 65, i32 10, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!84 = metadata !{i32 67, i32 7, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !80, i32 65, i32 50, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ycbcr2rgb_pad.c]
!86 = metadata !{i32 68, i32 5, metadata !85, null}
!87 = metadata !{i32 65, i32 43, metadata !80, null}
!88 = metadata !{i32 69, i32 3, metadata !37, null}
!89 = metadata !{i32 15, i32 31, metadata !31, null}
!90 = metadata !{i32 70, i32 1, metadata !4, null}
