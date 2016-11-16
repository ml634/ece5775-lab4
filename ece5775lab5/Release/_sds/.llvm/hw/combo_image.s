; ModuleID = '/home/student/ml634/ece5775lab5/hw/combo_image.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @combo_image(i8 zeroext %pass_through_option, i8* %motion_image, i16* %original, i16* %output_image) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 4
  %3 = alloca i16*, align 4
  %4 = alloca i16*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %original_pix = alloca i16, align 2
  %diff_pix = alloca i8, align 1
  %combo_pix = alloca i16, align 2
  %y = alloca i8, align 1
  %u = alloca i8, align 1
  %v = alloca i8, align 1
  store i8 %pass_through_option, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !22), !dbg !23
  store i8* %motion_image, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !24), !dbg !25
  store i16* %original, i16** %3, align 4
  call void @llvm.dbg.declare(metadata !{i16** %3}, metadata !26), !dbg !27
  store i16* %output_image, i16** %4, align 4
  call void @llvm.dbg.declare(metadata !{i16** %4}, metadata !28), !dbg !29
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !30), !dbg !32
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !33), !dbg !34
  call void @llvm.dbg.declare(metadata !{i16* %original_pix}, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{i8* %diff_pix}, metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata !{i16* %combo_pix}, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !41), !dbg !43
  store i8 76, i8* %y, align 1, !dbg !44
  call void @llvm.dbg.declare(metadata !{i8* %u}, metadata !45), !dbg !46
  store i8 84, i8* %u, align 1, !dbg !47
  call void @llvm.dbg.declare(metadata !{i8* %v}, metadata !48), !dbg !49
  store i8 -1, i8* %v, align 1, !dbg !50
  store i32 0, i32* %i, align 4, !dbg !51
  br label %5, !dbg !51

; <label>:5                                       ; preds = %64, %0
  %6 = load i32* %i, align 4, !dbg !53
  %7 = icmp slt i32 %6, 1080, !dbg !53
  br i1 %7, label %8, label %67, !dbg !53

; <label>:8                                       ; preds = %5
  store i32 0, i32* %j, align 4, !dbg !56
  br label %9, !dbg !56

; <label>:9                                       ; preds = %60, %8
  %10 = load i32* %j, align 4, !dbg !59
  %11 = icmp slt i32 %10, 1920, !dbg !59
  br i1 %11, label %12, label %63, !dbg !59

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4, !dbg !62
  %14 = mul nsw i32 %13, 1920, !dbg !62
  %15 = load i32* %j, align 4, !dbg !62
  %16 = add nsw i32 %14, %15, !dbg !62
  %17 = load i16** %3, align 4, !dbg !62
  %18 = getelementptr inbounds i16* %17, i32 %16, !dbg !62
  %19 = load i16* %18, align 2, !dbg !62
  store i16 %19, i16* %original_pix, align 2, !dbg !62
  %20 = load i32* %i, align 4, !dbg !64
  %21 = mul nsw i32 %20, 1920, !dbg !64
  %22 = load i32* %j, align 4, !dbg !64
  %23 = add nsw i32 %21, %22, !dbg !64
  %24 = load i8** %2, align 4, !dbg !64
  %25 = getelementptr inbounds i8* %24, i32 %23, !dbg !64
  %26 = load i8* %25, align 1, !dbg !64
  store i8 %26, i8* %diff_pix, align 1, !dbg !64
  %27 = load i8* %diff_pix, align 1, !dbg !65
  %28 = zext i8 %27 to i32, !dbg !65
  %29 = icmp eq i32 %28, 255, !dbg !65
  br i1 %29, label %30, label %37, !dbg !65

; <label>:30                                      ; preds = %12
  %31 = load i32* %j, align 4, !dbg !67
  %32 = srem i32 %31, 2, !dbg !67
  %33 = icmp ne i32 %32, 0, !dbg !67
  br i1 %33, label %34, label %35, !dbg !67

; <label>:34                                      ; preds = %30
  store i16 19711, i16* %combo_pix, align 2, !dbg !70
  br label %36, !dbg !72

; <label>:35                                      ; preds = %30
  store i16 19540, i16* %combo_pix, align 2, !dbg !73
  br label %36

; <label>:36                                      ; preds = %35, %34
  br label %39, !dbg !75

; <label>:37                                      ; preds = %12
  %38 = load i16* %original_pix, align 2, !dbg !76
  store i16 %38, i16* %combo_pix, align 2, !dbg !76
  br label %39

; <label>:39                                      ; preds = %37, %36
  %40 = load i8* %1, align 1, !dbg !78
  %41 = zext i8 %40 to i32, !dbg !78
  %42 = icmp eq i32 %41, 1, !dbg !78
  br i1 %42, label %43, label %51, !dbg !78

; <label>:43                                      ; preds = %39
  %44 = load i16* %original_pix, align 2, !dbg !80
  %45 = load i32* %i, align 4, !dbg !80
  %46 = mul nsw i32 %45, 1920, !dbg !80
  %47 = load i32* %j, align 4, !dbg !80
  %48 = add nsw i32 %46, %47, !dbg !80
  %49 = load i16** %4, align 4, !dbg !80
  %50 = getelementptr inbounds i16* %49, i32 %48, !dbg !80
  store i16 %44, i16* %50, align 2, !dbg !80
  br label %59, !dbg !82

; <label>:51                                      ; preds = %39
  %52 = load i16* %combo_pix, align 2, !dbg !83
  %53 = load i32* %i, align 4, !dbg !83
  %54 = mul nsw i32 %53, 1920, !dbg !83
  %55 = load i32* %j, align 4, !dbg !83
  %56 = add nsw i32 %54, %55, !dbg !83
  %57 = load i16** %4, align 4, !dbg !83
  %58 = getelementptr inbounds i16* %57, i32 %56, !dbg !83
  store i16 %52, i16* %58, align 2, !dbg !83
  br label %59

