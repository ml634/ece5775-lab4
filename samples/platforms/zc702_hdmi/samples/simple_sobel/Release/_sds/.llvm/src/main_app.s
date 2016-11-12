; ModuleID = '/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@.str = private unnamed_addr constant [19 x i8] c"elapsed time %lu \0A\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@gLayerBase = external global [3 x i32]
@ibufferoffset = external global i32

; Function Attrs: nounwind
define void @sw_sobel_processing(i32 %in_buffer, i32 %out_buffer) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %param0 = alloca i32, align 4
  %param1 = alloca i32, align 4
  %param2 = alloca i32, align 4
  %clock_start = alloca i32, align 4
  %clock_end = alloca i32, align 4
  store i32 %in_buffer, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !58), !dbg !59
  store i32 %out_buffer, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !60), !dbg !61
  call void @llvm.dbg.declare(metadata !{i32* %param0}, metadata !62), !dbg !63
  store i32 0, i32* %param0, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata !{i32* %param1}, metadata !65), !dbg !66
  store i32 100, i32* %param1, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata !{i32* %param2}, metadata !67), !dbg !68
  store i32 200, i32* %param2, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata !{i32* %clock_start}, metadata !69), !dbg !70
  call void @llvm.dbg.declare(metadata !{i32* %clock_end}, metadata !71), !dbg !70
  %3 = call i64 @sds_clock_counter(), !dbg !70
  %4 = trunc i64 %3 to i32, !dbg !70
  store i32 %4, i32* %clock_start, align 4, !dbg !70
  %5 = load i32* %1, align 4, !dbg !72
  %6 = inttoptr i32 %5 to i32*, !dbg !72
  %7 = load i32* %2, align 4, !dbg !72
  %8 = inttoptr i32 %7 to i32*, !dbg !72
  %9 = load i32* %param0, align 4, !dbg !72
  %10 = load i32* %param1, align 4, !dbg !72
  %11 = load i32* %param2, align 4, !dbg !72
  call void @img_process(i32* %6, i32* %8, i32 %9, i32 %10, i32 %11), !dbg !72
  %12 = call i64 @sds_clock_counter(), !dbg !73
  %13 = trunc i64 %12 to i32, !dbg !73
  store i32 %13, i32* %clock_end, align 4, !dbg !73
  %14 = load i32* %clock_end, align 4, !dbg !73
  %15 = load i32* %clock_start, align 4, !dbg !73
  %16 = sub i32 %14, %15, !dbg !73
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i32 %16), !dbg !73
  %18 = call i64 @sds_clock_counter(), !dbg !73
  %19 = trunc i64 %18 to i32, !dbg !73
  store i32 %19, i32* %clock_start, align 4, !dbg !73
  ret void, !dbg !75
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i64 @sds_clock_counter() #2

declare void @img_process(i32*, i32*, i32, i32, i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define i8* @thread_sw_sync() #0 {
  %1 = alloca i8*, align 4
  %output_frame = alloca [3 x i32], align 4
  %input_frame = alloca [3 x i32], align 4
  %virt_output_frame = alloca [3 x i32], align 4
  %virt_input_frame = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %map_len = alloca i32, align 4
  %fd = alloca i32, align 4
  %virtual_addr_in = alloca i8*, align 4
  %virtual_addr_out = alloca i8*, align 4
  %infrm_index = alloca i32, align 4
  %outfrm_index = alloca i32, align 4
  %sobel_in_index = alloca i32, align 4
  %sobel_out_index = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %output_frame}, metadata !76), !dbg !80
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %input_frame}, metadata !81), !dbg !82
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %virt_output_frame}, metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %virt_input_frame}, metadata !85), !dbg !86
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !87), !dbg !88
  store i32 0, i32* %i, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !90), !dbg !91
  store i32 0, i32* %offset, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata !{i32* %map_len}, metadata !93), !dbg !94
  store i32 8847360, i32* %map_len, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata !{i32* %fd}, metadata !96), !dbg !97
  %2 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2), !dbg !98
  store i32 %2, i32* %fd, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata !{i8** %virtual_addr_in}, metadata !99), !dbg !102
  call void @llvm.dbg.declare(metadata !{i8** %virtual_addr_out}, metadata !103), !dbg !104
  call void @llvm.dbg.declare(metadata !{i32* %infrm_index}, metadata !105), !dbg !106
  store i32 2, i32* %infrm_index, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata !{i32* %outfrm_index}, metadata !108), !dbg !109
  store i32 0, i32* %outfrm_index, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata !{i32* %sobel_in_index}, metadata !110), !dbg !111
  store i32 1, i32* %sobel_in_index, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata !{i32* %sobel_out_index}, metadata !112), !dbg !113
  store i32 1, i32* %sobel_out_index, align 4, !dbg !107
  store i32 0, i32* %i, align 4, !dbg !114
  br label %3, !dbg !114

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4, !dbg !116
  %5 = icmp slt i32 %4, 3, !dbg !116
  br i1 %5, label %6, label %57, !dbg !116

