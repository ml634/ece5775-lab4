; ModuleID = '/home/student/ml634/ece5775lab5/src/main_app.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"elapsed time %llu \0A\00", align 1
@socket_desc = common global i32 0, align 4
@.str1 = private unnamed_addr constant [25 x i8] c"Couldn't create Socket.\0A\00", align 1
@server = common global %struct.sockaddr_in zeroinitializer, align 4
@.str2 = private unnamed_addr constant [20 x i8] c"Connection failed.\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"Network connected.\0A\00", align 1
@client_addr = common global i32 0, align 4
@client = common global %struct.sockaddr_in zeroinitializer, align 4
@socket_robot1 = common global i32 0, align 4
@.str4 = private unnamed_addr constant [29 x i8] c"Couldn't connect to robot1.\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Connected to robot 1.\0A\00", align 1
@socket_robot2 = common global i32 0, align 4
@.str6 = private unnamed_addr constant [29 x i8] c"Couldn't connect to robot2.\0A\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"Connected to robot 2.\0A\00", align 1
@isNetworkAlive = common global i8 0, align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Send failed.\0A\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@gLayerBase = external global [3 x i32]
@ibufferoffset = external global i32
@.str10 = private unnamed_addr constant [15 x i8] c"\0A START CODE \0A\00", align 1
@serialDataOverNetwork = common global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define void @motion_demo_processing(i32 %in_buffer, i32 %out_buffer) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  store i32 %in_buffer, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !131), !dbg !132
  store i32 %out_buffer, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !133), !dbg !134
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !135), !dbg !137
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !138), !dbg !137
  %3 = call i64 @sds_clock_counter(), !dbg !137
  store i64 %3, i64* %clock_start, align 8, !dbg !137
  %4 = load i32* %1, align 4, !dbg !139
  %5 = inttoptr i32 %4 to i32*, !dbg !139
  %6 = load i32* %2, align 4, !dbg !139
  %7 = inttoptr i32 %6 to i32*, !dbg !139
  call void @img_process(i32* %5, i32* %7), !dbg !139
  %8 = call i64 @sds_clock_counter(), !dbg !140
  store i64 %8, i64* %clock_end, align 8, !dbg !140
  %9 = load i64* %clock_end, align 8, !dbg !140
  %10 = load i64* %clock_start, align 8, !dbg !140
  %11 = sub i64 %9, %10, !dbg !140
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i64 %11), !dbg !140
  %13 = call i64 @sds_clock_counter(), !dbg !140
  store i64 %13, i64* %clock_start, align 8, !dbg !140
  ret void, !dbg !142
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i64 @sds_clock_counter() #2

declare void @img_process(i32*, i32*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define zeroext i8 @init_network() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @socket(i32 2, i32 1, i32 0) #5, !dbg !143
  store i32 %2, i32* @socket_desc, align 4, !dbg !143
  %3 = load i32* @socket_desc, align 4, !dbg !144
  %4 = icmp eq i32 %3, -1, !dbg !144
  br i1 %4, label %5, label %7, !dbg !144

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0)), !dbg !146
  store i8 0, i8* %1, !dbg !148
  br label %34, !dbg !148

; <label>:7                                       ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 2, i32 0), align 4, !dbg !149
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 0), align 2, !dbg !150
  %8 = call zeroext i16 @htons(i16 zeroext 8888) #1, !dbg !151
  store i16 %8, i16* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 1), align 2, !dbg !151
  %9 = load i32* @socket_desc, align 4, !dbg !152
  %10 = call i32 @bind(i32 %9, %struct.sockaddr* bitcast (%struct.sockaddr_in* @server to %struct.sockaddr*), i32 16) #5, !dbg !152
  %11 = icmp slt i32 %10, 0, !dbg !152
  br i1 %11, label %12, label %14, !dbg !152

; <label>:12                                      ; preds = %7
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0)), !dbg !154
  store i8 0, i8* %1, !dbg !156
  br label %34, !dbg !156

; <label>:14                                      ; preds = %7
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)), !dbg !157
  %16 = load i32* @socket_desc, align 4, !dbg !158
  %17 = call i32 @listen(i32 %16, i32 2) #5, !dbg !158
  store i32 16, i32* @client_addr, align 4, !dbg !159
  %18 = load i32* @socket_desc, align 4, !dbg !160
  %19 = call i32 @accept(i32 %18, %struct.sockaddr* bitcast (%struct.sockaddr_in* @client to %struct.sockaddr*), i32* @client_addr), !dbg !160
  store i32 %19, i32* @socket_robot1, align 4, !dbg !160
  %20 = load i32* @socket_robot1, align 4, !dbg !161
  %21 = icmp slt i32 %20, 0, !dbg !161
  br i1 %21, label %22, label %24, !dbg !161

; <label>:22                                      ; preds = %14
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0)), !dbg !163
  store i8 0, i8* %1, !dbg !165
  br label %34, !dbg !165

