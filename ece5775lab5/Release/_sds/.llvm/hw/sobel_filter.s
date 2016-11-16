; ModuleID = '/home/student/ml634/ece5775lab5/hw/sobel_filter.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%"class.std::ios_base::Init" = type { i8 }
%class.ap_window = type { [3 x [3 x i8]] }
%class.ap_linebuffer = type { [3 x [1920 x i8]] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1
@_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sobel_filter.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !208
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !208
  ret void, !dbg !208
}

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) #0

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define zeroext i8 @_Z14sobel_operatorP9ap_windowIhLi3ELi3EE(%class.ap_window* %window) #0 {
  %1 = alloca %class.ap_window*, align 4
  %x_weight = alloca i16, align 2
  %y_weight = alloca i16, align 2
  %edge_weight = alloca i16, align 2
  %edge_val = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store %class.ap_window* %window, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !209), !dbg !210
  call void @llvm.dbg.declare(metadata !{i16* %x_weight}, metadata !211), !dbg !213
  store i16 0, i16* %x_weight, align 2, !dbg !214
  call void @llvm.dbg.declare(metadata !{i16* %y_weight}, metadata !215), !dbg !216
  store i16 0, i16* %y_weight, align 2, !dbg !217
  call void @llvm.dbg.declare(metadata !{i16* %edge_weight}, metadata !218), !dbg !219
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !220), !dbg !221
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !222), !dbg !223
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !224), !dbg !225
  store i8 0, i8* %i, align 1, !dbg !226
  br label %2, !dbg !226

; <label>:2                                       ; preds = %56, %0
  %3 = load i8* %i, align 1, !dbg !228
  %4 = zext i8 %3 to i32, !dbg !228
  %5 = icmp slt i32 %4, 3, !dbg !228
  br i1 %5, label %6, label %59, !dbg !228

; <label>:6                                       ; preds = %2
  store i8 0, i8* %j, align 1, !dbg !231
  br label %7, !dbg !231

; <label>:7                                       ; preds = %52, %6
  %8 = load i8* %j, align 1, !dbg !234
  %9 = zext i8 %8 to i32, !dbg !234
  %10 = icmp slt i32 %9, 3, !dbg !234
  br i1 %10, label %11, label %55, !dbg !234

; <label>:11                                      ; preds = %7
  %12 = load i16* %x_weight, align 2, !dbg !237
  %13 = sext i16 %12 to i32, !dbg !237
  %14 = load %class.ap_window** %1, align 4, !dbg !239
  %15 = load i8* %i, align 1, !dbg !239
  %16 = zext i8 %15 to i32, !dbg !239
  %17 = load i8* %j, align 1, !dbg !239
  %18 = zext i8 %17 to i32, !dbg !239
  %19 = call zeroext i8 @_ZN9ap_windowIhLi3ELi3EE6getvalEii(%class.ap_window* %14, i32 %16, i32 %18), !dbg !239
  %20 = zext i8 %19 to i32, !dbg !239
  %21 = load i8* %j, align 1, !dbg !239
  %22 = zext i8 %21 to i32, !dbg !239
  %23 = load i8* %i, align 1, !dbg !239
  %24 = zext i8 %23 to i32, !dbg !239
  %25 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4x_op, i32 0, i32 %24, !dbg !239
  %26 = getelementptr inbounds [3 x i8]* %25, i32 0, i32 %22, !dbg !239
  %27 = load i8* %26, align 1, !dbg !239
  %28 = zext i8 %27 to i32, !dbg !239
  %29 = mul nsw i32 %20, %28, !dbg !239
  %30 = add nsw i32 %13, %29, !dbg !239
  %31 = trunc i32 %30 to i16, !dbg !239
  store i16 %31, i16* %x_weight, align 2, !dbg !239
  %32 = load i16* %y_weight, align 2, !dbg !240
  %33 = sext i16 %32 to i32, !dbg !240
  %34 = load %class.ap_window** %1, align 4, !dbg !241
  %35 = load i8* %i, align 1, !dbg !241
  %36 = zext i8 %35 to i32, !dbg !241
  %37 = load i8* %j, align 1, !dbg !241
  %38 = zext i8 %37 to i32, !dbg !241
  %39 = call zeroext i8 @_ZN9ap_windowIhLi3ELi3EE6getvalEii(%class.ap_window* %34, i32 %36, i32 %38), !dbg !241
  %40 = zext i8 %39 to i32, !dbg !241
  %41 = load i8* %j, align 1, !dbg !241
  %42 = zext i8 %41 to i32, !dbg !241
  %43 = load i8* %i, align 1, !dbg !241
  %44 = zext i8 %43 to i32, !dbg !241
  %45 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4y_op, i32 0, i32 %44, !dbg !241
  %46 = getelementptr inbounds [3 x i8]* %45, i32 0, i32 %42, !dbg !241
  %47 = load i8* %46, align 1, !dbg !241
  %48 = zext i8 %47 to i32, !dbg !241
  %49 = mul nsw i32 %40, %48, !dbg !241
  %50 = add nsw i32 %33, %49, !dbg !241
  %51 = trunc i32 %50 to i16, !dbg !241
  store i16 %51, i16* %y_weight, align 2, !dbg !241
  br label %52, !dbg !242

; <label>:52                                      ; preds = %11
  %53 = load i8* %j, align 1, !dbg !243
  %54 = add i8 %53, 1, !dbg !243
  store i8 %54, i8* %j, align 1, !dbg !243
  br label %7, !dbg !243

; <label>:55                                      ; preds = %7
  br label %56, !dbg !244

; <label>:56                                      ; preds = %55
  %57 = load i8* %i, align 1, !dbg !245
  %58 = add i8 %57, 1, !dbg !245
  store i8 %58, i8* %i, align 1, !dbg !245
  br label %2, !dbg !245

; <label>:59                                      ; preds = %2
  %60 = load i16* %x_weight, align 2, !dbg !246
  %61 = sext i16 %60 to i32, !dbg !246
  %62 = icmp sgt i32 %61, 0, !dbg !246
  br i1 %62, label %63, label %66, !dbg !246

; <label>:63                                      ; preds = %59
  %64 = load i16* %x_weight, align 2, !dbg !247
  %65 = sext i16 %64 to i32, !dbg !247
  br label %70, !dbg !247

; <label>:66                                      ; preds = %59
  %67 = load i16* %x_weight, align 2, !dbg !249
  %68 = sext i16 %67 to i32, !dbg !249
  %69 = sub nsw i32 0, %68, !dbg !249
  br label %70, !dbg !249

; <label>:70                                      ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ], !dbg !246
  %72 = load i16* %y_weight, align 2, !dbg !251
  %73 = sext i16 %72 to i32, !dbg !251
  %74 = icmp sgt i32 %73, 0, !dbg !251
  br i1 %74, label %75, label %78, !dbg !251

; <label>:75                                      ; preds = %70
  %76 = load i16* %y_weight, align 2, !dbg !254
  %77 = sext i16 %76 to i32, !dbg !254
  br label %82, !dbg !254

; <label>:78                                      ; preds = %70
  %79 = load i16* %y_weight, align 2, !dbg !256
  %80 = sext i16 %79 to i32, !dbg !256
  %81 = sub nsw i32 0, %80, !dbg !256
  br label %82, !dbg !256

; <label>:82                                      ; preds = %78, %75
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ], !dbg !246
  %84 = add nsw i32 %71, %83, !dbg !258
  %85 = trunc i32 %84 to i16, !dbg !258
  store i16 %85, i16* %edge_weight, align 2, !dbg !258
  %86 = load i16* %edge_weight, align 2, !dbg !261
  %87 = trunc i16 %86 to i8, !dbg !261
  %88 = zext i8 %87 to i32, !dbg !261
  %89 = sub nsw i32 255, %88, !dbg !261
  %90 = trunc i32 %89 to i8, !dbg !261
  store i8 %90, i8* %edge_val, align 1, !dbg !261
  %91 = load i8* %edge_val, align 1, !dbg !262
  %92 = zext i8 %91 to i32, !dbg !262
  %93 = icmp sgt i32 %92, 150, !dbg !262
  br i1 %93, label %94, label %95, !dbg !262

; <label>:94                                      ; preds = %82
  store i8 0, i8* %edge_val, align 1, !dbg !264
  br label %96, !dbg !264

; <label>:95                                      ; preds = %82
  store i8 -1, i8* %edge_val, align 1, !dbg !265
  br label %96

