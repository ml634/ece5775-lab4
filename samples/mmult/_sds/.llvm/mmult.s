; ModuleID = '/home/student/ml634/2015/samples/mmult/mmult.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

@.str = private unnamed_addr constant [19 x i8] c"Testing mmult ...\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"Average number of processor cycles for golden version: %llu \0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"Average number of processor cycles for hardware version: %llu \0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"TEST %s\0A\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Mismatch: data index=%d d=%f, dout=%f\0A\00", align 1

; Function Attrs: nounwind
define void @_Z12mmult_goldenPfS_S_(float* %in_arr, float* %in_arr2, float* %out_arr) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %result = alloca float, align 4
  %k = alloca i32, align 4
  store float* %in_arr, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !70), !dbg !71
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !72), !dbg !73
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !74), !dbg !75
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !76), !dbg !78
  store i32 0, i32* %row, align 4, !dbg !79
  br label %4, !dbg !79

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !80
  %6 = icmp slt i32 %5, 32, !dbg !80
  br i1 %6, label %7, label %51, !dbg !80

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !83), !dbg !86
  store i32 0, i32* %col, align 4, !dbg !87
  br label %8, !dbg !87

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !88
  %10 = icmp slt i32 %9, 32, !dbg !88
  br i1 %10, label %11, label %47, !dbg !88

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !91), !dbg !93
  store float 0.000000e+00, float* %result, align 4, !dbg !94
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !95), !dbg !97
  store i32 0, i32* %k, align 4, !dbg !98
  br label %12, !dbg !98

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !99
  %14 = icmp slt i32 %13, 32, !dbg !99
  br i1 %14, label %15, label %36, !dbg !99

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !102
  %17 = mul nsw i32 %16, 32, !dbg !102
  %18 = load i32* %k, align 4, !dbg !102
  %19 = add nsw i32 %17, %18, !dbg !102
  %20 = load float** %1, align 4, !dbg !102
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !102
  %22 = load float* %21, align 4, !dbg !102
  %23 = load i32* %k, align 4, !dbg !102
  %24 = mul nsw i32 %23, 32, !dbg !102
  %25 = load i32* %col, align 4, !dbg !102
  %26 = add nsw i32 %24, %25, !dbg !102
  %27 = load float** %2, align 4, !dbg !102
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !102
  %29 = load float* %28, align 4, !dbg !102
  %30 = fmul float %22, %29, !dbg !102
  %31 = load float* %result, align 4, !dbg !102
  %32 = fadd float %31, %30, !dbg !102
  store float %32, float* %result, align 4, !dbg !102
  br label %33, !dbg !104

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !105
  %35 = add nsw i32 %34, 1, !dbg !105
  store i32 %35, i32* %k, align 4, !dbg !105
  br label %12, !dbg !105

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !106
  %38 = load i32* %row, align 4, !dbg !106
  %39 = mul nsw i32 %38, 32, !dbg !106
  %40 = load i32* %col, align 4, !dbg !106
  %41 = add nsw i32 %39, %40, !dbg !106
  %42 = load float** %3, align 4, !dbg !106
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !106
  store float %37, float* %43, align 4, !dbg !106
  br label %44, !dbg !107

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !108
  %46 = add nsw i32 %45, 1, !dbg !108
  store i32 %46, i32* %col, align 4, !dbg !108
  br label %8, !dbg !108

; <label>:47                                      ; preds = %8
  br label %48, !dbg !109

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !110
  %50 = add nsw i32 %49, 1, !dbg !110
  store i32 %50, i32* %row, align 4, !dbg !110
  br label %4, !dbg !110

; <label>:51                                      ; preds = %4
  ret void, !dbg !111
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

define i32 @_Z10mmult_testPfS_S_S_(float* %tin1Buf, float* %tin2Buf, float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %i = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !112), !dbg !113
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !114), !dbg !115
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !116), !dbg !117
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !118), !dbg !119
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !120), !dbg !121
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !122
  %6 = load float** %1, align 4, !dbg !123
  %7 = load float** %2, align 4, !dbg !123
  %8 = load float** %3, align 4, !dbg !123
  %9 = load float** %4, align 4, !dbg !123
  call void @_ZL10mmult_initPfS_S_S_(float* %6, float* %7, float* %8, float* %9), !dbg !123
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !124), !dbg !126
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !127), !dbg !126
  %10 = call i64 @sds_clock_counter(), !dbg !126
  store i64 %10, i64* %clock_start, align 8, !dbg !126
  store i32 0, i32* %i, align 4, !dbg !128
  br label %11, !dbg !128

; <label>:11                                      ; preds = %18, %0
  %12 = load i32* %i, align 4, !dbg !130
  %13 = icmp slt i32 %12, 1024, !dbg !130
  br i1 %13, label %14, label %21, !dbg !130

; <label>:14                                      ; preds = %11
  %15 = load float** %1, align 4, !dbg !133
  %16 = load float** %2, align 4, !dbg !133
  %17 = load float** %3, align 4, !dbg !133
  call void @_Z12mmult_goldenPfS_S_(float* %15, float* %16, float* %17), !dbg !133
  br label %18, !dbg !135

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4, !dbg !136
  %20 = add nsw i32 %19, 1, !dbg !136
  store i32 %20, i32* %i, align 4, !dbg !136
  br label %11, !dbg !136