; <label>:6                                       ; preds = %3
  %7 = load i32* getelementptr inbounds ([3 x i32]* @gLayerBase, i32 0, i32 1), align 4, !dbg !119
  %8 = load i32* %offset, align 4, !dbg !119
  %9 = add i32 %7, %8, !dbg !119
  %10 = load i32* %i, align 4, !dbg !119
  %11 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %10, !dbg !119
  store i32 %9, i32* %11, align 4, !dbg !119
  %12 = load i32* getelementptr inbounds ([3 x i32]* @gLayerBase, i32 0, i32 2), align 4, !dbg !121
  %13 = load i32* %offset, align 4, !dbg !121
  %14 = add i32 %12, %13, !dbg !121
  %15 = load i32* %i, align 4, !dbg !121
  %16 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %15, !dbg !121
  store i32 %14, i32* %16, align 4, !dbg !121
  %17 = load i32* @ibufferoffset, align 4, !dbg !122
  %18 = load i32* %offset, align 4, !dbg !122
  %19 = add i32 %18, %17, !dbg !122
  store i32 %19, i32* %offset, align 4, !dbg !122
  %20 = load i32* %map_len, align 4, !dbg !123
  %21 = load i32* %fd, align 4, !dbg !123
  %22 = load i32* %i, align 4, !dbg !123
  %23 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %22, !dbg !123
  %24 = load i32* %23, align 4, !dbg !123
  %25 = call i8* @mmap(i8* null, i32 %20, i32 3, i32 1, i32 %21, i32 %24) #3, !dbg !123
  store i8* %25, i8** %virtual_addr_in, align 4, !dbg !123
  %26 = load i32* %map_len, align 4, !dbg !124
  %27 = load i32* %fd, align 4, !dbg !124
  %28 = load i32* %i, align 4, !dbg !124
  %29 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %28, !dbg !124
  %30 = load i32* %29, align 4, !dbg !124
  %31 = call i8* @mmap(i8* null, i32 %26, i32 3, i32 1, i32 %27, i32 %30) #3, !dbg !124
  store i8* %31, i8** %virtual_addr_out, align 4, !dbg !124
  %32 = load i8** %virtual_addr_in, align 4, !dbg !125
  %33 = ptrtoint i8* %32 to i32, !dbg !125
  %34 = load i32* %i, align 4, !dbg !125
  %35 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %34, !dbg !125
  store i32 %33, i32* %35, align 4, !dbg !125
  %36 = load i8** %virtual_addr_out, align 4, !dbg !126
  %37 = ptrtoint i8* %36 to i32, !dbg !126
  %38 = load i32* %i, align 4, !dbg !126
  %39 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %38, !dbg !126
  store i32 %37, i32* %39, align 4, !dbg !126
  %40 = load i32* %i, align 4, !dbg !127
  %41 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %40, !dbg !127
  %42 = load i32* %41, align 4, !dbg !127
  %43 = inttoptr i32 %42 to i8*, !dbg !127
  %44 = load i32* %map_len, align 4, !dbg !127
  %45 = load i8** %virtual_addr_in, align 4, !dbg !127
  %46 = call i8* @sds_mmap(i8* %43, i32 %44, i8* %45), !dbg !127
  %47 = load i32* %i, align 4, !dbg !128
  %48 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %47, !dbg !128
  %49 = load i32* %48, align 4, !dbg !128
  %50 = inttoptr i32 %49 to i8*, !dbg !128
  %51 = load i32* %map_len, align 4, !dbg !128
  %52 = load i8** %virtual_addr_out, align 4, !dbg !128
  %53 = call i8* @sds_mmap(i8* %50, i32 %51, i8* %52), !dbg !128
  br label %54, !dbg !129