; <label>:96                                      ; preds = %95, %94
  %97 = load i8* %edge_val, align 1, !dbg !266
  ret i8 %97, !dbg !266
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
define linkonce_odr zeroext i8 @_ZN9ap_windowIhLi3ELi3EE6getvalEii(%class.ap_window* %this, i32 %RowIndex, i32 %ColIndex) #3 align 2 {
  %1 = alloca %class.ap_window*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store %class.ap_window* %this, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !267), !dbg !269
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !270), !dbg !272
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !273), !dbg !274
  %4 = load %class.ap_window** %1
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !275), !dbg !276
  %5 = load i32* %3, align 4, !dbg !277
  %6 = load i32* %2, align 4, !dbg !277
  %7 = getelementptr inbounds %class.ap_window* %4, i32 0, i32 0, !dbg !277
  %8 = getelementptr inbounds [3 x [3 x i8]]* %7, i32 0, i32 %6, !dbg !277
  %9 = getelementptr inbounds [3 x i8]* %8, i32 0, i32 %5, !dbg !277
  %10 = load i8* %9, align 1, !dbg !277
  store i8 %10, i8* %return_value, align 1, !dbg !277
  %11 = load i8* %return_value, align 1, !dbg !278
  ret i8 %11, !dbg !278
}

define void @sobel_filter(i16* %inter_pix, i8* %output_edge) #0 {
  %1 = alloca i16*, align 4
  %2 = alloca i8*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %buff_A = alloca %class.ap_linebuffer, align 1
  %buff_C = alloca %class.ap_window, align 1
  %3 = alloca i8*
  %4 = alloca i32
  %temp = alloca i8, align 1
  %tempx = alloca i8, align 1
  %new_pix = alloca i16, align 2
  %edge = alloca i8, align 1
  store i16* %inter_pix, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !279), !dbg !280
  store i8* %output_edge, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !281), !dbg !282
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !283), !dbg !284
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !285), !dbg !286
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer* %buff_A}, metadata !287), !dbg !289
  %5 = call %class.ap_linebuffer* @_ZN13ap_linebufferIhLi3ELi1920EEC2Ev(%class.ap_linebuffer* %buff_A), !dbg !290
  call void @llvm.dbg.declare(metadata !{%class.ap_window* %buff_C}, metadata !291), !dbg !292
  %6 = invoke %class.ap_window* @_ZN9ap_windowIhLi3ELi3EEC2Ev(%class.ap_window* %buff_C)
          to label %7 unwind label %24, !dbg !292

; <label>:7                                       ; preds = %0
  store i32 0, i32* %row, align 4, !dbg !293
  br label %8, !dbg !293

; <label>:8                                       ; preds = %105, %7
  %9 = load i32* %row, align 4, !dbg !295
  %10 = icmp slt i32 %9, 1081, !dbg !295
  br i1 %10, label %11, label %108, !dbg !295

; <label>:11                                      ; preds = %8
  store i32 0, i32* %col, align 4, !dbg !298
  br label %12, !dbg !298

; <label>:12                                      ; preds = %101, %11
  %13 = load i32* %col, align 4, !dbg !301
  %14 = icmp slt i32 %13, 1921, !dbg !301
  br i1 %14, label %15, label %104, !dbg !301

; <label>:15                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !304), !dbg !306
  call void @llvm.dbg.declare(metadata !{i8* %tempx}, metadata !307), !dbg !308
  %16 = load i32* %col, align 4, !dbg !309
  %17 = icmp slt i32 %16, 1920, !dbg !309
  br i1 %17, label %18, label %33, !dbg !309

; <label>:18                                      ; preds = %15
  %19 = load i32* %col, align 4, !dbg !311
  invoke void @_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi(%class.ap_linebuffer* %buff_A, i32 %19)
          to label %20 unwind label %28, !dbg !311

; <label>:20                                      ; preds = %18
  %21 = load i32* %col, align 4, !dbg !313
  %22 = invoke zeroext i8 @_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii(%class.ap_linebuffer* %buff_A, i32 0, i32 %21)
          to label %23 unwind label %28, !dbg !313

; <label>:23                                      ; preds = %20
  store i8 %22, i8* %temp, align 1, !dbg !314
  br label %33, !dbg !316

; <label>:24                                      ; preds = %108, %0
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !317
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !317
  store i8* %26, i8** %3, !dbg !317
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !317
  store i32 %27, i32* %4, !dbg !317
  br label %113, !dbg !317

; <label>:28                                      ; preds = %81, %65, %63, %62, %59, %55, %39, %20, %18
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !319
  %30 = extractvalue { i8*, i32 } %29, 0, !dbg !319
  store i8* %30, i8** %3, !dbg !319
  %31 = extractvalue { i8*, i32 } %29, 1, !dbg !319
  store i32 %31, i32* %4, !dbg !319
  %32 = invoke %class.ap_window* @_ZN9ap_windowIhLi3ELi3EED2Ev(%class.ap_window* %buff_C)
          to label %112 unwind label %121, !dbg !320

; <label>:33                                      ; preds = %23, %15
  %34 = load i32* %col, align 4, !dbg !321
  %35 = icmp slt i32 %34, 1920, !dbg !321
  br i1 %35, label %36, label %55, !dbg !321

; <label>:36                                      ; preds = %33
  %37 = load i32* %row, align 4, !dbg !323
  %38 = icmp slt i32 %37, 1080, !dbg !323
  br i1 %38, label %39, label %55, !dbg !323

; <label>:39                                      ; preds = %36
  call void @llvm.dbg.declare(metadata !{i16* %new_pix}, metadata !325), !dbg !327
  %40 = load i32* %row, align 4, !dbg !328
  %41 = mul nsw i32 %40, 1920, !dbg !328
  %42 = load i32* %col, align 4, !dbg !328
  %43 = add nsw i32 %41, %42, !dbg !328
  %44 = load i16** %1, align 4, !dbg !328
  %45 = getelementptr inbounds i16* %44, i32 %43, !dbg !328
  %46 = load i16* %45, align 2, !dbg !328
  store i16 %46, i16* %new_pix, align 2, !dbg !328
  %47 = load i16* %new_pix, align 2, !dbg !329
  %48 = zext i16 %47 to i32, !dbg !329
  %49 = ashr i32 %48, 8, !dbg !329
  %50 = and i32 %49, 255, !dbg !329
  %51 = trunc i32 %50 to i8, !dbg !329
  store i8 %51, i8* %tempx, align 1, !dbg !329
  %52 = load i8* %tempx, align 1, !dbg !330
  %53 = load i32* %col, align 4, !dbg !330
  invoke void @_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi(%class.ap_linebuffer* %buff_A, i8 zeroext %52, i32 %53)
          to label %54 unwind label %28, !dbg !330

; <label>:54                                      ; preds = %39
  br label %55, !dbg !331

; <label>:55                                      ; preds = %54, %36, %33
  invoke void @_ZN9ap_windowIhLi3ELi3EE11shift_rightEv(%class.ap_window* %buff_C)
          to label %56 unwind label %28, !dbg !332

; <label>:56                                      ; preds = %55
  %57 = load i32* %col, align 4, !dbg !333
  %58 = icmp slt i32 %57, 1920, !dbg !333
  br i1 %58, label %59, label %68, !dbg !333

; <label>:59                                      ; preds = %56
  %60 = load i32* %col, align 4, !dbg !335
  %61 = invoke zeroext i8 @_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii(%class.ap_linebuffer* %buff_A, i32 2, i32 %60)
          to label %62 unwind label %28, !dbg !335

; <label>:62                                      ; preds = %59
  invoke void @_ZN9ap_windowIhLi3ELi3EE6insertEhii(%class.ap_window* %buff_C, i8 zeroext %61, i32 0, i32 2)
          to label %63 unwind label %28, !dbg !337

; <label>:63                                      ; preds = %62
  %64 = load i8* %temp, align 1, !dbg !339
  invoke void @_ZN9ap_windowIhLi3ELi3EE6insertEhii(%class.ap_window* %buff_C, i8 zeroext %64, i32 1, i32 2)
          to label %65 unwind label %28, !dbg !339

; <label>:65                                      ; preds = %63
  %66 = load i8* %tempx, align 1, !dbg !340
  invoke void @_ZN9ap_windowIhLi3ELi3EE6insertEhii(%class.ap_window* %buff_C, i8 zeroext %66, i32 2, i32 2)
          to label %67 unwind label %28, !dbg !340

; <label>:67                                      ; preds = %65
  br label %68, !dbg !341

; <label>:68                                      ; preds = %67, %56
  call void @llvm.dbg.declare(metadata !{i8* %edge}, metadata !342), !dbg !343
  %69 = load i32* %row, align 4, !dbg !344
  %70 = icmp sle i32 %69, 1, !dbg !344
  br i1 %70, label %80, label %71, !dbg !344

; <label>:71                                      ; preds = %68
  %72 = load i32* %col, align 4, !dbg !346
  %73 = icmp sle i32 %72, 1, !dbg !346
  br i1 %73, label %80, label %74, !dbg !346

; <label>:74                                      ; preds = %71
  %75 = load i32* %row, align 4, !dbg !348
  %76 = icmp sgt i32 %75, 1079, !dbg !348
  br i1 %76, label %80, label %77, !dbg !348

; <label>:77                                      ; preds = %74
  %78 = load i32* %col, align 4, !dbg !350
  %79 = icmp sgt i32 %78, 1919, !dbg !350
  br i1 %79, label %80, label %81, !dbg !350

; <label>:80                                      ; preds = %77, %74, %71, %68
  store i8 0, i8* %edge, align 1, !dbg !352
  br label %84, !dbg !354