; <label>:21                                      ; preds = %11
  %22 = call i64 @sds_clock_counter(), !dbg !137
  store i64 %22, i64* %clock_end, align 8, !dbg !137
  %23 = load i64* %clock_end, align 8, !dbg !137
  %24 = load i64* %clock_start, align 8, !dbg !137
  %25 = sub i64 %23, %24, !dbg !137
  %26 = udiv i64 %25, 1024, !dbg !137
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %26), !dbg !137
  %28 = call i64 @sds_clock_counter(), !dbg !137
  store i64 %28, i64* %clock_start, align 8, !dbg !137
  store i32 0, i32* %i, align 4, !dbg !139
  br label %29, !dbg !139

; <label>:29                                      ; preds = %36, %21
  %30 = load i32* %i, align 4, !dbg !141
  %31 = icmp slt i32 %30, 1024, !dbg !141
  br i1 %31, label %32, label %39, !dbg !141

; <label>:32                                      ; preds = %29
  %33 = load float** %1, align 4, !dbg !144
  %34 = load float** %2, align 4, !dbg !144
  %35 = load float** %4, align 4, !dbg !144
  call void @_Z11mmult_accelPfS_S_(float* %33, float* %34, float* %35), !dbg !144
  br label %36, !dbg !144

; <label>:36                                      ; preds = %32
  %37 = load i32* %i, align 4, !dbg !145
  %38 = add nsw i32 %37, 1, !dbg !145
  store i32 %38, i32* %i, align 4, !dbg !145
  br label %29, !dbg !145

; <label>:39                                      ; preds = %29
  %40 = call i64 @sds_clock_counter(), !dbg !146
  store i64 %40, i64* %clock_end, align 8, !dbg !146
  %41 = load i64* %clock_end, align 8, !dbg !146
  %42 = load i64* %clock_start, align 8, !dbg !146
  %43 = sub i64 %41, %42, !dbg !146
  %44 = udiv i64 %43, 1024, !dbg !146
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %44), !dbg !146
  %46 = load float** %3, align 4, !dbg !148
  %47 = load float** %4, align 4, !dbg !148
  %48 = call i32 @_ZL18mmult_result_checkPfS_(float* %46, float* %47), !dbg !148
  ret i32 %48, !dbg !148
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @_ZL10mmult_initPfS_S_S_(float* %tin1Buf, float* %tin2Buf, float* %toutBufSw, float* %toutBufHw) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !149), !dbg !150
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !151), !dbg !152
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !153), !dbg !154
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !155), !dbg !156
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !157), !dbg !158
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !159), !dbg !160
  store i32 0, i32* %i, align 4, !dbg !161
  br label %5, !dbg !161

; <label>:5                                       ; preds = %29, %0
  %6 = load i32* %i, align 4, !dbg !163
  %7 = icmp slt i32 %6, 32, !dbg !163
  br i1 %7, label %8, label %32, !dbg !163

; <label>:8                                       ; preds = %5
  store i32 0, i32* %j, align 4, !dbg !166
  br label %9, !dbg !166

; <label>:9                                       ; preds = %25, %8
  %10 = load i32* %j, align 4, !dbg !169
  %11 = icmp slt i32 %10, 32, !dbg !169
  br i1 %11, label %12, label %28, !dbg !169

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4, !dbg !172
  %14 = mul nsw i32 %13, 32, !dbg !172
  %15 = add nsw i32 1, %14, !dbg !172
  %16 = load i32* %j, align 4, !dbg !172
  %17 = add nsw i32 %15, %16, !dbg !172
  %18 = sitofp i32 %17 to float, !dbg !172
  %19 = load i32* %i, align 4, !dbg !172
  %20 = mul nsw i32 %19, 32, !dbg !172
  %21 = load i32* %j, align 4, !dbg !172
  %22 = add nsw i32 %20, %21, !dbg !172
  %23 = load float** %1, align 4, !dbg !172
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !172
  store float %18, float* %24, align 4, !dbg !172
  br label %25, !dbg !174

; <label>:25                                      ; preds = %12
  %26 = load i32* %j, align 4, !dbg !175
  %27 = add nsw i32 %26, 1, !dbg !175
  store i32 %27, i32* %j, align 4, !dbg !175
  br label %9, !dbg !175

; <label>:28                                      ; preds = %9
  br label %29, !dbg !176

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4, !dbg !177
  %31 = add nsw i32 %30, 1, !dbg !177
  store i32 %31, i32* %i, align 4, !dbg !177
  br label %5, !dbg !177

; <label>:32                                      ; preds = %5
  store i32 0, i32* %i, align 4, !dbg !178
  br label %33, !dbg !178

; <label>:33                                      ; preds = %54, %32
  %34 = load i32* %i, align 4, !dbg !180
  %35 = icmp slt i32 %34, 32, !dbg !180
  br i1 %35, label %36, label %57, !dbg !180

; <label>:36                                      ; preds = %33
  store i32 0, i32* %j, align 4, !dbg !183
  br label %37, !dbg !183

