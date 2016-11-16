; ModuleID = '/home/student/ml634/ece5775lab5/hw/diff_image.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @diff_image(i8* %current_pix, i8* %previous_pix, i16* %original, i16* %original_output, i8* %motion_image) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i16*, align 4
  %4 = alloca i16*, align 4
  %5 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %new_edge = alloca i8, align 1
  %prev_edge = alloca i8, align 1
  %pixel = alloca i16, align 2
  %diff_pixel = alloca i8, align 1
  store i8* %current_pix, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !21), !dbg !22
  store i8* %previous_pix, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !23), !dbg !24
  store i16* %original, i16** %3, align 4
  call void @llvm.dbg.declare(metadata !{i16** %3}, metadata !25), !dbg !26
  store i16* %original_output, i16** %4, align 4
  call void @llvm.dbg.declare(metadata !{i16** %4}, metadata !27), !dbg !28
  store i8* %motion_image, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !31), !dbg !33
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !34), !dbg !35
  store i32 0, i32* %i, align 4, !dbg !36
  br label %6, !dbg !36

; <label>:6                                       ; preds = %68, %0
  %7 = load i32* %i, align 4, !dbg !38
  %8 = icmp slt i32 %7, 1080, !dbg !38
  br i1 %8, label %9, label %71, !dbg !38

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !41
  br label %10, !dbg !41

; <label>:10                                      ; preds = %64, %9
  %11 = load i32* %j, align 4, !dbg !44
  %12 = icmp slt i32 %11, 1920, !dbg !44
  br i1 %12, label %13, label %67, !dbg !44

; <label>:13                                      ; preds = %10
  call void @llvm.dbg.declare(metadata !{i8* %new_edge}, metadata !47), !dbg !49
  call void @llvm.dbg.declare(metadata !{i8* %prev_edge}, metadata !50), !dbg !51
  call void @llvm.dbg.declare(metadata !{i16* %pixel}, metadata !52), !dbg !53
  call void @llvm.dbg.declare(metadata !{i8* %diff_pixel}, metadata !54), !dbg !55
  %14 = load i32* %i, align 4, !dbg !56
  %15 = mul nsw i32 %14, 1920, !dbg !56
  %16 = load i32* %j, align 4, !dbg !56
  %17 = add nsw i32 %15, %16, !dbg !56
  %18 = load i8** %1, align 4, !dbg !56
  %19 = getelementptr inbounds i8* %18, i32 %17, !dbg !56
  %20 = load i8* %19, align 1, !dbg !56
  store i8 %20, i8* %new_edge, align 1, !dbg !56
  %21 = load i32* %i, align 4, !dbg !57
  %22 = mul nsw i32 %21, 1920, !dbg !57
  %23 = load i32* %j, align 4, !dbg !57
  %24 = add nsw i32 %22, %23, !dbg !57
  %25 = load i8** %2, align 4, !dbg !57
  %26 = getelementptr inbounds i8* %25, i32 %24, !dbg !57
  %27 = load i8* %26, align 1, !dbg !57
  store i8 %27, i8* %prev_edge, align 1, !dbg !57
  %28 = load i32* %i, align 4, !dbg !58
  %29 = mul nsw i32 %28, 1920, !dbg !58
  %30 = load i32* %j, align 4, !dbg !58
  %31 = add nsw i32 %29, %30, !dbg !58
  %32 = load i16** %3, align 4, !dbg !58
  %33 = getelementptr inbounds i16* %32, i32 %31, !dbg !58
  %34 = load i16* %33, align 2, !dbg !58
  store i16 %34, i16* %pixel, align 2, !dbg !58
  %35 = load i8* %new_edge, align 1, !dbg !59
  %36 = zext i8 %35 to i32, !dbg !59
  %37 = load i8* %prev_edge, align 1, !dbg !59
  %38 = zext i8 %37 to i32, !dbg !59
  %39 = icmp ne i32 %36, %38, !dbg !59
  %40 = zext i1 %39 to i32, !dbg !59
  %41 = load i8* %new_edge, align 1, !dbg !59
  %42 = zext i8 %41 to i32, !dbg !59
  %43 = icmp eq i32 %42, 255, !dbg !59
  %44 = zext i1 %43 to i32, !dbg !59
  %45 = and i32 %40, %44, !dbg !59
  %46 = icmp ne i32 %45, 0, !dbg !59
  br i1 %46, label %47, label %48, !dbg !59

; <label>:47                                      ; preds = %13
  store i8 -1, i8* %diff_pixel, align 1, !dbg !61
  br label %49, !dbg !63

; <label>:48                                      ; preds = %13
  store i8 0, i8* %diff_pixel, align 1, !dbg !64
  br label %49

; <label>:49                                      ; preds = %48, %47
  %50 = load i8* %diff_pixel, align 1, !dbg !66
  %51 = load i32* %i, align 4, !dbg !66
  %52 = mul nsw i32 %51, 1920, !dbg !66
  %53 = load i32* %j, align 4, !dbg !66
  %54 = add nsw i32 %52, %53, !dbg !66
  %55 = load i8** %5, align 4, !dbg !66
  %56 = getelementptr inbounds i8* %55, i32 %54, !dbg !66
  store i8 %50, i8* %56, align 1, !dbg !66
  %57 = load i16* %pixel, align 2, !dbg !67
  %58 = load i32* %i, align 4, !dbg !67
  %59 = mul nsw i32 %58, 1920, !dbg !67
  %60 = load i32* %j, align 4, !dbg !67
  %61 = add nsw i32 %59, %60, !dbg !67
  %62 = load i16** %4, align 4, !dbg !67
  %63 = getelementptr inbounds i16* %62, i32 %61, !dbg !67
  store i16 %57, i16* %63, align 2, !dbg !67
  br label %64, !dbg !68