; <label>:81                                      ; preds = %77
  %82 = invoke zeroext i8 @_Z14sobel_operatorP9ap_windowIhLi3ELi3EE(%class.ap_window* %buff_C)
          to label %83 unwind label %28, !dbg !355

; <label>:83                                      ; preds = %81
  store i8 %82, i8* %edge, align 1, !dbg !357
  br label %84

; <label>:84                                      ; preds = %83, %80
  %85 = load i32* %row, align 4, !dbg !359
  %86 = icmp sgt i32 %85, 0, !dbg !359
  br i1 %86, label %87, label %100, !dbg !359

; <label>:87                                      ; preds = %84
  %88 = load i32* %col, align 4, !dbg !361
  %89 = icmp sgt i32 %88, 0, !dbg !361
  br i1 %89, label %90, label %100, !dbg !361

; <label>:90                                      ; preds = %87
  %91 = load i8* %edge, align 1, !dbg !363
  %92 = load i32* %row, align 4, !dbg !363
  %93 = sub nsw i32 %92, 1, !dbg !363
  %94 = mul nsw i32 %93, 1920, !dbg !363
  %95 = load i32* %col, align 4, !dbg !363
  %96 = sub nsw i32 %95, 1, !dbg !363
  %97 = add nsw i32 %94, %96, !dbg !363
  %98 = load i8** %2, align 4, !dbg !363
  %99 = getelementptr inbounds i8* %98, i32 %97, !dbg !363
  store i8 %91, i8* %99, align 1, !dbg !363
  br label %100, !dbg !365

; <label>:100                                     ; preds = %90, %87, %84
  br label %101, !dbg !366

; <label>:101                                     ; preds = %100
  %102 = load i32* %col, align 4, !dbg !367
  %103 = add nsw i32 %102, 1, !dbg !367
  store i32 %103, i32* %col, align 4, !dbg !367
  br label %12, !dbg !367

; <label>:104                                     ; preds = %12
  br label %105, !dbg !368

; <label>:105                                     ; preds = %104
  %106 = load i32* %row, align 4, !dbg !369
  %107 = add nsw i32 %106, 1, !dbg !369
  store i32 %107, i32* %row, align 4, !dbg !369
  br label %8, !dbg !369

; <label>:108                                     ; preds = %8
  %109 = invoke %class.ap_window* @_ZN9ap_windowIhLi3ELi3EED2Ev(%class.ap_window* %buff_C)
          to label %110 unwind label %24, !dbg !320

; <label>:110                                     ; preds = %108
  %111 = call %class.ap_linebuffer* @_ZN13ap_linebufferIhLi3ELi1920EED2Ev(%class.ap_linebuffer* %buff_A), !dbg !370
  ret void, !dbg !370

; <label>:112                                     ; preds = %28
  br label %113, !dbg !372

; <label>:113                                     ; preds = %112, %24
  %114 = invoke %class.ap_linebuffer* @_ZN13ap_linebufferIhLi3ELi1920EED2Ev(%class.ap_linebuffer* %buff_A)
          to label %115 unwind label %121, !dbg !374

; <label>:115                                     ; preds = %113
  br label %116, !dbg !377

; <label>:116                                     ; preds = %115
  %117 = load i8** %3, !dbg !379
  %118 = load i32* %4, !dbg !379
  %119 = insertvalue { i8*, i32 } undef, i8* %117, 0, !dbg !379
  %120 = insertvalue { i8*, i32 } %119, i32 %118, 1, !dbg !379
  resume { i8*, i32 } %120, !dbg !379

; <label>:121                                     ; preds = %113, %28
  %122 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !381
  %123 = extractvalue { i8*, i32 } %122, 0, !dbg !381
  call void @__clang_call_terminate(i8* %123) #5, !dbg !381
  unreachable, !dbg !381
}

; Function Attrs: nounwind
define linkonce_odr %class.ap_linebuffer* @_ZN13ap_linebufferIhLi3ELi1920EEC2Ev(%class.ap_linebuffer* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.ap_linebuffer*, align 4
  store %class.ap_linebuffer* %this, %class.ap_linebuffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer** %1}, metadata !384), !dbg !386
  %2 = load %class.ap_linebuffer** %1
  ret %class.ap_linebuffer* %2, !dbg !387
}

; Function Attrs: nounwind
define linkonce_odr %class.ap_window* @_ZN9ap_windowIhLi3ELi3EEC2Ev(%class.ap_window* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.ap_window*, align 4
  store %class.ap_window* %this, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !388), !dbg !389
  %2 = load %class.ap_window** %1
  ret %class.ap_window* %2, !dbg !390
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
define linkonce_odr void @_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi(%class.ap_linebuffer* %this, i32 %col) #3 align 2 {
  %1 = alloca %class.ap_linebuffer*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.ap_linebuffer* %this, %class.ap_linebuffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer** %1}, metadata !391), !dbg !392
  store i32 %col, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !393), !dbg !394
  %3 = load %class.ap_linebuffer** %1
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !395), !dbg !396
  store i32 2, i32* %i, align 4, !dbg !397
  br label %4, !dbg !397

; <label>:4                                       ; preds = %20, %0
  %5 = load i32* %i, align 4, !dbg !399
  %6 = icmp sgt i32 %5, 0, !dbg !399
  br i1 %6, label %7, label %23, !dbg !399

; <label>:7                                       ; preds = %4
  %8 = load i32* %2, align 4, !dbg !402
  %9 = load i32* %i, align 4, !dbg !402
  %10 = sub nsw i32 %9, 1, !dbg !402
  %11 = getelementptr inbounds %class.ap_linebuffer* %3, i32 0, i32 0, !dbg !402
  %12 = getelementptr inbounds [3 x [1920 x i8]]* %11, i32 0, i32 %10, !dbg !402
  %13 = getelementptr inbounds [1920 x i8]* %12, i32 0, i32 %8, !dbg !402
  %14 = load i8* %13, align 1, !dbg !402
  %15 = load i32* %2, align 4, !dbg !402
  %16 = load i32* %i, align 4, !dbg !402
  %17 = getelementptr inbounds %class.ap_linebuffer* %3, i32 0, i32 0, !dbg !402
  %18 = getelementptr inbounds [3 x [1920 x i8]]* %17, i32 0, i32 %16, !dbg !402
  %19 = getelementptr inbounds [1920 x i8]* %18, i32 0, i32 %15, !dbg !402
  store i8 %14, i8* %19, align 1, !dbg !402
  br label %20, !dbg !404

; <label>:20                                      ; preds = %7
  %21 = load i32* %i, align 4, !dbg !405
  %22 = add nsw i32 %21, -1, !dbg !405
  store i32 %22, i32* %i, align 4, !dbg !405
  br label %4, !dbg !405

; <label>:23                                      ; preds = %4
  ret void, !dbg !406
}

; Function Attrs: nounwind
define linkonce_odr zeroext i8 @_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii(%class.ap_linebuffer* %this, i32 %RowIndex, i32 %ColIndex) #3 align 2 {
  %1 = alloca %class.ap_linebuffer*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store %class.ap_linebuffer* %this, %class.ap_linebuffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer** %1}, metadata !407), !dbg !408
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !409), !dbg !410
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !411), !dbg !412
  %4 = load %class.ap_linebuffer** %1
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !413), !dbg !414
  %5 = load i32* %3, align 4, !dbg !415
  %6 = load i32* %2, align 4, !dbg !415
  %7 = getelementptr inbounds %class.ap_linebuffer* %4, i32 0, i32 0, !dbg !415
  %8 = getelementptr inbounds [3 x [1920 x i8]]* %7, i32 0, i32 %6, !dbg !415
  %9 = getelementptr inbounds [1920 x i8]* %8, i32 0, i32 %5, !dbg !415
  %10 = load i8* %9, align 1, !dbg !415
  store i8 %10, i8* %return_value, align 1, !dbg !415
  %11 = load i8* %return_value, align 1, !dbg !416
  ret i8 %11, !dbg !416
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi(%class.ap_linebuffer* %this, i8 zeroext %value, i32 %col) #3 align 2 {
  %1 = alloca %class.ap_linebuffer*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store %class.ap_linebuffer* %this, %class.ap_linebuffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer** %1}, metadata !417), !dbg !418
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !419), !dbg !420
  store i32 %col, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !421), !dbg !422
  %4 = load %class.ap_linebuffer** %1
  %5 = load i8* %2, align 1, !dbg !423
  %6 = load i32* %3, align 4, !dbg !423
  %7 = getelementptr inbounds %class.ap_linebuffer* %4, i32 0, i32 0, !dbg !423
  %8 = getelementptr inbounds [3 x [1920 x i8]]* %7, i32 0, i32 0, !dbg !423
  %9 = getelementptr inbounds [1920 x i8]* %8, i32 0, i32 %6, !dbg !423
  store i8 %5, i8* %9, align 1, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9ap_windowIhLi3ELi3EE11shift_rightEv(%class.ap_window* %this) #3 align 2 {
  %1 = alloca %class.ap_window*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %class.ap_window* %this, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !425), !dbg !426
  %2 = load %class.ap_window** %1
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !427), !dbg !428
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !429), !dbg !430
  store i32 0, i32* %i, align 4, !dbg !431
  br label %3, !dbg !431