; <label>:37                                      ; preds = %50, %36
  %38 = load i32* %j, align 4, !dbg !186
  %39 = icmp slt i32 %38, 32, !dbg !186
  br i1 %39, label %40, label %53, !dbg !186

; <label>:40                                      ; preds = %37
  %41 = call i32 @rand() #3, !dbg !189
  %42 = srem i32 %41, 1024, !dbg !189
  %43 = sitofp i32 %42 to float, !dbg !189
  %44 = load i32* %i, align 4, !dbg !189
  %45 = mul nsw i32 %44, 32, !dbg !189
  %46 = load i32* %j, align 4, !dbg !189
  %47 = add nsw i32 %45, %46, !dbg !189
  %48 = load float** %2, align 4, !dbg !189
  %49 = getelementptr inbounds float* %48, i32 %47, !dbg !189
  store float %43, float* %49, align 4, !dbg !189
  br label %50, !dbg !191

; <label>:50                                      ; preds = %40
  %51 = load i32* %j, align 4, !dbg !192
  %52 = add nsw i32 %51, 1, !dbg !192
  store i32 %52, i32* %j, align 4, !dbg !192
  br label %37, !dbg !192

; <label>:53                                      ; preds = %37
  br label %54, !dbg !193

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !194
  %56 = add nsw i32 %55, 1, !dbg !194
  store i32 %56, i32* %i, align 4, !dbg !194
  br label %33, !dbg !194

; <label>:57                                      ; preds = %33
  store i32 0, i32* %i, align 4, !dbg !195
  br label %58, !dbg !195

; <label>:58                                      ; preds = %82, %57
  %59 = load i32* %i, align 4, !dbg !197
  %60 = icmp slt i32 %59, 32, !dbg !197
  br i1 %60, label %61, label %85, !dbg !197

; <label>:61                                      ; preds = %58
  store i32 0, i32* %j, align 4, !dbg !200
  br label %62, !dbg !200

; <label>:62                                      ; preds = %78, %61
  %63 = load i32* %j, align 4, !dbg !203
  %64 = icmp slt i32 %63, 32, !dbg !203
  br i1 %64, label %65, label %81, !dbg !203

; <label>:65                                      ; preds = %62
  %66 = load i32* %i, align 4, !dbg !206
  %67 = mul nsw i32 %66, 32, !dbg !206
  %68 = load i32* %j, align 4, !dbg !206
  %69 = add nsw i32 %67, %68, !dbg !206
  %70 = load float** %3, align 4, !dbg !206
  %71 = getelementptr inbounds float* %70, i32 %69, !dbg !206
  store float 0.000000e+00, float* %71, align 4, !dbg !206
  %72 = load i32* %i, align 4, !dbg !208
  %73 = mul nsw i32 %72, 32, !dbg !208
  %74 = load i32* %j, align 4, !dbg !208
  %75 = add nsw i32 %73, %74, !dbg !208
  %76 = load float** %4, align 4, !dbg !208
  %77 = getelementptr inbounds float* %76, i32 %75, !dbg !208
  store float 0.000000e+00, float* %77, align 4, !dbg !208
  br label %78, !dbg !209

; <label>:78                                      ; preds = %65
  %79 = load i32* %j, align 4, !dbg !210
  %80 = add nsw i32 %79, 1, !dbg !210
  store i32 %80, i32* %j, align 4, !dbg !210
  br label %62, !dbg !210

; <label>:81                                      ; preds = %62
  br label %82, !dbg !211

; <label>:82                                      ; preds = %81
  %83 = load i32* %i, align 4, !dbg !212
  %84 = add nsw i32 %83, 1, !dbg !212
  store i32 %84, i32* %i, align 4, !dbg !212
  br label %58, !dbg !212

; <label>:85                                      ; preds = %58
  ret void, !dbg !213
}

declare i64 @sds_clock_counter() #2

declare void @_Z11mmult_accelPfS_S_(float*, float*, float*) #2

define internal i32 @_ZL18mmult_result_checkPfS_(float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  store float* %toutBufSw, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !214), !dbg !215
  store float* %toutBufHw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !216), !dbg !217
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !218), !dbg !219
  store i32 0, i32* %i, align 4, !dbg !220
  br label %4, !dbg !220

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %i, align 4, !dbg !222
  %6 = icmp slt i32 %5, 1024, !dbg !222
  br i1 %6, label %7, label %34, !dbg !222

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !225
  %9 = load float** %2, align 4, !dbg !225
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !225
  %11 = load float* %10, align 4, !dbg !225
  %12 = load i32* %i, align 4, !dbg !225
  %13 = load float** %3, align 4, !dbg !225
  %14 = getelementptr inbounds float* %13, i32 %12, !dbg !225
  %15 = load float* %14, align 4, !dbg !225
  %16 = fcmp une float %11, %15, !dbg !225
  br i1 %16, label %17, label %30, !dbg !225

; <label>:17                                      ; preds = %7
  %18 = load i32* %i, align 4, !dbg !228
  %19 = load i32* %i, align 4, !dbg !228
  %20 = load float** %2, align 4, !dbg !228
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !228
  %22 = load float* %21, align 4, !dbg !228
  %23 = fpext float %22 to double, !dbg !228
  %24 = load i32* %i, align 4, !dbg !228
  %25 = load float** %3, align 4, !dbg !228
  %26 = getelementptr inbounds float* %25, i32 %24, !dbg !228
  %27 = load float* %26, align 4, !dbg !228
  %28 = fpext float %27 to double, !dbg !228
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i32 %18, double %23, double %28), !dbg !228
  store i32 0, i32* %1, !dbg !230
  br label %35, !dbg !230