; <label>:54                                      ; preds = %6
  %55 = load i32* %i, align 4, !dbg !130
  %56 = add nsw i32 %55, 1, !dbg !130
  store i32 %56, i32* %i, align 4, !dbg !130
  br label %3, !dbg !130

; <label>:57                                      ; preds = %3
  %58 = load i32* %fd, align 4, !dbg !131
  %59 = call i32 @close(i32 %58), !dbg !131
  %60 = load i32* %outfrm_index, align 4, !dbg !132
  %61 = load i32* %infrm_index, align 4, !dbg !132
  call void @setCVC_TPGBuffer(i32 %60, i32 %61), !dbg !132
  %62 = load i32* %sobel_in_index, align 4, !dbg !133
  %63 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %62, !dbg !133
  %64 = load i32* %63, align 4, !dbg !133
  %65 = load i32* %sobel_out_index, align 4, !dbg !133
  %66 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %65, !dbg !133
  %67 = load i32* %66, align 4, !dbg !133
  call void @sw_sobel_processing(i32 %64, i32 %67), !dbg !133
  br label %68, !dbg !134

; <label>:68                                      ; preds = %57, %68
  %69 = load i32* %outfrm_index, align 4, !dbg !135
  %70 = add nsw i32 %69, 1, !dbg !135
  store i32 %70, i32* %outfrm_index, align 4, !dbg !135
  %71 = load i32* %outfrm_index, align 4, !dbg !137
  %72 = srem i32 %71, 3, !dbg !137
  store i32 %72, i32* %outfrm_index, align 4, !dbg !137
  %73 = load i32* %infrm_index, align 4, !dbg !138
  %74 = add nsw i32 %73, 1, !dbg !138
  store i32 %74, i32* %infrm_index, align 4, !dbg !138
  %75 = load i32* %infrm_index, align 4, !dbg !139
  %76 = srem i32 %75, 3, !dbg !139
  store i32 %76, i32* %infrm_index, align 4, !dbg !139
  %77 = load i32* %outfrm_index, align 4, !dbg !140
  %78 = load i32* %infrm_index, align 4, !dbg !140
  call void @setCVC_TPGBuffer(i32 %77, i32 %78), !dbg !140
  %79 = load i32* %sobel_in_index, align 4, !dbg !141
  %80 = add nsw i32 %79, 1, !dbg !141
  store i32 %80, i32* %sobel_in_index, align 4, !dbg !141
  %81 = load i32* %sobel_in_index, align 4, !dbg !142
  %82 = srem i32 %81, 3, !dbg !142
  store i32 %82, i32* %sobel_in_index, align 4, !dbg !142
  %83 = load i32* %sobel_out_index, align 4, !dbg !143
  %84 = add nsw i32 %83, 1, !dbg !143
  store i32 %84, i32* %sobel_out_index, align 4, !dbg !143
  %85 = load i32* %sobel_out_index, align 4, !dbg !144
  %86 = srem i32 %85, 3, !dbg !144
  store i32 %86, i32* %sobel_out_index, align 4, !dbg !144
  %87 = load i32* %sobel_in_index, align 4, !dbg !145
  %88 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %87, !dbg !145
  %89 = load i32* %88, align 4, !dbg !145
  %90 = load i32* %sobel_out_index, align 4, !dbg !145
  %91 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %90, !dbg !145
  %92 = load i32* %91, align 4, !dbg !145
  call void @sw_sobel_processing(i32 %89, i32 %92), !dbg !145
  br label %68, !dbg !146
                                                  ; No predecessors!
  %94 = load i8** %1, !dbg !147
  ret i8* %94, !dbg !147
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i32, i32, i32, i32, i32) #0