; <label>:3                                       ; preds = %27, %0
  %4 = load i32* %i, align 4, !dbg !433
  %5 = icmp slt i32 %4, 3, !dbg !433
  br i1 %5, label %6, label %30, !dbg !433

; <label>:6                                       ; preds = %3
  store i32 0, i32* %j, align 4, !dbg !436
  br label %7, !dbg !436

; <label>:7                                       ; preds = %23, %6
  %8 = load i32* %j, align 4, !dbg !439
  %9 = icmp slt i32 %8, 2, !dbg !439
  br i1 %9, label %10, label %26, !dbg !439

; <label>:10                                      ; preds = %7
  %11 = load i32* %j, align 4, !dbg !442
  %12 = add nsw i32 %11, 1, !dbg !442
  %13 = load i32* %i, align 4, !dbg !442
  %14 = getelementptr inbounds %class.ap_window* %2, i32 0, i32 0, !dbg !442
  %15 = getelementptr inbounds [3 x [3 x i8]]* %14, i32 0, i32 %13, !dbg !442
  %16 = getelementptr inbounds [3 x i8]* %15, i32 0, i32 %12, !dbg !442
  %17 = load i8* %16, align 1, !dbg !442
  %18 = load i32* %j, align 4, !dbg !442
  %19 = load i32* %i, align 4, !dbg !442
  %20 = getelementptr inbounds %class.ap_window* %2, i32 0, i32 0, !dbg !442
  %21 = getelementptr inbounds [3 x [3 x i8]]* %20, i32 0, i32 %19, !dbg !442
  %22 = getelementptr inbounds [3 x i8]* %21, i32 0, i32 %18, !dbg !442
  store i8 %17, i8* %22, align 1, !dbg !442
  br label %23, !dbg !444

; <label>:23                                      ; preds = %10
  %24 = load i32* %j, align 4, !dbg !445
  %25 = add nsw i32 %24, 1, !dbg !445
  store i32 %25, i32* %j, align 4, !dbg !445
  br label %7, !dbg !445

; <label>:26                                      ; preds = %7
  br label %27, !dbg !446

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !447
  %29 = add nsw i32 %28, 1, !dbg !447
  store i32 %29, i32* %i, align 4, !dbg !447
  br label %3, !dbg !447

; <label>:30                                      ; preds = %3
  ret void, !dbg !448
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9ap_windowIhLi3ELi3EE6insertEhii(%class.ap_window* %this, i8 zeroext %value, i32 %row, i32 %col) #3 align 2 {
  %1 = alloca %class.ap_window*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.ap_window* %this, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !449), !dbg !450
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !451), !dbg !452
  store i32 %row, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !453), !dbg !454
  store i32 %col, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !455), !dbg !456
  %5 = load %class.ap_window** %1
  %6 = load i8* %2, align 1, !dbg !457
  %7 = load i32* %4, align 4, !dbg !457
  %8 = load i32* %3, align 4, !dbg !457
  %9 = getelementptr inbounds %class.ap_window* %5, i32 0, i32 0, !dbg !457
  %10 = getelementptr inbounds [3 x [3 x i8]]* %9, i32 0, i32 %8, !dbg !457
  %11 = getelementptr inbounds [3 x i8]* %10, i32 0, i32 %7, !dbg !457
  store i8 %6, i8* %11, align 1, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: nounwind
define linkonce_odr %class.ap_window* @_ZN9ap_windowIhLi3ELi3EED2Ev(%class.ap_window* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.ap_window*, align 4
  store %class.ap_window* %this, %class.ap_window** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_window** %1}, metadata !459), !dbg !460
  %2 = load %class.ap_window** %1
  ret %class.ap_window* %2, !dbg !461
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #5
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind
define linkonce_odr %class.ap_linebuffer* @_ZN13ap_linebufferIhLi3ELi1920EED2Ev(%class.ap_linebuffer* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.ap_linebuffer*, align 4
  store %class.ap_linebuffer* %this, %class.ap_linebuffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.ap_linebuffer** %1}, metadata !462), !dbg !463
  %2 = load %class.ap_linebuffer** %1
  ret %class.ap_linebuffer* %2, !dbg !464
}