; <label>:24                                      ; preds = %14
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)), !dbg !166
  %26 = load i32* @socket_desc, align 4, !dbg !167
  %27 = call i32 @accept(i32 %26, %struct.sockaddr* bitcast (%struct.sockaddr_in* @client to %struct.sockaddr*), i32* @client_addr), !dbg !167
  store i32 %27, i32* @socket_robot2, align 4, !dbg !167
  %28 = load i32* @socket_robot2, align 4, !dbg !168
  %29 = icmp slt i32 %28, 0, !dbg !168
  br i1 %29, label %30, label %32, !dbg !168

; <label>:30                                      ; preds = %24
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str6, i32 0, i32 0)), !dbg !170
  store i8 0, i8* %1, !dbg !172
  br label %34, !dbg !172

; <label>:32                                      ; preds = %24
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str7, i32 0, i32 0)), !dbg !173
  store i8 1, i8* %1, !dbg !174
  br label %34, !dbg !174

; <label>:34                                      ; preds = %32, %30, %22, %12, %5
  %35 = load i8* %1, !dbg !175
  ret i8 %35, !dbg !175
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #0

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #0

declare i32 @accept(i32, %struct.sockaddr*, i32*) #2

; Function Attrs: nounwind
define void @sendCommand(i8* %serialDataOverNetwork, i32 %socket) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  store i8* %serialDataOverNetwork, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !176), !dbg !177
  store i32 %socket, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !178), !dbg !179
  %3 = load i8* @isNetworkAlive, align 1, !dbg !180
  %4 = zext i8 %3 to i32, !dbg !180
  %5 = icmp ne i32 %4, 0, !dbg !180
  br i1 %5, label %6, label %15, !dbg !180

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !182
  %8 = load i8** %1, align 4, !dbg !182
  %9 = load i8** %1, align 4, !dbg !184
  %10 = call i32 @strlen(i8* %9) #6, !dbg !184
  %11 = call i32 @send(i32 %7, i8* %8, i32 %10, i32 0), !dbg !185
  %12 = icmp slt i32 %11, 0, !dbg !185
  br i1 %12, label %13, label %15, !dbg !185

; <label>:13                                      ; preds = %6
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)), !dbg !186
  br label %21, !dbg !188

; <label>:15                                      ; preds = %6, %0
  %16 = load i8* @isNetworkAlive, align 1, !dbg !189
  %17 = icmp ne i8 %16, 0, !dbg !189
  br i1 %17, label %20, label %18, !dbg !189

; <label>:18                                      ; preds = %15
  %19 = call zeroext i8 @init_network(), !dbg !191
  store i8 %19, i8* @isNetworkAlive, align 1, !dbg !191
  br label %20, !dbg !193

; <label>:20                                      ; preds = %18, %15
  br label %21

; <label>:21                                      ; preds = %20, %13
  ret void, !dbg !194
}

declare i32 @send(i32, i8*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #4

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
  %accel_prev_index = alloca i32, align 4
  %accel_in_index = alloca i32, align 4
  %accel_out_index = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %output_frame}, metadata !195), !dbg !199
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %input_frame}, metadata !200), !dbg !201
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %virt_output_frame}, metadata !202), !dbg !203
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %virt_input_frame}, metadata !204), !dbg !205
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !206), !dbg !207
  store i32 0, i32* %i, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !209), !dbg !210
  store i32 0, i32* %offset, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata !{i32* %map_len}, metadata !212), !dbg !213
  store i32 8847360, i32* %map_len, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata !{i32* %fd}, metadata !215), !dbg !216
  %2 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i32 2), !dbg !217
  store i32 %2, i32* %fd, align 4, !dbg !217
  call void @llvm.dbg.declare(metadata !{i8** %virtual_addr_in}, metadata !218), !dbg !220
  call void @llvm.dbg.declare(metadata !{i8** %virtual_addr_out}, metadata !221), !dbg !222
  call void @llvm.dbg.declare(metadata !{i32* %infrm_index}, metadata !223), !dbg !224
  store i32 2, i32* %infrm_index, align 4, !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %outfrm_index}, metadata !226), !dbg !227
  store i32 0, i32* %outfrm_index, align 4, !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %accel_prev_index}, metadata !228), !dbg !229
  store i32 0, i32* %accel_prev_index, align 4, !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %accel_in_index}, metadata !230), !dbg !231
  store i32 1, i32* %accel_in_index, align 4, !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %accel_out_index}, metadata !232), !dbg !233
  store i32 1, i32* %accel_out_index, align 4, !dbg !225
  store i32 0, i32* %i, align 4, !dbg !234
  br label %3, !dbg !234

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %i, align 4, !dbg !236
  %5 = icmp slt i32 %4, 3, !dbg !236
  br i1 %5, label %6, label %57, !dbg !236

