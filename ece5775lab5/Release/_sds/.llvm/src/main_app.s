; ModuleID = '/home/student/ml634/ece5775lab5/src/main_app.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@socket_desc = common global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't create Socket.\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"192.168.137.123\00", align 1
@server = common global %struct.sockaddr_in zeroinitializer, align 4
@.str2 = private unnamed_addr constant [20 x i8] c"Connection failed.\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"Network connected.\0A\00", align 1
@isNetworkAlive = common global i8 0, align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Send failed.\0A\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"\0A START CODE \0A\00", align 1
@serialDataOverNetwork = common global [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [16 x i8] c"\0A sent packet \0A\00", align 1

; Function Attrs: nounwind
define zeroext i8 @init_network() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @socket(i32 2, i32 1, i32 0) #5, !dbg !93
  store i32 %2, i32* @socket_desc, align 4, !dbg !93
  %3 = load i32* @socket_desc, align 4, !dbg !94
  %4 = icmp eq i32 %3, -1, !dbg !94
  br i1 %4, label %5, label %7, !dbg !94

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i32 0, i32 0)), !dbg !96
  store i8 0, i8* %1, !dbg !98
  br label %17, !dbg !98

; <label>:7                                       ; preds = %0
  %8 = call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)) #5, !dbg !99
  store i32 %8, i32* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 2, i32 0), align 4, !dbg !99
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 0), align 2, !dbg !100
  %9 = call zeroext i16 @htons(i16 zeroext 23) #3, !dbg !101
  store i16 %9, i16* getelementptr inbounds (%struct.sockaddr_in* @server, i32 0, i32 1), align 2, !dbg !101
  %10 = load i32* @socket_desc, align 4, !dbg !102
  %11 = call i32 @connect(i32 %10, %struct.sockaddr* bitcast (%struct.sockaddr_in* @server to %struct.sockaddr*), i32 16), !dbg !102
  %12 = icmp slt i32 %11, 0, !dbg !102
  br i1 %12, label %13, label %15, !dbg !102

; <label>:13                                      ; preds = %7
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0)), !dbg !104
  store i8 0, i8* %1, !dbg !106
  br label %17, !dbg !106

; <label>:15                                      ; preds = %7
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)), !dbg !107
  store i8 1, i8* %1, !dbg !108
  br label %17, !dbg !108

; <label>:17                                      ; preds = %15, %13, %5
  %18 = load i8* %1, !dbg !109
  ret i8 %18, !dbg !109
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #0

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #0

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
define void @sendCommand(i8* %serialDataOverNetwork) #0 {
  %1 = alloca i8*, align 4
  store i8* %serialDataOverNetwork, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !110), !dbg !111
  %2 = load i8* @isNetworkAlive, align 1, !dbg !112
  %3 = zext i8 %2 to i32, !dbg !112
  %4 = icmp ne i32 %3, 0, !dbg !112
  br i1 %4, label %5, label %14, !dbg !112

; <label>:5                                       ; preds = %0
  %6 = load i32* @socket_desc, align 4, !dbg !114
  %7 = load i8** %1, align 4, !dbg !114
  %8 = load i8** %1, align 4, !dbg !116
  %9 = call i32 @strlen(i8* %8) #6, !dbg !116
  %10 = call i32 @send(i32 %6, i8* %7, i32 %9, i32 0), !dbg !117
  %11 = icmp slt i32 %10, 0, !dbg !117
  br i1 %11, label %12, label %14, !dbg !117

; <label>:12                                      ; preds = %5
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0)), !dbg !118
  br label %20, !dbg !120

; <label>:14                                      ; preds = %5, %0
  %15 = load i8* @isNetworkAlive, align 1, !dbg !121
  %16 = icmp ne i8 %15, 0, !dbg !121
  br i1 %16, label %19, label %17, !dbg !121

; <label>:17                                      ; preds = %14
  %18 = call zeroext i8 @init_network(), !dbg !123
  store i8 %18, i8* @isNetworkAlive, align 1, !dbg !123
  br label %19, !dbg !125

; <label>:19                                      ; preds = %17, %14
  br label %20

; <label>:20                                      ; preds = %19, %12
  ret void, !dbg !126
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

declare i32 @send(i32, i8*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #4

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !127), !dbg !128
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !129), !dbg !130
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)), !dbg !131
  %5 = call zeroext i8 @init_network(), !dbg !132
  store i8 %5, i8* @isNetworkAlive, align 1, !dbg !132
  store i8 3, i8* getelementptr inbounds ([1 x i8]* @serialDataOverNetwork, i32 0, i32 0), align 1, !dbg !133
  br label %6, !dbg !134