; <label>:30                                      ; preds = %7
  br label %31, !dbg !231

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4, !dbg !232
  %33 = add nsw i32 %32, 1, !dbg !232
  store i32 %33, i32* %i, align 4, !dbg !232
  br label %4, !dbg !232

; <label>:34                                      ; preds = %4
  store i32 1, i32* %1, !dbg !233
  br label %35, !dbg !233

; <label>:35                                      ; preds = %34, %17
  %36 = load i32* %1, !dbg !234
  ret i32 %36, !dbg !234
}

define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %test_passed = alloca i32, align 4
  %tin1Buf = alloca float*, align 4
  %tin2Buf = alloca float*, align 4
  %toutBufSw = alloca float*, align 4
  %toutBufHw = alloca float*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !235), !dbg !236
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !237), !dbg !238
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !239), !dbg !240
  store i32 0, i32* %test_passed, align 4, !dbg !241
  call void @llvm.dbg.declare(metadata !{float** %tin1Buf}, metadata !242), !dbg !243
  call void @llvm.dbg.declare(metadata !{float** %tin2Buf}, metadata !244), !dbg !245
  call void @llvm.dbg.declare(metadata !{float** %toutBufSw}, metadata !246), !dbg !247
  call void @llvm.dbg.declare(metadata !{float** %toutBufHw}, metadata !248), !dbg !249
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i32 32), !dbg !250
  %5 = call i8* @sds_alloc(i32 4096), !dbg !251
  %6 = bitcast i8* %5 to float*, !dbg !251
  store float* %6, float** %tin1Buf, align 4, !dbg !251
  %7 = call i8* @sds_alloc(i32 4096), !dbg !252
  %8 = bitcast i8* %7 to float*, !dbg !252
  store float* %8, float** %tin2Buf, align 4, !dbg !252
  %9 = call i8* @sds_alloc(i32 4096), !dbg !253
  %10 = bitcast i8* %9 to float*, !dbg !253
  store float* %10, float** %toutBufHw, align 4, !dbg !253
  %11 = call i8* @sds_alloc(i32 4096), !dbg !254
  %12 = bitcast i8* %11 to float*, !dbg !254
  store float* %12, float** %toutBufSw, align 4, !dbg !254
  %13 = load float** %tin1Buf, align 4, !dbg !255
  %14 = icmp ne float* %13, null, !dbg !255
  br i1 %14, label %15, label %24, !dbg !255

; <label>:15                                      ; preds = %0
  %16 = load float** %tin2Buf, align 4, !dbg !257
  %17 = icmp ne float* %16, null, !dbg !257
  br i1 %17, label %18, label %24, !dbg !257

; <label>:18                                      ; preds = %15
  %19 = load float** %toutBufHw, align 4, !dbg !259
  %20 = icmp ne float* %19, null, !dbg !259
  br i1 %20, label %21, label %24, !dbg !259

; <label>:21                                      ; preds = %18
  %22 = load float** %toutBufSw, align 4, !dbg !261
  %23 = icmp ne float* %22, null, !dbg !261
  br i1 %23, label %49, label %24, !dbg !261

; <label>:24                                      ; preds = %21, %18, %15, %0
  %25 = load float** %tin1Buf, align 4, !dbg !263
  %26 = icmp ne float* %25, null, !dbg !263
  br i1 %26, label %27, label %30, !dbg !263

; <label>:27                                      ; preds = %24
  %28 = load float** %tin1Buf, align 4, !dbg !266
  %29 = bitcast float* %28 to i8*, !dbg !266
  call void @sds_free(i8* %29), !dbg !266
  br label %30, !dbg !266

; <label>:30                                      ; preds = %27, %24
  %31 = load float** %tin2Buf, align 4, !dbg !268
  %32 = icmp ne float* %31, null, !dbg !268
  br i1 %32, label %33, label %36, !dbg !268

; <label>:33                                      ; preds = %30
  %34 = load float** %tin2Buf, align 4, !dbg !270
  %35 = bitcast float* %34 to i8*, !dbg !270
  call void @sds_free(i8* %35), !dbg !270
  br label %36, !dbg !270

; <label>:36                                      ; preds = %33, %30
  %37 = load float** %toutBufHw, align 4, !dbg !272
  %38 = icmp ne float* %37, null, !dbg !272
  br i1 %38, label %39, label %42, !dbg !272

; <label>:39                                      ; preds = %36
  %40 = load float** %toutBufHw, align 4, !dbg !274
  %41 = bitcast float* %40 to i8*, !dbg !274
  call void @sds_free(i8* %41), !dbg !274
  br label %42, !dbg !274

; <label>:42                                      ; preds = %39, %36
  %43 = load float** %toutBufSw, align 4, !dbg !276
  %44 = icmp ne float* %43, null, !dbg !276
  br i1 %44, label %45, label %48, !dbg !276