; <label>:6                                       ; preds = %3
  %7 = load i32* getelementptr inbounds ([3 x i32]* @gLayerBase, i32 0, i32 1), align 4, !dbg !239
  %8 = load i32* %offset, align 4, !dbg !239
  %9 = add i32 %7, %8, !dbg !239
  %10 = load i32* %i, align 4, !dbg !239
  %11 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %10, !dbg !239
  store i32 %9, i32* %11, align 4, !dbg !239
  %12 = load i32* getelementptr inbounds ([3 x i32]* @gLayerBase, i32 0, i32 2), align 4, !dbg !241
  %13 = load i32* %offset, align 4, !dbg !241
  %14 = add i32 %12, %13, !dbg !241
  %15 = load i32* %i, align 4, !dbg !241
  %16 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %15, !dbg !241
  store i32 %14, i32* %16, align 4, !dbg !241
  %17 = load i32* @ibufferoffset, align 4, !dbg !242
  %18 = load i32* %offset, align 4, !dbg !242
  %19 = add i32 %18, %17, !dbg !242
  store i32 %19, i32* %offset, align 4, !dbg !242
  %20 = load i32* %map_len, align 4, !dbg !243
  %21 = load i32* %fd, align 4, !dbg !243
  %22 = load i32* %i, align 4, !dbg !243
  %23 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %22, !dbg !243
  %24 = load i32* %23, align 4, !dbg !243
  %25 = call i8* @mmap(i8* null, i32 %20, i32 3, i32 1, i32 %21, i32 %24) #5, !dbg !243
  store i8* %25, i8** %virtual_addr_in, align 4, !dbg !243
  %26 = load i32* %map_len, align 4, !dbg !244
  %27 = load i32* %fd, align 4, !dbg !244
  %28 = load i32* %i, align 4, !dbg !244
  %29 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %28, !dbg !244
  %30 = load i32* %29, align 4, !dbg !244
  %31 = call i8* @mmap(i8* null, i32 %26, i32 3, i32 1, i32 %27, i32 %30) #5, !dbg !244
  store i8* %31, i8** %virtual_addr_out, align 4, !dbg !244
  %32 = load i8** %virtual_addr_in, align 4, !dbg !245
  %33 = ptrtoint i8* %32 to i32, !dbg !245
  %34 = load i32* %i, align 4, !dbg !245
  %35 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %34, !dbg !245
  store i32 %33, i32* %35, align 4, !dbg !245
  %36 = load i8** %virtual_addr_out, align 4, !dbg !246
  %37 = ptrtoint i8* %36 to i32, !dbg !246
  %38 = load i32* %i, align 4, !dbg !246
  %39 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %38, !dbg !246
  store i32 %37, i32* %39, align 4, !dbg !246
  %40 = load i32* %i, align 4, !dbg !247
  %41 = getelementptr inbounds [3 x i32]* %input_frame, i32 0, i32 %40, !dbg !247
  %42 = load i32* %41, align 4, !dbg !247
  %43 = inttoptr i32 %42 to i8*, !dbg !247
  %44 = load i32* %map_len, align 4, !dbg !247
  %45 = load i8** %virtual_addr_in, align 4, !dbg !247
  %46 = call i8* @sds_mmap(i8* %43, i32 %44, i8* %45), !dbg !247
  %47 = load i32* %i, align 4, !dbg !248
  %48 = getelementptr inbounds [3 x i32]* %output_frame, i32 0, i32 %47, !dbg !248
  %49 = load i32* %48, align 4, !dbg !248
  %50 = inttoptr i32 %49 to i8*, !dbg !248
  %51 = load i32* %map_len, align 4, !dbg !248
  %52 = load i8** %virtual_addr_out, align 4, !dbg !248
  %53 = call i8* @sds_mmap(i8* %50, i32 %51, i8* %52), !dbg !248
  br label %54, !dbg !249

; <label>:54                                      ; preds = %6
  %55 = load i32* %i, align 4, !dbg !250
  %56 = add nsw i32 %55, 1, !dbg !250
  store i32 %56, i32* %i, align 4, !dbg !250
  br label %3, !dbg !250

; <label>:57                                      ; preds = %3
  %58 = load i32* %fd, align 4, !dbg !251
  %59 = call i32 @close(i32 %58), !dbg !251
  %60 = load i32* %outfrm_index, align 4, !dbg !252
  %61 = load i32* %infrm_index, align 4, !dbg !252
  call void @setCVC_TPGBuffer(i32 %60, i32 %61), !dbg !252
  %62 = load i32* %accel_in_index, align 4, !dbg !253
  %63 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %62, !dbg !253
  %64 = load i32* %63, align 4, !dbg !253
  %65 = load i32* %accel_out_index, align 4, !dbg !253
  %66 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %65, !dbg !253
  %67 = load i32* %66, align 4, !dbg !253
  call void @motion_demo_processing(i32 %64, i32 %67), !dbg !253
  br label %68, !dbg !254