; <label>:6                                       ; preds = %0, %6
  call void @sendCommand(i8* getelementptr inbounds ([1 x i8]* @serialDataOverNetwork, i32 0, i32 0)), !dbg !135
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str6, i32 0, i32 0)), !dbg !137
  br label %6, !dbg !138
                                                  ; No predecessors!
  %9 = load i32* %1, !dbg !139
  ret i32 %9, !dbg !139
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!xidane.function_declaration_filename = !{!62, !82, !64, !83, !66, !84, !68, !85, !70, !86, !72, !83, !74, !82, !76, !83, !78, !87, !80, !82}
!xidane.ExternC = !{!62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !15, metadata !16, metadata !31, metadata !15, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c] [DW_LANG_C99]
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
!16 = metadata !{metadata !17, metadata !22, metadata !26}
!17 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"init_network", metadata !"init_network", metadata !"", i32 36, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i8 ()* @init_network, null, null, metadata !15, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [init_network]
!18 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!22 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"sendCommand", metadata !"sendCommand", metadata !"", i32 59, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @sendCommand, null, null, metadata !15, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [sendCommand]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !25}
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!26 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"main", metadata !"main", metadata !"", i32 73, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !15, i32 74} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 74] [main]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !29, metadata !30}
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !56, metadata !57, metadata !58}
!32 = metadata !{i32 786484, i32 0, null, metadata !"server", metadata !"server", metadata !"", metadata !18, i32 28, metadata !33, i32 0, i32 1, %struct.sockaddr_in* @server, null} ; [ DW_TAG_variable ] [server] [line 28] [def]
!33 = metadata !{i32 786451, metadata !34, null, metadata !"sockaddr_in", i32 237, i64 128, i64 32, i32 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [sockaddr_in] [line 237, size 128, align 32, offset 0] [def] [from ]
!34 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/netinet/in.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!35 = metadata !{metadata !36, metadata !40, metadata !44, metadata !51}
!36 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"sin_family", i32 239, i64 16, i64 16, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [sin_family] [line 239, size 16, align 16, offset 0] [from sa_family_t]
!37 = metadata !{i32 786454, metadata !38, null, metadata !"sa_family_t", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [sa_family_t] [line 28, size 0, align 0, offset 0] [from unsigned short]
!38 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/sockaddr.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!39 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!40 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"sin_port", i32 240, i64 16, i64 16, i64 16, i32 0, metadata !41} ; [ DW_TAG_member ] [sin_port] [line 240, size 16, align 16, offset 16] [from in_port_t]
!41 = metadata !{i32 786454, metadata !34, null, metadata !"in_port_t", i32 117, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [in_port_t] [line 117, size 0, align 0, offset 0] [from uint16_t]
!42 = metadata !{i32 786454, metadata !43, null, metadata !"uint16_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!43 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdint.h", metadata !"/home/student/ml634/ece5775lab5/Release"}
!44 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"sin_addr", i32 241, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [sin_addr] [line 241, size 32, align 32, offset 32] [from in_addr]
!45 = metadata !{i32 786451, metadata !34, null, metadata !"in_addr", i32 31, i64 32, i64 32, i32 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [in_addr] [line 31, size 32, align 32, offset 0] [def] [from ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786445, metadata !34, metadata !45, metadata !"s_addr", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [s_addr] [line 33, size 32, align 32, offset 0] [from in_addr_t]
!48 = metadata !{i32 786454, metadata !34, null, metadata !"in_addr_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [in_addr_t] [line 30, size 0, align 0, offset 0] [from uint32_t]
!49 = metadata !{i32 786454, metadata !43, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!50 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!51 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"sin_zero", i32 244, i64 64, i64 8, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [sin_zero] [line 244, size 64, align 8, offset 64] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !53, metadata !54, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from unsigned char]
!53 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!56 = metadata !{i32 786484, i32 0, null, metadata !"socket_desc", metadata !"socket_desc", metadata !"", metadata !18, i32 29, metadata !29, i32 0, i32 1, i32* @socket_desc, null} ; [ DW_TAG_variable ] [socket_desc] [line 29] [def]
!57 = metadata !{i32 786484, i32 0, null, metadata !"isNetworkAlive", metadata !"isNetworkAlive", metadata !"", metadata !18, i32 30, metadata !21, i32 0, i32 1, i8* @isNetworkAlive, null} ; [ DW_TAG_variable ] [isNetworkAlive] [line 30] [def]
!58 = metadata !{i32 786484, i32 0, null, metadata !"serialDataOverNetwork", metadata !"serialDataOverNetwork", metadata !"", metadata !18, i32 31, metadata !59, i32 0, i32 1, [1 x i8]* @serialDataOverNetwork, null} ; [ DW_TAG_variable ] [serialDataOverNetwork] [line 31] [def]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !21, metadata !60, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i8 ()* @init_network}
!63 = metadata !{metadata !"char."}
!64 = metadata !{i32 (i32, i32, i32)* @socket}
!65 = metadata !{metadata !"int.int.0.int.0.int.0"}
!66 = metadata !{i32 (i8*, ...)* @printf}
!67 = metadata !{metadata !"int.const char *restrict.1"}
!68 = metadata !{i32 (i8*)* @inet_addr}
!69 = metadata !{metadata !"in_addr_t.const char *.1"}
!70 = metadata !{i16 (i16)* @htons}
!71 = metadata !{metadata !"uint16_t.uint16_t.0"}
!72 = metadata !{i32 (i32, %struct.sockaddr*, i32)* @connect}
!73 = metadata !{metadata !"int.int.0.const struct sockaddr *.1.socklen_t.0"}
!74 = metadata !{void (i8*)* @sendCommand}
!75 = metadata !{metadata !"void.char *.1"}
!76 = metadata !{i32 (i32, i8*, i32, i32)* @send}
!77 = metadata !{metadata !"ssize_t.int.0.const void *.1.size_t.0.int.0"}
!78 = metadata !{i32 (i8*)* @strlen}
!79 = metadata !{metadata !"unsigned int.const char *.1"}
!80 = metadata !{i32 (i32, i8**)* @main}
!81 = metadata !{metadata !"int.int.0.char **.1"}
!82 = metadata !{metadata !"/home/student/ml634/ece5775lab5/src/main_app.c"}
!83 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/socket.h"}
!84 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!85 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/arpa/inet.h"}
!86 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/netinet/in.h"}
!87 = metadata !{metadata !"/work/zhang/common/tools/xilinx/SDSoC/2015.2.1/SDK/2015.2/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/string.h"}
!88 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!89 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!90 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!91 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!92 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!93 = metadata !{i32 39, i32 16, metadata !17, null}
!94 = metadata !{i32 40, i32 6, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !17, i32 40, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!96 = metadata !{i32 41, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !95, i32 40, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!98 = metadata !{i32 42, i32 3, metadata !97, null}
!99 = metadata !{i32 45, i32 27, metadata !17, null}
!100 = metadata !{i32 46, i32 2, metadata !17, null}
!101 = metadata !{i32 47, i32 20, metadata !17, null}
!102 = metadata !{i32 50, i32 6, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !17, i32 50, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!104 = metadata !{i32 51, i32 3, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !103, i32 50, i32 76, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!106 = metadata !{i32 52, i32 3, metadata !105, null}
!107 = metadata !{i32 55, i32 2, metadata !17, null}
!108 = metadata !{i32 56, i32 2, metadata !17, null}
!109 = metadata !{i32 57, i32 1, metadata !17, null}
!110 = metadata !{i32 786689, metadata !22, metadata !"serialDataOverNetwork", metadata !18, i32 16777275, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [serialDataOverNetwork] [line 59]
!111 = metadata !{i32 59, i32 24, metadata !22, null}
!112 = metadata !{i32 61, i32 7, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !22, i32 61, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!114 = metadata !{i32 61, i32 28, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 61, i32 28, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!116 = metadata !{i32 61, i32 71, metadata !113, null}
!117 = metadata !{i32 61, i32 28, metadata !113, null}
!118 = metadata !{i32 62, i32 3, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !113, i32 61, i32 113, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!120 = metadata !{i32 63, i32 2, metadata !119, null}
!121 = metadata !{i32 64, i32 12, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !113, i32 64, i32 12, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!123 = metadata !{i32 66, i32 20, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 64, i32 30, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!125 = metadata !{i32 67, i32 2, metadata !124, null}
!126 = metadata !{i32 69, i32 2, metadata !22, null}
!127 = metadata !{i32 786689, metadata !26, metadata !"argc", metadata !18, i32 16777289, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 73]
!128 = metadata !{i32 73, i32 14, metadata !26, null}
!129 = metadata !{i32 786689, metadata !26, metadata !"argv", metadata !18, i32 33554505, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 73]
!130 = metadata !{i32 73, i32 27, metadata !26, null}
!131 = metadata !{i32 75, i32 2, metadata !26, null}
!132 = metadata !{i32 76, i32 19, metadata !26, null}
!133 = metadata !{i32 77, i32 2, metadata !26, null}
!134 = metadata !{i32 78, i32 9, metadata !26, null}
!135 = metadata !{i32 81, i32 3, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !26, i32 79, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/student/ml634/ece5775lab5/Release//home/student/ml634/ece5775lab5/src/main_app.c]
!137 = metadata !{i32 82, i32 3, metadata !136, null}
!138 = metadata !{i32 84, i32 2, metadata !136, null}
!139 = metadata !{i32 87, i32 1, metadata !26, null}