; <label>:45                                      ; preds = %42
  %46 = load float** %toutBufSw, align 4, !dbg !278
  %47 = bitcast float* %46 to i8*, !dbg !278
  call void @sds_free(i8* %47), !dbg !278
  br label %48, !dbg !278

; <label>:48                                      ; preds = %45, %42
  store i32 2, i32* %1, !dbg !280
  br label %71, !dbg !280

; <label>:49                                      ; preds = %21
  %50 = load float** %tin1Buf, align 4, !dbg !281
  %51 = load float** %tin2Buf, align 4, !dbg !281
  %52 = load float** %toutBufSw, align 4, !dbg !281
  %53 = load float** %toutBufHw, align 4, !dbg !281
  %54 = call i32 @_Z10mmult_testPfS_S_S_(float* %50, float* %51, float* %52, float* %53), !dbg !281
  store i32 %54, i32* %test_passed, align 4, !dbg !281
  %55 = load float** %tin1Buf, align 4, !dbg !282
  %56 = bitcast float* %55 to i8*, !dbg !282
  call void @sds_free(i8* %56), !dbg !282
  %57 = load float** %tin2Buf, align 4, !dbg !283
  %58 = bitcast float* %57 to i8*, !dbg !283
  call void @sds_free(i8* %58), !dbg !283
  %59 = load float** %toutBufHw, align 4, !dbg !284
  %60 = bitcast float* %59 to i8*, !dbg !284
  call void @sds_free(i8* %60), !dbg !284
  %61 = load float** %toutBufSw, align 4, !dbg !285
  %62 = bitcast float* %61 to i8*, !dbg !285
  call void @sds_free(i8* %62), !dbg !285
  %63 = load i32* %test_passed, align 4, !dbg !286
  %64 = icmp ne i32 %63, 0, !dbg !286
  br i1 %64, label %65, label %66, !dbg !286

; <label>:65                                      ; preds = %49
  br label %67, !dbg !287

; <label>:66                                      ; preds = %49
  br label %67, !dbg !289

; <label>:67                                      ; preds = %66, %65
  %68 = phi [7 x i8]* [ @.str5, %65 ], [ @.str6, %66 ], !dbg !286
  %69 = getelementptr inbounds [7 x i8]* %68, i32 0, i32 0, !dbg !291
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* %69), !dbg !291
  store i32 0, i32* %1, !dbg !294
  br label %71, !dbg !294

; <label>:71                                      ; preds = %67, %48
  %72 = load i32* %1, !dbg !295
  ret i32 %72, !dbg !295
}

declare i8* @sds_alloc(i32) #2

declare void @sds_free(i8*) #2