; <label>:68                                      ; preds = %57, %68
  %69 = load i32* %outfrm_index, align 4, !dbg !255
  %70 = add nsw i32 %69, 1, !dbg !255
  store i32 %70, i32* %outfrm_index, align 4, !dbg !255
  %71 = load i32* %outfrm_index, align 4, !dbg !257
  %72 = srem i32 %71, 3, !dbg !257
  store i32 %72, i32* %outfrm_index, align 4, !dbg !257
  %73 = load i32* %infrm_index, align 4, !dbg !258
  %74 = add nsw i32 %73, 1, !dbg !258
  store i32 %74, i32* %infrm_index, align 4, !dbg !258
  %75 = load i32* %infrm_index, align 4, !dbg !259
  %76 = srem i32 %75, 3, !dbg !259
  store i32 %76, i32* %infrm_index, align 4, !dbg !259
  %77 = load i32* %outfrm_index, align 4, !dbg !260
  %78 = load i32* %infrm_index, align 4, !dbg !260
  call void @setCVC_TPGBuffer(i32 %77, i32 %78), !dbg !260
  %79 = load i32* %accel_in_index, align 4, !dbg !261
  store i32 %79, i32* %accel_prev_index, align 4, !dbg !261
  %80 = load i32* %accel_in_index, align 4, !dbg !262
  %81 = add nsw i32 %80, 1, !dbg !262
  store i32 %81, i32* %accel_in_index, align 4, !dbg !262
  %82 = load i32* %accel_in_index, align 4, !dbg !263
  %83 = srem i32 %82, 3, !dbg !263
  store i32 %83, i32* %accel_in_index, align 4, !dbg !263
  %84 = load i32* %accel_out_index, align 4, !dbg !264
  %85 = add nsw i32 %84, 1, !dbg !264
  store i32 %85, i32* %accel_out_index, align 4, !dbg !264
  %86 = load i32* %accel_out_index, align 4, !dbg !265
  %87 = srem i32 %86, 3, !dbg !265
  store i32 %87, i32* %accel_out_index, align 4, !dbg !265
  %88 = load i32* %accel_in_index, align 4, !dbg !266
  %89 = getelementptr inbounds [3 x i32]* %virt_input_frame, i32 0, i32 %88, !dbg !266
  %90 = load i32* %89, align 4, !dbg !266
  %91 = load i32* %accel_out_index, align 4, !dbg !266
  %92 = getelementptr inbounds [3 x i32]* %virt_output_frame, i32 0, i32 %91, !dbg !266
  %93 = load i32* %92, align 4, !dbg !266
  call void @motion_demo_processing(i32 %90, i32 %93), !dbg !266
  br label %68, !dbg !267
                                                  ; No predecessors!
  %95 = load i8** %1, !dbg !268
  ret i8* %95, !dbg !268
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
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !269), !dbg !270
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !271), !dbg !272
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str10, i32 0, i32 0)), !dbg !273
  call void @init_all(), !dbg !274
  %5 = call i8* @thread_sw_sync(), !dbg !275
  ret i32 0, !dbg !276
}