declare i8* @sds_mmap(i8*, i32, i8*) #2

declare i32 @close(i32) #2

declare void @setCVC_TPGBuffer(i32, i32) #2

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !148), !dbg !149
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !150), !dbg !151
  call void @init_all(), !dbg !152
  %4 = call i8* @thread_sw_sync(), !dbg !153
  ret i32 0, !dbg !154
}

declare void @init_all() #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!xidane.function_declaration_filename = !{!20, !44, !22, !45, !24, !46, !26, !47, !28, !44, !30, !48, !32, !49, !34, !45, !36, !50, !38, !51, !40, !44, !42, !51}
!xidane.ExternC = !{!20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!xidane.function_argument_annotation = !{!24, !52}
!llvm.module.flags = !{!53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c", metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sw_sobel_processing", metadata !"sw_sobel_processing", metadata !"", i32 79, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @sw_sobel_processing, null, null, metadata !2, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [sw_sobel_processing]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"thread_sw_sync", metadata !"thread_sw_sync", metadata !"", i32 90, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i8* ()* @thread_sw_sync, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [thread_sw_sync]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 151, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !16, metadata !17}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!20 = metadata !{void (i32, i32)* @sw_sobel_processing}
!21 = metadata !{metadata !"void.unsigned int.0.unsigned int.0"}
!22 = metadata !{i64 ()* @sds_clock_counter}
!23 = metadata !{metadata !"unsigned long long."}
!24 = metadata !{void (i32*, i32*, i32, i32, i32)* @img_process}
!25 = metadata !{metadata !"void.int [2211840].1.int [2211840].1.int.0.int.0.int.0"}
!26 = metadata !{i32 (i8*, ...)* @printf}
!27 = metadata !{metadata !"int.const char *restrict.1"}
!28 = metadata !{i8* ()* @thread_sw_sync}
!29 = metadata !{metadata !"void ."}
!30 = metadata !{i32 (i8*, i32, ...)* @open}
!31 = metadata !{metadata !"int.const char *.1.int.0"}
!32 = metadata !{i8* (i8*, i32, i32, i32, i32, i32)* @mmap}
!33 = metadata !{metadata !"void .void *.1.size_t.0.int.0.int.0.int.0.__off_t.0"}
!34 = metadata !{i8* (i8*, i32, i8*)* @sds_mmap}
!35 = metadata !{metadata !"void .void *.1.size_t.0.void *.1"}
!36 = metadata !{i32 (i32)* @close}
!37 = metadata !{metadata !"int.int.0"}
!38 = metadata !{void (i32, i32)* @setCVC_TPGBuffer}
!39 = metadata !{metadata !"void.int.0.int.0"}
!40 = metadata !{i32 (i32, i8**)* @main}
!41 = metadata !{metadata !"int.int.0.char **.1"}
!42 = metadata !{void ()* @init_all}
!43 = metadata !{metadata !"void."}
!44 = metadata !{metadata !"/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c"}
!45 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!46 = metadata !{metadata !"../hw/img_filters.h"}
!47 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!48 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/fcntl.h"}
!49 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/mman.h"}
!50 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/unistd.h"}
!51 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/bin/../samples/platforms/zc702_hdmi/arm-xilinx-linux-gnueabi/include/zc702hdmi/hwi_export.h"}
!52 = metadata !{metadata !"rgb_data_in,,,CACHEABLE.PHYSICAL_CONTIGUOUS,,,,, rgb_data_out,,,CACHEABLE.PHYSICAL_CONTIGUOUS,,,,, "}
!53 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!54 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!55 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!56 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!57 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!58 = metadata !{i32 786689, metadata !4, metadata !"in_buffer", metadata !5, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_buffer] [line 79]
!59 = metadata !{i32 79, i32 39, metadata !4, null}
!60 = metadata !{i32 786689, metadata !4, metadata !"out_buffer", metadata !5, i32 33554511, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_buffer] [line 79]
!61 = metadata !{i32 79, i32 63, metadata !4, null}
!62 = metadata !{i32 786688, metadata !4, metadata !"param0", metadata !5, i32 81, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param0] [line 81]
!63 = metadata !{i32 81, i32 6, metadata !4, null}
!64 = metadata !{i32 81, i32 2, metadata !4, null}
!65 = metadata !{i32 786688, metadata !4, metadata !"param1", metadata !5, i32 81, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param1] [line 81]
!66 = metadata !{i32 81, i32 16, metadata !4, null}
!67 = metadata !{i32 786688, metadata !4, metadata !"param2", metadata !5, i32 81, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param2] [line 81]
!68 = metadata !{i32 81, i32 28, metadata !4, null}
!69 = metadata !{i32 786688, metadata !4, metadata !"clock_start", metadata !5, i32 83, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 83]
!70 = metadata !{i32 83, i32 1, metadata !4, null}
!71 = metadata !{i32 786688, metadata !4, metadata !"clock_end", metadata !5, i32 83, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 83]
!72 = metadata !{i32 84, i32 2, metadata !4, null}
!73 = metadata !{i32 85, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 1, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!75 = metadata !{i32 87, i32 1, metadata !4, null}
!76 = metadata !{i32 786688, metadata !9, metadata !"output_frame", metadata !5, i32 92, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output_frame] [line 92]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !78, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from unsigned int]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!80 = metadata !{i32 92, i32 15, metadata !9, null}
!81 = metadata !{i32 786688, metadata !9, metadata !"input_frame", metadata !5, i32 93, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_frame] [line 93]
!82 = metadata !{i32 93, i32 15, metadata !9, null}
!83 = metadata !{i32 786688, metadata !9, metadata !"virt_output_frame", metadata !5, i32 94, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virt_output_frame] [line 94]
!84 = metadata !{i32 94, i32 15, metadata !9, null}
!85 = metadata !{i32 786688, metadata !9, metadata !"virt_input_frame", metadata !5, i32 95, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virt_input_frame] [line 95]
!86 = metadata !{i32 95, i32 15, metadata !9, null}
!87 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 96, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 96]
!88 = metadata !{i32 96, i32 6, metadata !9, null}
!89 = metadata !{i32 96, i32 2, metadata !9, null}
!90 = metadata !{i32 786688, metadata !9, metadata !"offset", metadata !5, i32 97, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 97]
!91 = metadata !{i32 97, i32 6, metadata !9, null}
!92 = metadata !{i32 97, i32 2, metadata !9, null}
!93 = metadata !{i32 786688, metadata !9, metadata !"map_len", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map_len] [line 100]
!94 = metadata !{i32 100, i32 15, metadata !9, null}
!95 = metadata !{i32 100, i32 2, metadata !9, null}
!96 = metadata !{i32 786688, metadata !9, metadata !"fd", metadata !5, i32 101, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 101]
!97 = metadata !{i32 101, i32 6, metadata !9, null}
!98 = metadata !{i32 101, i32 11, metadata !9, null}
!99 = metadata !{i32 786688, metadata !9, metadata !"virtual_addr_in", metadata !5, i32 103, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virtual_addr_in] [line 103]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!101 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!102 = metadata !{i32 103, i32 17, metadata !9, null}
!103 = metadata !{i32 786688, metadata !9, metadata !"virtual_addr_out", metadata !5, i32 104, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virtual_addr_out] [line 104]
!104 = metadata !{i32 104, i32 17, metadata !9, null}
!105 = metadata !{i32 786688, metadata !9, metadata !"infrm_index", metadata !5, i32 106, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [infrm_index] [line 106]
!106 = metadata !{i32 106, i32 6, metadata !9, null}
!107 = metadata !{i32 106, i32 2, metadata !9, null}
!108 = metadata !{i32 786688, metadata !9, metadata !"outfrm_index", metadata !5, i32 106, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outfrm_index] [line 106]
!109 = metadata !{i32 106, i32 23, metadata !9, null}
!110 = metadata !{i32 786688, metadata !9, metadata !"sobel_in_index", metadata !5, i32 106, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sobel_in_index] [line 106]
!111 = metadata !{i32 106, i32 41, metadata !9, null}
!112 = metadata !{i32 786688, metadata !9, metadata !"sobel_out_index", metadata !5, i32 106, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sobel_out_index] [line 106]
!113 = metadata !{i32 106, i32 61, metadata !9, null}
!114 = metadata !{i32 108, i32 7, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !9, i32 108, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!116 = metadata !{i32 108, i32 7, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 108, i32 7, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!118 = metadata !{i32 786443, metadata !1, metadata !115, i32 108, i32 7, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!119 = metadata !{i32 110, i32 3, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !115, i32 109, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!121 = metadata !{i32 111, i32 3, metadata !120, null}
!122 = metadata !{i32 112, i32 3, metadata !120, null}
!123 = metadata !{i32 113, i32 37, metadata !120, null}
!124 = metadata !{i32 114, i32 38, metadata !120, null}
!125 = metadata !{i32 115, i32 3, metadata !120, null}
!126 = metadata !{i32 116, i32 17, metadata !120, null}
!127 = metadata !{i32 118, i32 17, metadata !120, null}
!128 = metadata !{i32 119, i32 17, metadata !120, null}
!129 = metadata !{i32 121, i32 2, metadata !120, null}
!130 = metadata !{i32 108, i32 28, metadata !115, null}
!131 = metadata !{i32 122, i32 2, metadata !9, null}
!132 = metadata !{i32 123, i32 2, metadata !9, null}
!133 = metadata !{i32 124, i32 2, metadata !9, null}
!134 = metadata !{i32 125, i32 2, metadata !9, null}
!135 = metadata !{i32 127, i32 3, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !9, i32 126, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/Release//home/student/ml634/2015/samples/platforms/zc702_hdmi/samples/simple_sobel/src/main_app.c]
!137 = metadata !{i32 128, i32 3, metadata !136, null}
!138 = metadata !{i32 130, i32 3, metadata !136, null}
!139 = metadata !{i32 131, i32 3, metadata !136, null}
!140 = metadata !{i32 133, i32 3, metadata !136, null}
!141 = metadata !{i32 135, i32 3, metadata !136, null}
!142 = metadata !{i32 136, i32 3, metadata !136, null}
!143 = metadata !{i32 138, i32 3, metadata !136, null}
!144 = metadata !{i32 139, i32 3, metadata !136, null}
!145 = metadata !{i32 141, i32 3, metadata !136, null}
!146 = metadata !{i32 143, i32 2, metadata !136, null}
!147 = metadata !{i32 149, i32 1, metadata !9, null}
!148 = metadata !{i32 786689, metadata !13, metadata !"argc", metadata !5, i32 16777367, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 151]
!149 = metadata !{i32 151, i32 14, metadata !13, null}
!150 = metadata !{i32 786689, metadata !13, metadata !"argv", metadata !5, i32 33554583, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 151]
!151 = metadata !{i32 151, i32 27, metadata !13, null}
!152 = metadata !{i32 153, i32 2, metadata !13, null}
!153 = metadata !{i32 154, i32 2, metadata !13, null}
!154 = metadata !{i32 157, i32 2, metadata !13, null}