; Function Attrs: nounwind
declare i32 @rand() #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!xidane.function_declaration_type = !{!26, !48, !28, !49, !30, !50, !32, !51, !34, !52, !36, !53, !38, !54, !40, !55, !42, !56, !44, !57, !46, !58}
!xidane.function_declaration_filename = !{!26, !59, !28, !59, !30, !60, !32, !59, !34, !61, !36, !62, !38, !59, !40, !59, !42, !61, !44, !61, !46, !63}
!xidane.ExternC = !{!30, !34, !42, !44, !46}
!xidane.function_argument_annotation = !{!36, !64}
!llvm.module.flags = !{!65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/student/ml634/2015/samples/mmult/mmult.cpp", metadata !"/home/student/ml634/2015/samples/mmult"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !14, metadata !20, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [mmult_golden]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_test", metadata !"mmult_test", metadata !"_Z10mmult_testPfS_S_S_", i32 61, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*, float*, float*)* @_Z10mmult_testPfS_S_S_, null, null, metadata !2, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [mmult_test]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13, metadata !8, metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 86, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 86} ; [ DW_TAG_subprogram ] [line 86] [def] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !13, metadata !13, metadata !17}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkPfS_", i32 48, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*)* @_ZL18mmult_result_checkPfS_, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 48] [local] [def] [scope 49] [mmult_result_check]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !13, metadata !8, metadata !8}
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_init", metadata !"mmult_init", metadata !"_ZL10mmult_initPfS_S_S_", i32 13, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*, float*)* @_ZL10mmult_initPfS_S_S_, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 13] [local] [def] [scope 14] [mmult_init]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8}
!26 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!27 = metadata !{metadata !"mmult_golden"}
!28 = metadata !{i32 (float*, float*, float*, float*)* @_Z10mmult_testPfS_S_S_}
!29 = metadata !{metadata !"mmult_test"}
!30 = metadata !{i32 (i8*, ...)* @printf}
!31 = metadata !{metadata !"printf"}
!32 = metadata !{void (float*, float*, float*, float*)* @_ZL10mmult_initPfS_S_S_}
!33 = metadata !{metadata !"mmult_init"}
!34 = metadata !{i64 ()* @sds_clock_counter}
!35 = metadata !{metadata !"sds_clock_counter"}
!36 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!37 = metadata !{metadata !"mmult_accel"}
!38 = metadata !{i32 (float*, float*)* @_ZL18mmult_result_checkPfS_}
!39 = metadata !{metadata !"mmult_result_check"}
!40 = metadata !{i32 (i32, i8**)* @main}
!41 = metadata !{metadata !"main"}
!42 = metadata !{i8* (i32)* @sds_alloc}
!43 = metadata !{metadata !"sds_alloc"}
!44 = metadata !{void (i8*)* @sds_free}
!45 = metadata !{metadata !"sds_free"}
!46 = metadata !{i32 ()* @rand}
!47 = metadata !{metadata !"rand"}
!48 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!49 = metadata !{metadata !"int.float *.1.float *.1.float *.1.float *.1"}
!50 = metadata !{metadata !"int.const char *restrict.1"}
!51 = metadata !{metadata !"void.float *.1.float *.1.float *.1.float *.1"}
!52 = metadata !{metadata !"unsigned long long."}
!53 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!54 = metadata !{metadata !"int.float *.1.float *.1"}
!55 = metadata !{metadata !"int.int.0.char *[].1"}
!56 = metadata !{metadata !"void .size_t.0"}
!57 = metadata !{metadata !"void.void *.1"}
!58 = metadata !{metadata !"int."}
!59 = metadata !{metadata !"/home/student/ml634/2015/samples/mmult/mmult.cpp"}
!60 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2016.1/SDK/2016.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdio.h"}
!61 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2016.1/aarch32-linux/include/sds_lib.h"}
!62 = metadata !{metadata !"/home/student/ml634/2015/samples/mmult/mmult_accel.h"}
!63 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2016.1/SDK/2016.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include/stdlib.h"}
!64 = metadata !{metadata !"in_A,,,,,,,,, in_B,,,,,,,,, out_C,,,,,,,,, "}
!65 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!66 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!67 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!68 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!69 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!70 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 35]
!71 = metadata !{i32 35, i32 26, metadata !4, null}
!72 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !5, i32 33554467, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 35]
!73 = metadata !{i32 35, i32 42, metadata !4, null}
!74 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !5, i32 50331683, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 35]
!75 = metadata !{i32 35, i32 58, metadata !4, null}
!76 = metadata !{i32 786688, metadata !77, metadata !"row", metadata !5, i32 37, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 37]
!77 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!78 = metadata !{i32 37, i32 12, metadata !77, null}
!79 = metadata !{i32 37, i32 8, metadata !77, null}
!80 = metadata !{i32 37, i32 8, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 37, i32 8, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!82 = metadata !{i32 786443, metadata !1, metadata !77, i32 37, i32 8, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!83 = metadata !{i32 786688, metadata !84, metadata !"col", metadata !5, i32 38, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 38]
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 38, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!85 = metadata !{i32 786443, metadata !1, metadata !77, i32 37, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!86 = metadata !{i32 38, i32 14, metadata !84, null}
!87 = metadata !{i32 38, i32 10, metadata !84, null}
!88 = metadata !{i32 38, i32 10, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 38, i32 10, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!90 = metadata !{i32 786443, metadata !1, metadata !84, i32 38, i32 10, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!91 = metadata !{i32 786688, metadata !92, metadata !"result", metadata !5, i32 39, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 39]
!92 = metadata !{i32 786443, metadata !1, metadata !84, i32 38, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!93 = metadata !{i32 39, i32 13, metadata !92, null}
!94 = metadata !{i32 39, i32 7, metadata !92, null}
!95 = metadata !{i32 786688, metadata !96, metadata !"k", metadata !5, i32 40, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 40]
!96 = metadata !{i32 786443, metadata !1, metadata !92, i32 40, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!97 = metadata !{i32 40, i32 16, metadata !96, null}
!98 = metadata !{i32 40, i32 12, metadata !96, null}
!99 = metadata !{i32 40, i32 12, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 40, i32 12, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!101 = metadata !{i32 786443, metadata !1, metadata !96, i32 40, i32 12, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!102 = metadata !{i32 41, i32 9, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !96, i32 40, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!104 = metadata !{i32 42, i32 7, metadata !103, null}
!105 = metadata !{i32 40, i32 36, metadata !96, null}
!106 = metadata !{i32 43, i32 7, metadata !92, null}
!107 = metadata !{i32 44, i32 5, metadata !92, null}
!108 = metadata !{i32 38, i32 38, metadata !84, null}
!109 = metadata !{i32 45, i32 3, metadata !85, null}
!110 = metadata !{i32 37, i32 36, metadata !77, null}
!111 = metadata !{i32 46, i32 1, metadata !4, null}
!112 = metadata !{i32 786689, metadata !10, metadata !"tin1Buf", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 61]
!113 = metadata !{i32 61, i32 23, metadata !10, null}
!114 = metadata !{i32 786689, metadata !10, metadata !"tin2Buf", metadata !5, i32 33554493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 61]
!115 = metadata !{i32 61, i32 40, metadata !10, null}
!116 = metadata !{i32 786689, metadata !10, metadata !"toutBufSw", metadata !5, i32 50331709, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 61]
!117 = metadata !{i32 61, i32 56, metadata !10, null}
!118 = metadata !{i32 786689, metadata !10, metadata !"toutBufHw", metadata !5, i32 67108925, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 61]
!119 = metadata !{i32 61, i32 74, metadata !10, null}
!120 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !5, i32 63, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 63]
!121 = metadata !{i32 63, i32 7, metadata !10, null}
!122 = metadata !{i32 65, i32 3, metadata !10, null}
!123 = metadata !{i32 67, i32 3, metadata !10, null}
!124 = metadata !{i32 786688, metadata !10, metadata !"clock_start", metadata !5, i32 69, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 69]
!125 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!126 = metadata !{i32 69, i32 3, metadata !10, null}
!127 = metadata !{i32 786688, metadata !10, metadata !"clock_end", metadata !5, i32 69, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 69]
!128 = metadata !{i32 71, i32 8, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !10, i32 71, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!130 = metadata !{i32 71, i32 8, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 71, i32 8, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!132 = metadata !{i32 786443, metadata !1, metadata !129, i32 71, i32 8, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!133 = metadata !{i32 72, i32 5, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !129, i32 71, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!135 = metadata !{i32 73, i32 3, metadata !134, null}
!136 = metadata !{i32 71, i32 30, metadata !129, null}
!137 = metadata !{i32 75, i32 3, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !10, i32 75, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!139 = metadata !{i32 77, i32 8, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !10, i32 77, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!141 = metadata !{i32 77, i32 8, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !143, i32 77, i32 8, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!143 = metadata !{i32 786443, metadata !1, metadata !140, i32 77, i32 8, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!144 = metadata !{i32 78, i32 5, metadata !140, null}
!145 = metadata !{i32 77, i32 30, metadata !140, null}
!146 = metadata !{i32 80, i32 3, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !10, i32 80, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!148 = metadata !{i32 82, i32 10, metadata !10, null}
!149 = metadata !{i32 786689, metadata !23, metadata !"tin1Buf", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 13]
!150 = metadata !{i32 13, i32 31, metadata !23, null}
!151 = metadata !{i32 786689, metadata !23, metadata !"tin2Buf", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 13]
!152 = metadata !{i32 13, i32 48, metadata !23, null}
!153 = metadata !{i32 786689, metadata !23, metadata !"toutBufSw", metadata !5, i32 50331661, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 13]
!154 = metadata !{i32 13, i32 64, metadata !23, null}
!155 = metadata !{i32 786689, metadata !23, metadata !"toutBufHw", metadata !5, i32 67108877, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 13]
!156 = metadata !{i32 13, i32 82, metadata !23, null}
!157 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 15]
!158 = metadata !{i32 15, i32 7, metadata !23, null}
!159 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 15]
!160 = metadata !{i32 15, i32 10, metadata !23, null}
!161 = metadata !{i32 17, i32 8, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !23, i32 17, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!163 = metadata !{i32 17, i32 8, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !165, i32 17, i32 8, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!165 = metadata !{i32 786443, metadata !1, metadata !162, i32 17, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!166 = metadata !{i32 18, i32 10, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !168, i32 18, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!168 = metadata !{i32 786443, metadata !1, metadata !162, i32 17, i32 33, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!169 = metadata !{i32 18, i32 10, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 18, i32 10, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!171 = metadata !{i32 786443, metadata !1, metadata !167, i32 18, i32 10, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!172 = metadata !{i32 19, i32 7, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !167, i32 18, i32 35, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!174 = metadata !{i32 20, i32 5, metadata !173, null}
!175 = metadata !{i32 18, i32 30, metadata !167, null}
!176 = metadata !{i32 21, i32 3, metadata !168, null}
!177 = metadata !{i32 17, i32 28, metadata !162, null}
!178 = metadata !{i32 22, i32 8, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !23, i32 22, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!180 = metadata !{i32 22, i32 8, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !182, i32 22, i32 8, i32 2, i32 50} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!182 = metadata !{i32 786443, metadata !1, metadata !179, i32 22, i32 8, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!183 = metadata !{i32 23, i32 10, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !185, i32 23, i32 5, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!185 = metadata !{i32 786443, metadata !1, metadata !179, i32 22, i32 33, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!186 = metadata !{i32 23, i32 10, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 23, i32 10, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!188 = metadata !{i32 786443, metadata !1, metadata !184, i32 23, i32 10, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!189 = metadata !{i32 24, i32 34, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !184, i32 23, i32 35, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!191 = metadata !{i32 25, i32 5, metadata !190, null}
!192 = metadata !{i32 23, i32 30, metadata !184, null}
!193 = metadata !{i32 26, i32 3, metadata !185, null}
!194 = metadata !{i32 22, i32 28, metadata !179, null}
!195 = metadata !{i32 27, i32 8, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !23, i32 27, i32 3, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!197 = metadata !{i32 27, i32 8, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !199, i32 27, i32 8, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!199 = metadata !{i32 786443, metadata !1, metadata !196, i32 27, i32 8, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!200 = metadata !{i32 28, i32 10, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 28, i32 5, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!202 = metadata !{i32 786443, metadata !1, metadata !196, i32 27, i32 33, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!203 = metadata !{i32 28, i32 10, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 28, i32 10, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!205 = metadata !{i32 786443, metadata !1, metadata !201, i32 28, i32 10, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!206 = metadata !{i32 29, i32 7, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !201, i32 28, i32 35, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!208 = metadata !{i32 30, i32 7, metadata !207, null}
!209 = metadata !{i32 31, i32 5, metadata !207, null}
!210 = metadata !{i32 28, i32 30, metadata !201, null}
!211 = metadata !{i32 32, i32 3, metadata !202, null}
!212 = metadata !{i32 27, i32 28, metadata !196, null}
!213 = metadata !{i32 33, i32 1, metadata !23, null}
!214 = metadata !{i32 786689, metadata !20, metadata !"toutBufSw", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 48]
!215 = metadata !{i32 48, i32 38, metadata !20, null}
!216 = metadata !{i32 786689, metadata !20, metadata !"toutBufHw", metadata !5, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 48]
!217 = metadata !{i32 48, i32 56, metadata !20, null}
!218 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 50, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!219 = metadata !{i32 50, i32 7, metadata !20, null}
!220 = metadata !{i32 52, i32 8, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !20, i32 52, i32 3, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!222 = metadata !{i32 52, i32 8, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !224, i32 52, i32 8, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!224 = metadata !{i32 786443, metadata !1, metadata !221, i32 52, i32 8, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!225 = metadata !{i32 53, i32 9, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 53, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!227 = metadata !{i32 786443, metadata !1, metadata !221, i32 52, i32 43, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!228 = metadata !{i32 54, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !226, i32 53, i32 39, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!230 = metadata !{i32 55, i32 7, metadata !229, null}
!231 = metadata !{i32 57, i32 3, metadata !227, null}
!232 = metadata !{i32 52, i32 38, metadata !221, null}
!233 = metadata !{i32 58, i32 3, metadata !20, null} ; [ DW_TAG_imported_module ]
!234 = metadata !{i32 59, i32 1, metadata !20, null}
!235 = metadata !{i32 786689, metadata !14, metadata !"argc", metadata !5, i32 16777302, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 86]
!236 = metadata !{i32 86, i32 14, metadata !14, null}
!237 = metadata !{i32 786689, metadata !14, metadata !"argv", metadata !5, i32 33554518, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 86]
!238 = metadata !{i32 86, i32 26, metadata !14, null}
!239 = metadata !{i32 786688, metadata !14, metadata !"test_passed", metadata !5, i32 87, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 87]
!240 = metadata !{i32 87, i32 7, metadata !14, null}
!241 = metadata !{i32 87, i32 3, metadata !14, null}
!242 = metadata !{i32 786688, metadata !14, metadata !"tin1Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin1Buf] [line 88]
!243 = metadata !{i32 88, i32 10, metadata !14, null}
!244 = metadata !{i32 786688, metadata !14, metadata !"tin2Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin2Buf] [line 88]
!245 = metadata !{i32 88, i32 20, metadata !14, null}
!246 = metadata !{i32 786688, metadata !14, metadata !"toutBufSw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufSw] [line 88]
!247 = metadata !{i32 88, i32 30, metadata !14, null}
!248 = metadata !{i32 786688, metadata !14, metadata !"toutBufHw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufHw] [line 88]
!249 = metadata !{i32 88, i32 42, metadata !14, null}
!250 = metadata !{i32 90, i32 3, metadata !14, null}
!251 = metadata !{i32 92, i32 22, metadata !14, null}
!252 = metadata !{i32 93, i32 22, metadata !14, null}
!253 = metadata !{i32 94, i32 24, metadata !14, null}
!254 = metadata !{i32 95, i32 24, metadata !14, null}
!255 = metadata !{i32 97, i32 7, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !14, i32 97, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!257 = metadata !{i32 97, i32 7, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !256, i32 97, i32 7, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!259 = metadata !{i32 97, i32 7, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !256, i32 97, i32 7, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!261 = metadata !{i32 97, i32 7, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !256, i32 97, i32 7, i32 3, i32 59} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!263 = metadata !{i32 98, i32 9, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 98, i32 9, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!265 = metadata !{i32 786443, metadata !1, metadata !256, i32 97, i32 57, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!266 = metadata !{i32 98, i32 18, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !264, i32 98, i32 18, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!268 = metadata !{i32 99, i32 9, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !265, i32 99, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!270 = metadata !{i32 99, i32 18, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !269, i32 99, i32 18, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!272 = metadata !{i32 100, i32 9, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !265, i32 100, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!274 = metadata !{i32 100, i32 20, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 100, i32 20, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!276 = metadata !{i32 101, i32 9, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !265, i32 101, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!278 = metadata !{i32 101, i32 20, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !277, i32 101, i32 20, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!280 = metadata !{i32 102, i32 5, metadata !265, null}
!281 = metadata !{i32 105, i32 17, metadata !14, null}
!282 = metadata !{i32 107, i32 3, metadata !14, null}
!283 = metadata !{i32 108, i32 3, metadata !14, null}
!284 = metadata !{i32 109, i32 3, metadata !14, null}
!285 = metadata !{i32 110, i32 3, metadata !14, null}
!286 = metadata !{i32 112, i32 3, metadata !14, null}
!287 = metadata !{i32 112, i32 3, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!289 = metadata !{i32 112, i32 3, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!291 = metadata !{i32 112, i32 3, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !293, i32 112, i32 3, i32 4, i32 67} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!293 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [/home/student/ml634/2015/samples/mmult//home/student/ml634/2015/samples/mmult/mmult.cpp]
!294 = metadata !{i32 114, i32 3, metadata !14, null}
!295 = metadata !{i32 115, i32 1, metadata !14, null}