; <label>:64                                      ; preds = %49
  %65 = load i32* %j, align 4, !dbg !69
  %66 = add nsw i32 %65, 1, !dbg !69
  store i32 %66, i32* %j, align 4, !dbg !69
  br label %10, !dbg !69

; <label>:67                                      ; preds = %10
  br label %68, !dbg !70

; <label>:68                                      ; preds = %67
  %69 = load i32* %i, align 4, !dbg !71
  %70 = add nsw i32 %69, 1, !dbg !71
  store i32 %70, i32* %i, align 4, !dbg !71
  br label %6, !dbg !71

; <label>:71                                      ; preds = %6
  ret void, !dbg !72
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/diff_image.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"diff_image", metadata !"diff_image", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i16*, i16*, i8*)* @diff_image, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 40] [diff_image]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !10, metadata !10, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!9 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!11 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{void (i8*, i8*, i16*, i16*, i8*)* @diff_image}
!13 = metadata !{metadata !"current_pix,,,,,,,, motion_image,,,,,,,, original,,,,,,,, original_output,,,,,,,, previous_pix,,,,,,,, "}
!14 = metadata !{metadata !"void.unsigned char [2073600].1.unsigned char [2073600].1.unsigned short [2073600].1.unsigned short [2073600].1.unsigned char [2073600].1"}
!15 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!19 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!20 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"current_pix", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [current_pix] [line 37]
!22 = metadata !{i32 37, i32 31, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"previous_pix", metadata !5, i32 33554469, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [previous_pix] [line 37]
!24 = metadata !{i32 37, i32 74, metadata !4, null}
!25 = metadata !{i32 786689, metadata !4, metadata !"original", metadata !5, i32 50331686, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [original] [line 38]
!26 = metadata !{i32 38, i32 18, metadata !4, null}
!27 = metadata !{i32 786689, metadata !4, metadata !"original_output", metadata !5, i32 67108902, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [original_output] [line 38]
!28 = metadata !{i32 38, i32 60, metadata !4, null}
!29 = metadata !{i32 786689, metadata !4, metadata !"motion_image", metadata !5, i32 83886119, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [motion_image] [line 39]
!30 = metadata !{i32 39, i32 17, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 41, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!32 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!33 = metadata !{i32 41, i32 7, metadata !4, null}
!34 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 41, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 41]
!35 = metadata !{i32 41, i32 9, metadata !4, null}
!36 = metadata !{i32 42, i32 7, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!38 = metadata !{i32 42, i32 7, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 42, i32 7, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!40 = metadata !{i32 786443, metadata !1, metadata !37, i32 42, i32 7, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!41 = metadata !{i32 43, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 43, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!43 = metadata !{i32 786443, metadata !1, metadata !37, i32 42, i32 32, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!44 = metadata !{i32 43, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 43, i32 9, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!46 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!47 = metadata !{i32 786688, metadata !48, metadata !"new_edge", metadata !5, i32 45, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_edge] [line 45]
!48 = metadata !{i32 786443, metadata !1, metadata !42, i32 43, i32 33, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!49 = metadata !{i32 45, i32 21, metadata !48, null}
!50 = metadata !{i32 786688, metadata !48, metadata !"prev_edge", metadata !5, i32 46, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev_edge] [line 46]
!51 = metadata !{i32 46, i32 21, metadata !48, null}
!52 = metadata !{i32 786688, metadata !48, metadata !"pixel", metadata !5, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 47]
!53 = metadata !{i32 47, i32 22, metadata !48, null}
!54 = metadata !{i32 786688, metadata !48, metadata !"diff_pixel", metadata !5, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_pixel] [line 48]
!55 = metadata !{i32 48, i32 21, metadata !48, null}
!56 = metadata !{i32 49, i32 7, metadata !48, null}
!57 = metadata !{i32 50, i32 7, metadata !48, null}
!58 = metadata !{i32 51, i32 7, metadata !48, null}
!59 = metadata !{i32 52, i32 10, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !48, i32 52, i32 10, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!61 = metadata !{i32 53, i32 2, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !60, i32 52, i32 54, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!63 = metadata !{i32 54, i32 7, metadata !62, null}
!64 = metadata !{i32 56, i32 2, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !60, i32 55, i32 12, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/diff_image.c]
!66 = metadata !{i32 58, i32 7, metadata !48, null} ; [ DW_TAG_imported_module ]
!67 = metadata !{i32 59, i32 7, metadata !48, null}
!68 = metadata !{i32 60, i32 5, metadata !48, null}
!69 = metadata !{i32 43, i32 29, metadata !42, null}
!70 = metadata !{i32 61, i32 3, metadata !43, null}
!71 = metadata !{i32 42, i32 28, metadata !37, null}
!72 = metadata !{i32 62, i32 1, metadata !4, null}