; <label>:59                                      ; preds = %51, %43
  br label %60, !dbg !85

; <label>:60                                      ; preds = %59
  %61 = load i32* %j, align 4, !dbg !86
  %62 = add nsw i32 %61, 1, !dbg !86
  store i32 %62, i32* %j, align 4, !dbg !86
  br label %9, !dbg !86

; <label>:63                                      ; preds = %9
  br label %64, !dbg !87

; <label>:64                                      ; preds = %63
  %65 = load i32* %i, align 4, !dbg !88
  %66 = add nsw i32 %65, 1, !dbg !88
  store i32 %66, i32* %i, align 4, !dbg !88
  br label %5, !dbg !88

; <label>:67                                      ; preds = %5
  ret void, !dbg !89
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/combo_image.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"combo_image", metadata !"combo_image", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i8*, i16*, i16*)* @combo_image, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [combo_image]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !9, metadata !11, metadata !11}
!8 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!10 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!12 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!13 = metadata !{void (i8, i8*, i16*, i16*)* @combo_image}
!14 = metadata !{metadata !"motion_image,,,,,,,, original,,,,,,,, output_image,,,,,,,, "}
!15 = metadata !{metadata !"void.char.0.unsigned char [2073600].1.unsigned short [2073600].1.unsigned short [2073600].1"}
!16 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!17 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!18 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!19 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!20 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!21 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!22 = metadata !{i32 786689, metadata !4, metadata !"pass_through_option", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pass_through_option] [line 40]
!23 = metadata !{i32 40, i32 23, metadata !4, null}
!24 = metadata !{i32 786689, metadata !4, metadata !"motion_image", metadata !5, i32 33554472, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [motion_image] [line 40]
!25 = metadata !{i32 40, i32 58, metadata !4, null}
!26 = metadata !{i32 786689, metadata !4, metadata !"original", metadata !5, i32 50331688, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [original] [line 40]
!27 = metadata !{i32 40, i32 103, metadata !4, null}
!28 = metadata !{i32 786689, metadata !4, metadata !"output_image", metadata !5, i32 67108904, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output_image] [line 40]
!29 = metadata !{i32 40, i32 144, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 42]
!31 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!32 = metadata !{i32 42, i32 7, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 43]
!34 = metadata !{i32 43, i32 7, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"original_pix", metadata !5, i32 44, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [original_pix] [line 44]
!36 = metadata !{i32 44, i32 18, metadata !4, null}
!37 = metadata !{i32 786688, metadata !4, metadata !"diff_pix", metadata !5, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_pix] [line 45]
!38 = metadata !{i32 45, i32 17, metadata !4, null}
!39 = metadata !{i32 786688, metadata !4, metadata !"combo_pix", metadata !5, i32 46, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [combo_pix] [line 46]
!40 = metadata !{i32 46, i32 18, metadata !4, null}
!41 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 47, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 47]
!42 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!43 = metadata !{i32 47, i32 23, metadata !4, null}
!44 = metadata !{i32 47, i32 3, metadata !4, null}
!45 = metadata !{i32 786688, metadata !4, metadata !"u", metadata !5, i32 48, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 48]
!46 = metadata !{i32 48, i32 23, metadata !4, null}
!47 = metadata !{i32 48, i32 3, metadata !4, null}
!48 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 49, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 49]
!49 = metadata !{i32 49, i32 23, metadata !4, null}
!50 = metadata !{i32 49, i32 3, metadata !4, null}
!51 = metadata !{i32 51, i32 7, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!53 = metadata !{i32 51, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 51, i32 7, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!55 = metadata !{i32 786443, metadata !1, metadata !52, i32 51, i32 7, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!56 = metadata !{i32 52, i32 9, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 52, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!58 = metadata !{i32 786443, metadata !1, metadata !52, i32 51, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!59 = metadata !{i32 52, i32 9, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 52, i32 9, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!61 = metadata !{i32 786443, metadata !1, metadata !57, i32 52, i32 9, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!62 = metadata !{i32 54, i32 7, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !57, i32 52, i32 31, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!64 = metadata !{i32 55, i32 7, metadata !63, null}
!65 = metadata !{i32 56, i32 10, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !63, i32 56, i32 10, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!67 = metadata !{i32 57, i32 5, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !69, i32 57, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!69 = metadata !{i32 786443, metadata !1, metadata !66, i32 56, i32 26, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!70 = metadata !{i32 58, i32 4, metadata !71, null} ; [ DW_TAG_imported_module ]
!71 = metadata !{i32 786443, metadata !1, metadata !68, i32 57, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!72 = metadata !{i32 59, i32 2, metadata !71, null}
!73 = metadata !{i32 61, i32 4, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !68, i32 60, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!75 = metadata !{i32 63, i32 7, metadata !69, null}
!76 = metadata !{i32 65, i32 2, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !66, i32 64, i32 11, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!78 = metadata !{i32 67, i32 11, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !63, i32 67, i32 11, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!80 = metadata !{i32 68, i32 10, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !79, i32 67, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!82 = metadata !{i32 69, i32 7, metadata !81, null}
!83 = metadata !{i32 71, i32 10, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !79, i32 70, i32 12, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/combo_image.c]
!85 = metadata !{i32 73, i32 5, metadata !63, null}
!86 = metadata !{i32 52, i32 27, metadata !57, null}
!87 = metadata !{i32 74, i32 3, metadata !58, null}
!88 = metadata !{i32 51, i32 25, metadata !52, null}
!89 = metadata !{i32 75, i32 1, metadata !4, null}