declare void @init_all() #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!xidane.function_declaration_filename = !{!73, !115, !75, !116, !77, !117, !79, !118, !81, !115, !83, !119, !85, !120, !87, !119, !89, !119, !91, !119, !93, !115, !95, !119, !97, !121, !99, !115, !101, !122, !103, !123, !105, !116, !107, !124, !109, !125, !111, !115, !113, !125}
!xidane.ExternC = !{!73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !15, metadata !16, metadata !39, metadata !15, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/student/ml634/ece5775lab5/src/main_app.c", metadata !"/home/student/ml634/ece5775lab5/Release"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"__socket_type", i32 24, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [__socket_type] [line 24, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/socket_type.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!6 = metadata !{i32 786472, metadata !"SOCK_STREAM", i64 1} ; [ DW_TAG_enumerator ] [SOCK_STREAM :: 1]
!7 = metadata !{i32 786472, metadata !"SOCK_DGRAM", i64 2} ; [ DW_TAG_enumerator ] [SOCK_DGRAM :: 2]
!8 = metadata !{i32 786472, metadata !"SOCK_RAW", i64 3} ; [ DW_TAG_enumerator ] [SOCK_RAW :: 3]
!9 = metadata !{i32 786472, metadata !"SOCK_RDM", i64 4} ; [ DW_TAG_enumerator ] [SOCK_RDM :: 4]
!10 = metadata !{i32 786472, metadata !"SOCK_SEQPACKET", i64 5} ; [ DW_TAG_enumerator ] [SOCK_SEQPACKET :: 5]
!11 = metadata !{i32 786472, metadata !"SOCK_DCCP", i64 6} ; [ DW_TAG_enumerator ] [SOCK_DCCP :: 6]
!12 = metadata !{i32 786472, metadata !"SOCK_PACKET", i64 10} ; [ DW_TAG_enumerator ] [SOCK_PACKET :: 10]
!13 = metadata !{i32 786472, metadata !"SOCK_CLOEXEC", i64 524288} ; [ DW_TAG_enumerator ] [SOCK_CLOEXEC :: 524288]
!14 = metadata !{i32 786472, metadata !"SOCK_NONBLOCK", i64 2048} ; [ DW_TAG_enumerator ] [SOCK_NONBLOCK :: 2048]
!15 = metadata !{}
!16 = metadata !{metadata !17, metadata !22, metadata !26, metadata !31, metadata !35}
!17 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"motion_demo_processing", metadata !"motion_demo_processing", metadata !"", i32 53, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @motion_demo_processing, null, null, metadata !15, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [motion_demo_processing]
!18 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !21, metadata !21}
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"init_network", metadata !"init_network", metadata !"", i32 63, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i8 ()* @init_network, null, null, metadata !15, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [init_network]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!26 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"sendCommand", metadata !"sendCommand", metadata !"", i32 106, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32)* @sendCommand, null, null, metadata !15, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [sendCommand]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !29, metadata !30}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"thread_sw_sync", metadata !"thread_sw_sync", metadata !"", i32 119, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i8* ()* @thread_sw_sync, null, null, metadata !15, i32 120} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 120] [thread_sw_sync]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!35 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"main", metadata !"main", metadata !"", i32 182, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !15, i32 183} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 183] [main]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !30, metadata !30, metadata !38}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!40 = metadata !{i32 786484, i32 0, null, metadata !"server", metadata !"server", metadata !"", metadata !18, i32 42, metadata !41, i32 0, i32 1, %struct.sockaddr_in* @server, null} ; [ DW_TAG_variable ] [server] [line 42] [def]
!41 = metadata !{i32 786451, metadata !42, null, metadata !"sockaddr_in", i32 237, i64 128, i64 32, i32 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [sockaddr_in] [line 237, size 128, align 32, offset 0] [def] [from ]
!42 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/netinet/in.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!43 = metadata !{metadata !44, metadata !48, metadata !52, metadata !58}
!44 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"sin_family", i32 239, i64 16, i64 16, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [sin_family] [line 239, size 16, align 16, offset 0] [from sa_family_t]
!45 = metadata !{i32 786454, metadata !46, null, metadata !"sa_family_t", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [sa_family_t] [line 28, size 0, align 0, offset 0] [from unsigned short]
!46 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/sockaddr.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!47 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!48 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"sin_port", i32 240, i64 16, i64 16, i64 16, i32 0, metadata !49} ; [ DW_TAG_member ] [sin_port] [line 240, size 16, align 16, offset 16] [from in_port_t]
!49 = metadata !{i32 786454, metadata !42, null, metadata !"in_port_t", i32 117, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [in_port_t] [line 117, size 0, align 0, offset 0] [from uint16_t]
!50 = metadata !{i32 786454, metadata !51, null, metadata !"uint16_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!51 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdint.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!52 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"sin_addr", i32 241, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [sin_addr] [line 241, size 32, align 32, offset 32] [from in_addr]
!53 = metadata !{i32 786451, metadata !42, null, metadata !"in_addr", i32 31, i64 32, i64 32, i32 0, i32 0, null, metadata !54, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [in_addr] [line 31, size 32, align 32, offset 0] [def] [from ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786445, metadata !42, metadata !53, metadata !"s_addr", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [s_addr] [line 33, size 32, align 32, offset 0] [from in_addr_t]
!56 = metadata !{i32 786454, metadata !42, null, metadata !"in_addr_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [in_addr_t] [line 30, size 0, align 0, offset 0] [from uint32_t]
!57 = metadata !{i32 786454, metadata !51, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!58 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"sin_zero", i32 244, i64 64, i64 8, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [sin_zero] [line 244, size 64, align 8, offset 64] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !60, metadata !61, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from unsigned char]
!60 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!63 = metadata !{i32 786484, i32 0, null, metadata !"client", metadata !"client", metadata !"", metadata !18, i32 42, metadata !41, i32 0, i32 1, %struct.sockaddr_in* @client, null} ; [ DW_TAG_variable ] [client] [line 42] [def]
!64 = metadata !{i32 786484, i32 0, null, metadata !"socket_desc", metadata !"socket_desc", metadata !"", metadata !18, i32 43, metadata !30, i32 0, i32 1, i32* @socket_desc, null} ; [ DW_TAG_variable ] [socket_desc] [line 43] [def]
!65 = metadata !{i32 786484, i32 0, null, metadata !"socket_robot1", metadata !"socket_robot1", metadata !"", metadata !18, i32 43, metadata !30, i32 0, i32 1, i32* @socket_robot1, null} ; [ DW_TAG_variable ] [socket_robot1] [line 43] [def]
!66 = metadata !{i32 786484, i32 0, null, metadata !"socket_robot2", metadata !"socket_robot2", metadata !"", metadata !18, i32 43, metadata !30, i32 0, i32 1, i32* @socket_robot2, null} ; [ DW_TAG_variable ] [socket_robot2] [line 43] [def]
!67 = metadata !{i32 786484, i32 0, null, metadata !"client_addr", metadata !"client_addr", metadata !"", metadata !18, i32 43, metadata !30, i32 0, i32 1, i32* @client_addr, null} ; [ DW_TAG_variable ] [client_addr] [line 43] [def]
!68 = metadata !{i32 786484, i32 0, null, metadata !"isNetworkAlive", metadata !"isNetworkAlive", metadata !"", metadata !18, i32 45, metadata !25, i32 0, i32 1, i8* @isNetworkAlive, null} ; [ DW_TAG_variable ] [isNetworkAlive] [line 45] [def]
!69 = metadata !{i32 786484, i32 0, null, metadata !"serialDataOverNetwork", metadata !"serialDataOverNetwork", metadata !"", metadata !18, i32 46, metadata !70, i32 0, i32 1, [1 x i8]* @serialDataOverNetwork, null} ; [ DW_TAG_variable ] [serialDataOverNetwork] [line 46] [def]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !25, metadata !71, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!73 = metadata !{void (i32, i32)* @motion_demo_processing}
!74 = metadata !{metadata !"void.unsigned int.0.unsigned int.0"}
!75 = metadata !{i64 ()* @sds_clock_counter}
!76 = metadata !{metadata !"unsigned long long."}
!77 = metadata !{void (i32*, i32*)* @img_process}
!78 = metadata !{metadata !"void.unsigned int *.1.unsigned int *.1"}
!79 = metadata !{i32 (i8*, ...)* @printf}
!80 = metadata !{metadata !"int.const char *restrict.1"}
!81 = metadata !{i8 ()* @init_network}
!82 = metadata !{metadata !"char."}
!83 = metadata !{i32 (i32, i32, i32)* @socket}
!84 = metadata !{metadata !"int.int.0.int.0.int.0"}
!85 = metadata !{i16 (i16)* @htons}
!86 = metadata !{metadata !"uint16_t.uint16_t.0"}
!87 = metadata !{i32 (i32, %struct.sockaddr*, i32)* @bind}
!88 = metadata !{metadata !"int.int.0.const struct sockaddr *.1.socklen_t.0"}
!89 = metadata !{i32 (i32, i32)* @listen}
!90 = metadata !{metadata !"int.int.0.int.0"}
!91 = metadata !{i32 (i32, %struct.sockaddr*, i32*)* @accept}
!92 = metadata !{metadata !"int.int.0.struct sockaddr *restrict.1.socklen_t *restrict.1"}
!93 = metadata !{void (i8*, i32)* @sendCommand}
!94 = metadata !{metadata !"void.char *.1.int.0"}
!95 = metadata !{i32 (i32, i8*, i32, i32)* @send}
!96 = metadata !{metadata !"ssize_t.int.0.const void *.1.size_t.0.int.0"}
!97 = metadata !{i32 (i8*)* @strlen}
!98 = metadata !{metadata !"unsigned int.const char *.1"}
!99 = metadata !{i8* ()* @thread_sw_sync}
!100 = metadata !{metadata !"void ."}
!101 = metadata !{i32 (i8*, i32, ...)* @open}
!102 = metadata !{metadata !"int.const char *.1.int.0"}
!103 = metadata !{i8* (i8*, i32, i32, i32, i32, i32)* @mmap}
!104 = metadata !{metadata !"void .void *.1.size_t.0.int.0.int.0.int.0.__off_t.0"}
!105 = metadata !{i8* (i8*, i32, i8*)* @sds_mmap}
!106 = metadata !{metadata !"void .void *.1.size_t.0.void *.1"}
!107 = metadata !{i32 (i32)* @close}
!108 = metadata !{metadata !"int.int.0"}
!109 = metadata !{void (i32, i32)* @setCVC_TPGBuffer}
!110 = metadata !{metadata !"void.int.0.int.0"}
!111 = metadata !{i32 (i32, i8**)* @main}
!112 = metadata !{metadata !"int.int.0.char **.1"}
!113 = metadata !{void ()* @init_all}
!114 = metadata !{metadata !"void."}
!115 = metadata !{metadata !"/home/student/ml634/ece5775lab5/src/main_app.c"}
!116 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!117 = metadata !{metadata !"../hw/img_filters.h"}
!118 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!119 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/socket.h"}
!120 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/netinet/in.h"}
!121 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/string.h"}
!122 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/fcntl.h"}
!123 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/mman.h"}
!124 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/unistd.h"}
!125 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/bin/../samples/platforms/zc702_hdmi/arm-xilinx-linux-gnueabi/include/zc702hdmi/hwi_export.h"}
!126 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!127 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!128 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!129 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!130 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!131 = metadata !{i32 786689, metadata !17, metadata !"in_buffer", metadata !18, i32 16777269, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_buffer] [line 53]
!132 = metadata !{i32 53, i32 43, metadata !17, null}
!133 = metadata !{i32 786689, metadata !17, metadata !"out_buffer", metadata !18, i32 33554485, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_buffer] [line 53]
!134 = metadata !{i32 53, i32 67, metadata !17, null}
!135 = metadata !{i32 786688, metadata !17, metadata !"clock_start", metadata !18, i32 57, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 57]
!136 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!137 = metadata !{i32 57, i32 1, metadata !17, null}
!138 = metadata !{i32 786688, metadata !17, metadata !"clock_end", metadata !18, i32 57, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 57]
!139 = metadata !{i32 58, i32 2, metadata !17, null} ; [ DW_TAG_imported_module ]
!140 = metadata !{i32 59, i32 1, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !17, i32 59, i32 1, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!142 = metadata !{i32 61, i32 1, metadata !17, null}
!143 = metadata !{i32 66, i32 16, metadata !22, null}
!144 = metadata !{i32 67, i32 6, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !22, i32 67, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!146 = metadata !{i32 68, i32 3, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 67, i32 25, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!148 = metadata !{i32 69, i32 3, metadata !147, null}
!149 = metadata !{i32 72, i32 2, metadata !22, null}
!150 = metadata !{i32 73, i32 2, metadata !22, null}
!151 = metadata !{i32 74, i32 20, metadata !22, null}
!152 = metadata !{i32 77, i32 6, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !22, i32 77, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!154 = metadata !{i32 78, i32 3, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 77, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!156 = metadata !{i32 79, i32 3, metadata !155, null}
!157 = metadata !{i32 82, i32 2, metadata !22, null}
!158 = metadata !{i32 83, i32 9, metadata !22, null}
!159 = metadata !{i32 85, i32 9, metadata !22, null}
!160 = metadata !{i32 87, i32 18, metadata !22, null}
!161 = metadata !{i32 88, i32 13, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !22, i32 88, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!163 = metadata !{i32 89, i32 3, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 88, i32 33, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!165 = metadata !{i32 90, i32 3, metadata !164, null}
!166 = metadata !{i32 93, i32 2, metadata !22, null}
!167 = metadata !{i32 95, i32 18, metadata !22, null}
!168 = metadata !{i32 96, i32 13, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !22, i32 96, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!170 = metadata !{i32 97, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !169, i32 96, i32 33, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!172 = metadata !{i32 98, i32 3, metadata !171, null}
!173 = metadata !{i32 101, i32 2, metadata !22, null}
!174 = metadata !{i32 103, i32 2, metadata !22, null}
!175 = metadata !{i32 104, i32 1, metadata !22, null}
!176 = metadata !{i32 786689, metadata !26, metadata !"serialDataOverNetwork", metadata !18, i32 16777322, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [serialDataOverNetwork] [line 106]
!177 = metadata !{i32 106, i32 24, metadata !26, null}
!178 = metadata !{i32 786689, metadata !26, metadata !"socket", metadata !18, i32 33554538, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [socket] [line 106]
!179 = metadata !{i32 106, i32 51, metadata !26, null}
!180 = metadata !{i32 108, i32 7, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !26, i32 108, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!182 = metadata !{i32 108, i32 28, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !181, i32 108, i32 28, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!184 = metadata !{i32 108, i32 66, metadata !181, null}
!185 = metadata !{i32 108, i32 28, metadata !181, null}
!186 = metadata !{i32 109, i32 3, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !181, i32 108, i32 108, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!188 = metadata !{i32 110, i32 2, metadata !187, null}
!189 = metadata !{i32 111, i32 12, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !181, i32 111, i32 12, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!191 = metadata !{i32 113, i32 20, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 111, i32 30, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!193 = metadata !{i32 114, i32 2, metadata !192, null}
!194 = metadata !{i32 116, i32 2, metadata !26, null}
!195 = metadata !{i32 786688, metadata !31, metadata !"output_frame", metadata !18, i32 121, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output_frame] [line 121]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !21, metadata !197, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from unsigned int]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!199 = metadata !{i32 121, i32 15, metadata !31, null}
!200 = metadata !{i32 786688, metadata !31, metadata !"input_frame", metadata !18, i32 122, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_frame] [line 122]
!201 = metadata !{i32 122, i32 15, metadata !31, null}
!202 = metadata !{i32 786688, metadata !31, metadata !"virt_output_frame", metadata !18, i32 123, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virt_output_frame] [line 123]
!203 = metadata !{i32 123, i32 15, metadata !31, null}
!204 = metadata !{i32 786688, metadata !31, metadata !"virt_input_frame", metadata !18, i32 124, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virt_input_frame] [line 124]
!205 = metadata !{i32 124, i32 15, metadata !31, null}
!206 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !18, i32 125, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 125]
!207 = metadata !{i32 125, i32 6, metadata !31, null}
!208 = metadata !{i32 125, i32 2, metadata !31, null}
!209 = metadata !{i32 786688, metadata !31, metadata !"offset", metadata !18, i32 126, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 126]
!210 = metadata !{i32 126, i32 6, metadata !31, null}
!211 = metadata !{i32 126, i32 2, metadata !31, null}
!212 = metadata !{i32 786688, metadata !31, metadata !"map_len", metadata !18, i32 129, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map_len] [line 129]
!213 = metadata !{i32 129, i32 15, metadata !31, null}
!214 = metadata !{i32 129, i32 2, metadata !31, null}
!215 = metadata !{i32 786688, metadata !31, metadata !"fd", metadata !18, i32 130, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 130]
!216 = metadata !{i32 130, i32 6, metadata !31, null}
!217 = metadata !{i32 130, i32 11, metadata !31, null}
!218 = metadata !{i32 786688, metadata !31, metadata !"virtual_addr_in", metadata !18, i32 132, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virtual_addr_in] [line 132]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!220 = metadata !{i32 132, i32 17, metadata !31, null}
!221 = metadata !{i32 786688, metadata !31, metadata !"virtual_addr_out", metadata !18, i32 133, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virtual_addr_out] [line 133]
!222 = metadata !{i32 133, i32 17, metadata !31, null}
!223 = metadata !{i32 786688, metadata !31, metadata !"infrm_index", metadata !18, i32 135, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [infrm_index] [line 135]
!224 = metadata !{i32 135, i32 6, metadata !31, null}
!225 = metadata !{i32 135, i32 2, metadata !31, null}
!226 = metadata !{i32 786688, metadata !31, metadata !"outfrm_index", metadata !18, i32 135, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outfrm_index] [line 135]
!227 = metadata !{i32 135, i32 23, metadata !31, null}
!228 = metadata !{i32 786688, metadata !31, metadata !"accel_prev_index", metadata !18, i32 135, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [accel_prev_index] [line 135]
!229 = metadata !{i32 135, i32 41, metadata !31, null}
!230 = metadata !{i32 786688, metadata !31, metadata !"accel_in_index", metadata !18, i32 135, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [accel_in_index] [line 135]
!231 = metadata !{i32 135, i32 61, metadata !31, null}
!232 = metadata !{i32 786688, metadata !31, metadata !"accel_out_index", metadata !18, i32 135, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [accel_out_index] [line 135]
!233 = metadata !{i32 135, i32 81, metadata !31, null}
!234 = metadata !{i32 137, i32 7, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !31, i32 137, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!236 = metadata !{i32 137, i32 7, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !238, i32 137, i32 7, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!238 = metadata !{i32 786443, metadata !1, metadata !235, i32 137, i32 7, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!239 = metadata !{i32 139, i32 3, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !235, i32 138, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!241 = metadata !{i32 140, i32 3, metadata !240, null}
!242 = metadata !{i32 141, i32 3, metadata !240, null}
!243 = metadata !{i32 142, i32 37, metadata !240, null}
!244 = metadata !{i32 143, i32 38, metadata !240, null}
!245 = metadata !{i32 144, i32 3, metadata !240, null}
!246 = metadata !{i32 145, i32 17, metadata !240, null}
!247 = metadata !{i32 147, i32 17, metadata !240, null}
!248 = metadata !{i32 148, i32 17, metadata !240, null}
!249 = metadata !{i32 150, i32 2, metadata !240, null}
!250 = metadata !{i32 137, i32 28, metadata !235, null}
!251 = metadata !{i32 151, i32 2, metadata !31, null}
!252 = metadata !{i32 152, i32 2, metadata !31, null}
!253 = metadata !{i32 153, i32 2, metadata !31, null}
!254 = metadata !{i32 154, i32 2, metadata !31, null}
!255 = metadata !{i32 156, i32 3, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !31, i32 155, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!257 = metadata !{i32 157, i32 3, metadata !256, null}
!258 = metadata !{i32 159, i32 3, metadata !256, null}
!259 = metadata !{i32 160, i32 3, metadata !256, null}
!260 = metadata !{i32 162, i32 3, metadata !256, null}
!261 = metadata !{i32 164, i32 3, metadata !256, null}
!262 = metadata !{i32 165, i32 3, metadata !256, null}
!263 = metadata !{i32 166, i32 3, metadata !256, null}
!264 = metadata !{i32 168, i32 3, metadata !256, null}
!265 = metadata !{i32 169, i32 3, metadata !256, null}
!266 = metadata !{i32 171, i32 3, metadata !256, null}
!267 = metadata !{i32 173, i32 2, metadata !256, null}
!268 = metadata !{i32 179, i32 1, metadata !31, null}
!269 = metadata !{i32 786689, metadata !35, metadata !"argc", metadata !18, i32 16777398, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 182]
!270 = metadata !{i32 182, i32 14, metadata !35, null}
!271 = metadata !{i32 786689, metadata !35, metadata !"argv", metadata !18, i32 33554614, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 182]
!272 = metadata !{i32 182, i32 27, metadata !35, null}
!273 = metadata !{i32 184, i32 2, metadata !35, null}
!274 = metadata !{i32 185, i32 2, metadata !35, null}
!275 = metadata !{i32 186, i32 2, metadata !35, null}
!276 = metadata !{i32 201, i32 2, metadata !35, null}