define internal void @_GLOBAL__sub_I_sobel_filter.cpp() section ".text.startup" {
  call void @__cxx_global_var_init(), !dbg !465
  ret void, !dbg !465
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!177, !178, !179, !178, !180, !181, !182, !183, !184, !185, !186, !178, !187, !178, !188, !189, !190, !183, !191, !192, !193, !178, !194, !195, !196, !178, !197, !178, !196, !178, !187, !178, !197, !178, !186, !178}
!xidane.function_declaration_filename = !{!177, !198, !179, !198, !180, !199, !182, !200, !184, !201, !186, !200, !187, !200, !188, !200, !190, !200, !191, !200, !193, !200, !194, !200, !196, !200, !197, !200, !196, !200, !187, !200, !197, !200, !186, !200}
!xidane.function_argument_annotation = !{!184, !202}
!xidane.ExternC = !{!184}
!llvm.module.flags = !{!203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !104, metadata !135, metadata !141, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/sobel_filter.cpp", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !19, metadata !21, metadata !25, metadata !37, metadata !39, metadata !44, metadata !49, metadata !77}
!4 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !6, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!5 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wchar.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!6 = metadata !{metadata !7, metadata !9}
!7 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from _ZTSN11__mbstate_tUt_E]
!10 = metadata !{i32 786455, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !11, i32 0, null, null, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!20 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/locale.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!21 = metadata !{i32 786434, metadata !22, metadata !23, metadata !"ios_base", i32 199, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 199, size 0, align 0, offset 0] [decl] [from ]
!22 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/bits/ios_base.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!23 = metadata !{i32 786489, metadata !24, null, metadata !"std", i32 186} ; [ DW_TAG_namespace ] [std] [line 186]
!24 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/arm-xilinx-linux-gnueabi/bits/c++config.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!25 = metadata !{i32 786434, metadata !22, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 533, i64 8, i64 8, i32 0, i32 0, null, metadata !26, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 533, size 8, align 8, offset 0] [def] [from ]
!26 = metadata !{metadata !27, metadata !30, metadata !32, metadata !36}
!27 = metadata !{i32 786445, metadata !22, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 541, i64 0, i64 0, i64 0, i32 4097, metadata !28, null} ; [ DW_TAG_member ] [_S_refcount] [line 541, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!28 = metadata !{i32 786454, metadata !29, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!29 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/arm-xilinx-linux-gnueabi/bits/atomic_word.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!30 = metadata !{i32 786445, metadata !22, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_synced_with_stdio", i32 542, i64 0, i64 0, i64 0, i32 4097, metadata !31, null} ; [ DW_TAG_member ] [_S_synced_with_stdio] [line 542, size 0, align 0, offset 0] [private] [static] [from bool]
!31 = metadata !{i32 786468, null, null, metadata !"bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!32 = metadata !{i32 786478, metadata !22, metadata !"_ZTSNSt8ios_base4InitE", metadata !"Init", metadata !"Init", metadata !"", i32 537, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 537} ; [ DW_TAG_subprogram ] [line 537] [Init]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !35}
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSNSt8ios_base4InitE]
!36 = metadata !{i32 786478, metadata !22, metadata !"_ZTSNSt8ios_base4InitE", metadata !"~Init", metadata !"~Init", metadata !"", i32 538, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 538} ; [ DW_TAG_subprogram ] [line 538] [~Init]
!37 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5div_t"} ; [ DW_TAG_structure_type ] [line 97, size 0, align 0, offset 0] [decl] [from ]
!38 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!39 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 105, i64 64, i64 32, i32 0, i32 0, null, metadata !40, i32 0, null, null, metadata !"_ZTS6ldiv_t"} ; [ DW_TAG_structure_type ] [line 105, size 64, align 32, offset 0] [def] [from ]
!40 = metadata !{metadata !41, metadata !43}
!41 = metadata !{i32 786445, metadata !38, metadata !"_ZTS6ldiv_t", metadata !"quot", i32 107, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [quot] [line 107, size 32, align 32, offset 0] [from long int]
!42 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!43 = metadata !{i32 786445, metadata !38, metadata !"_ZTS6ldiv_t", metadata !"rem", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [rem] [line 108, size 32, align 32, offset 32] [from long int]
!44 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 117, i64 128, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null, metadata !"_ZTS7lldiv_t"} ; [ DW_TAG_structure_type ] [line 117, size 128, align 64, offset 0] [def] [from ]
!45 = metadata !{metadata !46, metadata !48}
!46 = metadata !{i32 786445, metadata !38, metadata !"_ZTS7lldiv_t", metadata !"quot", i32 119, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [quot] [line 119, size 64, align 64, offset 0] [from long long int]
!47 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!48 = metadata !{i32 786445, metadata !38, metadata !"_ZTS7lldiv_t", metadata !"rem", i32 120, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [rem] [line 120, size 64, align 64, offset 64] [from long long int]
!49 = metadata !{i32 786434, metadata !50, null, metadata !"ap_window<unsigned char, 3, 3>", i32 164, i64 72, i64 8, i32 0, i32 0, null, metadata !51, i32 0, null, metadata !73, metadata !"_ZTS9ap_windowIhLi3ELi3EE"} ; [ DW_TAG_class_type ] [ap_window<unsigned char, 3, 3>] [line 164, size 72, align 8, offset 0] [def] [from ]
!50 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/ap_video.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!51 = metadata !{metadata !52, metadata !57, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !69, metadata !70}
!52 = metadata !{i32 786445, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"M", i32 166, i64 72, i64 8, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [M] [line 166, size 72, align 8, offset 0] [from ]
!53 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !54, metadata !55, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!54 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!55 = metadata !{metadata !56, metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!57 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"ap_window", metadata !"ap_window", metadata !"", i32 168, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 168} ; [ DW_TAG_subprogram ] [line 168] [ap_window]
!58 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !60}
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTS9ap_windowIhLi3ELi3EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTS9ap_windowIhLi3ELi3EE]
!61 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"~ap_window", metadata !"~ap_window", metadata !"", i32 172, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 172} ; [ DW_TAG_subprogram ] [line 172] [~ap_window]
!62 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"shift_right", metadata !"shift_right", metadata !"_ZN9ap_windowIhLi3ELi3EE11shift_rightEv", i32 173, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 173} ; [ DW_TAG_subprogram ] [line 173] [shift_right]
!63 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"shift_left", metadata !"shift_left", metadata !"_ZN9ap_windowIhLi3ELi3EE10shift_leftEv", i32 174, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 174} ; [ DW_TAG_subprogram ] [line 174] [shift_left]
!64 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"shift_up", metadata !"shift_up", metadata !"_ZN9ap_windowIhLi3ELi3EE8shift_upEv", i32 175, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 175} ; [ DW_TAG_subprogram ] [line 175] [shift_up]
!65 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"shift_down", metadata !"shift_down", metadata !"_ZN9ap_windowIhLi3ELi3EE10shift_downEv", i32 176, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 176} ; [ DW_TAG_subprogram ] [line 176] [shift_down]
!66 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"insert", metadata !"insert", metadata !"_ZN9ap_windowIhLi3ELi3EE6insertEhii", i32 177, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 177} ; [ DW_TAG_subprogram ] [line 177] [insert]
!67 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{null, metadata !60, metadata !54, metadata !8, metadata !8}
!69 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"print", metadata !"print", metadata !"_ZN9ap_windowIhLi3ELi3EE5printEv", i32 178, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 178} ; [ DW_TAG_subprogram ] [line 178] [print]
!70 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"getval", metadata !"getval", metadata !"_ZN9ap_windowIhLi3ELi3EE6getvalEii", i32 179, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 179} ; [ DW_TAG_subprogram ] [line 179] [getval]
!71 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{metadata !54, metadata !60, metadata !8, metadata !8}
!73 = metadata !{metadata !74, metadata !75, metadata !76}
!74 = metadata !{i32 786479, null, metadata !"T", metadata !54, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!75 = metadata !{i32 786480, null, metadata !"LROW", metadata !8, i32 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!76 = metadata !{i32 786480, null, metadata !"LCOL", metadata !8, i32 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!77 = metadata !{i32 786434, metadata !50, null, metadata !"ap_linebuffer<unsigned char, 3, 1920>", i32 60, i64 46080, i64 8, i32 0, i32 0, null, metadata !78, i32 0, null, metadata !102, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE"} ; [ DW_TAG_class_type ] [ap_linebuffer<unsigned char, 3, 1920>] [line 60, size 46080, align 8, offset 0] [def] [from ]
!78 = metadata !{metadata !79, metadata !83, metadata !87, metadata !88, metadata !91, metadata !92, metadata !95, metadata !96, metadata !99}
!79 = metadata !{i32 786445, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"M", i32 62, i64 46080, i64 8, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [M] [line 62, size 46080, align 8, offset 0] [from ]
!80 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !54, metadata !81, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 46080, align 8, offset 0] [from unsigned char]
!81 = metadata !{metadata !56, metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 1920}     ; [ DW_TAG_subrange_type ] [0, 1919]
!83 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"ap_linebuffer", metadata !"ap_linebuffer", metadata !"", i32 64, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 64} ; [ DW_TAG_subprogram ] [line 64] [ap_linebuffer]
!84 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !86}
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTS13ap_linebufferIhLi3ELi1920EE]
!87 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"~ap_linebuffer", metadata !"~ap_linebuffer", metadata !"", i32 68, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 68} ; [ DW_TAG_subprogram ] [line 68] [~ap_linebuffer]
!88 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"shift_up", metadata !"shift_up", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi", i32 69, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 69} ; [ DW_TAG_subprogram ] [line 69] [shift_up]
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !86, metadata !8}
!91 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"shift_down", metadata !"shift_down", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE10shift_downEi", i32 70, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 70} ; [ DW_TAG_subprogram ] [line 70] [shift_down]
!92 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"insert_top", metadata !"insert_top", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE10insert_topEhi", i32 71, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 71} ; [ DW_TAG_subprogram ] [line 71] [insert_top]
!93 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !86, metadata !54, metadata !8}
!95 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"insert_bottom", metadata !"insert_bottom", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi", i32 72, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 72} ; [ DW_TAG_subprogram ] [line 72] [insert_bottom]
!96 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"print", metadata !"print", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE5printEii", i32 73, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 73} ; [ DW_TAG_subprogram ] [line 73] [print]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{null, metadata !86, metadata !8, metadata !8}
!99 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"getval", metadata !"getval", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii", i32 74, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 74} ; [ DW_TAG_subprogram ] [line 74] [getval]
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !54, metadata !86, metadata !8, metadata !8}
!102 = metadata !{metadata !74, metadata !75, metadata !103}
!103 = metadata !{i32 786480, null, metadata !"LCOL", metadata !8, i32 1920, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!104 = metadata !{metadata !105, metadata !110, metadata !117, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!105 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 74, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [__cxx_global_var_init]
!106 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/iostream", metadata !"/home/student/ml634/ece5775lab5/Release"}
!107 = metadata !{i32 786473, metadata !106}      ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/iostream]
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null}
!110 = metadata !{i32 786478, metadata !1, metadata !111, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatorP9ap_windowIhLi3ELi3EE", i32 42, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%class.ap_window*)* @_Z14sobel_operatorP9ap_windowIhLi3ELi3EE, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [sobel_operator]
!111 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!112 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !54, metadata !114}
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from WINDOW]
!115 = metadata !{i32 786454, metadata !116, null, metadata !"WINDOW", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS9ap_windowIhLi3ELi3EE"} ; [ DW_TAG_typedef ] [WINDOW] [line 14, size 0, align 0, offset 0] [from _ZTS9ap_windowIhLi3ELi3EE]
!116 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_demo.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!117 = metadata !{i32 786478, metadata !1, metadata !111, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", i32 90, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i8*)* @sobel_filter, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [sobel_filter]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !120, metadata !122}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned short]
!121 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!123 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"insert", metadata !"insert", metadata !"_ZN9ap_windowIhLi3ELi3EE6insertEhii", i32 281, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ap_window*, i8, i32, i32)* @_ZN9ap_windowIhLi3ELi3EE6insertEhii, null, metadata !66, metadata !2, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [insert]
!124 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"shift_right", metadata !"shift_right", metadata !"_ZN9ap_windowIhLi3ELi3EE11shift_rightEv", i32 210, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EE11shift_rightEv, null, metadata !62, metadata !2, i32 211} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 211] [shift_right]
!125 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"insert_bottom", metadata !"insert_bottom", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi", i32 130, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ap_linebuffer*, i8, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi, null, metadata !95, metadata !2, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [insert_bottom]
!126 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"getval", metadata !"getval", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii", i32 153, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%class.ap_linebuffer*, i32, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii, null, metadata !99, metadata !2, i32 154} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 154] [getval]
!127 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"shift_up", metadata !"shift_up", metadata !"_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi", i32 100, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ap_linebuffer*, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi, null, metadata !88, metadata !2, i32 101} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 101] [shift_up]
!128 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"~ap_window", metadata !"~ap_window", metadata !"_ZN9ap_windowIhLi3ELi3EED2Ev", i32 172, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.ap_window* (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EED2Ev, null, metadata !61, metadata !2, i32 172} ; [ DW_TAG_subprogram ] [line 172] [def] [~ap_window]
!129 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"ap_window", metadata !"ap_window", metadata !"_ZN9ap_windowIhLi3ELi3EEC2Ev", i32 168, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.ap_window* (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EEC2Ev, null, metadata !57, metadata !2, i32 168} ; [ DW_TAG_subprogram ] [line 168] [def] [ap_window]
!130 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"~ap_linebuffer", metadata !"~ap_linebuffer", metadata !"_ZN13ap_linebufferIhLi3ELi1920EED2Ev", i32 68, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.ap_linebuffer* (%class.ap_linebuffer*)* @_ZN13ap_linebufferIhLi3ELi1920EED2Ev, null, metadata !87, metadata !2, i32 68} ; [ DW_TAG_subprogram ] [line 68] [def] [~ap_linebuffer]
!131 = metadata !{i32 786478, metadata !50, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE", metadata !"ap_linebuffer", metadata !"ap_linebuffer", metadata !"_ZN13ap_linebufferIhLi3ELi1920EEC2Ev", i32 64, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.ap_linebuffer* (%class.ap_linebuffer*)* @_ZN13ap_linebufferIhLi3ELi1920EEC2Ev, null, metadata !83, metadata !2, i32 64} ; [ DW_TAG_subprogram ] [line 64] [def] [ap_linebuffer]
!132 = metadata !{i32 786478, metadata !50, metadata !"_ZTS9ap_windowIhLi3ELi3EE", metadata !"getval", metadata !"getval", metadata !"_ZN9ap_windowIhLi3ELi3EE6getvalEii", i32 291, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%class.ap_window*, i32, i32)* @_ZN9ap_windowIhLi3ELi3EE6getvalEii, null, metadata !70, metadata !2, i32 292} ; [ DW_TAG_subprogram ] [line 291] [def] [scope 292] [getval]
!133 = metadata !{i32 786478, metadata !1, metadata !111, metadata !"", metadata !"", metadata !"_GLOBAL__sub_I_sobel_filter.cpp", i32 0, metadata !134, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__sub_I_sobel_filter.cpp, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 0] [local] [def]
!134 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !137, metadata !140}
!136 = metadata !{i32 786484, i32 0, metadata !23, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !107, i32 74, metadata !"_ZTSNSt8ios_base4InitE", i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 74] [local] [def]
!137 = metadata !{i32 786484, i32 0, metadata !110, metadata !"x_op", metadata !"x_op", metadata !"", metadata !111, i32 54, metadata !138, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4x_op, null} ; [ DW_TAG_variable ] [x_op] [line 54] [local] [def]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !139, metadata !55, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from ]
!139 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!140 = metadata !{i32 786484, i32 0, metadata !110, metadata !"y_op", metadata !"y_op", metadata !"", metadata !111, i32 58, metadata !138, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatorP9ap_windowIhLi3ELi3EEE4y_op, null} ; [ DW_TAG_variable ] [y_op] [line 58] [local] [def]
!141 = metadata !{metadata !142, metadata !145, metadata !148, metadata !152, metadata !153, metadata !157, metadata !159, metadata !166, metadata !169, metadata !170, metadata !172, metadata !174, metadata !176}
!142 = metadata !{i32 786440, metadata !23, metadata !143, i32 64} ; [ DW_TAG_imported_declaration ]
!143 = metadata !{i32 786454, metadata !5, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!144 = metadata !{i32 786454, metadata !5, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!145 = metadata !{i32 786440, metadata !23, metadata !146, i32 139} ; [ DW_TAG_imported_declaration ]
!146 = metadata !{i32 786454, metadata !147, null, metadata !"wint_t", i32 353, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [wint_t] [line 353, size 0, align 0, offset 0] [from unsigned int]
!147 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/lib/gcc/arm-xilinx-linux-gnueabi/4.9.1/include/stddef.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!148 = metadata !{i32 786490, metadata !149, metadata !151, i32 56} ; [ DW_TAG_imported_module ]
!149 = metadata !{i32 786489, metadata !150, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!150 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/debug/debug.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!151 = metadata !{i32 786489, metadata !150, metadata !23, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!152 = metadata !{i32 786440, metadata !23, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!153 = metadata !{i32 786440, metadata !154, metadata !156, i32 44} ; [ DW_TAG_imported_declaration ]
!154 = metadata !{i32 786489, metadata !155, null, metadata !"__gnu_cxx", i32 241} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 241]
!155 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/cwchar", metadata !"/home/student/ml634/ece5775lab5/Release"}
!156 = metadata !{i32 786454, metadata !24, metadata !23, metadata !"size_t", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [size_t] [line 188, size 0, align 0, offset 0] [from unsigned int]
!157 = metadata !{i32 786440, metadata !154, metadata !158, i32 45} ; [ DW_TAG_imported_declaration ]
!158 = metadata !{i32 786454, metadata !24, metadata !23, metadata !"ptrdiff_t", i32 189, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 189, size 0, align 0, offset 0] [from int]
!159 = metadata !{i32 786440, metadata !23, metadata !160, i32 82} ; [ DW_TAG_imported_declaration ]
!160 = metadata !{i32 786454, metadata !161, null, metadata !"wctrans_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [wctrans_t] [line 186, size 0, align 0, offset 0] [from ]
!161 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wctype.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!163 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __int32_t]
!164 = metadata !{i32 786454, metadata !165, null, metadata !"__int32_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__int32_t] [line 40, size 0, align 0, offset 0] [from int]
!165 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/types.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!166 = metadata !{i32 786440, metadata !23, metadata !167, i32 83} ; [ DW_TAG_imported_declaration ]
!167 = metadata !{i32 786454, metadata !161, null, metadata !"wctype_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [wctype_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!168 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!169 = metadata !{i32 786440, metadata !23, metadata !146, i32 84} ; [ DW_TAG_imported_declaration ]
!170 = metadata !{i32 786440, metadata !23, metadata !171, i32 118} ; [ DW_TAG_imported_declaration ]
!171 = metadata !{i32 786454, metadata !38, null, metadata !"div_t", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS5div_t"} ; [ DW_TAG_typedef ] [div_t] [line 101, size 0, align 0, offset 0] [from _ZTS5div_t]
!172 = metadata !{i32 786440, metadata !23, metadata !173, i32 119} ; [ DW_TAG_imported_declaration ]
!173 = metadata !{i32 786454, metadata !38, null, metadata !"ldiv_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS6ldiv_t"} ; [ DW_TAG_typedef ] [ldiv_t] [line 109, size 0, align 0, offset 0] [from _ZTS6ldiv_t]
!174 = metadata !{i32 786440, metadata !154, metadata !175, i32 201} ; [ DW_TAG_imported_declaration ]
!175 = metadata !{i32 786454, metadata !38, null, metadata !"lldiv_t", i32 121, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7lldiv_t"} ; [ DW_TAG_typedef ] [lldiv_t] [line 121, size 0, align 0, offset 0] [from _ZTS7lldiv_t]
!176 = metadata !{i32 786440, metadata !23, metadata !175, i32 241} ; [ DW_TAG_imported_declaration ]
!177 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitC1Ev}
!178 = metadata !{metadata !"void."}
!179 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev}
!180 = metadata !{i8 (%class.ap_window*)* @_Z14sobel_operatorP9ap_windowIhLi3ELi3EE}
!181 = metadata !{metadata !"unsigned char.WINDOW *.1"}
!182 = metadata !{i8 (%class.ap_window*, i32, i32)* @_ZN9ap_windowIhLi3ELi3EE6getvalEii}
!183 = metadata !{metadata !"unsigned char.int.0.int.0"}
!184 = metadata !{void (i16*, i8*)* @sobel_filter}
!185 = metadata !{metadata !"void.unsigned short [2073600].1.unsigned char [2073600].1"}
!186 = metadata !{%class.ap_linebuffer* (%class.ap_linebuffer*)* @_ZN13ap_linebufferIhLi3ELi1920EEC2Ev}
!187 = metadata !{%class.ap_window* (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EEC2Ev}
!188 = metadata !{void (%class.ap_linebuffer*, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE8shift_upEi}
!189 = metadata !{metadata !"void.int.0"}
!190 = metadata !{i8 (%class.ap_linebuffer*, i32, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE6getvalEii}
!191 = metadata !{void (%class.ap_linebuffer*, i8, i32)* @_ZN13ap_linebufferIhLi3ELi1920EE13insert_bottomEhi}
!192 = metadata !{metadata !"void.unsigned char.0.int.0"}
!193 = metadata !{void (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EE11shift_rightEv}
!194 = metadata !{void (%class.ap_window*, i8, i32, i32)* @_ZN9ap_windowIhLi3ELi3EE6insertEhii}
!195 = metadata !{metadata !"void.unsigned char.0.int.0.int.0"}
!196 = metadata !{%class.ap_window* (%class.ap_window*)* @_ZN9ap_windowIhLi3ELi3EED2Ev}
!197 = metadata !{%class.ap_linebuffer* (%class.ap_linebuffer*)* @_ZN13ap_linebufferIhLi3ELi1920EED2Ev}
!198 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.1/bits/ios_base.h"}
!199 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/sobel_filter.cpp"}
!200 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/ap_video.h"}
!201 = metadata !{metadata !"/home/student/ml634/ece5775lab5/hw/image_cores.h"}
!202 = metadata !{metadata !"inter_pix,,,,,,,, output_edge,,,,,,,, "}
!203 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!204 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!205 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!206 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!207 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!208 = metadata !{i32 74, i32 25, metadata !105, null}
!209 = metadata !{i32 786689, metadata !110, metadata !"window", metadata !111, i32 16777258, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [window] [line 42]
!210 = metadata !{i32 42, i32 38, metadata !110, null}
!211 = metadata !{i32 786688, metadata !110, metadata !"x_weight", metadata !111, i32 44, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_weight] [line 44]
!212 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!213 = metadata !{i32 44, i32 9, metadata !110, null}
!214 = metadata !{i32 44, i32 3, metadata !110, null}
!215 = metadata !{i32 786688, metadata !110, metadata !"y_weight", metadata !111, i32 45, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_weight] [line 45]
!216 = metadata !{i32 45, i32 9, metadata !110, null}
!217 = metadata !{i32 45, i32 3, metadata !110, null}
!218 = metadata !{i32 786688, metadata !110, metadata !"edge_weight", metadata !111, i32 47, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_weight] [line 47]
!219 = metadata !{i32 47, i32 9, metadata !110, null}
!220 = metadata !{i32 786688, metadata !110, metadata !"edge_val", metadata !111, i32 48, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_val] [line 48]
!221 = metadata !{i32 48, i32 17, metadata !110, null}
!222 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !111, i32 50, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!223 = metadata !{i32 50, i32 8, metadata !110, null}
!224 = metadata !{i32 786688, metadata !110, metadata !"j", metadata !111, i32 51, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 51]
!225 = metadata !{i32 51, i32 8, metadata !110, null}
!226 = metadata !{i32 63, i32 7, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !110, i32 63, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!228 = metadata !{i32 63, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !230, i32 63, i32 7, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!230 = metadata !{i32 786443, metadata !1, metadata !227, i32 63, i32 7, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!231 = metadata !{i32 64, i32 9, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !233, i32 64, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!233 = metadata !{i32 786443, metadata !1, metadata !227, i32 63, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!234 = metadata !{i32 64, i32 9, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 64, i32 9, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!236 = metadata !{i32 786443, metadata !1, metadata !232, i32 64, i32 9, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!237 = metadata !{i32 67, i32 7, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !232, i32 64, i32 27, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!239 = metadata !{i32 67, i32 30, metadata !238, null}
!240 = metadata !{i32 70, i32 7, metadata !238, null}
!241 = metadata !{i32 70, i32 30, metadata !238, null}
!242 = metadata !{i32 71, i32 5, metadata !238, null}
!243 = metadata !{i32 64, i32 23, metadata !232, null}
!244 = metadata !{i32 72, i32 3, metadata !233, null}
!245 = metadata !{i32 63, i32 19, metadata !227, null}
!246 = metadata !{i32 74, i32 3, metadata !110, null}
!247 = metadata !{i32 74, i32 3, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!249 = metadata !{i32 74, i32 3, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!251 = metadata !{i32 74, i32 3, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !253, i32 74, i32 3, i32 4, i32 37} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!253 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 3, i32 36} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!254 = metadata !{i32 74, i32 3, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 5, i32 38} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!256 = metadata !{i32 74, i32 3, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 6, i32 39} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!258 = metadata !{i32 74, i32 3, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !260, i32 74, i32 3, i32 8, i32 41} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!260 = metadata !{i32 786443, metadata !1, metadata !110, i32 74, i32 3, i32 7, i32 40} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!261 = metadata !{i32 76, i32 3, metadata !110, null}
!262 = metadata !{i32 79, i32 6, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !110, i32 79, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!264 = metadata !{i32 80, i32 5, metadata !263, null}
!265 = metadata !{i32 83, i32 5, metadata !263, null}
!266 = metadata !{i32 85, i32 3, metadata !110, null}
!267 = metadata !{i32 786689, metadata !132, metadata !"this", null, i32 16777216, metadata !268, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS9ap_windowIhLi3ELi3EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS9ap_windowIhLi3ELi3EE]
!269 = metadata !{i32 0, i32 0, metadata !132, null}
!270 = metadata !{i32 786689, metadata !132, metadata !"RowIndex", metadata !271, i32 33554611, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 179]
!271 = metadata !{i32 786473, metadata !50}       ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!272 = metadata !{i32 179, i32 16, metadata !132, null}
!273 = metadata !{i32 786689, metadata !132, metadata !"ColIndex", metadata !271, i32 50331827, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 179]
!274 = metadata !{i32 179, i32 29, metadata !132, null}
!275 = metadata !{i32 786688, metadata !132, metadata !"return_value", metadata !271, i32 294, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 294]
!276 = metadata !{i32 294, i32 5, metadata !132, null}
!277 = metadata !{i32 295, i32 3, metadata !132, null}
!278 = metadata !{i32 296, i32 3, metadata !132, null}
!279 = metadata !{i32 786689, metadata !117, metadata !"inter_pix", metadata !111, i32 16777306, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inter_pix] [line 90]
!280 = metadata !{i32 90, i32 34, metadata !117, null}
!281 = metadata !{i32 786689, metadata !117, metadata !"output_edge", metadata !111, i32 33554522, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output_edge] [line 90]
!282 = metadata !{i32 90, i32 75, metadata !117, null}
!283 = metadata !{i32 786688, metadata !117, metadata !"row", metadata !111, i32 92, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 92]
!284 = metadata !{i32 92, i32 7, metadata !117, null}
!285 = metadata !{i32 786688, metadata !117, metadata !"col", metadata !111, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 93]
!286 = metadata !{i32 93, i32 7, metadata !117, null}
!287 = metadata !{i32 786688, metadata !117, metadata !"buff_A", metadata !111, i32 95, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_A] [line 95]
!288 = metadata !{i32 786454, metadata !116, null, metadata !"Y_BUFFER", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE"} ; [ DW_TAG_typedef ] [Y_BUFFER] [line 16, size 0, align 0, offset 0] [from _ZTS13ap_linebufferIhLi3ELi1920EE]
!289 = metadata !{i32 95, i32 12, metadata !117, null}
!290 = metadata !{i32 95, i32 3, metadata !117, null}
!291 = metadata !{i32 786688, metadata !117, metadata !"buff_C", metadata !111, i32 97, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_C] [line 97]
!292 = metadata !{i32 97, i32 10, metadata !117, null}
!293 = metadata !{i32 99, i32 7, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !117, i32 99, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!295 = metadata !{i32 99, i32 7, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !297, i32 99, i32 7, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!297 = metadata !{i32 786443, metadata !1, metadata !294, i32 99, i32 7, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!298 = metadata !{i32 100, i32 9, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !300, i32 100, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!300 = metadata !{i32 786443, metadata !1, metadata !294, i32 99, i32 39, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!301 = metadata !{i32 100, i32 9, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 100, i32 9, i32 2, i32 55} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!303 = metadata !{i32 786443, metadata !1, metadata !299, i32 100, i32 9, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!304 = metadata !{i32 786688, metadata !305, metadata !"temp", metadata !111, i32 104, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 104]
!305 = metadata !{i32 786443, metadata !1, metadata !299, i32 100, i32 41, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!306 = metadata !{i32 104, i32 21, metadata !305, null}
!307 = metadata !{i32 786688, metadata !305, metadata !"tempx", metadata !111, i32 105, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempx] [line 105]
!308 = metadata !{i32 105, i32 21, metadata !305, null}
!309 = metadata !{i32 108, i32 10, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !305, i32 108, i32 10, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!311 = metadata !{i32 109, i32 2, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !310, i32 108, i32 24, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!313 = metadata !{i32 110, i32 9, metadata !312, null}
!314 = metadata !{i32 110, i32 9, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 110, i32 9, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!316 = metadata !{i32 111, i32 7, metadata !312, null}
!317 = metadata !{i32 152, i32 1, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 5, i32 58} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!319 = metadata !{i32 152, i32 1, metadata !312, null}
!320 = metadata !{i32 152, i32 1, metadata !117, null}
!321 = metadata !{i32 115, i32 10, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !305, i32 115, i32 10, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!323 = metadata !{i32 115, i32 10, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 115, i32 10, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!325 = metadata !{i32 786688, metadata !326, metadata !"new_pix", metadata !111, i32 116, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_pix] [line 116]
!326 = metadata !{i32 786443, metadata !1, metadata !322, i32 115, i32 45, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!327 = metadata !{i32 116, i32 17, metadata !326, null}
!328 = metadata !{i32 117, i32 2, metadata !326, null}
!329 = metadata !{i32 118, i32 2, metadata !326, null}
!330 = metadata !{i32 119, i32 2, metadata !326, null}
!331 = metadata !{i32 120, i32 7, metadata !326, null}
!332 = metadata !{i32 123, i32 7, metadata !305, null}
!333 = metadata !{i32 127, i32 10, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !305, i32 127, i32 10, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!335 = metadata !{i32 128, i32 16, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !334, i32 127, i32 24, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!337 = metadata !{i32 128, i32 2, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !336, i32 128, i32 2, i32 1, i32 49} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!339 = metadata !{i32 129, i32 2, metadata !336, null}
!340 = metadata !{i32 130, i32 2, metadata !336, null}
!341 = metadata !{i32 131, i32 7, metadata !336, null}
!342 = metadata !{i32 786688, metadata !305, metadata !"edge", metadata !111, i32 132, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge] [line 132]
!343 = metadata !{i32 132, i32 21, metadata !305, null}
!344 = metadata !{i32 136, i32 11, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !305, i32 136, i32 11, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!346 = metadata !{i32 136, i32 11, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !345, i32 136, i32 11, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!348 = metadata !{i32 136, i32 11, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !345, i32 136, i32 11, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!350 = metadata !{i32 136, i32 11, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !345, i32 136, i32 11, i32 3, i32 52} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!352 = metadata !{i32 138, i32 2, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !345, i32 136, i32 74, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!354 = metadata !{i32 139, i32 7, metadata !353, null}
!355 = metadata !{i32 143, i32 9, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !345, i32 140, i32 11, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!357 = metadata !{i32 143, i32 9, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 143, i32 9, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!359 = metadata !{i32 147, i32 10, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !305, i32 147, i32 10, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!361 = metadata !{i32 147, i32 10, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !360, i32 147, i32 10, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!363 = metadata !{i32 148, i32 2, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !360, i32 147, i32 33, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!365 = metadata !{i32 149, i32 7, metadata !364, null}
!366 = metadata !{i32 150, i32 5, metadata !305, null}
!367 = metadata !{i32 100, i32 35, metadata !299, null}
!368 = metadata !{i32 151, i32 3, metadata !300, null}
!369 = metadata !{i32 99, i32 33, metadata !294, null}
!370 = metadata !{i32 152, i32 1, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 4, i32 57} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!372 = metadata !{i32 152, i32 1, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!374 = metadata !{i32 152, i32 1, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !376, i32 152, i32 1, i32 6, i32 59} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!376 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!377 = metadata !{i32 152, i32 1, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 7, i32 60} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!379 = metadata !{i32 152, i32 1, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 9, i32 62} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!381 = metadata !{i32 152, i32 1, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !383, i32 152, i32 1, i32 8, i32 61} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!383 = metadata !{i32 786443, metadata !1, metadata !117, i32 152, i32 1, i32 3, i32 47} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/sobel_filter.cpp]
!384 = metadata !{i32 786689, metadata !131, metadata !"this", null, i32 16777216, metadata !385, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!385 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS13ap_linebufferIhLi3ELi1920EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS13ap_linebufferIhLi3ELi1920EE]
!386 = metadata !{i32 0, i32 0, metadata !131, null}
!387 = metadata !{i32 67, i32 1, metadata !131, null}
!388 = metadata !{i32 786689, metadata !129, metadata !"this", null, i32 16777216, metadata !268, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!389 = metadata !{i32 0, i32 0, metadata !129, null}
!390 = metadata !{i32 171, i32 1, metadata !129, null}
!391 = metadata !{i32 786689, metadata !127, metadata !"this", null, i32 16777216, metadata !385, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!392 = metadata !{i32 0, i32 0, metadata !127, null}
!393 = metadata !{i32 786689, metadata !127, metadata !"col", metadata !271, i32 33554501, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 69]
!394 = metadata !{i32 69, i32 21, metadata !127, null}
!395 = metadata !{i32 786688, metadata !127, metadata !"i", metadata !271, i32 103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 103]
!396 = metadata !{i32 103, i32 7, metadata !127, null}
!397 = metadata !{i32 104, i32 7, metadata !398, null}
!398 = metadata !{i32 786443, metadata !50, metadata !127, i32 104, i32 3, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!399 = metadata !{i32 104, i32 7, metadata !400, null}
!400 = metadata !{i32 786443, metadata !50, metadata !401, i32 104, i32 7, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!401 = metadata !{i32 786443, metadata !50, metadata !398, i32 104, i32 7, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!402 = metadata !{i32 106, i32 5, metadata !403, null}
!403 = metadata !{i32 786443, metadata !50, metadata !398, i32 104, i32 30, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!404 = metadata !{i32 107, i32 3, metadata !403, null}
!405 = metadata !{i32 104, i32 26, metadata !398, null}
!406 = metadata !{i32 108, i32 1, metadata !127, null}
!407 = metadata !{i32 786689, metadata !126, metadata !"this", null, i32 16777216, metadata !385, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!408 = metadata !{i32 0, i32 0, metadata !126, null}
!409 = metadata !{i32 786689, metadata !126, metadata !"RowIndex", metadata !271, i32 33554506, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 74]
!410 = metadata !{i32 74, i32 16, metadata !126, null}
!411 = metadata !{i32 786689, metadata !126, metadata !"ColIndex", metadata !271, i32 50331722, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 74]
!412 = metadata !{i32 74, i32 29, metadata !126, null}
!413 = metadata !{i32 786688, metadata !126, metadata !"return_value", metadata !271, i32 157, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 157]
!414 = metadata !{i32 157, i32 5, metadata !126, null}
!415 = metadata !{i32 158, i32 3, metadata !126, null}
!416 = metadata !{i32 159, i32 3, metadata !126, null}
!417 = metadata !{i32 786689, metadata !125, metadata !"this", null, i32 16777216, metadata !385, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!418 = metadata !{i32 0, i32 0, metadata !125, null}
!419 = metadata !{i32 786689, metadata !125, metadata !"value", metadata !271, i32 33554504, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 72]
!420 = metadata !{i32 72, i32 24, metadata !125, null}
!421 = metadata !{i32 786689, metadata !125, metadata !"col", metadata !271, i32 50331720, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 72]
!422 = metadata !{i32 72, i32 35, metadata !125, null}
!423 = metadata !{i32 134, i32 3, metadata !125, null}
!424 = metadata !{i32 135, i32 1, metadata !125, null}
!425 = metadata !{i32 786689, metadata !124, metadata !"this", null, i32 16777216, metadata !268, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!426 = metadata !{i32 0, i32 0, metadata !124, null}
!427 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !271, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 213]
!428 = metadata !{i32 213, i32 7, metadata !124, null}
!429 = metadata !{i32 786688, metadata !124, metadata !"j", metadata !271, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 213]
!430 = metadata !{i32 213, i32 10, metadata !124, null}
!431 = metadata !{i32 214, i32 7, metadata !432, null}
!432 = metadata !{i32 786443, metadata !50, metadata !124, i32 214, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!433 = metadata !{i32 214, i32 7, metadata !434, null}
!434 = metadata !{i32 786443, metadata !50, metadata !435, i32 214, i32 7, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!435 = metadata !{i32 786443, metadata !50, metadata !432, i32 214, i32 7, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!436 = metadata !{i32 216, i32 9, metadata !437, null}
!437 = metadata !{i32 786443, metadata !50, metadata !438, i32 216, i32 5, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!438 = metadata !{i32 786443, metadata !50, metadata !432, i32 214, i32 28, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!439 = metadata !{i32 216, i32 9, metadata !440, null}
!440 = metadata !{i32 786443, metadata !50, metadata !441, i32 216, i32 9, i32 2, i32 67} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!441 = metadata !{i32 786443, metadata !50, metadata !437, i32 216, i32 9, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!442 = metadata !{i32 218, i32 7, metadata !443, null}
!443 = metadata !{i32 786443, metadata !50, metadata !437, i32 216, i32 30, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
!444 = metadata !{i32 219, i32 5, metadata !443, null}
!445 = metadata !{i32 216, i32 26, metadata !437, null}
!446 = metadata !{i32 220, i32 3, metadata !438, null}
!447 = metadata !{i32 214, i32 24, metadata !432, null}
!448 = metadata !{i32 221, i32 1, metadata !124, null}
!449 = metadata !{i32 786689, metadata !123, metadata !"this", null, i32 16777216, metadata !268, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!450 = metadata !{i32 0, i32 0, metadata !123, null}
!451 = metadata !{i32 786689, metadata !123, metadata !"value", metadata !271, i32 33554609, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 177]
!452 = metadata !{i32 177, i32 17, metadata !123, null}
!453 = metadata !{i32 786689, metadata !123, metadata !"row", metadata !271, i32 50331825, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 177]
!454 = metadata !{i32 177, i32 28, metadata !123, null}
!455 = metadata !{i32 786689, metadata !123, metadata !"col", metadata !271, i32 67109041, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 177]
!456 = metadata !{i32 177, i32 36, metadata !123, null}
!457 = metadata !{i32 284, i32 3, metadata !123, null}
!458 = metadata !{i32 285, i32 1, metadata !123, null}
!459 = metadata !{i32 786689, metadata !128, metadata !"this", null, i32 16777216, metadata !268, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!460 = metadata !{i32 0, i32 0, metadata !128, null}
!461 = metadata !{i32 172, i32 16, metadata !128, null}
!462 = metadata !{i32 786689, metadata !130, metadata !"this", null, i32 16777216, metadata !385, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!463 = metadata !{i32 0, i32 0, metadata !130, null}
!464 = metadata !{i32 68, i32 20, metadata !130, null}
!465 = metadata !{i32 0, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !50, metadata !133} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/hw/ap_video.h]
